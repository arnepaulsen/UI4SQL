CREATE OR REPLACE  VIEW `vadhoc_excel`
AS SELECT    tadhoc.ra_no AS AuthCode,
	isnull_char(product.code_desc, '')  as PRODUCT_desc,
	isnull_char(stat.code_desc, '')  as STATUS_desc,
	tadhoc.file_nm as FileName,
	isnull_char(tadhoc.description_blob ,  '') AS Description,
	concat(tcontact.last_name  , ', ' , tcontact.first_name, '') AS theOwner,
	CASE tadhoc.outage_cd 	WHEN 'Y' THEN 'Yes' ELSE 'No' END as Outage,
	CASE tadhoc.configurable_cd WHEN 'Y' THEN 'Yes' ELSE 'No' END as Configure,
	isnull_char(FormatDateTime(tadhoc.wits_date, 'mm/dd/yy'), ' ') AS WITS2,
    isnull_char(FormatDateTime(tadhoc.wit3_date, 'mm/dd/yy'), ' ') AS WITS3,
    isnull_char(FormatDateTime(tadhoc.psup_date, 'mm/dd/yy'), ' ') AS PSUP,
    isnull_char(FormatDateTime(tadhoc.stgn_date, 'mm/dd/yy'), ' ') AS STGN,
    isnull_char(FormatDateTime(tadhoc.rip_cab_date, 'mm/dd/yy'), ' ') AS RIPCAB,
    isnull_char(FormatDateTime(tadhoc.ncf_cab_date, 'mm/dd/yy'), ' ') AS NCFCAB ,
	isnull_char(FormatDateTime(tadhoc.install_date, 'mm/dd/yy'), ' ') AS Install,
	isnull_char(tadhoc.release_comments_blob, '') AS Comments ,
	isnull_char(tadhoc.region_cd, '') AS REGION_CD,
	isnull_char(tadhoc.status_cd, '') AS STATUS_CD,
	isnull_char(tadhoc.product_cd, '') AS PRODUCT_CD,
	isnull_char(tadhoc.assigned_uid, '0') AS OWNER_ID,
	isnull_char(tadhoc.received_date, '') as RECEIVED_DATE
	FROM  tadhoc
	LEFT OUTER JOIN  tcontact on  tadhoc.assigned_uid = tcontact.contact_id
	LEFT OUTER JOIN tcodes product on tadhoc.product_cd = product.code_value and product.code_type_id = 141
	LEFT OUTER join tcodes stat on tadhoc.status_cd = stat.code_value and stat.code_type_id  = 109CREATE OR REPLACE VIEW `vadhoc_list` 
AS select _utf8'Adhoc' AS `target`
,`tadhoc`.`adhoc_id` AS `adhoc_id`
,_utf8'ROWNUM' AS `theRow`
,concat(_utf8'<A  HREF=# CLASS=listButton onClick=showRow(',`tadhoc`.`adhoc_id`,_utf8')>',`tadhoc`.`ra_no`,_utf8'</A>') AS `adhoc_link`
,`product`.`code_desc` AS `code_desc`
,`tadhoc`.`title_nm` AS `title_nm`
,`tadhoc`.`file_nm` AS `file_nm`
,`s`.`code_desc` AS `fcabstatus`
,status_tx
,concat(`owner`.`last_name`,_latin1',',`owner`.`first_name`) AS `OwnerNm`
,`conf`.`code_desc` AS `configurable_cd`,`outg`.`code_desc` AS `outage_cd`
,`FormatDateTime`(`tadhoc`.`psup_date`,_utf8'mm/dd/yy') AS `psup_disp`
,`FormatDateTime`(`tadhoc`.`wits_date`,_utf8'mm/dd/yy') AS `wits_disp`
,`FormatDateTime`(`tadhoc`.`wit3_date`,_utf8'mm/dd/yy') AS `wit3_disp`
,`FormatDateTime`(`tadhoc`.`stgn_date`,_utf8'mm/dd/yy') AS `stgb_disp`
,`FormatDateTime`(`tadhoc`.`rip_cab_date`,_utf8'mm/dd/yy') AS `rip_disp`
,`FormatDateTime`(`tadhoc`.`ncf_cab_date`,_utf8'mm/dd/yy') AS `ncf_disp`
,`FormatDateTime`(`tadhoc`.`install_date`,_utf8'mm/dd/yy') AS `install_disp`
,`color`.`code_desc2` AS `code_desc2`
,`tadhoc`.`received_date` AS `received_date`
,`tadhoc`.`status_cd` AS `status_cd`
,`tadhoc`.`product_cd` AS `product_cd`
,`tadhoc`.`assigned_uid` AS `assigned_uid`
,`tadhoc`.`ra_no` AS `ra_no`
,`tadhoc`.`division_id` AS `division_id` 
from (((((((((`tadhoc` join `tdivision` on(((`tadhoc`.`division_id` = `tdivision`.`division_id`) 
and (`tdivision`.`division_id` = 1)))) 
left join `tcodes` `reg` on(((`tadhoc`.`region_cd` = `reg`.`code_value`) and (`reg`.`code_type_id` = 108)))) 
left join `tcodes` `s` on(((`tadhoc`.`status_cd` = `s`.`code_value`) and (`s`.`code_type_id` = 109)))) 
left join `tcodes` `product` on(((`tadhoc`.`product_cd` = `product`.`code_value`) and (`product`.`code_type_id` = 141)))) 
left join `tapplications` on((`tadhoc`.`application_id` = `tapplications`.`application_id`))) 
left join `tcontact` `owner` on((`tadhoc`.`assigned_uid` = `owner`.`contact_id`))) 
left join `tcodes` `conf` on(((`tadhoc`.`configurable_cd` = `conf`.`code_value`) and (`conf`.`code_type_id` = 140)))) 
left join `tcodes` `outg` on(((`tadhoc`.`outage_cd` = `outg`.`code_value`) and (`outg`.`code_type_id` = 140)))) 
left join `tcodes` `color` on(((`tadhoc`.`color_cd` = `color`.`code_value`) and (`color`.`code_type_id` = 71)))) 
where (`tadhoc`.`adhoc_id` > 0);


-- don't get so fancy with the file name... just show it.


,((_utf8'<table><tr><td>' + replace(replace(`tadhoc`.`file_nm`,_latin1'tar.z',_latin1'tar.z</td></tr><tr><td>'),_latin1'.zip',_latin1'.zip</td></tr><tr><td>')) + _utf8'</td></tr></table>') AS `file_nm`

CREATE OR REPLACE VIEW `vbsnsqualform_list` AS 
select _utf8'BsnsQualForm' AS `target`
,`tbqf`.`bqf_id` AS `bqf_id`,`tbqf`.`rfc_no` AS `rfc_no`
,`tbqf`.`title_nm` AS `title_nm`
,`stat`.`code_desc` AS `Stat`
,`prod`.`code_desc` AS `Product`,concat(`requestor`.`last_name`,_latin1',',`requestor`.`first_name`) AS `theRequestor`
,`tbqf`.`natl_ac_nm` AS `natl_ac_nm`
,`tbqf`.`product_cd` AS `product_cd`
,`tbqf`.`status_cd` AS `status_cd`
,`tbqf`.`requestor_uid` AS `requestor_uid` 
, tbqf.division_id
from ((((`tbqf` join `tdivision` on(((`tbqf`.`division_id` = `tdivision`.`division_id`) and (`tdivision`.`division_id` = 1)))) 
left join `tcodes` `prod` on(((`tbqf`.`product_cd` = `prod`.`code_value`) and (`prod`.`code_type_id` = 127)))) 
left join `tcodes` `stat` on(((`tbqf`.`status_cd` = `stat`.`code_value`) and (`stat`.`code_type_id` = 5)))) 
left join `tcontact` `requestor` on((`tbqf`.`requestor_uid` = `requestor`.`contact_id`))) 
where (`tbqf`.`bqf_id` > 0)CREATE OR REPLACE VIEW `vbuild_excel`    
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
12/22/09 added maintenance type

CREATE OR REPLACE VIEW `vbuild_list` AS select _utf8'Build' AS `target`
,`tbuild`.`build_id` AS `build_id`
,`tbuild`.`build_no` AS `build_no`
,`status`.`code_desc` AS `status_desc`
,`maintenance`.`code_desc` as `maint_desc`
,`tbuild`.`driver_cd` AS `driver_cd`
,`tbuild`.`suite_cd` as `suite_cd`
,`product`.`code_desc` AS `code_desc`
,(case `isnull_char`(`tbuild`.`owner_uid`,9999) when 9999 then `tbuild`.`owner_nm` else concat(`u`.`last_name`,_latin1', ',`u`.`first_name`) end) AS `owner_name`
,`tbuild`.`desc_blob` AS `desc_blob`
,`tbuild`.`product_cd` AS `product_cd`
,`tbuild`.`status_cd` AS `status_cd`
,`tbuild`.`owner_uid` AS `owner_uid`
,`tbuild`.`maintenance_type_cd` as `maintenance_type_cd`
,`tbuild`.`division_id` AS `division_id`
from `tbuild` join `tdivision` on `tbuild`.`division_id` = `tdivision`.`division_id`
and `tdivision`.`division_id` = 1
left join `tcodes` `status` on `tbuild`.`status_cd` = `status`.`code_value` and `status`.`code_type_id` = 122
left join `tcodes` `product` on `tbuild`.`product_cd` = `product`.`code_value`  and  `product`.`code_type_id` = 121
left join `tcodes` `maintenance` on `tbuild`.`maintenance_type_cd` = `maintenance`.`code_value`  and  `maintenance`.`code_type_id` = 158
left join `tuser` `u` on `tbuild`.`owner_uid` = `u`.`user_id`
where `tbuild`.`build_id` > 0;-- 3/11/11 add remedy status_cd from prod_rfc into the view

CREATE OR REPLACE  VIEW `vbuild` AS
SELECT
'BRW' as role_cd , 
tbuild.build_id,
tbuild.build_no,
tbuild.division_id,
tbuild.owner_uid,
tbuild.database_id,
tbuild.database2_id,
tbuild.database3_id,
tbuild.database4_id,
tbuild.title_nm,
tbuild.reference_nm,
tbuild.owner_nm,
rfc_wits_no,
rfc_wit3_no,
rfc_psup_no,
rfc_prod_no,
rfc_stgn_no,
cat_list_nm,
driver_cd,
tbuild.product_cd,
driver_no,
tbuild.status_cd,
all_instance_cd,
tbuild.maintenance_type_cd,
tbuild.status_tx,
tbuild.cancel_reason_tx,
tbuild.desc_blob,
tbuild.comments_blob,
tbuild.impacts_blob,
tbuild.dependencies_tx,
tbuild.priority_cd,
tbuild.added_uid,
tbuild.updated_uid,
tbuild.submitted_uid,
tbuild.reviewed_uid,
tbuild.approved_uid,
tbuild.added_date,
tbuild.updated_date,
tbuild.submitted_date,
tbuild.reviewed_date,
tbuild.approved_date,
tbuild.reviewed_flag,
tbuild.approved_flag,
tbuild.submitted_tx,
tbuild.reviewed_tx,
tbuild.approved_tx,
tbuild.product,
FormatDateTime(wits_ca_dt, 'mm/dd/yyyy') AS wits_ca_dt,
FormatDateTime(wits_cc_dt, 'mm/dd/yyyy') AS wits_cc_dt,
FormatDateTime(wits_gg_dt, 'mm/dd/yyyy') AS wits_gg_dt,
FormatDateTime(wits_eb_dt, 'mm/dd/yyyy') AS wits_eb_dt,
FormatDateTime(wits_nb_dt, 'mm/dd/yyyy') AS wits_nb_dt,
FormatDateTime(wits_sb_dt, 'mm/dd/yyyy') AS wits_sb_dt,
FormatDateTime(wits_nc_dt, 'mm/dd/yyyy') AS wits_nc_dt,
FormatDateTime(wit3_ca_dt, 'mm/dd/yyyy') AS wit3_ca_dt,
FormatDateTime(wit3_cc_dt, 'mm/dd/yyyy') AS wit3_cc_dt,
FormatDateTime(wit3_gg_dt, 'mm/dd/yyyy') AS wit3_gg_dt,
FormatDateTime(wit3_eb_dt, 'mm/dd/yyyy') AS wit3_eb_dt,
FormatDateTime(wit3_nb_dt, 'mm/dd/yyyy') AS wit3_nb_dt,
FormatDateTime(wit3_sb_dt, 'mm/dd/yyyy') AS wit3_sb_dt,
FormatDateTime(wit3_nc_dt, 'mm/dd/yyyy') AS wit3_nc_dt,
FormatDateTime(stgn_ca_dt, 'mm/dd/yyyy') AS stgn_ca_dt,
FormatDateTime(stgn_cc_dt, 'mm/dd/yyyy') AS stgn_cc_dt,
FormatDateTime(stgn_gg_dt, 'mm/dd/yyyy') AS stgn_gg_dt,
FormatDateTime(stgn_eb_dt, 'mm/dd/yyyy') AS stgn_eb_dt,
FormatDateTime(stgn_nb_dt, 'mm/dd/yyyy') AS stgn_nb_dt,
FormatDateTime(stgn_sb_dt, 'mm/dd/yyyy') AS stgn_sb_dt,
FormatDateTime(stgn_nc_dt, 'mm/dd/yyyy') AS stgn_nc_dt,
FormatDateTime(psup_ca_dt, 'mm/dd/yyyy') AS psup_ca_dt,
FormatDateTime(psup_cc_dt, 'mm/dd/yyyy') AS psup_cc_dt,
FormatDateTime(psup_gg_dt, 'mm/dd/yyyy') AS psup_gg_dt,
FormatDateTime(psup_eb_dt, 'mm/dd/yyyy') AS psup_eb_dt,
FormatDateTime(psup_nb_dt, 'mm/dd/yyyy') AS psup_nb_dt,
FormatDateTime(psup_sb_dt, 'mm/dd/yyyy') AS psup_sb_dt,
FormatDateTime(psup_nc_dt, 'mm/dd/yyyy') AS psup_nc_dt,
FormatDateTime(prod_ca_dt, 'mm/dd/yyyy') AS prod_ca_dt,
FormatDateTime(prod_cc_dt, 'mm/dd/yyyy') AS prod_cc_dt,
FormatDateTime(prod_gg_dt, 'mm/dd/yyyy') AS prod_gg_dt,
FormatDateTime(prod_eb_dt, 'mm/dd/yyyy') AS prod_eb_dt,
FormatDateTime(prod_nb_dt, 'mm/dd/yyyy') AS prod_nb_dt,
FormatDateTime(prod_sb_dt, 'mm/dd/yyyy') AS prod_sb_dt,
FormatDateTime(prod_nc_dt, 'mm/dd/yyyy') AS prod_nc_dt,
FormatDateTime(train_ca_dt, 'mm/dd/yyyy') AS train_ca_dt,
FormatDateTime(train_cc_dt, 'mm/dd/yyyy') AS train_cc_dt,
FormatDateTime(train_gg_dt, 'mm/dd/yyyy') AS train_gg_dt,
FormatDateTime(train_eb_dt, 'mm/dd/yyyy') AS train_eb_dt,
FormatDateTime(train_nb_dt, 'mm/dd/yyyy') AS train_nb_dt,
FormatDateTime(train_sb_dt, 'mm/dd/yyyy') AS train_sb_dt,
FormatDateTime(train_nc_dt, 'mm/dd/yyyy') AS train_nc_dt,
div_name  ,
concat(a.first_name, ' ' , a.last_name) as added_by ,  
concat(u.first_name, ' ' , u.last_name) as updated_by 
,concat(r.first_name, ' ', r.last_name)  as reviewed_by,  
concat(s.first_name, ' ', s.last_name ) as submitted_by ,
isnull_char(product.code_desc,'') as prod_desc ,
isnull_char(maint.code_desc,'') as maint_desc,
concat(owner.first_name, ' ', owner.last_name ) as owner_name,
isnull_int(rfc_prod.rfc_id,0) as prod_rfc_id,
isnull_int(rfc_psup.rfc_id,0) as psup_rfc_id,
isnull_int(rfc_wit3.rfc_id,0) as wit3_rfc_id,
isnull_int(rfc_wits.rfc_id,0) as wits_rfc_id,
isnull_int(rfc_stgn.rfc_id,0) as stgn_rfc_id,
tsr.sr_id,
isnull_char(rfc_prod.status_cd,'') as prod_rfc_status
 from tbuild
left join tdivision on tbuild.division_id = tdivision.division_id  
left join tcodes product 	on tbuild.product_cd = product.code_value and product.code_type_id  = 121  
left join tcodes maint 	on tbuild.maintenance_type_cd = maint.code_value and maint.code_type_id  = 158
left join trfc rfc_prod on tbuild.rfc_prod_no = rfc_prod.rfc_no  
left join trfc rfc_wits on tbuild.rfc_wits_no = rfc_wits.rfc_no  
left join trfc rfc_wit3 on tbuild.rfc_wit3_no = rfc_wit3.rfc_no  
left join trfc rfc_psup on tbuild.rfc_psup_no = rfc_psup.rfc_no  
left join trfc rfc_stgn on tbuild.rfc_stgn_no = rfc_stgn.rfc_no  
left join tuser as a  on tbuild.added_uid = a.user_id
left join tuser as u on tbuild.updated_uid = u.user_id  
left join tuser as r  on tbuild.reviewed_uid = r.user_id  
left join tuser as s  on tbuild.submitted_uid = s.user_id  
left join tuser as owner on tbuild.owner_uid = owner.user_id
left join tsr as tsr on tbuild.driver_no = tsr.sr_no and tbuild.driver_cd = 'SR';





















CREATE OR REPLACE VIEW vbuildstat_list
AS select  'BuildStat' as target, 
build_stat_id,
year_no,
typ.code_desc2 as type_desc,
suite.code_desc as suite_desc,
hd_jan_no,
hd_feb_no,
hd_mar_no,
hd_apr_no,
hd_may_no,
hd_jun_no,
hd_jul_no,
hd_aug_no,
hd_sep_no,
hd_oct_no,
hd_nov_no,
hd_dec_no ,
hd_jan_no + hd_feb_no + hd_mar_no + hd_apr_no + hd_may_no + hd_jun_no + hd_jul_no + hd_aug_no + hd_sep_no + hd_oct_no + hd_nov_no + hd_dec_no as theTotal,
suite_cd,
tbuild_stat.division_id
from tbuild_stat 
join tdivision on tbuild_stat.division_id = tdivision.division_id  and tdivision.division_id = 1
left join tcodes typ on tbuild_stat.trigger_cd = typ.code_value and typ.code_type_id  = 117   
left join tcodes suite on tbuild_stat.suite_cd = suite.code_value and suite.code_type_id  = 155  CREATE OR REPLACE VIEW `vbuildstat` AS select 
`tbuild_stat`.*,
`tdivision`.`div_name` AS `div_name`,
'BRW' AS `role_cd`,
concat(`a`.`first_name`,_latin1' ',`a`.`last_name`) AS `added_by`,
concat(`u`.`first_name`,_latin1' ',`u`.`last_name`) AS `updated_by` 
from `tbuild_stat` 
left join `tdivision` on tbuild_stat.division_id = tdivision.division_id
left join tuser `a` on tbuild_stat.added_uid = `a`.`user_id`
left join tuser u on tbuild_stat.updated_uid  = `u`.`user_id`
where tbuild_stat.build_stat_id > 0
CREATE OR REPLACE VIEW `vcodes_list` as
select 'Codes' as target, 
code_id, 
code_value, 
code_desc2, 
code_desc, 
order_by , 
code_type_id
from tcodes WHERE 1=1;CREATE OR REPLACE 
VIEW `vcodes_show` AS 
SELECT tcodes.* , 
tcode_types.title_nm as code_name , 
tcode_types.code_type,
concat(a.first_name, '  ', a.last_name) as added_by  , 
concat(u.first_name, '  ', u.last_name) as updated_by   
from tcodes 
join tcode_types on tcodes.code_type_id = tcode_types.code_type_id 
left join tuser as a  on tcodes.added_uid = a.user_id 
left join tuser as u on tcodes.updated_uid = u.user_id;
CREATE OR REPLACE 
VIEW `vcodes` AS select `tcodes`.`order_by` AS `odor`
,`tcodes`.`code_value` AS `code_value`
,`tcodes`.`code_desc` AS `code_desc`
,`tcode_types`.`code_type` AS `code_type` 
from `tcodes` 
join `tcode_types` on `tcodes`.`code_type_id` = `tcode_types`.`code_type_id`
where `tcodes`.`code_type_id` = `tcode_types`.`code_type_id`;CREATE OR REPLACE view vcode_types_list as 
Select distinct 'CodeType' as target, 
tcode_types.code_type_id, 
title_nm , 
code_type, 
s.code_desc, 
tcode_types.code_type_id as theId, 
count(*) 
from tcode_types 
left join tcodes s on tcode_types.locked_flag = s.code_value and s.code_type_id  = 3 
left outer join tcodes on tcode_types.code_type_id = tcodes.code_type_id where 1=1 
group by tcode_types.code_type_id , tcode_types.title_nm, s.code_desc, tcode_types.code_type;CREATE OR REPLACE VIEW vcode_types as
SELECT  tcode_types.* ,
concat(a.first_name, '  ', a.last_name) as added_by ,
concat(u.first_name, '  ', u.last_name) as updated_by 
from tcode_types 
left join tuser as a on tcode_types.added_uid = a.user_id 
left join tuser as u on tcode_types.updated_uid = u.user_id ;CREATE OR REPLACE VIEW vcontrol_list
AS SELECT     'Control' AS target, 
tcontrol.control_id, 
tcontrol.reference_nm,
tcontrol.title_nm AS control_nm, 
e.title_nm AS exposure_nm, 
e.exposure_amt, 
tcontrol.effective_pct, e.exposure_amt * tcontrol.effective_pct / 100 AS control_value,
tcontrol.application_id,
tcontrol.exposure_id
FROM   tcontrol 
INNER JOIN   tapplications ON tcontrol.application_id = tapplications.application_id 
LEFT OUTER JOIN tcodes ON tcontrol.state_cd = tcodes.code_value AND tcodes.code_type_id = 5 
LEFT OUTER JOIN texposure e ON tcontrol.exposure_id = e.exposure_id
CREATE OR REPLACE VIEW vcontrol
AS
SELECT      tcontrol.*, 
tapplications.application_name AS Expr1, 
concat(a.first_name, '  ', a.last_name) AS added_by, 
concat(u.first_name, '  ', u.last_name) AS updated_by, 
concat(r.first_name, '  ', r.last_name) AS reviewed_by, 
concat(s.first_name, '  ', s.last_name) AS submitted_by, 
e.title_nm AS exposure_nm, 
e.exposure_amt AS exposure_amt, 
e.probability_pct AS probability_pct, 
e.exposure_amt * e.probability_pct / 100 AS expectedlossamt,
round(e.exposure_amt * e.probability_pct *  effective_pct / 10000,3) AS effective_amt
FROM         tcontrol
INNER JOIN tapplications ON tcontrol.application_id = tapplications.application_id 
LEFT OUTER JOIN texposure e ON tcontrol.exposure_id = e.exposure_id 
LEFT OUTER JOIN tuser a ON tcontrol.added_uid = a.user_id 
LEFT OUTER JOIN tuser u ON tcontrol.updated_uid = u.user_id 
LEFT OUTER JOIN  tuser r ON tcontrol.reviewed_uid = r.user_id 
LEFT OUTER JOIN tuser s ON tcontrol.submitted_uid = s.user_idCREATE OR REPLACE VIEW vexposure_list
AS SELECT     
'Exposure' AS target, 
texposure.exposure_id, 
texposure.reference_nm,
texposure.title_nm, 
rtype.code_desc AS risk_type, 
texposure.exposure_amt, texposure.probability_pct, 
texposure.exposure_amt * texposure.probability_pct / 100 AS expected_loss_amt, 
stat.code_desc AS status_desc,
texposure.application_id as application_id
FROM         texposure 
INNER JOIN  tapplications ON texposure.application_id = tapplications.application_id 
LEFT OUTER JOIN tcodes stat ON texposure.state_cd = stat.code_value AND stat.code_type_id = 5 
LEFT OUTER JOIN tcodes rtype ON texposure.type_cd = rtype.code_value AND rtype.code_type_id = 85;CREATE OR REPLACE VIEW vexposure
AS SELECT     texposure.*,
probability_pct * exposure_amt / 100 as expectedlossamt,
tapplications.application_name AS Expr1,
concat(a.first_name, '  ', a.last_name) AS added_by,
concat(u.first_name, '  ', u.last_name) AS updated_by,
concat(r.first_name, '  ', r.last_name) AS reviewed_by,
concat(s.first_name, '  ', s.last_name) AS submitted_by
FROM      texposure
INNER JOIN  tapplications ON texposure.application_id = tapplications.application_id
LEFT OUTER JOIN  tuser a ON texposure.added_uid = a.user_id
LEFT OUTER JOIN  tuser u ON texposure.updated_uid = u.user_id
LEFT OUTER JOIN  tuser r ON texposure.reviewed_uid = r.user_id
LEFT OUTER JOIN  tuser s ON texposure.submitted_uid = s.user_id;
CREATE VIEW vhc_contact_excel AS 
select  tdomain.code_desc as theDomain,
'------' as NUID,
IsNull_Char(first_nm,'') as first_nm,
IsNull_Char(mi_nm, '') as mi_nm,
IsNull_Char(last_nm, '') as last_nm,
IsNull_Char(suffix.code_desc,'') as suffix_nm,
isNull_char(reg.code_desc, '')  as Reg_Domain,
CASE chair_flag  WHEN 'y' THEN 'Yes' ELSE ' ' END AS Reg_Chair,
CASE liaison_flag  WHEN 'y' THEN 'Yes' ELSE ' ' END AS Peer_Liasion,
CASE meeting_coord_flag  WHEN 'y' THEN 'Yes' ELSE ' ' END AS Meeting_Coord,
CASE primary_rsrc_flag  WHEN 'y' THEN 'Yes' ELSE ' ' END AS Primary_Resource,
CASE local_domain_lead_flag  WHEN 'y' THEN 'Yes' ELSE ' ' END AS Local_Dom_Leader,
isNull_char(title_nm, '')  as Title, 
isNull_char(tieline_tx, '')  as TieLine,
isNull_char(phone_tx, '') as Phone,
isNull_char(address_tx, '')  as Address,
isNull_char(facility_cd , '') as Facility,
isNull_char(subdom.code_desc, '')  as Sub_Domain,
isNull_char(notes_tx, '')  as Notes,
isNull_char(lotus_dist_tx, '')  as Notes_Distr,
isNull_char(suite.code_desc, '')  as Suite,
isNull_char(FormatDateTime(facl_live_date,'mm/dd/yyyy'), '') as fac_live_Date
from thc_contact
left join tcodes tdomain on thc_contact.hc_domain_cd = tdomain.code_value and tdomain.code_type_id  = 142
left join tcodes subdom on thc_contact.hc_sub_domain_cd  = subdom.code_value and subdom.code_type_id  = 145
left join tcodes reg  on thc_contact.reg_domain_role_cd  = reg.code_value and reg.code_type_id  = 144
left join tcodes suite  on thc_contact.suit_cd  = suite.code_value and suite.code_type_id  = 149
left join tcodes suffix  on thc_contact.suffix_nm  = suffix.code_value and suffix.code_type_id  = 153
WHERE 1=1  and hc_contact_id  > 0 ;CREATE OR REPLACE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER
VIEW `vhccontact_list` AS
select _utf8'HCContact' AS `target`
,`thc_contact`.`hc_contact_id` AS `hc_contact_id`
,concat(`thc_contact`.`last_nm`,_latin1',',`thc_contact`.`first_nm`,_latin1' ',IsNull_Char(`thc_contact`.`mi_nm`,'')) AS `theName`
,`suffix`.`code_desc` AS `suffixnm`,`j_domain`.`code_desc` AS `HDDomain`,`j_reg_domain_role`.`code_desc` AS `regDomain`
,`j_subdomain`.`code_desc` AS `SubDomain`
,`thc_contact`.`facility_cd` AS `facility_cd`
,`thc_contact`.`tieline_tx` AS `tieline_tx`
,`thc_contact`.`phone_tx` AS `phone_tx`
,`thc_contact`.`hc_domain_cd` AS `hc_domain_cd`
,`thc_contact`.`reg_domain_role_cd` AS `reg_domain_role_cd`
,`thc_contact`.`hc_sub_domain_cd` AS `hc_sub_domain_cd`,`thc_contact`.`last_nm` AS `last_nm`
,`thc_contact`.`first_nm` AS `first_nm`,`thc_contact`.`suffix_nm` AS `suffix_nm`
,`thc_contact`.`division_id` AS `division_id`
from (((((`thc_contact`
join `tdivision` on(((`thc_contact`.`division_id` = `tdivision`.`division_id`) and (`tdivision`.`division_id` = 1))))
left join `tcodes` `j_domain` on(((`thc_contact`.`hc_domain_cd` = `j_domain`.`code_value`) and (`j_domain`.`code_type_id` = 142))))
left join `tcodes` `suffix` on(((`thc_contact`.`suffix_nm` = `suffix`.`code_value`) and (`suffix`.`code_type_id` = 153))))
left join `tcodes` `j_reg_domain_role` on(((`thc_contact`.`reg_domain_role_cd` = `j_reg_domain_role`.`code_value`) and (`j_reg_domain_role`.`code_type_id` = 144))))
left join `tcodes` `j_subdomain` on(((`thc_contact`.`hc_sub_domain_cd` = `j_subdomain`.`code_value`) and (`j_subdomain`.`code_type_id` = 145))))
where (`thc_contact`.`hc_contact_id` > 0);
CREATE OR REPLACE VIEW vhc_contact
AS SELECT thc_contact.*, 
div_name  , 'BRW' as role_cd , 
concat(a.first_name, ' ' , a.last_name) as added_by ,
concat(u.first_name, ' ' , u.last_name) as updated_by ,
FormatDateTime(tfacility.golive_date,'MM/dd/yy') as golive_date
from thc_contact 
left join tdivision on thc_contact.division_id = tdivision.division_id  
left join tfacility  on thc_contact.facility_cd = tfacility.facility_cd  
left join tuser as a  on thc_contact.added_uid = a.user_id 
left join tuser as u on thc_contact.updated_uid = u.user_id;CREATE OR REPLACE VIEW `vincident_excel` 
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
where (`tincident`.`incident_id` > 0)-- 7/23/10 AP Remove the <a> </a> around the incident_no, it was casted incorrectly, and not necessary because ROWNUM has the link

CREATE OR REPLACE VIEW vincident_list
AS select  'Incident' as target, incident_id,
'ROWNUM' as rownum,
tincident.incident_no as incident_no,
tincident.next_step_tx,
tincident.title_nm,rptgroup.code_desc as reportgroup,
FormatDateTime(incident_date,'MM/dd/yy') as start_date,
suite.code_desc as suite_desc,
stat.code_desc as thtestatus,color.code_desc2 ,
ncal_stat_cd,
grp_cd,
suite_cd,
incident_date,
tincident.division_id
from tincident 
join tdivision on tincident.division_id = tdivision.division_id  and tdivision.division_id = 1
left join tapplications appl on tincident.application_id = appl.application_id 
left join tcodes suite on tincident.suite_cd = suite.code_value and suite.code_type_id  = 136 
left join tcodes stat on tincident.ncal_stat_cd = stat.code_value and stat.code_type_id  = 58 
left join tcodes rptgroup on tincident.grp_cd = rptgroup.code_value and rptgroup.code_type_id  = 146 
left join tcodes color on tincident.color_cd = color.code_value and color.code_type_id  = 71
WHERE 1=1  and tincident.incident_id > 0 ;
CREATE OR REPLACE VIEW vincident
AS SELECT tincident.*, 
div_name  , 
'BRW' as role_cd , 
concat(a.first_name, ' ' , a.last_name) as added_by ,
concat(u.first_name, ' ' , u.last_name) as updated_by ,
concat(owner.last_name , ',' , owner.first_name) as remedyOwner  ,
concat(rqstr.last_name , ',' , rqstr.first_name) as remedyRequester  	
from tincident 
left join tdivision on tincident.division_id = tdivision.division_id   
left join tcontact rqstr on tincident.requester_uid = rqstr.contact_id   
left join tcontact owner on tincident.owner_uid = owner.contact_id  
left join tuser as a  on tincident.added_uid = a.user_id left
join tuser as u on tincident.updated_uid = u.user_id  CREATE OR REPLACE VIEW `vip_tracker_excel` AS select
sr_no
,tip_tracker.title_nm as Summary
,stat.code_desc as Status
,isnull_char(remedy_pending_cd,'') as PendingStatus
,concat(owner.last_name, ',', owner.first_name) as Owner
,concat(rqstr.last_name , ',' , rqstr.first_name) as Requestor  
,isnull_char(remedy_grp_tx,'') as RemedyGroup
,isnull_char(FormatDateTime(tip_tracker.remedy_create_dt, 'mm/dd/yy'), ' ') AS DateCreated
,isnull_char(FormatDateTime(tip_tracker.remedy_start_dt, 'mm/dd/yy'), ' ') AS PlannedStart
,isnull_char(FormatDateTime(tip_tracker.remedy_end_dt, 'mm/dd/yy'), ' ') AS PlannedEnd
,isnull_char(FormatDateTime(tip_tracker.remedy_act_end_dt, 'mm/dd/yy'), ' ') AS Production
,ordersetlist(tip_tracker.sr_no) as thelist
,isnull_char(tip_tracker.alt_owner_tx,'') as Owner2
,isnull_char(domain1.code_desc,'')  as domain_1
,isnull_char(domain2.code_desc,'')  as domain_2
,isnull_char(domain3.code_desc,'')  as domain_3
,isnull_char(domain4.code_desc,'')  as domain_4
,isnull_char(domain5.code_desc,'')  as domain_5
,isnull_char(domain6.code_desc,'')  as domain_6
,isnull_char(domain7.code_desc,'')  as domain_7
,isnull_char(domain8.code_desc,'')  as domain_8
,isnull_char(suit.code_desc,'') as SUIT
,CASE revision_cd  WHEN 'n' THEN 'New'  WHEN 'r' THEN 'Revision' WHEN 'p' THEN 'Project' WHEN 't' THEN 'Task' ELSE '' END   AS NewRevise
,isnull_char(FormatDateTime(tip_tracker.tigr_rv_date, 'mm/dd/yy'), ' ') AS TIGR_Rev
,CASE level_cd WHEN 'h' THEN 'High' WHEN 'm' THEN 'Med' WHEN 'l' THEN 'Low' ELSE '' END as Level
,isnull_char(priority.code_desc,'') as Priority
,CASE rv_grp_cd WHEN 'S' then 'SUIT' when 'D' then 'Domain' when 'L' then 'Leadership' else '' end as ApprovalLevel
,isnull_char(FormatDateTime(tip_tracker.reg_med_ctr_apv_date, 'mm/dd/yy'), ' ')  as RegMedCtrDue 
,isnull_char(FormatDateTime(tip_tracker.reg_med_ctr_apv_done_date, 'mm/dd/yy'), ' ') AS RegMedCtrDone
,isnull_char(reg_med_apvr_tx,'') as RegMedCtrApprovers
,isnull_char(FormatDateTime(tip_tracker.dom_md_apv_content_date, 'mm/dd/yy'), ' ')  as DomMdApvContDue
,isnull_char(FormatDateTime(tip_tracker.dom_md_apv_content_done_date, 'mm/dd/yy'), ' ')   AS DomMdApvContDone
,isnull_char(tip_tracker.phy_apvr_1b_tx,'') as DomMdApprovers  
,isnull_char(FormatDateTime(tip_tracker.dom_rn_apv_content_date, 'mm/dd/yy'), ' ')  as DomRnApvContDue
,isnull_char(FormatDateTime(tip_tracker.dom_rn_apv_content_done_date, 'mm/dd/yy'), ' ')   AS DomRnApvContDone
,isnull_char(tip_tracker.nrse_apvr_1a_tx,'') as DomRnApvContAppovers
,isnull_char(FormatDateTime(tip_tracker.suit_apv_date, 'mm/dd/yy'), ' ')  as SuitDue
,isnull_char(FormatDateTime(tip_tracker.suit_apv_done_date, 'mm/dd/yy'), ' ')   AS SuitDone
,isnull_char(tip_tracker.suit_apvr_tx,'') as SuitApprovers  
,isnull_char(FormatDateTime(tip_tracker.dom_md_apv_suit_date, 'mm/dd/yy'), ' ')  as DomMdSuitDue
,isnull_char(FormatDateTime(tip_tracker.dom_md_apv_suit_done_date, 'mm/dd/yy'), ' ')  as DomMdSuitDone
,isnull_char(tip_tracker.dom_md_apv_suit_tx,'') as DomMdSuitApprovers  
,isnull_char(FormatDateTime(tip_tracker.dom_rn_apv_suit_date, 'mm/dd/yy'), ' ')  as DomRnApvSuitDue
,isnull_char(FormatDateTime(tip_tracker.dom_rn_apv_suit_done_date, 'mm/dd/yy'), ' ')   AS DomContApvSuitDone
,isnull_char(tip_tracker.dom_rn_apv_suit_tx,'') as DomRnSuitAppovers
, isnull_char(FormatDateTime(tip_tracker.hcg_meet_date, 'mm/dd/yy'), ' ') AS HCG
,isnull_char(FormatDateTime(tip_tracker.med_ctr_rv_date, 'mm/dd/yy'), ' ')  as MedCtrRvDue
,isnull_char(FormatDateTime(tip_tracker.med_ctr_rv_done_date, 'mm/dd/yy'), ' ')   AS MedCtrRvDone
,isnull_char(FormatDateTime(tip_tracker.collate_rc_date, 'mm/dd/yy'), ' ')  as CollateRcDue
,isnull_char(FormatDateTime(tip_tracker.collate_rc_done_date, 'mm/dd/yy'), ' ')   AS CollateRcDone
,isnull_char(FormatDateTime(tip_tracker.sponsor_due_date, 'mm/dd/yy'), ' ')  as SponsorDue
,isnull_char(FormatDateTime(tip_tracker.sponsor_done_date, 'mm/dd/yy'), ' ')   AS SponsorDone
,isnull_char(FormatDateTime(tip_tracker.screen_shot_date, 'mm/dd/yy'), ' ')  as ScreenShotDue
,isnull_char(FormatDateTime(tip_tracker.screen_shot_done_date, 'mm/dd/yy'), ' ')   AS ScreenShotDone
, tip_tracker.type_cd  as chg_type
,isnull_char(tip_tracker.status_cd,'') as status_cd
,isnull_char(tip_tracker.level_cd, '') as level_cd
,isnull_char(tip_tracker.priority_cd, '') as priority_cd
,isnull_char(tip_tracker.domain_1_cd,'') as domain_cd
,isnull_char(tip_tracker.suite_cd, '') as suite_cd
,isnull_char(domain_1_cd,'')  as domain_1_cd
,isnull_char(domain_2_cd,'')  as domain_2_cd
,isnull_char(domain_3_cd,'')  as domain_3_cd
,isnull_char(domain_4_cd,'')  as domain_4_cd
,isnull_char(domain_5_cd,'')  as domain_5_cd
,isnull_char(domain_6_cd,'')  as domain_6_cd
,isnull_char(domain_7_cd,'')  as domain_7_cd
,isnull_char(domain_8_cd,'')  as domain_8_cd
from tip_tracker
join tdivision on tip_tracker.division_id = tdivision.division_id  and tdivision.division_id = 1
left join tcontact owner on tip_tracker.owner_uid = owner.contact_id
left join tcontact rqstr on tip_tracker.requester_uid = rqstr.contact_id
left join tcodes stat on tip_tracker.status_cd = stat.code_value and stat.code_type_id =  118
left join tcodes domain1 on tip_tracker.domain_1_cd = domain1.code_value and domain1.code_type_id = 142
left join tcodes domain2 on tip_tracker.domain_2_cd = domain2.code_value and domain2.code_type_id = 142
left join tcodes domain3 on tip_tracker.domain_3_cd = domain3.code_value and domain3.code_type_id = 142
left join tcodes domain4 on tip_tracker.domain_4_cd = domain4.code_value and domain4.code_type_id = 142
left join tcodes domain5 on tip_tracker.domain_5_cd = domain5.code_value and domain5.code_type_id = 142
left join tcodes domain6 on tip_tracker.domain_6_cd = domain6.code_value and domain6.code_type_id = 142
left join tcodes domain7 on tip_tracker.domain_7_cd = domain7.code_value and domain7.code_type_id = 142
left join tcodes domain8 on tip_tracker.domain_8_cd = domain8.code_value and domain8.code_type_id = 142
left join tcodes suit  on tip_tracker.suite_cd = suit.code_value and suit.code_type_id = 152
left join tcodes priority  on tip_tracker.priority_cd = priority.code_value and priority.code_type_id = 154
WHERE 1=1  and tip_tracker.tracker_id > 0 CREATE OR REPLACE  VIEW vip_tracker_list as
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
CREATE VIEW vip_tracker AS
SELECT tip_tracker.*,
div_name  ,
'BRW' as role_cd ,
concat(a.first_name, ' ' , a.last_name) as added_by ,
concat(u.first_name, ' ' , u.last_name) as updated_by ,
rem_stat.code_desc  as remedy_status ,
FormatDateTime(tip_tracker.remedy_end_dt, 'mm/dd/yyyy') as fmt_remedy_end_dt,
FormatDateTime(tip_tracker.remedy_requested_completion_dt, 'mm/dd/yyyy') as fmt_remedy_requested_completion_dt,
concat(owner.last_name , ',' , owner.first_name) as remedyOwner  ,
concat(rqstr.last_name , ',' , rqstr.first_name) as remedyRequester  ,
rqstr.dept_nm,rqstr.facility_nm,rem_urgency.code_desc as remedy_urgency,
isnull_char(clsd.code_desc,'') as remedyClosure,
isnull_char(rslv.code_desc,'') as remedyResolve
from tip_tracker
left join tdivision on tip_tracker.division_id = tdivision.division_id
left join tcodes rem_stat on tip_tracker.status_cd = rem_stat.code_value and rem_stat.code_type_id = 118
left join tcontact rqstr on tip_tracker.requester_uid = rqstr.contact_id
left join tcontact owner on tip_tracker.owner_uid = owner.contact_id
left join tcodes rem_urgency  on tip_tracker.urgency_cd = rem_urgency.code_value and rem_urgency.code_type_id = 2
left join tuser as a  on tip_tracker.added_uid = a.user_id
left join tuser as u on tip_tracker.updated_uid = u.user_id
left join tcodes clsd on tip_tracker.closure_cd = clsd.code_value and clsd.code_type_id = 123
left join tcodes rslv on tip_tracker.resolution_cd = rslv.code_value and rslv.code_type_id = 123;CREATE VIEW vissue_excel
AS
SELECT     reference_nm, 
s.code_desc as status_desc,
p.code_desc as priority_desc,
c.code_desc as subproj_desc,
title_nm, 
formatDateTime(id_date, 'mm/dd/yy') as Id_Date,
formatdatetime(install_date, 'mm/dd/yy') as installDate,
problem_no, 
defect_no, 
requestor_nm, 
concat(u.last_name, ',', u.first_name) as AssignedTo,
desc_blob, 
impact_blob,
tissue.status_cd, 
assigned_uid, 
tissue.type_cd, 
sub_cd,
tissue.project_id,
tissue.priority_cd
FROM  tissue
join tproject on tissue.project_id = tproject.project_id
left join tuser u on tissue.assigned_uid = u.user_id  
left join tcodes s on tissue.status_cd = s.code_value and s.code_type_id  = 45 
left join tcodes p on tissue.priority_cd = p.code_value and p.code_type_id  = 7 
left join tcodes c on c.code_type_id  = 157  and tproject.chng_req_nm = c.code_desc2 and tissue.sub_cd = c.code_value;
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

//- dont remember what this was from

select vListIssue.*, isnull(tuser_project.role_cd,'NON') AS ROLE_CD
from vlistIssue 
left join tuser_project on vlistIssue.project_id = tuser_project.project_id  and tuser_project.user_id = 37
where 
vlistIssue.project_id = 1
and issue_id > 0  AND status_cd = 'O' 
and role_cd <> 'NON';




CREATE OR REPLACE VIEW vissue
AS SELECT  tissue.*, 
project_name,   
concat(a.first_name, '  ', a.last_name) as added_by, 
concat(u.first_name, '  ', u.last_name) as updated_by ,
concat(r.first_name, '  ', r.last_name) as reviewed_by ,
concat(s.first_name, '  ', s.last_name) as submitted_by ,
concat(c.first_name, '  ', c.last_name) as closed_by
from tissue 
join tproject on tissue.project_id = tproject.project_id
left join tuser as c on tissue.closed_by_uid = c.user_id  
left join tuser_project on tproject.project_id = tuser_project.project_id 
left join tuser as a  on tissue.added_uid = a.user_id 
left join tuser as u on tissue.updated_uid = u.user_id 
left join tuser as r  on tissue.reviewed_uid = r.user_id  
left join tuser as s  on tissue.submitted_uid = s.user_id 
CREATE OR REPLACE VIEW vlog_list
AS
select  'Log' as target,
log_id,
concat( tuser.last_name ,', ' , tuser.first_name) as user_name ,
tform.form_nm ,
( case tlog.access_cd when 'R'then 'Read' else '' end) AS Access_type,
FormatDateTime(tlog.added_date, 'mm/dd/yyyy hh:mm') as access_date,
tsbar.reference_nm ,
tsbar.title_nm,
tlog.form_id,
tlog.access_uid,
tlog.division_id
from tlog
left join tsbar on tlog.key_id = tsbar.sbar_id
left join tform on tlog.form_id = tform.form_id
left join tuser on tlog.access_uid = tuser.user_id;


--

insert into tlog (access_cd, added_uid, added_date, form_cd) values('R', 37, now(), 'SBAR');
select * from tlog;
select user_id, last_name, first_name from tuser;
select * from tcode_types;
select  * from tform;
delete from tlog;
select * from vlog_list;
CREATE OR REPLACE  VIEW `vexcelmetric` AS
select 
concat(`i`.`reference_nm`,_latin1' ',`i`.`title_nm`) AS `reference_name`
,`FormatDateTime`(`tmessage_stat`.`activity_date`,_utf8'mm/dd/yy') AS `activity_date`
,`tmessage_stat`.`message_tx` AS `message_tx`
,`tmessage_stat`.`instance_cd` AS `instance_cd`
,`c`.`code_desc` AS `direction_tx`
,`tmessage_stat`.`count_no` AS `count_no`,`i`
.`reference_nm` AS `reference_nm`
,'reference_nm' as Interface_no
,`FormatDateTime`(`tmessage_stat`.`activity_date`,_utf8'mm/dd/yy') AS `Date`
from ((`tmessage_stat`
left join `tinterface` `i` on((`tmessage_stat`.`interface_id` = `i`.`interface_id`)))
left join `tcodes` `c` on(((`i`.`direction_cd` = `c`.`code_value`) and (`c`.`code_type_id` = 21))));

CREATE OR REPLACE  VIEW `vmetric_list` AS
select _utf8'Metric' AS `target`
,`tmessage_stat`.`message_stat_id` AS `message_stat_id`,
concat(`i`.`reference_nm`,_latin1' ',`i`.`title_nm`) AS `reference_name`
,`FormatDateTime`(`tmessage_stat`.`activity_date`,_utf8'mm/dd/yy') AS `activity_date`
,`tmessage_stat`.`message_tx` AS `message_tx`
,`tmessage_stat`.`instance_cd` AS `instance_cd`
,`c`.`code_desc` AS `direction_tx`
,`tmessage_stat`.`count_no` AS `count_no`,`i`
.`reference_nm` AS `reference_nm`
from ((`tmessage_stat`
left join `tinterface` `i` on((`tmessage_stat`.`interface_id` = `i`.`interface_id`)))
left join `tcodes` `c` on(((`i`.`direction_cd` = `c`.`code_value`) and (`c`.`code_type_id` = 21))))
union
select _utf8'Total'
,0
,_utf8'Total'
,_utf8' '
,_utf8' '
,_utf8' '
,_utf8' '
,sum(`tmessage_stat`.`count_no`)
,_utf8''
from ((`tmessage_stat`
left join `tinterface` `i` on((`tmessage_stat`.`interface_id` = `i`.`interface_id`)))
left join `tcodes` `c` on(((`i`.`direction_cd` = `c`.`code_value`) and (`c`.`code_type_id` = 21))));
CREATE OR REPLACE VIEW `vorderset_excel` AS SELECT
 os.reference_nm as OrderSetNo
	,os.title_nm as OrderSetName
	,os.version_no as VersNo
	,isnull_char(os.suite_cd,'')as SUITE
	,isnull_char(FormatDateTime(release_date, 'mm/dd/yy'), ' ') AS PharRv
	,isnull_char(os.limited_rlse_tx,'') as LimitedRelease
	,isnull_char(os.prod_flag,'') as ProdFlag
	,isnull_char(os.protocols_tx,'') as Protocols
	,isnull_char(os.core_measures_tx,'') as CoreMeasures
	,isnull_char(dom1.code_desc,'') as Dom1
	,isnull_char(dom2.code_desc,'') as Dom2
	,isnull_char(dom3.code_desc,'') as Dom3
	,isnull_char(dom4.code_desc,'') as Dom4
	,isnull_char(dom5.code_desc,'') as Dom5
	,isnull_char(dom6.code_desc,'') as Dom6
	,isnull_char(dom7.code_desc,'') as Dom7
	,isnull_char(dom8.code_desc,'') as Dom8
	,order_set_no   from korder_set os
	left join tcodes dom1 on os.os_domain_1_cd = dom1.code_value and dom1.code_type_id = 142
	left join tcodes dom2 on os.os_domain_2_cd = dom2.code_value and dom2.code_type_id = 142
	left join tcodes dom3 on os.os_domain_3_cd = dom3.code_value and dom3.code_type_id = 142
	left join tcodes dom4 on os.os_domain_4_cd = dom4.code_value and dom4.code_type_id = 142
	left join tcodes dom5 on os.os_domain_5_cd = dom5.code_value and dom5.code_type_id = 142
	left join tcodes dom6 on os.os_domain_6_cd = dom6.code_value and dom6.code_type_id = 142
	left join tcodes dom7 on os.os_domain_7_cd = dom7.code_value and dom7.code_type_id = 142
	left join tcodes dom8 on os.os_domain_8_cd = dom8.code_value and dom8.code_type_id = 142--3/31/10 added suite_cd
CREATE OR REPLACE vIEW `vorderset_list` AS
select 'OrderSet' AS `target`
,`korder_set`.`order_set_id` AS `order_set_id`
,`korder_set`.`order_set_no` AS `order_set_no`
,`korder_set`.`title_nm` AS `title_nm`
,`domain`.`code_desc` AS `thedomain`
,`suite`.`code_desc` AS `thesuite`
,(case `korder_set`.`prod_flag` when 'Y' then 'Yes'  when 'N' then 'No' when 'R' then 'Ret' else ' ' end) AS `prod_cd`
,`korder_set`.`os_domain_1_cd` AS `os_domain_1_cd`
,`korder_set`.`division_id` AS `division_id`
,`korder_set`.`prod_flag`
,`korder_set`.`suite_cd`
from korder_set
join tdivision on korder_set.division_id = tdivision.division_id
left join `tcodes` `thetype` on korder_set.type_cd = thetype.code_value and thetype.code_type_id = 126
left join `tcodes` `domain` on korder_set.os_domain_1_cd = domain.code_value and domain.code_type_id = 142
left join `tcodes` `suite` on korder_set.suite_cd = suite.code_value and  suite.code_type_id = 152
where `korder_set`.`order_set_id` > 0;CREATE or replace view vordersetversion_excel as
select 	os.title_nm as OrderSetName,
	 os.reference_nm as OrderSetNo
	,'no def' as VersNo
	,isnull_char(FormatDateTime(release_date, 'mm/dd/yy'), ' ') AS RlseDate
	,isnull_char(os.limited_rlse_tx,'') as LimitedRelease
	,isnull_char(os.prod_flag,'') as ProdFlag
	,isnull_char(os.protocols_tx,'') as Protocols
	,isnull_char(os.core_measures_tx,'') as CoreMeasures
	,isnull_char(FormatDateTime(year_review_date, 'mm/dd/yy'), ' ') AS YearRvDt
	,isnull_char(FormatDateTime(next_review_date, 'mm/dd/yy'), ' ') AS NextRvDt
	,isnull_char(dom1.code_desc,'') as Dom1
	,isnull_char(dom2.code_desc,'') as Dom2
	,isnull_char(dom3.code_desc,'') as Dom3
	,isnull_char(dom4.code_desc,'') as Dom4
	,isnull_char(dom5.code_desc,'') as Dom5
	,isnull_char(dom6.code_desc,'') as Dom6
	,isnull_char(dom7.code_desc,'') as Dom7
	,isnull_char(dom8.code_desc,'') as Dom8
	,isnull_char(os.suite_cd,'')as SUITE
	,paper_priority_cd
	,screen_shot_cd
	,screen_shot_loc_cd
	,clinic_con_rv_tx
	,isnull_char(FormatDateTime(clinic_con_rv_date, 'mm/dd/yy'), ' ') AS ClinicDate
	,rx_reviewer_cd
	,isnull_char(FormatDateTime(rx_review_date, 'mm/dd/yy'), ' ') AS RxReviewDate
	,paper_version_no
	,isnull_char(FormatDateTime(cl_post_date, 'mm/dd/yy'), ' ') AS ClPostDate
	,isnull_char(dom.code_desc, '') as DomainCd
	,isnull_char(subdom.code_desc,'') as SubDom
	,isnull_char(osv.created_by_tx, '') as CreatedBy
	,isnull_char(osv.owner_tx,'') as OwnerTx
	,isnull_char(osv.midyear_rv_pharm_tx,'') as MidYearRx
	,isnull_char(osv.midyear_rv_clinic_tx,'') as MidYearClinic
	,order_set_no
	from korder_set_vers osv
	join korder_set os on osv.order_set_id = os.order_set_id
	left join tcodes dom1 on os.os_domain_1_cd = dom1.code_value and dom1.code_type_id = 142
	left join tcodes dom2 on os.os_domain_2_cd = dom2.code_value and dom2.code_type_id = 142
	left join tcodes dom3 on os.os_domain_3_cd = dom3.code_value and dom3.code_type_id = 142
	left join tcodes dom4 on os.os_domain_4_cd = dom4.code_value and dom4.code_type_id = 142
	left join tcodes dom5 on os.os_domain_5_cd = dom5.code_value and dom5.code_type_id = 142
	left join tcodes dom6 on os.os_domain_6_cd = dom6.code_value and dom6.code_type_id = 142
	left join tcodes dom7 on os.os_domain_7_cd = dom7.code_value and dom7.code_type_id = 142
	left join tcodes dom8 on os.os_domain_8_cd = dom8.code_value and dom8.code_type_id = 142
	left join tcodes dom on osv.cl_domain_cd = dom.code_value and dom.code_type_id = 151
	left join tcodes subdom on osv.cl_sub_domain_cd = subdom.code_value and subdom.code_type_id = 148;CREATE OR REPLACE VIEW `vpatient_excel` AS SELECT
isnull_char(FormatDateTime(tpatient.admitted_date, 'mm/dd/yyyy'), ' ') AS admitted_date,
tpatient.location_tx,
tcodes.code_desc as theStatus,
tpatient.mrn_tx,
tpatient.patient_nm,
tpatient.har_tx,
tpatient.sr_no,
tpatient.need_tx,
admit_tm_tx,
concat(tuser.last_name, ' ,', tuser.first_name) as Requestor_nm,
tpatient.admit_person_tx,
isnull_char(FormatDateTime(tpatient.backout_date, 'mm/dd/yyyy'), ' ') AS backout_date,
tpatient.backout_verified_tx,
requestor_uid,
status_cd
from tpatient
left join tcodes on tpatient.status_cd = tcodes.code_value and tcodes.code_type_id = 58
join tuser on tpatient.requestor_uid = tuser.user_idCREATE OR REPLACE VIEW `vpatient_list` AS SELECT
'Patient' as target,
patient_id,
'ROWNUM' as rownum,
isnull_char(FormatDateTime(tpatient.admitted_date, 'mm/dd/yyyy'), ' ') AS admitted_date,
tcodes.code_desc as theStatus,
location_tx,
mrn_tx,
patient_nm,
har_tx,
concat(tuser.last_name, ' ,', tuser.first_name) as Requestor_nm,
tpatient.division_id,
tpatient.status_cd,
requestor_uid
from tpatient
join tdivision on tpatient.division_id = tdivision.division_id
join tuser on tpatient.requestor_uid = tuser.user_id
left join tcodes on tpatient.status_cd = tcodes.code_value and tcodes.code_type_id = 58;CREATE OR REPLACE VIEW `vpatient` AS SELECT
tpatient.patient_id,
tpatient.division_id,
tpatient.added_uid,
tpatient.submitted_uid,
tpatient.updated_uid,
tpatient.approved_uid,
tpatient.requestor_uid,
tpatient.reviewed_uid,
tpatient.assigned_uid,
tpatient.requestor_nm,
tpatient.sr_no,
isnull_char(FormatDateTime(tpatient.admitted_date, 'mm/dd/yyyy'), ' ') AS admitted_date,
isnull_char(FormatDateTime(tpatient.backout_date, 'mm/dd/yyyy'), ' ') AS backout_date,
tpatient.added_date,
tpatient.updated_date,
tpatient.submitted_date,
tpatient.reviewed_date,
tpatient.approved_date,
tpatient.reviewed_flag,
tpatient.approved_flag,
tpatient.submitted_tx,
tpatient.reviewed_tx,
tpatient.approved_tx,
tpatient.title_nm,
tpatient.reference_nm,
tpatient.location_tx,
tpatient.status_cd,
tpatient.desc_blob,
tpatient.mrn_tx,
tpatient.patient_nm,
tpatient.har_tx,
tpatient.need_tx,
admit_tm_tx,
tpatient.admit_person_tx,
tpatient.backout_verified_tx,
div_name  ,
'BRW' as role_cd ,
concat(a.first_name, ' ' ,a.last_name) as added_by
,concat(u.first_name, ' ' ,u.last_name) as updated_by
from tpatient
left join tdivision on tpatient.division_id = tdivision.division_id
left join tuser as a  on tpatient.added_uid = a.user_id
left join tuser as u on tpatient.updated_uid = u.user_idCREATE VIEW vproject_task_excel
AS SELECT     
tproject_plan_task.outline_nm AS Outline,
tproject_plan_task.level_no as Level_No,
tproject_plan_task.title_nm as Title, 
isnull_int(tproject_plan_task.complete_pct_no , 0) as PercentDone,
isnull_char(FormatDateTime(tproject_plan_task.start_date, 'mm/dd/yy'), ' ') AS Start_Date
,isnull_char(FormatDateTime(tproject_plan_task.end_date, 'mm/dd/yy'), ' ') AS End_Date
,tproject_plan_task.project_plan_id	
FROM tproject_plan_task;create or replace view vra_excel_limited as
select
tra.reference_nm,
tra.title_nm,
stat.code_desc as stat_desc,
product_nm,
(case fix_type_cd when 'D' then 'Debug' when 'F' then 'Fix' when 'E' then 'Enhancement' else '' end) as fix_type,
(case issue_type_cd when 'P' then 'Peformance' when 'F' then 'Fix' when 'D' then 'Debug' when 'PS' then 'Pt. Safety' when 'REV' then 'Revenue' when 'CLN' then 'Clean-Up' when 'G' then 'General' else '' end) as issue_type,
env_tx,
author_nm,
owner_nuid_tx,
reviewer_nuid_cd,
slg_num_tx,
region_tx,
'Confidential.' as epic_code_blob,
tra.division_id,
tra.status_cd,
tra.fix_type_cd,
tra.issue_type_cd,
cast(tra.reference_nm as signed) as ra_num
from tra join tdivision on tra.division_id = tdivision.division_id
left join tuser ac on tra.owner_uid = ac.user_id
left join tinterface i on tra.interface_id = i.interface_id
left join tcodes stat on tra.status_cd = stat.code_value and stat.code_type_id =  101
WHERE 1=1  and tra.ra_id > 0 ;create or replace view vra_excel as
select
tra.reference_nm,
tra.title_nm,
stat.code_desc as stat_desc,
product_nm,
(case fix_type_cd when 'D' then 'Debug' when 'F' then 'Fix' when 'E' then 'Enhancement' else '' end) as fix_type,
(case issue_type_cd when 'P' then 'Peformance' when 'F' then 'Fix' when 'D' then 'Debug' when 'PS' then 'Pt. Safety' when 'REV' then 'Revenue' when 'CLN' then 'Clean-Up' when 'G' then 'General' else '' end) as issue_type,
env_tx,
author_nm,
owner_nuid_tx,
reviewer_nuid_cd,
slg_num_tx,
region_tx,
isnull_char(tra.epic_code_blob,'') as epic_code_blob,
tra.division_id,
tra.status_cd,
tra.fix_type_cd,
tra.issue_type_cd,
cast(tra.reference_nm as signed) as ra_num
from tra join tdivision on tra.division_id = tdivision.division_id
left join tuser ac on tra.owner_uid = ac.user_id
left join tinterface i on tra.interface_id = i.interface_id
left join tcodes stat on tra.status_cd = stat.code_value and stat.code_type_id =  101
WHERE 1=1  and tra.ra_id > 0 ;create or replace view vra_list as
select  'Ra' as target,
ra_id,tra.
reference_nm,
tra.title_nm,
stat.code_desc as stat_desc,
product_nm,
(case fix_type_cd when 'D' then 'Debug' when 'F' then 'Fix' when 'E' then 'Enhancement' else '' end) as fix_type,
(case issue_type_cd when 'P' then 'Performance' when 'D' then 'Data' when 'CC' then 'Custom Code'  when 'G' then 'General Help' when 'F' then 'Fix'   when 'O' then 'Other'  when 'REV' then 'Revenue' else '' end) as issue_type,
(case env_cd when 'SERV' then 'Server' when 'CLNT' then 'Client' when 'OTHR' then 'Other'  when 'NA' then 'N/A' else '' end) as env_type,
author_nm,
tra.division_id,
tra.status_cd,
tra.env_cd,
tra.fix_type_cd,
tra.issue_type_cd,
cast(tra.reference_nm as signed) as ra_num
from tra join tdivision on tra.division_id = tdivision.division_id
left join tuser ac on tra.owner_uid = ac.user_id
left join tinterface i on tra.interface_id = i.interface_id
left join tcodes stat on tra.status_cd = stat.code_value and stat.code_type_id =  101
WHERE 1=1  and tra.ra_id > 0 ;

create or replace view vra as
select  tra.*, div_name  
, 'BRW' as role_cd 
, concat(a.first_name, ' ' , a.last_name) as added_by
, concat(u.first_name, ' ' , u.last_name) as updated_by 
, rfc1.description_blob  as rfc1_desc_blob
, FormatDateTime(rfc1.remedy_start_dt, 'mm/dd/yyyy') as rfc1_start_dt
, FormatDateTime(rfc1.remedy_end_dt, 'mm/dd/yyyy') as rfc1_end_dt
,concat(owner1.last_name , ',' , owner1.first_name) as rfc1_owner 
,concat(rqstr1.last_name , ',' , rqstr1.first_name) as rfc1_requester
,rem_stat1.code_desc  as rfc1_status 
, rfc2.description_blob  as rfc2_desc_blob
, FormatDateTime(rfc2.remedy_start_dt, 'mm/dd/yyyy') as rfc2_start_dt
, FormatDateTime(rfc2.remedy_end_dt, 'mm/dd/yyyy') as rfc2_end_dt
,concat(owner2.last_name , ',' , owner2.first_name) as rfc2_owner 
,concat(rqstr2.last_name , ',' , rqstr2.first_name) as rfc2_requester
,rem_stat2.code_desc  as rfc2_status
, rfc3.description_blob  as rfc3_desc_blob
, FormatDateTime(rfc3.remedy_start_dt, 'mm/dd/yyyy') as rfc3_start_dt
, FormatDateTime(rfc3.remedy_end_dt, 'mm/dd/yyyy') as rfc3_end_dt
,concat(owner3.last_name , ',' , owner3.first_name) as rfc3_owner 
,concat(rqstr3.last_name , ',' , rqstr3.first_name) as rfc3_requester
,rem_stat3.code_desc  as rfc3_status
,concat('<A href=Router?Target=Rfc&Action=Show&Relation=this&RowKey=' , rfc1.rfc_id , '>Link To</A>') as rfc1_link
,concat('<A href=Router?Target=Rfc&Action=Show&Relation=this&RowKey=' , rfc2.rfc_id , '>Link To</A>') as rfc2_link
,concat('<A href=Router?Target=Rfc&Action=Show&Relation=this&RowKey=' , rfc3.rfc_id , '>Link To</A>') as rfc3_link
,' ' as just_a_blank
from tra
join tdivision on tra.division_id = tdivision.division_id
left join tuser as a  on tra.added_uid = a.user_id 
left join tuser as u on tra.updated_uid = u.user_id   
left join trfc rfc1 on tra.rfc1_no = rfc1.rfc_no
left join tcontact rqstr1 on rfc1.requester_uid = rqstr1.contact_id
left join tcontact owner1 on rfc1.owner_uid = owner1.contact_id
left join tcodes rem_stat1 on rfc1.status_cd = rem_stat1.code_value and rem_stat1.code_type_id = 118
left join trfc rfc2 on tra.rfc2_no = rfc2.rfc_no
left join tcontact rqstr2 on rfc2.requester_uid = rqstr2.contact_id
left join tcontact owner2 on rfc2.owner_uid = owner2.contact_id
left join tcodes rem_stat2 on rfc2.status_cd = rem_stat2.code_value and rem_stat2.code_type_id = 118
left join trfc rfc3 on tra.rfc3_no = rfc3.rfc_no
left join tcontact rqstr3 on rfc3.requester_uid = rqstr3.contact_id
left join tcontact owner3 on rfc3.owner_uid = owner3.contact_id
left join tcodes rem_stat3 on rfc1.status_cd = rem_stat3.code_value and rem_stat3.code_type_id = 118
WHERE tra.ra_id > 0 ;-- 9/23/10 Change dates from mm/dd/yy to mm/dd/yyyy
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
left OUTER JOIN tcodes user_notify on trfc.notify_cd = user_notify.code_value and user_notify.code_type_id = 161 ;-- caution --- need to adjust the plugin if the color_cd position changes , 

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

CREATE or replace VIEW vrfc as
SELECT 
trfc.*
,div_name  , 'BRW' as role_cd ,
concat(a.first_name, ' ' ,a.last_name) as added_by ,
concat(u.first_name, ' ' ,u.last_name) as updated_by ,
FormatDateTime(trfc.remedy_end_dt, 'mm/dd/yyyy hh:mm') as fmt_remedy_end_dt,
FormatDateTime(trfc.remedy_start_dt, 'mm/dd/yyyy hh:mm') as fmt_remedy_start_dt,
FormatDateTime(trfc.remedy_requested_completion_dt, 'mm/dd/yyyy') as fmt_remedy_requested_completion_dt,
FormatDateTime(trfc.remedy_act_end_dt, 'mm/dd/yyyy') as fmt_remedy_act_end_dt,
FormatDateTime(suite_decision_date, 'mm/dd/yyyy') as fmt_suite_decision_date,
FormatDateTime(fcab_decision_date, 'mm/dd/yyyy') as fmt_fcab_decision_date,
concat(owner.last_name , ',' , owner.first_name) as remedyOwner  ,
concat(rqstr.last_name , ',' , rqstr.first_name) as remedyRequester  ,
rem_stat.code_desc  as remedy_status ,
rem_urgency.code_desc as remedy_urgency ,suite_status.code_desc  as suitestatus ,
fcab_status.code_desc  as fcabstatus ,
isNull_int(tbuild.build_id,0) as build_id,
isNull_char(tbuild.driver_cd,'') as driver_cd,
isNull_char(tbuild.driver_no,0) as driver_no,
isnull_char(tcodes_5.code_desc,_utf8'') AS `fmt_final_review`,
isnull_char(rlse.code_desc,'') as epic_release,
isnull_char(clsd.code_desc,'') as remedyClosure,
isnull_char(rslv.code_desc,'') as remedyResolve,
isnull_char(bldstat.code_desc,'') as buildstatus
from trfc
left join tdivision on trfc.division_id = tdivision.division_id
left join tbuild on trfc.build_no = tbuild.build_no and trfc.build_no != 0  AND tbuild.product_cd = trfc.build_track_suite_cd
left join tcodes rem_stat on trfc.status_cd = rem_stat.code_value and rem_stat.code_type_id = 118
left join tcodes rem_urgency  on trfc.urgency_cd = rem_urgency.code_value and rem_urgency.code_type_id = 2
left join tcodes suite_status on trfc.suite_review_cd = suite_status.code_value and suite_status.code_type_id = 162
left join tcodes fcab_status on trfc.fcab_review_cd = fcab_status.code_value and fcab_status.code_type_id = 105
left join tcodes rlse on trfc.release_cd = rlse.code_value and rlse.code_type_id = 98
left join tcontact rqstr on trfc.requester_uid = rqstr.contact_id
left join tcontact owner on trfc.owner_uid = owner.contact_id
left join tuser as a  on trfc.added_uid = a.user_id
left join tuser as u on trfc.updated_uid = u.user_id
left join tcodes tcodes_5 on trfc.final_review_cd = tcodes_5.code_value and tcodes_5.code_type_id = 160
left join tcodes clsd on trfc.closure_cd = clsd.code_value and clsd.code_type_id = 123
left join tcodes rslv on trfc.resolution_cd = rslv.code_value and rslv.code_type_id = 123
left join tcodes bldstat on tbuild.status_cd = bldstat.code_value and bldstat.code_type_id = 122;



CREATE or replace VIEW vdetailrfc as
SELECT 
trfc.rfc_id
,trfc.suite_review_date
,trfc.review_date
,trfc.rfc_no
,trfc.remedy_grp_tx
,trfc.description_blob
,trfc.bsns_need_blob
,trfc.remedy_asof_date
,trfc.urgency_cd
,trfc.status_cd
,trfc.owner_uid
,trfc.requester_uid
,trfc.remedy_start_dt
,trfc.remedy_end_dt
,trfc.remedy_requested_completion_dt
,trfc.problem_nm
,trfc.build_track_suite_cd
,trfc.rtn_maint_cd
,trfc.asm_impact_cd
,trfc.x_suite_cd
,trfc.test_method_cd
,trfc.tested_cd
,trfc.tested_nm
,trfc.test_approve_tx
,trfc.boa_test_aprv_nm
,trfc.intrusive_cd
,trfc.notify_cd
,trfc.user_notify_tx
,trfc.install_hours_tx
,trfc.mcv_std_cd
,trfc.suite_review_cd
,trfc.suite_decision_date
,trfc.comment_blob
,trfc.ac_comment_blob
,trfc.status_tx
,trfc.interface_sign_off_cd
,trfc.interface_sign_off_tx
,trfc.security_sign_off_cd
,trfc.security_sign_off_tx
,trfc.boa_change_aprv_nm
,trfc.application_id
,trfc.type_cd
,trfc.adhoc_tx
,trfc.safety_cd
,trfc.outage_cd
,trfc.compliant_cd
,trfc.fcab_review_cd
,trfc.call_seq_tx
,trfc.resolution_blob
CREATE OR REPLACE
VIEW `vsbar_excel` AS select
isnull_char(reference_nm,'') as reference_nm
,isnull_char(title_nm,'') as title_nm
,FormatDateTime(id_date,'mm/dd/yy') as id_date
,priority.code_desc as Priority_Desc
,priority.code_desc as Priority_Desc2
,stat.code_desc as statDesc
,'--' as bucketDesc
,isnull_char(`subcd`.`code_desc`,'') as subcd_desc
,combined_cat_tx as CombinedCat
,isnull_char(desc_blob,'') AS `Requeswt_X`
,isnull_char(discussion_blob, '') as DiscussionX
,isnull_char(proposed_solution_blob,'') AS `Solution_X`
,FormatDateTime(id_date,'mm/dd/yy') as received_date
,isnull_char(owner_nm,'') AS `owner_X`
,isnull_char(assigned_nm,'') AS `assigned_X`
,isnull_char(progress_blob,'') AS `Progress_X`
,isnull_char(mitigated_steps_blob,'') AS `Mitiated_steps_X`
,FormatDateTime(install_date,'mm/dd/yy') as install_date
,concat(tuser.last_name, ',', tuser.first_name) as follow_up_contact
,isnull_char(pm_nm,'') AS `Pm_X`
,FormatDateTime(workplan_recv_date,'mm/dd/yy') AS workplan_recv_date
,FormatDateTime(workplan_present_date,'mm/dd/yy') AS workplan_present_date
,FormatDateTime(recommend_recv_date,'mm/dd/yy') AS recommend_recv_date
,FormatDateTime(recommend_present_date,'mm/dd/yy') as recommend_present_date
,FormatDateTime(communication_date,'mm/dd/yy') as communication_date
,FormatDateTime(implementation_date,'mm/dd/yy') as Implement_date
,isnull_char(notes_blob, '') as comments_desc
,isnull_char(facility_action_blob, '') as facility_action
,isnull_char(resolution_blob, '')  as resolution_desc
,status_cd as status_cd
,priority_cd as priority_cd
,approve_cd
,sub_cd
,follow_up_uid
from `tsbar`
left join `tcodes` on `tsbar`.`type_cd` = `tcodes`.`code_value` and `tcodes`.`code_type_id` = 2
left join `tcodes` stat on `tsbar`.`status_cd` = `stat`.`code_value` and `stat`.`code_type_id` = 163
left join `tcodes` priority on `tsbar`.`priority_cd` = `priority`.`code_value` and `priority`.`code_type_id` = 164
left join `tcodes` subcd on `tsbar`.`sub_cd` = `subcd`.`code_value` and `subcd`.`code_type_id` = 157 and `subcd`.`code_desc2` = 'SBAR'
left join tuser on tsbar.follow_up_uid = tuser.user_id;


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
-- this view used in Stored Procedure vsr_excel to find multiple build-tracker and rfc records for a given tsr.
-- tsr has one-many relation to tsr_child (which for now represent only BT info)
-- 11/15 show suite_revew_cd instead of fcab_review_cd

create or replace view vServiceRequestBuildInfo
as select tsr.sr_id, tsr.sr_no, tbuild.rfc_prod_no as rfcNo,
concat(tbuild.product_cd, '-', cast(tbuild.build_no as char)) as buildNo, 
isnull_char(tcodes.code_desc, '-Status?-') as fcabStatus,
concat(tuser.last_name, ', ', tuser.first_name) as buildOwner
from tsr
left join tsr_child on tsr.sr_id = tsr_child.parent_sr_id 
join tbuild on tsr_child.product_cd = tbuild.product_cd and tsr_child.build_no = tbuild.build_no
join trfc on tbuild.rfc_prod_no = trfc.rfc_no
left join tuser on tbuild.owner_uid = tuser.user_id
left join tcodes on trfc.suite_review_cd = tcodes.code_value and tcodes.code_type_id = 162;
create or replace view vsr_child_list as
select  'ServiceRequestChild_list' as target,
tsr_child.sr_child_id as sr_child_id,
concat(tsr_child.product_cd, '-',tsr_child.build_no) as ref_nm,
concat('<A href=Router?Target=Build&Action=Show&Relation=this&RowKey=', tbuild.build_id, '>Link to BT</a>') as  bt_link,
concat(tbuild.driver_cd, '-',tbuild.driver_no) as driver_desc,
`status`.`code_desc` AS `status_desc`,
`maintenance`.`code_desc` as `maint_desc`,
(case `isnull_char`(`tbuild`.`owner_uid`,9999) when 9999 then `tbuild`.`owner_nm` else concat(`u`.`last_name`,_latin1', ',`u`.`first_name`) end) AS `owner_name`,
tsr_child.build_no as build_no,
tsr.sr_no as sr_no,
tsr.title_nm as title_nm,
tsr_child.parent_sr_id,
tsr.division_id as division_id
from tsr_child
left join tsr on tsr_child.parent_sr_id = tsr.sr_id
left join tbuild on tsr_child.product_cd = tbuild.product_cd and tsr_child.build_no = tbuild.build_no
left join `tcodes` `status` on `tbuild`.`status_cd` = `status`.`code_value` and `status`.`code_type_id` = 122
left join `tcodes` `product` on `tbuild`.`product_cd` = `product`.`code_value`  and  `product`.`code_type_id` = 121
left join `tcodes` `maintenance` on `tbuild`.`maintenance_type_cd` = `maintenance`.`code_value`  and  `maintenance`.`code_type_id` = 158
left join `tuser` `u` on `tbuild`.`owner_uid` = `u`.`user_id`
join tdivision on tsr.division_id = tdivision.division_id  ;create or replace view vsr_child as 
select  tsr_child.*,
tsr.sr_no as sr_no,
tsr.title_nm as title_nm,
tsr.division_id as division_id,
concat(`a`.`first_name`,_latin1' ',`a`.`last_name`) AS `added_by`,
concat(`u`.`first_name`,_latin1' ',`u`.`last_name`) AS `updated_by` ,
'BRW' AS `role_cd`,
tbuild.driver_cd as driver_cd,
tbuild.driver_no as driver_no,
tbuild.build_id as build_id
from tsr_child
left join tsr on tsr_child.parent_sr_id = tsr.sr_id
left join tbuild on tsr_child.product_cd = tbuild.product_cd and tsr_child.build_no = tbuild.build_no 
join tdivision on tsr.division_id = tdivision.division_id  
left join tuser `a` on tsr_child.added_uid = `a`.`user_id`
left join tuser u on tsr_child.updated_uid  = `u`.`user_id`;CREATE OR REPLACE VIEW `vsr_child_list` AS
select _utf8'ServiceRequestChild_list' AS `target`
,`tsr_child`.`sr_child_id` AS `sr_child_id`
,concat(`tsr_child`.`product_cd`,_utf8'-',`tsr_child`.`build_no`) AS `ref_nm`
,concat(_utf8'<A href=Router?Target=Build&Action=Show&Relation=this&RowKey=',`tbuild`.`build_id`,_utf8'>Link to BT</a>') AS `bt_link`
,`tbuild`.`rfc_prod_no` as rfc_no
,`status`.`code_desc` AS `status_desc`
,(case `isnull_char`(`tbuild`.`owner_uid`,9999) when 9999 then `tbuild`.`owner_nm` else concat(`u`.`last_name`,_latin1', ',`u`.`first_name`) end) AS `owner_name`
,`maintenance`.`code_desc` AS `maint_desc`
,FormatDateTime(trfc.suite_review_date, 'mm/dd/yyyy') as `suite_cab_date`
,`suitstat`.`code_desc` AS `suite_stat`
,FormatDateTime(trfc.review_date, 'mm/dd/yyyy') as `ncf_cab_date`
,`ncfstat`.`code_desc` AS `ncf_stat`
,FormatDateTime(trfc.remedy_start_dt, 'mm/dd/yyyy hh:mm') as `remedy_start_date`
,FormatDateTime(trfc.remedy_end_dt, 'mm/dd/yyyy hh:mm') as `remedy_end_date`
,`tbuild`.`desc_blob` AS `title_nm`
,`tsr_child`.`parent_sr_id` AS `parent_sr_id`
,`tsr`.`division_id` AS `division_id`
,`tsr_child`.`build_no` AS `build_no`
,`tsr`.`sr_no` AS `sr_no`
from `tsr_child`
left join `tsr` on `tsr_child`.`parent_sr_id` = `tsr`.`sr_id`
left join `tremedy` on `tsr`.`sr_no` = `tremedy`.`remedy_no`
left join `tbuild` on `tsr_child`.`product_cd` = `tbuild`.`product_cd` and `tsr_child`.`build_no` = `tbuild`.`build_no`
left join `trfc` on `tbuild`.`rfc_prod_no` = `trfc`.`rfc_no`
left join `tcodes` `status` on `tbuild`.`status_cd` = `status`.`code_value` and `status`.`code_type_id` = 122
left join `tcodes` `product` on `tbuild`.`product_cd` = `product`.`code_value` and  `product`.`code_type_id` = 121
left join `tcodes` `maintenance` on `tbuild`.`maintenance_type_cd` = `maintenance`.`code_value`  and `maintenance`.`code_type_id` = 158
left join `tcodes` `suitstat` on `trfc`.`suite_review_cd` = `suitstat`.`code_value`  and `suitstat`.`code_type_id` = 162
left join `tcodes` `ncfstat` on `trfc`.`fcab_review_cd` = `ncfstat`.`code_value`  and `ncfstat`.`code_type_id` = 105
left join `tuser` `u` on `tbuild`.`owner_uid` = `u`.`user_id`
join `tdivision` on `tsr`.`division_id` = `tdivision`.`division_id`;

CREATE OR REPLACE VIEW `vsr_child` AS select 
`tsr_child`.`sr_child_id` AS `sr_child_id`
,`tsr_child`.`child_type_cd` AS `child_type_cd`
,`tsr_child`.`product_cd` AS `product_cd`
,`tsr_child`.`build_no` AS `build_no`
,`tsr_child`.`added_uid` AS `added_uid`
,`tsr_child`.`updated_uid` AS `updated_uid`
,`tsr_child`.`submitted_uid` AS `submitted_uid`
,`tsr_child`.`reviewed_uid` AS `reviewed_uid`
,`tsr_child`.`approved_uid` AS `approved_uid`
,`tsr_child`.`added_date` AS `added_date`
,`tsr_child`.`updated_date` AS `updated_date`
,`tsr_child`.`submitted_date` AS `submitted_date`
,`tsr_child`.`reviewed_date` AS `reviewed_date`
,`tsr_child`.`approved_date` AS `approved_date`
,`tsr_child`.`reviewed_flag` AS `reviewed_flag`
,`tsr_child`.`approved_flag` AS `approved_flag`
,`tsr_child`.`submitted_tx` AS `submitted_tx`
,`tsr_child`.`reviewed_tx` AS `reviewed_tx`
,`tsr_child`.`approved_tx` AS `approved_tx`
,`tsr_child`.`parent_sr_id` AS `parent_sr_id`
,`tsr`.`sr_no` AS `sr_no`
,`tremedy`.`title_nm` AS `title_nm`
,`tsr`.`division_id` AS `division_id`
,concat(`a`.`first_name`,_latin1' ',`a`.`last_name`) AS `added_by`
,concat(`u`.`first_name`,_latin1' ',`u`.`last_name`) AS `updated_by`
,_utf8'BRW' AS `role_cd`
,`tbuild`.`driver_cd` AS `driver_cd`
,`tbuild`.`driver_no` AS `driver_no`
,`tbuild`.`build_id` AS `build_id` 
from `tsr_child` 
left join `tsr` on `tsr_child`.`parent_sr_id` = `tsr`.`sr_id`
left join `tremedy` on `tsr`.`sr_no` = `tremedy`.`remedy_no`
left join `tbuild` on `tsr_child`.`product_cd` = `tbuild`.`product_cd` and `tsr_child`.`build_no` = `tbuild`.`build_no`
join `tdivision` on `tsr`.`division_id` = `tdivision`.`division_id`
left join `tuser` `a` on `tsr_child`.`added_uid` = `a`.`user_id`
left join `tuser` `u` on `tsr_child`.`updated_uid` = `u`.`user_id`-- Service Request Excel Export, 
-- add column for one-many BT info obtained via stored procedure which gets a cursor and loops through tsr_child info
-- 11/10/10  re-order columns for new template.
-- 11/19/10  fix sr_status_cd export, it should be code-set #166
-- 11/22/10  Correct spelling of EXCP in case statement
-- 12/16/10 Added proj_comment_tx column after "Project" column
-- 12/19/10 Added "OpenClosedSatus" to allow filter on "all open"
-- 2/2/11  Add Customer_rqst_date_tx , fix join for remedy_requestor
-- 2/14/11 add rtn_maint_cd for excel filtering
-- 2/17/11 use new SR-RLSE table (170) for releases instead of shared table with Build Tracker
-- 2/28/11 add 'release_cd' for filter
-- 3/8/11 - export test_start_tx


create or replace view `vsr_excel` as
SELECT 
rlse.code_desc as kpRelease
,case back_office_cd WHEN 'B' then 'Back' WHEN 'F' then 'Front' else '' end AS frontBack
, srstat.code_desc as StatusSR
,product.code_desc as product
, concat(build.first_name, ' ' , build.last_name) as Builder
, concat(pm.first_name, ' ' , pm.last_name) as PM
, concat(ac.first_name, ' ' , ac.last_name) as AC
, sr_no as SrNo
, title_nm as theTitle
, description_blob as desc_blob
, team.code_desc as ProjectName
, tsr.cmnt_proj_tx as ProjectCommentText
, rem_stat.code_desc  as remedy_status 
, remedy_grp_tx as RemedyGroup
, case rtn_maint_cd when 'R' then 'RTM' when 'N' then 'NonRTM' when "E" then 'EXCP' ELSE "" END AS RtnMaint
, case baod_reqr_cd when 'Y' then 'Yes' when 'N' then 'No' else '' end  as BAOD
, FormatDateTime(assign_date, 'mm/dd/yyyy') as fmt_AssignDate
, off_cycle_rsn_tx as offCyclleRlse
, test_start_tx as TestStartDate
, case prod_cd when 'Y' then 'Yes' when 'N' then 'No' else '' end as inProdFlag
, FormatDateTime(tsr.build_dt, 'mm/dd/yyyy') as BuildDate
, FormatDateTime(tsr.prod_build_dt, 'mm/dd/yyyy') as ProdBuildDate
, FormatDateTime(tremedy.remedy_start_dt, 'mm/dd/yyyy') as RemedyStartDate
, FormatDateTime(tremedy.remedy_end_dt, 'mm/dd/yyyy') as RemedyEndDate
, tremedy.customer_rqst_date_tx as customer_rqst_date_tx
, testmeth.code_desc as TestMethod
, case tsr.tested_cd when 'Y' then 'Yes' when 'N' then 'No' else '' end as TestedYet
, case tsr.notify_cd when 'Y' then 'Yes' when 'N' then 'No' else '' end as NotifyYN
, tsr.cmnt_comm_tx as CommentTx
, case tsr.workflow_cd when 'Y' then 'Yes' when 'N' then 'No' else '' end as WorkFlowYN
, case tsr.bsns_init_flag when 'Y' then 'Yes' when 'N' then 'No' else '' end as BusinessInit
, sizing.code_desc2 as SizingHML
, cmnt_loe_tx as SizingComment
, case tsr.funded_cd when 'Y' then 'Yes' when 'N' then 'No' else '' end as Funded
, funding.code_desc as FundingType
, tsr.cmnt_funding_tx as  FuncingComment
, case tsr.sr_type_cd when 'B' then 'Business' when 'T' then 'Technical' when 'O' then 'Other' else '' end as SRType
, tremedy.remedy_comment_blob as RemedyComment
, tsr.comment_blob as CommentText
, tsr.tech_notes_blob as TechNotes
, concat(sponsor.first_name, ' ', sponsor.last_name ) as ProjSponsor
, concat(rqstr.first_name, ' ', rqstr.last_name ) as remedy_requester
, concat(pm2.first_name, ' ', pm2.last_name ) as pm2
, concat(validator.first_name, ' ', validator.last_name ) as theValidator
, pServiceRequestBuildInfo(tsr.sr_no) as build_info
, tsr.pm2_uid
, tsr.back_office_cd
, tsr.sr_status_cd
, tsr.team_cd
, tsr.product_cd
, tsr.hc_ac_uid
, tsr.pm_uid
, tsr.validator_uid
, tsr.sponsor_uid
, tsr. requestor_uid
, tsr.build_lead_uid
, tsr.sr_no as sr_no
, tsr.rtn_maint_cd as rtn_maint_cd
, srstat.code_desc2 as OpenClosedStatus
, tsr.release_cd as release_cd
from tsr 
join tremedy on tsr.sr_no = tremedy.remedy_no
join tdivision on tsr.division_id = tdivision.division_id
left join tcodes team on tsr.team_cd = team.code_value and team.code_type_id = 167
left join tcodes product on tsr.product_cd = product.code_value and product.code_type_id = 121
left join tcodes srstat on tsr.sr_status_cd = srstat.code_value and srstat.code_type_id = 166
left join tcodes rem_stat on tremedy.status_cd = rem_stat.code_value and rem_stat.code_type_id = 118
left join tcodes rlse  on tsr.release_cd = rlse.code_value and rlse.code_type_id = 170
left join tcodes testmeth   on tsr.test_method_cd = testmeth.code_value and testmeth.code_type_id  = 130
left join tcodes sizing   on tsr.sizing_cd = sizing.code_value and sizing.code_type_id  = 55
left join tcodes funding  on tsr.funding_type_cd = funding.code_value and funding.code_type_id  = 168
left join tcontact as rqstr  on tremedy.requester_uid = rqstr.contact_id
left join tuser as pm2  on tsr.pm2_uid = pm2.user_id
left join tuser as build  on tsr.build_lead_uid = build.user_id
left join tuser as pm  on tsr.pm_uid = pm.user_id
left join tuser as sponsor on tsr.sponsor_uid = sponsor.user_id
left join tuser as ac  on tsr.hc_ac_uid = ac.user_id
left join tuser as validator  on tsr.validator_uid = validator.user_id
WHERE sr_id > 0;-- 9/21/10 add Remedy Requester
create or replace view `vsr_excel` as
SELECT 
case back_office_cd WHEN 'B' then 'Back' WHEN 'F' then 'Front' else '' end AS frontBack
,team.code_desc as team
,product.code_desc as product
, concat(build.first_name, ' ' , build.last_name) as Builder
, concat(pm.first_name, ' ' , pm.last_name) as PM
, concat(ac.first_name, ' ' , ac.last_name) as AC
, sr_no as SrNo
, title_nm as theTitle
, description_blob as desc_blob
, srstat.code_desc as StatusSR
, rem_stat.code_desc  as remedy_status 
, remedy_grp_tx as RemedyGroup
, case rtn_maint_cd when 'R' then 'RTM' when 'N' then 'NonRTM' when "E" then 'EXP' ELSE "" END AS RtnMaint
, case baod_reqr_cd when 'Y' then 'Yes' when 'N' then 'No' else '' end  as BAOD
, FormatDateTime(assign_date, 'mm/dd/yyyy') as fmt_AssignDate
, rlse.code_desc as kpRelease
, off_cycle_rsn_tx as offCyclleRlse
, FormatDateTime(test_start_dt, 'mm/dd/yyyy') as TestStartDate
, case prod_cd when 'Y' then 'Yes' when 'N' then 'No' else '' end as inProdFlag
, FormatDateTime(tsr.build_dt, 'mm/dd/yyyy') as BuildDate
, FormatDateTime(tsr.prod_build_dt, 'mm/dd/yyyy') as ProdBuildDate
, FormatDateTime(tremedy.remedy_start_dt, 'mm/dd/yyyy') as RemedyStartDate
, FormatDateTime(tremedy.remedy_end_dt, 'mm/dd/yyyy') as RemedyEndDate
, testmeth.code_desc as TestMethod
, case tsr.tested_cd when 'Y' then 'Yes' when 'N' then 'No' else '' end as TestedYet
, case tsr.notify_cd when 'Y' then 'Yes' when 'N' then 'No' else '' end as NotifyYN
, tsr.cmnt_comm_tx as CommentTx
, case tsr.workflow_cd when 'Y' then 'Yes' when 'N' then 'No' else '' end as WorkFlowYN
, case tsr.bsns_init_flag when 'Y' then 'Yes' when 'N' then 'No' else '' end as BusinessInit
, sizing.code_desc2 as SizingHML
, cmnt_loe_tx as SizingComment
, case tsr.funded_cd when 'Y' then 'Yes' when 'N' then 'No' else '' end as Funded
, funding.code_desc as FundingType
, tsr.cmnt_funding_tx as  FuncingComment
, case tsr.sr_type_cd when 'B' then 'Business' when 'T' then 'Technical' when 'O' then 'Other' else '' end as SRType
, tremedy.remedy_comment_blob as RemedyComment
, tsr.comment_blob as CommentText
, tsr.tech_notes_blob as TechNotes
, concat(rqstr.first_name, ' ', rqstr.last_name ) as remedy_requester
, concat(pm2.first_name, ' ', pm2.last_name ) as pm2
, concat(validator.first_name, ' ', validator.last_name ) as theValidator
, tsr.pm2_uid
, tsr.back_office_cd
, tsr.sr_status_cd
, tsr.team_cd
, tsr.product_cd
, tsr.hc_ac_uid
, tsr.pm_uid
, tsr. requestor_uid
, tsr.sr_no as sr_no
from tsr 
join tremedy on tsr.sr_no = tremedy.remedy_no
join tdivision on tsr.division_id = tdivision.division_id
left join tcodes team on tsr.team_cd = team.code_value and team.code_type_id = 167
left join tcodes product on tsr.product_cd = product.code_value and product.code_type_id = 121
left join tcodes srstat on tsr.sr_status_cd = srstat.code_value and srstat.code_type_id = 159
left join tcodes rem_stat on tremedy.status_cd = rem_stat.code_value and rem_stat.code_type_id = 118
left join tcodes rlse  on tsr.release_cd = rlse.code_value and rlse.code_type_id = 98
left join tcodes testmeth   on tsr.test_method_cd = testmeth.code_value and testmeth.code_type_id  = 130
left join tcodes sizing   on tsr.sizing_cd = sizing.code_value and sizing.code_type_id  = 55
left join tcodes funding  on tsr.funding_type_cd = funding.code_value and funding.code_type_id  = 168
left join tcontact as rqstr  on tsr.requestor_uid = rqstr.contact_id
left join tuser as pm2  on tsr.pm2_uid = pm2.user_id
left join tuser as build  on tsr.build_lead_uid = build.user_id
left join tuser as pm  on tsr.pm_uid = pm.user_id
left join tuser as ac  on tsr.hc_ac_uid = ac.user_id
left join tuser as validator  on tsr.validator_uid = validator.user_id
WHERE sr_id > 0;-- 9/29 Use title_nm for remedy-summary
-- 10/1 User the remedy_requester_uid from the tremedy table,  not the tsr.requester_uid 
-- 11/15/10 move RemedySummary and Description fields to positions 2 and 3
-- 11/19/10 trim remedy description to 350 characters
-- 11/23/10 fix rtn_maint_cd case statement to add 'EXCP'
-- 12/16/10 Add Build Lead (build_lead_uid) after ProjectManager
-- 2/17/11 Use new SR-Release table (id=170) instead of shared with the Build tracker

create or replace view `vsr_list` AS
select  'ServiceRequest' as target,
sr_id,
tremedy.remedy_no as sr_no,
tremedy.title_nm as RemedySummary,
left(tremedy.description_blob,350)  as RemedyDesc,
(case `tsr`.`back_office_cd` when 'F' then 'Front' when 'B' then 'Back' else '' end) as backOffice,
stat.code_desc as status_desc,
rlse.code_desc as ReleaseDesc,
team.code_desc as teamDesc,
product.code_desc as product_desc,
concat(build_lead.last_name, ', ' , build_lead.first_name) as BuildLead ,
concat(ac.last_name, ', ', ac.first_name) as AC,
concat(pm.last_name, ', ' , pm.first_name) as ProjectMgr ,
concat(sponsor.last_name, ', ' , sponsor.first_name) as SponserUser,
concat(tcontact.last_name, ', ' , tcontact.first_name) as Requestor ,
concat(pm2.last_name, ', ', pm2.first_name) as IntgrProjMgr,
concat(validator.last_name, ', ' , validator.first_name) as AssignValidator,
case rtn_maint_cd when 'R' then 'RTM' when 'N' then 'NonRTM' when "E" then 'EXCP' ELSE "" END AS RtnMaint,
funded.code_desc as FundedBy,
notify.code_desc as notifyMethod,
(case `tsr`.`workflow_cd` when 'y' then 'Yes'  when 'N' then 'No' else '' end) as Workflow,
FormatDateTime(remedy_end_dt, 'mm/dd/yy') as remedy_end_dt,
tsr.division_id as division_id,
tsr.sr_status_cd as sr_status_cd,
tsr.workflow_cd as workflow_cd,
tsr.pm_uid,
tsr.hc_ac_uid,
tsr.builder_owner_uid,
tsr.validator_uid,
tsr.funding_type_cd,
tsr.build_lead_uid,
tsr.sponsor_uid,
tsr.back_office_cd,
tsr.product_cd,
tsr.team_cd,
tsr.notify_cd,
tsr.release_cd,
tremedy.requester_uid,
tsr.rtn_maint_cd,
tsr.pm2_uid,
stat.code_desc2 as OpenClosedStatus
from tsr
join tremedy on tsr.sr_no = tremedy.remedy_no
join tdivision on tsr.division_id = tdivision.division_id  and tdivision.division_id = 1
left join tuser ac on tsr.hc_ac_uid = ac.user_id
left join tuser pm on tsr.pm_uid = pm.user_id
left join tuser validator on tsr.validator_uid = validator.user_id
left join tuser build_lead on tsr.build_lead_uid = build_lead.user_id
left join tuser sponsor on tsr.sponsor_uid = sponsor.user_id
left join tcontact on requester_uid = tcontact.contact_id
left join tuser pm2 on tsr.pm2_uid = pm2.user_id
left join tcodes stat on tsr.sr_status_cd = stat.code_value and stat.code_type_id  = 166
left join tcodes team on tsr.team_cd = team.code_value and team.code_type_id = 167
left join tcodes product on tsr.product_cd = product.code_value and product.code_type_id = 121
left join tcodes funded on tsr.funding_type_cd = funded.code_value and funded.code_type_id  = 168
left join tcodes notify on tsr.notify_cd = notify.code_value and notify.code_type_id  = 3
left join tcodes rlse on tsr.release_cd = rlse.code_value and rlse.code_type_id  = 170
WHERE tsr.sr_id > 0;create or replace view `vsr` as
SELECT tsr.*, tremedy.*, div_name
, 'BRW' as role_cd
,stat.code_desc as srstatus
, concat(a.first_name, ' ' , a.last_name) as added_by
, concat(u.first_name, ' ' , u.last_name) as updated_by
, concat(r.first_name, ' ', r.last_name)  as reviewed_by
, concat(s.first_name, ' ', s.last_name ) as submitted_by
, concat(rqstr.first_name, ' ', rqstr.last_name ) as remedy_requester
, concat(validator.first_name, ' ', validator.last_name ) as validator
, concat(pm2.first_name, ' ', pm2.last_name ) as pm2
, concat(owner.last_name , ',' , owner.first_name) as remedyOwner 
, rem_stat.code_desc  as remedy_status 
,FormatDateTime(remedy_requested_completion_dt, 'mm/dd/yyyy') as fmt_remedy_requested_completion_dt
,FormatDateTime(remedy_end_dt, 'mm/dd/yyyy hh:mm') as fmt_remedy_end_dt
,FormatDateTime(remedy_start_dt, 'mm/dd/yyyy hh:mm') as fmt_remedy_start_dt
,product.code_desc as product_disp
,isnull_char(date_format(tremedy.remedy_end_dt,'%b-%Y'),'TBD') as BuildMonth
from tsr 
join tremedy on tsr.sr_no = tremedy.remedy_no
join tdivision on tsr.division_id = tdivision.division_id
left join tcontact on requester_uid = tcontact.contact_id
left join tcodes stat on tsr.sr_status_cd = stat.code_value and stat.code_type_id  = 166
left join tcodes suite_stat on tsr.suite_review_cd = suite_stat.code_value and suite_stat.code_type_id  = 105
left join tcodes fcab_stat on tsr.fcab_review_cd = fcab_stat.code_value and fcab_stat.code_type_id  = 105  
left join tcodes install on tsr.install_cd = install.code_value and install.code_type_id  = 3
left join tcodes sfty on tsr.safety_cd = sfty.code_value and sfty.code_type_id  = 3
left join tcodes compliant on tsr.compliant_cd = compliant.code_value and compliant.code_type_id  = 3
left join tapplications on tsr.application_id = tapplications.application_id
left join tcodes rem_stat on tremedy.status_cd = rem_stat.code_value and rem_stat.code_type_id = 118
left join tcodes product on tsr.product_cd = product.code_value and product.code_type_id = 121
left join tuser as a  on tsr.added_uid = a.user_id
left join tuser as u on tsr.updated_uid = u.user_id
left join tuser as r  on tsr.reviewed_uid = r.user_id
left join tuser as s  on tsr.submitted_uid = s.user_id
left join tuser as validator on tsr.validator_uid = validator.user_id
left join tuser as pm2  on tsr.pm2_uid = pm2.user_id
left join tcontact as rqstr  on tremedy.requester_uid = rqstr.contact_id
left join tcontact owner on tremedy.owner_uid = owner.contact_id
WHERE sr_id > 0;
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
CREATE OR REPLACE ALGORITHM=UNDEFINED DEFINER=`pmotester`@`%` SQL SECURITY DEFINER VIEW `pmo`.`vdetail_test` AS select `pmo`.`ttest`.`test_id` AS `test_id`,`pmo`.`ttest`.`project_id` AS `project_id`,`pmo`.`ttest`.`cycle_id` AS `cycle_id`,`pmo`.`ttest`.`env_id` AS `env_id`,`pmo`.`ttest`.`reference_nm` AS `reference_nm`,`pmo`.`ttest`.`title_nm` AS `title_nm`,`pmo`.`ttest`.`chg_pkg_nm` AS `chg_pkg_nm`,`pmo`.`ttest`.`anc_contact_tx` AS `anc_contact_tx`,`pmo`.`ttest`.`status_tx` AS `status_tx`,`pmo`.`ttest`.`status_cd` AS `status_cd`,`pmo`.`ttest`.`result_cd` AS `result_cd`,`pmo`.`ttest`.`code_chg_reqr_cd` AS `code_chg_reqr_cd`,`pmo`.`ttest`.`assigned_uid` AS `assigned_uid`,`pmo`.`ttest`.`testcase_id` AS `testcase_id`,`pmo`.`ttest`.`anc_list_tx` AS `anc_list_tx`,`pmo`.`ttest`.`config_chg_reqr_cd` AS `config_chg_reqr_cd`,`pmo`.`ttest`.`env1_yn_cd` AS `env1_yn_cd`,`pmo`.`ttest`.`env2_yn_cd` AS `env2_yn_cd`,`pmo`.`ttest`.`env3_yn_cd` AS `env3_yn_cd`,`pmo`.`ttest`.`env4_yn_cd` AS `env4_yn_cd`,`pmo`.`ttest`.`env5_yn_cd` AS `env5_yn_cd`,`pmo`.`ttest`.`env6_yn_cd` AS `env6_yn_cd`,`pmo`.`ttest`.`desc_blob` AS `desc_blob`,`pmo`.`ttest`.`fix_blob` AS `fix_blob`,`pmo`.`ttest`.`problem_blob` AS `problem_blob`,`pmo`.`ttest`.`regression_blob` AS `regression_blob`,`pmo`.`ttest`.`anc_setup_blob` AS `anc_setup_blob`,`pmo`.`ttest`.`anc_steps_blob` AS `anc_steps_blob`,`pmo`.`ttest`.`anc_valid_blob` AS `anc_valid_blob`,`pmo`.`ttest`.`notes_blob` AS `notes_blob`,`pmo`.`ttest`.`resolution_blob` AS `resolution_blob`,`pmo`.`ttest`.`root_cause_blob` AS `root_cause_blob`,`pmo`.`ttest`.`validation_blob` AS `validation_blob`,`pmo`.`ttest`.`execution_blob` AS `execution_blob`,`pmo`.`ttest`.`setup_blob` AS `setup_blob`,`pmo`.`ttest`.`closed_date` AS `closed_date`,`pmo`.`ttest`.`owner_uid` AS `owner_uid`,`pmo`.`ttest`.`closed_uid` AS `closed_uid`,`pmo`.`ttest`.`added_uid` AS `added_uid`,`pmo`.`ttest`.`updated_uid` AS `updated_uid`,`pmo`.`ttest`.`submitted_uid` AS `submitted_uid`,`pmo`.`ttest`.`reviewed_uid` AS `reviewed_uid`,`pmo`.`ttest`.`approved_uid` AS `approved_uid`,`pmo`.`ttest`.`added_date` AS `added_date`,`pmo`.`ttest`.`updated_date` AS `updated_date`,`pmo`.`ttest`.`submitted_date` AS `submitted_date`,`pmo`.`ttest`.`reviewed_date` AS `reviewed_date`,`pmo`.`ttest`.`approved_date` AS `approved_date`,`pmo`.`ttest`.`reviewed_flag` AS `reviewed_flag`,`pmo`.`ttest`.`approved_flag` AS `approved_flag`,`pmo`.`ttest`.`submitted_tx` AS `submitted_tx`,`pmo`.`ttest`.`reviewed_tx` AS `reviewed_tx`,`pmo`.`ttest`.`approved_tx` AS `approved_tx`,`pmo`.`ttest`.`test_start_date` AS `test_start_date`,`pmo`.`ttest`.`data_regr_blob` AS `data_regr_blob`,`pmo`.`ttest`.`epic_products_tx` AS `epic_products_tx`,`pmo`.`ttest`.`anc_products_tx` AS `anc_products_tx`,`pmo`.`ttest`.`test_data_blob` AS `test_data_blob`,`pmo`.`ttest`.`benefits_blob` AS `benefits_blob`,`pmo`.`ttest`.`test_env_tx` AS `test_env_tx`,`pmo`.`ttest`.`other_reqr_blob` AS `other_reqr_blob`,`pmo`.`ttest`.`priority_cd` AS `priority_cd`,`pmo`.`ttest`.`template_nm` AS `template_nm`,`pmo`.`ttest`.`install_dt` AS `install_dt`,`pmo`.`ttest`.`cab_dt` AS `cab_dt`,`pmo`.`ttest`.`sr_no` AS `sr_no`,`pmo`.`ttest`.`cab_sr_no` AS `cab_sr_no`,`pmo`.`ttest`.`phase_cd` AS `phase_cd`,`pmo`.`ttest`.`risk_blob` AS `risk_blob`,`pmo`.`ttest`.`mitagate_blob` AS `mitagate_blob`,`pmo`.`ttest`.`plan_sign_date` AS `plan_sign_date`,`pmo`.`ttest`.`case_sign_date` AS `case_sign_date`,`pmo`.`ttest`.`plan_sign_cd` AS `plan_sign_cd`,`pmo`.`ttest`.`case_sign_cd` AS `case_sign_cd`,`pmo`.`ttest`.`summary_sign_date` AS `summary_sign_date`,`pmo`.`ttest`.`scope_blob` AS `scope_blob`,`pmo`.`ttest`.`plan_ecp_blob` AS `plan_ecp_blob`,`pmo`.`ttest`.`plan_engage_blob` AS `plan_engage_blob`,`pmo`.`ttest`.`plan_plan_blob` AS `plan_plan_blob`,`pmo`.`ttest`.`plan_prep_blob` AS `plan_prep_blob`,`pmo`.`ttest`.`plan_exec_blob` AS `plan_exec_blob`,`pmo`.`ttest`.`plan_end_engage_blob` AS `plan_end_engage_blob`,`pmo`.`ttest`.`plan_ecp_st_cd` AS `plan_ecp_st_cd`,`pmo`.`ttest`.`plan_engage_st_cd` AS `plan_engage_st_cd`,`pmo`.`ttest`.`plan_prep_st_cd` AS `plan_prep_st_cd`,`pmo`.`ttest`.`plan_exec_st_cd` AS `plan_exec_st_cd`,`pmo`.`ttest`.`plan_end_st_cd` AS `plan_end_st_cd`,`pmo`.`ttest`.`sox_compliance_cd` AS `sox_compliance_cd`,`pmo`.`ttest`.`test_stat_cd` AS `test_stat_cd`,`pmo`.`ttest`.`test_lead_uid` AS `test_lead_uid`,`pmo`.`ttest`.`test_end_date` AS `test_end_date`,`pmo`.`ttest`.`plan_exec_pct` AS `plan_exec_pct`,`pmo`.`ttest`.`plan_pass_pct` AS `plan_pass_pct`,`pmo`.`ttest`.`actual_exec_pct` AS `actual_exec_pct`,`pmo`.`ttest`.`actual_pass_pct` AS `actual_pass_pct`,`pmo`.`ttest`.`test_case_asof_date` AS `test_case_asof_date`,`pmo`.`ttest`.`current_activity_blob` AS `current_activity_blob`,`pmo`.`ttest`.`next_week_plans_blob` AS `next_week_plans_blob`,`pmo`.`ttest`.`plan_plan_st_cd` AS `plan_plan_st_cd`,`pmo`.`ttest`.`manager_uid` AS `manager_uid`,`pmo`.`ttest`.`status_summary_blob` AS `status_summary_blob`,`pmo`.`ttest`.`division_id` AS `division_id`,`pmo`.`ttest`.`progress_cd` AS `progress_cd`,`pmo`.`ttest`.`summary_dt_st_cd` AS `summary_dt_st_cd`,`pmo`.`ttest`.`baod_uid` AS `baod_uid`,`pmo`.`ttest`.`builder_uid` AS `builder_uid`,`pmo`.`ttest`.`ip_uat_flag` AS `ip_uat_flag`,`pmo`.`ttest`.`ecp_reqr_flag` AS `ecp_reqr_flag`,`pmo`.`ttest`.`remedy_asof_date` AS `remedy_asof_date`,`pmo`.`ttest`.`remedy_act_end_date` AS `remedy_act_end_date`,`pmo`.`ttest`.`remedy_cat_tx` AS `remedy_cat_tx`,`pmo`.`ttest`.`remedy_grp_tx` AS `remedy_grp_tx`,`pmo`.`ttest`.`remedy_type_tx` AS `remedy_type_tx`,`pmo`.`ttest`.`remedy_item_tx` AS `remedy_item_tx`,`pmo`.`ttest`.`remedy_approve_cd` AS `remedy_approve_cd`,`pmo`.`ttest`.`remedy_start_date_tx` AS `remedy_start_date_tx`,`pmo`.`ttest`.`remedy_pending_cd` AS `remedy_pending_cd`,`pmo`.`ttest`.`remedy_comment_blob` AS `remedy_comment_blob`,`pmo`.`ttest`.`remedy_grp_cd` AS `remedy_grp_cd`,`pmo`.`ttest`.`urgency_cd` AS `urgency_cd`,`pmo`.`ttest`.`impact_cd` AS `impact_cd`,`pmo`.`ttest`.`expedited_cd` AS `expedited_cd`,`pmo`.`ttest`.`escalated_cd` AS `escalated_cd`,`pmo`.`ttest`.`closure_cd` AS `closure_cd`,`pmo`.`ttest`.`outage_cd` AS `outage_cd`,`pmo`.`ttest`.`emergency_cd` AS `emergency_cd`,`pmo`.`ttest`.`remedy_end_dt` AS `remedy_end_dt`,`pmo`.`ttest`.`remedy_start_dt` AS `remedy_start_dt`,`pmo`.`ttest`.`remedy_act_end_dt` AS `remedy_act_end_dt`,`pmo`.`ttest`.`remedy_requested_completion_dt` AS `remedy_requested_completion_dt`,`pmo`.`ttest`.`remedy_create_dt` AS `remedy_create_dt`,`pmo`.`ttest`.`submitter_uid` AS `submitter_uid`,`pmo`.`ttest`.`requester_uid` AS `requester_uid`,`pmo`.`ttest`.`remedy_effort_tx` AS `remedy_effort_tx`,`pmo`.`ttest`.`description_blob` AS `description_blob`,`pmo`.`ttest`.`worklog_blob` AS `worklog_blob`,`pmo`.`ttest`.`bsns_need_blob` AS `bsns_need_blob`,concat(`a`.`first_name`,_latin1'  ',`a`.`last_name`) AS `added_by`,concat(`u`.`first_name`,_latin1'  ',`u`.`last_name`) AS `updated_by`,concat(`r`.`first_name`,_latin1'  ',`r`.`last_name`) AS `reviewed_by`,concat(`s`.`first_name`,_latin1'  ',`s`.`last_name`) AS `submitted_by`,`pmo`.`tdivision`.`div_name` AS `div_name`,`isnull_int`(`pmo`.`trfc`.`rfc_id`,0) AS `rfc_id`,concat(_utf8'<A href=Router?Target=TestPlan&Action=Show&Relation=this&RowKey=',`pmo`.`ttest`.`test_id`,_utf8'>Plan Link</A>') AS `planlink`,concat(_utf8'<A href=Router?Target=RfcRipCab&Action=Show&Relation=this&RowKey=',`pmo`.`trfc`.`rfc_id`,_utf8'>SR/RFC Link</A>') AS `srlink`,`rem_stat`.`code_desc` AS `remedy_status`,`rem_urgency`.`code_desc` AS `remedy_urgency`,concat(`owner`.`last_name`,_latin1',',`owner`.`first_name`) AS `remedyOwner`,concat(`rqstr`.`last_name`,_latin1',',`rqstr`.`first_name`) AS `remedyRequester`,`FormatDateTime`(`pmo`.`ttest`.`remedy_end_dt`,_utf8'mm/dd/yyyy') AS `fmt_remedy_end_dt`,`FormatDateTime`(`pmo`.`ttest`.`remedy_requested_completion_dt`,_utf8'mm/dd/yyyy') AS `fmt_remedy_requested_completion_dt` from ((((((((((`pmo`.`ttest` left join `pmo`.`tdivision` on((`pmo`.`ttest`.`division_id` = `pmo`.`tdivision`.`division_id`))) left join `pmo`.`trfc` on((`pmo`.`ttest`.`cab_sr_no` = `pmo`.`trfc`.`rfc_no`))) left join `pmo`.`tuser` `a` on((`pmo`.`ttest`.`added_uid` = `a`.`user_id`))) left join `pmo`.`tuser` `u` on((`pmo`.`ttest`.`updated_uid` = `u`.`user_id`))) left join `pmo`.`tuser` `r` on((`pmo`.`ttest`.`reviewed_uid` = `r`.`user_id`))) left join `pmo`.`tuser` `s` on((`pmo`.`ttest`.`submitted_uid` = `s`.`user_id`))) left join `pmo`.`tcodes` `rem_stat` on(((`pmo`.`trfc`.`status_cd` = `rem_stat`.`code_value`) and (`rem_stat`.`code_type_id` = 118)))) left join `pmo`.`tcodes` `rem_urgency` on(((`pmo`.`trfc`.`urgency_cd` = `rem_urgency`.`code_value`) and (`rem_urgency`.`code_type_id` = 2)))) left join `pmo`.`tcontact` `rqstr` on((`pmo`.`trfc`.`requester_uid` = `rqstr`.`contact_id`))) left join `pmo`.`tcontact` `owner` on((`pmo`.`trfc`.`owner_uid` = `owner`.`contact_id`)))CREATE or replace VIEW vuser_list
AS
select  'User' as target, 
user_id,handle,
last_name,
first_name,
utype.code_desc as utype,
suite.code_desc as suiteNm,
tuser.active_flag,
tuser.executive_flag,
tuser.administrator_flag,
tuser.phone_tx,
tuser.type_cd,
tuser.division_id,
tuser.user_suite_cd
 from tuser
 join tdivision on tuser.division_id = tdivision.division_id  
left join tcodes utype on tuser.type_cd = utype.code_value and utype.code_type_id = 111 
left join tcodes suite on tuser.user_suite_cd = suite.code_value and suite.code_type_id = 95create or replace view vuser as
SELECT tuser.*
,div_name
,'BRW' as role_cd 
,concat(a.first_name, ' ' , a.last_name) as added_by 
, concat(u.first_name, ' ' 
, u.last_name) as updated_by
, suite.code_desc as suite_nm	
, secr_level.code_desc as ip_security_level
from tuser 
left join tdivision on tuser.division_id = tdivision.division_id  
left join tuser as a  on tuser.added_uid = a.user_id 
left join tuser as u on tuser.updated_uid = u.user_id  
left join tcodes suite on tuser.user_suite_cd = suite.code_value and suite.code_type_id = 95
left join tcodes secr_level  on tuser.ip_issue_triage_cd = secr_level.code_value and secr_level.code_type_id = 164;CREATE OR REPLACE VIEW vworkeffort
AS SELECT     work_id AS id, 
title_nm AS title, 
owner_tx AS business_owner, 
epic_contact_tx AS epic_ts, 
desc_blob AS description, 
history_blob AS disposition, 
issues_blob AS issues,
notes_tx AS notes, 
status_tx AS status_comments, 
status_cd AS status, 
suite_cd AS suite, 
review_cd AS epic_review_flag,
development_cd AS development_flag, 
patient_safety_cd, 
priority_cd AS priority, 
interface_id, 
incident_no, ra_no AS epic_ra,
rfc_no AS rfc, 
defect_no, 
bridges_uid AS bridges_ac_id,
target_start_dt,
target_close_dt, scope_blob AS scope_desc,
impact_blob AS impact_desc,
owner_uid,
tuser.last_name as bridges_lname
FROM   twork
join tuser on twork.owner_uid  = tuser.user_id;