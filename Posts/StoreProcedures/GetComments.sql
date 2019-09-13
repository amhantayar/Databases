CREATE DEFINER=`admin`@`%` PROCEDURE `GetComments`(
IN pFeedId varchar(36) , IN pUserId varchar(36)
)
BEGIN

select CommentGUID, PostGUID, UserGUID, Message, CONVERT_TZ(Created_Time,'+00:00','+6:30') Created_Time
from `Comments`
where PostGUID = pFeedId;

END