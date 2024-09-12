create or replace view vsr_child_list as
select  'ServiceRequestChild_list' as target,
tsr_child.sr_child_id as sr_child_id,
concat(tsr_child.product_cd, '-',tsr_child.build_no) as ref_nm,
concat('<A href=Router?Target=Build&Action=Show&Relation=this&RowKey=', tbuild.build_id, '>Link to BT</a>') as  bt_link,
concat(tbuild.driver_cd, '-',tbuild.driver_no) as driver_desc,
`status`.`code_desc` AS `status_desc`,
`maintenance`.`code_desc` as `maint_desc`,
(case `isnull_char`(`tbuild`.`owner_uid`,9999) when 9999 then `tbuild`.`owner_nm` else concat(`u`.`last_name`,_latin1', ',`u`.`first_name`) end) AS `owner_name`,
tsr_child.build_no as build_no,
tsr.sr_no as sr_no,
tsr.title_nm as title_nm,
tsr_child.parent_sr_id,
tsr.division_id as division_id
from tsr_child
left join tsr on tsr_child.parent_sr_id = tsr.sr_id
left join tbuild on tsr_child.product_cd = tbuild.product_cd and tsr_child.build_no = tbuild.build_no
left join `tcodes` `status` on `tbuild`.`status_cd` = `status`.`code_value` and `status`.`code_type_id` = 122
left join `tcodes` `product` on `tbuild`.`product_cd` = `product`.`code_value`  and  `product`.`code_type_id` = 121
left join `tcodes` `maintenance` on `tbuild`.`maintenance_type_cd` = `maintenance`.`code_value`  and  `maintenance`.`code_type_id` = 158
left join `tuser` `u` on `tbuild`.`owner_uid` = `u`.`user_id`
join tdivision on tsr.division_id = tdivision.division_id  ;