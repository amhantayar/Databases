CREATE DEFINER=`admin`@`%` PROCEDURE `GetUserProfile_ByUserId`(IN pUserGUID varchar(36))
BEGIN
select * from User where UserGUID=pUserGUID;
END