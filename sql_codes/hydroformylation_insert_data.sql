USE cat_rnd;

-- ======================
-- INSERT 1: metal_center
-- ======================
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Rh','Rhodium',45,'+1,+3');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Co','Cobalt',27,'+2,+3');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Ru','Ruthenium',44,'+2,+3,+4');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Ir','Iridium',77,'+1,+3');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Pd','Palladium',46,'0,+2');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Ni','Nickel',28,'0,+2');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Fe','Iron',26,'+2,+3');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Pt','Platinum',78,'0,+2,+4');

-- ======================
-- INSERT 2: ligand
-- ======================
INSERT INTO ligand(ligand_name,abbreviation,ligand_class,donor_atoms,cone_angle_deg,tolman_electronic_param)
VALUES ('Triphenylphosphine','PPh3','phosphine','P',145,2068);
INSERT INTO ligand(ligand_name,abbreviation,ligand_class,donor_atoms,cone_angle_deg,tolman_electronic_param)
VALUES ('Xantphos','Xantphos','diphosphine','P,P',108,2066);
INSERT INTO ligand(ligand_name,abbreviation,ligand_class,donor_atoms,cone_angle_deg,tolman_electronic_param)
VALUES ('dppe','dppe','diphosphine','P,P',86,2069);
INSERT INTO ligand(ligand_name,abbreviation,ligand_class,donor_atoms,cone_angle_deg,tolman_electronic_param)
VALUES ('dppb','dppb','diphosphine','P,P',98,2067);
INSERT INTO ligand(ligand_name,abbreviation,ligand_class,donor_atoms,cone_angle_deg,tolman_electronic_param)
VALUES ('BINAP','BINAP','diphosphine','P,P',92,2065);
INSERT INTO ligand(ligand_name,abbreviation,ligand_class,donor_atoms,cone_angle_deg,tolman_electronic_param)
VALUES ('P(OPh)3','P(OPh)3','phosphite','P,O',128,2085);
INSERT INTO ligand(ligand_name,abbreviation,ligand_class,donor_atoms,cone_angle_deg,tolman_electronic_param)
VALUES ('PCy3','PCy3','phosphine','P',170,2056);
INSERT INTO ligand(ligand_name,abbreviation,ligand_class,donor_atoms,cone_angle_deg,tolman_electronic_param)
VALUES ('NHC(IMes)','IMes','NHC','C',NULL,NULL);

-- ======================
-- INSERT 3: substrate
-- ======================
INSERT INTO substrate(substrate_name,smiles,substrate_class,carbon_chain_length,molecular_weight_gmol,purity_pct)
VALUES ('1-Propene','C=CC','terminal_olefin',3,42.08,99.0);
INSERT INTO substrate(substrate_name,smiles,substrate_class,carbon_chain_length,molecular_weight_gmol,purity_pct)
VALUES ('1-Butene','C=CCC','terminal_olefin',4,56.11,99.0);
INSERT INTO substrate(substrate_name,smiles,substrate_class,carbon_chain_length,molecular_weight_gmol,purity_pct)
VALUES ('1-Hexene','C=CCCCC','terminal_olefin',6,84.16,99.0);
INSERT INTO substrate(substrate_name,smiles,substrate_class,carbon_chain_length,molecular_weight_gmol,purity_pct)
VALUES ('1-Octene','C=CCCCCCC','terminal_olefin',8,112.21,99.0);
INSERT INTO substrate(substrate_name,smiles,substrate_class,carbon_chain_length,molecular_weight_gmol,purity_pct)
VALUES ('2-Butene','CC=CC','internal_olefin',4,56.11,99.0);
INSERT INTO substrate(substrate_name,smiles,substrate_class,carbon_chain_length,molecular_weight_gmol,purity_pct)
VALUES ('Cyclohexene','C1=CCCCC1','cyclic_olefin',6,82.15,99.0);

-- ======================
-- INSERT 4: solvent
-- ====================== 
INSERT INTO solvent(solvent_name,abbreviation,boiling_point_c,dielectric_constant,polarity_class)
VALUES ('Toluene','PhMe',110.6,2.38,'nonpolar');
INSERT INTO solvent(solvent_name,abbreviation,boiling_point_c,dielectric_constant,polarity_class)
VALUES ('Hexane','Hex',69.0,1.89,'nonpolar');
INSERT INTO solvent(solvent_name,abbreviation,boiling_point_c,dielectric_constant,polarity_class)
VALUES ('THF','THF',66.0,7.58,'polar_aprotic');
INSERT INTO solvent(solvent_name,abbreviation,boiling_point_c,dielectric_constant,polarity_class)
VALUES ('Acetonitrile','MeCN',81.6,37.5,'polar_aprotic');
INSERT INTO solvent(solvent_name,abbreviation,boiling_point_c,dielectric_constant,polarity_class)
VALUES ('Methanol','MeOH',64.7,32.7,'polar_protic');
INSERT INTO solvent(solvent_name,abbreviation,boiling_point_c,dielectric_constant,polarity_class)
VALUES ('DCM','DCM',39.6,9.1,'moderately_polar');

-- ======================
-- INSERT 5: product
-- ======================
INSERT INTO product(product_name,product_type,molecular_weight_gmol)
VALUES ('Butanal','linear_aldehyde',72.11);
INSERT INTO product(product_name,product_type,molecular_weight_gmol)
VALUES ('Isobutanal','branched_aldehyde',72.11);
INSERT INTO product(product_name,product_type,molecular_weight_gmol)
VALUES ('Heptanal','linear_aldehyde',114.19);
INSERT INTO product(product_name,product_type,molecular_weight_gmol)
VALUES ('2-Methylhexanal','branched_aldehyde',114.19);
INSERT INTO product(product_name,product_type,molecular_weight_gmol)
VALUES ('Octanal','linear_aldehyde',128.21);
INSERT INTO product(product_name,product_type,molecular_weight_gmol)
VALUES ('Nonanal','linear_aldehyde',142.24);
INSERT INTO product(product_name,product_type,molecular_weight_gmol)
VALUES ('Hexanol','alcohol',102.17);

-- ======================
-- INSERT 6: researcher
-- ======================
INSERT INTO researcher(first_name,last_name,email,affiliation,department,role)
VALUES ('Robert','Franke','robert.franke@example.com','BASF','Homogeneous Catalysis','PI');
INSERT INTO researcher(first_name,last_name,email,affiliation,department,role)
VALUES ('Paul','van Leeuwen','paul.vanleeuwen@example.com','University of Amsterdam','Catalysis','PI');
INSERT INTO researcher(first_name,last_name,email,affiliation,department,role)
VALUES ('John','Cornils','john.cornils@example.com','Shell','Catalysis','engineer');
INSERT INTO researcher(first_name,last_name,email,affiliation,department,role)
VALUES ('Jane','Smith','jane.smith@example.com','LSU','Chemistry','PhD_student');
INSERT INTO researcher(first_name,last_name,email,affiliation,department,role)
VALUES ('Michael','Brown','michael.brown@example.com','Dow','R&D','engineer');

-- ============================
-- INSERT 7: reaction_protocol
-- ============================
INSERT INTO reaction_protocol(protocol_name,reaction_type,reactor_mode,reactor_type,atmosphere,co_h2_ratio,analysis_method)
VALUES ('Standard Rh Hydroformylation','hydroformylation','batch','autoclave','CO/H2',1.0,'GC-MS');
INSERT INTO reaction_protocol(protocol_name,reaction_type,reactor_mode,reactor_type,atmosphere,co_h2_ratio,analysis_method)
VALUES ('Olefin Isomerization Pd','isomerization','batch','Schlenk','N2',NULL,'GC-MS');
INSERT INTO reaction_protocol(protocol_name,reaction_type,reactor_mode,reactor_type,atmosphere,co_h2_ratio,analysis_method)
VALUES ('Tandem Iso-HF','tandem_iso_hydroformylation','continuous_flow','PFR','CO/H2',1.0,'GC-MS');

-- ======================
-- INSERT 8: precatalyst
-- ======================
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_1','Cat_1','immobilized','hydroformylation',2,'+1','octahedral','CAT-0001');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_2','Cat_2','heterogeneous','hydroformylation',4,'+1','octahedral','CAT-0002');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_3','Cat_3','homogeneous','tandem_iso_hydroformylation',2,'+1','octahedral','CAT-0003');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_4','Cat_4','homogeneous','hydroformylation',7,'+1','octahedral','CAT-0004');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_5','Cat_5','heterogeneous','hydroformylation',2,'+1','octahedral','CAT-0005');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_6','Cat_6','heterogeneous','tandem_iso_hydroformylation',1,'+1','octahedral','CAT-0006');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_7','Cat_7','nanoparticle','hydroformylation',7,'+1','octahedral','CAT-0007');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_8','Cat_8','heterogeneous','hydroformylation',5,'+1','octahedral','CAT-0008');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_9','Cat_9','immobilized','isomerization',7,'+1','octahedral','CAT-0009');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_10','Cat_10','immobilized','hydroformylation',3,'+1','octahedral','CAT-0010');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_11','Cat_11','nanoparticle','hydroformylation',2,'+1','octahedral','CAT-0011');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_12','Cat_12','immobilized','isomerization',2,'+1','octahedral','CAT-0012');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_13','Cat_13','nanoparticle','hydroformylation',5,'+1','octahedral','CAT-0013');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_14','Cat_14','homogeneous','isomerization',2,'+1','octahedral','CAT-0014');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_15','Cat_15','immobilized','tandem_iso_hydroformylation',5,'+1','octahedral','CAT-0015');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_16','Cat_16','homogeneous','tandem_iso_hydroformylation',4,'+1','octahedral','CAT-0016');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_17','Cat_17','heterogeneous','tandem_iso_hydroformylation',1,'+1','octahedral','CAT-0017');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_18','Cat_18','heterogeneous','hydroformylation',5,'+1','octahedral','CAT-0018');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_19','Cat_19','immobilized','isomerization',2,'+1','octahedral','CAT-0019');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_20','Cat_20','immobilized','tandem_iso_hydroformylation',8,'+1','octahedral','CAT-0020');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_21','Cat_21','immobilized','isomerization',3,'+1','octahedral','CAT-0021');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_22','Cat_22','immobilized','tandem_iso_hydroformylation',4,'+1','octahedral','CAT-0022');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_23','Cat_23','heterogeneous','tandem_iso_hydroformylation',2,'+1','octahedral','CAT-0023');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_24','Cat_24','nanoparticle','hydroformylation',4,'+1','octahedral','CAT-0024');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_25','Cat_25','heterogeneous','isomerization',7,'+1','octahedral','CAT-0025');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_26','Cat_26','heterogeneous','hydroformylation',6,'+1','octahedral','CAT-0026');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_27','Cat_27','nanoparticle','isomerization',1,'+1','octahedral','CAT-0027');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_28','Cat_28','heterogeneous','hydroformylation',5,'+1','octahedral','CAT-0028');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_29','Cat_29','nanoparticle','hydroformylation',6,'+1','octahedral','CAT-0029');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_30','Cat_30','nanoparticle','tandem_iso_hydroformylation',7,'+1','octahedral','CAT-0030');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_31','Cat_31','heterogeneous','isomerization',3,'+1','octahedral','CAT-0031');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_32','Cat_32','immobilized','tandem_iso_hydroformylation',4,'+1','octahedral','CAT-0032');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_33','Cat_33','nanoparticle','tandem_iso_hydroformylation',7,'+1','octahedral','CAT-0033');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_34','Cat_34','heterogeneous','hydroformylation',6,'+1','octahedral','CAT-0034');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_35','Cat_35','homogeneous','hydroformylation',8,'+1','octahedral','CAT-0035');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_36','Cat_36','heterogeneous','hydroformylation',2,'+1','octahedral','CAT-0036');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_37','Cat_37','homogeneous','tandem_iso_hydroformylation',7,'+1','octahedral','CAT-0037');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_38','Cat_38','nanoparticle','isomerization',7,'+1','octahedral','CAT-0038');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_39','Cat_39','homogeneous','tandem_iso_hydroformylation',5,'+1','octahedral','CAT-0039');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_40','Cat_40','immobilized','tandem_iso_hydroformylation',2,'+1','octahedral','CAT-0040');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_41','Cat_41','immobilized','hydroformylation',6,'+1','octahedral','CAT-0041');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_42','Cat_42','nanoparticle','hydroformylation',7,'+1','octahedral','CAT-0042');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_43','Cat_43','immobilized','tandem_iso_hydroformylation',1,'+1','octahedral','CAT-0043');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_44','Cat_44','homogeneous','tandem_iso_hydroformylation',3,'+1','octahedral','CAT-0044');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_45','Cat_45','heterogeneous','tandem_iso_hydroformylation',5,'+1','octahedral','CAT-0045');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_46','Cat_46','heterogeneous','isomerization',3,'+1','octahedral','CAT-0046');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_47','Cat_47','immobilized','tandem_iso_hydroformylation',1,'+1','octahedral','CAT-0047');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_48','Cat_48','homogeneous','hydroformylation',8,'+1','octahedral','CAT-0048');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_49','Cat_49','heterogeneous','isomerization',6,'+1','octahedral','CAT-0049');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_50','Cat_50','homogeneous','hydroformylation',1,'+1','octahedral','CAT-0050');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_51','Cat_51','nanoparticle','tandem_iso_hydroformylation',2,'+1','octahedral','CAT-0051');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_52','Cat_52','heterogeneous','tandem_iso_hydroformylation',2,'+1','octahedral','CAT-0052');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_53','Cat_53','nanoparticle','tandem_iso_hydroformylation',3,'+1','octahedral','CAT-0053');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_54','Cat_54','nanoparticle','isomerization',3,'+1','octahedral','CAT-0054');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_55','Cat_55','heterogeneous','tandem_iso_hydroformylation',4,'+1','octahedral','CAT-0055');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_56','Cat_56','immobilized','isomerization',5,'+1','octahedral','CAT-0056');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_57','Cat_57','nanoparticle','tandem_iso_hydroformylation',8,'+1','octahedral','CAT-0057');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_58','Cat_58','heterogeneous','hydroformylation',2,'+1','octahedral','CAT-0058');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_59','Cat_59','homogeneous','isomerization',2,'+1','octahedral','CAT-0059');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_60','Cat_60','heterogeneous','tandem_iso_hydroformylation',4,'+1','octahedral','CAT-0060');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_61','Cat_61','homogeneous','hydroformylation',1,'+1','octahedral','CAT-0061');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_62','Cat_62','homogeneous','hydroformylation',4,'+1','octahedral','CAT-0062');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_63','Cat_63','heterogeneous','hydroformylation',6,'+1','octahedral','CAT-0063');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_64','Cat_64','nanoparticle','tandem_iso_hydroformylation',5,'+1','octahedral','CAT-0064');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_65','Cat_65','heterogeneous','tandem_iso_hydroformylation',4,'+1','octahedral','CAT-0065');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_66','Cat_66','nanoparticle','hydroformylation',8,'+1','octahedral','CAT-0066');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_67','Cat_67','homogeneous','hydroformylation',7,'+1','octahedral','CAT-0067');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_68','Cat_68','nanoparticle','tandem_iso_hydroformylation',2,'+1','octahedral','CAT-0068');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_69','Cat_69','nanoparticle','isomerization',6,'+1','octahedral','CAT-0069');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_70','Cat_70','homogeneous','tandem_iso_hydroformylation',8,'+1','octahedral','CAT-0070');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_71','Cat_71','nanoparticle','hydroformylation',2,'+1','octahedral','CAT-0071');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_72','Cat_72','heterogeneous','hydroformylation',6,'+1','octahedral','CAT-0072');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_73','Cat_73','nanoparticle','hydroformylation',4,'+1','octahedral','CAT-0073');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_74','Cat_74','heterogeneous','isomerization',3,'+1','octahedral','CAT-0074');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_75','Cat_75','heterogeneous','isomerization',5,'+1','octahedral','CAT-0075');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_76','Cat_76','homogeneous','isomerization',2,'+1','octahedral','CAT-0076');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_77','Cat_77','homogeneous','tandem_iso_hydroformylation',1,'+1','octahedral','CAT-0077');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_78','Cat_78','heterogeneous','hydroformylation',2,'+1','octahedral','CAT-0078');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_79','Cat_79','nanoparticle','isomerization',7,'+1','octahedral','CAT-0079');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_80','Cat_80','homogeneous','isomerization',4,'+1','octahedral','CAT-0080');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_81','Cat_81','homogeneous','isomerization',3,'+1','octahedral','CAT-0081');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_82','Cat_82','nanoparticle','isomerization',7,'+1','octahedral','CAT-0082');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_83','Cat_83','nanoparticle','isomerization',5,'+1','octahedral','CAT-0083');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_84','Cat_84','immobilized','hydroformylation',3,'+1','octahedral','CAT-0084');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_85','Cat_85','homogeneous','hydroformylation',4,'+1','octahedral','CAT-0085');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_86','Cat_86','homogeneous','hydroformylation',6,'+1','octahedral','CAT-0086');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_87','Cat_87','heterogeneous','tandem_iso_hydroformylation',8,'+1','octahedral','CAT-0087');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_88','Cat_88','homogeneous','tandem_iso_hydroformylation',1,'+1','octahedral','CAT-0088');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_89','Cat_89','homogeneous','hydroformylation',3,'+1','octahedral','CAT-0089');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_90','Cat_90','homogeneous','isomerization',4,'+1','octahedral','CAT-0090');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_91','Cat_91','homogeneous','tandem_iso_hydroformylation',4,'+1','octahedral','CAT-0091');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_92','Cat_92','immobilized','isomerization',2,'+1','octahedral','CAT-0092');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_93','Cat_93','immobilized','hydroformylation',5,'+1','octahedral','CAT-0093');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_94','Cat_94','nanoparticle','isomerization',4,'+1','octahedral','CAT-0094');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_95','Cat_95','immobilized','tandem_iso_hydroformylation',3,'+1','octahedral','CAT-0095');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_96','Cat_96','homogeneous','isomerization',8,'+1','octahedral','CAT-0096');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_97','Cat_97','homogeneous','isomerization',1,'+1','octahedral','CAT-0097');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_98','Cat_98','heterogeneous','tandem_iso_hydroformylation',2,'+1','octahedral','CAT-0098');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_99','Cat_99','immobilized','hydroformylation',5,'+1','octahedral','CAT-0099');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_100','Cat_100','immobilized','hydroformylation',2,'+1','octahedral','CAT-0100');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_101','Cat_101','nanoparticle','hydroformylation',5,'+1','octahedral','CAT-0101');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_102','Cat_102','homogeneous','tandem_iso_hydroformylation',5,'+1','octahedral','CAT-0102');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_103','Cat_103','homogeneous','tandem_iso_hydroformylation',5,'+1','octahedral','CAT-0103');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_104','Cat_104','homogeneous','isomerization',3,'+1','octahedral','CAT-0104');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_105','Cat_105','heterogeneous','tandem_iso_hydroformylation',2,'+1','octahedral','CAT-0105');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_106','Cat_106','heterogeneous','isomerization',5,'+1','octahedral','CAT-0106');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_107','Cat_107','immobilized','hydroformylation',6,'+1','octahedral','CAT-0107');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_108','Cat_108','homogeneous','isomerization',8,'+1','octahedral','CAT-0108');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_109','Cat_109','nanoparticle','tandem_iso_hydroformylation',2,'+1','octahedral','CAT-0109');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_110','Cat_110','homogeneous','hydroformylation',5,'+1','octahedral','CAT-0110');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_111','Cat_111','immobilized','hydroformylation',6,'+1','octahedral','CAT-0111');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_112','Cat_112','nanoparticle','tandem_iso_hydroformylation',3,'+1','octahedral','CAT-0112');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_113','Cat_113','homogeneous','tandem_iso_hydroformylation',7,'+1','octahedral','CAT-0113');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_114','Cat_114','heterogeneous','hydroformylation',2,'+1','octahedral','CAT-0114');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_115','Cat_115','heterogeneous','isomerization',1,'+1','octahedral','CAT-0115');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_116','Cat_116','homogeneous','hydroformylation',7,'+1','octahedral','CAT-0116');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_117','Cat_117','homogeneous','isomerization',5,'+1','octahedral','CAT-0117');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_118','Cat_118','heterogeneous','hydroformylation',6,'+1','octahedral','CAT-0118');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_119','Cat_119','nanoparticle','isomerization',2,'+1','octahedral','CAT-0119');
INSERT INTO precatalyst(catalyst_name,abbreviation,catalyst_type,reaction_class,metal_id,oxidation_state,coordination_geometry,internal_code)
VALUES ('Cat_120','Cat_120','heterogeneous','hydroformylation',3,'+1','octahedral','CAT-0120');

-- =============================
-- INSERT 9: precatalyst_ligand
-- =============================
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (1,3,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (2,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (3,1,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (4,3,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (5,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (6,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (7,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (8,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (9,3,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (10,2,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (11,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (12,1,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (13,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (14,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (15,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (16,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (17,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (18,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (19,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (20,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (21,1,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (22,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (23,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (24,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (25,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (26,2,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (27,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (28,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (29,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (30,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (31,1,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (32,2,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (33,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (34,3,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (35,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (36,1,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (37,2,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (38,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (39,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (40,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (41,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (42,2,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (43,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (44,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (45,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (46,1,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (47,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (48,1,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (49,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (50,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (51,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (52,2,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (53,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (54,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (55,2,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (56,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (57,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (58,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (59,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (60,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (61,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (62,3,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (63,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (64,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (65,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (66,3,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (67,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (68,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (69,1,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (70,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (71,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (72,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (73,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (74,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (75,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (76,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (77,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (78,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (79,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (80,3,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (81,2,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (82,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (83,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (84,2,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (85,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (86,5,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (87,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (88,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (89,3,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (90,1,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (91,1,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (92,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (93,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (94,2,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (95,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (96,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (97,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (98,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (99,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (100,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (101,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (102,3,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (103,1,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (104,2,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (105,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (106,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (107,3,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (108,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (109,1,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (110,4,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (111,2,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (112,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (113,3,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (114,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (115,6,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (116,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (117,7,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (118,8,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (119,3,1);
INSERT INTO precatalyst_ligand(precatalyst_id,ligand_id,stoichiometry) VALUES (120,8,1);

-- ======================
-- INSERT 10: experiment
-- ======================
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0001','Catalysis experiment 1','isomerization',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0002','Catalysis experiment 2','hydroformylation',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0003','Catalysis experiment 3','isomerization',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0004','Catalysis experiment 4','isomerization',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0005','Catalysis experiment 5','hydroformylation',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0006','Catalysis experiment 6','isomerization',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0007','Catalysis experiment 7','tandem_iso_hydroformylation',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0008','Catalysis experiment 8','hydroformylation',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0009','Catalysis experiment 9','isomerization',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0010','Catalysis experiment 10','tandem_iso_hydroformylation',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0011','Catalysis experiment 11','hydroformylation',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0012','Catalysis experiment 12','hydroformylation',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0013','Catalysis experiment 13','tandem_iso_hydroformylation',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0014','Catalysis experiment 14','tandem_iso_hydroformylation',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0015','Catalysis experiment 15','hydroformylation',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0016','Catalysis experiment 16','isomerization',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0017','Catalysis experiment 17','tandem_iso_hydroformylation',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0018','Catalysis experiment 18','isomerization',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0019','Catalysis experiment 19','hydroformylation',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0020','Catalysis experiment 20','isomerization',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0021','Catalysis experiment 21','tandem_iso_hydroformylation',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0022','Catalysis experiment 22','tandem_iso_hydroformylation',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0023','Catalysis experiment 23','isomerization',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0024','Catalysis experiment 24','isomerization',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0025','Catalysis experiment 25','isomerization',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0026','Catalysis experiment 26','tandem_iso_hydroformylation',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0027','Catalysis experiment 27','tandem_iso_hydroformylation',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0028','Catalysis experiment 28','tandem_iso_hydroformylation',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0029','Catalysis experiment 29','isomerization',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0030','Catalysis experiment 30','isomerization',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0031','Catalysis experiment 31','isomerization',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0032','Catalysis experiment 32','isomerization',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0033','Catalysis experiment 33','tandem_iso_hydroformylation',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0034','Catalysis experiment 34','isomerization',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0035','Catalysis experiment 35','hydroformylation',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0036','Catalysis experiment 36','hydroformylation',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0037','Catalysis experiment 37','tandem_iso_hydroformylation',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0038','Catalysis experiment 38','isomerization',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0039','Catalysis experiment 39','tandem_iso_hydroformylation',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0040','Catalysis experiment 40','hydroformylation',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0041','Catalysis experiment 41','tandem_iso_hydroformylation',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0042','Catalysis experiment 42','hydroformylation',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0043','Catalysis experiment 43','hydroformylation',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0044','Catalysis experiment 44','isomerization',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0045','Catalysis experiment 45','isomerization',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0046','Catalysis experiment 46','isomerization',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0047','Catalysis experiment 47','isomerization',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0048','Catalysis experiment 48','isomerization',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0049','Catalysis experiment 49','isomerization',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0050','Catalysis experiment 50','isomerization',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0051','Catalysis experiment 51','tandem_iso_hydroformylation',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0052','Catalysis experiment 52','hydroformylation',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0053','Catalysis experiment 53','hydroformylation',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0054','Catalysis experiment 54','hydroformylation',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0055','Catalysis experiment 55','hydroformylation',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0056','Catalysis experiment 56','hydroformylation',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0057','Catalysis experiment 57','hydroformylation',3,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0058','Catalysis experiment 58','hydroformylation',1,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0059','Catalysis experiment 59','hydroformylation',2,1,'completed');
INSERT INTO experiment(experiment_code,title,reaction_type,protocol_id,lead_researcher,status)
VALUES ('EXP-0060','Catalysis experiment 60','tandem_iso_hydroformylation',1,1,'completed');

-- =================
-- INSERT 11: assay
-- =================
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (37,28,4,6,2,'ASSAY-00001',106.01,7.54,0.627,7.73);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (8,100,2,3,1,'ASSAY-00002',94.72,37.23,0.597,9.17);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (25,51,6,2,1,'ASSAY-00003',95.53,33.39,0.281,7.27);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (20,109,6,5,1,'ASSAY-00004',107.77,23.07,0.089,5.79);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (43,48,1,5,3,'ASSAY-00005',80.47,34.13,0.831,1.95);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (24,82,4,6,1,'ASSAY-00006',86.13,29.62,0.967,3.43);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (52,118,5,4,2,'ASSAY-00007',86.13,29.51,0.305,8.67);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (54,120,1,3,2,'ASSAY-00008',74.63,19.12,0.63,4.41);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (2,64,3,2,2,'ASSAY-00009',72.73,32.12,0.373,8.92);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (45,113,3,5,1,'ASSAY-00010',91.0,8.45,0.279,4.66);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (36,98,2,6,2,'ASSAY-00011',98.75,20.14,0.803,1.84);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (15,52,6,2,2,'ASSAY-00012',99.84,15.39,0.576,4.09);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (48,71,3,3,3,'ASSAY-00013',87.22,12.96,0.269,7.49);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (21,16,6,5,3,'ASSAY-00014',71.11,9.44,0.51,7.52);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (49,68,5,3,1,'ASSAY-00015',109.96,12.55,0.393,3.72);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (46,69,2,3,1,'ASSAY-00016',118.46,22.58,0.713,2.14);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (56,97,4,1,1,'ASSAY-00017',94.44,19.31,0.468,2.66);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (4,33,4,1,1,'ASSAY-00018',84.04,3.89,0.648,1.48);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (10,104,5,3,1,'ASSAY-00019',119.64,5.62,0.776,6.46);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (51,80,2,5,2,'ASSAY-00020',87.03,18.27,0.867,9.91);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (20,73,5,1,3,'ASSAY-00021',117.61,4.87,0.775,6.63);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (17,85,1,2,1,'ASSAY-00022',70.43,3.93,0.053,5.05);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (39,61,3,1,1,'ASSAY-00023',77.29,12.03,0.867,1.64);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (15,119,3,6,3,'ASSAY-00024',99.67,37.41,0.454,5.9);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (42,20,3,2,1,'ASSAY-00025',63.58,31.91,0.615,8.42);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (59,37,4,1,2,'ASSAY-00026',101.32,28.29,0.946,5.5);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (32,57,1,5,1,'ASSAY-00027',113.37,29.65,0.624,1.23);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (15,87,5,5,1,'ASSAY-00028',119.97,27.22,0.306,1.36);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (49,23,4,5,3,'ASSAY-00029',86.53,11.85,0.997,4.92);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (53,63,1,4,2,'ASSAY-00030',84.5,13.52,0.149,2.45);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (27,89,4,3,3,'ASSAY-00031',116.71,32.73,0.573,5.09);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (21,33,3,1,2,'ASSAY-00032',111.89,33.17,0.051,8.82);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (30,53,1,2,3,'ASSAY-00033',81.71,30.5,0.644,7.84);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (14,35,5,2,2,'ASSAY-00034',86.29,28.23,0.165,9.76);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (39,103,2,6,1,'ASSAY-00035',78.65,1.53,0.438,3.02);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (54,117,1,4,1,'ASSAY-00036',98.86,7.0,0.936,3.63);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (46,35,4,4,2,'ASSAY-00037',74.62,22.5,0.414,9.3);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (33,96,2,1,2,'ASSAY-00038',106.36,34.32,0.373,8.09);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (18,106,1,3,3,'ASSAY-00039',77.91,23.89,0.999,5.41);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (10,58,5,4,2,'ASSAY-00040',79.95,30.75,0.408,9.4);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (56,25,6,2,3,'ASSAY-00041',82.98,34.38,0.44,3.86);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (31,91,4,4,3,'ASSAY-00042',107.54,26.43,0.195,9.68);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (9,65,5,3,1,'ASSAY-00043',112.45,18.17,0.55,5.11);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (47,19,4,6,1,'ASSAY-00044',64.49,31.48,0.302,6.61);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (26,84,1,3,3,'ASSAY-00045',111.56,15.82,0.351,7.47);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (49,63,5,1,3,'ASSAY-00046',64.11,25.62,0.925,9.98);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (48,12,4,1,3,'ASSAY-00047',102.23,4.92,0.208,3.7);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (2,6,3,1,2,'ASSAY-00048',81.51,17.8,0.282,4.71);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (44,102,2,2,1,'ASSAY-00049',64.74,34.96,0.639,3.17);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (59,75,2,2,2,'ASSAY-00050',98.27,18.92,0.683,9.09);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (30,116,3,6,3,'ASSAY-00051',69.48,18.23,0.378,6.29);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (41,55,6,3,2,'ASSAY-00052',110.72,8.77,0.415,5.35);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (16,49,5,3,3,'ASSAY-00053',77.75,28.27,0.071,8.47);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (26,36,1,5,3,'ASSAY-00054',106.7,38.97,0.915,7.71);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (54,116,3,2,3,'ASSAY-00055',108.12,9.54,0.231,3.26);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (49,93,6,6,1,'ASSAY-00056',97.69,36.23,0.664,3.78);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (29,5,5,3,3,'ASSAY-00057',67.88,36.48,0.36,4.74);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (13,17,5,3,3,'ASSAY-00058',90.11,11.63,0.206,9.23);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (31,104,3,6,2,'ASSAY-00059',108.25,19.26,0.122,7.79);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (15,111,6,6,3,'ASSAY-00060',118.8,38.72,0.814,4.29);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (51,51,1,3,3,'ASSAY-00061',67.42,15.37,0.762,3.36);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (25,106,6,3,1,'ASSAY-00062',100.49,19.39,0.639,9.49);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (21,118,5,2,3,'ASSAY-00063',63.79,33.13,0.914,3.72);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (27,15,2,1,1,'ASSAY-00064',78.26,20.21,0.142,8.99);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (9,50,4,3,3,'ASSAY-00065',116.96,28.16,0.563,6.29);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (47,20,4,6,1,'ASSAY-00066',110.02,25.01,0.942,3.52);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (45,48,2,4,2,'ASSAY-00067',117.03,34.36,0.144,7.17);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (35,116,6,3,1,'ASSAY-00068',83.89,8.4,0.166,8.63);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (30,12,6,2,3,'ASSAY-00069',98.37,38.87,0.098,4.0);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (9,101,5,2,1,'ASSAY-00070',109.79,22.61,0.607,8.32);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (15,43,2,5,1,'ASSAY-00071',76.64,39.38,0.988,5.86);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (52,23,1,6,1,'ASSAY-00072',67.91,14.97,0.799,6.3);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (2,23,3,1,1,'ASSAY-00073',104.5,21.52,0.758,5.29);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (50,47,5,5,1,'ASSAY-00074',87.12,9.64,0.634,7.55);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (59,111,6,5,2,'ASSAY-00075',87.48,38.6,0.108,5.31);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (26,55,6,1,2,'ASSAY-00076',102.74,18.3,0.904,3.9);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (10,9,2,3,3,'ASSAY-00077',97.98,22.39,0.359,9.95);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (34,38,4,5,3,'ASSAY-00078',85.81,31.93,0.159,6.89);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (57,99,5,6,1,'ASSAY-00079',85.8,35.64,0.443,8.45);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (26,54,6,1,2,'ASSAY-00080',85.61,26.94,0.406,2.37);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (60,61,1,1,1,'ASSAY-00081',65.59,4.77,0.752,8.31);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (36,8,5,5,3,'ASSAY-00082',79.78,5.77,0.386,6.99);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (49,55,6,1,2,'ASSAY-00083',96.02,14.71,0.599,2.91);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (43,62,2,1,2,'ASSAY-00084',110.72,15.33,0.774,6.17);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (52,55,5,5,3,'ASSAY-00085',100.5,22.71,0.629,6.92);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (45,35,1,2,2,'ASSAY-00086',102.16,13.05,0.373,1.05);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (56,19,5,6,2,'ASSAY-00087',64.18,29.9,0.973,1.83);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (34,28,4,4,2,'ASSAY-00088',80.45,15.43,0.736,7.99);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (37,77,1,1,1,'ASSAY-00089',69.44,25.1,0.69,3.45);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (43,55,4,5,2,'ASSAY-00090',84.85,9.41,0.537,4.11);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (8,37,6,6,3,'ASSAY-00091',89.2,27.02,0.093,4.56);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (39,8,1,2,2,'ASSAY-00092',116.72,30.93,0.776,3.61);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (8,1,4,6,2,'ASSAY-00093',70.54,15.83,0.718,5.5);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (54,86,3,1,2,'ASSAY-00094',111.71,2.65,0.068,9.29);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (56,41,5,4,3,'ASSAY-00095',84.27,25.97,0.325,4.65);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (21,22,5,4,3,'ASSAY-00096',115.19,4.44,0.852,3.19);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (38,52,5,1,2,'ASSAY-00097',112.23,30.09,0.26,8.01);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (5,66,6,1,3,'ASSAY-00098',90.6,36.33,0.382,7.55);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (53,83,2,2,1,'ASSAY-00099',68.79,8.69,0.622,7.84);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (42,10,2,6,2,'ASSAY-00100',87.84,22.99,0.6,7.13);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (57,73,6,6,3,'ASSAY-00101',79.39,38.87,0.35,4.96);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (31,57,6,3,2,'ASSAY-00102',95.49,14.73,0.12,5.16);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (3,8,3,3,1,'ASSAY-00103',98.68,39.12,0.136,6.35);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (25,60,5,5,3,'ASSAY-00104',113.75,18.54,0.819,6.87);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (21,78,4,5,1,'ASSAY-00105',117.46,18.57,0.82,8.54);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (46,11,5,6,1,'ASSAY-00106',62.35,28.6,0.991,5.72);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (40,21,3,3,2,'ASSAY-00107',83.24,31.2,0.695,1.47);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (41,83,3,1,2,'ASSAY-00108',65.67,27.46,0.32,7.51);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (43,117,5,2,2,'ASSAY-00109',64.89,26.88,0.921,3.79);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (42,90,6,4,1,'ASSAY-00110',95.7,37.58,0.344,4.39);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (51,43,2,6,3,'ASSAY-00111',109.74,29.81,0.701,5.74);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (42,86,4,5,2,'ASSAY-00112',61.09,13.05,0.954,4.08);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (50,63,2,2,1,'ASSAY-00113',69.3,12.54,0.799,5.57);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (35,107,6,5,1,'ASSAY-00114',99.72,35.18,0.637,6.38);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (10,21,2,6,3,'ASSAY-00115',108.54,7.46,0.466,4.7);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (44,93,2,4,3,'ASSAY-00116',77.1,30.19,0.476,5.81);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (20,104,4,2,2,'ASSAY-00117',100.7,23.25,0.469,7.92);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (50,49,5,5,2,'ASSAY-00118',117.98,32.86,0.811,2.25);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (17,7,6,4,2,'ASSAY-00119',93.27,5.0,0.854,8.66);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (19,11,2,3,2,'ASSAY-00120',114.32,6.75,0.466,9.52);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (15,105,4,3,1,'ASSAY-00121',84.89,16.46,0.405,4.48);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (6,48,2,1,2,'ASSAY-00122',115.85,33.73,0.667,8.12);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (9,5,3,4,3,'ASSAY-00123',109.87,30.59,0.496,6.54);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (58,11,1,3,1,'ASSAY-00124',110.1,22.4,0.741,5.75);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (8,100,3,2,2,'ASSAY-00125',67.31,10.3,0.657,6.61);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (5,15,4,5,3,'ASSAY-00126',60.99,21.1,0.28,2.29);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (28,1,5,3,1,'ASSAY-00127',94.24,8.31,0.685,5.71);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (24,9,5,5,3,'ASSAY-00128',107.18,20.8,0.069,8.86);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (3,82,4,3,2,'ASSAY-00129',104.84,14.93,0.114,3.17);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (43,81,1,5,3,'ASSAY-00130',105.4,6.2,0.385,4.05);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (42,23,6,4,3,'ASSAY-00131',88.71,8.11,0.178,7.44);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (30,5,3,2,1,'ASSAY-00132',107.47,35.55,0.35,3.79);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (26,105,5,4,2,'ASSAY-00133',62.2,26.23,0.322,8.76);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (4,111,6,3,2,'ASSAY-00134',67.47,15.35,0.895,7.69);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (58,50,3,2,2,'ASSAY-00135',101.52,15.33,0.807,3.4);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (6,94,4,1,2,'ASSAY-00136',96.15,33.07,0.568,3.89);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (6,42,6,3,2,'ASSAY-00137',86.75,28.99,0.208,5.0);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (29,6,6,3,3,'ASSAY-00138',119.89,11.71,0.981,9.53);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (5,86,6,4,2,'ASSAY-00139',90.79,30.25,0.202,1.28);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (55,78,6,4,1,'ASSAY-00140',67.57,10.2,0.663,4.26);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (37,5,5,2,3,'ASSAY-00141',87.0,15.47,0.472,1.69);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (9,68,3,4,2,'ASSAY-00142',98.97,10.73,0.158,7.62);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (32,67,4,5,1,'ASSAY-00143',75.71,11.15,0.474,9.97);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (19,89,4,2,1,'ASSAY-00144',68.14,3.89,0.214,7.42);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (6,104,6,3,3,'ASSAY-00145',80.85,3.53,0.565,9.02);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (55,21,6,6,3,'ASSAY-00146',98.26,31.95,0.533,2.09);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (13,102,2,2,2,'ASSAY-00147',61.58,22.61,0.4,8.23);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (36,17,5,1,1,'ASSAY-00148',78.56,39.98,0.733,5.73);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (50,53,5,1,1,'ASSAY-00149',118.34,26.05,0.477,7.12);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (23,17,5,6,3,'ASSAY-00150',70.92,38.68,0.461,9.2);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (4,107,1,5,1,'ASSAY-00151',78.25,7.32,0.938,3.03);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (34,115,3,1,2,'ASSAY-00152',71.78,38.3,0.311,6.63);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (40,69,1,5,3,'ASSAY-00153',70.12,37.72,0.196,6.93);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (47,116,5,3,3,'ASSAY-00154',62.47,34.69,0.127,9.54);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (50,74,3,6,1,'ASSAY-00155',106.02,17.25,0.657,5.48);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (41,70,3,6,2,'ASSAY-00156',88.98,32.38,0.701,3.68);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (5,89,1,2,2,'ASSAY-00157',84.94,19.11,0.373,2.29);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (56,92,3,6,2,'ASSAY-00158',118.52,6.1,0.402,6.05);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (21,31,4,1,2,'ASSAY-00159',86.98,6.49,0.098,9.51);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (56,79,4,2,1,'ASSAY-00160',108.81,37.42,0.735,2.71);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (11,64,5,4,2,'ASSAY-00161',112.74,20.4,0.136,4.54);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (30,31,2,5,2,'ASSAY-00162',62.92,11.97,0.618,8.59);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (44,61,3,5,1,'ASSAY-00163',110.83,17.81,0.888,7.55);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (49,52,3,1,2,'ASSAY-00164',63.07,22.91,0.394,3.6);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (25,65,4,5,2,'ASSAY-00165',109.52,25.31,0.63,2.16);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (7,51,3,3,3,'ASSAY-00166',116.34,30.44,0.239,5.58);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (33,6,1,1,1,'ASSAY-00167',102.82,32.35,0.543,2.34);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (58,66,2,3,3,'ASSAY-00168',79.11,16.33,0.636,8.58);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (38,44,5,5,3,'ASSAY-00169',89.39,22.95,0.501,1.15);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (22,87,1,4,3,'ASSAY-00170',78.46,36.05,0.878,6.66);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (39,61,3,6,3,'ASSAY-00171',94.66,29.13,0.604,2.53);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (41,93,5,4,1,'ASSAY-00172',109.3,10.45,0.594,7.3);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (13,3,4,3,2,'ASSAY-00173',69.09,27.93,0.44,7.97);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (59,61,6,6,1,'ASSAY-00174',102.35,21.23,0.583,9.98);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (31,68,4,3,1,'ASSAY-00175',87.58,21.79,0.569,7.08);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (56,93,6,6,3,'ASSAY-00176',75.86,19.88,0.959,3.51);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (20,29,3,3,3,'ASSAY-00177',72.44,28.49,0.351,4.14);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (60,120,6,3,2,'ASSAY-00178',67.31,27.39,0.411,9.82);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (53,45,2,3,1,'ASSAY-00179',77.26,28.85,0.379,4.98);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (17,96,4,2,1,'ASSAY-00180',109.68,11.57,0.584,3.44);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (7,79,6,5,1,'ASSAY-00181',74.55,27.12,0.554,6.74);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (4,13,4,3,3,'ASSAY-00182',88.34,27.57,0.181,9.68);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (60,21,4,6,2,'ASSAY-00183',88.65,8.78,0.966,3.89);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (42,8,1,6,3,'ASSAY-00184',73.93,29.81,0.858,1.34);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (59,23,4,2,1,'ASSAY-00185',119.83,16.48,0.521,9.43);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (56,119,3,1,1,'ASSAY-00186',77.9,24.51,0.932,4.02);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (30,83,5,5,2,'ASSAY-00187',113.36,6.23,0.529,3.46);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (52,15,3,2,3,'ASSAY-00188',87.53,11.03,0.227,7.63);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (51,38,5,6,1,'ASSAY-00189',70.53,34.39,0.902,8.44);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (33,42,1,4,3,'ASSAY-00190',65.72,39.29,0.504,9.42);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (1,34,4,2,2,'ASSAY-00191',105.23,38.21,0.337,7.51);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (1,34,6,3,3,'ASSAY-00192',74.18,27.04,0.492,2.44);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (44,65,6,3,3,'ASSAY-00193',67.04,36.73,0.33,6.53);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (15,18,4,2,2,'ASSAY-00194',104.86,24.62,0.445,5.94);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (31,97,5,6,1,'ASSAY-00195',105.71,27.53,0.616,8.09);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (34,58,5,6,2,'ASSAY-00196',64.69,23.0,0.109,5.93);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (33,26,5,5,1,'ASSAY-00197',69.87,34.32,0.47,7.12);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (46,75,4,1,3,'ASSAY-00198',86.73,3.17,0.175,4.74);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (37,8,5,4,3,'ASSAY-00199',108.41,29.21,0.426,8.35);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (48,28,5,1,1,'ASSAY-00200',85.42,28.32,0.564,1.54);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (58,9,4,1,2,'ASSAY-00201',84.53,30.99,0.778,9.8);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (42,54,3,4,2,'ASSAY-00202',112.18,36.36,0.407,7.14);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (43,112,5,2,3,'ASSAY-00203',111.62,5.63,0.993,4.54);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (9,94,2,1,1,'ASSAY-00204',118.71,19.06,0.733,4.82);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (25,106,2,2,2,'ASSAY-00205',80.77,11.75,0.941,7.53);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (8,5,6,4,3,'ASSAY-00206',105.96,35.47,0.065,2.85);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (7,77,1,4,3,'ASSAY-00207',100.32,35.02,0.282,1.4);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (29,30,5,2,1,'ASSAY-00208',68.41,39.75,0.272,9.25);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (37,41,5,5,3,'ASSAY-00209',109.1,10.24,0.882,9.87);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (34,29,4,3,2,'ASSAY-00210',63.66,37.99,0.886,9.2);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (41,87,4,5,2,'ASSAY-00211',62.81,14.43,0.661,4.43);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (34,41,6,4,2,'ASSAY-00212',68.95,15.68,0.767,5.26);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (55,29,3,6,1,'ASSAY-00213',108.35,36.67,0.584,9.71);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (36,68,2,4,1,'ASSAY-00214',75.3,13.88,0.125,5.05);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (24,12,5,6,1,'ASSAY-00215',63.09,15.71,0.625,1.36);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (5,25,5,6,3,'ASSAY-00216',93.53,19.7,0.876,4.0);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (59,2,2,2,3,'ASSAY-00217',67.04,39.98,0.505,3.18);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (39,91,2,4,1,'ASSAY-00218',93.12,31.25,0.412,5.8);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (23,40,3,3,3,'ASSAY-00219',112.97,19.17,0.813,7.5);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (49,108,3,2,2,'ASSAY-00220',78.78,2.78,0.871,7.67);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (2,34,5,5,3,'ASSAY-00221',103.2,12.51,0.236,3.07);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (37,107,2,4,3,'ASSAY-00222',99.28,27.71,0.294,8.39);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (47,83,6,4,2,'ASSAY-00223',70.09,32.0,0.211,7.48);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (32,24,5,6,1,'ASSAY-00224',91.44,33.72,0.121,8.36);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (4,98,1,4,1,'ASSAY-00225',110.55,10.03,0.722,1.08);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (33,59,3,1,3,'ASSAY-00226',98.26,37.42,0.917,6.93);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (2,1,5,5,2,'ASSAY-00227',60.71,21.65,0.311,9.8);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (2,65,6,6,2,'ASSAY-00228',108.37,36.48,0.152,1.87);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (10,31,2,5,3,'ASSAY-00229',75.15,14.82,0.805,1.71);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (26,59,5,2,3,'ASSAY-00230',73.55,27.68,0.855,6.88);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (55,84,1,1,2,'ASSAY-00231',82.76,22.56,0.103,1.09);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (11,11,4,4,3,'ASSAY-00232',107.06,23.07,0.865,1.86);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (34,118,1,2,1,'ASSAY-00233',114.08,28.0,0.588,3.44);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (60,10,6,3,3,'ASSAY-00234',93.81,2.28,0.932,3.83);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (14,76,2,6,2,'ASSAY-00235',115.73,12.67,0.586,6.1);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (55,50,6,5,2,'ASSAY-00236',83.03,29.85,0.801,7.2);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (6,65,6,3,1,'ASSAY-00237',65.86,10.05,0.122,6.45);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (40,77,4,3,1,'ASSAY-00238',98.05,31.56,0.478,3.05);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (36,49,4,2,3,'ASSAY-00239',95.15,15.82,0.784,3.66);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (16,92,1,1,2,'ASSAY-00240',69.25,28.76,0.652,7.66);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (21,47,1,1,1,'ASSAY-00241',116.58,18.34,0.773,1.92);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (6,24,4,4,3,'ASSAY-00242',93.28,16.91,0.075,4.19);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (6,77,5,3,2,'ASSAY-00243',60.74,17.14,0.79,7.52);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (36,116,2,5,3,'ASSAY-00244',70.17,15.85,0.182,3.71);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (32,19,1,2,2,'ASSAY-00245',76.56,12.69,0.794,4.25);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (16,93,6,4,3,'ASSAY-00246',97.0,18.86,0.179,1.06);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (26,43,5,4,2,'ASSAY-00247',86.41,17.79,0.832,6.86);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (39,18,3,3,3,'ASSAY-00248',116.84,8.83,0.348,9.68);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (21,38,6,6,3,'ASSAY-00249',89.46,23.46,0.28,4.38);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (53,101,4,3,1,'ASSAY-00250',115.92,8.79,0.997,2.62);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (50,71,1,6,2,'ASSAY-00251',116.58,9.18,0.808,8.48);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (5,105,4,6,2,'ASSAY-00252',68.35,12.81,0.29,2.39);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (28,102,4,1,2,'ASSAY-00253',119.44,19.69,0.431,5.56);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (59,112,6,4,3,'ASSAY-00254',62.21,38.77,0.717,8.31);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (39,82,1,1,1,'ASSAY-00255',99.46,14.85,0.665,1.4);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (42,87,6,4,2,'ASSAY-00256',117.94,17.79,0.06,3.33);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (33,96,5,5,3,'ASSAY-00257',101.26,9.62,0.405,5.17);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (44,76,6,5,1,'ASSAY-00258',80.7,1.96,0.149,4.74);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (6,15,6,2,2,'ASSAY-00259',78.71,18.76,0.247,5.35);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (31,13,4,6,3,'ASSAY-00260',87.15,3.62,0.092,7.4);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (2,109,3,6,1,'ASSAY-00261',100.63,7.41,0.985,3.2);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (12,71,2,3,3,'ASSAY-00262',85.58,19.02,0.808,6.67);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (12,82,6,4,2,'ASSAY-00263',61.75,24.95,0.237,6.33);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (25,1,6,2,1,'ASSAY-00264',76.7,28.45,0.806,6.2);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (52,112,5,2,2,'ASSAY-00265',79.56,18.84,0.299,8.76);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (34,82,3,5,2,'ASSAY-00266',96.68,23.89,0.381,8.61);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (40,23,6,6,2,'ASSAY-00267',115.12,24.02,0.689,3.82);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (16,40,1,2,2,'ASSAY-00268',101.61,20.92,0.447,2.24);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (25,55,2,4,3,'ASSAY-00269',92.24,36.85,0.934,2.56);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (11,63,3,2,1,'ASSAY-00270',78.87,18.59,0.101,4.23);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (1,63,2,2,2,'ASSAY-00271',117.83,20.71,0.52,7.16);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (27,91,4,4,1,'ASSAY-00272',64.96,2.2,0.773,3.63);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (18,29,5,3,1,'ASSAY-00273',106.84,23.06,0.784,5.46);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (33,15,5,1,2,'ASSAY-00274',106.51,33.11,0.399,8.4);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (3,98,6,4,3,'ASSAY-00275',73.11,17.58,0.749,6.88);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (16,39,1,4,2,'ASSAY-00276',80.91,32.85,0.467,9.95);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (50,104,2,2,3,'ASSAY-00277',95.28,14.67,0.725,6.69);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (11,79,2,2,1,'ASSAY-00278',108.33,23.23,0.556,6.37);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (11,42,6,3,2,'ASSAY-00279',94.36,38.14,0.539,9.1);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (53,13,2,4,1,'ASSAY-00280',119.55,34.81,0.171,8.79);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (16,19,6,3,1,'ASSAY-00281',105.69,27.37,0.515,6.2);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (18,81,4,4,2,'ASSAY-00282',64.53,31.99,0.78,4.63);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (48,36,6,3,2,'ASSAY-00283',117.02,13.76,0.052,7.97);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (47,12,6,4,3,'ASSAY-00284',99.85,14.97,0.11,5.81);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (14,55,2,4,2,'ASSAY-00285',79.37,12.06,0.57,2.18);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (55,63,3,6,1,'ASSAY-00286',62.76,25.42,0.845,1.15);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (60,110,2,4,2,'ASSAY-00287',60.04,38.36,0.242,7.2);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (9,113,6,3,1,'ASSAY-00288',112.47,35.19,0.139,4.24);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (6,48,6,6,1,'ASSAY-00289',63.11,25.4,0.74,7.8);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (28,84,1,6,1,'ASSAY-00290',60.07,19.6,0.176,3.04);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (44,57,1,1,3,'ASSAY-00291',80.61,5.7,0.867,7.25);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (31,10,2,4,1,'ASSAY-00292',103.85,4.99,0.348,8.93);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (9,49,2,6,3,'ASSAY-00293',68.57,21.69,0.058,6.85);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (29,45,6,2,3,'ASSAY-00294',104.9,36.88,0.635,4.98);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (14,12,1,2,1,'ASSAY-00295',95.37,15.98,0.965,3.83);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (9,32,3,6,1,'ASSAY-00296',74.89,24.44,0.735,3.56);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (45,4,6,3,1,'ASSAY-00297',91.06,20.87,0.76,3.66);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (4,101,2,4,2,'ASSAY-00298',66.76,20.48,0.614,5.75);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (1,47,3,2,2,'ASSAY-00299',111.65,23.17,0.397,7.15);
INSERT INTO assay(experiment_id,precatalyst_id,substrate_id,solvent_id,protocol_id,assay_code,temp_c,pressure_bar,catalyst_loading_mol_pct,reaction_time_h)
VALUES (49,61,1,1,3,'ASSAY-00300',64.05,11.23,0.088,1.54);

-- ===============================
-- INSERT 12: performance_metrics
-- ===============================
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (1,87.36,50.53,18.86,2.67,626.21,2194.07);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (2,82.11,16.59,16.1,1.02,758.45,1531.85);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (3,58.59,50.9,6.1,8.21,979.27,2774.67);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (4,63.44,60.74,25.04,2.42,833.21,517.35);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (5,81.92,68.4,25.39,2.68,116.59,613.82);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (6,66.07,46.27,18.26,2.52,405.68,3760.13);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (7,84.44,19.56,21.24,0.92,856.72,986.4);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (8,97.18,51.84,23.49,2.2,878.88,1001.42);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (9,47.62,72.49,8.06,8.88,1069.38,3902.87);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (10,41.76,74.57,8.16,9.03,123.45,3619.15);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (11,74.6,16.17,13.66,1.18,464.14,2598.13);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (12,74.01,39.42,7.65,5.09,168.34,2954.78);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (13,83.37,28.27,15.26,1.84,100.64,4342.06);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (14,54.67,47.74,11.49,4.12,222.6,4669.57);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (15,91.45,54.23,27.42,1.97,901.77,2212.97);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (16,59.31,43.3,21.61,1.99,361.95,573.86);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (17,62.37,50.16,27.06,1.85,256.25,4060.82);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (18,98.88,86.33,2.07,39.78,584.86,1555.07);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (19,90.69,36.18,16.59,2.17,59.16,1163.22);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (20,73.83,34.31,18.68,1.83,583.52,3040.12);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (21,69.6,71.81,5.86,12.05,1085.51,3850.31);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (22,54.71,10.51,12.3,0.85,317.95,1862.83);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (23,90.37,80.18,28.53,2.8,51.68,3355.06);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (24,90.94,68.18,3.12,21.17,659.29,1343.2);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (25,69.52,14.79,29.91,0.49,868.4,646.53);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (26,95.28,81.78,15.59,5.21,855.97,1987.96);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (27,98.47,16.79,2.87,5.65,203.54,4135.82);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (28,44.49,55.43,13.05,4.22,1158.85,1336.5);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (29,55.66,35.2,24.02,1.46,855.83,3729.69);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (30,59.08,31.76,2.24,13.57,283.12,3943.7);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (31,75.08,22.43,4.93,4.46,585.96,2151.26);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (32,72.16,87.17,6.23,13.77,404.55,1472.04);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (33,47.19,22.61,20.58,1.09,1000.34,3545.01);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (34,42.42,76.87,9.83,7.74,154.89,1391.45);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (35,61.34,51.08,20.32,2.5,349.19,4955.25);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (36,41.86,42.35,13.57,3.1,910.29,1399.29);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (37,67.72,74.31,4.19,17.32,63.75,4185.79);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (38,98.95,20.46,24.71,0.82,478.08,3225.43);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (39,78.68,56.59,7.76,7.2,984.66,304.64);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (40,43.87,82.2,13.3,6.13,198.11,4544.37);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (41,89.76,36.52,1.28,26.46,580.14,1006.35);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (42,74.43,75.73,11.85,6.34,83.9,3479.42);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (43,50.37,27.18,5.61,4.76,371.83,4440.43);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (44,42.08,59.53,7.37,7.97,389.37,2177.56);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (45,73.04,14.88,8.39,1.75,207.82,1157.4);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (46,93.08,52.07,18.92,2.74,972.49,4015.26);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (47,99.36,72.55,10.77,6.67,676.2,2526.46);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (48,94.76,50.19,11.65,4.27,256.79,1730.61);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (49,53.14,81.66,23.36,3.48,117.38,4959.35);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (50,71.77,71.35,29.99,2.37,1170.08,680.64);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (51,79.41,31.32,24.49,1.27,1104.85,468.36);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (52,99.78,27.55,25.4,1.08,967.0,1903.06);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (53,90.35,77.62,5.28,14.43,731.4,4069.81);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (54,81.86,83.12,0.85,87.49,855.64,4748.28);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (55,73.82,55.05,5.65,9.57,1186.21,4431.81);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (56,69.53,34.72,14.71,2.34,153.8,1316.59);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (57,53.13,52.12,0.02,434.33,1105.58,1167.03);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (58,47.83,67.36,27.56,2.44,1020.93,1753.23);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (59,41.31,56.93,27.52,2.06,940.52,4263.11);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (60,91.64,86.84,11.21,7.68,1133.21,2098.86);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (61,46.06,34.14,4.09,8.15,231.13,4753.73);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (62,87.51,86.85,19.48,4.44,250.33,4849.97);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (63,81.61,84.31,23.61,3.56,306.72,3026.96);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (64,50.52,34.55,20.65,1.67,196.45,3698.39);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (65,96.93,85.9,11.75,7.25,1193.43,4832.88);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (66,41.94,58.19,27.63,2.1,1162.66,1260.3);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (67,73.93,84.94,4.22,19.66,907.14,1342.38);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (68,98.94,23.43,26.56,0.88,152.03,3603.04);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (69,78.35,80.93,13.4,5.99,354.99,1397.8);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (70,44.07,30.53,3.24,9.14,51.47,2052.5);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (71,83.96,87.53,26.54,3.29,617.04,2017.82);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (72,72.76,18.11,14.38,1.25,1043.66,3324.65);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (73,81.23,23.01,2.21,9.96,1022.63,1615.56);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (74,59.12,86.13,2.23,36.97,245.62,2002.2);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (75,83.92,53.76,26.94,1.99,157.07,3051.35);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (76,76.82,48.62,0.93,47.2,1133.81,991.99);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (77,93.39,22.57,3.04,7.19,286.38,1111.92);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (78,81.83,67.76,21.9,3.08,355.05,1551.31);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (79,54.25,13.97,17.15,0.81,1015.83,937.23);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (80,61.65,44.21,8.84,4.95,811.32,3081.03);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (81,51.98,12.06,5.12,2.31,385.58,593.29);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (82,90.63,34.67,11.92,2.88,612.46,3372.99);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (83,45.47,53.53,5.55,9.47,1068.32,1973.13);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (84,66.75,31.06,13.95,2.21,310.18,1489.1);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (85,43.7,70.18,20.02,3.49,148.56,1850.2);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (86,72.49,87.66,17.69,4.93,686.64,4235.83);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (87,89.1,43.49,16.07,2.69,1046.93,2479.16);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (88,92.9,48.1,2.37,19.47,1088.19,3628.67);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (89,70.13,82.04,24.01,3.4,829.17,3177.31);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (90,47.22,70.58,5.19,13.34,1182.02,4866.39);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (91,88.51,20.09,12.7,1.57,1186.52,2289.89);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (92,99.84,60.18,25.02,2.4,346.57,4571.86);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (93,94.85,15.36,11.64,1.31,506.96,1765.41);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (94,56.57,46.65,26.2,1.77,954.53,3190.68);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (95,71.35,43.57,12.43,3.48,220.43,3022.08);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (96,85.5,85.17,27.75,3.06,697.09,684.75);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (97,57.17,52.85,10.32,5.07,522.52,2038.61);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (98,69.14,58.72,1.12,48.13,366.73,890.49);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (99,76.52,65.49,1.16,51.98,1073.01,1791.17);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (100,54.25,69.66,27.63,2.51,1081.59,297.12);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (101,89.04,34.24,8.41,4.02,615.36,3541.68);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (102,45.89,79.51,4.03,19.25,1170.35,2326.93);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (103,89.55,31.55,12.5,2.5,792.39,1102.09);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (104,52.68,75.92,22.23,3.4,923.42,4362.51);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (105,89.26,51.22,4.77,10.52,407.79,2632.62);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (106,48.14,78.1,26.38,2.95,83.29,1125.26);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (107,89.98,76.96,7.48,10.15,574.92,4606.55);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (108,82.28,31.92,24.71,1.29,630.9,3249.97);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (109,47.43,12.45,11.17,1.1,733.15,1052.4);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (110,92.23,56.95,10.49,5.38,238.04,4493.56);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (111,84.94,65.11,8.55,7.53,494.55,981.96);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (112,74.34,87.19,25.71,3.38,794.49,3452.94);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (113,56.15,42.76,0.6,61.09,947.35,3884.35);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (114,40.53,82.92,19.42,4.25,741.31,240.63);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (115,55.14,74.41,9.16,8.04,1162.08,3285.15);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (116,65.43,40.12,10.46,3.8,339.8,2440.15);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (117,80.63,75.94,11.91,6.32,167.66,2655.27);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (118,79.74,77.46,11.23,6.84,794.44,3123.44);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (119,57.91,18.65,1.92,9.23,1186.62,3274.85);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (120,91.69,30.89,21.33,1.44,1076.23,1634.2);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (121,49.0,71.24,26.99,2.63,976.24,4051.35);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (122,76.0,62.84,20.42,3.06,879.48,3345.92);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (123,99.85,30.75,12.56,2.43,496.52,369.53);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (124,82.48,55.76,5.7,9.61,885.53,1267.34);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (125,72.08,72.79,27.2,2.67,822.65,2635.11);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (126,90.73,77.25,26.29,2.93,258.31,668.49);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (127,47.68,30.69,24.25,1.26,927.36,1078.73);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (128,80.78,36.85,2.68,13.26,458.58,3772.21);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (129,58.43,73.05,9.94,7.28,349.64,1611.45);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (130,91.07,47.64,25.99,1.83,721.11,4732.64);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (131,44.27,81.15,15.01,5.37,1047.62,2032.01);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (132,57.9,14.32,25.63,0.56,207.97,1161.42);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (133,64.55,55.55,27.2,2.03,576.21,1718.64);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (134,82.94,72.32,14.63,4.91,775.69,1048.76);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (135,78.07,10.38,8.21,1.25,925.37,1009.31);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (136,85.87,49.17,22.91,2.14,151.25,3149.5);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (137,78.01,42.27,28.96,1.45,490.81,381.08);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (138,51.96,39.85,0.42,76.63,420.55,4199.5);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (139,51.43,64.14,18.8,3.39,336.15,3528.92);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (140,60.66,20.31,11.51,1.75,726.97,1001.7);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (141,89.43,33.86,8.72,3.84,887.01,3062.58);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (142,60.27,81.04,29.86,2.7,444.14,4526.64);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (143,61.56,25.07,28.44,0.88,1105.94,2136.28);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (144,53.71,68.17,3.94,16.87,894.19,3030.53);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (145,50.14,39.33,19.52,2.0,92.97,4407.41);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (146,55.35,52.78,1.46,33.83,1193.88,3377.46);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (147,79.21,11.58,20.69,0.56,529.29,2025.22);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (148,72.84,47.95,4.59,10.22,849.47,3225.49);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (149,58.07,62.93,19.87,3.15,360.47,3107.04);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (150,48.23,76.45,3.15,23.52,876.58,765.13);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (151,46.84,18.5,5.96,3.05,279.71,1462.37);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (152,71.39,26.13,21.1,1.23,389.65,389.15);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (153,69.78,26.62,27.99,0.95,430.19,213.14);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (154,80.3,82.55,25.06,3.28,819.38,915.89);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (155,45.4,50.94,21.71,2.34,166.48,1428.28);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (156,53.87,89.09,8.88,9.92,583.92,679.08);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (157,50.48,13.16,8.72,1.49,971.84,1700.99);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (158,84.31,17.6,22.75,0.77,102.77,4289.59);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (159,79.8,23.64,10.73,2.18,553.37,3184.67);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (160,92.71,17.44,24.45,0.71,260.3,2123.73);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (161,97.74,31.75,11.57,2.72,1028.27,4039.52);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (162,78.93,73.75,3.39,21.13,850.6,481.5);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (163,96.55,22.75,12.48,1.81,729.36,4050.87);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (164,80.7,24.5,11.39,2.13,462.39,338.32);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (165,81.07,77.08,29.2,2.63,200.25,4617.91);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (166,46.78,42.9,1.38,28.99,350.85,1708.34);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (167,82.27,64.23,23.03,2.78,713.15,2912.06);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (168,98.67,63.59,10.15,6.2,651.57,3562.78);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (169,45.71,62.94,7.46,8.33,447.61,3446.22);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (170,63.09,77.12,16.75,4.58,1185.96,461.92);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (171,78.6,22.55,25.47,0.88,1029.65,4373.2);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (172,44.49,49.33,7.23,6.73,1165.67,441.68);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (173,53.36,61.47,12.1,5.04,320.25,2403.65);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (174,88.08,45.85,25.7,1.78,564.13,769.79);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (175,69.84,62.27,3.08,19.58,524.19,2874.23);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (176,40.01,17.27,18.13,0.95,761.93,1662.07);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (177,70.5,26.55,20.14,1.31,1142.91,1944.04);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (178,43.26,27.83,13.63,2.03,694.17,3174.84);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (179,68.39,62.57,21.48,2.9,181.13,3844.74);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (180,53.3,37.31,24.9,1.49,1159.1,1601.52);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (181,71.32,66.17,1.37,45.01,238.78,874.16);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (182,83.01,67.72,3.21,20.46,752.48,1100.21);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (183,95.81,41.43,13.71,3.0,948.63,3640.58);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (184,46.47,43.16,27.8,1.55,1013.09,3026.29);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (185,86.33,46.04,19.75,2.32,1149.62,846.25);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (186,69.93,52.43,1.46,33.61,1125.6,4226.32);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (187,68.98,50.67,27.63,1.83,253.78,2977.06);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (188,83.83,20.27,11.62,1.73,740.63,4436.94);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (189,70.25,40.77,29.39,1.38,1103.3,3859.4);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (190,56.42,87.09,29.11,2.98,570.77,840.18);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (191,64.76,66.0,22.45,2.93,393.75,3567.17);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (192,91.64,66.95,28.07,2.38,777.47,1164.27);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (193,77.45,33.25,10.36,3.18,823.23,4910.41);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (194,79.01,86.67,15.12,5.69,848.46,1747.43);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (195,46.92,38.18,14.41,2.63,706.23,3402.35);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (196,65.05,69.83,25.24,2.76,378.82,4267.05);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (197,88.5,51.82,0.76,60.26,217.13,3417.22);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (198,51.99,70.01,4.83,14.2,379.61,1402.69);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (199,90.36,65.25,8.85,7.29,916.63,355.07);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (200,88.84,18.2,26.04,0.7,900.42,4351.24);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (201,84.54,54.9,7.13,7.59,951.95,4034.34);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (202,57.26,63.16,27.79,2.26,495.69,4792.17);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (203,98.55,35.01,16.56,2.1,64.91,1406.44);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (204,77.23,72.47,26.1,2.77,1004.48,4575.13);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (205,82.28,61.81,22.65,2.72,678.61,3096.26);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (206,86.57,87.14,8.83,9.76,254.04,3476.76);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (207,51.22,23.9,15.42,1.54,483.78,2256.84);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (208,73.4,20.41,17.52,1.16,343.27,1786.7);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (209,82.58,22.38,4.61,4.75,421.02,444.11);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (210,95.94,59.25,19.86,2.97,614.13,2948.85);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (211,61.49,72.72,9.54,7.54,302.96,1082.57);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (212,44.09,50.41,12.48,4.01,667.59,641.34);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (213,53.27,27.07,9.96,2.69,464.92,1248.54);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (214,85.16,52.44,29.9,1.75,997.24,4909.44);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (215,40.53,63.52,13.37,4.72,1090.17,3145.77);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (216,77.27,86.71,20.48,4.21,419.08,4596.48);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (217,96.7,40.87,16.21,2.51,375.25,4574.41);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (218,89.33,40.0,24.08,1.65,562.39,410.49);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (219,93.9,25.4,15.42,1.64,1140.44,1003.5);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (220,97.38,53.04,0.22,165.75,125.29,3417.61);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (221,86.41,79.2,12.73,6.17,169.52,2781.22);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (222,82.16,88.1,23.26,3.77,793.55,4710.81);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (223,84.81,22.3,13.78,1.61,431.47,620.1);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (224,43.26,73.54,16.74,4.37,711.21,1292.7);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (225,55.52,41.04,18.91,2.16,547.98,281.08);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (226,80.4,52.79,19.24,2.73,761.1,3828.61);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (227,75.14,66.07,2.18,28.98,1117.25,709.45);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (228,87.21,34.11,2.6,12.63,930.07,2300.85);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (229,63.71,62.86,14.22,4.39,663.49,854.63);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (230,63.46,73.8,16.37,4.48,1154.15,891.56);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (231,80.64,83.13,23.85,3.47,888.72,1991.03);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (232,96.97,54.28,16.65,3.24,191.72,224.14);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (233,75.8,52.97,28.41,1.86,400.39,3791.82);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (234,94.21,37.51,12.38,3.01,792.82,2660.25);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (235,49.66,27.66,25.04,1.1,273.48,1070.52);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (236,87.98,78.18,25.54,3.05,1122.23,4972.7);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (237,67.68,53.97,8.72,6.12,127.47,671.37);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (238,83.54,48.98,9.93,4.88,197.45,3346.27);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (239,46.0,59.56,27.0,2.2,415.45,2363.1);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (240,76.98,34.45,17.53,1.95,700.38,1949.57);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (241,58.98,44.26,0.14,184.42,333.1,1263.32);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (242,84.39,44.89,25.2,1.77,204.45,3718.27);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (243,92.67,47.03,10.76,4.33,401.29,2848.02);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (244,50.55,58.53,25.25,2.31,1037.52,872.01);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (245,72.32,31.06,26.59,1.16,137.93,561.92);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (246,41.12,50.57,0.94,48.62,719.17,2144.65);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (247,75.4,82.5,16.55,4.95,674.99,4993.9);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (248,68.33,72.02,10.97,6.51,306.8,3906.3);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (249,83.99,33.28,13.94,2.37,636.97,2104.57);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (250,70.13,63.01,25.44,2.47,977.52,3147.37);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (251,49.95,51.13,13.39,3.79,256.02,4753.82);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (252,79.56,87.42,22.08,3.94,606.03,1922.22);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (253,53.13,49.01,1.89,24.63,474.85,405.48);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (254,52.41,82.62,10.84,7.55,590.13,2382.29);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (255,42.79,88.45,9.72,9.01,859.3,2702.59);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (256,89.78,76.79,7.9,9.6,676.0,1034.48);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (257,79.22,39.22,19.6,1.99,1010.79,2679.98);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (258,62.58,82.58,15.49,5.3,455.83,4365.05);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (259,69.21,48.57,18.13,2.66,627.11,867.05);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (260,49.94,16.17,19.3,0.83,293.24,1097.15);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (261,61.73,67.38,3.55,18.46,314.9,4093.63);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (262,83.22,48.52,14.36,3.36,292.31,973.98);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (263,90.0,11.8,1.29,8.49,709.51,973.42);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (264,77.77,13.14,17.17,0.76,114.3,1439.65);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (265,50.8,86.66,17.98,4.79,698.15,289.38);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (266,83.17,62.94,8.5,7.32,148.61,2356.18);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (267,99.57,79.38,5.12,15.21,1004.92,3084.03);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (268,87.68,75.64,5.46,13.6,808.6,1469.7);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (269,83.45,37.41,13.6,2.73,729.19,1303.11);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (270,63.13,18.69,6.07,3.03,1038.53,2620.93);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (271,65.19,21.96,2.89,7.34,597.25,3150.79);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (272,42.34,72.71,15.1,4.78,185.14,2514.76);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (273,47.82,58.28,24.83,2.34,1081.51,3919.38);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (274,78.95,51.76,11.11,4.62,99.95,2743.12);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (275,53.77,74.18,23.69,3.12,488.42,3027.43);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (276,84.48,70.92,20.9,3.38,162.37,842.64);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (277,68.63,28.6,25.77,1.11,375.76,4408.48);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (278,64.52,25.12,21.27,1.18,957.84,2974.34);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (279,47.07,10.58,19.64,0.54,840.93,1716.33);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (280,61.74,22.38,19.55,1.14,341.68,4303.89);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (281,65.41,39.25,8.27,4.69,832.7,3823.87);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (282,64.79,72.7,14.47,4.99,475.74,2863.57);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (283,55.23,34.53,10.33,3.31,861.32,3731.76);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (284,91.3,62.74,22.43,2.78,563.58,3556.69);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (285,49.71,27.16,12.02,2.24,439.2,2842.77);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (286,81.82,66.54,4.82,13.52,1159.26,225.4);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (287,45.47,21.63,27.78,0.78,550.68,507.59);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (288,53.31,16.4,1.13,13.33,491.97,4925.35);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (289,76.84,51.68,21.35,2.41,737.09,4739.44);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (290,89.21,61.22,13.17,4.61,281.96,3353.04);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (291,88.23,32.88,1.01,29.62,739.44,2675.91);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (292,53.9,23.56,1.08,19.97,325.15,201.38);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (293,49.45,89.75,23.39,3.82,456.1,2096.69);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (294,75.16,51.42,22.11,2.32,128.91,632.8);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (295,57.07,76.38,27.45,2.77,450.31,4823.78);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (296,56.59,58.51,5.84,9.85,1119.17,2959.55);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (297,55.67,42.57,3.19,12.94,133.24,1612.41);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (298,96.82,74.24,28.7,2.58,1057.53,4103.11);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (299,74.49,65.54,28.98,2.25,697.64,3895.84);
INSERT INTO performance_metrics(assay_id,conversion_pct,yield_linear_aldehyde_pct,yield_branched_aldehyde_pct,lb_ratio,tof_h_inv,ton)
VALUES (300,85.45,86.9,13.77,6.27,579.83,3016.77);

-- ==========================
-- INSERT 13: kinetics_study
-- ==========================
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (2,62,1,'initial_rate',1.913984,'mol L^-1 h^-1',60.63);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (51,29,6,'initial_rate',4.001007,'mol L^-1 h^-1',96.09);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (27,46,5,'initial_rate',3.504392,'mol L^-1 h^-1',82.85);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (17,32,3,'initial_rate',3.368816,'mol L^-1 h^-1',47.44);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (53,44,1,'initial_rate',0.89325,'mol L^-1 h^-1',84.36);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (21,46,2,'initial_rate',1.34611,'mol L^-1 h^-1',111.55);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (48,88,2,'initial_rate',0.999133,'mol L^-1 h^-1',79.92);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (48,31,3,'initial_rate',1.01463,'mol L^-1 h^-1',56.54);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (16,108,5,'initial_rate',3.894913,'mol L^-1 h^-1',68.48);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (8,118,1,'initial_rate',3.317457,'mol L^-1 h^-1',94.06);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (40,1,5,'initial_rate',4.240205,'mol L^-1 h^-1',116.64);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (24,80,3,'initial_rate',4.926821,'mol L^-1 h^-1',79.39);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (58,74,3,'initial_rate',4.921989,'mol L^-1 h^-1',79.26);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (59,66,3,'initial_rate',3.751097,'mol L^-1 h^-1',71.83);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (9,7,5,'initial_rate',2.392122,'mol L^-1 h^-1',103.94);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (35,5,5,'initial_rate',4.30214,'mol L^-1 h^-1',67.78);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (50,23,4,'initial_rate',3.491525,'mol L^-1 h^-1',118.12);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (30,41,6,'initial_rate',3.370841,'mol L^-1 h^-1',40.67);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (25,75,1,'initial_rate',3.064278,'mol L^-1 h^-1',66.03);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (17,24,5,'initial_rate',1.347772,'mol L^-1 h^-1',61.03);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (40,44,3,'initial_rate',2.12029,'mol L^-1 h^-1',54.71);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (27,90,3,'initial_rate',2.003562,'mol L^-1 h^-1',69.21);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (29,24,5,'initial_rate',2.879888,'mol L^-1 h^-1',50.49);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (15,105,1,'initial_rate',4.020634,'mol L^-1 h^-1',97.67);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (36,56,4,'initial_rate',4.000387,'mol L^-1 h^-1',55.69);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (48,20,4,'initial_rate',0.88386,'mol L^-1 h^-1',104.45);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (32,18,6,'initial_rate',3.603081,'mol L^-1 h^-1',81.36);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (51,63,3,'initial_rate',4.292651,'mol L^-1 h^-1',60.08);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (4,51,1,'initial_rate',0.301122,'mol L^-1 h^-1',95.24);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (53,33,4,'initial_rate',0.482413,'mol L^-1 h^-1',107.12);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (48,43,3,'initial_rate',2.80219,'mol L^-1 h^-1',68.88);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (60,104,3,'initial_rate',2.059393,'mol L^-1 h^-1',67.53);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (23,112,6,'initial_rate',0.995592,'mol L^-1 h^-1',117.05);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (37,84,6,'initial_rate',4.896886,'mol L^-1 h^-1',83.08);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (19,46,3,'initial_rate',2.437981,'mol L^-1 h^-1',93.86);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (48,58,1,'initial_rate',1.433331,'mol L^-1 h^-1',70.49);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (41,19,2,'initial_rate',4.642905,'mol L^-1 h^-1',91.25);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (27,81,5,'initial_rate',4.244655,'mol L^-1 h^-1',85.73);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (5,11,2,'initial_rate',1.568097,'mol L^-1 h^-1',67.49);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (42,38,6,'initial_rate',3.223577,'mol L^-1 h^-1',61.4);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (18,114,4,'initial_rate',4.69391,'mol L^-1 h^-1',102.48);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (48,76,5,'initial_rate',2.070531,'mol L^-1 h^-1',117.24);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (12,110,1,'initial_rate',1.173901,'mol L^-1 h^-1',50.0);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (17,96,6,'initial_rate',1.053647,'mol L^-1 h^-1',99.98);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (26,14,1,'initial_rate',4.393576,'mol L^-1 h^-1',45.1);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (36,7,1,'initial_rate',2.62039,'mol L^-1 h^-1',101.67);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (6,14,3,'initial_rate',0.422472,'mol L^-1 h^-1',89.45);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (60,114,4,'initial_rate',1.237735,'mol L^-1 h^-1',64.75);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (19,57,6,'initial_rate',2.634185,'mol L^-1 h^-1',50.11);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (11,4,1,'initial_rate',4.301984,'mol L^-1 h^-1',93.08);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (21,111,4,'initial_rate',4.35462,'mol L^-1 h^-1',77.38);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (60,35,5,'initial_rate',4.847742,'mol L^-1 h^-1',75.59);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (45,70,2,'initial_rate',2.283261,'mol L^-1 h^-1',87.27);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (48,82,5,'initial_rate',3.199293,'mol L^-1 h^-1',74.8);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (35,40,3,'initial_rate',1.136415,'mol L^-1 h^-1',78.53);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (6,57,3,'initial_rate',1.299775,'mol L^-1 h^-1',69.26);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (20,2,1,'initial_rate',3.791709,'mol L^-1 h^-1',81.87);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (9,45,3,'initial_rate',0.042577,'mol L^-1 h^-1',77.54);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (60,63,4,'initial_rate',3.82958,'mol L^-1 h^-1',63.97);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (52,38,5,'initial_rate',0.037083,'mol L^-1 h^-1',58.5);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (24,25,4,'initial_rate',2.186095,'mol L^-1 h^-1',110.57);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (16,21,6,'initial_rate',1.949227,'mol L^-1 h^-1',98.97);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (25,29,3,'initial_rate',3.12699,'mol L^-1 h^-1',46.34);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (34,98,5,'initial_rate',3.423517,'mol L^-1 h^-1',104.61);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (19,84,6,'initial_rate',1.344841,'mol L^-1 h^-1',82.56);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (13,110,1,'initial_rate',1.448687,'mol L^-1 h^-1',54.59);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (41,59,5,'initial_rate',3.502663,'mol L^-1 h^-1',76.22);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (32,25,3,'initial_rate',0.249111,'mol L^-1 h^-1',41.55);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (35,3,2,'initial_rate',1.411291,'mol L^-1 h^-1',117.79);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (9,92,4,'initial_rate',1.16482,'mol L^-1 h^-1',98.17);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (10,2,4,'initial_rate',2.101795,'mol L^-1 h^-1',57.38);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (51,103,4,'initial_rate',2.318959,'mol L^-1 h^-1',119.84);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (51,5,3,'initial_rate',3.753097,'mol L^-1 h^-1',46.42);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (10,8,3,'initial_rate',0.357852,'mol L^-1 h^-1',102.05);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (31,24,2,'initial_rate',1.251147,'mol L^-1 h^-1',111.66);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (25,107,1,'initial_rate',3.84096,'mol L^-1 h^-1',49.76);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (16,50,4,'initial_rate',4.972683,'mol L^-1 h^-1',59.77);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (13,59,6,'initial_rate',2.606174,'mol L^-1 h^-1',101.68);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (14,61,4,'initial_rate',1.561235,'mol L^-1 h^-1',94.52);
INSERT INTO kinetics_study(experiment_id,precatalyst_id,substrate_id,study_type,rate_constant_k,rate_constant_units,activation_energy_kJ_mol)
VALUES (21,21,6,'initial_rate',3.723878,'mol L^-1 h^-1',98.26);

-- ===========================
-- INSERT 14: dft_calculation
-- ===========================
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (71,'Gaussian','B3LYP','def2-TZVP','optimization',-1479.073747,-1481.540619596649);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (82,'Gaussian','B3LYP','def2-TZVP','optimization',-1701.186916,-1702.5826494393623);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (7,'Gaussian','B3LYP','def2-TZVP','optimization',-1136.342334,-1139.164451509449);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (15,'Gaussian','B3LYP','def2-TZVP','optimization',-1764.034162,-1764.692545494279);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (2,'Gaussian','B3LYP','def2-TZVP','optimization',-1832.639644,-1834.8786435616157);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (16,'Gaussian','B3LYP','def2-TZVP','optimization',-1604.1917,-1606.7608066675687);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (6,'Gaussian','B3LYP','def2-TZVP','optimization',-1418.922977,-1417.015462854382);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (89,'Gaussian','B3LYP','def2-TZVP','optimization',-1403.787716,-1405.0737293669677);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (12,'Gaussian','B3LYP','def2-TZVP','optimization',-1751.277744,-1751.27855193415);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (88,'Gaussian','B3LYP','def2-TZVP','optimization',-1381.355142,-1377.0466541548137);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (98,'Gaussian','B3LYP','def2-TZVP','optimization',-1374.86767,-1379.2699186839059);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (83,'Gaussian','B3LYP','def2-TZVP','optimization',-1846.081565,-1845.7180317421976);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (14,'Gaussian','B3LYP','def2-TZVP','optimization',-1874.172542,-1876.8457956914394);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (72,'Gaussian','B3LYP','def2-TZVP','optimization',-1211.438174,-1208.871198767986);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (104,'Gaussian','B3LYP','def2-TZVP','optimization',-1108.204049,-1105.8721606824622);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (3,'Gaussian','B3LYP','def2-TZVP','optimization',-1310.75002,-1312.1683450274957);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (18,'Gaussian','B3LYP','def2-TZVP','optimization',-1749.303759,-1753.908873572845);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (91,'Gaussian','B3LYP','def2-TZVP','optimization',-1562.499996,-1564.552850035591);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (90,'Gaussian','B3LYP','def2-TZVP','optimization',-1509.908004,-1509.2409866603361);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (70,'Gaussian','B3LYP','def2-TZVP','optimization',-1652.335321,-1650.0112968987728);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (36,'Gaussian','B3LYP','def2-TZVP','optimization',-1132.33816,-1131.3513605576436);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (111,'Gaussian','B3LYP','def2-TZVP','optimization',-1445.47969,-1449.7909241663883);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (20,'Gaussian','B3LYP','def2-TZVP','optimization',-1550.6158,-1547.4216144850025);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (70,'Gaussian','B3LYP','def2-TZVP','optimization',-1632.887293,-1637.8800947127575);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (82,'Gaussian','B3LYP','def2-TZVP','optimization',-1494.042267,-1491.7056895856115);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (114,'Gaussian','B3LYP','def2-TZVP','optimization',-1981.280143,-1977.7118501166578);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (100,'Gaussian','B3LYP','def2-TZVP','optimization',-1379.802687,-1381.5957460569227);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (9,'Gaussian','B3LYP','def2-TZVP','optimization',-1341.710583,-1341.321017784066);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (50,'Gaussian','B3LYP','def2-TZVP','optimization',-1810.130548,-1808.2983061744233);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (99,'Gaussian','B3LYP','def2-TZVP','optimization',-1448.532193,-1447.4018005764947);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (42,'Gaussian','B3LYP','def2-TZVP','optimization',-1590.195472,-1591.9752314435168);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (13,'Gaussian','B3LYP','def2-TZVP','optimization',-1476.799461,-1481.1326625690374);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (107,'Gaussian','B3LYP','def2-TZVP','optimization',-1062.200463,-1065.4140749996388);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (5,'Gaussian','B3LYP','def2-TZVP','optimization',-1797.920971,-1798.067268127633);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (13,'Gaussian','B3LYP','def2-TZVP','optimization',-1968.18285,-1966.7653333187236);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (50,'Gaussian','B3LYP','def2-TZVP','optimization',-1342.078742,-1341.8205283738557);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (90,'Gaussian','B3LYP','def2-TZVP','optimization',-1409.699088,-1414.2082317275444);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (29,'Gaussian','B3LYP','def2-TZVP','optimization',-1394.046376,-1398.3376363904988);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (120,'Gaussian','B3LYP','def2-TZVP','optimization',-1078.964791,-1077.4072973810196);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (119,'Gaussian','B3LYP','def2-TZVP','optimization',-1110.232675,-1114.4331069676712);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (103,'Gaussian','B3LYP','def2-TZVP','optimization',-1361.083284,-1362.4740234887493);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (96,'Gaussian','B3LYP','def2-TZVP','optimization',-1061.756142,-1062.5966099729023);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (48,'Gaussian','B3LYP','def2-TZVP','optimization',-1205.750423,-1210.1674227555284);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (79,'Gaussian','B3LYP','def2-TZVP','optimization',-1734.184366,-1738.7778344772564);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (10,'Gaussian','B3LYP','def2-TZVP','optimization',-1165.543502,-1169.764148251395);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (28,'Gaussian','B3LYP','def2-TZVP','optimization',-1039.413255,-1043.4420624984234);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (93,'Gaussian','B3LYP','def2-TZVP','optimization',-1768.981997,-1770.1286861177402);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (25,'Gaussian','B3LYP','def2-TZVP','optimization',-1473.807978,-1476.3203477094598);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (81,'Gaussian','B3LYP','def2-TZVP','optimization',-1052.496655,-1051.9124201998702);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (72,'Gaussian','B3LYP','def2-TZVP','optimization',-1584.8154,-1588.7602581810083);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (82,'Gaussian','B3LYP','def2-TZVP','optimization',-1423.436341,-1421.691415362552);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (90,'Gaussian','B3LYP','def2-TZVP','optimization',-1334.757645,-1330.9294048062677);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (22,'Gaussian','B3LYP','def2-TZVP','optimization',-1207.538402,-1207.0387473342946);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (65,'Gaussian','B3LYP','def2-TZVP','optimization',-1662.487129,-1665.9053644410067);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (77,'Gaussian','B3LYP','def2-TZVP','optimization',-1556.98783,-1558.4645892472968);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (41,'Gaussian','B3LYP','def2-TZVP','optimization',-1449.918658,-1444.95015485825);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (109,'Gaussian','B3LYP','def2-TZVP','optimization',-1628.280488,-1625.6386443209565);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (56,'Gaussian','B3LYP','def2-TZVP','optimization',-1173.845025,-1175.6105157995155);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (31,'Gaussian','B3LYP','def2-TZVP','optimization',-1436.855297,-1439.7160156395628);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (99,'Gaussian','B3LYP','def2-TZVP','optimization',-1449.761294,-1447.315510514968);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (47,'Gaussian','B3LYP','def2-TZVP','optimization',-1038.348224,-1038.8732261100176);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (51,'Gaussian','B3LYP','def2-TZVP','optimization',-1999.804372,-2004.457742977718);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (37,'Gaussian','B3LYP','def2-TZVP','optimization',-1404.237173,-1404.0610794115967);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (114,'Gaussian','B3LYP','def2-TZVP','optimization',-1698.158346,-1700.1550063827183);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (29,'Gaussian','B3LYP','def2-TZVP','optimization',-1785.177187,-1787.0281402495066);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (99,'Gaussian','B3LYP','def2-TZVP','optimization',-1178.060078,-1176.1628861609056);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (36,'Gaussian','B3LYP','def2-TZVP','optimization',-1080.887917,-1080.7752021165888);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (74,'Gaussian','B3LYP','def2-TZVP','optimization',-1074.07755,-1077.5304021378124);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (5,'Gaussian','B3LYP','def2-TZVP','optimization',-1539.630194,-1543.0691229365405);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (34,'Gaussian','B3LYP','def2-TZVP','optimization',-1632.917107,-1632.0955499364013);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (30,'Gaussian','B3LYP','def2-TZVP','optimization',-1743.756162,-1745.753137683279);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (74,'Gaussian','B3LYP','def2-TZVP','optimization',-1600.201752,-1596.0229339665552);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (94,'Gaussian','B3LYP','def2-TZVP','optimization',-1922.798434,-1924.5515134595998);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (62,'Gaussian','B3LYP','def2-TZVP','optimization',-1827.097509,-1823.8404565561511);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (89,'Gaussian','B3LYP','def2-TZVP','optimization',-1297.152105,-1293.9569523516361);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (13,'Gaussian','B3LYP','def2-TZVP','optimization',-1404.768797,-1406.7648644615672);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (94,'Gaussian','B3LYP','def2-TZVP','optimization',-1191.658828,-1192.8433668950054);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (100,'Gaussian','B3LYP','def2-TZVP','optimization',-1944.077291,-1941.3682759632986);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (45,'Gaussian','B3LYP','def2-TZVP','optimization',-1120.207497,-1120.8644530306876);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (120,'Gaussian','B3LYP','def2-TZVP','optimization',-1132.168903,-1128.471037858788);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (30,'Gaussian','B3LYP','def2-TZVP','optimization',-1252.321343,-1248.826561326874);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (119,'Gaussian','B3LYP','def2-TZVP','optimization',-1988.565619,-1985.7914328185595);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (49,'Gaussian','B3LYP','def2-TZVP','optimization',-1945.872051,-1945.6282174848639);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (41,'Gaussian','B3LYP','def2-TZVP','optimization',-1460.070271,-1463.574470808327);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (65,'Gaussian','B3LYP','def2-TZVP','optimization',-1302.231347,-1305.6993721739532);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (87,'Gaussian','B3LYP','def2-TZVP','optimization',-1268.421426,-1269.4925989548099);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (58,'Gaussian','B3LYP','def2-TZVP','optimization',-1247.159797,-1246.4072484614992);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (12,'Gaussian','B3LYP','def2-TZVP','optimization',-1777.914372,-1780.0165417084331);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (51,'Gaussian','B3LYP','def2-TZVP','optimization',-1851.987599,-1853.6259172195914);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (61,'Gaussian','B3LYP','def2-TZVP','optimization',-1428.559409,-1433.066298019299);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (52,'Gaussian','B3LYP','def2-TZVP','optimization',-1737.442023,-1738.456752626341);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (56,'Gaussian','B3LYP','def2-TZVP','optimization',-1226.174863,-1229.8711112510482);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (18,'Gaussian','B3LYP','def2-TZVP','optimization',-1519.077498,-1522.0964127228108);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (51,'Gaussian','B3LYP','def2-TZVP','optimization',-1347.751561,-1350.790567996068);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (79,'Gaussian','B3LYP','def2-TZVP','optimization',-1002.921233,-1002.6787551772309);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (32,'Gaussian','B3LYP','def2-TZVP','optimization',-1928.35602,-1925.588301012083);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (42,'Gaussian','B3LYP','def2-TZVP','optimization',-1315.262028,-1314.5018456275498);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (15,'Gaussian','B3LYP','def2-TZVP','optimization',-1328.252447,-1329.0170409763437);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (45,'Gaussian','B3LYP','def2-TZVP','optimization',-1809.510258,-1811.065008904897);
INSERT INTO dft_calculation(precatalyst_id,software,functional,basis_set,calculation_type,electronic_energy_hartree,gibbs_free_energy_hartree)
VALUES (84,'Gaussian','B3LYP','def2-TZVP','optimization',-1975.79317,-1977.744981524536);


-- ================================================================
-- literature_ref
-- ================================================================
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0001xyz','Advances in isomerization catalysis: study 1','Franke R., van Leeuwen P.','J. Am. Chem. Soc.',2023,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0002xyz','Advances in hydroformylation catalysis: study 2','Beller M., Bolm C.','Organometallics',2007,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0003xyz','Advances in isomerization catalysis: study 3','Cornils B., Herrmann W.','Angew. Chem. Int. Ed.',2021,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0004xyz','Advances in hydroformylation catalysis: study 4','Claver C., Castillon S.','Angew. Chem. Int. Ed.',2018,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0005xyz','Advances in isomerization catalysis: study 5','Nozaki K., Takaya H.','J. Am. Chem. Soc.',2000,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0006xyz','Advances in hydroformylation catalysis: study 6','Franke R., van Leeuwen P.','Organometallics',2007,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0007xyz','Advances in isomerization catalysis: study 7','Claver C., Castillon S.','Catal. Sci. Technol.',2000,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0008xyz','Advances in hydroformylation catalysis: study 8','Claver C., Castillon S.','Organometallics',2022,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0009xyz','Advances in isomerization catalysis: study 9','Claver C., Castillon S.','ChemCatChem',2007,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0010xyz','Advances in hydroformylation catalysis: study 10','Nozaki K., Takaya H.','Catal. Sci. Technol.',2008,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0011xyz','Advances in isomerization catalysis: study 11','Franke R., van Leeuwen P.','ACS Catal.',2022,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0012xyz','Advances in hydroformylation catalysis: study 12','Nozaki K., Takaya H.','Green Chem.',2008,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0013xyz','Advances in isomerization catalysis: study 13','Cornils B., Herrmann W.','Organometallics',2024,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0014xyz','Advances in hydroformylation catalysis: study 14','Beller M., Bolm C.','Angew. Chem. Int. Ed.',2002,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0015xyz','Advances in isomerization catalysis: study 15','Nozaki K., Takaya H.','Angew. Chem. Int. Ed.',2011,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0016xyz','Advances in hydroformylation catalysis: study 16','Beller M., Bolm C.','Catal. Sci. Technol.',2008,'journal');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0017xyz','Advances in isomerization catalysis: study 17','Nozaki K., Takaya H.','Inorg. Chem.',2003,'thesis');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0018xyz','Advances in hydroformylation catalysis: study 18','Franke R., van Leeuwen P.','Inorg. Chem.',2009,'book_chapter');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0019xyz','Advances in isomerization catalysis: study 19','Claver C., Castillon S.','Green Chem.',2018,'patent');
INSERT INTO literature_ref(doi,title,authors,journal,year,ref_type) VALUES ('10.1021/ref0020xyz','Advances in hydroformylation catalysis: study 20','Franke R., van Leeuwen P.','J. Am. Chem. Soc.',2021,'patent');

-- ================================================================
-- catalyst_support
-- ================================================================
INSERT INTO catalyst_support(support_name,support_type,surface_area_m2g,pore_volume_cm3g,avg_pore_size_nm,supplier) VALUES ('SiO2-300','polymer',887.4,1.5685,13.26,'TCI');
INSERT INTO catalyst_support(support_name,support_type,surface_area_m2g,pore_volume_cm3g,avg_pore_size_nm,supplier) VALUES ('Al2O3-gamma','polymer',435.4,1.5346,4.11,'Strem');
INSERT INTO catalyst_support(support_name,support_type,surface_area_m2g,pore_volume_cm3g,avg_pore_size_nm,supplier) VALUES ('PS-DVB resin','alumina',619.6,1.3229,10.89,'Sigma-Aldrich');
INSERT INTO catalyst_support(support_name,support_type,surface_area_m2g,pore_volume_cm3g,avg_pore_size_nm,supplier) VALUES ('UiO-66 MOF','carbon',589.7,1.0546,5.18,'TCI');
INSERT INTO catalyst_support(support_name,support_type,surface_area_m2g,pore_volume_cm3g,avg_pore_size_nm,supplier) VALUES ('Activated Carbon','MOF',279.5,1.6806,10.95,'Alfa Aesar');
INSERT INTO catalyst_support(support_name,support_type,surface_area_m2g,pore_volume_cm3g,avg_pore_size_nm,supplier) VALUES ('MCM-41','none',325.6,1.4293,2.73,'Sigma-Aldrich');
INSERT INTO catalyst_support(support_name,support_type,surface_area_m2g,pore_volume_cm3g,avg_pore_size_nm,supplier) VALUES ('SBA-15','polymer',391.0,0.3059,13.87,'ACROS');
INSERT INTO catalyst_support(support_name,support_type,surface_area_m2g,pore_volume_cm3g,avg_pore_size_nm,supplier) VALUES ('MIL-101(Cr)','none',317.5,1.2487,7.14,'TCI');
INSERT INTO catalyst_support(support_name,support_type,surface_area_m2g,pore_volume_cm3g,avg_pore_size_nm,supplier) VALUES ('Amberlyst-15','alumina',275.1,0.5946,9.3,'Strem');
INSERT INTO catalyst_support(support_name,support_type,surface_area_m2g,pore_volume_cm3g,avg_pore_size_nm,supplier) VALUES ('Norit carbon','none',546.9,1.6365,7.19,'Alfa Aesar');

-- ================================================================
-- supported_catalyst
-- ================================================================
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (18,5,4.858,'wet_impregnation',2.153);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (66,2,3.44,'covalent_grafting',1.347);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (64,6,0.647,'encapsulation',1.093);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (12,1,4.774,'covalent_grafting',2.191);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (97,9,3.834,'wet_impregnation',1.274);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (7,5,4.224,'ion_exchange',1.274);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (111,3,1.932,'co-precipitation',0.412);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (15,1,3.035,'wet_impregnation',1.227);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (20,6,4.406,'covalent_grafting',2.081);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (81,4,0.384,'wet_impregnation',2.196);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (21,2,3.686,'co-precipitation',2.042);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (102,3,0.729,'co-precipitation',1.193);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (88,3,1.399,'encapsulation',2.182);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (55,4,4.652,'ion_exchange',1.891);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (77,5,2.055,'covalent_grafting',1.683);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (9,8,4.508,'ion_exchange',1.134);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (50,4,0.414,'co-precipitation',0.062);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (49,4,2.983,'wet_impregnation',0.028);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (60,4,0.43,'covalent_grafting',0.088);
INSERT INTO supported_catalyst(precatalyst_id,support_id,metal_loading_wt_pct,immobilization_method,leaching_test_ppm) VALUES (68,2,2.619,'encapsulation',0.703);

-- ================================================================
-- catalyst_stability
-- ================================================================
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (28,277,74.83,'leaching',56.86,3,88.45);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (104,209,103.3,'ligand_dissociation',64.31,5,70.76);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (60,28,339.95,'aggregation',13.86,6,85.68);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (103,56,131.84,'sintering',53.27,2,70.67);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (36,237,132.41,'ligand_dissociation',44.88,8,54.8);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (84,277,419.65,'ligand_dissociation',88.37,3,58.15);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (63,247,114.74,'oxidation',86.22,2,68.57);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (50,136,463.99,'unknown',45.95,6,84.13);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (94,285,334.32,'oxidation',18.93,4,60.67);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (8,297,370.51,'ligand_dissociation',72.32,0,52.46);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (62,258,460.5,'leaching',19.17,8,53.93);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (24,36,301.57,'aggregation',82.56,6,55.87);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (114,292,130.65,'leaching',8.58,1,70.54);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (75,290,266.16,'poisoning',23.38,5,61.7);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (51,68,339.13,'poisoning',46.15,1,50.46);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (80,289,498.09,'ligand_dissociation',53.39,8,62.99);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (120,179,441.62,'sintering',38.26,2,71.47);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (70,155,309.72,'unknown',63.86,0,82.73);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (71,154,466.56,'ligand_dissociation',89.5,2,62.96);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (114,55,373.78,'sintering',29.51,9,60.32);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (44,105,346.87,'unknown',28.76,7,62.3);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (117,27,55.23,'oxidation',79.64,0,50.17);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (99,67,322.19,'poisoning',19.54,7,77.03);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (55,288,14.74,'ligand_dissociation',90.05,2,76.73);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (107,190,295.43,'sintering',43.68,0,65.1);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (116,21,450.47,'sintering',66.39,10,55.04);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (100,287,443.23,'oxidation',92.65,2,95.36);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (31,84,488.34,'unknown',20.93,6,51.21);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (95,171,393.37,'oxidation',77.2,3,63.07);
INSERT INTO catalyst_stability(precatalyst_id,assay_id,half_life_h,deactivation_mode,residual_activity_pct,recycle_number,activity_after_recycle_pct) VALUES (101,56,197.45,'ligand_dissociation',82.27,3,59.78);

-- ================================================================
-- assay_additive
-- ================================================================
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (236,'AgBF4','cocatalyst',0.6531,21.0113);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (180,'Bu4NBr','promoter',1.4096,28.1662);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (157,'DMAP','cocatalyst',0.8699,47.0778);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (117,'HCl','acid',1.2503,15.7465);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (115,'AgBF4','cocatalyst',1.6758,15.8899);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (13,'DMAP','cocatalyst',0.8883,29.4193);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (99,'NaOAc','base',0.9567,22.6658);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (205,'DMAP','cocatalyst',1.0468,39.893);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (169,'HCl','acid',1.3348,14.9055);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (143,'CuI','cocatalyst',0.7036,41.1027);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (36,'DMAP','cocatalyst',1.362,12.0074);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (261,'DMAP','cocatalyst',0.3373,3.2645);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (275,'BHT','inhibitor',1.242,38.656);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (170,'BHT','inhibitor',0.8582,31.8585);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (15,'DMAP','cocatalyst',1.4508,19.8149);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (60,'Bu4NBr','promoter',0.5258,33.1468);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (134,'PPh3','ligand_excess',1.7907,43.1616);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (92,'Et3N','base',1.5679,11.7232);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (298,'AgBF4','cocatalyst',0.9559,28.3129);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (136,'Et3N','base',0.9401,40.2694);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (20,'AgBF4','cocatalyst',1.9764,30.1772);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (56,'BHT','inhibitor',1.2447,36.2444);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (223,'AgBF4','cocatalyst',0.8821,45.4359);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (177,'BHT','inhibitor',1.7996,37.4391);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (161,'BHT','inhibitor',0.9276,37.8371);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (224,'p-TsOH','acid',1.5433,26.5437);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (262,'DMAP','cocatalyst',0.5855,4.7967);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (198,'p-TsOH','acid',0.5073,17.4565);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (296,'AgBF4','cocatalyst',0.2071,8.3907);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (98,'Bu4NBr','promoter',1.4032,35.6145);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (131,'Et3N','base',0.859,17.2132);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (23,'BHT','inhibitor',0.8608,11.1349);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (1,'Bu4NBr','promoter',0.8095,38.72);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (267,'PPh3','ligand_excess',1.7206,38.5141);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (276,'Bu4NBr','promoter',0.9801,47.1943);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (101,'p-TsOH','acid',1.5193,42.8189);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (187,'Bu4NBr','promoter',1.0995,36.9971);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (221,'CuI','cocatalyst',1.8007,24.9232);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (64,'p-TsOH','acid',0.8999,2.4222);
INSERT INTO assay_additive(assay_id,additive_name,additive_role,amount_equiv,concentration_mM) VALUES (154,'NaOAc','base',1.3543,40.109);

-- ================================================================
-- isomerization_metrics
-- ================================================================
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (85,46.04,39.986,1.915797,'{"1-oct": 74.0, "2-oct": 26.4, "3-oct": 6.6}',409.709,1056.63);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (240,92.059,54.491,4.160666,'{"1-oct": 69.4, "2-oct": 29.3, "3-oct": 9.1}',568.7738,1334.69);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (66,80.615,47.672,2.469138,'{"1-oct": 50.7, "2-oct": 27.0, "3-oct": 17.5}',354.1038,2206.53);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (274,26.5,71.714,1.294931,'{"1-oct": 55.2, "2-oct": 10.6, "3-oct": 17.8}',377.1197,1850.48);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (14,33.638,24.848,4.009379,'{"1-oct": 68.0, "2-oct": 15.5, "3-oct": 5.2}',278.8677,2646.94);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (202,91.105,15.993,3.628366,'{"1-oct": 67.6, "2-oct": 22.9, "3-oct": 12.4}',395.9765,2286.59);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (289,79.47,16.514,1.185822,'{"1-oct": 63.3, "2-oct": 19.5, "3-oct": 13.0}',556.5119,953.31);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (43,51.913,62.215,1.720877,'{"1-oct": 50.1, "2-oct": 12.4, "3-oct": 7.9}',565.2554,849.2);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (220,28.967,47.51,3.834729,'{"1-oct": 59.4, "2-oct": 24.5, "3-oct": 19.6}',156.2684,688.33);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (70,59.348,29.81,0.592578,'{"1-oct": 47.2, "2-oct": 10.3, "3-oct": 13.0}',163.3529,721.08);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (237,40.573,78.201,2.811459,'{"1-oct": 74.7, "2-oct": 19.8, "3-oct": 18.1}',560.9597,422.52);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (94,63.055,42.858,2.258297,'{"1-oct": 77.6, "2-oct": 19.6, "3-oct": 17.3}',155.6473,201.56);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (26,50.053,15.186,3.184284,'{"1-oct": 62.5, "2-oct": 16.1, "3-oct": 19.9}',52.3512,490.13);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (134,28.884,63.511,3.070956,'{"1-oct": 60.9, "2-oct": 19.0, "3-oct": 11.6}',634.6853,715.78);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (195,84.512,79.302,1.596363,'{"1-oct": 69.6, "2-oct": 29.0, "3-oct": 8.1}',500.6116,1848.41);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (168,35.827,56.23,0.86958,'{"1-oct": 40.1, "2-oct": 19.0, "3-oct": 13.9}',147.3127,271.44);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (109,41.844,26.203,3.564084,'{"1-oct": 67.5, "2-oct": 28.5, "3-oct": 16.8}',565.3602,1389.39);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (233,66.879,56.283,4.674975,'{"1-oct": 65.9, "2-oct": 28.2, "3-oct": 17.4}',345.8598,1656.46);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (173,25.356,21.615,1.607298,'{"1-oct": 51.5, "2-oct": 12.5, "3-oct": 15.3}',601.6766,1729.16);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (143,72.48,75.987,2.552314,'{"1-oct": 41.6, "2-oct": 18.6, "3-oct": 9.8}',400.0982,287.3);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (216,38.778,16.393,4.813364,'{"1-oct": 78.0, "2-oct": 30.0, "3-oct": 15.1}',670.4073,1746.84);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (130,40.213,12.816,3.805717,'{"1-oct": 76.6, "2-oct": 13.6, "3-oct": 13.8}',381.6957,1971.95);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (42,67.609,44.421,0.547088,'{"1-oct": 66.8, "2-oct": 27.2, "3-oct": 9.9}',284.8892,1033.26);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (241,72.026,30.175,4.731448,'{"1-oct": 58.2, "2-oct": 16.3, "3-oct": 9.8}',652.7172,1672.78);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (10,92.764,38.292,2.621522,'{"1-oct": 61.7, "2-oct": 18.3, "3-oct": 7.8}',790.6142,1990.1);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (277,47.133,62.951,3.164503,'{"1-oct": 62.0, "2-oct": 28.6, "3-oct": 11.6}',610.3925,650.5);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (27,72.369,18.5,4.868419,'{"1-oct": 46.3, "2-oct": 21.0, "3-oct": 13.3}',491.0086,755.93);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (180,26.991,79.458,4.573356,'{"1-oct": 73.3, "2-oct": 20.0, "3-oct": 15.7}',374.5438,396.53);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (115,58.165,29.14,4.190147,'{"1-oct": 62.1, "2-oct": 17.7, "3-oct": 18.8}',784.3933,769.01);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (36,58.118,71.553,4.333732,'{"1-oct": 56.6, "2-oct": 28.7, "3-oct": 12.6}',228.2354,2380.52);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (21,81.541,29.799,1.562924,'{"1-oct": 59.6, "2-oct": 13.0, "3-oct": 13.1}',473.6808,2996.76);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (16,45.884,48.634,2.762807,'{"1-oct": 47.5, "2-oct": 23.9, "3-oct": 13.6}',369.7222,999.24);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (127,37.517,64.288,0.313872,'{"1-oct": 72.5, "2-oct": 17.7, "3-oct": 15.0}',598.3171,2130.42);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (103,81.556,78.657,2.52711,'{"1-oct": 63.6, "2-oct": 27.4, "3-oct": 18.1}',39.2455,1531.76);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (11,53.023,46.817,2.338948,'{"1-oct": 66.2, "2-oct": 13.1, "3-oct": 12.0}',580.7306,1259.44);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (79,92.69,33.699,3.494253,'{"1-oct": 74.1, "2-oct": 27.2, "3-oct": 10.7}',523.371,2562.71);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (123,43.75,60.31,3.821069,'{"1-oct": 42.7, "2-oct": 22.6, "3-oct": 18.8}',699.1826,155.9);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (65,94.807,62.274,2.22646,'{"1-oct": 74.9, "2-oct": 18.9, "3-oct": 15.4}',87.7701,1919.56);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (243,87.757,13.219,4.001103,'{"1-oct": 45.8, "2-oct": 20.6, "3-oct": 13.5}',241.7605,1155.78);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (59,79.439,21.899,0.486945,'{"1-oct": 49.6, "2-oct": 28.3, "3-oct": 7.1}',697.9633,1878.15);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (112,54.586,27.778,1.351101,'{"1-oct": 76.0, "2-oct": 23.6, "3-oct": 7.4}',17.424,2423.67);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (239,53.13,34.19,2.979101,'{"1-oct": 50.0, "2-oct": 26.9, "3-oct": 8.0}',514.7616,1301.71);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (132,48.852,43.825,1.262308,'{"1-oct": 79.7, "2-oct": 15.9, "3-oct": 19.7}',461.8189,1745.7);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (189,69.367,29.214,2.873052,'{"1-oct": 42.0, "2-oct": 22.1, "3-oct": 12.5}',551.7816,2246.77);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (86,87.812,30.034,4.014415,'{"1-oct": 65.5, "2-oct": 22.4, "3-oct": 15.2}',489.5813,1089.35);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (84,74.07,56.143,4.207852,'{"1-oct": 65.9, "2-oct": 16.2, "3-oct": 11.6}',506.316,2715.04);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (160,63.468,61.265,0.541654,'{"1-oct": 47.0, "2-oct": 12.6, "3-oct": 13.1}',243.1373,2255.07);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (56,92.862,47.16,4.576086,'{"1-oct": 73.0, "2-oct": 19.6, "3-oct": 17.1}',666.0734,808.06);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (297,75.992,33.71,0.664332,'{"1-oct": 78.7, "2-oct": 27.2, "3-oct": 15.9}',770.6857,465.23);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (295,93.496,77.709,4.042479,'{"1-oct": 40.6, "2-oct": 20.7, "3-oct": 11.8}',298.9623,2382.51);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (193,70.462,57.064,2.964344,'{"1-oct": 44.3, "2-oct": 14.7, "3-oct": 5.4}',659.7097,2823.86);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (204,86.318,49.299,4.584754,'{"1-oct": 73.0, "2-oct": 28.2, "3-oct": 9.5}',184.8801,236.49);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (102,50.622,19.784,4.736682,'{"1-oct": 43.9, "2-oct": 27.7, "3-oct": 7.0}',250.448,1503.24);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (39,54.023,56.934,3.741387,'{"1-oct": 69.7, "2-oct": 13.1, "3-oct": 11.2}',757.3195,1286.42);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (125,27.427,44.254,2.099768,'{"1-oct": 54.8, "2-oct": 18.9, "3-oct": 19.3}',761.702,146.51);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (53,84.159,16.955,3.459833,'{"1-oct": 54.3, "2-oct": 18.0, "3-oct": 7.8}',440.128,2934.64);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (155,29.162,69.362,2.328115,'{"1-oct": 63.9, "2-oct": 10.4, "3-oct": 16.8}',533.5873,1943.03);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (62,38.268,18.815,2.866432,'{"1-oct": 48.3, "2-oct": 14.3, "3-oct": 18.0}',64.202,2307.21);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (290,44.642,20.329,4.512602,'{"1-oct": 45.8, "2-oct": 12.6, "3-oct": 8.8}',12.2401,2582.3);
INSERT INTO isomerization_metrics(assay_id,internal_olefin_conv_pct,terminal_olefin_selectivity_pct,double_bond_migration_rate_h_inv,isomer_distribution_json,tof_isomerization_h_inv,ton_isomerization) VALUES (22,33.087,56.274,0.226323,'{"1-oct": 49.5, "2-oct": 16.5, "3-oct": 7.6}',21.7397,2380.45);

-- ================================================================
-- tandem_metrics
-- ================================================================
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (18,42.763,84.624,8.193,283.1549,746.2408,'isomerization');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (45,75.517,23.009,9.993,529.0696,684.0355,'isomerization');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (244,50.105,77.166,6.5,499.9032,508.5397,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (144,26.656,44.873,10.144,237.0946,225.5348,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (175,24.699,73.224,1.852,76.0074,899.6154,'isomerization');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (40,58.946,56.053,8.643,211.1947,190.566,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (245,81.153,80.879,6.633,551.1893,109.163,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (23,62.029,39.615,8.88,143.3885,805.2467,'isomerization');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (159,79.309,39.508,8.566,86.6335,370.3534,'isomerization');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (151,76.505,74.161,14.631,494.6876,755.6093,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (254,58.972,57.63,10.039,422.2133,83.2962,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (122,69.189,36.629,5.427,23.5414,1050.3421,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (171,66.014,19.871,11.244,583.65,155.5213,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (196,35.059,44.388,5.443,234.6308,879.8354,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (37,61.736,76.834,2.756,457.5728,107.2269,'isomerization');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (152,39.047,61.336,7.542,276.3856,364.1419,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (167,27.967,45.094,4.607,413.522,609.6277,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (76,41.589,30.436,14.774,51.7735,285.0866,'isomerization');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (203,73.714,68.491,4.697,89.5909,621.9931,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (15,32.299,41.615,10.703,310.1522,1008.3573,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (236,25.045,75.324,1.113,30.8701,1109.3368,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (255,60.303,55.138,10.788,262.2625,182.4494,'isomerization');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (215,87.634,27.031,14.24,286.8562,843.0515,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (174,26.169,74.114,4.028,361.5453,652.5569,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (104,80.937,67.206,3.713,471.8884,137.8363,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (154,27.982,50.697,13.636,222.6377,886.486,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (211,77.053,31.539,2.623,134.4176,742.7588,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (8,25.275,81.59,9.605,289.0928,698.2958,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (20,51.423,79.691,8.685,388.473,768.2,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (161,42.13,45.783,7.299,386.2034,965.7791,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (138,23.932,50.514,5.001,282.11,115.4236,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (146,25.371,75.498,12.902,376.7049,633.128,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (224,60.623,81.796,11.214,43.7932,1095.4075,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (282,65.629,37.507,7.397,107.4994,121.1548,'isomerization');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (164,76.768,73.616,14.745,68.9109,793.0462,'isomerization');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (231,37.342,45.643,6.872,323.1939,232.5581,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (150,84.256,42.119,11.73,413.7607,110.2203,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (25,65.311,19.614,1.87,413.46,376.769,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (29,79.61,82.509,9.239,107.2165,143.7273,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (110,29.9,39.487,14.532,425.1184,500.7517,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (200,69.618,20.93,8.604,393.2261,427.748,'isomerization');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (50,66.908,73.027,11.212,417.5404,655.3523,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (291,66.932,50.594,0.764,199.1423,1143.8447,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (299,86.337,49.039,3.785,99.7879,138.7398,'isomerization');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (95,55.538,52.784,11.21,325.3883,811.2186,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (206,29.173,41.37,2.853,502.1801,936.7625,'isomerization');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (209,70.483,18.058,5.782,437.3597,1165.0269,'none');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (192,39.945,67.398,7.009,329.7265,405.8881,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (182,83.278,28.581,10.335,350.8432,556.687,'hydroformylation');
INSERT INTO tandem_metrics(assay_id,overall_aldehyde_yield_pct,internal_olefin_to_aldehyde_conv_pct,lb_ratio_from_internal,iso_step_tof_h_inv,hf_step_tof_h_inv,bottleneck_step) VALUES (259,74.469,50.203,6.571,113.9937,279.6524,'none');

-- ================================================================
-- selectivity_profile
-- ================================================================
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (71,7,72.128,12.873,17.621429,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (129,1,77.47,16.583,38.959338,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (247,7,93.197,43.589,9.122077,'GC-MS');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (191,5,6.931,70.081,22.889402,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (53,6,19.95,71.409,44.290661,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (265,7,88.737,46.869,49.456244,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (64,3,24.811,68.043,9.563261,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (43,7,82.041,5.255,32.790011,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (83,3,12.701,33.754,44.475431,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (231,5,85.096,35.411,48.686442,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (76,7,66.054,33.694,39.866571,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (224,1,76.308,65.71,3.955561,'GC-MS');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (114,7,52.275,29.588,4.012645,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (231,3,29.811,54.633,21.311542,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (14,4,34.045,4.77,43.503158,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (28,4,58.796,39.71,31.977071,'GC-FID');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (258,3,8.054,57.739,18.171923,'GC-MS');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (121,4,90.562,13.707,30.382569,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (42,3,4.271,6.984,38.927984,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (115,1,35.042,85.503,1.628942,'GC-MS');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (164,1,64.832,85.445,18.606949,'GC-FID');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (172,7,54.949,48.122,19.907722,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (75,2,24.463,11.097,36.786386,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (20,3,49.668,82.305,5.896872,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (242,6,67.18,20.097,30.59774,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (72,7,19.817,13.08,3.711861,'GC-MS');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (241,4,85.476,40.615,4.398659,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (3,1,63.777,64.149,27.504357,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (10,3,84.785,76.771,35.593337,'GC-MS');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (111,7,75.607,46.279,6.076909,'GC-MS');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (77,5,75.454,22.07,24.706157,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (271,4,53.078,33.833,40.18505,'GC-MS');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (57,7,58.523,8.673,15.471443,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (148,2,50.415,69.456,41.168737,'GC-FID');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (155,1,12.781,29.215,3.717509,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (25,2,64.93,31.662,43.899228,'GC-MS');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (215,6,73.171,12.484,25.148161,'GC-FID');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (235,1,79.151,47.111,15.213186,'GC-MS');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (256,5,31.33,64.131,17.307694,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (275,1,80.518,23.304,31.756504,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (264,5,12.766,27.951,26.678567,'GC-MS');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (124,6,56.63,52.678,8.568319,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (74,3,80.198,51.162,41.263561,'GC-FID');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (220,1,8.635,85.421,38.553408,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (181,2,62.206,69.259,20.835173,'GC-FID');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (293,4,47.816,56.818,14.490686,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (96,6,46.397,72.617,34.252692,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (44,5,43.633,62.287,7.912442,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (185,1,46.52,19.158,30.336947,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (270,5,81.98,29.419,49.401288,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (260,7,92.685,12.638,18.533305,'GC-FID');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (260,5,30.997,42.516,13.380909,'GC-MS');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (11,4,14.242,5.504,47.269791,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (241,1,24.337,78.012,7.993386,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (199,3,88.773,65.18,9.499807,'GC-MS');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (130,6,47.837,46.811,24.942998,'HPLC');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (9,3,47.753,9.014,19.668177,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (35,3,91.869,20.148,17.651225,'GC-FID');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (54,7,27.447,54.179,42.144054,'NMR');
INSERT INTO selectivity_profile(assay_id,product_id,selectivity_pct,yield_pct,amount_mmol,quantification_method) VALUES (298,6,27.86,1.728,5.383779,'GC-MS');

-- ================================================================
-- kinetics_datapoint
-- ================================================================
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (1,136,1.0,30.463,3.81951996,81.96,16.623,5.745788,46.984507,85.217324);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (1,136,3.0,22.941,2.52177339,105.86,11.909,9.891998,139.275742,22.227598);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (1,136,6.0,78.879,1.97012466,107.69,14.224,9.395591,153.443383,33.863393);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (2,261,1.0,19.049,0.20223428,62.33,28.83,8.059262,108.673215,26.596396);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (2,261,3.0,55.725,0.69976515,115.88,13.423,3.99025,127.135093,127.177279);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (2,261,6.0,61.718,2.53706762,90.58,20.104,5.67295,100.229594,7.412359);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (3,170,1.0,28.583,4.89951026,95.02,32.073,7.28071,140.728294,8.863837);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (3,170,3.0,38.984,4.83538641,106.97,31.27,5.818581,147.066021,89.610875);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (3,170,6.0,42.673,3.14549718,97.18,33.806,1.56298,139.33811,9.577724);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (4,57,1.0,11.677,2.20575179,85.13,17.105,2.118528,105.345706,93.664319);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (4,57,3.0,38.864,4.2420366,103.64,28.525,5.234964,116.568487,149.727816);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (4,57,6.0,56.527,1.88474706,117.4,18.927,5.377958,113.791912,103.000944);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (5,136,1.0,26.353,0.96212858,74.79,22.765,2.326184,194.853019,48.154112);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (5,136,3.0,31.56,1.0371817,102.3,13.365,3.553151,187.403071,120.333777);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (5,136,6.0,47.306,0.61024865,100.6,15.808,9.803589,165.491717,143.418285);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (6,75,1.0,15.166,1.43886408,102.85,14.508,4.479524,58.724355,74.466493);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (6,75,3.0,28.083,2.69335104,115.98,28.151,1.459002,126.978637,90.090422);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (6,75,6.0,45.911,3.34949999,91.86,25.88,0.619662,88.52726,109.016918);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (7,52,1.0,28.842,0.6881977,117.87,39.139,1.663617,134.049632,132.693881);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (7,52,3.0,39.028,3.25304292,105.35,12.203,2.925612,21.240891,116.465124);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (7,52,6.0,64.353,1.16186878,104.32,34.163,0.469253,185.079468,65.593322);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (8,91,1.0,37.687,0.18266291,110.17,31.73,1.944485,152.310608,131.482149);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (8,91,3.0,31.579,0.18829341,77.9,24.509,9.291703,73.658002,70.880616);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (8,91,6.0,63.859,2.62206836,113.36,6.234,5.091705,61.839045,122.278012);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (9,170,1.0,10.687,2.29511344,75.44,8.262,7.392517,160.245856,87.328277);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (9,170,3.0,50.291,0.87829907,111.37,35.985,8.287199,107.903325,17.576977);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (9,170,6.0,65.117,0.92472122,68.44,13.62,2.555666,59.549203,39.150582);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (10,137,1.0,38.391,1.51042725,103.37,1.446,6.571465,141.626032,14.008028);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (10,137,3.0,24.729,1.5347249,84.32,20.598,8.961672,143.675837,50.091803);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (10,137,6.0,40.284,4.5807358,77.7,24.97,2.269373,35.378069,27.211907);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (11,192,1.0,19.555,2.74662331,88.25,21.963,6.674535,51.498208,40.882487);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (11,192,3.0,50.19,4.36580216,64.91,18.423,7.067285,24.839517,86.804465);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (11,192,6.0,37.779,2.73869859,90.33,23.335,1.583539,72.342351,80.449523);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (12,60,1.0,28.81,3.58487291,89.33,36.057,4.510279,20.570803,24.131929);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (12,60,3.0,36.617,2.81999201,93.53,27.238,3.150879,14.136387,41.896297);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (12,60,6.0,35.136,1.09028864,64.38,17.524,7.03381,112.821066,13.737067);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (13,36,1.0,39.515,2.36088393,77.23,8.019,1.440746,131.88975,110.746977);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (13,36,3.0,58.551,1.87293014,113.48,18.493,9.179439,81.724306,16.636249);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (13,36,6.0,78.386,4.37289405,67.98,34.551,1.274468,198.640887,61.993502);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (14,66,1.0,30.475,1.11422839,60.21,1.887,3.053794,137.964973,83.944574);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (14,66,3.0,41.277,4.11697883,74.85,14.5,2.828932,188.107969,110.128472);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (14,66,6.0,40.078,4.04758144,85.15,30.876,8.849191,12.972701,34.881835);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (15,52,1.0,25.788,2.23275889,100.32,35.016,2.522868,18.404979,68.649608);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (15,52,3.0,41.59,3.77217416,106.56,6.465,9.935486,54.490688,137.87757);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (15,52,6.0,60.925,2.8877966,106.35,32.917,2.44535,176.489081,147.925856);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (16,267,1.0,12.736,1.50320427,63.66,37.992,8.809168,183.199756,95.769005);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (16,267,3.0,37.088,2.47860832,118.34,37.722,6.746291,159.302873,51.216496);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (16,267,6.0,53.735,0.74693882,82.59,30.422,4.787836,171.374777,48.606781);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (17,74,1.0,33.202,4.57379113,93.74,38.744,5.617139,35.477623,40.214485);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (17,74,3.0,28.133,3.23388255,115.33,34.038,1.015394,147.671095,32.619835);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (17,74,6.0,47.081,3.36868593,96.18,35.071,1.962817,154.722319,110.02426);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (18,287,1.0,12.596,1.04523655,114.42,12.824,9.099042,50.243477,32.553436);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (18,287,3.0,49.659,3.73464926,105.26,36.663,6.9867,143.716031,62.511649);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (18,287,6.0,45.77,1.60875343,76.98,19.184,6.522341,68.600234,57.14847);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (19,255,1.0,21.31,4.01428029,103.34,30.704,3.27031,48.594223,50.373693);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (19,255,3.0,21.829,4.32056012,104.48,1.633,5.577784,120.966061,109.401731);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (19,255,6.0,48.284,0.98176272,73.8,23.222,2.532727,114.622081,141.802359);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (20,173,1.0,14.006,4.10813811,117.99,26.026,4.956896,41.964393,120.27145);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (20,173,3.0,26.771,3.60184734,89.3,36.759,5.467155,131.943798,13.516147);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (20,173,6.0,36.522,4.23364022,116.71,27.06,7.666955,88.354522,127.168984);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (21,119,1.0,7.379,0.7559972,73.12,18.784,0.698456,131.168432,140.41604);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (21,119,3.0,56.51,3.29676243,60.94,21.756,4.172251,13.177968,109.717945);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (21,119,6.0,59.108,1.43415599,90.13,28.217,4.362675,188.545263,30.993692);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (22,50,1.0,23.353,1.20560319,97.19,10.844,3.608967,161.037903,16.45779);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (22,50,3.0,58.372,2.29552973,74.59,28.192,3.069749,167.331795,16.689453);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (22,50,6.0,79.625,3.24982236,61.9,16.806,3.833979,100.440969,97.328471);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (23,88,1.0,7.894,4.22680364,98.69,13.92,9.775559,195.029552,134.744726);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (23,88,3.0,56.766,1.14960272,114.08,27.999,5.711163,61.50806,139.003094);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (23,88,6.0,65.799,1.4025847,92.58,26.666,1.87561,171.581244,7.270424);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (24,107,1.0,25.546,3.76152009,102.76,16.534,0.861681,40.865548,39.868468);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (24,107,3.0,53.386,1.94639388,113.79,13.937,7.580532,36.590613,148.329304);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (24,107,6.0,67.587,2.50446347,118.46,3.094,4.427174,169.348185,54.385948);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (25,204,1.0,38.912,1.63255686,98.05,31.558,4.560447,53.346294,85.19047);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (25,204,3.0,35.017,0.92950349,95.15,15.823,7.744457,66.122101,40.735218);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (25,204,6.0,38.308,1.34059218,82.8,31.572,1.627341,84.028175,57.301533);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (26,47,1.0,5.182,1.54202901,81.6,11.521,1.411819,45.604439,70.082333);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (26,47,3.0,42.19,2.04081283,61.58,14.803,1.021336,123.628322,52.042398);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (26,47,6.0,52.336,1.45994491,83.27,4.303,9.021247,181.989439,146.835094);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (27,293,1.0,23.239,3.42689464,70.17,11.488,2.757227,37.727616,29.245073);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (27,293,3.0,31.038,1.49946152,106.96,15.084,9.447801,146.970896,76.891353);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (27,293,6.0,62.75,2.2898503,68.13,1.264,4.017351,169.906543,60.084044);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (28,169,1.0,20.408,2.15365049,109.41,26.39,5.98449,67.082704,92.465634);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (28,169,3.0,47.812,2.3955697,70.66,16.531,3.259463,149.626129,96.770857);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (28,169,6.0,78.549,3.91008987,79.55,11.932,7.880079,79.352952,140.149737);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (29,103,1.0,25.728,2.7285998,100.9,22.454,9.534746,97.708222,107.713222);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (29,103,3.0,37.538,1.45736471,101.57,32.94,7.977003,87.736902,77.398966);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (29,103,6.0,63.5,1.21086382,99.52,28.894,7.91186,24.053376,148.651589);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (30,246,1.0,25.379,2.67230264,115.41,34.916,4.241177,16.985381,145.422066);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (30,246,3.0,48.065,4.06167258,95.63,36.662,1.182757,57.163884,101.380614);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (30,246,6.0,42.485,3.06377683,93.79,26.156,6.502762,193.694115,53.081522);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (31,221,1.0,8.708,0.49393419,73.32,30.127,5.624135,140.656238,37.049602);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (31,221,3.0,34.965,2.31585298,100.77,27.927,1.592375,199.563518,75.001807);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (31,221,6.0,48.294,4.60281718,65.15,33.421,7.328492,76.182444,54.744669);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (32,106,1.0,23.239,1.74215318,65.86,29.158,4.579227,22.763125,11.479043);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (32,106,3.0,48.431,0.11390299,80.58,5.265,8.020496,186.685265,112.370975);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (32,106,6.0,58.22,2.75999954,79.86,17.628,4.674336,161.5736,96.315246);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (33,96,1.0,27.417,2.16124013,61.75,24.95,2.053512,122.5186,61.381188);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (33,96,3.0,48.189,1.02971661,105.14,32.54,0.719381,29.332889,131.437003);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (33,96,6.0,43.413,1.63059857,87.45,11.232,8.640102,110.265854,97.670745);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (34,199,1.0,26.396,2.93543657,80.88,33.975,6.211891,164.610268,107.368312);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (34,199,3.0,31.898,3.07280809,65.09,6.224,1.26683,68.0222,31.541455);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (34,199,6.0,66.205,2.55461352,85.09,6.377,3.898729,45.293203,97.147738);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (35,89,1.0,24.422,2.44872049,68.42,13.269,4.56491,20.18614,57.06068);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (35,89,3.0,20.383,0.68353704,108.91,38.589,5.103836,104.044271,104.281017);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (35,89,6.0,53.703,4.19961912,89.32,4.224,0.405521,154.600758,47.353037);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (36,141,1.0,12.87,1.44406288,106.84,23.06,7.748222,104.109535,79.066867);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (36,141,3.0,42.909,1.34017666,92.59,39.645,5.466229,153.789386,115.200599);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (36,141,6.0,54.861,1.09349113,85.51,29.704,6.57135,57.031009,131.847428);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (37,17,1.0,20.741,1.74353631,109.0,18.124,9.940181,157.370013,39.357178);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (37,17,3.0,52.428,2.94003156,81.04,28.719,6.364429,41.536507,25.18907);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (37,17,6.0,44.298,1.03550666,63.56,14.682,2.882742,112.366024,51.929774);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (38,150,1.0,15.127,1.33744799,111.48,39.434,6.825063,28.092781,144.601939);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (38,150,3.0,51.428,4.59392479,119.55,34.815,1.356193,174.554971,41.2032);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (38,150,6.0,67.013,4.14258053,105.69,27.373,4.945641,119.710851,43.963987);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (39,213,1.0,18.131,0.37850585,107.68,30.986,4.088223,152.462453,105.732024);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (39,213,3.0,55.093,2.27402355,89.28,23.696,8.702187,170.961792,18.50554);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (39,213,6.0,78.747,3.17456789,101.84,34.154,7.977211,85.566015,145.378644);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (40,109,1.0,22.315,1.61500288,77.02,22.345,1.392883,171.960289,119.30403);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (40,109,3.0,55.766,3.81150786,62.76,25.421,8.383352,13.093457,139.767767);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (40,109,6.0,42.109,2.28313416,119.51,17.684,9.957371,182.787371,132.911426);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (41,155,1.0,10.564,4.66369509,76.44,26.529,2.578854,80.650316,136.051039);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (41,155,3.0,26.621,1.98231149,78.33,28.278,2.418024,134.542193,107.036216);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (41,155,6.0,35.049,2.38455673,67.96,9.821,6.831829,11.76452,105.861581);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (42,62,1.0,39.585,2.11214735,67.93,3.762,3.892392,148.845043,19.85194);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (42,62,3.0,32.534,4.40506399,68.23,31.165,7.556262,35.297784,148.976323);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (42,62,6.0,41.428,2.65301087,60.51,26.351,4.456984,147.262085,96.071606);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (43,78,1.0,37.196,3.08076399,86.54,9.473,8.97627,36.602497,22.857797);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (43,78,3.0,49.2,1.75832667,85.76,31.852,2.553085,132.477908,40.984219);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (43,78,6.0,62.045,3.60617701,77.1,37.71,0.365562,170.943304,131.994942);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (44,106,1.0,23.121,2.54810331,104.87,12.526,0.640234,180.603386,143.427369);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (44,106,3.0,39.796,0.56460557,89.97,24.163,5.330036,195.76242,148.097967);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (44,106,6.0,77.027,0.66078242,111.65,23.167,3.717583,139.758989,115.595261);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (45,38,1.0,5.584,0.33859531,75.73,2.553,0.698642,159.9651,78.458538);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (45,38,3.0,45.143,2.50574378,84.93,28.371,0.916035,111.947315,94.326823);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (45,38,6.0,47.486,1.55022452,90.68,8.925,8.099795,111.914133,61.656068);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (46,34,1.0,15.856,2.18799273,117.21,10.307,2.52035,185.679273,21.818054);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (46,34,3.0,44.492,0.27608807,99.96,26.664,1.838894,12.406345,24.895711);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (46,34,6.0,35.511,2.48256825,80.8,21.172,8.242818,59.256923,58.921067);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (47,138,1.0,30.653,0.59116554,113.99,14.065,4.350313,109.5323,43.127699);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (47,138,3.0,59.002,3.13803663,89.77,20.92,0.648847,173.278359,29.197802);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (47,138,6.0,42.079,3.86687144,113.66,27.291,1.241803,150.748193,5.372433);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (48,7,1.0,13.559,2.35935118,82.98,6.853,9.318485,172.922188,85.165394);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (48,7,3.0,56.558,3.70358847,85.16,13.55,4.22094,146.854705,44.332404);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (48,7,6.0,38.505,1.86466803,90.12,36.176,1.875509,162.824224,147.30501);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (49,206,1.0,7.412,2.3260058,76.94,33.949,3.340279,115.087365,6.15553);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (49,206,3.0,28.027,2.8194699,78.23,25.286,4.692874,122.421278,76.537298);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (49,206,6.0,69.768,0.9779167,114.03,30.659,2.526756,11.211798,64.455236);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (50,120,1.0,23.954,3.18007326,101.61,1.374,3.416672,154.196539,59.55985);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (50,120,3.0,49.523,1.53824568,72.31,39.342,4.256177,192.625162,146.021089);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (50,120,6.0,41.407,1.39984653,62.63,10.027,8.470492,88.480793,134.858801);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (51,235,1.0,39.109,0.42542719,65.73,6.207,8.217633,24.217792,87.334006);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (51,235,3.0,37.399,4.82112716,74.21,11.179,3.218588,162.155196,106.605213);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (51,235,6.0,68.091,1.59097054,76.32,3.913,2.106855,158.188027,89.782665);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (52,80,1.0,8.698,2.24838417,78.84,5.709,3.647046,156.363982,70.527976);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (52,80,3.0,38.534,4.26255845,65.43,32.496,3.111728,143.893913,92.478861);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (52,80,6.0,44.676,4.28300978,68.9,28.735,9.68716,85.286448,12.09784);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (53,154,1.0,14.106,4.95339243,61.86,16.771,4.576792,152.134905,41.228631);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (53,154,3.0,38.482,4.01967987,68.39,1.466,8.320686,196.687775,23.953709);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (53,154,6.0,72.065,1.86182648,97.82,26.143,5.865006,59.175924,122.848328);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (54,12,1.0,39.901,0.98955393,98.76,32.563,1.010589,170.982333,122.288645);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (54,12,3.0,24.901,4.71146102,63.04,37.041,4.388248,147.641861,76.938327);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (54,12,6.0,52.223,2.13389343,81.24,36.424,2.82232,94.742172,26.551554);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (55,126,1.0,27.655,2.49495916,112.97,19.682,0.968443,82.772902,65.789049);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (55,126,3.0,45.706,3.98619251,74.95,39.769,5.482201,13.710697,60.462222);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (55,126,6.0,67.102,2.39894251,106.89,14.417,5.699946,71.10484,44.213174);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (56,14,1.0,16.161,1.09588192,113.75,31.363,0.680053,198.390951,81.767682);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (56,14,3.0,50.674,4.99802913,118.44,4.905,6.602958,60.64013,123.361348);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (56,14,6.0,76.277,0.28048737,119.78,9.557,8.4804,161.504231,56.446672);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (57,89,1.0,11.164,2.96300503,108.37,28.207,9.148402,15.359248,106.581316);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (57,89,3.0,57.902,2.81846883,93.79,8.341,9.881261,177.509008,76.372875);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (57,89,6.0,48.907,2.45269166,65.42,10.072,2.266209,110.025218,5.099107);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (58,104,1.0,33.226,1.70445446,70.65,32.295,8.695349,21.315633,26.418243);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (58,104,3.0,48.188,0.70912167,66.66,21.526,3.71241,23.781005,107.158011);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (58,104,6.0,64.796,2.9304973,80.19,13.582,9.761021,149.146885,68.345916);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (59,250,1.0,27.721,0.87183915,118.12,28.049,9.295568,159.528441,37.369396);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (59,250,3.0,43.558,0.8775828,78.41,27.851,1.360749,148.477882,142.574275);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (59,250,6.0,77.691,1.95861553,119.66,38.642,0.420589,124.453847,138.550541);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (60,114,1.0,27.388,0.52144705,89.77,13.916,0.870286,75.893924,51.330208);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (60,114,3.0,45.447,4.81543504,109.3,27.131,7.319931,73.792398,6.652365);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (60,114,6.0,44.436,3.46618721,81.03,31.694,7.232095,19.148017,68.54192);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (61,215,1.0,38.919,4.42287544,89.58,15.77,5.505637,29.271426,74.525941);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (61,215,3.0,54.562,3.25519685,101.23,7.344,0.829723,170.694872,47.761749);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (61,215,6.0,49.342,4.758359,64.45,7.634,3.817033,149.077166,84.321707);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (62,48,1.0,16.828,4.92639522,113.59,28.476,4.370101,134.190683,93.061056);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (62,48,3.0,37.368,0.26872516,79.87,39.002,4.151871,115.281362,139.208172);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (62,48,6.0,59.306,3.30332887,77.84,4.741,3.989732,114.4359,76.1875);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (63,28,1.0,17.629,2.13860218,77.67,26.819,6.042134,47.938212,8.731675);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (63,28,3.0,26.833,1.45976552,64.92,33.907,3.152699,85.518796,75.919038);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (63,28,6.0,64.747,0.45659325,92.65,8.21,8.866378,80.186316,69.637414);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (64,135,1.0,20.391,1.31774065,110.22,23.006,1.596194,142.329481,19.02188);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (64,135,3.0,46.726,4.04109261,84.84,30.502,2.352376,21.586912,61.130384);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (64,135,6.0,58.516,4.82817289,101.22,37.518,5.769871,54.771984,48.333556);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (65,203,1.0,36.597,3.57181419,90.13,36.118,8.024458,138.731628,94.939602);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (65,203,3.0,24.811,3.78618659,70.37,39.39,9.724432,163.607537,23.29697);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (65,203,6.0,54.052,4.9414114,86.12,39.893,6.30954,168.480543,42.393522);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (66,35,1.0,8.046,2.78226466,93.12,34.408,5.244913,184.260763,6.792751);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (66,35,3.0,48.016,2.93829286,106.9,5.388,1.581459,117.652846,89.488178);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (66,35,6.0,78.417,0.50191979,66.34,31.402,7.878882,174.820301,132.619689);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (67,211,1.0,14.245,3.27428357,94.32,19.449,1.804777,86.565052,94.645451);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (67,211,3.0,47.233,2.00919777,83.75,35.279,6.936086,19.365285,73.906638);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (67,211,6.0,47.086,1.86283104,80.27,31.952,3.178398,170.140848,129.444044);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (68,51,1.0,39.037,1.14055911,78.03,30.005,7.762906,70.96498,110.675915);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (68,51,3.0,44.199,0.44734496,86.5,36.624,4.130987,102.047463,79.892706);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (68,51,6.0,51.826,0.2819729,107.49,3.559,7.124737,86.643177,118.174882);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (69,269,1.0,35.777,0.14571185,71.57,33.484,8.386069,57.40315,71.185057);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (69,269,3.0,56.721,3.52346509,76.44,33.117,5.100751,130.727864,22.961565);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (69,269,6.0,36.375,1.86296134,95.64,7.926,8.71776,121.507247,55.715186);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (70,84,1.0,34.318,1.29404098,109.85,4.525,0.37176,19.433698,128.804092);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (70,84,3.0,51.193,1.07237862,73.28,9.779,2.146637,133.801593,79.425779);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (70,84,6.0,73.908,4.83572464,100.93,19.49,1.409909,42.908125,121.125397);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (71,115,1.0,13.834,4.02562276,78.33,38.714,6.463129,90.523292,59.588941);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (71,115,3.0,33.948,1.26074155,88.0,27.411,8.260677,85.458983,19.835255);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (71,115,6.0,58.018,3.31211491,110.6,15.595,6.508687,125.71952,48.279009);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (72,56,1.0,21.861,1.68208199,76.59,13.68,2.841161,134.662725,143.067231);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (72,56,3.0,46.059,0.94261205,91.04,10.372,0.662069,172.889918,122.454201);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (72,56,6.0,53.184,1.59860911,68.4,1.993,5.023991,66.16488,136.502177);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (73,208,1.0,18.59,0.17755971,102.48,23.31,1.98016,148.044477,37.242663);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (73,208,3.0,41.385,3.92470038,114.39,27.203,5.122417,170.629656,126.892611);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (73,208,6.0,74.442,0.90649815,65.86,5.99,2.660653,163.585335,115.623142);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (74,94,1.0,38.142,4.4980562,99.27,9.668,2.310946,175.572124,65.968522);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (74,94,3.0,55.474,1.85904047,95.13,19.087,1.266037,20.198621,96.987528);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (74,94,6.0,61.114,3.10365282,88.33,8.587,1.286178,139.332575,81.826583);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (75,212,1.0,6.892,4.27134461,68.24,8.812,4.150999,118.186682,136.460036);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (75,212,3.0,38.303,1.5826009,102.94,31.379,4.92705,129.896227,30.639519);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (75,212,6.0,63.552,0.02456279,76.41,30.687,1.769197,155.25191,75.988678);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (76,46,1.0,9.529,2.16912336,85.76,17.732,4.826263,10.887136,82.398477);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (76,46,3.0,49.226,4.75039301,113.52,30.517,5.357234,13.404064,5.597956);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (76,46,6.0,68.012,1.13210229,112.62,13.172,1.116811,105.633931,49.386688);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (77,34,1.0,33.835,1.49171307,77.45,29.385,6.004062,74.188679,133.756236);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (77,34,3.0,59.819,1.71432146,114.08,15.011,1.965418,190.136027,138.139784);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (77,34,6.0,53.153,1.14286301,103.63,6.117,7.367359,122.041639,29.502788);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (78,188,1.0,29.889,3.96084365,82.51,25.973,7.735372,128.395608,91.11899);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (78,188,3.0,21.918,0.54145914,110.17,2.881,1.246319,94.419715,22.921284);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (78,188,6.0,46.373,3.50963921,72.33,27.744,0.192115,89.965577,19.642078);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (79,267,1.0,14.449,3.02856605,68.23,33.395,1.138651,146.565583,22.071512);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (79,267,3.0,24.561,0.53221228,71.92,8.79,2.70364,109.39776,34.242613);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (79,267,6.0,66.655,1.47746065,62.36,20.358,2.15617,187.293625,52.937524);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (80,2,1.0,5.446,0.44592519,66.63,23.392,4.99163,190.394743,118.031302);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (80,2,3.0,23.002,3.61815767,114.29,26.129,4.621837,195.685281,43.298128);
INSERT INTO kinetics_datapoint(kinetics_id,assay_id,time_h,conversion_pct,rate_mmol_L_h,temp_c,pressure_bar,catalyst_conc_mM,substrate_conc_mM,product_conc_mM) VALUES (80,2,6.0,37.254,4.06607889,112.45,34.238,3.666125,138.585641,66.769305);

-- ================================================================
-- inhibition_study
-- ================================================================
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (15,'PPh3 excess',17.0398,4.45157,'competitive',1.70401225);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (22,'pyridine',7.2148,2.189135,'uncompetitive',1.75696323);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (12,'pyridine',16.3178,0.915164,'mixed',0.80056043);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (59,'thiophene',16.7306,3.449822,'mixed',1.5998182);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (22,'PPh3 excess',2.737,3.632329,'non_competitive',0.20751584);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (76,'water',16.0651,3.392287,'non_competitive',1.22268518);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (46,'chloride',0.6734,3.422636,'non_competitive',0.966211);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (63,'PPh3 excess',17.7631,2.203999,'competitive',0.52329957);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (41,'CO excess',14.1209,3.389967,'non_competitive',1.95579333);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (44,'O2',10.5098,3.5032,'competitive',0.86575253);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (32,'water',6.9804,3.381802,'mixed',0.29739404);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (72,'chloride',1.1859,3.21735,'non_competitive',1.01118459);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (61,'water',17.4014,0.375251,'mixed',0.64133557);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (43,'thiophene',1.102,1.11431,'mixed',0.80661366);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (31,'PPh3 excess',9.236,4.006505,'mixed',0.17613092);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (64,'water',6.3896,4.903373,'competitive',0.20537638);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (53,'CO excess',11.1869,0.001848,'competitive',1.58358739);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (80,'thiophene',17.8132,2.812101,'mixed',1.90071522);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (47,'CO excess',16.3501,4.221743,'uncompetitive',1.12034568);
INSERT INTO inhibition_study(kinetics_id,inhibitor_name,inhibitor_conc_mM,ki_mM,inhibition_type,inhibition_constant) VALUES (80,'chloride',9.5154,3.286179,'mixed',0.22813531);

-- ================================================================
-- flow_reactor_config
-- ================================================================
INSERT INTO flow_reactor_config(config_name,reactor_brand,reactor_model,channel_volume_mL,max_pressure_bar,max_temp_c,material,mixing_type,residence_time_s) VALUES ('Vapourtec R-Series','Vapourtec','R4',2.0,100,150,'PTFE','T-mixer',457.9988);
INSERT INTO flow_reactor_config(config_name,reactor_brand,reactor_model,channel_volume_mL,max_pressure_bar,max_temp_c,material,mixing_type,residence_time_s) VALUES ('ThalesNano H-Cube','ThalesNano','H-Cube Pro',10.0,150,200,'stainless_steel','packed_bed',140.8308);
INSERT INTO flow_reactor_config(config_name,reactor_brand,reactor_model,channel_volume_mL,max_pressure_bar,max_temp_c,material,mixing_type,residence_time_s) VALUES ('Syrris Asia Flow','Syrris','Asia',0.5,50,120,'glass','chip',211.4007);
INSERT INTO flow_reactor_config(config_name,reactor_brand,reactor_model,channel_volume_mL,max_pressure_bar,max_temp_c,material,mixing_type,residence_time_s) VALUES ('Chemtrix Kiloflow','Chemtrix','Kiloflow',500.0,200,250,'hastelloy','static_mixer',499.6315);
INSERT INTO flow_reactor_config(config_name,reactor_brand,reactor_model,channel_volume_mL,max_pressure_bar,max_temp_c,material,mixing_type,residence_time_s) VALUES ('Corning AFR','Corning','G1 Advanced',2.5,90,180,'glass','heartbeat',579.0159);

-- ================================================================
-- flow_assay
-- ================================================================
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (150,4,4.2102,9.9172,106.5833,55.3486,18.29,2.525,73.319,34.39,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (281,5,3.0702,6.776,177.4642,25.7012,50.675,2.924,25.5756,85.6,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (268,3,2.3189,3.1008,88.4216,42.3008,61.132,1.546,70.4479,173.53,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (192,2,1.1276,14.4305,140.4561,55.3503,14.95,2.986,97.5428,43.78,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (55,1,3.8278,11.4645,120.7332,56.6177,58.259,2.86,89.4927,111.44,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (24,1,2.6614,0.9928,37.6121,40.545,19.993,3.126,16.9326,64.46,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (85,2,4.213,13.9666,66.0767,45.462,7.423,3.349,11.1455,174.93,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (253,5,2.0055,10.463,161.3984,42.0716,56.97,0.664,38.7767,89.15,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (72,5,0.3636,15.0016,48.5866,52.2621,69.533,2.051,23.3293,130.42,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (210,5,2.7784,12.266,157.4679,57.8931,27.063,1.121,68.5832,45.53,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (131,5,0.6848,1.2924,63.0313,16.5901,17.07,3.461,1.5589,98.6,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (101,1,0.8531,6.7913,19.6625,56.0105,51.171,2.817,49.5645,118.81,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (97,1,3.9418,6.6983,51.7928,11.8483,10.113,2.268,42.1772,112.04,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (62,3,1.1839,4.6604,73.0579,22.2871,21.383,3.134,53.5194,199.36,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (202,1,3.3778,9.1905,181.8543,37.2084,51.585,3.856,68.5726,70.98,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (111,4,1.3573,14.6175,14.6941,31.4952,62.787,2.3,51.3648,102.49,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (235,2,1.6695,2.1057,28.2317,58.3261,62.999,2.366,63.0664,50.05,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (98,4,4.1948,4.5088,167.4622,52.8396,60.603,2.023,81.8587,23.7,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (174,1,2.3502,6.9684,26.629,4.2018,64.566,2.453,57.9213,53.25,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (56,4,2.0014,12.7892,92.2748,1.9966,55.497,2.372,64.5009,127.49,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (213,1,1.8527,10.3053,65.069,41.4668,50.492,1.485,92.7424,82.47,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (64,4,0.866,4.7874,151.8832,48.0095,68.71,1.532,63.7705,66.63,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (231,1,2.8123,11.3239,33.4147,1.2968,49.749,2.38,94.751,67.89,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (259,2,2.122,13.0957,107.385,10.4963,21.559,3.422,20.2383,44.46,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (69,5,2.3602,11.2185,65.224,4.9744,12.365,3.04,49.2319,72.86,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (256,2,0.5902,12.5806,181.0225,19.7494,38.798,2.657,31.2619,120.99,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (3,3,4.7974,3.7885,69.5108,47.3539,58.415,2.743,28.3913,78.3,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (272,4,2.368,7.4955,68.0396,33.5486,18.183,2.623,84.3375,173.16,0);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (25,5,1.0625,14.8041,129.0576,43.9181,71.908,3.474,63.531,164.4,1);
INSERT INTO flow_assay(assay_id,config_id,flow_rate_total_mLmin,catalyst_stream_conc_mM,substrate_stream_conc_mM,residence_time_min,back_pressure_bar,steady_state_time_h,productivity_g_Lh,catalyst_stability_h,inline_analysis_used) VALUES (284,5,1.1425,1.2148,59.5171,53.7452,45.476,2.789,15.7147,84.57,1);

-- ================================================================
-- transition_state
-- ================================================================
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (18,'alkene_coordination',101.0084,-0.1776,-330.503,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (60,'isomerization_step',102.275,45.7517,-464.973,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (65,'beta_hydride_elimination',156.1744,-48.7941,-317.371,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (66,'C-H_activation',130.972,44.2041,-497.031,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (12,'C-H_activation',43.1848,-69.2076,-210.435,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (51,'reductive_elimination',46.1668,-29.2888,-177.214,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (47,'hydride_migration',78.0459,-33.7685,-448.998,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (98,'C-H_activation',87.063,2.7107,-208.733,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (2,'CO_insertion',54.1138,-62.0961,-233.444,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (85,'CO_insertion',144.7117,-59.4389,-425.146,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (31,'beta_hydride_elimination',103.9101,-1.0953,-491.621,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (79,'alkene_coordination',152.6155,-49.6769,-227.063,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (88,'C-H_activation',43.8793,36.2509,-229.623,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (22,'reductive_elimination',107.2496,-8.4873,-424.525,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (97,'isomerization_step',149.1293,3.5147,-469.021,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (100,'beta_hydride_elimination',38.5098,-77.6812,-264.78,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (58,'beta_hydride_elimination',135.712,4.7715,-420.16,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (21,'CO_insertion',142.8854,-5.5998,-161.428,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (23,'C-H_activation',112.315,46.2779,-257.321,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (73,'beta_hydride_elimination',93.0862,-28.1472,-480.453,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (81,'beta_hydride_elimination',52.1281,32.322,-144.7,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (19,'isomerization_step',102.4667,23.7952,-157.307,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (62,'oxidative_addition',79.5685,-44.3675,-155.363,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (46,'alkene_coordination',103.7609,-3.8777,-383.988,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (6,'CO_insertion',100.9182,-63.504,-496.763,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (29,'hydride_migration',116.2873,-35.7738,-336.979,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (63,'beta_hydride_elimination',111.2206,-44.4914,-115.26,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (30,'isomerization_step',105.6633,58.8518,-321.146,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (9,'beta_hydride_elimination',97.2947,-1.9412,-419.576,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (34,'C-H_activation',55.5289,-37.0686,-345.04,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (48,'beta_hydride_elimination',123.0095,39.6998,-203.323,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (80,'hydride_migration',82.5233,17.9036,-427.192,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (76,'beta_hydride_elimination',130.0514,32.1195,-223.689,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (27,'CO_insertion',42.5033,55.0398,-497.619,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (94,'reductive_elimination',86.0336,4.0344,-460.337,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (50,'hydride_migration',71.9169,5.264,-173.977,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (61,'alkene_coordination',119.6248,3.6462,-74.428,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (59,'C-H_activation',81.4561,-51.761,-204.402,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (69,'alkene_coordination',47.2645,29.7543,-270.253,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (57,'hydride_migration',106.1266,14.3634,-338.117,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (3,'CO_insertion',156.5904,-67.842,-375.828,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (99,'isomerization_step',113.7527,-23.2369,-409.86,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (42,'oxidative_addition',148.6848,-3.057,-173.238,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (83,'isomerization_step',68.6465,34.1721,-398.167,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (7,'C-H_activation',150.1599,0.4869,-382.502,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (77,'oxidative_addition',98.2083,-9.5563,-347.015,'yes');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (71,'alkene_coordination',142.6558,33.8406,-241.298,'pending');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (41,'C-H_activation',155.2478,-1.1564,-153.515,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (91,'C-H_activation',115.4233,45.5133,-112.09,'no');
INSERT INTO transition_state(dft_id,reaction_step,activation_barrier_kJ_mol,reaction_energy_kJ_mol,imaginary_frequency_cm_inv,irc_confirmed) VALUES (70,'oxidative_addition',56.0948,-26.4257,-145.105,'yes');

-- ================================================================
-- electronic_descriptor
-- ================================================================
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (87,5,-6.107422,0.625593,6.733015,-0.33328,-0.084559,1.019399,0.527585,-78.0462,-49.1627,0.431596);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (90,3,-5.899814,-1.578711,4.321103,0.173667,-0.210609,0.314312,0.208924,-57.2343,-63.9551,0.187185);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (30,5,-6.844966,-1.080028,5.764938,-0.149769,0.175116,0.883264,-0.379304,-54.5634,-44.8544,0.378576);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (41,6,-4.509859,-1.021297,3.488562,-0.266144,-0.321317,1.279018,-0.32572,-74.0078,-53.8031,0.125545);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (53,7,-4.502919,-1.313779,3.18914,0.540049,0.043125,1.104078,-0.588309,-54.7088,-61.9317,0.447703);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (46,6,-4.751335,-0.94988,3.801455,0.23078,-0.059299,0.977283,0.228652,-76.3978,-21.1709,0.243504);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (67,2,-5.925508,-0.828702,5.096806,-0.030749,-0.06379,1.884136,-0.290742,-78.8099,-62.7258,0.435011);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (69,4,-5.481012,0.274529,5.755541,0.19997,0.187624,0.783835,-0.209892,-49.3733,-23.5153,0.228996);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (2,2,-6.166252,-0.997167,5.169085,0.321226,-0.313091,0.584878,0.369261,-59.7567,-32.1236,0.290102);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (99,2,-7.223108,-0.797311,6.425797,-0.092473,-0.008192,1.507737,0.126462,-56.2727,-16.7385,0.392677);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (34,6,-4.882366,-0.176725,4.705641,0.085375,-0.299609,1.75216,-0.449952,-65.9224,-54.9012,0.374499);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (32,2,-6.763,-0.61034,6.15266,-0.37578,0.162076,1.104416,-0.535409,-33.744,-38.561,0.498047);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (37,2,-6.581417,-1.45654,5.124877,0.351282,0.131283,0.82593,-0.303124,-62.9495,-32.4112,0.074326);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (12,3,-7.4,0.322422,7.722422,0.618479,-0.204879,1.109463,0.569978,-47.565,-53.6551,0.227974);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (52,3,-5.432092,-0.402098,5.029994,0.473585,0.126376,1.039462,0.167744,-47.973,-15.4646,0.246009);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (44,4,-4.683523,-0.453489,4.230034,-0.024482,-0.244116,0.816074,-0.599889,-31.0772,-19.1232,0.178504);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (10,8,-5.627154,0.407195,6.034349,0.139511,0.053284,0.809338,0.319043,-32.1221,-34.1798,0.400416);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (71,6,-6.840002,1.087567,7.927569,0.068238,-0.250062,1.515395,0.175189,-30.2944,-56.7645,0.048813);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (23,4,-5.691865,0.799857,6.491722,0.297181,0.016355,0.762171,0.178148,-48.0833,-53.8707,0.10212);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (61,2,-6.861575,-0.986416,5.875159,0.327961,-0.029362,0.762628,0.147305,-68.7326,-68.8363,0.03432);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (97,1,-6.849218,-1.642043,5.207175,-0.150046,0.029118,1.536082,-0.320627,-70.959,-40.3852,0.177537);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (95,5,-4.749961,-0.255615,4.494346,-0.017184,0.018161,0.353953,-0.503732,-34.9658,-61.2347,0.140587);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (28,7,-7.250154,-0.354486,6.895668,-0.25015,0.104924,1.689326,0.393902,-72.6823,-23.9113,0.131992);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (74,8,-6.634932,1.480874,8.115806,-0.241066,0.041194,0.459733,0.199209,-67.4932,-46.6526,0.480995);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (35,6,-6.94486,0.54883,7.49369,0.468142,-0.070252,0.507641,-0.022524,-62.0712,-48.3744,0.035523);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (24,4,-4.093541,-1.17412,2.919421,0.06441,-0.390959,1.650464,0.101636,-56.2515,-55.4146,0.484729);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (25,8,-5.090577,-1.457528,3.633049,0.502036,-0.250767,1.149863,0.223134,-59.6947,-11.8209,0.382184);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (64,1,-7.290787,0.256012,7.546799,0.411727,0.07488,0.513907,-0.32079,-21.0995,-22.6863,0.380782);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (26,8,-4.933839,-1.925265,3.008574,-0.0089,0.034639,0.726184,-0.552614,-37.6024,-36.4585,0.27594);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (31,8,-6.835785,-1.346806,5.488979,-0.048036,0.039441,0.768052,0.39762,-25.1316,-36.7288,0.04375);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (83,3,-5.927155,0.867965,6.79512,0.204088,-0.127553,1.61906,0.007149,-35.9805,-17.0241,0.31367);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (91,6,-4.783942,-1.164247,3.619695,0.437305,-0.005026,1.216226,-0.135011,-48.5558,-40.1471,0.280219);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (27,5,-6.3709,0.243164,6.614064,-0.356397,-0.08608,0.413356,0.402232,-72.2135,-17.5904,0.109019);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (98,8,-6.829342,-1.88864,4.940702,0.334277,-0.166841,1.132846,0.148765,-44.5819,-67.0549,0.118154);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (72,2,-7.454199,1.223623,8.677822,0.352474,0.157042,1.714532,-0.038329,-41.665,-48.3444,0.374304);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (89,7,-4.622907,0.779874,5.402781,-0.42421,-0.02984,1.199335,0.28116,-29.9326,-65.3239,0.115791);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (79,2,-7.145712,-1.191437,5.954275,0.00093,-0.284128,1.41669,0.084033,-23.1498,-36.4946,0.283489);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (84,2,-4.818008,0.017973,4.835981,0.37684,0.02153,1.026027,-0.475077,-32.4523,-37.0021,0.257299);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (50,3,-5.631348,0.099705,5.731053,0.713576,0.141491,1.235138,0.59622,-29.3088,-45.2594,0.320288);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (7,6,-5.370553,-0.028994,5.341559,-0.221893,0.059425,1.87445,-0.295093,-22.3009,-43.15,0.204574);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (8,1,-4.059652,0.08517,4.144822,0.172892,0.196047,0.813131,-0.239599,-66.6868,-18.6568,0.020634);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (59,5,-4.283108,-0.21055,4.072558,0.241869,-0.057033,0.460288,-0.047556,-70.6336,-54.1007,0.445916);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (6,4,-6.68452,0.83876,7.52328,-0.380523,-0.160121,1.860399,0.281119,-36.5852,-22.4257,0.094722);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (85,2,-5.416691,-0.948624,4.468067,0.450026,-0.05423,0.433412,-0.532893,-33.7459,-49.1242,0.410399);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (43,7,-4.244139,-1.578108,2.666031,0.501507,0.048607,1.744113,0.514384,-41.9668,-32.0684,0.036523);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (65,1,-6.382392,-0.022805,6.359587,-0.075119,0.018661,0.560436,0.208362,-20.158,-11.7376,0.378892);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (40,2,-6.7227,-0.985759,5.736941,0.012619,-0.320687,0.440327,0.085729,-77.0413,-46.0485,0.051689);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (1,7,-4.791612,-1.543687,3.247925,-0.324668,-0.064422,1.129364,0.182698,-68.234,-33.0402,0.370477);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (49,4,-6.651897,-1.0681,5.583797,0.059085,0.010843,1.279231,-0.464964,-55.1851,-48.0839,0.10334);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (76,6,-5.42143,-1.915276,3.506154,-0.103735,0.192591,1.347576,0.588191,-53.4674,-61.2509,0.03199);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (3,4,-6.801102,-0.691627,6.109475,0.485054,0.111658,0.491032,-0.534554,-23.0635,-14.3962,0.435689);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (70,5,-7.451933,0.428283,7.880216,-0.355339,-0.129963,0.338672,-0.349189,-47.7197,-57.7719,0.2664);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (75,5,-5.5792,0.180647,5.759847,0.789993,0.017043,1.436043,-0.148072,-25.6376,-38.3921,0.135174);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (54,1,-6.505953,0.76216,7.268113,0.303354,-0.368149,1.413088,-0.589999,-56.6813,-53.7214,0.427521);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (21,6,-4.475012,-1.933226,2.541786,0.627634,-0.010353,0.692987,-0.143159,-21.4033,-64.0238,0.164573);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (55,2,-6.847539,-0.247722,6.599817,0.095382,0.15581,0.33653,-0.303129,-48.2351,-49.9858,0.202766);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (88,3,-7.435697,0.39509,7.830787,-0.038008,-0.218604,1.99319,0.574305,-63.4473,-66.2794,0.136263);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (18,7,-4.383593,0.852005,5.235598,-0.461694,-0.067036,0.77633,-0.41795,-26.1695,-30.5841,0.05302);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (45,7,-5.677488,0.372982,6.05047,0.634512,0.011914,1.009467,0.087478,-54.4121,-51.257,0.306631);
INSERT INTO electronic_descriptor(dft_id,ligand_id,homo_energy_eV,lumo_energy_eV,homo_lumo_gap_eV,nbo_charge_metal,nbo_charge_donor_atom,wiberg_bond_order,npa_charge,delta_h_co_binding_kJ_mol,delta_g_co_binding_kJ_mol,nci_index) VALUES (100,8,-5.602182,-1.27635,4.325832,-0.319851,-0.075188,1.660179,0.435105,-61.4601,-27.6918,0.266665);

-- ================================================================
-- qsar_qspr_model
-- ================================================================
INSERT INTO qsar_qspr_model(model_name,target_property,descriptor_set,algorithm,r2_train,r2_test,rmse_train,rmse_test,n_training_points,n_test_points,cross_validation_scheme,trained_by) VALUES ('TOF Prediction RF','tof_h_inv','Tolman EP, %Vbur, cone_angle, HOMO-LUMO gap','RandomForest',0.912,0.876,45.23,62.11,80,20,'5-fold CV',1);
INSERT INTO qsar_qspr_model(model_name,target_property,descriptor_set,algorithm,r2_train,r2_test,rmse_train,rmse_test,n_training_points,n_test_points,cross_validation_scheme,trained_by) VALUES ('LB Ratio SVR','lb_ratio','NBO charges, Wiberg BO, dispersion','SVR',0.884,0.851,0.31,0.45,80,20,'LOO CV',1);
INSERT INTO qsar_qspr_model(model_name,target_property,descriptor_set,algorithm,r2_train,r2_test,rmse_train,rmse_test,n_training_points,n_test_points,cross_validation_scheme,trained_by) VALUES ('TON GradBoost','ton','electronic + steric + solvent descriptors','GradientBoosting',0.931,0.899,120.5,185.2,80,20,'5-fold CV',1);
INSERT INTO qsar_qspr_model(model_name,target_property,descriptor_set,algorithm,r2_train,r2_test,rmse_train,rmse_test,n_training_points,n_test_points,cross_validation_scheme,trained_by) VALUES ('Activation Barrier NN','activation_barrier_kJ_mol','DFT descriptors, ligand class','NeuralNetwork',0.956,0.921,3.21,5.88,80,20,'10-fold CV',1);
INSERT INTO qsar_qspr_model(model_name,target_property,descriptor_set,algorithm,r2_train,r2_test,rmse_train,rmse_test,n_training_points,n_test_points,cross_validation_scheme,trained_by) VALUES ('Conversion Linear','conversion_pct','temperature, pressure, loading, time','LinearRegression',0.741,0.718,8.93,10.45,80,20,'5-fold CV',1);

-- ================================================================
-- qsar_datapoint
-- ================================================================
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (2,56,75,3284.596448,3369.667496,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (2,41,35,2791.128087,3291.856466,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (1,24,163,4199.217324,3603.768307,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (1,98,164,4401.858182,4250.434261,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (4,39,227,3730.592553,4210.719815,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (3,20,97,542.78945,474.3437,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (5,79,137,3031.966511,3168.101807,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (5,30,119,3440.015647,3246.342766,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (4,18,258,4232.229797,4179.326925,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (3,24,199,2462.313529,2105.278067,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (2,29,17,2048.859909,2433.021142,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (3,53,114,3714.409642,4439.833845,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (2,9,91,4636.244999,5537.067402,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (5,63,167,4335.206777,5007.163827,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (4,52,22,3043.57049,3438.321583,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (3,51,293,2973.090949,3003.119168,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (1,67,56,2263.531867,2559.601835,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (1,113,126,2598.326236,2489.716199,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (1,72,199,2585.472149,2720.692342,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (1,25,150,2203.373835,2542.252731,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (3,60,86,2118.08629,2214.035599,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (1,89,265,4519.341477,4453.359091,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (4,12,257,574.726215,638.808188,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (5,18,202,2073.660932,2033.017178,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (2,59,104,4413.916752,3690.475796,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (3,89,84,3594.689851,3053.329559,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (1,91,231,3174.021367,2647.451222,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (4,94,262,3064.241947,2647.505042,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (5,49,23,3843.619016,4477.431792,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (5,112,77,818.999241,702.537549,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (1,54,158,1554.496344,1721.604701,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (4,37,93,596.594352,508.656345,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (2,1,130,70.916746,70.852921,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (4,70,3,3043.839816,3035.925832,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (2,76,244,2274.155034,2221.394637,'train');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (5,77,4,1231.118725,1254.386869,'test');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (5,81,286,4102.405743,3622.834512,'test');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (2,19,29,3269.851622,2663.948116,'test');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (1,86,296,4191.692035,3853.841657,'test');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (1,7,56,2090.61505,1821.552893,'test');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (3,79,294,3938.664822,3430.57706,'test');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (4,96,297,1807.341351,1471.718062,'test');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (3,42,189,4488.673583,5063.672669,'test');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (4,108,282,333.980074,330.072507,'test');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (1,89,141,1652.75055,1595.730656,'test');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (2,90,108,3064.148187,2585.221825,'validation');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (5,12,248,3623.129948,3774.939093,'validation');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (3,55,163,1305.703596,1345.005274,'validation');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (5,46,67,3075.307004,3071.001574,'validation');
INSERT INTO qsar_datapoint(model_id,precatalyst_id,assay_id,experimental_value,predicted_value,dataset_split) VALUES (4,64,93,4419.481769,3947.039168,'validation');

-- ================================================================
-- scale_up_study
-- ================================================================
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (38,13,'lab',0.2805,'stirred_tank',312.9176,0.2447,119.36,40.179,19.9808,56.913,7.009,1125.2269,320.5643,1059.2148,6.8344,15.5181,'2022-02-19');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (39,33,'demo',3835.2795,'autoclave',343.075,0.6893,110.71,31.184,1.5532,41.416,6.945,682.4943,337.8741,45850.0711,24.1204,32.9913,'2022-08-14');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (81,30,'demo',2312.6191,'stirred_tank',463.9311,0.1215,96.48,28.682,13.8858,66.087,0.865,1159.0213,169.201,45851.2293,24.0777,5.1782,'2022-03-18');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (108,2,'demo',4918.102,'bubble_column',421.2817,1.1463,87.27,30.164,17.4273,78.85,14.253,635.8538,20.656,20986.5436,15.4146,13.4068,'2022-08-19');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (28,34,'demo',875.4762,'PFR',392.5795,1.5578,123.93,22.745,1.4738,61.373,10.251,388.5212,462.2002,36755.8328,16.1852,39.2256,'2022-03-13');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (106,34,'pilot',1026.333,'autoclave',229.9545,1.4302,96.56,1.201,18.7144,74.658,12.089,183.281,236.1036,2783.9186,16.0968,33.6312,'2022-05-10');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (74,49,'demo',3194.4348,'CSTR',160.7797,0.3932,79.37,16.638,9.3812,37.647,3.412,554.5374,12.5521,31335.7757,15.9078,11.9157,'2022-06-27');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (41,18,'pilot',4716.4175,'PFR',287.2544,0.3508,81.8,44.72,11.271,33.297,1.065,1807.5519,29.9757,19488.1821,3.4975,20.812,'2022-08-21');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (40,22,'pilot',3564.637,'bubble_column',39.7335,1.8463,113.51,28.822,2.7654,82.153,14.123,203.5534,158.6439,32398.7212,23.2283,24.5862,'2022-04-14');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (111,58,'demo',4564.3516,'stirred_tank',92.0849,1.8354,83.12,43.179,7.1705,61.688,1.775,234.6452,241.9328,42365.43,9.1855,18.7335,'2022-03-26');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (14,26,'lab',0.6854,'autoclave',396.3193,1.0702,88.06,21.259,12.7966,65.617,19.491,773.7948,173.6535,40788.8274,18.1381,39.6471,'2022-07-28');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (101,22,'pilot',865.8407,'autoclave',369.8138,1.4267,118.57,6.602,12.3254,51.15,2.404,895.9803,157.4777,20586.788,18.3495,34.9044,'2022-07-20');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (64,42,'lab',0.2265,'CSTR',443.6871,1.8075,104.53,1.009,3.7878,39.699,10.859,786.0655,291.0761,10185.4977,20.764,17.1967,'2022-05-23');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (92,59,'demo',4951.4511,'bubble_column',4.5556,1.973,88.29,7.25,6.5895,53.999,11.203,115.7233,353.1603,41127.2875,11.4181,43.3399,'2022-01-17');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (56,45,'industrial',3126.2589,'stirred_tank',203.3133,0.876,74.79,9.497,3.6423,66.102,16.945,726.9729,211.5316,14779.3082,26.3093,8.0264,'2022-01-12');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (83,2,'pilot',3606.8355,'stirred_tank',329.1344,1.9502,69.5,7.724,16.3129,85.91,17.925,1393.8271,465.504,31350.7998,14.1774,22.358,'2022-08-22');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (46,15,'pilot',2124.1469,'autoclave',289.1803,1.6951,76.57,25.585,8.8059,65.501,7.656,1956.6846,286.234,35391.6859,4.2818,25.1136,'2022-02-14');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (94,47,'demo',2324.9492,'autoclave',261.9167,1.224,77.17,31.902,13.611,73.467,13.839,1083.0025,291.9161,30845.4361,27.204,27.6816,'2022-01-25');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (59,33,'industrial',2870.0395,'PFR',210.7975,1.9216,115.88,15.171,1.6712,89.986,15.114,1456.6737,284.0346,3540.1793,14.7217,10.1158,'2022-01-19');
INSERT INTO scale_up_study(precatalyst_id,experiment_id,scale_level,reactor_volume_L,reactor_type,substrate_amount_mol,catalyst_loading_mol_pct,temp_c,pressure_bar,reaction_time_h,yield_pct,lb_ratio,tof_h_inv,space_time_yield_g_Lh,catalyst_cost_USD_kg,e_factor,pmi,study_date) VALUES (104,48,'lab',0.6093,'autoclave',63.8473,0.163,114.86,13.35,12.7002,47.889,5.511,1485.444,303.8917,45551.5087,22.43,33.6395,'2022-06-15');

-- ================================================================
-- reproducibility_study
-- ================================================================
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (134,2,53.281,71.771,3.109,844.0382,3396.73,0,0,1.2926,1.6233,5.6412);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (249,2,54.255,74.394,4.152,99.3606,3135.05,0,0,2.8564,1.9504,5.8106);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (271,1,38.278,84.233,2.384,1001.7722,4509.5,0,0,2.1174,0.8347,4.0022);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (176,1,94.597,67.909,13.879,450.7562,2192.22,1,1,0.5697,0.3146,6.3283);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (75,5,56.413,44.949,1.371,1435.6283,1396.86,1,0,1.526,2.7929,5.0773);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (79,4,42.313,56.904,2.586,1164.6256,1170.09,0,1,2.1747,0.3995,1.0469);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (212,4,69.423,38.795,6.965,1349.943,829.39,0,0,2.0274,0.8727,5.7504);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (122,4,92.419,63.098,7.973,1412.8711,2504.33,1,1,2.5477,2.3647,6.3904);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (86,2,67.269,20.248,14.335,1236.0662,2462.13,1,1,2.0773,1.2618,5.242);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (296,3,96.159,26.8,8.252,1443.342,494.24,1,1,1.9786,0.6122,0.795);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (28,3,56.507,34.325,10.59,1349.868,3190.02,1,1,0.3461,1.9351,6.0149);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (60,1,39.656,34.482,10.936,909.7709,2497.24,0,1,1.5491,2.8984,6.5883);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (86,4,96.694,21.231,5.42,539.692,3632.96,1,0,0.7139,1.9962,4.4234);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (205,4,94.866,85.265,8.28,1124.5247,1241.63,0,0,2.2328,1.5178,0.643);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (155,4,92.595,66.378,4.019,990.7403,170.39,0,1,2.4801,0.3821,5.0842);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (273,2,87.639,24.797,12.353,215.5605,3015.39,0,0,2.4329,1.336,6.5864);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (195,4,97.771,70.88,5.201,1464.9872,2922.24,0,1,2.5256,2.4,6.2317);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (243,3,70.923,45.163,2.251,254.7934,2134.26,1,0,1.3721,2.7845,0.8052);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (223,1,36.898,83.553,9.38,1177.6094,176.59,1,0,0.1184,0.6203,1.1686);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (148,4,74.971,86.519,6.535,1220.7471,3885.56,0,0,0.515,0.8858,3.8781);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (196,3,46.509,33.091,10.529,914.5944,3614.27,0,1,1.1088,0.1133,2.2673);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (272,1,38.108,59.765,1.887,574.7569,3829.53,0,1,2.334,2.012,2.5732);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (50,5,43.367,79.746,10.436,1454.4321,2424.62,0,0,2.0434,0.225,5.3365);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (182,4,49.669,52.6,5.347,1217.4728,3816.2,0,0,2.2472,2.7821,1.8192);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (140,3,84.199,56.38,2.183,1347.8648,3634.88,1,1,0.6764,2.0629,2.9426);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (139,3,83.749,44.46,1.922,1119.7344,4362.44,1,0,0.3132,1.7968,0.9075);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (51,3,60.075,36.212,9.337,308.1881,1930.08,1,0,1.9329,2.9291,2.0166);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (300,4,38.778,71.916,1.365,247.9272,4273.09,1,1,0.5965,1.0964,7.1481);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (237,2,71.651,79.216,9.751,936.7157,932.68,0,0,1.2939,1.6131,6.9665);
INSERT INTO reproducibility_study(assay_id,replicate_number,conversion_pct,yield_pct,lb_ratio,tof_h_inv,ton,same_lab,same_operator,std_dev_conversion,std_dev_yield,rsd_pct) VALUES (100,5,44.935,55.512,7.21,71.0306,2197.74,0,0,1.0492,1.7805,7.1887);

-- ================================================================
-- catalyst_characterization
-- ================================================================
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (76,'TEM','JEOL JEM-2100','Key findings from TEM analysis of precatalyst 76: characteristic peaks confirmed.','2022-10-01',4,2);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (6,'BET','Micromeritics ASAP 2020','Key findings from BET analysis of precatalyst 6: characteristic peaks confirmed.','2022-12-25',5,2);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (55,'TGA','TA Instruments Q500','Key findings from TGA analysis of precatalyst 55: characteristic peaks confirmed.','2022-07-16',1,15);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (64,'SEM','Zeiss Sigma 300','Key findings from SEM analysis of precatalyst 64: characteristic peaks confirmed.','2022-02-18',1,14);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (28,'TEM','JEOL JEM-2100','Key findings from TEM analysis of precatalyst 28: characteristic peaks confirmed.','2022-06-10',2,3);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (3,'BET','Micromeritics ASAP 2020','Key findings from BET analysis of precatalyst 3: characteristic peaks confirmed.','2022-11-10',2,15);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (110,'UV-Vis','Agilent Cary 5000','Key findings from UV-Vis analysis of precatalyst 110: characteristic peaks confirmed.','2022-12-19',1,15);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (60,'TEM','JEOL JEM-2100','Key findings from TEM analysis of precatalyst 60: characteristic peaks confirmed.','2022-12-13',2,12);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (81,'BET','Micromeritics ASAP 2020','Key findings from BET analysis of precatalyst 81: characteristic peaks confirmed.','2022-12-21',1,3);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (50,'NMR','Bruker Avance III 400 MHz','Key findings from NMR analysis of precatalyst 50: characteristic peaks confirmed.','2022-09-02',3,14);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (97,'IR','Bruker Vertex 70','Key findings from IR analysis of precatalyst 97: characteristic peaks confirmed.','2022-12-20',5,19);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (102,'SEM','Zeiss Sigma 300','Key findings from SEM analysis of precatalyst 102: characteristic peaks confirmed.','2022-11-03',5,11);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (95,'XRD','Bruker D8 Advance','Key findings from XRD analysis of precatalyst 95: characteristic peaks confirmed.','2022-09-22',3,2);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (15,'ICP-MS','Agilent 7900','Key findings from ICP-MS analysis of precatalyst 15: characteristic peaks confirmed.','2022-06-15',5,2);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (47,'NMR','Bruker Avance III 400 MHz','Key findings from NMR analysis of precatalyst 47: characteristic peaks confirmed.','2022-03-21',5,3);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (72,'SEM','Zeiss Sigma 300','Key findings from SEM analysis of precatalyst 72: characteristic peaks confirmed.','2022-03-11',2,18);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (15,'BET','Micromeritics ASAP 2020','Key findings from BET analysis of precatalyst 15: characteristic peaks confirmed.','2022-12-25',5,7);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (97,'SEM','Zeiss Sigma 300','Key findings from SEM analysis of precatalyst 97: characteristic peaks confirmed.','2022-06-12',3,17);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (88,'ICP-MS','Agilent 7900','Key findings from ICP-MS analysis of precatalyst 88: characteristic peaks confirmed.','2022-05-02',1,12);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (45,'BET','Micromeritics ASAP 2020','Key findings from BET analysis of precatalyst 45: characteristic peaks confirmed.','2022-08-17',5,4);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (61,'TGA','TA Instruments Q500','Key findings from TGA analysis of precatalyst 61: characteristic peaks confirmed.','2022-11-27',5,10);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (58,'UV-Vis','Agilent Cary 5000','Key findings from UV-Vis analysis of precatalyst 58: characteristic peaks confirmed.','2022-06-26',1,7);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (115,'BET','Micromeritics ASAP 2020','Key findings from BET analysis of precatalyst 115: characteristic peaks confirmed.','2022-02-03',4,6);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (37,'XPS','Thermo Scientific K-Alpha','Key findings from XPS analysis of precatalyst 37: characteristic peaks confirmed.','2022-02-06',3,4);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (90,'TEM','JEOL JEM-2100','Key findings from TEM analysis of precatalyst 90: characteristic peaks confirmed.','2022-08-05',2,17);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (81,'XRD','Bruker D8 Advance','Key findings from XRD analysis of precatalyst 81: characteristic peaks confirmed.','2022-05-14',5,5);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (61,'NMR','Bruker Avance III 400 MHz','Key findings from NMR analysis of precatalyst 61: characteristic peaks confirmed.','2022-07-15',1,10);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (25,'XPS','Thermo Scientific K-Alpha','Key findings from XPS analysis of precatalyst 25: characteristic peaks confirmed.','2022-01-28',2,17);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (83,'NMR','Bruker Avance III 400 MHz','Key findings from NMR analysis of precatalyst 83: characteristic peaks confirmed.','2022-07-19',3,11);
INSERT INTO catalyst_characterization(precatalyst_id,technique,instrument_model,key_findings,measurement_date,measured_by,ref_id) VALUES (63,'UV-Vis','Agilent Cary 5000','Key findings from UV-Vis analysis of precatalyst 63: characteristic peaks confirmed.','2022-11-23',5,18);

-- ================================================================
-- nmr_data
-- ================================================================
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (15,'59Co',500.0,'CD2Cl2',58.93,'[{"assignment": "M-H", "shift": 5.98, "mult": "t"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (30,'13C',400.0,'CDCl3',21.65,'[{"assignment": "M-H", "shift": -7.08, "mult": "t"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (10,'103Rh',500.0,'DMSO-d6',27.38,'[{"assignment": "M-H", "shift": -0.94, "mult": "d"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (19,'31P',500.0,'CD2Cl2',34.92,'[{"assignment": "M-H", "shift": -1.50, "mult": "t"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (5,'59Co',500.0,'CDCl3',56.82,'[{"assignment": "M-H", "shift": -4.89, "mult": "m"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (28,'13C',600.0,'DMSO-d6',26.24,'[{"assignment": "M-H", "shift": 9.25, "mult": "dd"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (6,'59Co',500.0,'DMSO-d6',38.96,'[{"assignment": "M-H", "shift": -7.75, "mult": "dd"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (9,'13C',600.0,'DMSO-d6',47.57,'[{"assignment": "M-H", "shift": 3.29, "mult": "d"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (8,'13C',300.0,'DMSO-d6',20.99,'[{"assignment": "M-H", "shift": 0.44, "mult": "t"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (16,'103Rh',500.0,'CDCl3',33.05,'[{"assignment": "M-H", "shift": 0.20, "mult": "t"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (12,'59Co',400.0,'DMSO-d6',27.83,'[{"assignment": "M-H", "shift": -12.91, "mult": "m"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (25,'1H',600.0,'CD2Cl2',39.62,'[{"assignment": "M-H", "shift": 0.08, "mult": "dd"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (2,'1H',500.0,'C6D6',25.92,'[{"assignment": "M-H", "shift": 6.35, "mult": "s"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (26,'103Rh',500.0,'CDCl3',31.39,'[{"assignment": "M-H", "shift": -6.22, "mult": "m"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (20,'59Co',300.0,'CD2Cl2',49.11,'[{"assignment": "M-H", "shift": -3.89, "mult": "m"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (17,'103Rh',500.0,'CD2Cl2',52.23,'[{"assignment": "M-H", "shift": 9.26, "mult": "m"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (22,'103Rh',400.0,'acetone-d6',43.92,'[{"assignment": "M-H", "shift": -11.41, "mult": "s"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (3,'103Rh',500.0,'CDCl3',57.33,'[{"assignment": "M-H", "shift": -0.23, "mult": "m"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (27,'1H',300.0,'C6D6',45.55,'[{"assignment": "M-H", "shift": -8.17, "mult": "t"}]');
INSERT INTO nmr_data(char_id,nucleus,field_strength_MHz,solvent,temp_c,key_shifts_ppm) VALUES (13,'59Co',600.0,'acetone-d6',50.21,'[{"assignment": "M-H", "shift": -11.58, "mult": "t"}]');

-- ================================================================
-- ir_data
-- ================================================================
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (27,'DRIFT',1924.84,1993.27,'[{"wavenumber": 1924.8, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (13,'in_situ_HP_IR',1983.43,1979.35,'[{"wavenumber": 1983.4, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (10,'transmission_IR',1905.69,2001.18,'[{"wavenumber": 1905.7, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (18,'DRIFT',2098.87,1945.34,'[{"wavenumber": 2098.9, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (16,'in_situ_HP_IR',2016.21,1985.25,'[{"wavenumber": 2016.2, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (2,'in_situ_HP_IR',2025.6,1978.08,'[{"wavenumber": 2025.6, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (28,'ATR-IR',1974.64,1998.64,'[{"wavenumber": 1974.6, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (19,'ATR-IR',2069.06,1953.03,'[{"wavenumber": 2069.1, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (24,'ATR-IR',1929.23,1976.88,'[{"wavenumber": 1929.2, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (26,'transmission_IR',1971.48,1944.23,'[{"wavenumber": 1971.5, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (30,'in_situ_HP_IR',1983.9,2012.97,'[{"wavenumber": 1983.9, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (15,'in_situ_HP_IR',1909.74,1963.33,'[{"wavenumber": 1909.7, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (8,'ATR-IR',2002.77,2001.32,'[{"wavenumber": 2002.8, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (1,'transmission_IR',2052.94,1987.9,'[{"wavenumber": 2052.9, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (17,'transmission_IR',2008.74,2009.8,'[{"wavenumber": 2008.7, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (3,'in_situ_HP_IR',1954.29,1995.84,'[{"wavenumber": 1954.3, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (5,'in_situ_HP_IR',1919.17,1986.4,'[{"wavenumber": 1919.2, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (14,'transmission_IR',1902.58,1981.45,'[{"wavenumber": 1902.6, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (11,'in_situ_HP_IR',2055.76,1972.96,'[{"wavenumber": 2055.8, "assignment": "CO stretch"}]');
INSERT INTO ir_data(char_id,technique,co_stretch_cm_inv,rh_co_stretch_cm_inv,key_bands_json) VALUES (12,'transmission_IR',1920.48,1952.36,'[{"wavenumber": 1920.5, "assignment": "CO stretch"}]');

-- ================================================================
-- hp_ir_insitu
-- ================================================================
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (114,15.006,119.98,0.86,1945.31,'HRh(CO)2(PPh3)');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (97,14.443,128.68,1.56,2052.6,'HRh(CO)(PPh3)2');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (287,8.498,114.23,2.39,1908.5,'HRh(CO)(PPh3)2');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (270,6.476,106.19,1.98,1993.82,'Rh4(CO)12');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (273,6.948,81.12,0.53,1919.3,'HRh(CO)(PPh3)2');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (283,46.404,74.38,2.75,1936.96,'Rh4(CO)12');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (59,6.317,70.19,2.37,1955.48,'HCo(CO)3(PPh3)');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (214,20.653,71.24,1.75,2045.71,'HRh(CO)2(PPh3)');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (236,27.721,64.78,2.55,2052.65,'HCo(CO)3(PPh3)');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (40,14.765,73.41,1.2,2080.33,'HCo(CO)3(PPh3)');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (60,5.195,110.77,2.81,2084.1,'[Rh(acac)(CO)2]');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (68,26.362,108.87,0.96,2034.71,'HRh(CO)(PPh3)2');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (9,13.138,84.84,1.45,1942.85,'HRh(CO)2(PPh3)');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (246,23.341,113.3,1.29,1993.18,'HCo(CO)3(PPh3)');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (179,11.116,113.36,2.26,2011.43,'HRh(CO)(PPh3)2');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (160,8.701,94.56,1.46,1991.39,'[Rh(acac)(CO)2]');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (186,19.04,128.33,1.61,2010.78,'Rh4(CO)12');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (72,49.323,89.96,2.64,2078.95,'HCo(CO)4');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (227,47.259,85.72,0.53,2034.83,'[Rh(acac)(CO)2]');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (268,9.733,90.66,2.15,1917.0,'HRh(CO)2(PPh3)');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (176,22.767,108.65,2.94,2048.29,'HRh(CO)2(PPh3)');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (89,7.912,128.26,1.35,2018.99,'HCo(CO)4');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (156,10.524,118.67,2.31,1955.7,'[Rh(acac)(CO)2]');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (15,39.469,101.56,2.39,2060.2,'HCo(CO)4');
INSERT INTO hp_ir_insitu(assay_id,pressure_bar,temp_c,co_h2_ratio,co_stretch_cm_inv,active_species_assigned) VALUES (61,21.024,106.67,2.88,2097.5,'HCo(CO)3(PPh3)');

-- ================================================================
-- data_file
-- ================================================================
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (143,'data_0001_NMR_fid.fid','NMR-fid','/data/raw/NMR-fid/data_0001_NMR_fid.fid',38.4232,'f14152c7a0dcec7d3b1723197f4d55b97d457a09402d35e81f47d9021ba84a91','2023-03-01',1);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (28,'data_0002_GC_raw.csv','GC-raw','/data/raw/GC-raw/data_0002_GC_raw.csv',24.9569,'2719bfdb53b3618bade056489ac6030661f43c2b2dd93719f8d9bf3306d903c0','2023-05-20',5);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (50,'data_0003_GC_raw.csv','GC-raw','/data/raw/GC-raw/data_0003_GC_raw.csv',33.0879,'a97ef1314b26f0a333b1cca4774d34f5caf072267e000029c47f9b05851b5f38','2023-08-16',5);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (134,'data_0004_TEM_image.tif','TEM-image','/data/raw/TEM-image/data_0004_TEM_image.tif',17.2464,'fd9f45f40816d739c3933447f3dc50bf04860bee8bef4a768a601b92dc137c04','2023-07-04',4);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (231,'data_0005_XRD_pattern.xy','XRD-pattern','/data/raw/XRD-pattern/data_0005_XRD_pattern.xy',42.6584,'dc409942a8cf29368e81b2f02d474c4f08697ffa09360f0275ac0819714b5c03','2023-05-23',2);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (252,'data_0006_IR_spectrum.spa','IR-spectrum','/data/raw/IR-spectrum/data_0006_IR_spectrum.spa',6.811,'7d94ed9facce693e91a07ef21c007554c3963bf97cc9d887639ac771b739a28a','2023-11-18',5);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (293,'data_0007_IR_spectrum.spa','IR-spectrum','/data/raw/IR-spectrum/data_0007_IR_spectrum.spa',23.848,'974ebb877ea413e5436d977b6431cbbe0e44c9dc81b61c872803feb5dab6c73d','2023-07-20',3);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (146,'data_0008_XRD_pattern.xy','XRD-pattern','/data/raw/XRD-pattern/data_0008_XRD_pattern.xy',3.1651,'bdf774c8cf3ee4aa594ffd275dcd0d40d641510220d1968f0b8ce21f97289c5e','2023-10-01',3);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (195,'data_0009_GC_raw.csv','GC-raw','/data/raw/GC-raw/data_0009_GC_raw.csv',21.4646,'3f63a0653e85c8c4a94706630e73752359ecc846697437ea5b7c57e8fdf02450','2023-04-21',3);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (44,'data_0010_report_pdf.pdf','report-pdf','/data/raw/report-pdf/data_0010_report_pdf.pdf',3.3685,'0991946d537c64b089d5af23050bd8482b76a718566c93cc1d4dfdb14e0ebe2e','2023-08-22',4);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (291,'data_0011_TEM_image.tif','TEM-image','/data/raw/TEM-image/data_0011_TEM_image.tif',45.0804,'51071545fc5b14bd05b149a096867676783e40abb22a55a605391557444122a5','2023-07-19',4);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (166,'data_0012_TEM_image.tif','TEM-image','/data/raw/TEM-image/data_0012_TEM_image.tif',4.9765,'80b570137f29c9e75601f6a534b6685dacd4180ab0dc75fb199d50897d05121c','2023-11-11',2);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (154,'data_0013_XRD_pattern.xy','XRD-pattern','/data/raw/XRD-pattern/data_0013_XRD_pattern.xy',48.4744,'d7232ce313483fb3c982a300f95f17e6d8eae31ba2ac78967f383a3e33a67403','2023-09-07',3);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (136,'data_0014_GC_raw.csv','GC-raw','/data/raw/GC-raw/data_0014_GC_raw.csv',14.9363,'178a8c73f53ba020be2de8c89fe3f82439d3a9cfcdfa76af66eb43b092d2408e','2023-12-28',5);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (49,'data_0015_TEM_image.tif','TEM-image','/data/raw/TEM-image/data_0015_TEM_image.tif',16.9082,'58e9bbad35b1773c6d56cfd579ab301887f3c9a4cd1a810d910171d21138978b','2023-02-21',3);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (259,'data_0016_XRD_pattern.xy','XRD-pattern','/data/raw/XRD-pattern/data_0016_XRD_pattern.xy',21.7022,'83ef3ce99ffda1e74052e3a566fd32156a107fb733383ec95037e6698a3a0129','2023-08-22',5);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (93,'data_0017_GC_raw.csv','GC-raw','/data/raw/GC-raw/data_0017_GC_raw.csv',31.4294,'f64d4de0a92a9880368413397fcbcf3193ac009a2fc10403dcda8cc184274378','2023-12-15',3);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (273,'data_0018_TEM_image.tif','TEM-image','/data/raw/TEM-image/data_0018_TEM_image.tif',42.6535,'85b375aa0f546781a0733e57ba0371f990ed01d3ef444cf56f089155e8266484','2023-04-12',4);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (76,'data_0019_NMR_fid.fid','NMR-fid','/data/raw/NMR-fid/data_0019_NMR_fid.fid',7.6086,'dc3525775193412d6906d1186f75a3b2d81861124cdedddbc3f9c78caf704164','2023-02-21',2);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (212,'data_0020_XRD_pattern.xy','XRD-pattern','/data/raw/XRD-pattern/data_0020_XRD_pattern.xy',41.2032,'3d0d3ffd67e6d49a3c73013b99ea5bbdafd5b90b41a67c90291c0da1a5630d3a','2023-02-05',2);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (15,'data_0021_NMR_fid.fid','NMR-fid','/data/raw/NMR-fid/data_0021_NMR_fid.fid',39.8725,'a59caeed6c0972046fa6681cfdc562858f50b11f7c42049476d32b964f7f963e','2023-01-07',2);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (140,'data_0022_NMR_fid.fid','NMR-fid','/data/raw/NMR-fid/data_0022_NMR_fid.fid',1.5542,'da3ed15aa4f0708a2d0d5e1d8cfb137ca89ea4df471c10aecdb4adabca27cd69','2023-01-24',4);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (11,'data_0023_GC_raw.csv','GC-raw','/data/raw/GC-raw/data_0023_GC_raw.csv',42.9932,'f480ada5e68c13481046e3dfddfef8494c485cfc9a0270da505c1021157c6813','2023-07-12',1);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (204,'data_0024_report_pdf.pdf','report-pdf','/data/raw/report-pdf/data_0024_report_pdf.pdf',42.1532,'859f02bb1ee26f39eed4db8980104995bc06e86b922b4fb21ca799723c6d3173','2023-11-27',5);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (269,'data_0025_XRD_pattern.xy','XRD-pattern','/data/raw/XRD-pattern/data_0025_XRD_pattern.xy',24.8729,'544c14d1503ba8c3ce830e27c5efd6701f4d88ce998de3d83cf29ade171a8b65','2023-10-24',4);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (121,'data_0026_IR_spectrum.spa','IR-spectrum','/data/raw/IR-spectrum/data_0026_IR_spectrum.spa',10.9786,'411a315b688b4cfb708175fd4648bbe8f84ce7a936cfd2d52cd6e8df1b5829c9','2023-10-02',4);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (274,'data_0027_XRD_pattern.xy','XRD-pattern','/data/raw/XRD-pattern/data_0027_XRD_pattern.xy',35.0109,'f69bd5963f10938caec7f26779900a276c7ceeb78bb5f24251057c351ceb08fe','2023-05-26',2);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (186,'data_0028_IR_spectrum.spa','IR-spectrum','/data/raw/IR-spectrum/data_0028_IR_spectrum.spa',35.812,'08e945489b16acb8e7bd1db7f7808afca538c6a705651e804ee45227d2450039','2023-12-22',1);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (123,'data_0029_XRD_pattern.xy','XRD-pattern','/data/raw/XRD-pattern/data_0029_XRD_pattern.xy',27.6811,'af6c6f61cfefa2a2e7354db25ce4124bb35b9f78f55f2e80a3922a4e4f2c386f','2023-02-18',2);
INSERT INTO data_file(assay_id,file_name,file_type,file_path,file_size_MB,checksum_sha256,uploaded_date,uploaded_by) VALUES (227,'data_0030_IR_spectrum.spa','IR-spectrum','/data/raw/IR-spectrum/data_0030_IR_spectrum.spa',0.4925,'171aa5324d07018b416aa7f6eafd3e7bfa5dbd40ed711fe9649a0bf9f5f3943a','2023-04-10',2);

-- ================================================================
-- benchmark_comparison
-- ================================================================
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_01',111,114,83,225,87.33,69.1521,152.1819,1.094,'Test catalyst outperforms reference in TOF.',1,'2023-05-28');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_02',106,100,252,242,105.2801,73.3847,63.2081,1.335,'Test catalyst outperforms reference in TOF.',3,'2023-03-23');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_03',65,9,181,216,82.3597,63.2085,146.246,1.799,'Test catalyst outperforms reference in TOF.',2,'2023-01-21');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_04',81,57,70,2,48.1125,46.5467,59.313,-3.767,'Improved selectivity with comparable activity.',2,'2023-04-17');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_05',109,77,211,164,56.7533,68.6155,22.3695,-2.398,'Reference catalyst remains superior at high pressure.',3,'2023-06-26');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_06',26,11,213,189,10.9212,68.8751,188.6752,8.265,'Improved selectivity with comparable activity.',5,'2023-01-01');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_07',83,79,118,46,145.6017,7.844,138.7585,-2.469,'Marginal improvement; further optimisation needed.',5,'2023-10-14');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_08',34,20,46,189,8.9209,41.0519,-2.1064,2.888,'Marginal improvement; further optimisation needed.',1,'2023-11-16');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_09',29,92,105,98,140.8289,63.2071,49.5716,6.197,'Marginal improvement; further optimisation needed.',2,'2023-03-14');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_10',77,28,145,97,51.1163,26.7672,24.9183,-0.647,'Higher TON under same conditions.',4,'2023-04-20');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_11',117,32,190,299,96.3254,31.2348,-2.8844,-3.002,'Higher TON under same conditions.',2,'2023-12-13');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_12',92,50,217,132,-7.5805,40.13,5.6831,8.966,'Marginal improvement; further optimisation needed.',5,'2023-06-20');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_13',91,96,24,3,23.1217,45.7692,57.014,0.92,'Higher TON under same conditions.',1,'2023-03-18');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_14',75,23,134,87,65.6369,73.7294,174.9688,-3.021,'Higher TON under same conditions.',4,'2023-12-17');
INSERT INTO benchmark_comparison(benchmark_name,ref_precatalyst_id,test_precatalyst_id,assay_ref_id,assay_test_id,tof_improvement_pct,selectivity_improvement_pct,ton_improvement_pct,lb_ratio_change,conclusion,compared_by,comparison_date) VALUES ('Benchmark_15',19,34,60,161,-12.4924,1.5084,173.6943,7.522,'Higher TON under same conditions.',3,'2023-07-10');
