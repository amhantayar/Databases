CREATE DEFINER=`admin`@`%` PROCEDURE `Posts_AdminInsert`(
IN p_postguid char(36),
IN p_recordstatus int,
IN p_type int,
IN p_filetype int,
IN p_created_time datetime,
IN p_title varchar(50),
IN p_description varchar(200),
IN p_userguid char(37),
IN p_images char(50),
IN p_videos char(50),
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
    ,Created_time
    ,Title
    ,Description
    ,UserGUID
    ,Images
    ,Videos
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
    ,NOW()
    ,p_title 
    ,p_description
    ,p_userguid
    ,p_images
    ,p_videos
    ,p_categoryguid
    ,p_subtitiles
    ,p_showtouser
    ,p_viewmovie
);
END