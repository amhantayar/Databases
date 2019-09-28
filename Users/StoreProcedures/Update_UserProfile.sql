CREATE DEFINER=`admin`@`%` PROCEDURE `Update_UserProfile`(
IN pAccessID char(36),
IN pUserID char(36),
IN pUserName varchar(50),
IN pDateOfBirth datetime,
IN pGender varchar(15),
IN pPhoto varchar(45),
IN pBgPhoto varchar(45),
IN pCountry varchar(50)
)
BEGIN
Update User 
SET 
AccessID = pAccessID
,UserGUID = pUserID
,UserName = pUserName
,DateOfBirth = pDateOfBirth 
,Gender =pGender  
,Photo =pPhoto  
,backgroundphoto = pBgPhoto 
,Country=pCountry   where  AccessID=pAccessID;
END