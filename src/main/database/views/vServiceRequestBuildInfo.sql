-- this view used in Stored Procedure vsr_excel to find multiple build-tracker and rfc records for a given tsr.
-- tsr has one-many relation to tsr_child (which for now represent only BT info)
-- 11/15 show suite_revew_cd instead of fcab_review_cd

create or replace view vServiceRequestBuildInfo
as select tsr.sr_id, tsr.sr_no, tbuild.rfc_prod_no as rfcNo,
concat(tbuild.product_cd, '-', cast(tbuild.build_no as char)) as buildNo, 
isnull_char(tcodes.code_desc, '-Status?-') as fcabStatus,
concat(tuser.last_name, ', ', tuser.first_name) as buildOwner
from tsr
left join tsr_child on tsr.sr_id = tsr_child.parent_sr_id 
join tbuild on tsr_child.product_cd = tbuild.product_cd and tsr_child.build_no = tbuild.build_no
join trfc on tbuild.rfc_prod_no = trfc.rfc_no
left join tuser on tbuild.owner_uid = tuser.user_id
left join tcodes on trfc.suite_review_cd = tcodes.code_value and tcodes.code_type_id = 162;
