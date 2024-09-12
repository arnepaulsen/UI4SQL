CREATE OR REPLACE 
VIEW `vcodes_show` AS 
SELECT tcodes.* , 
tcode_types.title_nm as code_name , 
tcode_types.code_type,
concat(a.first_name, '  ', a.last_name) as added_by  , 
concat(u.first_name, '  ', u.last_name) as updated_by   
from tcodes 
join tcode_types on tcodes.code_type_id = tcode_types.code_type_id 
left join tuser as a  on tcodes.added_uid = a.user_id 
left join tuser as u on tcodes.updated_uid = u.user_id;
