
DELIMITER $$

CREATE TRIGGER unset_super_followee
     AFTER DELETE ON follows FOR EACH ROW
     BEGIN
          DECLARE counter integer;
          SELECT COUNT(*) INTO counter FROM follows GROUP BY followee_id HAVING followee_id=OLD.followee_id;
          IF counter <= 3
          THEN
                UPDATE users SET username=LOWER(username) where id=OLD.followee_id;
          END IF;
     END;
$$

DELIMITER ;