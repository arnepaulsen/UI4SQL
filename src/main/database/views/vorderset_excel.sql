CREATE OR REPLACE VIEW `vorderset_excel` AS SELECT
 os.reference_nm as OrderSetNo
	,os.title_nm as OrderSetName
	,os.version_no as VersNo
	,isnull_char(os.suite_cd,'')as SUITE
	,isnull_char(FormatDateTime(release_date, 'mm/dd/yy'), ' ') AS PharRv
	,isnull_char(os.limited_rlse_tx,'') as LimitedRelease
	,isnull_char(os.prod_flag,'') as ProdFlag
	,isnull_char(os.protocols_tx,'') as Protocols
	,isnull_char(os.core_measures_tx,'') as CoreMeasures
	,isnull_char(dom1.code_desc,'') as Dom1
	,isnull_char(dom2.code_desc,'') as Dom2
	,isnull_char(dom3.code_desc,'') as Dom3
	,isnull_char(dom4.code_desc,'') as Dom4
	,isnull_char(dom5.code_desc,'') as Dom5
	,isnull_char(dom6.code_desc,'') as Dom6
	,isnull_char(dom7.code_desc,'') as Dom7
	,isnull_char(dom8.code_desc,'') as Dom8
	,order_set_no   from korder_set os
	left join tcodes dom1 on os.os_domain_1_cd = dom1.code_value and dom1.code_type_id = 142
	left join tcodes dom2 on os.os_domain_2_cd = dom2.code_value and dom2.code_type_id = 142
	left join tcodes dom3 on os.os_domain_3_cd = dom3.code_value and dom3.code_type_id = 142
	left join tcodes dom4 on os.os_domain_4_cd = dom4.code_value and dom4.code_type_id = 142
	left join tcodes dom5 on os.os_domain_5_cd = dom5.code_value and dom5.code_type_id = 142
	left join tcodes dom6 on os.os_domain_6_cd = dom6.code_value and dom6.code_type_id = 142
	left join tcodes dom7 on os.os_domain_7_cd = dom7.code_value and dom7.code_type_id = 142
	left join tcodes dom8 on os.os_domain_8_cd = dom8.code_value and dom8.code_type_id = 142