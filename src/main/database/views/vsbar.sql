CREATE OR REPLACE VIEW `vsbar` AS select 
`tsbar`.*,
`tdivision`.`div_name` AS `div_name`,
'BRW' AS `role_cd`,
concat(`a`.`first_name`,_latin1' ',`a`.`last_name`) AS `added_by`,
concat(`u`.`first_name`,_latin1' ',`u`.`last_name`) AS `updated_by` 
from `tsbar` 
left join `tdivision` on tsbar.division_id = tdivision.division_id
left join tuser `a` on tsbar.added_uid = `a`.`user_id`
left join tuser u on tsbar.updated_uid  = `u`.`user_id`
where tsbar.sbar_id > 0;
