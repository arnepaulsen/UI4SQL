CREATE OR REPLACE VIEW `vissue_list` 
AS select _utf8'Issue' AS `target`,
`tissue`.`issue_id` AS `issue_id`,
`tissue`.`reference_nm` AS `reference_nm`,
`tissue`.`title_nm` AS `title_nm`,
`s`.`code_desc` AS `status_desc`,
`p`.`code_desc` AS `priority_desc`,
c.code_desc as subproj_desc,
concat(`u`.`last_name`,_latin1',',`u`.`first_name`) AS `UpdatedBy`,
`tissue`.`status_cd` AS `status_cd`,
`tissue`.`priority_cd` AS `priority_cd`,
`tissue`.`assigned_uid` AS `assigned_uid`,
`tissue`.`project_id` AS `project_id`,
tuser_project.role_cd,
tuser_project.user_id
from `tissue` 
join `tproject` on `tissue`.`project_id` = `tproject`.`project_id` 
left join tuser_project on tissue.project_id = tuser_project.project_id
left join `tcodes` `s` on `tissue`.`status_cd` = `s`.`code_value` and `s`.`code_type_id` = 45
left join `tcodes` `p` on `tissue`.`priority_cd` = `p`.`code_value` and  `p`.`code_type_id` = 7
left join `tuser` `u` on `tissue`.`assigned_uid` = `u`.`user_id`
left join tcodes c on c.code_type_id  = 157  and tproject.chng_req_nm = c.code_desc2 and tissue.sub_cd = c.code_value





