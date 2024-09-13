DELIMITER $$
CREATE FUNCTION `isnull_int`(a int, b int) RETURNS int(11)
BEGIN
  if a = null then return b;
   else return a;
   end if ;
END
$$

