CREATE OR REPLACE VIEW `vbsnsqualform_list` AS 
select _utf8'BsnsQualForm' AS `target`
,`tbqf`.`bqf_id` AS `bqf_id`,`tbqf`.`rfc_no` AS `rfc_no`
,`tbqf`.`title_nm` AS `title_nm`
,`stat`.`code_desc` AS `Stat`
,`prod`.`code_desc` AS `Product`,concat(`requestor`.`last_name`,_latin1',',`requestor`.`first_name`) AS `theRequestor`
,`tbqf`.`natl_ac_nm` AS `natl_ac_nm`
,`tbqf`.`product_cd` AS `product_cd`
,`tbqf`.`status_cd` AS `status_cd`
,`tbqf`.`requestor_uid` AS `requestor_uid` 
, tbqf.division_id
from ((((`tbqf` join `tdivision` on(((`tbqf`.`division_id` = `tdivision`.`division_id`) and (`tdivision`.`division_id` = 1)))) 
left join `tcodes` `prod` on(((`tbqf`.`product_cd` = `prod`.`code_value`) and (`prod`.`code_type_id` = 127)))) 
left join `tcodes` `stat` on(((`tbqf`.`status_cd` = `stat`.`code_value`) and (`stat`.`code_type_id` = 5)))) 
left join `tcontact` `requestor` on((`tbqf`.`requestor_uid` = `requestor`.`contact_id`))) 
where (`tbqf`.`bqf_id` > 0)