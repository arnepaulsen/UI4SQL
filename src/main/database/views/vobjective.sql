CREATE OR REPLACE VIEW vobjective
AS SELECT tobjective.*, 
'BRW' as role_cd , 
concat(a.first_name, ' ' , a.last_name) as added_by ,
concat(u.first_name, ' ' , u.last_name) as updated_by ,
p.project_name 	
from tobjective 
left join tuser as a  on tobjective.added_uid = a.user_id 
left join tuser as u on tobjective.updated_uid = u.user_id  
left join tproject as p on tobjective.project_id = p.project_id;
