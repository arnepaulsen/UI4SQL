DELIMITER $$
CREATE FUNCTION `isdate`(tp date) RETURNS int(11)
BEGIN
if length(date(tp)) is not null then
return true;
else
return false;
end if;
RETURN tp;
END
$$

