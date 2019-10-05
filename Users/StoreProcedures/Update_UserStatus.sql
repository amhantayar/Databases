CREATE DEFINER=`admin`@`%` PROCEDURE `Update_UserStatus`(IN pUserID char(36),IN pStatus int(11))
BEGIN
Update User 
SET 
Status = pStatus  where  UserGUID=pUserID;
END