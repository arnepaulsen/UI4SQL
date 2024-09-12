CREATE OR REPLACE  VIEW vip_tracker_list as
select _utf8'IPTrackerOS' AS `target`
,`tip_tracker`.`tracker_id` AS `tracker_id`
,`tip_tracker`.`sr_no` AS `sr_no`
,concat(_utf8'<a name=sr',`tip_tracker`.`tracker_id`,_utf8'></a>',`tip_tracker`.`title_nm`) AS `requestTitle`
,ordersetlist(tip_tracker.sr_no) as oslist
,`tip_tracker`.`keyword_tx` AS `keyword_tx`
,`level`.`code_desc` AS `level_desc`,`priority`.`code_desc` AS `priority_desc`
,`tdomain`.`code_desc` AS `domain_desc`
,`suit`.`code_desc` AS `suit_desc`
,`status`.`code_desc` AS `stat_desc`
,concat(`owner`.`last_name`,_latin1',',`owner`.`first_name`) AS `theOwner`
,`FormatDateTime`(`tip_tracker`.`hcg_meet_date`,_utf8'mm/dd/yy') AS `hcg_show`
,`FormatDateTime`(`tip_tracker`.`remedy_end_dt`,_utf8'mm/dd/yy') AS `request_show`
,`tip_tracker`.`status_cd` AS `status_cd`
,`tip_tracker`.`division_id` AS `division_id`
,`tip_tracker`.`owner_uid` AS `owner_uid`
,`tip_tracker`.`level_cd` AS `level_cd`
,`tip_tracker`.`priority_cd` AS `priority_cd`
,`tip_tracker`.`type_cd` AS `type_cd`
,`tip_tracker`.`hcg_meet_date` AS `hcg_meet_date`
,`tip_tracker`.`remedy_end_dt` AS `remedy_end_dt`
,`tip_tracker`.`tracker_set_id` AS `tracker_set_id`
,`tip_tracker`.`domain_1_cd` AS `domain_1_cd`
,`tip_tracker`.`domain_2_cd` AS `domain_2_cd`
,`tip_tracker`.`domain_3_cd` AS `domain_3_cd`
,`tip_tracker`.`domain_4_cd` AS `domain_4_cd`
,`tip_tracker`.`domain_5_cd` AS `domain_5_cd`
,`tip_tracker`.`domain_6_cd` AS `domain_6_cd`
,`tip_tracker`.`domain_7_cd` AS `domain_7_cd`
,`tip_tracker`.`domain_8_cd` AS `domain_8_cd`
,tip_tracker.suite_cd
,tip_tracker.suite_cd as suit_cd
,title_nm
from `tip_tracker` 
join `tdivision` on  `tip_tracker`.`division_id` = `tdivision`.`division_id` and `tdivision`.`division_id` = 1
left join `tcodes` `status` on `tip_tracker`.`status_cd` = `status`.`code_value`  and `status`.`code_type_id` = 118
left join `tcodes` `suit` on  `tip_tracker`.`suite_cd` = `suit`.`code_value` and `suit`.`code_type_id` = 152 
left join `tcodes` `tdomain` on `tip_tracker`.`domain_1_cd` = `tdomain`.`code_value` and `tdomain`.`code_type_id` = 142
left join `tcodes` `level` on `tip_tracker`.`level_cd` = `level`.`code_value` and `level`.`code_type_id` = 55
left join `tcodes` `priority` on `tip_tracker`.`priority_cd` = `priority`.`code_value` and `priority`.`code_type_id` = 154
left join `tcontact` `owner` on `tip_tracker`.`owner_uid` = `owner`.`contact_id` 
where  `tip_tracker`.`tracker_id` > 0 and  `tip_tracker`.`tracker_set_id` = 0  and  `tip_tracker`.`type_cd` = _latin1'OS';
