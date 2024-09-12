CREATE OR REPLACE VIEW `vincident_excel` 
AS select `isNull_Char`(`rpt`.`code_desc`,_utf8'') AS `ReportGroup`,`tincident`.`incident_no` AS `PR_No`
,concat(_latin1'<HISTORY>',`tincident`.`next_step_hist_blob`,_latin1' <CURRENT>',`tincident`.`next_step_tx`) AS `NextStep`
,`tincident`.`title_nm` AS `Description`,`stat`.`code_desc` AS `CurrentStatus`
,`tincident`.`description_blob` AS `DetailDescription`
,`tincident`.`part_status_tx` AS `PartStatus`,`workstat`.`code_desc` AS `WorkAroundStat`,`tincident`.`mitigation_blob` AS `WorkAround`
,`FormatDateTime`(`tincident`.`incident_date`,_utf8'mm/dd/yyyy') AS `IDd_Date`
,`isNull_Char`(`FormatDateTime`(`tincident`.`closed_date`,_utf8'mm/dd/yyyy'),_utf8'') AS `ClosedDate`
,`isNull_Char`(`tincident`.`epic_contact_tx`,_utf8'') AS `EpicRep`
,concat('SV: ' , severity.code_desc, ' LK: ', `likely`.`code_desc` , '  BR: ', `scope`.`code_desc`) AS `Risks`
,`tincident`.`rank_cd` AS `RANK`,`isNull_Char`(`tincident`.`adhoc_tx`,_utf8'') AS `AdHoc`
,`isNull_Char`(`tincident`.`kpkg_tx`,_utf8'') AS `KPkg`
,`isNull_Char`(`tincident`.`files_tx`,_utf8'') AS `FilesReceived`
,`isNull_Char`(`tincident`.`adhoc_comments_tx`,_utf8'') AS `AdHocComments`
,(case `tincident`.`ets_pass_flag` when _utf8'y' then _utf8'Yes' else _utf8'No' end) AS `ETS_Passed`
,`FormatDateTime`(`tincident`.`kpkg_date`,_utf8'mm/dd/yy') AS `ETA`
,concat(case `tincident`.`spr07_rel_flag` when _utf8'y' then _utf8'SPR-07 ' else _utf8'' end, case `tincident`.`spr08_rel_flag` when _utf8'y' then _utf8' SPR-08' else _utf8'' end) AS `versions_tx`
,`suite`.`code_desc` AS `Primary_Suite`,`isNull_Char`(`tincident`.`suites_tx`,_utf8'') AS `OtherSuites`,concat(cast(`tincident`.`rfc_no` as char charset utf8),_utf8' - ',convert(`FormatDateTime`(`tincident`.`cab_date`,_utf8'mm/dd/yy') using utf8)) AS `RFCNO_CAB_Date`
,`isNull_Char`(`tincident`.`notes_blob`,_utf8'') AS `Comments`
,`isNull_Char`(`tincident`.`impact_tx`,_utf8'') AS `Impact`
,`isNull_Char`(`tincident`.`justification_tx`,_utf8'') AS `Justification`
,`isNull_Char`(`tincident`.`assigned_by_tx`,_utf8'') AS `FixedBy`
,`isNull_Char`(`tincident`.`status_tx`,_utf8'') AS `ShortStatus`
,`FormatDateTime`(`tincident`.`incident_date`,_utf8'mm/yyyy') AS `ID_Date`
,`isNull_Char`(`tincident`.`call_duration_tx`,_utf8'') AS `CalllDuration`,`isNull_Char`(`tincident`.`email_activity_tx`,_utf8'') AS `Email`
,`isNull_Char`(`tincident`.`color_cd`,_utf8'') AS `color`,`tincident`.`suite_cd` AS `Suite`
,`isNull_Char`(`tincident`.`incident_date`,_utf8'') AS `incident_date`
,`isNull_Char`(`tincident`.`grp_cd`,_utf8'') AS `GroupCode`
,`tincident`.`ncal_stat_cd` AS `NCAL_Status` 
from ((((((((((((`tincident` join `tdivision` on(((`tincident`.`division_id` = `tdivision`.`division_id`) and (`tdivision`.`division_id` = 1)))) 
left join `tcontact` `owner` on((`tincident`.`owner_uid` = `owner`.`contact_id`))) 
left join `tcodes` `suite` on(((`tincident`.`suite_cd` = `suite`.`code_value`) and (`suite`.`code_type_id` = 136)))) 
left join `tcodes` `stat` on(((`tincident`.`ncal_stat_cd` = `stat`.`code_value`) and (`stat`.`code_type_id` = 58)))) 
left join `tcodes` `severity` on(((`tincident`.`severity_cd` = `severity`.`code_value`) and (`severity`.`code_type_id` = 137)))) 
left join `tcodes` `likely` on(((`tincident`.`likelihood_cd` = `likely`.`code_value`) and (`likely`.`code_type_id` = 138)))) 
left join `tcodes` `scope` on(((`tincident`.`breadth_cd` = `scope`.`code_value`) and (`scope`.`code_type_id` = 139)))) 
left join `tcodes` `adhoc` on(((`tincident`.`adhoc_stat_cd` = `adhoc`.`code_value`) and (`scope`.`code_type_id` = 134)))) 
left join `tcodes` `dlg` on(((`tincident`.`dlg_stat_cd` = `dlg`.`code_value`) and (`dlg`.`code_type_id` = 134)))) 
left join `tcodes` `rn` on(((`tincident`.`rn_stat_cd` = `rn`.`code_value`) and (`rn`.`code_type_id` = 134)))) 
left join `tcodes` `rpt` on(((`tincident`.`grp_cd` = `rpt`.`code_value`) and (`rpt`.`code_type_id` = 146)))) 
left join `tcodes` `workstat` on(((`tincident`.`work_around_cd` = `workstat`.`code_value`) and (`workstat`.`code_type_id` = 102)))) 
where (`tincident`.`incident_id` > 0)