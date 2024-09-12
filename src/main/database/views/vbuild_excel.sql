CREATE OR REPLACE VIEW `vbuild_excel`    
AS select 
`tbuild`.`build_no` AS `ItemNo`,`product`.`code_desc` AS `product`
,`isnull_char`(`tbuild`.`cat_list_nm`,_utf8'') AS `Category`
,`isnull_char`(`tbuild`.`desc_blob`,_utf8'') AS `DESCRIPTION`
,concat(`isnull_char`(`tdatabase`.`reference_nm`,_utf8'') , _utf8' '
, `isnull_char`(`db2`.`reference_nm`,_utf8'') ,  _utf8' '
, `isnull_char`(`db3`.`reference_nm`,_utf8'') ,  _utf8' '
, `isnull_char`(`db4`.`reference_nm`,_utf8'') ) AS `EpicINI`
,`isnull_char`(`tbuild`.`driver_cd`,_utf8'') AS `TriggerType`
,`isnull_char`(`tbuild`.`driver_no`,_utf8'0') AS `TriggerId`
,`isnull_char`(concat(`tuser`.`last_name`,_latin1', ',`tuser`.`first_name`)
,`tbuild`.`owner_nm`) AS `Owner`
,`tcodes2`.`code_desc` AS `Status`
,`maintenance`.`code_desc` as `maint_desc`
,`isnull_char`(`tbuild`.`rfc_wits_no`,_utf8'0') AS `WITSRFC`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wits_nc_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_NC2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wits_sb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_SB2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wits_nb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_NB2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wits_eb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_EB2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wits_gg_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_GG2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wits_cc_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_CC2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wits_ca_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_CA2`
,`isnull_char`(`tbuild`.`rfc_wit3_no`,_utf8'0') AS `WIT3RFC`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wit3_nc_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_NC3`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wit3_sb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_SB3`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wit3_nb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_NB3`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wit3_eb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_EB3`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wit3_gg_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_GG3`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wit3_cc_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_CC3`
,`isnull_char`(`FormatDateTime`(`tbuild`.`wit3_ca_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `WITS_CA3`
,`isnull_char`(`tbuild`.`rfc_stgn_no`,_utf8'0') AS `STGNRFC`
,`isnull_char`(`FormatDateTime`(`tbuild`.`stgn_nc_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `STGN_NC2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`stgn_sb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `STGN_SB2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`stgn_nb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `STGN_NB2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`stgn_eb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `STGN_EB2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`stgn_gg_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `STGN_GG2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`stgn_cc_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `STGN_CC2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`stgn_ca_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `STGN_CA2`
,`isnull_char`(`tbuild`.`rfc_psup_no`,_utf8'0') AS `PSUPRFC`
,`isnull_char`(`FormatDateTime`(`tbuild`.`psup_nc_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PSUP_NCM`
,`isnull_char`(`FormatDateTime`(`tbuild`.`psup_sb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PSUP_SBM`
,`isnull_char`(`FormatDateTime`(`tbuild`.`psup_nb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PSUP_NBM`
,`isnull_char`(`FormatDateTime`(`tbuild`.`psup_eb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PSUP_EBM`
,`isnull_char`(`FormatDateTime`(`tbuild`.`psup_gg_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PSUP_GGM`
,`isnull_char`(`FormatDateTime`(`tbuild`.`psup_cc_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PSUP_CCM`
,`isnull_char`(`FormatDateTime`(`tbuild`.`psup_ca_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PSUP_CAM`
,`isnull_char`(`tbuild`.`rfc_prod_no`,_utf8'0') AS `PRODCRFC`
,`isnull_char`(`FormatDateTime`(`tbuild`.`prod_nc_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PROD_NC2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`prod_sb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PROD_SB2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`prod_nb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PROD_NB2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`prod_eb_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PROD_EB2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`prod_gg_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PROD_GG2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`prod_cc_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PROD_CC2`
,`isnull_char`(`FormatDateTime`(`tbuild`.`prod_ca_dt`,_utf8'mm/dd/yy'),_utf8' ') AS `PROD_CA2`
,`isnull_char`(`tbuild`.`comments_blob`,_utf8'') AS `COMMENTS`
,`isnull_char`(`tbuild`.`cancel_reason_tx`,_utf8'') AS `CancelReason`
,`isnull_char`(`tbuild`.`status_cd`,_utf8'') AS `status_cd`
,`isnull_char`(`tbuild`.`product_cd`,_utf8'') AS `product_cd`
,`isnull_char`(`tbuild`.`owner_uid`,_utf8'0') AS `owner_uid` 
,`isnull_char`(`tbuild`.`owner_uid`,_utf8'0') AS `assigned_uid` 
,`isnull_char`(`tbuild`.`maintenance_type_cd`,_utf8'0') AS `maintenance_type_cd` 
,`isnull_char`(`tbuild`.`suite_cd`,'') as `suite_cd`
from `tbuild` left join `tuser` on  `tbuild`.`owner_uid` = `tuser`.`user_id` 
left join `tcodes` `tcodes2` on `tbuild`.`status_cd` = `tcodes2`.`code_value`  and `tcodes2`.`code_type_id` = 122 
left join `tcodes` `product` on `tbuild`.`product_cd` = `product`.`code_value`  and  `product`.`code_type_id` = 121
left join `tcodes` `maintenance` on `tbuild`.`maintenance_type_cd` = `maintenance`.`code_value`  and  `maintenance`.`code_type_id` = 158
left join `tdatabase` on `tbuild`.`database_id` = `tdatabase`.`database_id` 
left join `tdatabase` `db2` on `tbuild`.`database2_id` = `db2`.`database_id`
left join `tdatabase` `db3` on `tbuild`.`database3_id` = `db3`.`database_id`
left join `tdatabase` `db4` on `tbuild`.`database4_id` = `db4`.`database_id`;
