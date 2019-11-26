DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `GetInCorrectAnsCompeHis_ByChallengeId_UserId`(IN pChallengeId varchar(45),IN pUserId varchar(45))
BEGIN
select * from CompetitionHistory where ChallengeID=pChallengeId  and UserGUID=pUserId and Is_Correct_Answer=0;
END$$
DELIMITER ;
