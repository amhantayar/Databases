CREATE DEFINER=`admin`@`%` PROCEDURE `Posts_RecordStatusUpdateByPostGUID`(
IN p_postguid char(36)
,IN p_recordstatus int  
)
BEGIN
Update Posts 
SET RecordStatus = p_recordstatus 
WHERE PostGUID = p_postguid ;
END