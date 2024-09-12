CREATE or REPLACE VIEW vissue_excel
AS
SELECT     reference_nm, 
s.code_desc as status_desc,
p.code_desc as priority_desc,
c.code_desc as subproj_desc,
title_nm, 
formatDateTime(id_date, 'mm/dd/yy') as Id_Date,
formatdatetime(install_date, 'mm/dd/yy') as installDate,
problem_no, 
defect_no, 
requestor_nm, 
concat(u.last_name, ',', u.first_name) as AssignedTo,
desc_blob, 
impact_blob,
tissue.status_cd, 
assigned_uid, 
tissue.type_cd, 
sub_cd,
tissue.project_id,
tissue.priority_cd
FROM  tissue
join tproject on tissue.project_id = tproject.project_id
left join tuser u on tissue.assigned_uid = u.user_id  
left join tcodes s on tissue.status_cd = s.code_value and s.code_type_id  = 45 
left join tcodes p on tissue.priority_cd = p.code_value and p.code_type_id  = 7 
left join tcodes c on c.code_type_id  = 157  and tproject.chng_req_nm = c.code_desc2 and tissue.sub_cd = c.code_value;
