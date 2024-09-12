create or replace view vra_excel as
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
WHERE 1=1  and tra.ra_id > 0 ;