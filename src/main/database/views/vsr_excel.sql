-- Service Request Excel Export, 
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
, tsr.title_nm as theTitle
, tsr.description_blob as desc_blob
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
WHERE sr_id > 0;
