-- 7/23/10 AP Remove the <a> </a> around the incident_no, it was casted incorrectly, and not necessary because ROWNUM has the link

CREATE OR REPLACE VIEW vincident_list
AS select  'Incident' as target, incident_id,
'ROWNUM' as rownum,
tincident.incident_no as incident_no,
tincident.next_step_tx,
tincident.title_nm,rptgroup.code_desc as reportgroup,
FormatDateTime(incident_date,'MM/dd/yy') as start_date,
suite.code_desc as suite_desc,
stat.code_desc as thtestatus,color.code_desc2 ,
ncal_stat_cd,
grp_cd,
suite_cd,
incident_date,
tincident.division_id
from tincident 
join tdivision on tincident.division_id = tdivision.division_id  and tdivision.division_id = 1
left join tapplications appl on tincident.application_id = appl.application_id 
left join tcodes suite on tincident.suite_cd = suite.code_value and suite.code_type_id  = 136 
left join tcodes stat on tincident.ncal_stat_cd = stat.code_value and stat.code_type_id  = 58 
left join tcodes rptgroup on tincident.grp_cd = rptgroup.code_value and rptgroup.code_type_id  = 146 
left join tcodes color on tincident.color_cd = color.code_value and color.code_type_id  = 71
WHERE 1=1  and tincident.incident_id > 0 ;
