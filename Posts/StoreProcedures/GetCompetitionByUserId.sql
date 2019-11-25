DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `GetCompetitionByUserId`(IN pUserId varchar(45))
BEGIN
select * from Competition where UserGUID=pUserId;
END$$
DELIMITER ;
