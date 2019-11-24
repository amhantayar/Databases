CREATE DEFINER=`admin`@`%` PROCEDURE `Posts_GetMyPostVideos`(IN userid char(37),IN pPage int, IN pCount int)
BEGIN
DECLARE startIndex  INT unsigned DEFAULT 0;  
    set startIndex = (pPage - 1) * pCount; 
	
	create temporary table temp2
     select SQL_CALC_FOUND_ROWS PostGUID
     from Posts 
    WHERE UserGUID = userid and FileType = 2;
	 
select a.PostGUID,a.RecordStatus,a.Type, a.UserGUID, a.FileType, a.Videos, 
     CONVERT_TZ(a.Created_Time,'+00:00','+6:30') Created_Time ,
    a.Title, a.Description, 
    a.Rating as Like_Range, a.Love_Count, a.Like_Count, a.Comment_Count, a.View_Count, a.Is_Include_QnA,
    a.Is_required_viewmovie,a.CategoryGUID,a.Subtitiles,a.Is_Show_To_User,
     ifnull(b.Is_Liked,0) Is_Liked, ifnull( b.Is_Loved,0) Is_Loved, 
     ifnull(b.Is_Viewed,0) Is_Viewed, ifnull( b.Is_Saved, 0) Is_Saved , 
     ifnull(b.Is_AnsweredQuestion,0) Is_AnsweredQuestion, ifnull(b.Rate,0) Rate ,
     ifnull(a.Video_TimeStamp,'') as Video_TimeStamp,
     FOUND_ROWS() as Total_Count
    from Posts as a
    inner join PostActions b on a.PostGUID = b.PostGUID and a.UserGUID = userid
    WHERE a.FileType = 2
LIMIT startIndex , pCount;
    
     drop temporary table temp2;
END