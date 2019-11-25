DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `GetChallengeQuestion_ByQuestionID`(IN pQuestionId varchar(36))
BEGIN
select q.Question,p.Videos,p.UserGUID,p.PostGUID from Question q
    inner join PostQuestionMapping pq on q.QuestionGUID=pq.QuestionGUID
    inner join Posts p on pq.PostGUID =p.PostGUID
    where q.QuestionGUID=pQuestionId order by p.Created_Time 
    limit 1;
END$$
DELIMITER ;
