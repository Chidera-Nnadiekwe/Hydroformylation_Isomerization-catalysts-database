SET search_path TO cat_rnd, public;

INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Rh','Rhodium',45,'+1,+3');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Co','Cobalt',27,'+2,+3');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Ru','Ruthenium',44,'+2,+3,+4');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Ir','Iridium',77,'+1,+3');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Pd','Palladium',46,'0,+2');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Ni','Nickel',28,'0,+2');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Fe','Iron',26,'+2,+3');
INSERT INTO metal_center(symbol,name,atomic_number,common_oxidation_states) VALUES ('Pt','Platinum',78,'0,+2,+4');
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
INSERT INTO reaction_protocol(protocol_name,reaction_type,reactor_mode,reactor_type,atmosphere,co_h2_ratio,analysis_method)
VALUES ('Standard Rh Hydroformylation','hydroformylation','batch','autoclave','CO/H2',1.0,'GC-MS');
INSERT INTO reaction_protocol(protocol_name,reaction_type,reactor_mode,reactor_type,atmosphere,co_h2_ratio,analysis_method)
VALUES ('Olefin Isomerization Pd','isomerization','batch','Schlenk','N2',NULL,'GC-MS');
INSERT INTO reaction_protocol(protocol_name,reaction_type,reactor_mode,reactor_type,atmosphere,co_h2_ratio,analysis_method)
VALUES ('Tandem Iso-HF','tandem_iso_hydroformylation','continuous_flow','PFR','CO/H2',1.0,'GC-MS');
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