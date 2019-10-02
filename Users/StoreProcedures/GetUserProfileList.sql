CREATE DEFINER=`admin`@`%` PROCEDURE `GetUserProfileList`()
BEGIN
select UserGUID,AccessID,UserName,Status,CreatedDateTime,Country,Date(DateOfBirth),Gender,Photo,backgroundphoto,Type from User;
END