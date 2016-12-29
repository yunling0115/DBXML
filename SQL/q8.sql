-- 'C:\Users\yling\workspace\Hw1\META-INF\q8.sql'
-- Find the email address of the original author of tweet 128953 

select u.email from Users u, Quotes q, Tweets t where u.userid=t.userid 
and t.tweetid=q.original_tweetid and q.tweetid=128953;