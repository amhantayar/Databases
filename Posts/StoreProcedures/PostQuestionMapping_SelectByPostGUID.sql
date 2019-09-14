CREATE DEFINER=`admin`@`%` PROCEDURE `PostQuestionMapping_SelectByPostGUID`(
in p_postguid char(36)
)
BEGIN
SELECT * FROM PostQuestionMapping pm
INNER JOIN Question q on pm.QuestionGUID = q.QuestionGUID 
where PostGUID = p_postguid ;
END