CREATE OR REPLACE VIEW `vsr_child` AS select 
`tsr_child`.`sr_child_id` AS `sr_child_id`
,`tsr_child`.`child_type_cd` AS `child_type_cd`
,`tsr_child`.`product_cd` AS `product_cd`
,`tsr_child`.`build_no` AS `build_no`
,`tsr_child`.`added_uid` AS `added_uid`
,`tsr_child`.`updated_uid` AS `updated_uid`
,`tsr_child`.`submitted_uid` AS `submitted_uid`
,`tsr_child`.`reviewed_uid` AS `reviewed_uid`
,`tsr_child`.`approved_uid` AS `approved_uid`
,`tsr_child`.`added_date` AS `added_date`
,`tsr_child`.`updated_date` AS `updated_date`
,`tsr_child`.`submitted_date` AS `submitted_date`
,`tsr_child`.`reviewed_date` AS `reviewed_date`
,`tsr_child`.`approved_date` AS `approved_date`
,`tsr_child`.`reviewed_flag` AS `reviewed_flag`
,`tsr_child`.`approved_flag` AS `approved_flag`
,`tsr_child`.`submitted_tx` AS `submitted_tx`
,`tsr_child`.`reviewed_tx` AS `reviewed_tx`
,`tsr_child`.`approved_tx` AS `approved_tx`
,`tsr_child`.`parent_sr_id` AS `parent_sr_id`
,`tsr`.`sr_no` AS `sr_no`
,`tremedy`.`title_nm` AS `title_nm`
,`tsr`.`division_id` AS `division_id`
,concat(`a`.`first_name`,_latin1' ',`a`.`last_name`) AS `added_by`
,concat(`u`.`first_name`,_latin1' ',`u`.`last_name`) AS `updated_by`
,_utf8'BRW' AS `role_cd`
,`tbuild`.`driver_cd` AS `driver_cd`
,`tbuild`.`driver_no` AS `driver_no`
,`tbuild`.`build_id` AS `build_id` 
from `tsr_child` 
left join `tsr` on `tsr_child`.`parent_sr_id` = `tsr`.`sr_id`
left join `tremedy` on `tsr`.`sr_no` = `tremedy`.`remedy_no`
left join `tbuild` on `tsr_child`.`product_cd` = `tbuild`.`product_cd` and `tsr_child`.`build_no` = `tbuild`.`build_no`
join `tdivision` on `tsr`.`division_id` = `tdivision`.`division_id`
left join `tuser` `a` on `tsr_child`.`added_uid` = `a`.`user_id`
left join `tuser` `u` on `tsr_child`.`updated_uid` = `u`.`user_id`