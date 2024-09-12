CREATE OR REPLACE VIEW `vcodes_list` as
select 'Codes' as target, 
code_id, 
code_value, 
code_desc2, 
code_desc, 
order_by , 
code_type_id
from tcodes WHERE 1=1;