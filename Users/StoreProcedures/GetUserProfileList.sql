CREATE DEFINER=`admin`@`%` PROCEDURE `GetUserProfileList`()
BEGIN
select * from User;
END