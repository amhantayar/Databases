CREATE DEFINER=`admin`@`%` PROCEDURE `PostQuestions_Insert`(
in pquestionguid varchar(36)
,in pcategoryguid varchar(36)
,in pquestion varchar(255)
,in precordstatus int 
,in ptype int
)
BEGIN
 IF EXISTS ( SELECT * FROM Question WHERE QuestionGUID = pquestionguid) THEN
BEGIN
	UPDATE Question
	SET question  = pquestion
   ,categoryguid = pcategoryguid
	WHERE   QuestionGUID =pquestionguid;
END;
ELSE  
	 INSERT INTO Question 
		(
			QuestionGUID
			,CategoryGUID
			,Question
			,RecordStatus
			,Created_Time
			,Type
		)
		VALUES
		(
			pquestionguid
			,pcategoryguid
			,pquestion
			,precordstatus
			,NOW()
			,ptype
		);
END IF;
 
  
END