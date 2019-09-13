CREATE DEFINER=`admin`@`%` PROCEDURE `PostAnswers_Insert`(
in panswerguid varchar(36)
,in pquestionguid varchar(36)
,in panswer varchar(45)
,in pis_Correct int 
,in precordstatus int
)
BEGIN
IF EXISTS ( SELECT * FROM Answer WHERE AnswerGUID = panswerguid and QuestionGUID = pquestionguid) THEN
BEGIN
Update Answer 
SET answer = panswer 
,Is_Correct = pis_Correct
WHERE AnswerGUID = panswerguid and QuestionGUID = pquestionguid;
END;
ELSE 
INSERT INTO Answer 
(
	AnswerGUID
    ,QuestionGUID
    ,Answer
    ,Is_Correct
    ,RecordStatus 
)
VALUES
(
	panswerguid,
    pquestionguid,
    panswer,
    pis_Correct,
    precordstatus
);
END IF;

END