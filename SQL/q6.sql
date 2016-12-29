-- 'C:\Users\yling\workspace\Hw1\META-INF\q6.sql'
-- For every pair of users who follow each other, return their nicknames, 
-- locations and email addresses. (For example, user1_nickname, user1_location, 
-- user1_email, user2_nickname, user2_location, user2_email)

select u.nickname, u.city, u.state, u.country, u.email,
u2.nickname, u2.city, u2.state, u2.country, u2.email
from Users u, Users u2, Follows f where u.userid=f.followerid and u2.userid=f.followedid
intersect
select u3.nickname, u3.city, u3.state, u3.country, u3.email,
u4.nickname, u4.city, u4.state, u4.country, u4.email
from Users u3, Users u4, Follows f2 where u3.userid=f2.followedid and u4.userid=f.followerid;  