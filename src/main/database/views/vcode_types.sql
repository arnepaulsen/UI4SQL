CREATE OR REPLACE VIEW vcode_types as
SELECT  tcode_types.* ,
concat(a.first_name, '  ', a.last_name) as added_by ,
concat(u.first_name, '  ', u.last_name) as updated_by 
from tcode_types 
left join tuser as a on tcode_types.added_uid = a.user_id 
left join tuser as u on tcode_types.updated_uid = u.user_id ;