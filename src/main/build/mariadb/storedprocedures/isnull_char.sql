DELIMITER $$
DROP FUNCTION IF EXISTS `isnull_char`;
CREATE FUNCTION `isnull_char`(str1 varchar(16000), str2 varchar(1028)) RETURNS varchar(16000) CHARSET latin1
BEGIN
  if isnull(str1) then return str2;
  else return str1;
  end if  ;
END
$$

