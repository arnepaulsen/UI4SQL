--3/31/10 added suite_cd
CREATE OR REPLACE vIEW `vorderset_list` AS
select 'OrderSet' AS `target`
,`korder_set`.`order_set_id` AS `order_set_id`
,`korder_set`.`order_set_no` AS `order_set_no`
,`korder_set`.`title_nm` AS `title_nm`
,`domain`.`code_desc` AS `thedomain`
,`suite`.`code_desc` AS `thesuite`
,(case `korder_set`.`prod_flag` when 'Y' then 'Yes'  when 'N' then 'No' when 'R' then 'Ret' else ' ' end) AS `prod_cd`
,`korder_set`.`os_domain_1_cd` AS `os_domain_1_cd`
,`korder_set`.`division_id` AS `division_id`
,`korder_set`.`prod_flag`
,`korder_set`.`suite_cd`
from korder_set
join tdivision on korder_set.division_id = tdivision.division_id
left join `tcodes` `thetype` on korder_set.type_cd = thetype.code_value and thetype.code_type_id = 126
left join `tcodes` `domain` on korder_set.os_domain_1_cd = domain.code_value and domain.code_type_id = 142
left join `tcodes` `suite` on korder_set.suite_cd = suite.code_value and  suite.code_type_id = 152
where `korder_set`.`order_set_id` > 0;