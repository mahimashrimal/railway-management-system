create database railway;
use railway;
#creation of user table
create table user(
user_id int not null,
first_name varchar(30),
last_name varchar(30),
age int not null,
gender char,
contact_number bigint,
email varchar(40),
primary key(user_id));
#creation of passenger table(one to one relation--passenger and user)
create table passenger(
passenger_id int not null,
user_id int not null unique,
ticket_id int not null,
train_id int not null,
name varchar(30),
age int not null,
gender char,
contact_number bigint,
reservation_status varchar(30),
primary key(passenger_id),
foreign key(user_id) references user(user_id));
alter table passenger modify column ticket_id varchar(40);
INSERT INTO passenger  VALUES ('1010110', '110', 'AC-12', '4', 'MAHIMA', '19', 'F', '9999999999', 'CONFIRM');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010112', '101', 'AB-56', '6', 'AAYUSHI', '76', 'F', '7677655777', 'WAITING');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010113', '103', 'M-32', '8', 'AAYUSH', '23', 'M', '8653211345', 'CONFIRM');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010114', '104', 'M-21', '10', 'JATIN', '12', 'M', '7654678899', 'CONFIRM');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010115', '108', 'AC-54', '1', 'KIRAN', '54', 'F', '7543334567', 'WAITING');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010116', '105', 'G-87', '3', 'HERO', '87', 'M', '9876543456', 'CONFIRM');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010117', '106', 'MH-98', '5', 'YASH', '82', 'M', '8744567856', 'CONFIRM');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010118', '107', 'MJ-87', '7', 'YASHIKA', '34', 'F', '6421257778', 'WAITING');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010120', '167', 'KJ-90', '9', 'NANDII', '24', 'F', '7535678888', 'COMFIRM');
#creation of train table
create table train(
train_id int not null,
train_name varchar(30),
source varchar(30),
destination varchar(20),
arrival_time time,
departure_time time,
primary key(train_id));
INSERT INTO passenger  VALUES ('1010110', '110', 'AC-12', '4', 'MAHIMA', '19', 'F', '9999999999', 'CONFIRM');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010112', '101', 'AB-56', '6', 'AAYUSHI', '76', 'F', '7677655777', 'WAITING');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010113', '103', 'M-32', '8', 'AAYUSH', '23', 'M', '8653211345', 'CONFIRM');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010114', '104', 'M-21', '10', 'JATIN', '12', 'M', '7654678899', 'CONFIRM');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010115', '108', 'AC-54', '1', 'KIRAN', '54', 'F', '7543334567', 'WAITING');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010116', '105', 'G-87', '3', 'HERO', '87', 'M', '9876543456', 'CONFIRM');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010117', '106', 'MH-98', '5', 'YASH', '82', 'M', '8744567856', 'CONFIRM');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010118', '107', 'MJ-87', '7', 'YASHIKA', '34', 'F', '6421257778', 'WAITING');
INSERT INTO `railway`.`passenger` (`passenger_id`, `user_id`, `ticket_id`, `train_id`, `name`, `age`, `gender`, `contact_number`, `reservation_status`) VALUES ('1010120', '167', 'KJ-90', '9', 'NANDII', '24', 'F', '7535678888', 'COMFIRM');
#creation of trainstatus table(one to one relation--- train and trainstatus)
create table trainstatus(
train_id int not null unique,
booked_seats int  not null,
available_seats int not null,
waiting int ,
foreign key (train_id) references train(train_id));
insert into trainstatus(train_id,booked_seats,available_seats,waiting) values(10,280,293,11);
insert into trainstatus values(9,298,20,56);
insert into trainstatus values(8,46,45,10);
insert into trainstatus values(7,280,293,11);
insert into trainstatus values(6,298,20,56);
insert into trainstatus values(5,46,76,10);
insert into trainstatus values(4,180,293,11);
insert into trainstatus values(3,298,60,56);
insert into trainstatus values(2,280,293,11);
insert into trainstatus values(1,291,20,26);

#creation of payment table(one to one relation-- pasenger and payment)
create table payment(
payment_id int not null,
passenger_id int not null unique,
amount int,
date date,
primary key(payment_id),
foreign key(passenger_id) references passenger(passenger_id));
INSERT INTO `railway`.`payment` (`payment_id`, `passenger_id`, `amount`, `date`) VALUES ('1300', '1010109', '765', '2023-10-10');
INSERT INTO `railway`.`payment` (`payment_id`, `passenger_id`, `amount`, `date`) VALUES ('1202', '1010111', '723', '2023-09-12');
INSERT INTO `railway`.`payment` (`payment_id`, `passenger_id`, `amount`, `date`) VALUES ('1203', '1010112', '980', '2023-12-23');
INSERT INTO `railway`.`payment` (`payment_id`, `passenger_id`, `amount`, `date`) VALUES ('1204', '1010113', '677', '2023-05-10');
INSERT INTO `railway`.`payment` (`payment_id`, `passenger_id`, `amount`, `date`) VALUES ('1205', '1010114', '225', '2022-11-15');
INSERT INTO `railway`.`payment` (`payment_id`, `passenger_id`, `amount`, `date`) VALUES ('1206', '1010115', '989', '2021-10-29');
INSERT INTO `railway`.`payment` (`payment_id`, `passenger_id`, `amount`, `date`) VALUES ('1207', '1010116', '795', '2029-12-19');
INSERT INTO `railway`.`payment` (`payment_id`, `passenger_id`, `amount`, `date`) VALUES ('1208', '1010117', '788', '2023-02-20');
INSERT INTO `railway`.`payment` (`payment_id`, `passenger_id`, `amount`, `date`) VALUES ('1210', '1010108', '760', '2023-10-19');
#creation of booking table(one to one relation --- passenger and booking)
create table booking(
booking_id int not null primary key,
passenger_id int not null ,
train_id int not null,
mode_of_payment varchar(20),
date date,
foreign key(passenger_id) references passenger(passenger_id),
foreign key(train_id) references train(train_id));
insert into booking(BOOKING_ID,PASSENGER_ID,TRAIN_ID,MODE_OF_PAYMENT ,DATE)values(101,1010110,2,"UPI",'2023-09-01');
insert into booking values(112,1010130,4,"CREDIT CARD",'2023-09-08');
insert into booking values(103,1010113,1,"OFFLINE",'2023-08-06');
insert into booking values(104,1010114,3,"UPI",'2023-03-08');
insert into booking values(105,1010116,5,"UPI",'2023-09-01');
insert into booking(BOOKING_ID,PASSENGER_ID,TRAIN_ID,MODE_OF_PAYMENT ,DATE) values(106,1010121,2,"OFFLINE",'2023-02-07');
INSERT INTO `railway`.`booking` (`booking_id`, `passenger_id`, `train_id`, `mode_of_payment`, `date`) VALUES('107','1010117','8',"CREDIT CARD",'2023-02-08');
INSERT INTO `railway`.`booking` (`booking_id`, `passenger_id`, `train_id`, `mode_of_payment`, `date`) VALUES('108','1010119','9',"OFFLINE",'2023-07-01');


#creation of information table (many to many relation---passenger and train)
create table information(
passenger_id int not null,
train_id int not null,
primary key(passenger_id,train_id),
foreign key(passenger_id) references passenger(passenger_id),
foreign key(train_id) references train(train_id));
INSERT INTO `railway`.`information` (`passenger_id`, `train_id`) VALUES ('1010110', '3');
INSERT INTO `railway`.`information` (`passenger_id`, `train_id`) VALUES ('1010118', '9');
INSERT INTO `railway`.`information` (`passenger_id`, `train_id`) VALUES ('1010118', '6');
INSERT INTO `railway`.`information` (`passenger_id`, `train_id`) VALUES ('1010111', '2');
INSERT INTO `railway`.`information` (`passenger_id`, `train_id`) VALUES ('1010112', '3');
INSERT INTO `railway`.`information` (`passenger_id`, `train_id`) VALUES ('1010113', '4');
INSERT INTO `railway`.`information` (`passenger_id`, `train_id`) VALUES ('1010114', '5');
INSERT INTO `railway`.`information` (`passenger_id`, `train_id`) VALUES ('1010112', '8');
INSERT INTO `railway`.`information` (`passenger_id`, `train_id`) VALUES ('1010116', '9');

select *from user;
select *from booking;
select* from passenger;
select*from train;
select * from trainstatus;
select * from payment;
select * from information;


#retrival queries
select * from information where passenger_id='1010110';
select *  from user where first_name like 'a%';
select *  from user where first_name  not like 'm_%';
select first_name,last_name from user where first_name in ("aakash","yash","mahima");
select first_name,last_name from user where first_name not in ("aakash","yash","mahima");
select train_id, train_name from train where train_id between 2 and 6;
select * from information where passenger_id not between 1010115 and 1010119 order by train_id desc;
select * from booking where date between '2023-05-10' and '2023-08-28';
select booking_id ,date from booking order by date;


select max(amount) from payment;
select min(amount) from payment;
select avg(amount) from payment;
select count(passenger_id) from passenger;
select sum(booked_seats) from trainstatus ;
select user_id,first_name from user limit 3 offset 5;


# joins
select* from booking inner join passenger on booking.train_id=passenger.train_id;
select* from user inner join passenger on user.user_id=passenger.user_id ;

select* from booking left join payment on booking.passenger_id=payment.passenger_id;

select* from train RIGHT join trainstatus on train.train_id=trainstatus.train_id ;
SELECT* FROM INFORMATION FULL JOIN  BOOKING;
SELECT DISTINCT TRAIN_ID FROM information;
#SUBQUERIES
SELECT * FROM PAYMENT WHERE AMOUNT>(select AVG(AMOUNT) FROM payment);
select *from payment where amount > (select min(amount)from payment);
SELECT min(amount) FROM payment WHERE amount > (SELECT min(amount) FROM payment); 
SELECT min(available_seats) FROM trainstatus WHERE available_seats >
(SELECT min(available_seats) FROM trainstatus WHERE available_seats > (SELECT min(available_seats )FROM trainstatus));

SELECT *FROM PAYMENT P JOIN (select AVG(AMOUNT) AMOUNT FROM payment) AVG_AMOUNT ON P.AMOUNT> AVG_AMOUNT.AMOUNT;
-- Find passengers who have made payments
SELECT *FROM passenger WHERE passenger_id IN ( SELECT DISTINCT passenger_id FROM payment);
SELECT * FROM train WHERE train_id NOT IN (
SELECT DISTINCT train_id
    FROM booking
);
SELECT *
FROM trainstatus
WHERE booked_seats = (
    SELECT MAX(booked_seats)
    FROM trainstatus
);
SELECT *FROM passenger WHERE user_id IN ( SELECT user_id FROM user WHERE age > 40);
SELECT *FROM train WHERE train_id = (SELECT train_id FROM trainstatus ORDER BY available_seats DESC LIMIT 1 );
SELECT *FROM passenger WHERE passenger_id IN (SELECT passenger_id FROM booking WHERE mode_of_payment = 'Credit Card');
SELECT *FROM passenger WHERE train_id IN (SELECT train_id FROM train WHERE source = 'jaipur' AND destination = 'delhi');
SELECT AVG(age) as average_age FROM passenger WHERE train_id = ( SELECT train_id FROM train WHERE train_name = 'Express train');
SELECT *FROM train WHERE train_id IN ( SELECT train_id FROM trainstatus WHERE waiting > 0);
SELECT *FROM train WHERE train_id IN (SELECT train_id FROM trainstatus WHERE booked_seats > 50);
SELECT *FROM passenger WHERE passenger_id IN (SELECT passenger_id FROM booking WHERE date > '2022-05-01');
SELECT *FROM train WHERE train_id IN (SELECT train_id FROM trainstatus WHERE available_seats= (SELECT available_seats FROM train WHERE train_id = trainstatus.train_id));

DELIMITER //

CREATE TRIGGER BEFORE_TRAINSTATUS_TRIGGER
BEFORE INSERT ON trainstatus
FOR EACH ROW
BEGIN
    IF NEW.WAITING < 0 THEN
        SET NEW.WAITING = 0;
    END IF;
END;
//

DELIMITER ;

DELIMITER //





drop trigger after_trainstatus_trigger;

CREATE TRIGGER generate_ticket_id
BEFORE INSERT ON passenger
FOR EACH ROW
SET NEW.ticket_id = CONCAT('T', LPAD(NEW.passenger_id, 5, '0'));
DELIMETER //
DELIMITER //
DELIMITER //

CREATE TRIGGER check_booking_date
BEFORE INSERT ON booking
FOR EACH ROW
BEGIN
    IF NEW.date < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Booking date cannot be in the past';
    END IF;
END //

DELIMITER ;


CREATE TRIGGER check_passenger_age
BEFORE INSERT ON passenger
FOR EACH ROW
BEGIN
    IF NEW.age < 0 OR NEW.age > 150 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid passenger age';
    END IF;
END //

DELIMITER ;



DELIMITER //

CREATE TRIGGER check_train_capacity
BEFORE INSERT ON booking
FOR EACH ROW
BEGIN
    IF (SELECT booked_seats FROM trainstatus WHERE train_id = NEW.train_id) >= (SELECT capacity FROM train WHERE train_id = NEW.train_id) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Train is fully booked';
    END IF;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER check_duplicate_email
BEFORE INSERT ON user
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM user WHERE email = NEW.email) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Email address must be unique';
    END IF;
END //

DELIMITER ;

DELIMITER //
CREATE TRIGGER update_reservation_status
AFTER INSERT ON payment
FOR EACH ROW
BEGIN
    UPDATE passenger
    SET reservation_status = 'Paid'
    WHERE passenger_id = NEW.passenger_id;
END//
DELIMETER;
DELIMITER //
CREATE TRIGGER check_payment_amount
BEFORE INSERT ON payment
FOR EACH ROW
BEGIN
    IF NEW.amount < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Payment amount cannot be negative';
    END IF;
END //


DELIMITER ;



DELIMITER //

CREATE TRIGGER check_booking_time
BEFORE INSERT ON booking
FOR EACH ROW
BEGIN
    IF NEW.date > CURDATE() AND NEW.date > (SELECT departure_time FROM train WHERE train_id = NEW.train_id) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Booking cannot be made after train departure time';
    END IF;
END //

DELIMITER ;
INSERT INTO booking (train_id, date)
VALUES (123, '2023-12-01');






SHOW TRIGGERS;



