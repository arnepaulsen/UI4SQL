-- 9/23/10 Change date formate from mm/dd/yy to mm/dd/yyyy
-- 1/28/11 Add review_date to export for filter
-- 2/4/11 - add rfc_id for single-row export off the detail page
-- 3/18/11 - change remedy start/end format to date/time , and add "remedy_verifier_nm" as 'Release Specialist"


CREATE OR REPLACE VIEW `vrfc_excel_suite` AS 
select `trfc`.`rfc_no` AS `RFCno`
,`isnull_char`(replace(`trfc`.`remedy_grp_tx`,_latin1'KPHC CN ',_latin1''),_utf8'') AS `Remedy_Group`
,`isnull_char`(`trfc`.`description_blob`,_utf8'') AS `Summary`
,`isnull_char`(`trfc`.`bsns_need_blob`,_utf8'') AS `Busness_Need`
,concat(`tcontact_1`.`last_name`,_latin1', ',`tcontact_1`.`first_name`) AS `Owner`
,concat(`tcontact`.`last_name`,_latin1', ',`tcontact`.`first_name`) AS `Requester`
,concat(`trfc`.`remedy_verifier_nm`,_latin1', ',`tcontact`.`first_name`) AS `ReleaseSpecialist`
,isnull_char(rlse.code_desc,'') AS Relase_Desc
,`isnull_char`(`FormatDateTime`(`trfc`.`remedy_start_dt`,_utf8'mm/dd/yyyy hh:mm'),_utf8' ') AS `Planned_Start`
,`isnull_char`(`FormatDateTime`(`trfc`.`remedy_end_dt`,_utf8'mm/dd/yyyy hh:mm'),_utf8' ') AS `Planned_End`
,concat(`isnull_char`(`trfc`.`trigger_cd`,_utf8''),_latin1' ',`isnull_char`(`trfc`.`problem_nm`,_utf8'')) AS `Trigger_No`
,`isnull_char`(`trfc`.`build_no`,_utf8'') AS `BuildTrack_No`,(case `trfc`.`rtn_maint_cd` when _utf8'y' then _utf8'Yes' else _utf8'No' end) AS `Rtn_Maint`
,(case `trfc`.`asm_impact_cd` when _utf8'Y' then _utf8'Yes' else _utf8'No' end) AS `ASM_Impact`
,(case `trfc`.`x_suite_cd` when _utf8'y' then _utf8'Yes' else _utf8'No' end) AS `Cross_Suite`
,`tcodes_3`.`code_desc` AS `Test_Approval`,`isnull_char`(`tuser_1`.`last_name`,`trfc`.`tested_nm`) AS `Tester_Name`
,isnull_char(user_notify.code_desc,'') as user_notify
,`tcodes_2`.`code_desc` AS `RIP_CAB_Decision`
,`isnull_char`(`FormatDateTime`(`trfc`.`suite_review_date`,_utf8'mm/dd/yyyy'),_utf8' ') AS `review_date_show`
,`isnull_char`(`trfc`.`comment_blob`,_utf8'') AS `CommentsBlob`
,(case `trfc`.`suite_review_cd` when _utf8'A' then `isnull_char`(`FormatDateTime`(`trfc`.`suite_decision_date`,_utf8'mm/dd/yyyy'),_utf8' ') else _utf8'' end) AS `Approve_Date`
,(case `trfc`.`suite_review_cd` when _utf8'A' then (case `isdate`(`trfc`.`suite_decision_date`) when 1 then `formatdatetime`(`trfc`.`remedy_end_dt`,_utf8'mm/dd/yyyy') else _utf8'' end) else _utf8'' end) AS `Approved_For`
,`rem_stat`.`code_desc` AS `remedy_status`
,isnull_char(bldstat.code_desc,'') as buildstatus
,`FormatDateTime`(`trfc`.`remedy_end_dt`,_utf8'mm/dd/yy') AS `fmt_remedy_end_dt`
,`trfc`.`rfc_no` AS `rfc_no`,`trfc`.`remedy_grp_cd` AS `remedy_grp_cd`
,`trfc`.`status_cd` AS `status_cd`
,`trfc`.`suite_review_cd` AS `suite_review_cd`
,`trfc`.`review_date` as `review_date`
,`trfc`.`safety_cd` AS `safety_cd`
,`trfc`.`requester_uid` AS `requester_uid`
,`trfc`.`added_date` AS `added_date`
,`trfc`.`remedy_end_dt` AS `remedy_end_dt`
,`trfc`.`suite_review_date` AS `suite_review_date` 
,`trfc`.`suite_review_cd` as `review_cd`
,`trfc`.`fcab_review_cd` as `fcab_review_cd`
,`trfc`.`suite_cd` as `suite_cd`
,`trfc`.`release_cd` as `release_cd`
,`trfc`.`rfc_id` as `rfc_id`
from 
`trfc` 
left join `tcontact` on `trfc`.`requester_uid` = `tcontact`.`contact_id`
left join `tcontact` `tcontact_1` on `trfc`.`owner_uid` = `tcontact_1`.`contact_id`
left join `tuser` `tuser_1` on `trfc`.`tested_by_uid` = `tuser_1`.`user_id`
left join `tcodes` on `trfc`.`urgency_cd` = `tcodes`.`code_value` and `tcodes`.`code_type_id` = 2
left join `tcodes` `tcodes_2` on `trfc`.`suite_review_cd` = `tcodes_2`.`code_value` and `tcodes_2`.`code_type_id` = 162
left join `tcodes` `tcodes_3` on `trfc`.`test_method_cd` = `tcodes_3`.`code_value` and `tcodes_3`.`code_type_id` = 130
left join `tcodes` `rem_stat` on `trfc`.`status_cd` = `rem_stat`.`code_value` and `rem_stat`.`code_type_id` = 118
left JOIN tcodes rlse on trfc.release_cd = rlse.code_value and rlse.code_type_id = 98
left join tbuild on trfc.build_no = tbuild.build_no and trfc.build_no != 0  AND tbuild.product_cd = trfc.build_track_suite_cd
left join tcodes bldstat on tbuild.status_cd = bldstat.code_value and bldstat.code_type_id = 122
left OUTER JOIN tcodes user_notify on trfc.notify_cd = user_notify.code_value and user_notify.code_type_id = 161 ;