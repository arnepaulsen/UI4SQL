CREATE OR REPLACE VIEW vbuildstat_list
AS select  'BuildStat' as target, 
build_stat_id,
year_no,
typ.code_desc2 as type_desc,
suite.code_desc as suite_desc,
hd_jan_no,
hd_feb_no,
hd_mar_no,
hd_apr_no,
hd_may_no,
hd_jun_no,
hd_jul_no,
hd_aug_no,
hd_sep_no,
hd_oct_no,
hd_nov_no,
hd_dec_no ,
hd_jan_no + hd_feb_no + hd_mar_no + hd_apr_no + hd_may_no + hd_jun_no + hd_jul_no + hd_aug_no + hd_sep_no + hd_oct_no + hd_nov_no + hd_dec_no as theTotal,
suite_cd,
tbuild_stat.division_id
from tbuild_stat 
join tdivision on tbuild_stat.division_id = tdivision.division_id  and tdivision.division_id = 1
left join tcodes typ on tbuild_stat.trigger_cd = typ.code_value and typ.code_type_id  = 117   
left join tcodes suite on tbuild_stat.suite_cd = suite.code_value and suite.code_type_id  = 155  