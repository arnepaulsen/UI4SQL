-- caution --- need to adjust the plugin if the color_cd position changes , 

CREATE OR REPLACE  VIEW vrfc_list_suite
AS select _utf8'Rfc' AS `target`,`trfc`.`rfc_id` AS `rfc_id`,
_utf8'ROWNUM' AS `Expr1`,
concat(_utf8'<A  HREF=# CLASS=listButton onClick=showRow(',`trfc`.`rfc_id`,_utf8')>',`trfc`.`rfc_no`,_utf8'</A>') AS `rfc_link`
,`trfc`.`title_nm` AS `title_nm`
,REPLACE(remedy_grp_tx, "KPHC CN", "")  AS `remedy_grp_tx`
,trfc.suite_cd
,`stat`.`code_desc` AS `status_desc`
,`suite_stat`.`code_desc` AS `suite_cab_desc`
,`fcab_stat`.`code_desc` AS `fcab_cab_desc`
,`FormatDateTime`(`trfc`.`suite_review_date`,_utf8'mm/dd/yy') AS `review_show`
,`FormatDateTime`(`trfc`.`review_date`,_utf8'mm/dd/yy') AS `ncf_review_show`
,`rlse`.`code_desc` AS `release_desc`
,`trfc`.`suite_review_date` AS `suite_review_date`
,`trfc`.`review_date` as `ncf_review_date`
,`trfc`.`remedy_end_dt` AS `remedy_end_dt`
,`trfc`.`added_date` AS `added_date`
,`trfc`.`rfc_no` AS `rfc_no`	
,`trfc`.`suite_review_cd` AS `review_cd`
,`trfc`.`fcab_review_cd` AS `fcab_review_cd`
,`trfc`.`division_id` AS `division_id`
,`trfc`.`status_cd` AS `status_cd`
,`trfc`.`remedy_grp_cd` AS `remedy_grp_cd`
,`trfc`.`status_cd` as color_place_holder
,`colorx`.`code_desc2` as `color_cd`
,trfc.release_cd as `release_cd`
from `trfc`
join `tdivision` on `trfc`.`division_id` = `tdivision`.`division_id` and `tdivision`.`division_id` = 1
left join `tcontact` on `trfc`.`requester_uid` = `tcontact`.`contact_id`
left join `tcodes` `stat` on `trfc`.`status_cd` = `stat`.`code_value` and `stat`.`code_type_id` = 118
left join `tcodes` `suite_stat` on `trfc`.`suite_review_cd` = `suite_stat`.`code_value` and `suite_stat`.`code_type_id` = 162
left join `tcodes` `fcab_stat` on `trfc`.`fcab_review_cd` = `fcab_stat`.`code_value` and `fcab_stat`.`code_type_id` = 105
left join `tcodes` `install` on `trfc`.`install_cd` = `install`.`code_value` and `install`.`code_type_id` = 3
left join `tcodes` `sfty` on `trfc`.`safety_cd` = `sfty`.`code_value` and `sfty`.`code_type_id` = 3
left join `tcodes` `compliant` on `trfc`.`compliant_cd` = `compliant`.`code_value` and `compliant`.`code_type_id` = 3
left join `tapplications` on `trfc`.`application_id` = `tapplications`.`application_id`
left join `tcodes` `colorx` on `trfc`.`color_cd` = `colorx`.`code_value` and `colorx`.`code_type_id` = 71
left join `tcodes` `rlse` on `trfc`.`release_cd` = `rlse`.`code_value` and `rlse`.`code_type_id` = 98
where `trfc`.`rfc_id` > 0;


-- ncf view is same as above, except it doesn't have the suite_review_date, and added-date ===> they don't care about that

CREATE OR REPLACE  VIEW vrfc_list_fcab
AS select 'RfcNcfCab' AS `target`
,`trfc`.`rfc_id` AS `rfc_id`,
_utf8'ROWNUM' AS `Expr1`,
concat(_utf8'<A  HREF=# CLASS=listButton onClick=showRow(',`trfc`.`rfc_id`,_utf8')>',`trfc`.`rfc_no`,_utf8'</A>') AS `rfc_link`
,`trfc`.`title_nm` AS `title_nm`
,REPLACE(remedy_grp_tx, "KPHC CN", "")  AS `remedy_grp_tx`
,trfc.suite_cd
,`stat`.`code_desc` AS `status_desc`
,`ncf_cab_stat`.`code_desc` AS `ncf_cab_desc`
,`trfc`.`call_seq_tx` as `call_seq_tx`
,`FormatDateTime`(`trfc`.`review_date`,_utf8'mm/dd/yy') AS `ncf_review_show`
,`rlse`.`code_desc` AS `release_desc`
,(case rtn_maint_cd when 'Y' then 'Yes' when 'N' then 'No' else ' ' end) as Rtn_Maint
,(case on_offline_cd when 'Y' then 'Yes' when 'N' then 'No' else ' ' end) as OnLineOffline
,Date(`trfc`.`review_date`) as `ncf_review_date`
,`trfc`.`remedy_end_dt` AS `remedy_end_dt`
,`trfc`.`rfc_no` AS `rfc_no`
,`trfc`.`fcab_review_cd` AS `review_cd`
,`trfc`.`division_id` AS `division_id`
,`trfc`.`status_cd` AS `status_cd`
,`colorx`.`code_desc2` as `color_cd`
,`trfc`.`fcab_review_cd` as `fcab_review_cd`
,`trfc`.`remedy_grp_cd` AS `remedy_grp_cd`
,`trfc`.`release_cd` as `release_cd`
,`trfc`.`rtn_maint_cd` as `rtn_maint_cd`
,`trfc`.`on_offline_cd` as on_offline_cd
from `trfc`
join `tdivision` on `trfc`.`division_id` = `tdivision`.`division_id` and `tdivision`.`division_id` = 1
left join `tcontact` on `trfc`.`requester_uid` = `tcontact`.`contact_id`
left join `tcodes` `stat` on `trfc`.`status_cd` = `stat`.`code_value` and `stat`.`code_type_id` = 118
left join `tcodes` `ncf_cab_stat` on `trfc`.`fcab_review_cd` = `ncf_cab_stat`.`code_value` and `ncf_cab_stat`.`code_type_id` = 105
left join `tcodes` `install` on `trfc`.`install_cd` = `install`.`code_value` and `install`.`code_type_id` = 3
left join `tcodes` `sfty` on `trfc`.`safety_cd` = `sfty`.`code_value` and `sfty`.`code_type_id` = 3
left join `tcodes` `compliant` on `trfc`.`compliant_cd` = `compliant`.`code_value` and `compliant`.`code_type_id` = 3
left join `tcodes` `colorx` on `trfc`.`color_cd` = `colorx`.`code_value` and `colorx`.`code_type_id` = 71
left join `tcodes` `rlse` on `trfc`.`release_cd` = `rlse`.`code_value` and `rlse`.`code_type_id` = 98
left join `tapplications` on `trfc`.`application_id` = `tapplications`.`application_id`
where `trfc`.`rfc_id` > 0 and `trfc`.`review_date` > '2011-01-25'  ;

