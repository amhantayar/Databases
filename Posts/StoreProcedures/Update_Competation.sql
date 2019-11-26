DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `Update_Competation`(
IN pQuestionId varchar(36),IN pPostId char(36) ,IN pChallengeId varchar(45)
)
BEGIN

Update Competition 
SET 
PostID = pPostId
,QuestionID = pQuestionId
where  ChallengeID=pChallengeId;
END$$
DELIMITER ;
