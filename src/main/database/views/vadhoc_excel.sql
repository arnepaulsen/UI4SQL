CREATE OR REPLACE  VIEW `vadhoc_excel`
AS SELECT    tadhoc.ra_no AS AuthCode,
	isnull_char(product.code_desc, '')  as PRODUCT_desc,
	isnull_char(stat.code_desc, '')  as STATUS_desc,
	tadhoc.file_nm as FileName,
	isnull_char(tadhoc.description_blob ,  '') AS Description,
	concat(tcontact.last_name  , ', ' , tcontact.first_name, '') AS theOwner,
	CASE tadhoc.outage_cd 	WHEN 'Y' THEN 'Yes' ELSE 'No' END as Outage,
	CASE tadhoc.configurable_cd WHEN 'Y' THEN 'Yes' ELSE 'No' END as Configure,
	isnull_char(FormatDateTime(tadhoc.wits_date, 'mm/dd/yy'), ' ') AS WITS2,
    isnull_char(FormatDateTime(tadhoc.wit3_date, 'mm/dd/yy'), ' ') AS WITS3,
    isnull_char(FormatDateTime(tadhoc.psup_date, 'mm/dd/yy'), ' ') AS PSUP,
    isnull_char(FormatDateTime(tadhoc.stgn_date, 'mm/dd/yy'), ' ') AS STGN,
    isnull_char(FormatDateTime(tadhoc.rip_cab_date, 'mm/dd/yy'), ' ') AS RIPCAB,
    isnull_char(FormatDateTime(tadhoc.ncf_cab_date, 'mm/dd/yy'), ' ') AS NCFCAB ,
	isnull_char(FormatDateTime(tadhoc.install_date, 'mm/dd/yy'), ' ') AS Install,
	isnull_char(tadhoc.release_comments_blob, '') AS Comments ,
	isnull_char(tadhoc.region_cd, '') AS REGION_CD,
	isnull_char(tadhoc.status_cd, '') AS STATUS_CD,
	isnull_char(tadhoc.product_cd, '') AS PRODUCT_CD,
	isnull_char(tadhoc.assigned_uid, '0') AS OWNER_ID,
	isnull_char(tadhoc.received_date, '') as RECEIVED_DATE
	FROM  tadhoc
	LEFT OUTER JOIN  tcontact on  tadhoc.assigned_uid = tcontact.contact_id
	LEFT OUTER JOIN tcodes product on tadhoc.product_cd = product.code_value and product.code_type_id = 141
	LEFT OUTER join tcodes stat on tadhoc.status_cd = stat.code_value and stat.code_type_id  = 109