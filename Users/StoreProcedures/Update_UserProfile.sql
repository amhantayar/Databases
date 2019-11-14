CREATE DEFINER=`admin`@`%` PROCEDURE `Update_UserProfile`(
IN pAccessID char(36),
IN pUserID char(36),
IN pUserName varchar(50),
IN pDateOfBirth datetime,
IN pGender varchar(15),
IN pPhoto varchar(45),
IN pBgPhoto varchar(45),
IN pCountry varchar(50),
IN pWork varchar(45),
IN pEducation varchar(45),
IN pLocation varchar(45),
IN pPhonenumber varchar(20),
IN pSkill varchar(45),
IN pInterest varchar(45),
IN pRelationship varchar(20),
IN pMobileDisplayOption int,
IN pGmailDisplayOption int,
IN pDOBDisplayOption int,
IN pEmail varchar(20)
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
,Country=pCountry   
,Work=pWork
,Education=pEducation
,Location=pLocation
,Phonenumber=pPhonenumber
,Skill=pSkill
,Interest=pInterest
,Relationship=pRelationship
,MobileDisplayOption=pMobileDisplayOption
,GmailDisplayOption=pGmailDisplayOption
,DOBDisplayOption=pDOBDisplayOption
,Email=pEmail
where  AccessID=pAccessID;

END