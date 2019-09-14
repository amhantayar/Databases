CREATE DEFINER=`admin`@`%` PROCEDURE `PostQuestion_DeleteByQuestionGUID`(
in pquestionguid varchar(36)
,in precordstatus int
)
BEGIN
Update Question 
SET recordstatus = precordstatus
WHERE QuestionGUID = pquestionguid ;
 
 Update Answer 
 SET recordstatus = precordstatus 
 WHERE QuestionGUID =pquestionguid ;
  
 
END