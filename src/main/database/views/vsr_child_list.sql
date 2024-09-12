CREATE OR REPLACE VIEW `vsr_child_list` AS
select _utf8'ServiceRequestChild_list' AS `target`
,`tsr_child`.`sr_child_id` AS `sr_child_id`
,concat(`tsr_child`.`product_cd`,_utf8'-',`tsr_child`.`build_no`) AS `ref_nm`
,concat(_utf8'<A href=Router?Target=Build&Action=Show&Relation=this&RowKey=',`tbuild`.`build_id`,_utf8'>Link to BT</a>') AS `bt_link`
,`tbuild`.`rfc_prod_no` as rfc_no
,`status`.`code_desc` AS `status_desc`
,(case `isnull_char`(`tbuild`.`owner_uid`,9999) when 9999 then `tbuild`.`owner_nm` else concat(`u`.`last_name`,_latin1', ',`u`.`first_name`) end) AS `owner_name`
,`maintenance`.`code_desc` AS `maint_desc`
,FormatDateTime(trfc.suite_review_date, 'mm/dd/yyyy') as `suite_cab_date`
,`suitstat`.`code_desc` AS `suite_stat`
,FormatDateTime(trfc.review_date, 'mm/dd/yyyy') as `ncf_cab_date`
,`ncfstat`.`code_desc` AS `ncf_stat`
,FormatDateTime(trfc.remedy_start_dt, 'mm/dd/yyyy hh:mm') as `remedy_start_date`
,FormatDateTime(trfc.remedy_end_dt, 'mm/dd/yyyy hh:mm') as `remedy_end_date`
,`tbuild`.`desc_blob` AS `title_nm`
,`tsr_child`.`parent_sr_id` AS `parent_sr_id`
,`tsr`.`division_id` AS `division_id`
,`tsr_child`.`build_no` AS `build_no`
,`tsr`.`sr_no` AS `sr_no`
from `tsr_child`
left join `tsr` on `tsr_child`.`parent_sr_id` = `tsr`.`sr_id`
left join `tremedy` on `tsr`.`sr_no` = `tremedy`.`remedy_no`
left join `tbuild` on `tsr_child`.`product_cd` = `tbuild`.`product_cd` and `tsr_child`.`build_no` = `tbuild`.`build_no`
left join `trfc` on `tbuild`.`rfc_prod_no` = `trfc`.`rfc_no`
left join `tcodes` `status` on `tbuild`.`status_cd` = `status`.`code_value` and `status`.`code_type_id` = 122
left join `tcodes` `product` on `tbuild`.`product_cd` = `product`.`code_value` and  `product`.`code_type_id` = 121
left join `tcodes` `maintenance` on `tbuild`.`maintenance_type_cd` = `maintenance`.`code_value`  and `maintenance`.`code_type_id` = 158
left join `tcodes` `suitstat` on `trfc`.`suite_review_cd` = `suitstat`.`code_value`  and `suitstat`.`code_type_id` = 162
left join `tcodes` `ncfstat` on `trfc`.`fcab_review_cd` = `ncfstat`.`code_value`  and `ncfstat`.`code_type_id` = 105
left join `tuser` `u` on `tbuild`.`owner_uid` = `u`.`user_id`
join `tdivision` on `tsr`.`division_id` = `tdivision`.`division_id`;

