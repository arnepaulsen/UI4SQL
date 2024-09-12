CREATE OR REPLACE VIEW `vbuild_list` AS select _utf8'Build' AS `target`
,`tbuild`.`build_id` AS `build_id`
,`tbuild`.`build_no` AS `build_no`
,`status`.`code_desc` AS `status_desc`
,`maintenance`.`code_desc` as `maint_desc`
,`tbuild`.`driver_cd` AS `driver_cd`
,`tbuild`.`suite_cd` as `suite_cd`
,`product`.`code_desc` AS `code_desc`
,(case `isnull_char`(`tbuild`.`owner_uid`,9999) when 9999 then `tbuild`.`owner_nm` else concat(`u`.`last_name`,_latin1', ',`u`.`first_name`) end) AS `owner_name`
,`tbuild`.`desc_blob` AS `desc_blob`
,`tbuild`.`product_cd` AS `product_cd`
,`tbuild`.`status_cd` AS `status_cd`
,`tbuild`.`owner_uid` AS `owner_uid`
,`tbuild`.`maintenance_type_cd` as `maintenance_type_cd`
,`tbuild`.`division_id` AS `division_id`
from `tbuild` join `tdivision` on `tbuild`.`division_id` = `tdivision`.`division_id`
and `tdivision`.`division_id` = 1
left join `tcodes` `status` on `tbuild`.`status_cd` = `status`.`code_value` and `status`.`code_type_id` = 122
left join `tcodes` `product` on `tbuild`.`product_cd` = `product`.`code_value`  and  `product`.`code_type_id` = 121
left join `tcodes` `maintenance` on `tbuild`.`maintenance_type_cd` = `maintenance`.`code_value`  and  `maintenance`.`code_type_id` = 158
left join `tuser` `u` on `tbuild`.`owner_uid` = `u`.`user_id`
where `tbuild`.`build_id` > 0;
