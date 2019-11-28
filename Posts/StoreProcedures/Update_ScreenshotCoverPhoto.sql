CREATE DEFINER=`admin`@`%` PROCEDURE `Update_ScreenshotCoverPhoto`(IN p_Screenshot_CoverPhoto char(50),IN p_postguid char(36))
BEGIN
Update Posts 
SET 
Screenshot_CoverPhoto = p_Screenshot_CoverPhoto
WHERE PostGUID = p_postguid ;
END