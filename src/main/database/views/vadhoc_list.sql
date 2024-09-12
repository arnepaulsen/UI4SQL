CREATE OR REPLACE VIEW `vadhoc_list` 
AS select _utf8'Adhoc' AS `target`
,`tadhoc`.`adhoc_id` AS `adhoc_id`
,_utf8'ROWNUM' AS `theRow`
,concat(_utf8'<A  HREF=# CLASS=listButton onClick=showRow(',`tadhoc`.`adhoc_id`,_utf8')>',`tadhoc`.`ra_no`,_utf8'</A>') AS `adhoc_link`
,`product`.`code_desc` AS `code_desc`
,`tadhoc`.`title_nm` AS `title_nm`
,`tadhoc`.`file_nm` AS `file_nm`
,`s`.`code_desc` AS `fcabstatus`
,status_tx
,concat(`owner`.`last_name`,_latin1',',`owner`.`first_name`) AS `OwnerNm`
,`conf`.`code_desc` AS `configurable_cd`,`outg`.`code_desc` AS `outage_cd`
,`FormatDateTime`(`tadhoc`.`psup_date`,_utf8'mm/dd/yy') AS `psup_disp`
,`FormatDateTime`(`tadhoc`.`wits_date`,_utf8'mm/dd/yy') AS `wits_disp`
,`FormatDateTime`(`tadhoc`.`wit3_date`,_utf8'mm/dd/yy') AS `wit3_disp`
,`FormatDateTime`(`tadhoc`.`stgn_date`,_utf8'mm/dd/yy') AS `stgb_disp`
,`FormatDateTime`(`tadhoc`.`rip_cab_date`,_utf8'mm/dd/yy') AS `rip_disp`
,`FormatDateTime`(`tadhoc`.`ncf_cab_date`,_utf8'mm/dd/yy') AS `ncf_disp`
,`FormatDateTime`(`tadhoc`.`install_date`,_utf8'mm/dd/yy') AS `install_disp`
,`color`.`code_desc2` AS `code_desc2`
,`tadhoc`.`received_date` AS `received_date`
,`tadhoc`.`status_cd` AS `status_cd`
,`tadhoc`.`product_cd` AS `product_cd`
,`tadhoc`.`assigned_uid` AS `assigned_uid`
,`tadhoc`.`ra_no` AS `ra_no`
,`tadhoc`.`division_id` AS `division_id` 
from (((((((((`tadhoc` join `tdivision` on(((`tadhoc`.`division_id` = `tdivision`.`division_id`) 
and (`tdivision`.`division_id` = 1)))) 
left join `tcodes` `reg` on(((`tadhoc`.`region_cd` = `reg`.`code_value`) and (`reg`.`code_type_id` = 108)))) 
left join `tcodes` `s` on(((`tadhoc`.`status_cd` = `s`.`code_value`) and (`s`.`code_type_id` = 109)))) 
left join `tcodes` `product` on(((`tadhoc`.`product_cd` = `product`.`code_value`) and (`product`.`code_type_id` = 141)))) 
left join `tapplications` on((`tadhoc`.`application_id` = `tapplications`.`application_id`))) 
left join `tcontact` `owner` on((`tadhoc`.`assigned_uid` = `owner`.`contact_id`))) 
left join `tcodes` `conf` on(((`tadhoc`.`configurable_cd` = `conf`.`code_value`) and (`conf`.`code_type_id` = 140)))) 
left join `tcodes` `outg` on(((`tadhoc`.`outage_cd` = `outg`.`code_value`) and (`outg`.`code_type_id` = 140)))) 
left join `tcodes` `color` on(((`tadhoc`.`color_cd` = `color`.`code_value`) and (`color`.`code_type_id` = 71)))) 
where (`tadhoc`.`adhoc_id` > 0);


