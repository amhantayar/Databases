CREATE DEFINER=`admin`@`%` PROCEDURE `PostQuestions_SelectByQuestionGUID`(
in pquestionguid varchar(36)
,in pquestionrecordstatus int
,in panswerrecordstatus int 
)
BEGIN
SELECT 
q.categoryguid
,q.questionguid
,q.question
,q.recordstatus as question_recordstatus
,q.created_time
,q.type
,a.answerguid
,a.answer
,a.is_correct
,q.recordstatus as answer_recordstatus
FROM Question q 
LEFT JOIN Answer a on q.QuestionGUID = a.QuestionGUID 
WHERE q.questionguid = pquestionguid and q.RecordStatus = pquestionrecordstatus and a.RecordStatus = panswerrecordstatus
ORDER BY a.answer desc;
END