create or replace view `vsr` as
SELECT tsr.*,
d.div_name
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
,FormatDateTime(tremedy.remedy_end_dt, 'mm/dd/yyyy hh:mm') as fmt_remedy_end_dt
,FormatDateTime(tremedy.remedy_start_dt, 'mm/dd/yyyy hh:mm') as fmt_remedy_start_dt
,product.code_desc as product_disp
,isnull_char(date_format(tremedy.remedy_end_dt,'%b-%Y'),'TBD') as BuildMonth
from tsr 
left join tremedy on tsr.sr_no = tremedy.remedy_no
join tdivision d on tsr.division_id = d.division_id
left join tcontact on tremedy.requester_uid = tcontact.contact_id
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
