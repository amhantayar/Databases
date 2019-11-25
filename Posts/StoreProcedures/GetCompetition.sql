DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `GetCompetition`()
BEGIN
select UserGUID,PostID,QuestionID from Competition ;
END$$
DELIMITER ;
