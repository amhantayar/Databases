DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `GetCompetition_ByChallangeId`(IN pChallengeId varchar(45))
BEGIN
select q.Question,p.Videos,p.UserGUID,p.PostGUID,q.QuestionGUID from Question q
    inner join PostQuestionMapping pq on q.QuestionGUID=pq.QuestionGUID
    inner join Posts p on pq.PostGUID =p.PostGUID
    where q.QuestionGUID=(select QuestionID  from Competition where ChallengeID=pChallengeId limit 1) order by p.Created_Time 
    limit 1;
END$$
DELIMITER ;
