DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `PostCompetition`(
IN pId char(36), IN pChallengeId varchar(45) , IN pUserId char(36), IN pType int, IN pPostID char(36)  ,IN pQuestionID varchar(36)
)
BEGIN
insert into Competition(ID, ChallengeID, UserGUID, Type,PostID,QuestionID,Createddate)
values(pId,pChallengeId, pUserId,pType,pPostID,pQuestionID,curdate());
END$$
DELIMITER ;
