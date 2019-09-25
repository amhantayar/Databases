CREATE DEFINER=`admin`@`%` PROCEDURE `GetUserProfile`(IN pAccessId varchar(36) )
BEGIN
 select * from User where AccessID=pAccessId;
END