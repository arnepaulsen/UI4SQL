CREATE OR REPLACE view vcode_types_list as 
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
group by tcode_types.code_type_id , tcode_types.title_nm, s.code_desc, tcode_types.code_type;