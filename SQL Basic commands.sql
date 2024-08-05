create database company;
use company;
create table salesforce(employee_id varchar(100),
age int,
salary int);

#add a column/record to a table
alter table salesforce add phonenumber long;

#drop a column/record
alter table salesforce drop age;

#add a 2-3 columns/records to a table
alter table salesforce add age int,add sex varchar(100);

#giving values to a table
insert into salesforce values(234567,25000,25,"F",9876543210);
insert into salesforce values(234568,35000,27,"F",8765483210);
insert into salesforce values(234569,25700,24,"M",7658843210);
insert into salesforce values(234510,45000,24,"F",8765433210);
insert into salesforce values(234511,55000,26,"M",9876523210);

#update command
update salesforce 
set sex="M"
where employee_id=234568;

#between command
select salary from salesforce 
where salary between 25000 and 45000;

#display a random values in table
select rand(company);

