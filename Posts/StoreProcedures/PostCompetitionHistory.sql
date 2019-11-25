DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `PostCompetitionHistory`(
IN pId char(36), IN pChallengeId varchar(45) , IN pUserId char(36),  IN pAnswerId varchar(36),IN pResult_status int,IN pIs_Correct_Answer int
)
BEGIN
insert into CompetitionHistory(ID, ChallengeID, UserGUID, AnswerID,Createddate,Result_status,Is_Correct_Answer)
values(pId,pChallengeId, pUserId,pAnswerId,now(),pResult_status,pIs_Correct_Answer);

END$$
DELIMITER ;
