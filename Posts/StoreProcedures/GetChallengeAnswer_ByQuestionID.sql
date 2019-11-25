DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `GetChallengeAnswer_ByQuestionID`(IN pQuestionId varchar(36))
BEGIN
  select AnswerGUID as id,Answer as answer from Answer
    where QuestionGUID=pQuestionId;
END$$
DELIMITER ;
