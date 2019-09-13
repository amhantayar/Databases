CREATE DEFINER=`admin`@`%` PROCEDURE `PostedVideo_SelectByUserGUID`(IN p_userguid char(36))
BEGIN
SELECT * FROM Posts 
WHERE UserGUID = p_userguid;
END