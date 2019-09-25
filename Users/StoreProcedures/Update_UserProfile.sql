CREATE DEFINER=`admin`@`%` PROCEDURE `Update_UserProfile`(
IN pAccessID char(36),
IN pUserID char(36),
IN pUserName varchar(50),
IN pDateOfBirth datetime,
IN pGender varchar(15),
IN pPhoto varchar(45),
IN pBgPhoto varchar(45)
)
BEGIN
Update User 
SET 
AccessID = pUserID
,UserGUID = pUserID
,UserName = pUserName
,DateOfBirth = pDateOfBirth 
,Gender =pGender  
,Photo =pPhoto  
,backgroundphoto = pBgPhoto ;
END