CREATE OR REPLACE VIEW vincident
AS SELECT tincident.*, 
div_name  , 
'BRW' as role_cd , 
concat(a.first_name, ' ' , a.last_name) as added_by ,
concat(u.first_name, ' ' , u.last_name) as updated_by ,
concat(owner.last_name , ',' , owner.first_name) as remedyOwner  ,
concat(rqstr.last_name , ',' , rqstr.first_name) as remedyRequester  	
from tincident 
left join tdivision on tincident.division_id = tdivision.division_id   
left join tcontact rqstr on tincident.requester_uid = rqstr.contact_id   
left join tcontact owner on tincident.owner_uid = owner.contact_id  
left join tuser as a  on tincident.added_uid = a.user_id left
join tuser as u on tincident.updated_uid = u.user_id  