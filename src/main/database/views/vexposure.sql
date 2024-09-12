CREATE OR REPLACE VIEW vexposure
AS SELECT     texposure.*,
probability_pct * exposure_amt / 100 as expected_loss,
tapplications.application_name AS Expr1,
concat(a.first_name, '  ', a.last_name) AS added_by,
concat(u.first_name, '  ', u.last_name) AS updated_by,
concat(r.first_name, '  ', r.last_name) AS reviewed_by,
concat(s.first_name, '  ', s.last_name) AS submitted_by
FROM      texposure
INNER JOIN  tapplications ON texposure.application_id = tapplications.application_id
LEFT OUTER JOIN  tuser a ON texposure.added_uid = a.user_id
LEFT OUTER JOIN  tuser u ON texposure.updated_uid = u.user_id
LEFT OUTER JOIN  tuser r ON texposure.reviewed_uid = r.user_id
LEFT OUTER JOIN  tuser s ON texposure.submitted_uid = s.user_id;
