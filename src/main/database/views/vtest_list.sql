CREATE OR REPLACE view `vtest_list` AS select _utf8'Test' AS `target`,
ttest.test_id,`ttest`.`sr_no` AS `sr_no`,
`ttest`.`title_nm` AS `title_nm`,
`p`.`code_desc` AS `priority_desc`,
`s`.`code_desc2` AS `stat_desc`,
concat(`a`.`last_name`,_latin1',',`a`.`first_name`) AS `Requestor_name`,
`ttest`.`progress_cd` AS `progress_cd`,
`ttest`.`status_cd` AS `status_cd`,
`ttest`.`priority_cd` AS `priority_cd`,
ttest.project_id,
ttest.division_id
from `ttest`
join `tproject` on `ttest`.`project_id` = `tproject`.`project_id`
left join `tcodes` `s` on `ttest`.`status_cd` = `s`.`code_value` and `s`.`code_type_id` = 93
left join `tcodes` `p` on `ttest`.`priority_cd` = `p`.`code_value`  and  `p`.`code_type_id` = 7
left join `tuser` `a` on `ttest`.`owner_uid` = `a`.`user_id`;
