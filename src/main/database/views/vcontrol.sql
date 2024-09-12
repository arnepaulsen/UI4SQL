CREATE OR REPLACE VIEW vcontrol
AS
SELECT      tcontrol.*, 
tapplications.application_name AS Expr1, 
concat(a.first_name, '  ', a.last_name) AS added_by, 
concat(u.first_name, '  ', u.last_name) AS updated_by, 
concat(r.first_name, '  ', r.last_name) AS reviewed_by, 
concat(s.first_name, '  ', s.last_name) AS submitted_by, 
e.title_nm AS exposure_nm, 
e.exposure_amt AS exposure_amt, 
e.probability_pct AS probability_pct, 
e.exposure_amt * e.probability_pct / 100 AS expectedlossamt,
round(e.exposure_amt * e.probability_pct *  effective_pct / 10000,3) AS effective_amt
FROM         tcontrol
INNER JOIN tapplications ON tcontrol.application_id = tapplications.application_id 
LEFT OUTER JOIN texposure e ON tcontrol.exposure_id = e.exposure_id 
LEFT OUTER JOIN tuser a ON tcontrol.added_uid = a.user_id 
LEFT OUTER JOIN tuser u ON tcontrol.updated_uid = u.user_id 
LEFT OUTER JOIN  tuser r ON tcontrol.reviewed_uid = r.user_id 
LEFT OUTER JOIN tuser s ON tcontrol.submitted_uid = s.user_id