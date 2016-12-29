-- 'C:\Users\yling\workspace\Hw1\META-INF\q5.sql'
-- Get the average age of users who follow the user whose full name is Lady Gaga  

select average(u.age) from Users u, Follows f where u.userid=f.followerid
and f.followedid in (select u2.userid from Users u2 where u2.fullname='Lady Gaga');