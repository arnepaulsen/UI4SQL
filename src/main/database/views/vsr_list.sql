-- 9/29 Use title_nm for remedy-summary
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
left join tcontact on tsr.requester_uid = tcontact.contact_id
left join tuser pm2 on tsr.pm2_uid = pm2.user_id
left join tcodes stat on tsr.sr_status_cd = stat.code_value and stat.code_type_id  = 168
left join tcodes team on tsr.team_cd = team.code_value and team.code_type_id = 167
left join tcodes product on tsr.product_cd = product.code_value and product.code_type_id = 121
left join tcodes funded on tsr.funding_type_cd = funded.code_value and funded.code_type_id  = 169
left join tcodes notify on tsr.notify_cd = notify.code_value and notify.code_type_id  = 3
left join tcodes rlse on tsr.release_cd = rlse.code_value and rlse.code_type_id  = 170
WHERE tsr.sr_id > 0;
