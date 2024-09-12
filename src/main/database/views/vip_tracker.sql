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
left join tcodes rslv on tip_tracker.resolution_cd = rslv.code_value and rslv.code_type_id = 123;