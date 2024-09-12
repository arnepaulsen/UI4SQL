CREATE OR REPLACE VIEW vcontrol_list
AS SELECT     'Control' AS target, 
tcontrol.control_id, 
tcontrol.reference_nm,
tcontrol.title_nm AS control_nm, 
e.title_nm AS exposure_nm, 
e.exposure_amt, 
tcontrol.effective_pct, e.exposure_amt * tcontrol.effective_pct / 100 AS control_value,
tcontrol.application_id,
tcontrol.exposure_id
FROM   tcontrol 
INNER JOIN   tapplications ON tcontrol.application_id = tapplications.application_id 
LEFT OUTER JOIN tcodes ON tcontrol.state_cd = tcodes.code_value AND tcodes.code_type_id = 5 
LEFT OUTER JOIN texposure e ON tcontrol.exposure_id = e.exposure_id
