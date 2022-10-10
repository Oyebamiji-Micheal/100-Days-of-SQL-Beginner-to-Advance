DELIMITER $$

-- validate student score
CREATE TRIGGER invalid_score
	BEFORE INSERT ON results FOR EACH ROW
            BEGIN
		IF NEW.score < 0 OR NEW.score > 100 THEN 
			SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'invalid score';
                        END IF;
            END;

-- add log on insertion of new result
CREATE TRIGGER admin_log_trigger
	AFTER INSERT ON results FOR EACH ROW
            BEGIN
		INSERT INTO admin_log(admin_name, admin_log) 
                        VALUES(NEW.admin_name, 'This is a test. I inserted a new student');
            END
$$
DELIMITER ;