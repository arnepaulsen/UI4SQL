CREATE OR REPLACE
VIEW `vsbar_excel` AS select
isnull_char(reference_nm,'') as reference_nm
,isnull_char(title_nm,'') as title_nm
,FormatDateTime(id_date,'mm/dd/yy') as id_date
,priority.code_desc as Priority_Desc
,priority.code_desc as Priority_Desc2
,stat.code_desc as statDesc
,'--' as bucketDesc
,isnull_char(`subcd`.`code_desc`,'') as subcd_desc
,combined_cat_tx as CombinedCat
,isnull_char(desc_blob,'') AS `Requeswt_X`
,isnull_char(discussion_blob, '') as DiscussionX
,isnull_char(proposed_solution_blob,'') AS `Solution_X`
,FormatDateTime(id_date,'mm/dd/yy') as received_date
,isnull_char(owner_nm,'') AS `owner_X`
,isnull_char(assigned_nm,'') AS `assigned_X`
,isnull_char(progress_blob,'') AS `Progress_X`
,isnull_char(mitigated_steps_blob,'') AS `Mitiated_steps_X`
,FormatDateTime(install_date,'mm/dd/yy') as install_date
,concat(tuser.last_name, ',', tuser.first_name) as follow_up_contact
,isnull_char(pm_nm,'') AS `Pm_X`
,FormatDateTime(workplan_recv_date,'mm/dd/yy') AS workplan_recv_date
,FormatDateTime(workplan_present_date,'mm/dd/yy') AS workplan_present_date
,FormatDateTime(recommend_recv_date,'mm/dd/yy') AS recommend_recv_date
,FormatDateTime(recommend_present_date,'mm/dd/yy') as recommend_present_date
,FormatDateTime(communication_date,'mm/dd/yy') as communication_date
,FormatDateTime(implementation_date,'mm/dd/yy') as Implement_date
,isnull_char(notes_blob, '') as comments_desc
,isnull_char(facility_action_blob, '') as facility_action
,isnull_char(resolution_blob, '')  as resolution_desc
,status_cd as status_cd
,priority_cd as priority_cd
,approve_cd
,sub_cd
,follow_up_uid
from `tsbar`
left join `tcodes` on `tsbar`.`type_cd` = `tcodes`.`code_value` and `tcodes`.`code_type_id` = 2
left join `tcodes` stat on `tsbar`.`status_cd` = `stat`.`code_value` and `stat`.`code_type_id` = 163
left join `tcodes` priority on `tsbar`.`priority_cd` = `priority`.`code_value` and `priority`.`code_type_id` = 164
left join `tcodes` subcd on `tsbar`.`sub_cd` = `subcd`.`code_value` and `subcd`.`code_type_id` = 157 and `subcd`.`code_desc2` = 'SBAR'
left join tuser on tsbar.follow_up_uid = tuser.user_id;


