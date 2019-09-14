CREATE DEFINER=`admin`@`%` PROCEDURE `Posts_SelectByCategoryGUID`(
p_cateogryguid char(36)
,p_recordstatus int
)
BEGIN
SELECT * FROM Posts 
where CategoryGUID = p_cateogryguid and RecordStatus = p_recordstatus;

END