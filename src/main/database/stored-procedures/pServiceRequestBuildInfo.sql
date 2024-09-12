/*
    Returns a single column for one-many Build Tracker / RFC info for a given tServiceRequest
*/

DROP FUNCTION pServiceRequestBuildInfo$$

delimiter $$
CREATE FUNCTION `pServiceRequestBuildInfo`(srno int) RETURNS varchar(4000) CHARSET latin1 
BEGIN  
  DECLARE title varchar(1000);
  DECLARE answer varchar(4000) default '' ;
  DECLARE no_more_rows BOOLEAN ;
  DECLARE loop_cntr INT DEFAULT 0;
  DECLARE num_rows INT DEFAULT 0;
  DECLARE me CURSOR for 
          select concat(cast(rfcNo as char), ' ', cast(buildNo as char), ' ', fcabStatus, ' ', buildOwner, char(0x0a))  as Column1 from vServiceRequestBuildInfo where sr_no = srno ;
    DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = TRUE;
  OPEN me;
  SELECT FOUND_ROWS() INTO num_rows;
  the_loop: LOOP
  
          FETCH me into   title;
          IF no_more_rows THEN
                  CLOSE me ;
                  LEAVE the_loop;
           END IF;
           SET loop_cntr = loop_cntr + 1;
           SET answer = concat(answer,title);
    END LOOP the_loop;
    RETURN answer;
  END
  $$  
  