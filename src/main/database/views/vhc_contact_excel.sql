CREATE or REPLACE VIEW vhc_contact_excel AS 
select  tdomain.code_desc as theDomain,
'------' as NUID,
IsNull_Char(first_nm,'') as first_nm,
IsNull_Char(mi_nm, '') as mi_nm,
IsNull_Char(last_nm, '') as last_nm,
IsNull_Char(suffix.code_desc,'') as suffix_nm,
isNull_char(reg.code_desc, '')  as Reg_Domain,
CASE chair_flag  WHEN 'y' THEN 'Yes' ELSE ' ' END AS Reg_Chair,
CASE liaison_flag  WHEN 'y' THEN 'Yes' ELSE ' ' END AS Peer_Liasion,
CASE meeting_coord_flag  WHEN 'y' THEN 'Yes' ELSE ' ' END AS Meeting_Coord,
CASE primary_rsrc_flag  WHEN 'y' THEN 'Yes' ELSE ' ' END AS Primary_Resource,
CASE local_domain_lead_flag  WHEN 'y' THEN 'Yes' ELSE ' ' END AS Local_Dom_Leader,
isNull_char(title_nm, '')  as Title, 
isNull_char(tieline_tx, '')  as TieLine,
isNull_char(phone_tx, '') as Phone,
isNull_char(address_tx, '')  as Address,
isNull_char(facility_cd , '') as Facility,
isNull_char(subdom.code_desc, '')  as Sub_Domain,
isNull_char(notes_tx, '')  as Notes,
isNull_char(lotus_dist_tx, '')  as Notes_Distr,
isNull_char(suite.code_desc, '')  as Suite,
isNull_char(FormatDateTime(facl_live_date,'mm/dd/yyyy'), '') as fac_live_Date
from thc_contact
left join tcodes tdomain on thc_contact.hc_domain_cd = tdomain.code_value and tdomain.code_type_id  = 142
left join tcodes subdom on thc_contact.hc_sub_domain_cd  = subdom.code_value and subdom.code_type_id  = 145
left join tcodes reg  on thc_contact.reg_domain_role_cd  = reg.code_value and reg.code_type_id  = 144
left join tcodes suite  on thc_contact.suit_cd  = suite.code_value and suite.code_type_id  = 149
left join tcodes suffix  on thc_contact.suffix_nm  = suffix.code_value and suffix.code_type_id  = 153
WHERE 1=1  and hc_contact_id  > 0 ;
