-- 'C:\Users\yling\workspace\Hw1\META-INF\q4.sql'
-- Find the nicknames of users who send more than 2 messages to mickey 

select u.nickname from Users u, Messages m where u.userid=m.fromid
and m.toid in (select u2.userid from Users u2 where u2.nickname='mickey')
group by u.userid having count(m.toid)>2;