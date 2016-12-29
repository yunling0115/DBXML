-- 'C:\Users\yling\workspace\Hw1\META-INF\q3.sql'
-- Find the full names of users who follow a user whose nickname is mickey 

select u.fullname from Users u, Followers f, Users u2 
where u2.nickname='mickey' and f.followedid=u2.userid and f.followerid=u.userid;