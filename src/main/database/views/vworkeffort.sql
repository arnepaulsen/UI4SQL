CREATE OR REPLACE VIEW vworkeffort
AS SELECT     work_id AS id, 
title_nm AS title, 
owner_tx AS business_owner, 
epic_contact_tx AS epic_ts, 
desc_blob AS description, 
history_blob AS disposition, 
issues_blob AS issues,
notes_tx AS notes, 
status_tx AS status_comments, 
status_cd AS status, 
suite_cd AS suite, 
review_cd AS epic_review_flag,
development_cd AS development_flag, 
patient_safety_cd, 
priority_cd AS priority, 
interface_id, 
incident_no, ra_no AS epic_ra,
rfc_no AS rfc, 
defect_no, 
bridges_uid AS bridges_ac_id,
target_start_dt,
target_close_dt, scope_blob AS scope_desc,
impact_blob AS impact_desc,
owner_uid,
tuser.last_name as bridges_lname
FROM   twork
join tuser on twork.owner_uid  = tuser.user_id;