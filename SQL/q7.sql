-- 'C:\Users\yling\workspace\Hw1\META-INF\q7.sql'
-- Find users who have not posted any tweets, and output their user ids and full names 

select u.userid, u.fullname from Users u, Tweets t where u.userid=t.userid group by u.userid
having count(t.tweetid)=0;