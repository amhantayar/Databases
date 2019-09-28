CREATE DEFINER=`admin`@`%` PROCEDURE `Insert_UserProfile`(
IN pAccessID char(50),
IN pUserGUID char(36),
IN pUserName varchar(50),
IN pStatus int,
IN pCreatedDateTime datetime,
IN pCountry varchar(50),
IN pDateOfBirth datetime,
IN pGender varchar(15),
IN pPhoto varchar(45),
IN pBgPhoto varchar(45)
)
BEGIN
INSERT INTO User 
(
	AccessID
	,UserGUID
	,UserName
    ,Status
    ,CreatedDateTime
    ,Country
	,DateOfBirth
	,Gender
	,Photo
	,backgroundphoto
)
VALUES
(
	pAccessID
	,pUserGUID
	,pUserName
    ,pStatus
    ,Now()
    ,pCountry
	,pDateOfBirth
	,pGender
	,pPhoto
	,pBgPhoto
);
END