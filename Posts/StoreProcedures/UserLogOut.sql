CREATE DEFINER=`admin`@`%` PROCEDURE `UserLogOut`(IN userid char(37))
BEGIN
select * from Posts where UserGUID=userid;
END