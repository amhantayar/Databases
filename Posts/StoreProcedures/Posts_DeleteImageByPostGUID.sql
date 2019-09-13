CREATE DEFINER=`admin`@`%` PROCEDURE `Posts_DeleteImageByPostGUID`(
in p_postguid char(36)
,in p_images char(50)
)
BEGIN
UPDATE Posts
SET Images = p_images
WHERE PostGUID = p_postguid ;
END