CREATE OR REPLACE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER
VIEW `vhc_contact_list` AS
select _utf8'HCContact' AS `target`
,`thc_contact`.`hc_contact_id` AS `hc_contact_id`
,concat(`thc_contact`.`last_nm`,_latin1',',`thc_contact`.`first_nm`,_latin1' ',IsNull_Char(`thc_contact`.`mi_nm`,'')) AS `theName`
,`suffix`.`code_desc` AS `suffixnm`,`j_domain`.`code_desc` AS `HDDomain`,`j_reg_domain_role`.`code_desc` AS `regDomain`
,`j_subdomain`.`code_desc` AS `SubDomain`
,`thc_contact`.`facility_cd` AS `facility_cd`
,`thc_contact`.`tieline_tx` AS `tieline_tx`
,`thc_contact`.`phone_tx` AS `phone_tx`
,`thc_contact`.`hc_domain_cd` AS `hc_domain_cd`
,`thc_contact`.`reg_domain_role_cd` AS `reg_domain_role_cd`
,`thc_contact`.`hc_sub_domain_cd` AS `hc_sub_domain_cd`,`thc_contact`.`last_nm` AS `last_nm`
,`thc_contact`.`first_nm` AS `first_nm`,`thc_contact`.`suffix_nm` AS `suffix_nm`
,`thc_contact`.`division_id` AS `division_id`
from (((((`thc_contact`
join `tdivision` on(((`thc_contact`.`division_id` = `tdivision`.`division_id`) and (`tdivision`.`division_id` = 1))))
left join `tcodes` `j_domain` on(((`thc_contact`.`hc_domain_cd` = `j_domain`.`code_value`) and (`j_domain`.`code_type_id` = 142))))
left join `tcodes` `suffix` on(((`thc_contact`.`suffix_nm` = `suffix`.`code_value`) and (`suffix`.`code_type_id` = 153))))
left join `tcodes` `j_reg_domain_role` on(((`thc_contact`.`reg_domain_role_cd` = `j_reg_domain_role`.`code_value`) and (`j_reg_domain_role`.`code_type_id` = 144))))
left join `tcodes` `j_subdomain` on(((`thc_contact`.`hc_sub_domain_cd` = `j_subdomain`.`code_value`) and (`j_subdomain`.`code_type_id` = 145))))
where (`thc_contact`.`hc_contact_id` > 0);
