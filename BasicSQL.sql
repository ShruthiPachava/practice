create database database1;

use database1;


create table Bus(bus_no int not null primary key, 
               startingpoint varchar(50) not null, 
			   destination varchar(50) not null, 
			   distance int not null);



insert into Bus values(3453, 'hyderabad', 'karimnagar', 200);

insert into Bus values(2787, 'warangal', 'hyderabad', 150), 
                      (4829, 'chennai', 'warangal', 500);


select * from Bus;


Truncate table Bus;


Select * from Bus;



insert into Bus values(2787, 'warangal', 'hyderabad', 150), 
                      (4829, 'chennai', 'warangal',500),
		      (3453, 'hyderabad', 'karimnagar',200) ;

 

 
 update Bus set distance = 160 
 where startingpoint = 'warangal' and 
 destination = 'hyderabad';



select * from Bus where distance >= 200;


select * from Bus where distance > 100 and distance <= 200;


select * from Bus where distance = 200 or distance > 250;
 


 create table Passenger(p_id int primary key,
                     name varchar(100) not null, 
		    age int not null, 
		 bus_no int not null foreign key references Bus(bus_no));
 
 
 
 
 insert into Passenger values(101, 'Kavya', 35, 4829),
                              (102, 'Arun', 29, 2787), 
			     (103, 'Kavya', 23, 4829),
			(104, 'Akshaya', 32, 2787);
 
 
 
 
 select name from Passenger where name like 'A%';
 
 

 select * from Passenger order by bus_no;

 
 select * from Passenger order by bus_no desc ;

 
 
 select bus_no, count(*) as no_of_passengers 
          from Passenger group by bus_no; 

 
 
 select bus_no, count(*) as no_of_passengers 
          from Passenger 
          group by bus_no
          having count(*) > 1;

 
 
 select distinct name from Passenger;
 
 
 
 select count(distinct(name)) from Passenger;

 
 


 

