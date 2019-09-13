CREATE DEFINER=`admin`@`%` PROCEDURE `Posts_AdminUpdate`(
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
Update Posts 
SET 
RecordStatus = p_recordstatus
,Type = p_type
,FileType =p_filetype
,Created_Time =  NOW()
,Title = p_title
,Description = p_description 
,UserGUID = p_userguid
,Images = p_images
,Videos = p_videos
,CategoryGUID = p_categoryguid 
,Subtitiles = p_subtitiles 
,Is_Show_To_User = p_showtouser
,Is_required_viewmovie= p_viewmovie 
WHERE PostGUID = p_postguid ;
END