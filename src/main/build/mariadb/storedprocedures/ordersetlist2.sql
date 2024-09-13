DELIMITER $$
CREATE FUNCTION `ordersetlist2`(srno int) RETURNS varchar(4000) CHARSET latin1
BEGIN
   /*
    RETURN A SINGLE VALUE OF ALL THE MASTER_ORDER_SET (korderset.title) for a given SR
      SR TABLE IS LINKED TO korder_set_link
          which links to the title in korder_set
          from tip_tracker (sr_no)
  */
  DECLARE title varchar(1000);
  DECLARE answer varchar(4000) default '';
  DECLARE no_more_rows BOOLEAN;
  DECLARE loop_cntr INT DEFAULT 0;
  DECLARE num_rows INT DEFAULT 0;
  DECLARE me CURSOR for
          select CONCAT(CAST(order_set_no as char), ' - ', korder_set.title_nm, char(0x0a))
          from tip_tracker
          join korder_set_link on tip_tracker.tracker_id = korder_set_link.request_id
          join korder_set on korder_set_link.order_set_id = korder_set.order_set_id
          where tip_tracker.sr_no = srno  ;
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
  
