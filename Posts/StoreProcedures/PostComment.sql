CREATE PROCEDURE `PostComment` (
IN pFeedId varchar(36) , IN pUserId varchar(36), IN pMessage Nvarchar(200)
)
BEGIN

insert into Post(CommentGUID, RecordStatus, PostGUID, UserGUID, Message, Created_Time)
values(uuid(), 1, pFeedId, pUserId, pMessage, Now());

END
