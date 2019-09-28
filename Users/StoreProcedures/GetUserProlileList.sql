CREATE DEFINER=`admin`@`%` PROCEDURE `GetUserProlileList`()
BEGIN
select * from User;
END