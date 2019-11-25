DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `GetPostsByQuestionType`(IN pQuestionType int,IN pstartIndex int)
BEGIN
select m.PostGUID as PostID ,m.QuestionGUID as QuestionID from Question q 
inner join PostQuestionMapping m on q.QuestionGUID=m.QuestionGUID
where q.Type=pQuestionType order by q.Created_Time
limit pstartIndex, 10;
END$$
DELIMITER ;
