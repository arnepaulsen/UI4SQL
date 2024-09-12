create or replace view vuser as
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
left join tcodes secr_level  on tuser.ip_issue_triage_cd = secr_level.code_value and secr_level.code_type_id = 164;