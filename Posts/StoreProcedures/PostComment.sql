CREATE DEFINER=`admin`@`%` PROCEDURE `PostComment`(
IN pCommentId varchar(36), IN pFeedId varchar(36) , IN pUserId varchar(36), IN pMessage Nvarchar(200)
)
BEGIN

insert into Comments(CommentGUID, RecordStatus, PostGUID, UserGUID, Message, Created_Time)
values(pCommentId, 1, pFeedId, pUserId, pMessage, Now());

		SELECT COUNT(CommentGUID) INTO @commentcount 
		FROM Comments 
		WHERE PostGUID= pFeedId;
       
SET SQL_SAFE_UPDATES = 0;
update Posts set Comment_Count = @commentcount where PostGUID = pFeedId;
SET SQL_SAFE_UPDATES = 1;
	

END