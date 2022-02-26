
create database Party_Management_System;

use Party_Management_System;

create table `User` (firstName varchar(20), 
lastName varchar(20), 
dOB date, 
gender varchar(10), 
contactNumber numeric,
 userId varchar(20) primary key, 
 password varchar(20), 
 role varchar(20), 
 photoName varchar(40));
 
 create table Forget_User(userid varchar(20),ans1 varchar(20),ans2 varchar(20),ans3 varchar(20),foreign key(userid) references `User`(userId));

create table venue(
venueId int(3) auto_increment primary key,
venueName varchar(30),
venueType varchar(20),
venueDesc varchar(100),
photoName varchar(50));

create table schedule(
venueId int, 
scheduleId int(3) auto_increment primary key, 
startDate date, 
endDate date, 
facilities varchar(30), 
maxCapacity numeric,
 price double, 
 foreign key(venueId) references Venue(venueId));
 
 create table bookings(
bookingId int(3) primary key,
userId varchar(20),
scheduleId int,
foreign key (userId) references User(userId),
foreign key (scheduleId) references schedule(scheduleId));

drop table temp_bookings;

create table contacts(
contactId int(3) auto_increment primary key,
userId varchar(20),
name varchar(40),
email varchar(30),
contactNumber numeric,
foreign key (userId) references User(userId));



create table invitees(
inviteeId int(3) auto_increment primary key,
bookingId int,
contactId int,
greetingId int,
foreign key (greetingId) references invitation(greetingId),
foreign key (contactId) references contacts(contactId)); 





create table temp_bookings(
bookingId int(3) primary key auto_increment,
userId varchar(20),
scheduleId int,
foreign key (userId) references User(userId),
foreign key (scheduleId) references schedule(scheduleId));



create table invitation(
greetingId  int auto_increment primary key,
photoName varchar(50),
inviteText varchar(100));





create table feedbackQuestions(
qId int(3) primary key auto_increment,
ques1 varchar(100),
ques2 varchar(100),
ques3 varchar(100));

insert into feedbackQuestions  (ques1,ques2,ques3) values("sa","da","ds");

create table feedback(feedbackId int(3) unsigned zerofill not null auto_increment primary key,
userId varchar(10), 
bookingId int,
ans1 varchar(100), 
ans2 varchar(100), 
ans3 varchar(100), 
rating varchar(10),
qId int,
foreign key(qId) references feedbackQuestions(qId),
foreign key(userId) references `User`(userId) ); 
 
insert into `User` values("Admin" ,"admin",'1999-06-22',"male",9930076742,"admin123","admin123","admin",'');
select * from schedule;
update User set role='admin' where userId = 'Sath22';

insert into Forget_User values("Sath22","scooby","blue","sat");
select * from Forget_User where userId = 'Sath22' and ans1='scooby' and ans2 = 'blue' and ans3 = 'sat';
select * from Forget_User;
update User set password='xyz' where userId='abcd123';
update User set role = 'user' where userId = 'abcd123';
select password from user where userId = 'Sath22';











