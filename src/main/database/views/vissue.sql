CREATE OR REPLACE VIEW vissue
AS SELECT  tissue.*, 
project_name,   
concat(a.first_name, '  ', a.last_name) as added_by, 
concat(u.first_name, '  ', u.last_name) as updated_by ,
concat(r.first_name, '  ', r.last_name) as reviewed_by ,
concat(s.first_name, '  ', s.last_name) as submitted_by ,
concat(c.first_name, '  ', c.last_name) as closed_by
from tissue 
join tproject on tissue.project_id = tproject.project_id
left join tuser as c on tissue.closed_by_uid = c.user_id  
left join tuser_project on tproject.project_id = tuser_project.project_id 
left join tuser as a  on tissue.added_uid = a.user_id 
left join tuser as u on tissue.updated_uid = u.user_id 
left join tuser as r  on tissue.reviewed_uid = r.user_id  
left join tuser as s  on tissue.submitted_uid = s.user_id 
