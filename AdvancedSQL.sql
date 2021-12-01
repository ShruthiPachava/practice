use database1;

 
 create table votingSystem(
               v_id int not null primary key, 
		name varchar(50), 
	       age int check(age >=18)); 

 

 select * from Bus b, Passenger p 
          where b.bus_no = p.bus_no;

 
 
 select p.name from Bus b, Passenger p 
          where b.bus_no = p.bus_no 
		  and b.distance >=200;


 select p.p_id, p.name from Passenger p, Bus b 
           where p.bus_no = b.bus_no 
           and b.distance >= 
           (select AVG(distance) from Bus);



select bus.bus_no from bus 
               where distance = 
	       (select MIN(distance) from Bus);



select count(*) as no_of_passengers
                from Passenger ;
		   
 
 select sum(p_id) from Passenger;


 select max(distance) from Bus;


 select count(distinct(name)) from Passenger;



select * from Passenger p
          inner join Bus b
	  on b.bus_no = p.bus_no;



select * from Passenger p
         full join Bus b
         on b.bus_no = p.bus_no;



select * from Passenger 
          left join Bus 
	  on Passenger.bus_no = Bus.bus_no;




select * from Passenger p
         right join Bus b
	 on p.bus_no = b.bus_no;




select p1.name , p2.name 
         from Passenger p1, Passenger p2 
	 where p1.bus_no = p2.bus_no 
         and p1.name <> p2.name;



create view v2 as
          select p_id, name 
	 from Passenger 
         where name like '%a';



drop view v2;



create table tickets(
                  ticket_no int not null primary key,
		   p_id int 
		  foreign key references Passenger(p_id),
		  b_no int not null);




create sequence next_no
         start with 100
          increment by 1;



select next value for next_no;



insert into tickets 
           values(next value for next_no, 101, 2343);



select next value for next_no;



drop sequence next_no;



create index index1 on tickets(ticket_no);



create unique index index2 on tickets(ticket_no, b_no);



drop index tickets.index1;



select bus_no from Bus 
union 
select b_no from tickets;

