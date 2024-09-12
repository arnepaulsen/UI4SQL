create or replace view vra_list as
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

