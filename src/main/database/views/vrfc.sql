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
