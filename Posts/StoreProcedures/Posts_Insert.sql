CREATE DEFINER=`admin`@`%` PROCEDURE `Posts_Insert`(
IN p_postguid char(32),
IN p_recordstatus int,
IN p_type int,
IN p_filetype int,
IN p_created_time datetime,
IN p_title varchar(50),
IN p_description varchar(200),
IN p_userguid char(37),
IN p_images char(50),
IN p_videos char(50),
IN p_viewcount int,
IN p_likecount int,
IN p_commentcount int,
IN p_lovecount int,
IN p_rating decimal(2,1),
IN p_includeqna int,
IN p_categoryguid char(32),
IN p_subtitiles char(50),
IN p_showtouser int,
IN p_viewmovie int 
)
BEGIN
INSERT INTO Posts
(
	PostGUID
    ,RecordStatus
    ,Type
    ,FileType
    ,Created_Time
    ,Title
    ,Description
    ,UserGUID
    ,Images
    ,Videos
    ,View_Count
    ,Like_Count
    ,Comment_Count
    ,Love_Count
    ,Rating
    ,Is_Include_QnA
    ,CategoryGUID
    ,Subtitiles
    ,Is_Show_To_User
    ,Is_required_viewmovie
)
VALUES
(
	p_postguid 
    ,p_recordstatus 
    ,p_type 
    ,p_filetype 
    ,p_created_time 
    ,p_title 
    ,p_description 
    ,p_userguid 
    ,p_images
    ,p_videos
    ,p_viewcount 
    ,p_likecount 
    ,p_commentcount 
    ,p_lovecount 
    ,p_rating 
    ,p_includeqna 
    ,p_categoryguid 
    ,p_subtitiles 
    ,p_showtouser 
    ,p_viewmovie
);
END