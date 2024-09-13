DELIMITER $$

CREATE DEFINER=`ui4sql`@`%` FUNCTION `concat3`(str1 VARCHAR(256), str2 VARCHAR(256), str3 VARCHAR(256)) RETURNS varchar(1024) CHARSET latin1
BEGIN

  DECLARE answer VARCHAR(1024);

  SET answer = 'fix the concat3 ';
  
  RETURN answer;
  

END
$$

