-- 3/11/11 add remedy status_cd from prod_rfc into the view

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





















