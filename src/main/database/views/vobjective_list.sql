create or replace view vobjective_list as
select  _utf8'Objective' as target,
objective_id,
tobjective.reference_nm,
tobjective.title_nm,
measure.code_desc as measure_type,
status.code_desc as status_status,
project_id,
37 as user_id
from tobjective 
LEFT OUTER JOIN tcodes measure ON tobjective.measure_cd = measure.code_value AND measure.code_type_id = 13
LEFT OUTER JOIN tcodes status ON tobjective.status_cd = status.code_value AND status.code_type_id = 5
WHERE 1=1  and tobjective.objective_id > 0 ;
;
