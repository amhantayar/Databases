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
		
        SET SQL_SAFE_UPDATES=0;
	   update PostActions set Is_Liked = ilike where PostGUID = p_postguid and UserGUID = p_userguid; 	
       
       
       SELECT COUNT(ID) INTO @likeCount 
		FROM PostActions 
		WHERE PostGUID= p_postguid and Is_Liked = 1;
        
       
			update Posts 						
			set Like_Count = @likeCount
			where PostGUID = p_postguid;
		SET SQL_SAFE_UPDATES=1;
        
       
elseif actiontype ='love' then
	BEGIN
    SET SQL_SAFE_UPDATES=0;
	update PostActions set Is_Loved = ilove where PostGUID = p_postguid and UserGUID = p_userguid;
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
	SET SQL_SAFE_UPDATES=0;
	update PostActions set Is_viewed = iview where PostGUID = p_postguid and UserGUID = p_userguid;
    
    SELECT COUNT(ID) INTO @viewCount 
    FROM PostActions 
    WHERE PostGUID= p_postguid and Is_Viewed = 1;  
    
    update Posts 						
        set View_Count = @viewCount
        where PostGUID = p_postguid;
    
    SET SQL_SAFE_UPDATES=1;
elseif actiontype ='answeredquestion' then
	SET SQL_SAFE_UPDATES=0;
	update PostActions set Is_AnsweredQuestion = answeredquestion 
    where PostGUID = p_postguid and UserGUID = p_userguid;
    SET SQL_SAFE_UPDATES=1;
elseif actiontype ='rate' then
	SET SQL_SAFE_UPDATES=0;
	update PostActions set rate = irate where PostGUID = p_postguid and UserGUID = p_userguid;
	
    SELECT COUNT(ID),SUM(rate)  INTO @rateusercount , @totalrate
    FROM PostActions 
    WHERE PostGUID= p_postguid and rate > 0;  
	select @rateusercount, @totalrate;
	    
		update Posts 						
        set rating = @totalrate / @rateusercount
        where PostGUID = p_postguid;
	SET SQL_SAFE_UPDATES=1;
    
end if;

END