CREATE DEFINER=`admin`@`%` PROCEDURE `GetPostQuestions`(
IN pFeedId varchar(36) , IN pLoginUserId varchar(36)
)
BEGIN
	select a.PostGUID, a.QuestionGUID, a.Question, a.`Type` QnAType,
    a.Created_Time, b.AnswerGUID, b.Answer
    from Question a 
    inner join Answer b on b.QuestionGUID = a.QuestionGUID and a.PostGUID = pFeedId
    where a.RecordStatus = 1 and b.RecordStatus = 1;
    
END