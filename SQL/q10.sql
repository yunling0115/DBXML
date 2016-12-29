-- 'C:\Users\yling\workspace\Hw1\META-INF\q10.sql'
-- Get the count of tweets that repost tweet 128952

select count(q.tweetid) from Quotes q where q.original_tweetid=128952;