/*
日期函数
*/

#取系统时间
select now();
#2022-01-17 16:25:15

#取系统时间，只有时分秒
select curtime();
#16:24:26

#取系统时间，只有年月日
select curdate();
#2022-01-17

/*
其他函数
*/
select ifnull('hello', 'ok');
select ifnull(NULL, 'ok');
select ifnull('NULL', 'ok');
