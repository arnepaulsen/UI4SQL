CREATE OR REPLACE  VIEW `vexcelmetric` AS
select 
concat(`i`.`reference_nm`,_latin1' ',`i`.`title_nm`) AS `reference_name`
,`FormatDateTime`(`tmessage_stat`.`activity_date`,_utf8'mm/dd/yy') AS `activity_date`
,`tmessage_stat`.`message_tx` AS `message_tx`
,`tmessage_stat`.`instance_cd` AS `instance_cd`
,`c`.`code_desc` AS `direction_tx`
,`tmessage_stat`.`count_no` AS `count_no`,`i`
.`reference_nm` AS `reference_nm`
,'reference_nm' as Interface_no
,`FormatDateTime`(`tmessage_stat`.`activity_date`,_utf8'mm/dd/yy') AS `Date`
from ((`tmessage_stat`
left join `tinterface` `i` on((`tmessage_stat`.`interface_id` = `i`.`interface_id`)))
left join `tcodes` `c` on(((`i`.`direction_cd` = `c`.`code_value`) and (`c`.`code_type_id` = 21))));

