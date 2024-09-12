CREATE OR REPLACE VIEW vhc_contact
AS SELECT thc_contact.*, 
div_name  , 'BRW' as role_cd , 
concat(a.first_name, ' ' , a.last_name) as added_by ,
concat(u.first_name, ' ' , u.last_name) as updated_by ,
FormatDateTime(tfacility.golive_date,'MM/dd/yy') as golive_date
from thc_contact 
left join tdivision on thc_contact.division_id = tdivision.division_id  
left join tfacility  on thc_contact.facility_cd = tfacility.facility_cd  
left join tuser as a  on thc_contact.added_uid = a.user_id 
left join tuser as u on thc_contact.updated_uid = u.user_id;