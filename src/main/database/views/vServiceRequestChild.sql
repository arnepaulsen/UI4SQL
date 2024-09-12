create or replace view vsr_child as 
select  tsr_child.*,
tsr.sr_no as sr_no,
tsr.title_nm as title_nm,
tsr.division_id as division_id,
concat(`a`.`first_name`,_latin1' ',`a`.`last_name`) AS `added_by`,
concat(`u`.`first_name`,_latin1' ',`u`.`last_name`) AS `updated_by` ,
'BRW' AS `role_cd`,
tbuild.driver_cd as driver_cd,
tbuild.driver_no as driver_no,
tbuild.build_id as build_id
from tsr_child
left join tsr on tsr_child.parent_sr_id = tsr.sr_id
left join tbuild on tsr_child.product_cd = tbuild.product_cd and tsr_child.build_no = tbuild.build_no 
join tdivision on tsr.division_id = tdivision.division_id  
left join tuser `a` on tsr_child.added_uid = `a`.`user_id`
left join tuser u on tsr_child.updated_uid  = `u`.`user_id`;