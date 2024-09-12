-- 11/8/10 add fac_actn_reqr_cd in list
CREATE OR REPLACE VIEW `vsbar_list` 
AS select _utf8'SBAR' AS `target`,
`tsbar`.`sbar_id` AS `sbar_id`,
`tsbar`.`reference_nm` AS `reference_nm`,
`tsbar`.`title_nm` AS `topic_nm`,
`s`.`code_desc` AS `status_desc`,
`p`.`code_desc` AS `priority_desc`,
`c`.`code_desc` AS `sub_desc`,
(case `tsbar`.`fac_actn_reqr_cd` when 'Y' then 'Yes' when 'N' then 'No' else '' end) as facility_actn,
concat(follow.last_name,', ', follow.first_name) AS `FollowUp`,
`tsbar`.`submitted_nm` AS `Submittor`,
`tsbar`.`status_cd` AS `status_cd`,
`tsbar`.`priority_cd` AS `priority_cd`,
`tsbar`.`assigned_uid` AS `assigned_uid`,
`tsbar`.`originator_uid` AS `originator_uid`,
`tsbar`.`follow_up_uid` AS `follow_up_uid`,
tsbar.division_id,
tsbar.sub_cd,
tsbar.title_nm,
tsbar.fac_actn_reqr_cd
from `tsbar`
join `tdivision` on `tsbar`.`division_id` = `tdivision`.`division_id`
left join tcodes c on c.code_type_id  = 157  and c.code_desc2 = 'SBAR' and tsbar.sub_cd = c.code_value
left join `tcodes` `s` on `tsbar`.`status_cd` = `s`.`code_value` and `s`.`code_type_id` = 163
left join `tcodes` `p` on `tsbar`.`priority_cd` = `p`.`code_value` and  `p`.`code_type_id` = 164
left join `tuser` `follow` on `tsbar`.`follow_up_uid` = `follow`.`user_id`;

