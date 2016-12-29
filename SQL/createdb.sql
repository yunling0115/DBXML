-- 'C:\Users\yling\workspace\Hw1\META-INF\createdb.sql'
-- Create tables 

create table Users (
	userid char(20),
	fullname char(50), 
	nickname char(50),
	age int(3),
	location char(150),
	email char(30),
	primary key (userid)
);

insert into Users (userid,fullname,nickname,age,city,state,country,email) values 
('1','Lady Gaga','ladygaga',27,'New York City','NY','USA','ladygaga@xx.com'),
('2','Michael Smith','mickey',32,'Los Angeles','CA','USA','mickey@xx.com'),
('3','Patricia Williams','patriciawilliams',18,'Seattle','WA','USA','imwilliams@yy.co'),
('4','Linda Miller','lindamiller',23,'Portland','OR','USA','millerl@xx.com'),
('5','Robert Moore','robertmoore',56,'Huston','TX','USA','robert@xx.com'),
('6','David Taylor','davidtaylor',45,'Lviv','','Ukraine','taylor@yy.com'),
('7','Maria Hall','mariahall',37,'Hamburg','','Germany','mariahall@xx.com'),
('8','Jennifer Young','jenniferyoung',21,'Porto','','Portugal','jyoung@xx.com'),
('9','Laura Martin','lauramartin',40,'Zagreb','','Croatia','lauram@yy.com'),
('10','Susan Hill','susanhill',29,'Budapest','','Hungary','susanhill@yy.com'),
('11','Sachin Tendulkar','srt',42,'Mumbai','MH','IND','srt@xy.com'),
('12','Rafael Nadal','rafaelnadal',28,'Manacor','','Spain','madal@yy.com'),
('13','Tiger Woods','tigerwoods',33,'Los Angeles','CA','USA','woods@xx.com'),
('14','Jackie Chan','jackiechan',45,'HK','','China','jackiec@xx.com'),
('15','Chiling Lin','chilinglin',24,'Beijing','','China','chilinglin@xx.com');

create table Tweets (
	tweetid int(10),
	userid char(20),
	tweettext char(2000),
	hashtags int(10),
	date date,
	time time,
	location_x double,
	location_y double,
	primary key (tweetid)
);

create table Messages (
	fromid char(20),
	toid char(20),
	date date,
	time time,
	content char(2000),
	primary key (fromid toid date time)
);

create table Quotes (
	tweetid int(10),
	original_tweetid int(10),
	primary key (tweetid),
	foreign key (tweetid) reference Tweets on delete cascade
);

create table Follows (
	followerid char(20),
	followedid char(20),
	primary key (followerid followedid)
);

