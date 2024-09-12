CREATE VIEW vproject_task_excel
AS SELECT     
tproject_plan_task.outline_nm AS Outline,
tproject_plan_task.level_no as Level_No,
tproject_plan_task.title_nm as Title, 
isnull_int(tproject_plan_task.complete_pct_no , 0) as PercentDone,
isnull_char(FormatDateTime(tproject_plan_task.start_date, 'mm/dd/yy'), ' ') AS Start_Date
,isnull_char(FormatDateTime(tproject_plan_task.end_date, 'mm/dd/yy'), ' ') AS End_Date
,tproject_plan_task.project_plan_id	
FROM tproject_plan_task;