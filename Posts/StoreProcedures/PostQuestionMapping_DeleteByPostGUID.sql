CREATE DEFINER=`admin`@`%` PROCEDURE `PostQuestionMapping_DeleteByPostGUID`(
in p_postguid char(36)
)
BEGIN
DELETE FROM PostQuestionMapping where PostGUID = p_postguid ;
END