CREATE OR REPLACE VIEW `vbuildstat` AS select 
`tbuild_stat`.*,
`tdivision`.`div_name` AS `div_name`,
'BRW' AS `role_cd`,
concat(`a`.`first_name`,_latin1' ',`a`.`last_name`) AS `added_by`,
concat(`u`.`first_name`,_latin1' ',`u`.`last_name`) AS `updated_by` 
from `tbuild_stat` 
left join `tdivision` on tbuild_stat.division_id = tdivision.division_id
left join tuser `a` on tbuild_stat.added_uid = `a`.`user_id`
left join tuser u on tbuild_stat.updated_uid  = `u`.`user_id`
where tbuild_stat.build_stat_id > 0
