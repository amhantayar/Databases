DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `GetRandomQuestions`()
BEGIN
SELECT QuestionID,PostID FROM Competition where QuestionID  is not null
ORDER BY RAND()
LIMIT 1;
END$$
DELIMITER ;
