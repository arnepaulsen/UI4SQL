CREATE OR REPLACE 
VIEW `vcodes` AS select `tcodes`.`order_by` AS `odor`
,`tcodes`.`code_value` AS `code_value`
,`tcodes`.`code_desc` AS `code_desc`
,`tcode_types`.`code_type` AS `code_type` 
from `tcodes` 
join `tcode_types` on `tcodes`.`code_type_id` = `tcode_types`.`code_type_id`
where `tcodes`.`code_type_id` = `tcode_types`.`code_type_id`;