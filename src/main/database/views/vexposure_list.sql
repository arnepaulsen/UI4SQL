CREATE OR REPLACE VIEW vexposure_list
AS SELECT     
'Exposure' AS target, 
texposure.exposure_id, 
texposure.reference_nm,
texposure.title_nm, 
rtype.code_desc AS risk_type, 
texposure.exposure_amt, texposure.probability_pct, 
texposure.exposure_amt * texposure.probability_pct / 100 AS expected_loss, 
stat.code_desc AS status_desc,
texposure.application_id as application_id
FROM         texposure 
INNER JOIN  tapplications ON texposure.application_id = tapplications.application_id 
LEFT OUTER JOIN tcodes stat ON texposure.state_cd = stat.code_value AND stat.code_type_id = 5 
LEFT OUTER JOIN tcodes rtype ON texposure.type_cd = rtype.code_value AND rtype.code_type_id = 85;
