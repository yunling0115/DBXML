-- 'C:\Users\yling\workspace\Hw1\META-INF\q9.sql'
-- Find the distinct user’s ids, nicknames, and email addresses who post tweets 
-- between 2012-01-01 00:00:00 and 2013-02-11 23:59:59 

select distinct u.userid, u.nickname, u.email from Users u, Tweets t where
u.userid=t.userid and t.date>=date('2012-01-01') and t.date<=date('2013-02-11')
and t.time>=time('00:00:00') and t.time<=time('23:59:59');