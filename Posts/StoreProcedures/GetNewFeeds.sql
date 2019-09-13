CREATE DEFINER=`admin`@`%` PROCEDURE `GetNewFeeds`(
IN pPage int, IN pCount int, IN pUserId varchar(37)
)
BEGIN
    
	DECLARE startIndex  INT unsigned DEFAULT 0;  
    set startIndex = (pPage - 1) * pCount;       
    	    
	 create temporary table temp
     select SQL_CALC_FOUND_ROWS PostGUID
     from Posts where recordstatus = 2;	        
     
	select a.PostGUID, a.UserGUID, a.FileType, a.Images, a.Videos, 
    CONVERT_TZ(a.Created_Time,'+00:00','+6:30') Created_Time   , 
    a.Title, a.Description, 
    a.Rating as Like_Range, a.Love_Count, a.Like_Count, a.Comment_Count, a.View_Count, a.Is_Include_QnA,
    a.Is_required_viewmovie,
     b.Is_Liked, b.Is_Loved, b.Is_Viewed, b.Is_Saved Is_Saved, b.Is_AnsweredQuestion,
    b.Rate, FOUND_ROWS() as Total_Count
    from Posts as a
    left outer join PostActions b on a.PostGUID = b.PostGUID and b.UserGUID = pUserId
    where a.recordstatus = 2
    order by a.created_time desc
    LIMIT startIndex , pCount;
    
     drop temporary table temp;
END