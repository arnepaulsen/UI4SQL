CREATE OR REPLACE VIEW `vpatient_list` AS SELECT
'Patient' as target,
patient_id,
'ROWNUM' as rownum,
isnull_char(FormatDateTime(tpatient.admitted_date, 'mm/dd/yyyy'), ' ') AS admitted_date,
tcodes.code_desc as theStatus,
location_tx,
mrn_tx,
patient_nm,
har_tx,
concat(tuser.last_name, ' ,', tuser.first_name) as Requestor_nm,
tpatient.division_id,
tpatient.status_cd,
requestor_uid
from tpatient
join tdivision on tpatient.division_id = tdivision.division_id
join tuser on tpatient.requestor_uid = tuser.user_id
left join tcodes on tpatient.status_cd = tcodes.code_value and tcodes.code_type_id = 58;