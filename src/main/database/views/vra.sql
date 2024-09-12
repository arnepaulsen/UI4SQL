create or replace view vra as
select  tra.*, div_name  
, 'BRW' as role_cd 
, concat(a.first_name, ' ' , a.last_name) as added_by
, concat(u.first_name, ' ' , u.last_name) as updated_by 
, rfc1.description_blob  as rfc1_desc_blob
, FormatDateTime(rfc1.remedy_start_dt, 'mm/dd/yyyy') as rfc1_start_dt
, FormatDateTime(rfc1.remedy_end_dt, 'mm/dd/yyyy') as rfc1_end_dt
,concat(owner1.last_name , ',' , owner1.first_name) as rfc1_owner 
,concat(rqstr1.last_name , ',' , rqstr1.first_name) as rfc1_requester
,rem_stat1.code_desc  as rfc1_status 
, rfc2.description_blob  as rfc2_desc_blob
, FormatDateTime(rfc2.remedy_start_dt, 'mm/dd/yyyy') as rfc2_start_dt
, FormatDateTime(rfc2.remedy_end_dt, 'mm/dd/yyyy') as rfc2_end_dt
,concat(owner2.last_name , ',' , owner2.first_name) as rfc2_owner 
,concat(rqstr2.last_name , ',' , rqstr2.first_name) as rfc2_requester
,rem_stat2.code_desc  as rfc2_status
, rfc3.description_blob  as rfc3_desc_blob
, FormatDateTime(rfc3.remedy_start_dt, 'mm/dd/yyyy') as rfc3_start_dt
, FormatDateTime(rfc3.remedy_end_dt, 'mm/dd/yyyy') as rfc3_end_dt
,concat(owner3.last_name , ',' , owner3.first_name) as rfc3_owner 
,concat(rqstr3.last_name , ',' , rqstr3.first_name) as rfc3_requester
,rem_stat3.code_desc  as rfc3_status
,concat('<A href=Router?Target=Rfc&Action=Show&Relation=this&RowKey=' , rfc1.rfc_id , '>Link To</A>') as rfc1_link
,concat('<A href=Router?Target=Rfc&Action=Show&Relation=this&RowKey=' , rfc2.rfc_id , '>Link To</A>') as rfc2_link
,concat('<A href=Router?Target=Rfc&Action=Show&Relation=this&RowKey=' , rfc3.rfc_id , '>Link To</A>') as rfc3_link
,' ' as just_a_blank
from tra
join tdivision on tra.division_id = tdivision.division_id
left join tuser as a  on tra.added_uid = a.user_id 
left join tuser as u on tra.updated_uid = u.user_id   
left join trfc rfc1 on tra.rfc1_no = rfc1.rfc_no
left join tcontact rqstr1 on rfc1.requester_uid = rqstr1.contact_id
left join tcontact owner1 on rfc1.owner_uid = owner1.contact_id
left join tcodes rem_stat1 on rfc1.status_cd = rem_stat1.code_value and rem_stat1.code_type_id = 118
left join trfc rfc2 on tra.rfc2_no = rfc2.rfc_no
left join tcontact rqstr2 on rfc2.requester_uid = rqstr2.contact_id
left join tcontact owner2 on rfc2.owner_uid = owner2.contact_id
left join tcodes rem_stat2 on rfc2.status_cd = rem_stat2.code_value and rem_stat2.code_type_id = 118
left join trfc rfc3 on tra.rfc3_no = rfc3.rfc_no
left join tcontact rqstr3 on rfc3.requester_uid = rqstr3.contact_id
left join tcontact owner3 on rfc3.owner_uid = owner3.contact_id
left join tcodes rem_stat3 on rfc1.status_cd = rem_stat3.code_value and rem_stat3.code_type_id = 118
WHERE tra.ra_id > 0 ;