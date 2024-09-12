CREATE or replace VIEW vuser_list
AS
select  'User' as target, 
user_id,handle,
last_name,
first_name,
utype.code_desc as utype,
suite.code_desc as suiteNm,
tuser.active_flag,
tuser.executive_flag,
tuser.administrator_flag,
tuser.phone_tx,
tuser.type_cd,
tuser.division_id,
tuser.user_suite_cd
 from tuser
 join tdivision on tuser.division_id = tdivision.division_id  
left join tcodes utype on tuser.type_cd = utype.code_value and utype.code_type_id = 111 
left join tcodes suite on tuser.user_suite_cd = suite.code_value and suite.code_type_id = 95