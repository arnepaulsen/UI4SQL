CREATE OR REPLACE VIEW `vip_tracker_excel` AS select
sr_no
,tip_tracker.title_nm as Summary
,stat.code_desc as Status
,isnull_char(remedy_pending_cd,'') as PendingStatus
,concat(owner.last_name, ',', owner.first_name) as Owner
,concat(rqstr.last_name , ',' , rqstr.first_name) as Requestor  
,isnull_char(remedy_grp_tx,'') as RemedyGroup
,isnull_char(FormatDateTime(tip_tracker.remedy_create_dt, 'mm/dd/yy'), ' ') AS DateCreated
,isnull_char(FormatDateTime(tip_tracker.remedy_start_dt, 'mm/dd/yy'), ' ') AS PlannedStart
,isnull_char(FormatDateTime(tip_tracker.remedy_end_dt, 'mm/dd/yy'), ' ') AS PlannedEnd
,isnull_char(FormatDateTime(tip_tracker.remedy_act_end_dt, 'mm/dd/yy'), ' ') AS Production
,ordersetlist(tip_tracker.sr_no) as thelist
,isnull_char(tip_tracker.alt_owner_tx,'') as Owner2
,isnull_char(domain1.code_desc,'')  as domain_1
,isnull_char(domain2.code_desc,'')  as domain_2
,isnull_char(domain3.code_desc,'')  as domain_3
,isnull_char(domain4.code_desc,'')  as domain_4
,isnull_char(domain5.code_desc,'')  as domain_5
,isnull_char(domain6.code_desc,'')  as domain_6
,isnull_char(domain7.code_desc,'')  as domain_7
,isnull_char(domain8.code_desc,'')  as domain_8
,isnull_char(suit.code_desc,'') as SUIT
,CASE revision_cd  WHEN 'n' THEN 'New'  WHEN 'r' THEN 'Revision' WHEN 'p' THEN 'Project' WHEN 't' THEN 'Task' ELSE '' END   AS NewRevise
,isnull_char(FormatDateTime(tip_tracker.tigr_rv_date, 'mm/dd/yy'), ' ') AS TIGR_Rev
,CASE level_cd WHEN 'h' THEN 'High' WHEN 'm' THEN 'Med' WHEN 'l' THEN 'Low' ELSE '' END as Level
,isnull_char(priority.code_desc,'') as Priority
,CASE rv_grp_cd WHEN 'S' then 'SUIT' when 'D' then 'Domain' when 'L' then 'Leadership' else '' end as ApprovalLevel
,isnull_char(FormatDateTime(tip_tracker.reg_med_ctr_apv_date, 'mm/dd/yy'), ' ')  as RegMedCtrDue 
,isnull_char(FormatDateTime(tip_tracker.reg_med_ctr_apv_done_date, 'mm/dd/yy'), ' ') AS RegMedCtrDone
,isnull_char(reg_med_apvr_tx,'') as RegMedCtrApprovers
,isnull_char(FormatDateTime(tip_tracker.dom_md_apv_content_date, 'mm/dd/yy'), ' ')  as DomMdApvContDue
,isnull_char(FormatDateTime(tip_tracker.dom_md_apv_content_done_date, 'mm/dd/yy'), ' ')   AS DomMdApvContDone
,isnull_char(tip_tracker.phy_apvr_1b_tx,'') as DomMdApprovers  
,isnull_char(FormatDateTime(tip_tracker.dom_rn_apv_content_date, 'mm/dd/yy'), ' ')  as DomRnApvContDue
,isnull_char(FormatDateTime(tip_tracker.dom_rn_apv_content_done_date, 'mm/dd/yy'), ' ')   AS DomRnApvContDone
,isnull_char(tip_tracker.nrse_apvr_1a_tx,'') as DomRnApvContAppovers
,isnull_char(FormatDateTime(tip_tracker.suit_apv_date, 'mm/dd/yy'), ' ')  as SuitDue
,isnull_char(FormatDateTime(tip_tracker.suit_apv_done_date, 'mm/dd/yy'), ' ')   AS SuitDone
,isnull_char(tip_tracker.suit_apvr_tx,'') as SuitApprovers  
,isnull_char(FormatDateTime(tip_tracker.dom_md_apv_suit_date, 'mm/dd/yy'), ' ')  as DomMdSuitDue
,isnull_char(FormatDateTime(tip_tracker.dom_md_apv_suit_done_date, 'mm/dd/yy'), ' ')  as DomMdSuitDone
,isnull_char(tip_tracker.dom_md_apv_suit_tx,'') as DomMdSuitApprovers  
,isnull_char(FormatDateTime(tip_tracker.dom_rn_apv_suit_date, 'mm/dd/yy'), ' ')  as DomRnApvSuitDue
,isnull_char(FormatDateTime(tip_tracker.dom_rn_apv_suit_done_date, 'mm/dd/yy'), ' ')   AS DomContApvSuitDone
,isnull_char(tip_tracker.dom_rn_apv_suit_tx,'') as DomRnSuitAppovers
, isnull_char(FormatDateTime(tip_tracker.hcg_meet_date, 'mm/dd/yy'), ' ') AS HCG
,isnull_char(FormatDateTime(tip_tracker.med_ctr_rv_date, 'mm/dd/yy'), ' ')  as MedCtrRvDue
,isnull_char(FormatDateTime(tip_tracker.med_ctr_rv_done_date, 'mm/dd/yy'), ' ')   AS MedCtrRvDone
,isnull_char(FormatDateTime(tip_tracker.collate_rc_date, 'mm/dd/yy'), ' ')  as CollateRcDue
,isnull_char(FormatDateTime(tip_tracker.collate_rc_done_date, 'mm/dd/yy'), ' ')   AS CollateRcDone
,isnull_char(FormatDateTime(tip_tracker.sponsor_due_date, 'mm/dd/yy'), ' ')  as SponsorDue
,isnull_char(FormatDateTime(tip_tracker.sponsor_done_date, 'mm/dd/yy'), ' ')   AS SponsorDone
,isnull_char(FormatDateTime(tip_tracker.screen_shot_date, 'mm/dd/yy'), ' ')  as ScreenShotDue
,isnull_char(FormatDateTime(tip_tracker.screen_shot_done_date, 'mm/dd/yy'), ' ')   AS ScreenShotDone
, tip_tracker.type_cd  as chg_type
,isnull_char(tip_tracker.status_cd,'') as status_cd
,isnull_char(tip_tracker.level_cd, '') as level_cd
,isnull_char(tip_tracker.priority_cd, '') as priority_cd
,isnull_char(tip_tracker.domain_1_cd,'') as domain_cd
,isnull_char(tip_tracker.suite_cd, '') as suite_cd
,isnull_char(domain_1_cd,'')  as domain_1_cd
,isnull_char(domain_2_cd,'')  as domain_2_cd
,isnull_char(domain_3_cd,'')  as domain_3_cd
,isnull_char(domain_4_cd,'')  as domain_4_cd
,isnull_char(domain_5_cd,'')  as domain_5_cd
,isnull_char(domain_6_cd,'')  as domain_6_cd
,isnull_char(domain_7_cd,'')  as domain_7_cd
,isnull_char(domain_8_cd,'')  as domain_8_cd
from tip_tracker
join tdivision on tip_tracker.division_id = tdivision.division_id  and tdivision.division_id = 1
left join tcontact owner on tip_tracker.owner_uid = owner.contact_id
left join tcontact rqstr on tip_tracker.requester_uid = rqstr.contact_id
left join tcodes stat on tip_tracker.status_cd = stat.code_value and stat.code_type_id =  118
left join tcodes domain1 on tip_tracker.domain_1_cd = domain1.code_value and domain1.code_type_id = 142
left join tcodes domain2 on tip_tracker.domain_2_cd = domain2.code_value and domain2.code_type_id = 142
left join tcodes domain3 on tip_tracker.domain_3_cd = domain3.code_value and domain3.code_type_id = 142
left join tcodes domain4 on tip_tracker.domain_4_cd = domain4.code_value and domain4.code_type_id = 142
left join tcodes domain5 on tip_tracker.domain_5_cd = domain5.code_value and domain5.code_type_id = 142
left join tcodes domain6 on tip_tracker.domain_6_cd = domain6.code_value and domain6.code_type_id = 142
left join tcodes domain7 on tip_tracker.domain_7_cd = domain7.code_value and domain7.code_type_id = 142
left join tcodes domain8 on tip_tracker.domain_8_cd = domain8.code_value and domain8.code_type_id = 142
left join tcodes suit  on tip_tracker.suite_cd = suit.code_value and suit.code_type_id = 152
left join tcodes priority  on tip_tracker.priority_cd = priority.code_value and priority.code_type_id = 154
WHERE 1=1  and tip_tracker.tracker_id > 0 