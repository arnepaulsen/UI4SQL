CREATE OR REPLACE VIEW `vpatient_excel` AS SELECT
isnull_char(FormatDateTime(tpatient.admitted_date, 'mm/dd/yyyy'), ' ') AS admitted_date,
tpatient.location_tx,
tcodes.code_desc as theStatus,
tpatient.mrn_tx,
tpatient.patient_nm,
tpatient.har_tx,
tpatient.sr_no,
tpatient.need_tx,
admit_tm_tx,
concat(tuser.last_name, ' ,', tuser.first_name) as Requestor_nm,
tpatient.admit_person_tx,
isnull_char(FormatDateTime(tpatient.backout_date, 'mm/dd/yyyy'), ' ') AS backout_date,
tpatient.backout_verified_tx,
requestor_uid,
status_cd
from tpatient
left join tcodes on tpatient.status_cd = tcodes.code_value and tcodes.code_type_id = 58
join tuser on tpatient.requestor_uid = tuser.user_id