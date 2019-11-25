DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `GetCompetitionResult`(IN pChallengeId varchar(45),IN pUserId varchar(45))
BEGIN
  select UserGUID from CompetitionHistory where ChallengeID=pChallengeId  and Is_Correct_Answer=1 order by Createddate desc limit 1;
END$$
DELIMITER ;
