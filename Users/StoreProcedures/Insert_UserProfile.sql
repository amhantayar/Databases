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
IN pType varchar(20),
IN pEmail varchar(20),
IN pPhonenumber varchar(20),
IN pGmailDisplayOption varchar(20),
IN pMobileDisplayOption varchar(20),
IN pDOBDisplayOption varchar(20)
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
    ,Type
    ,Email
    ,Phonenumber
    ,MobileDisplayOption
    ,GmailDisplayOption
    ,DOBDisplayOption
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
    ,pType
    ,pEmail
    ,pPhonenumber
    ,pGmailDisplayOption
    ,pMobileDisplayOption
    ,pDOBDisplayOption
);
END