CREATE DEFINER=`admin`@`%` PROCEDURE `Delete_UserProfile`(in pAccessID char(37)
)
BEGIN
Delete from User
WHERE AccessID = pAccessID ;
END