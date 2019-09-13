CREATE DEFINER=`admin`@`%` PROCEDURE `Posts_DeleteVideoByPostGUID`(
in p_postguid char(36)
,in p_videos char(50)
)
BEGIN
UPDATE Posts
SET Videos = p_videos
WHERE PostGUID = p_postguid ;
END