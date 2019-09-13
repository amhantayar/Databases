CREATE DEFINER=`admin`@`%` PROCEDURE `Posts_SelectByPostGUID`(
p_postguid char(36)
)
BEGIN
SELECT * FROM Posts 
where PostGUID = p_postguid;
END