CREATE DEFINER=`admin`@`%` PROCEDURE `UpdatePostUserActions`(
IN p_postguid varchar(36), IN p_userguid varchar(37),
IN actiontype char(20),IN ilike int, IN ilove int, IN answeredquestion int,
IN iview int, IN irate decimal(2,1)
)
BEGIN

if not exists (select ID from PostActions where PostGUID = p_postguid and UserGUID = p_userguid) then
	insert into PostActions(ID,PostGUID,UserGUID,Rate,Is_Liked,Is_Loved,Is_Viewed,Is_Saved,Is_AnsweredQuestion)
        values (uuid(),p_postguid,p_userguid, 0, 0, 0, 0, 0, 0);
end if;

if actiontype ='like' then
	   update PostActions set Is_Liked = ilike where PostGUID = postguid and UserGUID = userguid; 	
elseif actiontype ='love' then
	BEGIN
    SET SQL_SAFE_UPDATES=0;
	update PostActions set Is_Loved = ilove where PostGUID = postguid and UserGUID = userguid; 
    SET SQL_SAFE_UPDATES=1;
    
    SELECT COUNT(ID) INTO @lovedCount 
    FROM PostActions 
    WHERE PostGUID= p_postguid and Is_Loved = 1;   
    
    SET SQL_SAFE_UPDATES=0;
		update Posts 						
        set Love_Count = @lovedCount
        where PostGUID = p_postguid;
	SET SQL_SAFE_UPDATES=1;
    END;
elseif actiontype ='view' then
	update PostActions set Is_viewed = iview where PostGUID = postguid and UserGUID = userguid; 
elseif actiontype ='answeredquestion' then
	update PostActions set Is_AnsweredQuestion = answeredquestion where PostGUID = postguid and UserGUID = userguid;
elseif actiontype ='rate' then
	update PostActions set rate = irate where PostGUID = postguid and UserGUID = userguid; 	
end if;

END