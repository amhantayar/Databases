CREATE DEFINER=`admin`@`%` PROCEDURE `Get_UserActionCountByFeed`(IN feedid char(37),IN actiontype char(20))
BEGIN
if actiontype ='like'  then
select Like_Count from Posts where PostGUID=feedid;
elseif actiontype ='love' then
Begin
select Love_Count from Posts where PostGUID=feedid;
end;
elseif actiontype ='view' then
Begin
select View_Count from Posts where PostGUID=feedid;
end;
elseif actiontype ='rate' then
Begin
select Rating from Posts where PostGUID=feedid;
end;
End if;
END