-- ================================================================
-- HYDROFORMYLATION & ISOMERIZATION R&D DATABASE
-- Covers: Catalysts, Reactions, Assays, Kinetics, DFT,
--         Flow Chemistry, Scale-up, Reproducibility, Analytics
-- Suitable for BASF, Shell, SABIC, Dow, Aramco R&D pipelines
-- ================================================================

-- ─────────────────────────────────────────
-- EXTENSIONS
-- ─────────────────────────────────────────
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pgcrypto";
CREATE EXTENSION IF NOT EXISTS "btree_gist";

-- ─────────────────────────────────────────
-- CUSTOM ENUM TYPES
-- ─────────────────────────────────────────
CREATE TYPE reaction_class_t   AS ENUM ('hydroformylation','isomerization','tandem_iso_hydroformylation');
CREATE TYPE reactor_mode_t     AS ENUM ('batch','continuous_flow','semi_batch');
CREATE TYPE catalyst_type_t    AS ENUM ('homogeneous','heterogeneous','immobilized','nanoparticle');
CREATE TYPE substrate_class_t  AS ENUM ('internal_olefin','terminal_olefin','diene','cyclic_olefin','other');
CREATE TYPE product_type_t     AS ENUM ('linear_aldehyde','branched_aldehyde','alcohol','alkane','isomerized_olefin','other');
CREATE TYPE assay_status_t     AS ENUM ('pending','running','completed','failed','aborted');
CREATE TYPE ref_type_t         AS ENUM ('journal','patent','conference','thesis','internal_report','book_chapter');
CREATE TYPE researcher_role_t  AS ENUM ('PI','postdoc','PhD_student','MSc_student','engineer','analyst','technician');
CREATE TYPE scale_level_t      AS ENUM ('lab','pilot','demo','industrial');
CREATE TYPE deactivation_t     AS ENUM ('ligand_dissociation','sintering','poisoning','oxidation','leaching','aggregation','unknown');
CREATE TYPE audit_action_t     AS ENUM ('INSERT','UPDATE','DELETE');

-- ─────────────────────────────────────────
-- SCHEMA
-- ─────────────────────────────────────────
CREATE SCHEMA IF NOT EXISTS cat_rnd;
SET search_path TO cat_rnd, public;

-- ================================================================
-- SECTION 1: CORE REFERENCE TABLES
-- ================================================================

CREATE TABLE metal_center (
    metal_id                SERIAL PRIMARY KEY,
    symbol                  VARCHAR(5)   NOT NULL UNIQUE,
    name                    VARCHAR(100) NOT NULL,
    atomic_number           INT          NOT NULL CHECK (atomic_number > 0),
    common_oxidation_states VARCHAR(100),               -- e.g. '+1,+3' for Rh
    notes                   TEXT,
    created_at              TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    updated_at              TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);
COMMENT ON TABLE metal_center IS 'Transition metals used as active sites (Rh, Co, Ir, Ru, Pd …)';

CREATE TABLE ligand (
    ligand_id               SERIAL PRIMARY KEY,
    ligand_name             VARCHAR(200) NOT NULL,
    abbreviation            VARCHAR(50),
    ligand_class            VARCHAR(80)  NOT NULL,       -- phosphine, NHC, bisphosphite, diphosphine …
    donor_atoms             VARCHAR(80),                 -- P,N / P,O / N,N etc.
    cone_angle_deg          NUMERIC(6,2),
    tolman_electronic_param NUMERIC(8,2),                -- χ value (cm⁻¹)
    buried_volume_pct       NUMERIC(5,2),                -- %Vbur from SambVca
    smiles                  TEXT,
    inchi_key               CHAR(27),
    cas_number              VARCHAR(30),
    commercial_source       VARCHAR(200),
    synthesis_ref           TEXT,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
COMMENT ON TABLE ligand IS 'Ancillary and spectator ligands used in catalyst design';

CREATE TABLE solvent (
    solvent_id              SERIAL PRIMARY KEY,
    solvent_name            VARCHAR(150) NOT NULL UNIQUE,
    abbreviation            VARCHAR(20),
    smiles                  TEXT,
    boiling_point_c         NUMERIC(7,2),
    dielectric_constant     NUMERIC(7,4),
    polarity_class          VARCHAR(50),
    cas_number              VARCHAR(30),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE substrate (
    substrate_id            SERIAL PRIMARY KEY,
    substrate_name          VARCHAR(200) NOT NULL,
    smiles                  TEXT         NOT NULL,
    inchi_key               CHAR(27),
    cas_number              VARCHAR(30),
    substrate_class         substrate_class_t NOT NULL,
    carbon_chain_length     INT          CHECK (carbon_chain_length > 0),
    functional_groups       TEXT,
    molecular_weight_gmol   NUMERIC(10,4) NOT NULL,
    supplier                VARCHAR(200),
    purity_pct              NUMERIC(5,2) CHECK (purity_pct BETWEEN 0 AND 100),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
COMMENT ON TABLE substrate IS 'Olefin substrates (internal C4–C20, terminal, dienes) for iso/hydroformylation';

CREATE TABLE product (
    product_id              SERIAL PRIMARY KEY,
    product_name            VARCHAR(200) NOT NULL,
    smiles                  TEXT,
    inchi_key               CHAR(27),
    cas_number              VARCHAR(30),
    product_type            product_type_t NOT NULL,
    molecular_weight_gmol   NUMERIC(10,4),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE literature_ref (
    ref_id                  SERIAL PRIMARY KEY,
    doi                     VARCHAR(200) UNIQUE,
    title                   TEXT         NOT NULL,
    authors                 TEXT         NOT NULL,
    journal                 VARCHAR(300),
    year                    INT          CHECK (year BETWEEN 1900 AND 2100),
    volume                  INT,
    pages                   VARCHAR(50),
    abstract_summary        TEXT,
    ref_type                ref_type_t   NOT NULL DEFAULT 'journal',
    patent_number           VARCHAR(100),
    assignee                VARCHAR(300),
    url                     TEXT,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE researcher (
    researcher_id           SERIAL PRIMARY KEY,
    first_name              VARCHAR(100) NOT NULL,
    last_name               VARCHAR(100) NOT NULL,
    email                   VARCHAR(200) NOT NULL UNIQUE,
    orcid                   VARCHAR(20)  UNIQUE,
    affiliation             VARCHAR(300) NOT NULL,
    department              VARCHAR(200),
    role                    researcher_role_t NOT NULL,
    joined_date             DATE,
    active                  BOOLEAN      NOT NULL DEFAULT TRUE,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ================================================================
-- SECTION 2: CATALYST TABLES
-- ================================================================

CREATE TABLE precatalyst (
    precatalyst_id          SERIAL PRIMARY KEY,
    catalyst_name           VARCHAR(300) NOT NULL,
    abbreviation            VARCHAR(80),
    catalyst_type           catalyst_type_t NOT NULL,
    reaction_class          reaction_class_t NOT NULL,
    metal_id                INT          NOT NULL REFERENCES metal_center(metal_id),
    oxidation_state         VARCHAR(10),
    coordination_geometry   VARCHAR(80),  -- octahedral, square_planar, trigonal_bipyramidal …
    smiles                  TEXT,
    inchi_key               CHAR(27),
    cas_number              VARCHAR(30),
    molecular_weight_gmol   NUMERIC(10,4),
    color                   VARCHAR(80),
    physical_form           VARCHAR(30)  DEFAULT 'solid',
    purity_pct              NUMERIC(5,2) CHECK (purity_pct BETWEEN 0 AND 100),
    synthesis_method        VARCHAR(30)  DEFAULT 'commercial',
    storage_conditions      TEXT,
    hazard_class            VARCHAR(100),
    primary_ref_id          INT          REFERENCES literature_ref(ref_id),
    date_registered         DATE         NOT NULL DEFAULT CURRENT_DATE,
    registered_by           INT          REFERENCES researcher(researcher_id),
    internal_code           VARCHAR(100) UNIQUE,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
COMMENT ON TABLE precatalyst IS
    'Central catalyst registry. Includes Rh/Co phosphine complexes for HF, '
    'and Pd/Ni/Fe/Rh complexes for isomerization and tandem catalysis.';

CREATE TABLE precatalyst_ligand (
    pl_id                   SERIAL PRIMARY KEY,
    precatalyst_id          INT NOT NULL REFERENCES precatalyst(precatalyst_id) ON DELETE CASCADE,
    ligand_id               INT NOT NULL REFERENCES ligand(ligand_id),
    stoichiometry           INT NOT NULL DEFAULT 1 CHECK (stoichiometry > 0),
    binding_mode            VARCHAR(50) DEFAULT 'monodentate',
    notes                   TEXT,
    UNIQUE (precatalyst_id, ligand_id)
);

CREATE TABLE catalyst_support (
    support_id              SERIAL PRIMARY KEY,
    support_name            VARCHAR(200) NOT NULL,
    support_type            VARCHAR(50)  NOT NULL,  -- silica, alumina, polymer, MOF, carbon, none
    surface_area_m2g        NUMERIC(8,2),
    pore_volume_cm3g        NUMERIC(8,4),
    avg_pore_size_nm        NUMERIC(8,3),
    functionalization       TEXT,
    supplier                VARCHAR(200),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE supported_catalyst (
    supported_cat_id        SERIAL PRIMARY KEY,
    precatalyst_id          INT NOT NULL REFERENCES precatalyst(precatalyst_id),
    support_id              INT NOT NULL REFERENCES catalyst_support(support_id),
    metal_loading_wt_pct    NUMERIC(6,3) CHECK (metal_loading_wt_pct > 0),
    immobilization_method   VARCHAR(80),
    leaching_test_ppm       NUMERIC(8,3),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE catalyst_stability (
    stability_id            SERIAL PRIMARY KEY,
    precatalyst_id          INT NOT NULL REFERENCES precatalyst(precatalyst_id),
    assay_id                INT,                     -- FK added after assay table
    half_life_h             NUMERIC(10,2),
    deactivation_mode       deactivation_t,
    residual_activity_pct   NUMERIC(5,2) CHECK (residual_activity_pct BETWEEN 0 AND 100),
    recycle_number          INT DEFAULT 0,
    activity_after_recycle_pct NUMERIC(5,2),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ================================================================
-- SECTION 3: REACTION PROTOCOL & EXPERIMENT
-- ================================================================

CREATE TABLE reaction_protocol (
    protocol_id             SERIAL PRIMARY KEY,
    protocol_name           VARCHAR(300) NOT NULL,
    reaction_type           reaction_class_t NOT NULL,
    reactor_mode            reactor_mode_t   NOT NULL,
    reactor_type            VARCHAR(80)  NOT NULL,  -- autoclave, CSTR, PFR, microreactor, Schlenk
    reactor_volume_mL       NUMERIC(10,3),
    atmosphere              VARCHAR(50),             -- CO/H2, H2, N2, CO, air
    co_h2_ratio             NUMERIC(5,2),
    standard_workup         TEXT,
    analysis_method         VARCHAR(200),            -- GC, GC-MS, NMR, HPLC, ICP-MS
    internal_standard       VARCHAR(200),
    created_by              INT REFERENCES researcher(researcher_id),
    protocol_ref_id         INT REFERENCES literature_ref(ref_id),
    created_date            DATE NOT NULL DEFAULT CURRENT_DATE,
    version                 VARCHAR(20) NOT NULL DEFAULT '1.0',
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE experiment (
    experiment_id           SERIAL PRIMARY KEY,
    experiment_code         VARCHAR(100) NOT NULL UNIQUE,
    title                   VARCHAR(400) NOT NULL,
    objective               TEXT,
    reaction_type           reaction_class_t NOT NULL,
    protocol_id             INT REFERENCES reaction_protocol(protocol_id),
    lead_researcher         INT REFERENCES researcher(researcher_id),
    start_date              DATE,
    end_date                DATE,
    project_code            VARCHAR(100),
    status                  VARCHAR(30) NOT NULL DEFAULT 'planned'
                            CHECK (status IN ('planned','active','completed','archived')),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE assay (
    assay_id                SERIAL PRIMARY KEY,
    experiment_id           INT NOT NULL REFERENCES experiment(experiment_id),
    precatalyst_id          INT NOT NULL REFERENCES precatalyst(precatalyst_id),
    substrate_id            INT NOT NULL REFERENCES substrate(substrate_id),
    solvent_id              INT          REFERENCES solvent(solvent_id),
    protocol_id             INT          REFERENCES reaction_protocol(protocol_id),
    conducted_by            INT          REFERENCES researcher(researcher_id),
    assay_date              DATE         NOT NULL DEFAULT CURRENT_DATE,
    assay_code              VARCHAR(100) NOT NULL UNIQUE,
    -- Reaction conditions
    temp_c                  NUMERIC(7,2) NOT NULL,
    pressure_bar            NUMERIC(8,3) NOT NULL,
    catalyst_loading_mol_pct NUMERIC(7,4) NOT NULL,
    substrate_conc_mM       NUMERIC(10,4),
    solvent_volume_mL       NUMERIC(10,3),
    reaction_time_h         NUMERIC(10,4) NOT NULL,
    co_partial_pressure_bar NUMERIC(8,3),
    h2_partial_pressure_bar NUMERIC(8,3),
    stirring_rpm            NUMERIC(7,1),
    gas_feed_mode           VARCHAR(30) DEFAULT 'static',
    flow_rate_mLmin         NUMERIC(10,4),
    quench_method           VARCHAR(200),
    analysis_instrument     VARCHAR(200),
    raw_data_file_path      TEXT,
    status                  assay_status_t NOT NULL DEFAULT 'pending',
    failure_reason          TEXT,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at              TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    -- enforce: co+h2 pressures <= total pressure
    CONSTRAINT co_h2_pressure_check CHECK (
        (co_partial_pressure_bar IS NULL OR h2_partial_pressure_bar IS NULL) OR
        (co_partial_pressure_bar + h2_partial_pressure_bar <= pressure_bar + 0.1)
    )
);
COMMENT ON TABLE assay IS
    'Individual experimental runs. One assay = one set of conditions + one catalyst + one substrate.';

-- Back-fill FK in catalyst_stability
ALTER TABLE catalyst_stability
    ADD CONSTRAINT fk_stability_assay
    FOREIGN KEY (assay_id) REFERENCES assay(assay_id);

CREATE TABLE assay_additive (
    aa_id                   SERIAL PRIMARY KEY,
    assay_id                INT NOT NULL REFERENCES assay(assay_id) ON DELETE CASCADE,
    additive_name           VARCHAR(200) NOT NULL,
    additive_role           VARCHAR(80),  -- cocatalyst, promoter, inhibitor, acid, base, ligand_excess
    amount_equiv            NUMERIC(10,4),
    concentration_mM        NUMERIC(10,4),
    notes                   TEXT
);

-- ================================================================
-- SECTION 4: PERFORMANCE METRICS
-- ================================================================

CREATE TABLE performance_metrics (
    metric_id               SERIAL PRIMARY KEY,
    assay_id                INT NOT NULL UNIQUE REFERENCES assay(assay_id) ON DELETE CASCADE,
    conversion_pct          NUMERIC(6,3) CHECK (conversion_pct BETWEEN 0 AND 100),
    yield_linear_aldehyde_pct   NUMERIC(6,3) CHECK (yield_linear_aldehyde_pct BETWEEN 0 AND 100),
    yield_branched_aldehyde_pct NUMERIC(6,3) CHECK (yield_branched_aldehyde_pct BETWEEN 0 AND 100),
    yield_alcohol_pct       NUMERIC(6,3) CHECK (yield_alcohol_pct BETWEEN 0 AND 100),
    yield_alkane_pct        NUMERIC(6,3) CHECK (yield_alkane_pct BETWEEN 0 AND 100),
    yield_isomerized_olefin_pct NUMERIC(6,3) CHECK (yield_isomerized_olefin_pct BETWEEN 0 AND 100),
    lb_ratio                NUMERIC(8,3) CHECK (lb_ratio >= 0),
    regioselectivity_pct    NUMERIC(6,3) CHECK (regioselectivity_pct BETWEEN 0 AND 100),
    chemoselectivity_pct    NUMERIC(6,3) CHECK (chemoselectivity_pct BETWEEN 0 AND 100),
    tof_h_inv               NUMERIC(14,4) CHECK (tof_h_inv >= 0),
    ton                     NUMERIC(14,2) CHECK (ton >= 0),
    ee_pct                  NUMERIC(6,3) CHECK (ee_pct BETWEEN -100 AND 100),
    space_time_yield_g_Lh   NUMERIC(12,4),
    e_factor                NUMERIC(10,4),
    calculation_method      TEXT,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
COMMENT ON TABLE performance_metrics IS
    'Core KPIs: conversion, selectivity (l/b ratio), TOF, TON, STY, E-factor';

CREATE TABLE isomerization_metrics (
    iso_metric_id           SERIAL PRIMARY KEY,
    assay_id                INT NOT NULL UNIQUE REFERENCES assay(assay_id) ON DELETE CASCADE,
    internal_olefin_conv_pct         NUMERIC(6,3),
    terminal_olefin_selectivity_pct  NUMERIC(6,3),
    double_bond_migration_rate_h_inv NUMERIC(14,6),
    isomer_distribution_json         JSONB,    -- {"1-oct": 78.2, "2-oct": 12.1, "3-oct": 9.7}
    tof_isomerization_h_inv          NUMERIC(14,4),
    ton_isomerization                NUMERIC(14,2),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE tandem_metrics (
    tandem_metric_id        SERIAL PRIMARY KEY,
    assay_id                INT NOT NULL UNIQUE REFERENCES assay(assay_id) ON DELETE CASCADE,
    overall_aldehyde_yield_pct           NUMERIC(6,3),
    internal_olefin_to_aldehyde_conv_pct NUMERIC(6,3),
    lb_ratio_from_internal               NUMERIC(8,3),
    iso_step_tof_h_inv                   NUMERIC(14,4),
    hf_step_tof_h_inv                    NUMERIC(14,4),
    bottleneck_step         VARCHAR(30),   -- isomerization | hydroformylation | none
    synergy_notes           TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE selectivity_profile (
    selectivity_id          SERIAL PRIMARY KEY,
    assay_id                INT NOT NULL REFERENCES assay(assay_id) ON DELETE CASCADE,
    product_id              INT NOT NULL REFERENCES product(product_id),
    selectivity_pct         NUMERIC(6,3),
    yield_pct               NUMERIC(6,3),
    amount_mmol             NUMERIC(12,6),
    quantification_method   VARCHAR(200),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (assay_id, product_id)
);

-- ================================================================
-- SECTION 5: KINETICS
-- ================================================================

CREATE TABLE kinetics_study (
    kinetics_id             SERIAL PRIMARY KEY,
    experiment_id           INT NOT NULL REFERENCES experiment(experiment_id),
    precatalyst_id          INT NOT NULL REFERENCES precatalyst(precatalyst_id),
    substrate_id            INT NOT NULL REFERENCES substrate(substrate_id),
    study_type              VARCHAR(80) NOT NULL,  -- initial_rate, progress_curve, inhibition, Ea
    rate_law_expression     TEXT,
    rate_constant_k         NUMERIC(18,8),
    rate_constant_units     VARCHAR(100),
    activation_energy_kJ_mol  NUMERIC(10,4),
    pre_exponential_A       NUMERIC(18,6),
    reaction_order_substrate  NUMERIC(6,3),
    reaction_order_co       NUMERIC(6,3),
    reaction_order_h2       NUMERIC(6,3),
    reaction_order_catalyst NUMERIC(6,3),
    kinetic_model           VARCHAR(80),
    r_squared               NUMERIC(6,4) CHECK (r_squared BETWEEN 0 AND 1),
    fitting_software        VARCHAR(100),
    data_file_path          TEXT,
    ref_id                  INT REFERENCES literature_ref(ref_id),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE kinetics_datapoint (
    dp_id                   SERIAL PRIMARY KEY,
    kinetics_id             INT NOT NULL REFERENCES kinetics_study(kinetics_id) ON DELETE CASCADE,
    assay_id                INT          REFERENCES assay(assay_id),
    time_h                  NUMERIC(10,4) NOT NULL,
    conversion_pct          NUMERIC(6,3),
    rate_mmol_L_h           NUMERIC(14,8),
    temp_c                  NUMERIC(7,2),
    pressure_bar            NUMERIC(8,3),
    catalyst_conc_mM        NUMERIC(10,6),
    substrate_conc_mM       NUMERIC(10,6),
    product_conc_mM         NUMERIC(10,6),
    notes                   TEXT
);

CREATE TABLE inhibition_study (
    inhibition_id           SERIAL PRIMARY KEY,
    kinetics_id             INT NOT NULL REFERENCES kinetics_study(kinetics_id) ON DELETE CASCADE,
    inhibitor_name          VARCHAR(200) NOT NULL,
    inhibitor_conc_mM       NUMERIC(10,4),
    ki_mM                   NUMERIC(14,6),
    inhibition_type         VARCHAR(30),
    inhibition_constant     NUMERIC(14,8),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ================================================================
-- SECTION 6: FLOW CHEMISTRY
-- ================================================================

CREATE TABLE flow_reactor_config (
    config_id               SERIAL PRIMARY KEY,
    config_name             VARCHAR(200) NOT NULL,
    reactor_brand           VARCHAR(200),
    reactor_model           VARCHAR(200),
    channel_volume_mL       NUMERIC(10,4),
    max_pressure_bar        NUMERIC(8,2),
    max_temp_c              NUMERIC(7,2),
    material                VARCHAR(80),     -- stainless_steel, PTFE, glass, hastelloy
    mixing_type             VARCHAR(80),
    residence_time_s        NUMERIC(10,4),
    back_pressure_regulator VARCHAR(200),
    pump_type               VARCHAR(80),
    inline_analytics        TEXT,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE flow_assay (
    flow_assay_id           SERIAL PRIMARY KEY,
    assay_id                INT NOT NULL UNIQUE REFERENCES assay(assay_id) ON DELETE CASCADE,
    config_id               INT NOT NULL REFERENCES flow_reactor_config(config_id),
    flow_rate_total_mLmin   NUMERIC(10,4),
    catalyst_stream_conc_mM NUMERIC(10,4),
    substrate_stream_conc_mM NUMERIC(10,4),
    residence_time_min      NUMERIC(10,4),
    back_pressure_bar       NUMERIC(8,3),
    steady_state_time_h     NUMERIC(10,3),
    productivity_g_Lh       NUMERIC(12,4),
    catalyst_stability_h    NUMERIC(10,2),
    inline_analysis_used    BOOLEAN DEFAULT FALSE,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ================================================================
-- SECTION 7: DFT / COMPUTATIONAL
-- ================================================================

CREATE TABLE dft_calculation (
    dft_id                  SERIAL PRIMARY KEY,
    precatalyst_id          INT NOT NULL REFERENCES precatalyst(precatalyst_id),
    ref_id                  INT          REFERENCES literature_ref(ref_id),
    software                VARCHAR(100) NOT NULL,
    functional              VARCHAR(80)  NOT NULL,
    basis_set               VARCHAR(100) NOT NULL,
    dispersion_correction   VARCHAR(30)  DEFAULT 'none',
    solvent_model           VARCHAR(30)  DEFAULT 'none',
    calculation_type        VARCHAR(80)  NOT NULL,
    electronic_energy_hartree   NUMERIC(20,10),
    zero_point_energy_hartree   NUMERIC(16,10),
    thermal_correction_hartree  NUMERIC(16,10),
    gibbs_free_energy_hartree   NUMERIC(20,10),
    convergence_criteria    TEXT,
    output_file_path        TEXT,
    calc_date               DATE,
    calculated_by           INT REFERENCES researcher(researcher_id),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE transition_state (
    ts_id                   SERIAL PRIMARY KEY,
    dft_id                  INT NOT NULL REFERENCES dft_calculation(dft_id) ON DELETE CASCADE,
    reaction_step           VARCHAR(100) NOT NULL,
    activation_barrier_kJ_mol  NUMERIC(10,4),
    reaction_energy_kJ_mol     NUMERIC(10,4),
    imaginary_frequency_cm_inv NUMERIC(10,3),
    irc_confirmed           VARCHAR(10) DEFAULT 'pending'
                            CHECK (irc_confirmed IN ('yes','no','pending')),
    ts_structure_file       TEXT,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE electronic_descriptor (
    descriptor_id           SERIAL PRIMARY KEY,
    dft_id                  INT NOT NULL REFERENCES dft_calculation(dft_id) ON DELETE CASCADE,
    ligand_id               INT          REFERENCES ligand(ligand_id),
    homo_energy_eV          NUMERIC(10,6),
    lumo_energy_eV          NUMERIC(10,6),
    homo_lumo_gap_eV        NUMERIC(10,6),
    nbo_charge_metal        NUMERIC(10,6),
    nbo_charge_donor_atom   NUMERIC(10,6),
    wiberg_bond_order       NUMERIC(8,6),
    npa_charge              NUMERIC(10,6),
    delta_h_co_binding_kJ_mol   NUMERIC(10,4),
    delta_g_co_binding_kJ_mol   NUMERIC(10,4),
    nci_index               NUMERIC(10,6),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE qsar_qspr_model (
    model_id                SERIAL PRIMARY KEY,
    model_name              VARCHAR(300) NOT NULL,
    target_property         VARCHAR(100) NOT NULL,
    descriptor_set          TEXT,
    algorithm               VARCHAR(80)  NOT NULL,
    r2_train                NUMERIC(6,4),
    r2_test                 NUMERIC(6,4),
    rmse_train              NUMERIC(14,6),
    rmse_test               NUMERIC(14,6),
    n_training_points       INT,
    n_test_points           INT,
    cross_validation_scheme VARCHAR(80),
    model_file_path         TEXT,
    trained_date            DATE,
    trained_by              INT REFERENCES researcher(researcher_id),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE qsar_datapoint (
    qdp_id                  SERIAL PRIMARY KEY,
    model_id                INT NOT NULL REFERENCES qsar_qspr_model(model_id) ON DELETE CASCADE,
    precatalyst_id          INT NOT NULL REFERENCES precatalyst(precatalyst_id),
    assay_id                INT          REFERENCES assay(assay_id),
    experimental_value      NUMERIC(14,6) NOT NULL,
    predicted_value         NUMERIC(14,6),
    residual                NUMERIC(14,6) GENERATED ALWAYS AS (experimental_value - predicted_value) STORED,
    dataset_split           VARCHAR(20)  DEFAULT 'train'
                            CHECK (dataset_split IN ('train','test','validation')),
    notes                   TEXT
);

-- ================================================================
-- SECTION 8: SCALE-UP & REPRODUCIBILITY
-- ================================================================

CREATE TABLE scale_up_study (
    scaleup_id              SERIAL PRIMARY KEY,
    precatalyst_id          INT NOT NULL REFERENCES precatalyst(precatalyst_id),
    experiment_id           INT NOT NULL REFERENCES experiment(experiment_id),
    scale_level             scale_level_t NOT NULL,
    reactor_volume_L        NUMERIC(12,4),
    reactor_type            VARCHAR(100),
    substrate_amount_mol    NUMERIC(14,4),
    catalyst_loading_mol_pct NUMERIC(7,4),
    temp_c                  NUMERIC(7,2),
    pressure_bar            NUMERIC(8,3),
    reaction_time_h         NUMERIC(10,4),
    yield_pct               NUMERIC(6,3),
    lb_ratio                NUMERIC(8,3),
    tof_h_inv               NUMERIC(14,4),
    space_time_yield_g_Lh   NUMERIC(12,4),
    catalyst_cost_USD_kg    NUMERIC(12,4),
    e_factor                NUMERIC(10,4),
    pmi                     NUMERIC(10,4),
    scale_up_challenges     TEXT,
    ref_id                  INT REFERENCES literature_ref(ref_id),
    study_date              DATE,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE reproducibility_study (
    repro_id                SERIAL PRIMARY KEY,
    assay_id                INT NOT NULL REFERENCES assay(assay_id) ON DELETE CASCADE,
    replicate_number        INT NOT NULL CHECK (replicate_number > 0),
    conversion_pct          NUMERIC(6,3),
    yield_pct               NUMERIC(6,3),
    lb_ratio                NUMERIC(8,3),
    tof_h_inv               NUMERIC(14,4),
    ton                     NUMERIC(14,2),
    same_lab                BOOLEAN DEFAULT TRUE,
    same_operator           BOOLEAN DEFAULT TRUE,
    std_dev_conversion      NUMERIC(8,4),
    std_dev_yield           NUMERIC(8,4),
    rsd_pct                 NUMERIC(8,4),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (assay_id, replicate_number)
);

-- ================================================================
-- SECTION 9: ANALYTICAL CHARACTERIZATION
-- ================================================================

CREATE TABLE catalyst_characterization (
    char_id                 SERIAL PRIMARY KEY,
    precatalyst_id          INT NOT NULL REFERENCES precatalyst(precatalyst_id),
    technique               VARCHAR(50) NOT NULL,  -- XRD, XPS, TEM, SEM, IR, NMR, ICP-MS …
    instrument_model        VARCHAR(200),
    measurement_conditions  TEXT,
    key_findings            TEXT,
    data_file_path          TEXT,
    measurement_date        DATE,
    measured_by             INT REFERENCES researcher(researcher_id),
    ref_id                  INT REFERENCES literature_ref(ref_id),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE nmr_data (
    nmr_id                  SERIAL PRIMARY KEY,
    char_id                 INT NOT NULL REFERENCES catalyst_characterization(char_id) ON DELETE CASCADE,
    nucleus                 VARCHAR(10) NOT NULL,  -- 1H, 13C, 31P, 103Rh, 59Co
    field_strength_MHz      NUMERIC(8,2),
    solvent                 VARCHAR(80),
    temp_c                  NUMERIC(7,2),
    key_shifts_ppm          JSONB,   -- [{"assignment":"Rh-H","shift":-8.45,"mult":"d","J_Hz":26.1}]
    coupling_constants_Hz   TEXT,
    spectrum_file_path      TEXT,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE ir_data (
    ir_id                   SERIAL PRIMARY KEY,
    char_id                 INT NOT NULL REFERENCES catalyst_characterization(char_id) ON DELETE CASCADE,
    technique               VARCHAR(80),   -- ATR-IR, transmission_IR, in_situ_HP_IR
    co_stretch_cm_inv       NUMERIC(8,2),
    rh_co_stretch_cm_inv    NUMERIC(8,2),
    key_bands_json          JSONB,
    spectrum_file_path      TEXT,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE hp_ir_insitu (
    hpir_id                 SERIAL PRIMARY KEY,
    assay_id                INT NOT NULL REFERENCES assay(assay_id) ON DELETE CASCADE,
    pressure_bar            NUMERIC(8,3),
    temp_c                  NUMERIC(7,2),
    co_h2_ratio             NUMERIC(5,2),
    co_stretch_cm_inv       NUMERIC(8,2),
    active_species_assigned TEXT,
    spectrum_file_path      TEXT,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ================================================================
-- SECTION 10: DATA MANAGEMENT & AUDIT
-- ================================================================

CREATE TABLE data_file (
    file_id                 SERIAL PRIMARY KEY,
    assay_id                INT          REFERENCES assay(assay_id),
    file_name               VARCHAR(500) NOT NULL,
    file_type               VARCHAR(80),
    file_path               TEXT NOT NULL,
    file_size_MB            NUMERIC(10,4),
    checksum_sha256         CHAR(64),
    uploaded_date           DATE NOT NULL DEFAULT CURRENT_DATE,
    uploaded_by             INT REFERENCES researcher(researcher_id),
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE benchmark_comparison (
    bench_id                SERIAL PRIMARY KEY,
    benchmark_name          VARCHAR(300) NOT NULL,
    ref_precatalyst_id      INT NOT NULL REFERENCES precatalyst(precatalyst_id),
    test_precatalyst_id     INT NOT NULL REFERENCES precatalyst(precatalyst_id),
    assay_ref_id            INT          REFERENCES assay(assay_id),
    assay_test_id           INT          REFERENCES assay(assay_id),
    tof_improvement_pct     NUMERIC(10,4),
    selectivity_improvement_pct NUMERIC(10,4),
    ton_improvement_pct     NUMERIC(10,4),
    lb_ratio_change         NUMERIC(8,3),
    conclusion              TEXT,
    compared_by             INT REFERENCES researcher(researcher_id),
    comparison_date         DATE DEFAULT CURRENT_DATE,
    notes                   TEXT,
    created_at              TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE audit_log (
    log_id                  BIGSERIAL PRIMARY KEY,
    table_name              VARCHAR(100) NOT NULL,
    record_id               INT,
    action                  audit_action_t NOT NULL,
    performed_by            INT REFERENCES researcher(researcher_id),
    action_timestamp        TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    old_values_json         JSONB,
    new_values_json         JSONB,
    ip_address              INET,
    session_id              VARCHAR(200)
);

-- ================================================================
-- SECTION 11: VIEWS
-- ================================================================

CREATE OR REPLACE VIEW v_catalyst_summary AS
SELECT
    p.precatalyst_id,
    p.catalyst_name,
    p.abbreviation,
    p.reaction_class,
    m.symbol AS metal,
    p.oxidation_state,
    STRING_AGG(DISTINCT l.abbreviation, ', ' ORDER BY l.abbreviation) AS ligands,
    p.catalyst_type,
    p.internal_code,
    r.last_name || ', ' || r.first_name AS registered_by
FROM precatalyst p
JOIN metal_center m ON p.metal_id = m.metal_id
LEFT JOIN precatalyst_ligand pl ON p.precatalyst_id = pl.precatalyst_id
LEFT JOIN ligand l ON pl.ligand_id = l.ligand_id
LEFT JOIN researcher r ON p.registered_by = r.researcher_id
GROUP BY p.precatalyst_id, p.catalyst_name, p.abbreviation, p.reaction_class,
         m.symbol, p.oxidation_state, p.catalyst_type, p.internal_code,
         r.last_name, r.first_name;

CREATE OR REPLACE VIEW v_assay_performance AS
SELECT
    a.assay_id,
    a.assay_code,
    a.assay_date,
    e.experiment_code,
    p.catalyst_name,
    p.abbreviation         AS catalyst_abbr,
    m.symbol               AS metal,
    s.substrate_name,
    s.substrate_class,
    a.temp_c,
    a.pressure_bar,
    a.catalyst_loading_mol_pct,
    a.reaction_time_h,
    pm.conversion_pct,
    pm.yield_linear_aldehyde_pct,
    pm.yield_branched_aldehyde_pct,
    pm.lb_ratio,
    pm.tof_h_inv,
    pm.ton,
    pm.e_factor,
    a.status
FROM assay a
JOIN experiment e   ON a.experiment_id   = e.experiment_id
JOIN precatalyst p  ON a.precatalyst_id  = p.precatalyst_id
JOIN metal_center m ON p.metal_id        = m.metal_id
JOIN substrate s    ON a.substrate_id    = s.substrate_id
LEFT JOIN performance_metrics pm ON a.assay_id = pm.assay_id;

CREATE OR REPLACE VIEW v_tandem_leaderboard AS
SELECT
    p.catalyst_name,
    p.abbreviation,
    m.symbol AS metal,
    s.substrate_name,
    a.temp_c, a.pressure_bar,
    tm.overall_aldehyde_yield_pct,
    tm.lb_ratio_from_internal,
    tm.iso_step_tof_h_inv,
    tm.hf_step_tof_h_inv,
    tm.bottleneck_step,
    cs.half_life_h,
    a.assay_date
FROM tandem_metrics tm
JOIN assay a         ON tm.assay_id       = a.assay_id
JOIN precatalyst p   ON a.precatalyst_id  = p.precatalyst_id
JOIN metal_center m  ON p.metal_id        = m.metal_id
JOIN substrate s     ON a.substrate_id    = s.substrate_id
LEFT JOIN catalyst_stability cs ON cs.precatalyst_id = p.precatalyst_id
ORDER BY tm.overall_aldehyde_yield_pct DESC;

CREATE OR REPLACE VIEW v_dft_experimental_correlation AS
SELECT
    p.catalyst_name,
    p.abbreviation,
    ed.homo_energy_eV,
    ed.lumo_energy_eV,
    ed.homo_lumo_gap_eV,
    ed.delta_g_co_binding_kJ_mol,
    ed.nbo_charge_metal,
    ts.reaction_step,
    ts.activation_barrier_kJ_mol,
    pm.tof_h_inv,
    pm.lb_ratio,
    pm.ton
FROM electronic_descriptor ed
JOIN dft_calculation dc  ON ed.dft_id         = dc.dft_id
JOIN precatalyst p       ON dc.precatalyst_id = p.precatalyst_id
LEFT JOIN transition_state ts ON ts.dft_id    = dc.dft_id
LEFT JOIN assay a            ON a.precatalyst_id = p.precatalyst_id
LEFT JOIN performance_metrics pm ON pm.assay_id = a.assay_id;

-- ================================================================
-- SECTION 12: INDEXES
-- ================================================================

CREATE INDEX idx_assay_experiment     ON assay(experiment_id);
CREATE INDEX idx_assay_precatalyst    ON assay(precatalyst_id);
CREATE INDEX idx_assay_substrate      ON assay(substrate_id);
CREATE INDEX idx_assay_date           ON assay(assay_date);
CREATE INDEX idx_assay_status         ON assay(status);
CREATE INDEX idx_precatalyst_metal    ON precatalyst(metal_id);
CREATE INDEX idx_precatalyst_class    ON precatalyst(reaction_class);
CREATE INDEX idx_precatalyst_type     ON precatalyst(catalyst_type);
CREATE INDEX idx_pm_tof               ON performance_metrics(tof_h_inv DESC NULLS LAST);
CREATE INDEX idx_pm_lb_ratio          ON performance_metrics(lb_ratio DESC NULLS LAST);
CREATE INDEX idx_pm_conversion        ON performance_metrics(conversion_pct DESC NULLS LAST);
CREATE INDEX idx_kinetics_precatalyst ON kinetics_study(precatalyst_id);
CREATE INDEX idx_dft_precatalyst      ON dft_calculation(precatalyst_id);
CREATE INDEX idx_audit_table          ON audit_log(table_name, record_id);
CREATE INDEX idx_audit_ts             ON audit_log(action_timestamp DESC);
CREATE INDEX idx_ligand_class         ON ligand(ligand_class);
CREATE INDEX idx_substrate_class      ON substrate(substrate_class);
CREATE INDEX idx_iso_metrics_assay    ON isomerization_metrics(assay_id);
CREATE INDEX idx_tandem_metrics_assay ON tandem_metrics(assay_id);

-- ================================================================
-- SECTION 13: AUDIT TRIGGER
-- ================================================================

CREATE OR REPLACE FUNCTION audit_trigger_fn()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    IF TG_OP = 'DELETE' THEN
        INSERT INTO audit_log(table_name, record_id, action, old_values_json)
        VALUES (TG_TABLE_NAME, OLD.*, 'DELETE', to_jsonb(OLD));
        RETURN OLD;
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO audit_log(table_name, record_id, action, old_values_json, new_values_json)
        VALUES (TG_TABLE_NAME, NEW.*, 'UPDATE', to_jsonb(OLD), to_jsonb(NEW));
        RETURN NEW;
    ELSIF TG_OP = 'INSERT' THEN
        INSERT INTO audit_log(table_name, record_id, action, new_values_json)
        VALUES (TG_TABLE_NAME, NEW.*, 'INSERT', to_jsonb(NEW));
        RETURN NEW;
    END IF;
END;
$$;

-- Apply audit trigger to critical tables
DO $$
DECLARE t TEXT;
BEGIN
    FOREACH t IN ARRAY ARRAY['precatalyst','assay','performance_metrics',
                              'kinetics_study','scale_up_study','dft_calculation'] LOOP
        EXECUTE format('
            CREATE TRIGGER audit_%1$s
            AFTER INSERT OR UPDATE OR DELETE ON %1$s
            FOR EACH ROW EXECUTE FUNCTION audit_trigger_fn();', t);
    END LOOP;
END $$;

-- ================================================================
-- SECTION 14: updated_at TRIGGER
-- ================================================================

CREATE OR REPLACE FUNCTION set_updated_at()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN NEW.updated_at = NOW(); RETURN NEW; END;
$$;

DO $$
DECLARE t TEXT;
BEGIN
    FOREACH t IN ARRAY ARRAY['precatalyst','assay','experiment','substrate','ligand'] LOOP
        EXECUTE format('
            CREATE TRIGGER trg_updated_at_%1$s
            BEFORE UPDATE ON %1$s
            FOR EACH ROW EXECUTE FUNCTION set_updated_at();', t);
    END LOOP;
END $$;
