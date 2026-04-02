-- ================================================================
-- HYDROFORMYLATION AND ISOMERIZATION R&D DATABASE
-- Covers: Catalysts, Reactions, Assays, Kinetics, DFT,
--         Flow Chemistry, Scale-up, Reproducibility, Analytics
-- Suitable for BASF, Shell, SABIC, Dow, Aramco R&D pipelines
-- ================================================================


CREATE DATABASE IF NOT EXISTS cat_rnd
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE cat_rnd;

SET FOREIGN_KEY_CHECKS = 0;

-- ================================================================
-- SECTION A: REFERENCE TABLES
-- ================================================================

-- ======================
-- TABLE 1: metal_center
-- ======================

CREATE TABLE metal_center (
    metal_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    symbol VARCHAR(5) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    atomic_number INT NOT NULL,
    common_oxidation_states VARCHAR(100),
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    ) COMMENT = 'Transition metals used as active sites (Rh, Co, Ir, Ru, Pd ...)';

-- ================
-- TABLE 2: ligand
-- ================
CREATE TABLE ligand (
    ligand_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ligand_name VARCHAR(200) NOT NULL,
    abbreviation VARCHAR(50),
    ligand_class VARCHAR(80) NOT NULL,
    donor_atoms VARCHAR(80),
    cone_angle_deg DECIMAL(6,2),
    tolman_electronic_param DECIMAL(8,2),
    buried_volume_pct DECIMAL(5,2),
    smiles TEXT,
    inchi_key CHAR(27),
    cas_number VARCHAR(30),
    commercial_source VARCHAR(200),
    synthesis_ref TEXT,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    KEY idx_ligand_class (ligand_class)
) COMMENT = 'Ancillary and spectator ligands used in the catalyst design';

-- ===================
-- TABLE 3: substrate
-- ===================
CREATE TABLE substrate (
    substrate_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    substrate_name VARCHAR(200) NOT NULL,
    smiles TEXT NOT NULL,
    inchi_key CHAR(27),
    cas_number VARCHAR(30),
    substrate_class ENUM('internal_olefin','terminal_olefin','diene','cyclic_olefin','other') NOT NULL,
    carbon_chain_length INT,
    functional_groups TEXT,
    molecular_weight_gmol DECIMAL(10,4) NOT NULL,
    supplier VARCHAR(200),
    purity_pct DECIMAL(5,2),
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT chk_substrate_chain CHECK (carbon_chain_length > 0),
    CONSTRAINT chk_substrate_purity CHECK (purity_pct BETWEEN 0 AND 100),
    KEY idx_substrate_class (substrate_class)
) COMMENT = 'Olefin substrates (internal C4-C20, terminal, dienes) for iso/hydroformylation';


-- =================
-- TABLE 4: solvent
-- =================
CREATE TABLE solvent (
    solvent_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    solvent_name VARCHAR(150) NOT NULL,
    abbreviation VARCHAR(20),
    smiles TEXT,
    boiling_point_c DECIMAL(7,2),
    dielectric_constant DECIMAL(7,4),
    polarity_class VARCHAR(50),
    cas_number VARCHAR(30),
    notes TEXT,
    created_at DATETIME(0)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY uq_solvent_name (solvent_name)
);

-- =================
-- TABLE 4: product
-- =================
CREATE TABLE product (
    product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(200) NOT NULL,
    smiles TEXT,
    inchi_key CHAR(27),
    cas_number VARCHAR(30),
    product_type ENUM('linear_aldehyde','branched_aldehyde','alcohol','alkane','isomerized_olefin','other') NOT NULL,
    molecular_weight_gmol DECIMAL(10,4),
    notes TEXT,
    created_at DATETIME(0)  NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- ========================
-- TABLE 5: literature_ref
-- ========================
CREATE TABLE literature_ref (
    ref_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    doi VARCHAR(200),
    title TEXT NOT NULL,
    authors TEXT NOT NULL,
    journal VARCHAR(300),
    year INT,
    volume INT,
    pages VARCHAR(50),
    abstract_summary TEXT,
    ref_type ENUM('journal','patent','conference','thesis','internal_report','book_chapter') NOT NULL DEFAULT 'journal',
    patent_number VARCHAR(100),
    assignee VARCHAR(300),
    url TEXT,
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_ref_year CHECK (year BETWEEN 1900 AND 2100),
    UNIQUE KEY uq_ref_doi (doi)
);

-- ====================
-- TABLE 6: researcher
-- ====================
CREATE TABLE researcher (
    researcher_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(200) NOT NULL,
    orcid VARCHAR(20),
    affiliation VARCHAR(300) NOT NULL,
    department VARCHAR(200),
    role ENUM('PI','postdoc','PhD_student','MSc_student','engineer','analyst','technician') NOT NULL,
    joined_date DATE,
    active TINYINT(1) NOT NULL DEFAULT 1,
    notes TEXT,
    created_at DATETIME(0)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY uq_researcher_email (email),
    UNIQUE KEY uq_researcher_orcid (orcid)
);


-- ================================================================
-- SECTION B: CATALYST TABLES
-- ================================================================

-- =====================
-- TABLE 7: precatalyst
-- =====================

CREATE TABLE precatalyst (
    precatalyst_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    catalyst_name VARCHAR(300) NOT NULL,
    abbreviation VARCHAR(80),
    catalyst_type ENUM('homogeneous','heterogeneous','immobilized','nanoparticle') NOT NULL,
    reaction_class  ENUM('hydroformylation','isomerization','tandem_iso_hydroformylation') NOT NULL,
    metal_id INT NOT NULL,
    oxidation_state VARCHAR(10),
    coordination_geometry VARCHAR(80),
    smiles TEXT,
    inchi_key CHAR(27),
    cas_number VARCHAR(30),
    molecular_weight_gmol DECIMAL(10,4),
    color  VARCHAR(80),
    physical_form  VARCHAR(30)  DEFAULT 'solid',
    purity_pct DECIMAL(5,2),
    synthesis_method VARCHAR(30)  DEFAULT 'commercial',
    storage_conditions TEXT,
    hazard_class VARCHAR(100),
    primary_ref_id INT,
    date_registered DATE NOT NULL DEFAULT (CURDATE()),
    registered_by INT,
    internal_code VARCHAR(100),
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT chk_precatalyst_purity CHECK (purity_pct BETWEEN 0 AND 100),
    UNIQUE KEY uq_precatalyst_internal_code (internal_code),
    KEY idx_precatalyst_metal (metal_id),
    KEY idx_precatalyst_class (reaction_class),
    KEY idx_precatalyst_type (catalyst_type),
    CONSTRAINT fk_precatalyst_metal FOREIGN KEY (metal_id) REFERENCES metal_center(metal_id),
    CONSTRAINT fk_precatalyst_ref FOREIGN KEY (primary_ref_id) REFERENCES literature_ref(ref_id),
    CONSTRAINT fk_precatalyst_reg FOREIGN KEY (registered_by) REFERENCES researcher(researcher_id)
) COMMENT = 'Central catalyst registry. Includes Rh/Co phosphine complexes for HF, and Pd/Ni/Fe/Rh complexes for isomerization and tandem catalysis.';

-- ============================
-- TABLE 8: precatalyst_ligand
-- ============================
CREATE TABLE precatalyst_ligand (
    pl_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precatalyst_id INT NOT NULL,
    ligand_id INT NOT NULL,
    stoichiometry INT NOT NULL DEFAULT 1,
    binding_mode VARCHAR(50)  DEFAULT 'monodentate',
    notes TEXT,
    CONSTRAINT chk_pl_stoich CHECK (stoichiometry > 0),
    UNIQUE KEY uq_pl_precatalyst_ligand (precatalyst_id, ligand_id),
    CONSTRAINT fk_pl_precatalyst FOREIGN KEY (precatalyst_id) REFERENCES precatalyst(precatalyst_id) ON DELETE CASCADE,
    CONSTRAINT fk_pl_ligand FOREIGN KEY (ligand_id) REFERENCES ligand(ligand_id)
);

-- ==========================
-- TABLE 9: catalyst_support
-- ==========================
CREATE TABLE catalyst_support (
    support_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    support_name VARCHAR(200) NOT NULL,
    support_type VARCHAR(50) NOT NULL,
    surface_area_m2g DECIMAL(8,2),
    pore_volume_cm3g DECIMAL(8,4),
    avg_pore_size_nm DECIMAL(8,3),
    functionalization TEXT,
    supplier VARCHAR(200),
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- =============================
-- TABLE 10: supported_catalyst
-- =============================
CREATE TABLE supported_catalyst (
    supported_cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precatalyst_id INT NOT NULL,
    support_id INT NOT NULL,
    metal_loading_wt_pct DECIMAL(6,3),
    immobilization_method VARCHAR(80),
    leaching_test_ppm DECIMAL(8,3),
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_metal_loading CHECK (metal_loading_wt_pct > 0),
    CONSTRAINT fk_sc_precatalyst FOREIGN KEY (precatalyst_id) REFERENCES precatalyst(precatalyst_id),
    CONSTRAINT fk_sc_support FOREIGN KEY (support_id) REFERENCES catalyst_support(support_id)
);

-- =============================
-- TABLE 11: catalyst_stability
-- =============================
CREATE TABLE catalyst_stability (
    stability_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precatalyst_id  INT NOT NULL,
    assay_id INT,
    half_life_h DECIMAL(10,2),
    deactivation_mode ENUM('ligand_dissociation','sintering','poisoning','oxidation','leaching','aggregation','unknown'),
    residual_activity_pct DECIMAL(5,2),
    recycle_number INT DEFAULT 0,
    activity_after_recycle_pct DECIMAL(5,2),
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_stab_residual CHECK (residual_activity_pct BETWEEN 0 AND 100),
    CONSTRAINT fk_stab_precatalyst FOREIGN KEY (precatalyst_id) REFERENCES precatalyst(precatalyst_id)
    -- fk_stability_assay added after assay table below
);


-- ================================================================
-- SECTION C: REACTION EXPERIMENT AND PROTOCOL TABLES
-- ================================================================

-- ============================
-- TABLE 12: reaction_protocol
-- ============================
CREATE TABLE reaction_protocol (
    protocol_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    protocol_name VARCHAR(300) NOT NULL,
    reaction_type ENUM('hydroformylation','isomerization','tandem_iso_hydroformylation') NOT NULL,
    reactor_mode ENUM('batch','continuous_flow','semi_batch') NOT NULL,
    reactor_type VARCHAR(80) NOT NULL,
    reactor_volume_mL DECIMAL(10,3),
    atmosphere VARCHAR(50),
    co_h2_ratio  DECIMAL(5,2),
    standard_workup TEXT,
    analysis_method VARCHAR(200),
    internal_standard VARCHAR(200),
    created_by INT,
    protocol_ref_id INT,
    created_date DATE NOT NULL DEFAULT (CURDATE()),
    version VARCHAR(20) NOT NULL DEFAULT '1.0',
    notes  TEXT,
    created_at DATETIME(0)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_rp_created_by FOREIGN KEY (created_by) REFERENCES researcher(researcher_id),
    CONSTRAINT fk_rp_ref FOREIGN KEY (protocol_ref_id) REFERENCES literature_ref(ref_id)
);

-- =====================
-- TABLE 13: experiment
-- =====================
CREATE TABLE experiment (
    experiment_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    experiment_code VARCHAR(100) NOT NULL,
    title VARCHAR(400) NOT NULL,
    objective TEXT,
    reaction_type ENUM('hydroformylation','isomerization','tandem_iso_hydroformylation') NOT NULL,
    protocol_id INT,
    lead_researcher INT,
    start_date DATE,
    end_date DATE,
    project_code VARCHAR(100),
    status VARCHAR(30) NOT NULL DEFAULT 'planned',
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT chk_experiment_status CHECK (status IN ('planned','active','completed','archived')),
    UNIQUE KEY uq_experiment_code (experiment_code),
    CONSTRAINT fk_exp_protocol   FOREIGN KEY (protocol_id)     REFERENCES reaction_protocol(protocol_id),
    CONSTRAINT fk_exp_researcher FOREIGN KEY (lead_researcher) REFERENCES researcher(researcher_id)
);

-- ================
-- TABLE 14: assay
-- ================
CREATE TABLE assay (
    assay_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    experiment_id INT NOT NULL,
    precatalyst_id INT NOT NULL,
    substrate_id INT NOT NULL,
    solvent_id INT,
    protocol_id INT,
    conducted_by  INT,
    assay_date DATE NOT NULL DEFAULT (CURDATE()),
    assay_code VARCHAR(100) NOT NULL,
    -- Reaction conditions
    temp_c DECIMAL(7,2) NOT NULL,
    pressure_bar DECIMAL(8,3) NOT NULL,
    catalyst_loading_mol_pct DECIMAL(7,4) NOT NULL,
    substrate_conc_mM DECIMAL(10,4),
    solvent_volume_mL DECIMAL(10,3),
    reaction_time_h DECIMAL(10,4) NOT NULL,
    co_partial_pressure_bar DECIMAL(8,3),
    h2_partial_pressure_bar DECIMAL(8,3),
    stirring_rpm DECIMAL(7,1),
    gas_feed_mode VARCHAR(30)  DEFAULT 'static',
    flow_rate_mLmin DECIMAL(10,4),
    quench_method VARCHAR(200),
    analysis_instrument VARCHAR(200),
    raw_data_file_path TEXT,
    status ENUM('pending','running','completed','failed','aborted') NOT NULL DEFAULT 'pending',
    failure_reason TEXT,
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME(0)  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT co_h2_pressure_check CHECK (
        (co_partial_pressure_bar IS NULL OR h2_partial_pressure_bar IS NULL) OR
        (co_partial_pressure_bar + h2_partial_pressure_bar <= pressure_bar + 0.1)
    ),
    UNIQUE KEY uq_assay_code (assay_code),
    KEY idx_assay_experiment (experiment_id),
    KEY idx_assay_precatalyst (precatalyst_id),
    KEY idx_assay_substrate (substrate_id),
    KEY idx_assay_date (assay_date),
    KEY idx_assay_status (status),
    CONSTRAINT fk_assay_experiment FOREIGN KEY (experiment_id) REFERENCES experiment(experiment_id),
    CONSTRAINT fk_assay_precatalyst FOREIGN KEY (precatalyst_id) REFERENCES precatalyst(precatalyst_id),
    CONSTRAINT fk_assay_substrate FOREIGN KEY (substrate_id) REFERENCES substrate(substrate_id),
    CONSTRAINT fk_assay_solvent FOREIGN KEY (solvent_id) REFERENCES solvent(solvent_id),
    CONSTRAINT fk_assay_protocol FOREIGN KEY (protocol_id) REFERENCES reaction_protocol(protocol_id),
    CONSTRAINT fk_assay_conducted FOREIGN KEY (conducted_by) REFERENCES researcher(researcher_id)
) COMMENT = 'Individual experimental runs. One assay = one set of conditions + one catalyst + one substrate.';

-- Back-fill FK in catalyst_stability
ALTER TABLE catalyst_stability
    ADD CONSTRAINT fk_stability_assay FOREIGN KEY (assay_id) REFERENCES assay(assay_id);

-- =========================
-- TABLE 15: assay_additive
-- =========================
CREATE TABLE assay_additive (
    aa_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    assay_id INT NOT NULL,
    additive_name VARCHAR(200) NOT NULL,
    additive_role VARCHAR(80),
    amount_equiv DECIMAL(10,4),
    concentration_mM DECIMAL(10,4),
    notes TEXT,
    CONSTRAINT fk_aa_assay FOREIGN KEY (assay_id) REFERENCES assay(assay_id) ON DELETE CASCADE
);


-- ================================================================
-- SECTION D: PERFORMANCE METRICS
-- ================================================================

-- ==============================
-- TABLE 16: performance_metrics
-- ==============================
CREATE TABLE performance_metrics (
    metric_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    assay_id INT NOT NULL,
    conversion_pct DECIMAL(6,3),
    yield_linear_aldehyde_pct DECIMAL(6,3),
    yield_branched_aldehyde_pct DECIMAL(6,3),
    yield_alcohol_pct DECIMAL(6,3),
    yield_alkane_pct DECIMAL(6,3),
    yield_isomerized_olefin_pct DECIMAL(6,3),
    lb_ratio DECIMAL(8,3),
    regioselectivity_pct DECIMAL(6,3),
    chemoselectivity_pct DECIMAL(6,3),
    tof_h_inv DECIMAL(14,4),
    ton DECIMAL(14,2),
    ee_pct DECIMAL(6,3),
    space_time_yield_g_Lh DECIMAL(12,4),
    e_factor DECIMAL(10,4),
    calculation_method TEXT,
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_pm_conversion CHECK (conversion_pct BETWEEN 0 AND 100),
    CONSTRAINT chk_pm_yld_lin CHECK (yield_linear_aldehyde_pct BETWEEN 0 AND 100),
    CONSTRAINT chk_pm_yld_br CHECK (yield_branched_aldehyde_pct BETWEEN 0 AND 100),
    CONSTRAINT chk_pm_yld_alc CHECK (yield_alcohol_pct BETWEEN 0 AND 100),
    CONSTRAINT chk_pm_yld_alk CHECK (yield_alkane_pct BETWEEN 0 AND 100),
    CONSTRAINT chk_pm_yld_iso CHECK (yield_isomerized_olefin_pct BETWEEN 0 AND 100),
    CONSTRAINT chk_pm_lb CHECK (lb_ratio >= 0),
    CONSTRAINT chk_pm_regio CHECK (regioselectivity_pct BETWEEN 0 AND 100),
    CONSTRAINT chk_pm_chemo CHECK (chemoselectivity_pct BETWEEN 0 AND 100),
    CONSTRAINT chk_pm_tof CHECK (tof_h_inv >= 0),
    CONSTRAINT chk_pm_ton CHECK (ton >= 0),
    CONSTRAINT chk_pm_ee CHECK (ee_pct BETWEEN -100 AND 100),
    UNIQUE KEY uq_pm_assay (assay_id),
    KEY idx_pm_tof (tof_h_inv DESC),
    KEY idx_pm_lb_ratio (lb_ratio DESC),
    KEY idx_pm_conversion (conversion_pct DESC),
    CONSTRAINT fk_pm_assay FOREIGN KEY (assay_id) REFERENCES assay(assay_id) ON DELETE CASCADE
) COMMENT = 'Core KPIs: conversion, selectivity (l/b ratio), TOF, TON, STY, E-factor';

-- ================================
-- TABLE 17: isomerization_metrics
-- ================================
CREATE TABLE isomerization_metrics (
    iso_metric_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    assay_id INT NOT NULL,
    internal_olefin_conv_pct DECIMAL(6,3),
    terminal_olefin_selectivity_pct DECIMAL(6,3),
    double_bond_migration_rate_h_inv DECIMAL(14,6),
    isomer_distribution_json JSON,
    tof_isomerization_h_inv DECIMAL(14,4),
    ton_isomerization DECIMAL(14,2),
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY uq_iso_assay (assay_id),
    KEY idx_iso_metrics_assay (assay_id),
    CONSTRAINT fk_iso_assay FOREIGN KEY (assay_id) REFERENCES assay(assay_id) ON DELETE CASCADE
);

-- =========================
-- TABLE 18: tandem_metrics
-- =========================
CREATE TABLE tandem_metrics (
    tandem_metric_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    assay_id INT NOT NULL,
    overall_aldehyde_yield_pct DECIMAL(6,3),
    internal_olefin_to_aldehyde_conv_pct DECIMAL(6,3),
    lb_ratio_from_internal DECIMAL(8,3),
    iso_step_tof_h_inv DECIMAL(14,4),
    hf_step_tof_h_inv DECIMAL(14,4),
    bottleneck_step VARCHAR(30),
    synergy_notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY uq_tandem_assay (assay_id),
    KEY idx_tandem_metrics_assay (assay_id),
    CONSTRAINT fk_tandem_assay FOREIGN KEY (assay_id) REFERENCES assay(assay_id) ON DELETE CASCADE
);

-- ==============================
-- TABLE 19: selectivity_profile
-- ==============================
CREATE TABLE selectivity_profile (
    selectivity_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    assay_id INT NOT NULL,
    product_id INT NOT NULL,
    selectivity_pct DECIMAL(6,3),
    yield_pct DECIMAL(6,3),
    amount_mmol DECIMAL(12,6),
    quantification_method VARCHAR(200),
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY uq_sel_assay_product (assay_id, product_id),
    CONSTRAINT fk_sel_assay FOREIGN KEY (assay_id) REFERENCES assay(assay_id) ON DELETE CASCADE,
    CONSTRAINT fk_sel_product FOREIGN KEY (product_id) REFERENCES product(product_id)
);


-- ================================================================
-- SECTION E: KINETICS TABLES
-- ================================================================

-- =========================
-- TABLE 20: kinetics_study
-- =========================
CREATE TABLE kinetics_study (
    kinetics_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    experiment_id INT NOT NULL,
    precatalyst_id INT NOT NULL,
    substrate_id INT NOT NULL,
    study_type VARCHAR(80) NOT NULL,
    rate_law_expression TEXT,
    rate_constant_k DECIMAL(18,8),
    rate_constant_units VARCHAR(100),
    activation_energy_kJ_mol DECIMAL(10,4),
    pre_exponential_A DECIMAL(18,6),
    reaction_order_substrate DECIMAL(6,3),
    reaction_order_co DECIMAL(6,3),
    reaction_order_h2 DECIMAL(6,3),
    reaction_order_catalyst DECIMAL(6,3),
    kinetic_model VARCHAR(80),
    r_squared DECIMAL(6,4),
    fitting_software VARCHAR(100),
    data_file_path TEXT,
    ref_id INT,
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_ks_r2 CHECK (r_squared BETWEEN 0 AND 1),
    KEY idx_kinetics_precatalyst (precatalyst_id),
    CONSTRAINT fk_ks_experiment FOREIGN KEY (experiment_id) REFERENCES experiment(experiment_id),
    CONSTRAINT fk_ks_precatalyst FOREIGN KEY (precatalyst_id) REFERENCES precatalyst(precatalyst_id),
    CONSTRAINT fk_ks_substrate FOREIGN KEY (substrate_id) REFERENCES substrate(substrate_id),
    CONSTRAINT fk_ks_ref FOREIGN KEY (ref_id) REFERENCES literature_ref(ref_id)
);

-- =============================
-- TABLE 21: kinetics_datapoint
-- =============================
CREATE TABLE kinetics_datapoint (
    dp_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    kinetics_id INT NOT NULL,
    assay_id INT,
    time_h DECIMAL(10,4) NOT NULL,
    conversion_pct DECIMAL(6,3),
    rate_mmol_L_h DECIMAL(14,8),
    temp_c DECIMAL(7,2),
    pressure_bar DECIMAL(8,3),
    catalyst_conc_mM DECIMAL(10,6),
    substrate_conc_mM DECIMAL(10,6),
    product_conc_mM DECIMAL(10,6),
    notes TEXT,
    CONSTRAINT fk_kdp_kinetics FOREIGN KEY (kinetics_id) REFERENCES kinetics_study(kinetics_id) ON DELETE CASCADE,
    CONSTRAINT fk_kdp_assay FOREIGN KEY (assay_id)  REFERENCES assay(assay_id)
);

-- ===========================
-- TABLE 22: inhibition_study
-- ===========================
CREATE TABLE inhibition_study (
    inhibition_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    kinetics_id INT NOT NULL,
    inhibitor_name VARCHAR(200) NOT NULL,
    inhibitor_conc_mM DECIMAL(10,4),
    ki_mM DECIMAL(14,6),
    inhibition_type VARCHAR(30),
    inhibition_constant DECIMAL(14,8),
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_inh_kinetics FOREIGN KEY (kinetics_id) REFERENCES kinetics_study(kinetics_id) ON DELETE CASCADE
);


-- ================================================================
-- SECTION F: FLOW CHEMISTRY TABLES
-- ================================================================

-- ==============================
-- TABLE 23: flow_reactor_config
-- ==============================
CREATE TABLE flow_reactor_config (
    config_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    config_name VARCHAR(200) NOT NULL,
    reactor_brand VARCHAR(200),
    reactor_model VARCHAR(200),
    channel_volume_mL DECIMAL(10,4),
    max_pressure_bar DECIMAL(8,2),
    max_temp_c DECIMAL(7,2),
    material VARCHAR(80),
    mixing_type VARCHAR(80),
    residence_time_s DECIMAL(10,4),
    back_pressure_regulator VARCHAR(200),
    pump_type VARCHAR(80),
    inline_analytics TEXT,
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- =====================
-- TABLE 24: flow_assay
-- =====================
CREATE TABLE flow_assay (
    flow_assay_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    assay_id INT NOT NULL,
    config_id INT NOT NULL,
    flow_rate_total_mLmin DECIMAL(10,4),
    catalyst_stream_conc_mM DECIMAL(10,4),
    substrate_stream_conc_mM DECIMAL(10,4),
    residence_time_min DECIMAL(10,4),
    back_pressure_bar DECIMAL(8,3),
    steady_state_time_h DECIMAL(10,3),
    productivity_g_Lh DECIMAL(12,4),
    catalyst_stability_h DECIMAL(10,2),
    inline_analysis_used TINYINT(1) DEFAULT 0,
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY uq_fa_assay (assay_id),
    CONSTRAINT fk_fa_assay FOREIGN KEY (assay_id) REFERENCES assay(assay_id) ON DELETE CASCADE,
    CONSTRAINT fk_fa_config FOREIGN KEY (config_id) REFERENCES flow_reactor_config(config_id)
);


-- ================================================================
-- SECTION G: DFT / COMPUTATIONAL TABLES
-- ================================================================

-- ==========================
-- TABLE 25: dft_calculation
-- ==========================
CREATE TABLE dft_calculation (
    dft_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precatalyst_id INT NOT NULL,
    ref_id INT,
    software VARCHAR(100) NOT NULL,
    functional VARCHAR(80) NOT NULL,
    basis_set VARCHAR(100) NOT NULL,
    dispersion_correction VARCHAR(30) DEFAULT 'none',
    solvent_model VARCHAR(30) DEFAULT 'none',
    calculation_type  VARCHAR(80) NOT NULL,
    electronic_energy_hartree DECIMAL(20,10),
    zero_point_energy_hartree DECIMAL(16,10),
    thermal_correction_hartree DECIMAL(16,10),
    gibbs_free_energy_hartree DECIMAL(20,10),
    convergence_criteria  TEXT,
    output_file_path TEXT,
    calc_date DATE,
    calculated_by INT,
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    KEY idx_dft_precatalyst (precatalyst_id),
    CONSTRAINT fk_dft_precatalyst FOREIGN KEY (precatalyst_id) REFERENCES precatalyst(precatalyst_id),
    CONSTRAINT fk_dft_ref FOREIGN KEY (ref_id) REFERENCES literature_ref(ref_id),
    CONSTRAINT fk_dft_calc_by FOREIGN KEY (calculated_by) REFERENCES researcher(researcher_id)
);

-- ===========================
-- TABLE 26: transition_state
-- ===========================
CREATE TABLE transition_state (
    ts_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dft_id INT NOT NULL,
    reaction_step VARCHAR(100) NOT NULL,
    activation_barrier_kJ_mol DECIMAL(10,4),
    reaction_energy_kJ_mol DECIMAL(10,4),
    imaginary_frequency_cm_inv DECIMAL(10,3),
    irc_confirmed VARCHAR(10) DEFAULT 'pending',
    ts_structure_file TEXT,
    notes  TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_ts_irc CHECK (irc_confirmed IN ('yes','no','pending')),
    CONSTRAINT fk_ts_dft FOREIGN KEY (dft_id) REFERENCES dft_calculation(dft_id) ON DELETE CASCADE
);

-- ================================
-- TABLE 27: electronic_descriptor
-- ================================
CREATE TABLE electronic_descriptor (
    descriptor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dft_id INT NOT NULL,
    ligand_id INT,
    homo_energy_eV DECIMAL(10,6),
    lumo_energy_eV DECIMAL(10,6),
    homo_lumo_gap_eV DECIMAL(10,6),
    nbo_charge_metal DECIMAL(10,6),
    nbo_charge_donor_atom DECIMAL(10,6),
    wiberg_bond_order DECIMAL(8,6),
    npa_charge DECIMAL(10,6),
    delta_h_co_binding_kJ_mol DECIMAL(10,4),
    delta_g_co_binding_kJ_mol DECIMAL(10,4),
    nci_index DECIMAL(10,6),
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_ed_dft FOREIGN KEY (dft_id) REFERENCES dft_calculation(dft_id) ON DELETE CASCADE,
    CONSTRAINT fk_ed_ligand FOREIGN KEY (ligand_id) REFERENCES ligand(ligand_id)
);

-- ==========================
-- TABLE 28: qsar_qspr_model
-- ==========================
CREATE TABLE qsar_qspr_model (
    model_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    model_name VARCHAR(300) NOT NULL,
    target_property VARCHAR(100) NOT NULL,
    descriptor_set TEXT,
    algorithm  VARCHAR(80) NOT NULL,
    r2_train DECIMAL(6,4),
    r2_test DECIMAL(6,4),
    rmse_train DECIMAL(14,6),
    rmse_test DECIMAL(14,6),
    n_training_points INT,
    n_test_points INT,
    cross_validation_scheme VARCHAR(80),
    model_file_path TEXT,
    trained_date DATE,
    trained_by INT,
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_qsar_trained_by FOREIGN KEY (trained_by) REFERENCES researcher(researcher_id)
);

-- =========================
-- TABLE 29: qsar_datapoint
-- =========================
CREATE TABLE qsar_datapoint (
    qdp_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    model_id INT  NOT NULL,
    precatalyst_id INT NOT NULL,
    assay_id INT,
    experimental_value DECIMAL(14,6) NOT NULL,
    predicted_value DECIMAL(14,6),
    residual DECIMAL(14,6) AS (experimental_value - predicted_value) STORED,
    dataset_split VARCHAR(20) DEFAULT 'train',
    notes TEXT,
    CONSTRAINT chk_qdp_split CHECK (dataset_split IN ('train','test','validation')),
    CONSTRAINT fk_qdp_model FOREIGN KEY (model_id) REFERENCES qsar_qspr_model(model_id) ON DELETE CASCADE,
    CONSTRAINT fk_qdp_precatalyst FOREIGN KEY (precatalyst_id) REFERENCES precatalyst(precatalyst_id),
    CONSTRAINT fk_qdp_assay FOREIGN KEY (assay_id) REFERENCES assay(assay_id)
);


-- ================================================================
-- SECTION H: SCALE-UP AND REPRODUCIBILITY TABLES
-- ================================================================

-- =========================
-- TABLE 30: scale_up_study
-- =========================
CREATE TABLE scale_up_study (
    scaleup_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precatalyst_id INT NOT NULL,
    experiment_id INT NOT NULL,
    scale_level ENUM('lab','pilot','demo','industrial') NOT NULL,
    reactor_volume_L DECIMAL(12,4),
    reactor_type VARCHAR(100),
    substrate_amount_mol DECIMAL(14,4),
    catalyst_loading_mol_pct DECIMAL(7,4),
    temp_c DECIMAL(7,2),
    pressure_bar DECIMAL(8,3),
    reaction_time_h DECIMAL(10,4),
    yield_pct  DECIMAL(6,3),
    lb_ratio DECIMAL(8,3),
    tof_h_inv DECIMAL(14,4),
    space_time_yield_g_Lh DECIMAL(12,4),
    catalyst_cost_USD_kg DECIMAL(12,4),
    e_factor DECIMAL(10,4),
    pmi DECIMAL(10,4),
    scale_up_challenges TEXT,
    ref_id  INT,
    study_date DATE,
    notes TEXT,
    created_at  DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_sus_precatalyst FOREIGN KEY (precatalyst_id) REFERENCES precatalyst(precatalyst_id),
    CONSTRAINT fk_sus_experiment FOREIGN KEY (experiment_id) REFERENCES experiment(experiment_id),
    CONSTRAINT fk_sus_ref  FOREIGN KEY (ref_id) REFERENCES literature_ref(ref_id)
);

-- ================================
-- TABLE 31: reproducibility_study
-- ================================
CREATE TABLE reproducibility_study (
    repro_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    assay_id INT NOT NULL,
    replicate_number INT NOT NULL,
    conversion_pct DECIMAL(6,3),
    yield_pct DECIMAL(6,3),
    lb_ratio DECIMAL(8,3),
    tof_h_inv DECIMAL(14,4),
    ton DECIMAL(14,2),
    same_lab TINYINT(1) DEFAULT 1,
    same_operator TINYINT(1) DEFAULT 1,
    std_dev_conversion DECIMAL(8,4),
    std_dev_yield DECIMAL(8,4),
    rsd_pct DECIMAL(8,4),
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_repro_replicate CHECK (replicate_number > 0),
    UNIQUE KEY uq_repro_assay_rep (assay_id, replicate_number),
    CONSTRAINT fk_repro_assay FOREIGN KEY (assay_id) REFERENCES assay(assay_id) ON DELETE CASCADE
);


-- ================================================================
-- SECTION I: ANALYTICAL CHARACTERIZATION TABLES
-- ================================================================

-- ====================================
-- TABLE 32: catalyst_characterization
-- ====================================
CREATE TABLE catalyst_characterization (
    char_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precatalyst_id INT NOT NULL,
    technique VARCHAR(50) NOT NULL,
    instrument_model VARCHAR(200),
    measurement_conditions TEXT,
    key_findings TEXT,
    data_file_path TEXT,
    measurement_date DATE,
    measured_by INT,
    ref_id INT,
    notes  TEXT,
    created_at  DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_cc_precatalyst FOREIGN KEY (precatalyst_id) REFERENCES precatalyst(precatalyst_id),
    CONSTRAINT fk_cc_measured_by FOREIGN KEY (measured_by) REFERENCES researcher(researcher_id),
    CONSTRAINT fk_cc_ref FOREIGN KEY (ref_id) REFERENCES literature_ref(ref_id)
);

-- ===================
-- TABLE 33: nmr_data
-- ===================
CREATE TABLE nmr_data (
    nmr_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    char_id INT NOT NULL,
    nucleus VARCHAR(10) NOT NULL,
    field_strength_MHz DECIMAL(8,2),
    solvent VARCHAR(80),
    temp_c DECIMAL(7,2),
    key_shifts_ppm JSON,
    coupling_constants_Hz TEXT,
    spectrum_file_path TEXT,
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_nmr_char FOREIGN KEY (char_id) REFERENCES catalyst_characterization(char_id) ON DELETE CASCADE
);

-- ==================
-- TABLE 34: ir_data
-- ==================
CREATE TABLE ir_data (
    ir_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    char_id INT NOT NULL,
    technique VARCHAR(80),
    co_stretch_cm_inv DECIMAL(8,2),
    rh_co_stretch_cm_inv DECIMAL(8,2),
    key_bands_json JSON,
    spectrum_file_path TEXT,
    notes TEXT,
    created_at DATETIME(0)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_ir_char FOREIGN KEY (char_id) REFERENCES catalyst_characterization(char_id) ON DELETE CASCADE
);

-- =======================
-- TABLE 35: hp_ir_insitu
-- =======================
CREATE TABLE hp_ir_insitu (
    hpir_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    assay_id INT NOT NULL,
    pressure_bar DECIMAL(8,3),
    temp_c DECIMAL(7,2),
    co_h2_ratio DECIMAL(5,2),
    co_stretch_cm_inv DECIMAL(8,2),
    active_species_assigned TEXT,
    spectrum_file_path TEXT,
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_hpir_assay FOREIGN KEY (assay_id) REFERENCES assay(assay_id) ON DELETE CASCADE
);


-- ================================================================
-- SECTION J: DATA MANAGEMENT AND AUDIT TABLES
-- ================================================================

-- ====================
-- TABLE 36: data_file
-- ====================
CREATE TABLE data_file (
    file_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    assay_id INT,
    file_name VARCHAR(500) NOT NULL,
    file_type VARCHAR(80),
    file_path TEXT NOT NULL,
    file_size_MB DECIMAL(10,4),
    checksum_sha256 CHAR(64),
    uploaded_date DATE NOT NULL DEFAULT (CURDATE()),
    uploaded_by INT,
    notes TEXT,
    created_at DATETIME(0)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_df_assay FOREIGN KEY (assay_id) REFERENCES assay(assay_id),
    CONSTRAINT fk_df_uploaded_by FOREIGN KEY (uploaded_by) REFERENCES researcher(researcher_id)
);

-- ===============================
-- TABLE 37: benchmark_comparison
-- ===============================
CREATE TABLE benchmark_comparison (
    bench_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    benchmark_name VARCHAR(300) NOT NULL,
    ref_precatalyst_id INT NOT NULL,
    test_precatalyst_id INT NOT NULL,
    assay_ref_id INT,
    assay_test_id INT,
    tof_improvement_pct DECIMAL(10,4),
    selectivity_improvement_pct DECIMAL(10,4),
    ton_improvement_pct DECIMAL(10,4),
    lb_ratio_change DECIMAL(8,3),
    conclusion TEXT,
    compared_by INT,
    comparison_date DATE DEFAULT (CURDATE()),
    notes TEXT,
    created_at DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_bc_ref_pre FOREIGN KEY (ref_precatalyst_id) REFERENCES precatalyst(precatalyst_id),
    CONSTRAINT fk_bc_test_pre FOREIGN KEY (test_precatalyst_id) REFERENCES precatalyst(precatalyst_id),
    CONSTRAINT fk_bc_assay_ref FOREIGN KEY (assay_ref_id) REFERENCES assay(assay_id),
    CONSTRAINT fk_bc_assay_test FOREIGN KEY (assay_test_id) REFERENCES assay(assay_id),
    CONSTRAINT fk_bc_compared FOREIGN KEY (compared_by)  REFERENCES researcher(researcher_id)
);

-- ====================
-- TABLE 38: audit_log
-- ====================
CREATE TABLE audit_log (
    log_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    table_name VARCHAR(100) NOT NULL,
    record_id INT,
    action ENUM('INSERT','UPDATE','DELETE') NOT NULL,
    performed_by INT,
    action_timestamp DATETIME(0)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    old_values_json JSON,
    new_values_json JSON,
    ip_address VARCHAR(45),
    session_id VARCHAR(200),
    KEY idx_audit_table (table_name, record_id),
    KEY idx_audit_ts (action_timestamp),
    CONSTRAINT fk_audit_performed_by FOREIGN KEY (performed_by) REFERENCES researcher(researcher_id)
);


-- ================================================================
-- SECTION K: SIMPLE VIEWS
-- ================================================================

================ VIEW 1: v_catalyst_summary ================
CREATE OR REPLACE VIEW v_catalyst_summary AS
SELECT
    p.precatalyst_id,
    p.catalyst_name,
    p.abbreviation,
    p.reaction_class,
    m.symbol AS metal,
    p.oxidation_state,
    GROUP_CONCAT(DISTINCT l.abbreviation ORDER BY l.abbreviation SEPARATOR ', ') AS ligands,
    p.catalyst_type,
    p.internal_code,
    CONCAT(r.last_name, ', ', r.first_name) AS registered_by
FROM precatalyst p
JOIN metal_center m ON p.metal_id = m.metal_id
LEFT JOIN precatalyst_ligand pl ON p.precatalyst_id = pl.precatalyst_id
LEFT JOIN ligand l ON pl.ligand_id = l.ligand_id
LEFT JOIN researcher r ON p.registered_by = r.researcher_id
GROUP BY
    p.precatalyst_id, p.catalyst_name, p.abbreviation, p.reaction_class,
    m.symbol, p.oxidation_state, p.catalyst_type, p.internal_code,
    r.last_name, r.first_name;

================ VIEW 2: v_assay_performance ================
CREATE OR REPLACE VIEW v_assay_performance AS
SELECT
    a.assay_id,
    a.assay_code,
    a.assay_date,
    e.experiment_code,
    p.catalyst_name,
    p.abbreviation AS catalyst_abbr,
    m.symbol AS metal,
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
JOIN experiment e ON a.experiment_id = e.experiment_id
JOIN precatalyst p ON a.precatalyst_id = p.precatalyst_id
JOIN metal_center m ON p.metal_id = m.metal_id
JOIN substrate s ON a.substrate_id = s.substrate_id
LEFT JOIN performance_metrics pm ON a.assay_id = pm.assay_id;

================ VIEW 3: v_tandem_leaderboard ================
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
JOIN assay a ON tm.assay_id  = a.assay_id
JOIN precatalyst p ON a.precatalyst_id  = p.precatalyst_id
JOIN metal_center m ON p.metal_id = m.metal_id
JOIN substrate s ON a.substrate_id = s.substrate_id
LEFT JOIN catalyst_stability cs ON cs.precatalyst_id = p.precatalyst_id
ORDER BY tm.overall_aldehyde_yield_pct DESC;

================ VIEW 4: v_dft_experimental_correlation ================
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
JOIN dft_calculation dc ON ed.dft_id  = dc.dft_id
JOIN precatalyst p ON dc.precatalyst_id = p.precatalyst_id
LEFT JOIN transition_state ts ON ts.dft_id = dc.dft_id
LEFT JOIN assay a ON a.precatalyst_id = p.precatalyst_id
LEFT JOIN performance_metrics pm ON pm.assay_id = a.assay_id;


DELIMITER $$

-- precatalyst --
CREATE TRIGGER audit_precatalyst_insert
AFTER INSERT ON precatalyst FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, new_values_json)
    VALUES ('precatalyst', NEW.precatalyst_id, 'INSERT',
            JSON_OBJECT(
                'precatalyst_id', NEW.precatalyst_id,
                'catalyst_name', NEW.catalyst_name,
                'reaction_class', NEW.reaction_class,
                'metal_id', NEW.metal_id
            ));
END$$

CREATE TRIGGER audit_precatalyst_update
AFTER UPDATE ON precatalyst FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, old_values_json, new_values_json)
    VALUES ('precatalyst', NEW.precatalyst_id, 'UPDATE',
            JSON_OBJECT('catalyst_name', OLD.catalyst_name, 'reaction_class', OLD.reaction_class),
            JSON_OBJECT('catalyst_name', NEW.catalyst_name, 'reaction_class', NEW.reaction_class));
END$$

CREATE TRIGGER audit_precatalyst_delete
AFTER DELETE ON precatalyst FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, old_values_json)
    VALUES ('precatalyst', OLD.precatalyst_id, 'DELETE',
            JSON_OBJECT('catalyst_name', OLD.catalyst_name, 'reaction_class', OLD.reaction_class));
END$$

-- assay --
CREATE TRIGGER audit_assay_insert
AFTER INSERT ON assay FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, new_values_json)
    VALUES ('assay', NEW.assay_id, 'INSERT',
            JSON_OBJECT('assay_code', NEW.assay_code, 'status', NEW.status,
                        'precatalyst_id', NEW.precatalyst_id));
END$$

CREATE TRIGGER audit_assay_update
AFTER UPDATE ON assay FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, old_values_json, new_values_json)
    VALUES ('assay', NEW.assay_id, 'UPDATE',
            JSON_OBJECT('status', OLD.status),
            JSON_OBJECT('status', NEW.status));
END$$

CREATE TRIGGER audit_assay_delete
AFTER DELETE ON assay FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, old_values_json)
    VALUES ('assay', OLD.assay_id, 'DELETE',
            JSON_OBJECT('assay_code', OLD.assay_code));
END$$

-- performance_metrics --
CREATE TRIGGER audit_performance_metrics_insert
AFTER INSERT ON performance_metrics FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, new_values_json)
    VALUES ('performance_metrics', NEW.metric_id, 'INSERT',
            JSON_OBJECT('assay_id', NEW.assay_id, 'tof_h_inv', NEW.tof_h_inv,
                        'lb_ratio', NEW.lb_ratio));
END$$

CREATE TRIGGER audit_performance_metrics_update
AFTER UPDATE ON performance_metrics FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, old_values_json, new_values_json)
    VALUES ('performance_metrics', NEW.metric_id, 'UPDATE',
            JSON_OBJECT('tof_h_inv', OLD.tof_h_inv, 'lb_ratio', OLD.lb_ratio),
            JSON_OBJECT('tof_h_inv', NEW.tof_h_inv, 'lb_ratio', NEW.lb_ratio));
END$$

CREATE TRIGGER audit_performance_metrics_delete
AFTER DELETE ON performance_metrics FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, old_values_json)
    VALUES ('performance_metrics', OLD.metric_id, 'DELETE',
            JSON_OBJECT('assay_id', OLD.assay_id));
END$$

-- kinetics_study --
CREATE TRIGGER audit_kinetics_study_insert
AFTER INSERT ON kinetics_study FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, new_values_json)
    VALUES ('kinetics_study', NEW.kinetics_id, 'INSERT',
            JSON_OBJECT('precatalyst_id', NEW.precatalyst_id, 'study_type', NEW.study_type));
END$$

CREATE TRIGGER audit_kinetics_study_update
AFTER UPDATE ON kinetics_study FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, old_values_json, new_values_json)
    VALUES ('kinetics_study', NEW.kinetics_id, 'UPDATE',
            JSON_OBJECT('study_type', OLD.study_type),
            JSON_OBJECT('study_type', NEW.study_type));
END$$

CREATE TRIGGER audit_kinetics_study_delete
AFTER DELETE ON kinetics_study FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, old_values_json)
    VALUES ('kinetics_study', OLD.kinetics_id, 'DELETE',
            JSON_OBJECT('precatalyst_id', OLD.precatalyst_id));
END$$

-- scale_up_study --
CREATE TRIGGER audit_scale_up_study_insert
AFTER INSERT ON scale_up_study FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, new_values_json)
    VALUES ('scale_up_study', NEW.scaleup_id, 'INSERT',
            JSON_OBJECT('precatalyst_id', NEW.precatalyst_id, 'scale_level', NEW.scale_level));
END$$

CREATE TRIGGER audit_scale_up_study_update
AFTER UPDATE ON scale_up_study FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, old_values_json, new_values_json)
    VALUES ('scale_up_study', NEW.scaleup_id, 'UPDATE',
            JSON_OBJECT('scale_level', OLD.scale_level),
            JSON_OBJECT('scale_level', NEW.scale_level));
END$$

CREATE TRIGGER audit_scale_up_study_delete
AFTER DELETE ON scale_up_study FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, old_values_json)
    VALUES ('scale_up_study', OLD.scaleup_id, 'DELETE',
            JSON_OBJECT('precatalyst_id', OLD.precatalyst_id));
END$$

-- dft_calculation --
CREATE TRIGGER audit_dft_calculation_insert
AFTER INSERT ON dft_calculation FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, new_values_json)
    VALUES ('dft_calculation', NEW.dft_id, 'INSERT',
            JSON_OBJECT('precatalyst_id', NEW.precatalyst_id, 'software', NEW.software));
END$$

CREATE TRIGGER audit_dft_calculation_update
AFTER UPDATE ON dft_calculation FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, old_values_json, new_values_json)
    VALUES ('dft_calculation', NEW.dft_id, 'UPDATE',
            JSON_OBJECT('functional', OLD.functional, 'basis_set', OLD.basis_set),
            JSON_OBJECT('functional', NEW.functional, 'basis_set', NEW.basis_set));
END$$

CREATE TRIGGER audit_dft_calculation_delete
AFTER DELETE ON dft_calculation FOR EACH ROW
BEGIN
    INSERT INTO audit_log (table_name, record_id, action, old_values_json)
    VALUES ('dft_calculation', OLD.dft_id, 'DELETE',
            JSON_OBJECT('precatalyst_id', OLD.precatalyst_id));
END$$

DELIMITER ;

SET FOREIGN_KEY_CHECKS = 1;
