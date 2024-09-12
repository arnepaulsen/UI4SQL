-- 9/23/10 Change dates from mm/dd/yy to mm/dd/yyyy
-- 1/24/11 Reorder
-- 2/9/11 - Add rfc_id to allow single-row export from the detail page using the current record key
-- 2/14/11 - add routine/non-routine flag for export


CREATE OR REPLACE
VIEW `vrfc_excel_fcab` AS select
concat(isnull_char(concat(`tcontact_owner`.`first_name`,' ',`tcontact_owner`.`last_name`),'') , '/', isnull_char(concat(`tcontact_rqstr`.`first_name`,' ',`tcontact_rqstr`.`last_name`),'') ) AS `OwnerRequestor`
,`isnull_char`(`suites`.`code_desc`,_utf8'') AS `Suites`
,`isnull_char`(`trfc`.`type_cd`,_utf8'') AS `ChangeType`
,concat(`trfc`.`trigger_cd`,'-',`trfc`.`problem_nm`) AS `theTrigger`
,`isnull_char`(`trfc`.`rfc_no`,_utf8'0') AS `RFCNo`
,isnull_char(concat(trfc.title_nm, ' Desc: ' , description_blob),'') as ChangeDesc
,concat(`isnull_char`(`tcodes_6`.`code_desc`,_utf8''),'  ',isnull_char(trfc.user_notify_tx,'')) AS `NotifyMethod`
,`isnull_char`(`trfc`.`install_hours_tx`,_utf8'') AS `Duration`
,(case `trfc`.`outage_cd` when _utf8'Y' then _utf8'Yes' else _utf8'No' end) AS `Outage`
,`isnull_char`(`FormatDateTime`(`trfc`.`remedy_start_dt`,_utf8'mm/dd/yyyy hh:mm'),_utf8' ') AS `Planned_Start`
,`isnull_char`(`FormatDateTime`(`trfc`.`remedy_end_dt`,_utf8'mm/dd/yyyy hh:mm'),_utf8' ') AS `Planned_End`
,`isnull_char`(`trfc`.`remedy_verifier_nm`,'') as ReleaseSpecialist
,`isnull_char`(`rlse`.`code_desc`,_utf8'') AS `theRelease`
,isnull_char(concat((case `trfc`.`asm_impact_cd` when _utf8'Y' then _utf8'Yes' else _utf8'No' end),' - ',trfc.legacy_comment_tx),'') AS `Non_Impact`
,isnull_char(concat((case `trfc`.`x_suite_cd` when _utf8'y' then _utf8'Yes' else _utf8'No' end),' - ',cross_suite_comment_tx),'') AS `Cross_Suite`
,`isnull_char`(`trfc`.`adhoc_tx`,_utf8'') AS `Dependencies_Adhoc`
,(case `trfc`.`safety_cd` when _utf8'y' then _utf8'Yes' else _utf8'No' end) AS `PatSafty`
,concat(`isnull_char`(`trfc`.`test_approve_tx`,_utf8''), ' comment: ', `isnull_char`(`trfc`.`tst_status_ncf_cmnt_tx`,_utf8'')) AS `TestApprov`
,`isnull_char`(`tcodes_3`.`code_desc`,_utf8'') AS `TestGroup`
,`isnull_char`(`tcodes_4`.`code_desc`,_utf8'') AS `TestSTatus`
,`isnull_char`(`trfc`.`boa_test_aprv_nm`,_utf8'') AS `BOAD_TEST_aprv`
,`isnull_char`(`trfc`.`boa_change_aprv_nm`,_utf8'') AS `BOAD_chg_APRVR`
,concat((case `trfc`.`interface_sign_off_cd` when _utf8'Y' then _utf8'Yes' else _utf8'No' end), ' / Follow-up: ', isnull_char(`trfc`.`interface_sign_off_tx`,'')) AS `TechSignOff`
,concat((case `trfc`.`security_sign_off_cd` when _utf8'Y' then _utf8'Yes' else _utf8'No' end), ' / Follow-up: ',  isnull_char(`trfc`.`security_sign_off_tx`,'')) AS `SecuritySignOff`
,concat((case `trfc`.`compliant_cd` when _utf8'y' then _utf8'Yes' else _utf8'No' end), ' / Comment: ', isnull_char(`trfc`.`rfc_compliant_comment_tx`,'')) AS `Compliant`
,concat(`isnull_char`(`tcodes_2`.`code_desc`,_utf8''), ' / Comment: ', isnull_char(`trfc`.`resolution_blob`,'')) AS `FCABStatus`
,`isnull_char`(`tcodes_5`.`code_desc`,_utf8'') AS `FINALStatus`
,`isnull_char`(`FormatDateTime`(`trfc`.`review_date`,_utf8'mm/dd/yyyy'),_utf8' ') AS `Cab_Rv_Date`
,(case `trfc`.`on_offline_cd` when _utf8'Y' then _utf8'Yes' when _utf8'N' then _utf8'No' else _utf8'' end) AS `OfflineCode`
,`isnull_char`(`trfc`.`status_tx`,_utf8'') AS `InstallStat`
,`trfc`.`rfc_no` AS `rfc_no`
,`trfc`.`remedy_grp_cd` AS `remedy_grp_cd`
,`trfc`.`status_cd` AS `status_cd`
,`trfc`.`fcab_review_cd` AS `fcab_review_cd`
,`trfc`.`suite_review_cd` AS `suite_review_cd`
,`trfc`.`safety_cd` AS `safety_cd`
,`trfc`.`review_date` AS `review_date`
,`trfc`.`requester_uid` AS `requester_uid`
,`trfc`.`release_cd` AS `release_cd`
,`trfc`.`suite_cd` as `suite_cd`
,`trfc`.`on_offline_cd` as `on_offline_cd`
,trfc.call_seq_tx, trfc.remedy_end_dt
,`trfc`.`rfc_id` as `rfc_id`
,`trfc`.`rtn_maint_cd` as `rtn_maint_cd`
from `trfc`
join `tdivision` on `trfc`.`division_id` = `tdivision`.`division_id` and `tdivision`.`division_id` = 1
left join `tcontact` on `trfc`.`requester_uid` = `tcontact`.`contact_id`
left join `tcontact` `tcontact_owner` on `trfc`.`owner_uid` = `tcontact_owner`.`contact_id`
left join `tcontact` `tcontact_rqstr` on `trfc`.`requester_uid` = `tcontact_rqstr`.`contact_id`
left join `tuser` `tuser_1` on `trfc`.`tested_by_uid` = `tuser_1`.`user_id`
left join `tcodes` on `trfc`.`urgency_cd` = `tcodes`.`code_value` and `tcodes`.`code_type_id` = 2
left join `tcodes` `tcodes_2` on `trfc`.`fcab_review_cd` = `tcodes_2`.`code_value` and `tcodes_2`.`code_type_id` = 105
left join `tcodes` `tcodes_3` on `trfc`.`test_method_cd` = `tcodes_3`.`code_value` and `tcodes_3`.`code_type_id` = 130
left join `tcodes` `tcodes_4` on `trfc`.`tested_cd` = `tcodes_4`.`code_value` and `tcodes_4`.`code_type_id` = 159
left join `tcodes` `tcodes_5` on `trfc`.`final_review_cd` = `tcodes_5`.`code_value` and `tcodes_5`.`code_type_id` = 160
left join `tcodes` `tcodes_6` on `trfc`.`notify_cd` = `tcodes_6`.`code_value` and `tcodes_6`.`code_type_id` = 161
left join `tcodes` `suites` on `trfc`.`suite_cd` = `suites`.`code_value` and `suites`.`code_type_id` = 95
left join `tcodes` `rlse` on `trfc`.`release_cd` = `rlse`.`code_value` and `rlse`.`code_type_id` = 98
where `trfc`.`rfc_id` > 0 and  `trfc`.`review_date` > '2011-01-25';


-- ,isnull_char(concat((case `trfc`.`rtn_maint_cd` when _utf8'Y' then _utf8'Yes' else _utf8'No' end),' - ',trfc.non_rtn_comment_tx),'') AS `Rtn_Maint`


