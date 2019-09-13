CREATE DEFINER=`admin`@`%` PROCEDURE `GetSingleFeed`(
IN pFeedId varchar(36) , IN pLoginUserId varchar(36)
)
BEGIN
	select a.PostGUID, a.UserGUID, a.FileType, a.Images, a.Videos, 
     CONVERT_TZ(a.Created_Time,'+00:00','+6:30') Created_Time ,
    a.Title, a.Description, 
    a.Rating as Like_Range, a.Love_Count, a.Like_Count, a.Comment_Count, a.View_Count, a.Is_Include_QnA,
    a.Is_required_viewmovie,
     b.Is_Liked, b.Is_Loved, b.Is_Viewed, b.Is_Saved Is_Saved, b.Is_AnsweredQuestion, b.Rate 
    from Posts as a
    left outer join PostActions b on a.PostGUID = b.PostGUID and b.UserGUID = pLoginUserId
    where a.PostGUID = pFeedId ;
END