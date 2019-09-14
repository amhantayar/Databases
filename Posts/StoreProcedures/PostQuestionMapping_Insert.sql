CREATE DEFINER=`admin`@`%` PROCEDURE `PostQuestionMapping_Insert`(
in p_mappingGUID varchar(36)
,in p_postGUID char(36)
,in p_questionGUID varchar(36)
)
BEGIN
INSERT INTO PostQuestionMapping
(
MappingGUID
,PostGUID
,QuestionGUID 
)
VALUES
(
p_mappingGUID
,p_postGUID
,p_questionGUID
);
END