
CREATE OR REPLACE VIEW vlog_list
AS
select  'Log' as target,
log_id,
concat( tuser.last_name ,', ' , tuser.first_name) as user_name ,
tform.form_nm ,
( case tlog.access_cd when 'R'then 'Read' else '' end) AS Access_type,
FormatDateTime(tlog.added_date, 'mm/dd/yyyy hh:mm') as access_date,
tsbar.reference_nm ,
tsbar.title_nm,
tlog.form_id,
tlog.access_uid,
tlog.division_id
from tlog
left join tsbar on tlog.key_id = tsbar.sbar_id
left join tform on tlog.form_id = tform.form_id
left join tuser on tlog.access_uid = tuser.user_id;

