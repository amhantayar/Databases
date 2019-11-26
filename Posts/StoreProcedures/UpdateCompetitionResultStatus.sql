DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `UpdateCompetitionResultStatus`(
IN pResultStatus int ,IN pChallengeId varchar(45),IN pUserGUID char(37)
)
BEGIN
Update CompetitionHistory 
SET 
Result_status = pResultStatus
where  ChallengeID=pChallengeId and UserGUID=pUserGUID;
END$$
DELIMITER ;
