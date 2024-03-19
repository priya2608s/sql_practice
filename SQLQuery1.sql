select*from [sampletab]
where [Order Priority] = 'Low'

select*from [sampletab]
order by [Order Quantity]asc

select top 2*from [sampletab]
order by [Customer Name]

select Sales as Total_Sales from sampletab

select distinct [Customer Segment] FROM sampletab

select count (*) from sampletab
where [Order Priority]= 'High'

select MAX (sales) as max_sales from [sampletab]
select min(sales) as min_sales from sampletab

drop table Table2

create table Table1(
Stud_Id int,
Stud_Name varchar(20),
Subject varchar (20),
Marks int)


----Book1.csv
bulk insert Table1 from 'C:\Users\priya\OneDrive\Desktop\csv.csv'
with(
firstrow = 2,
rowterminator = '\n',
fieldterminator = ',')

create table Table2(
Stud_Id int,
Stud_Name varchar(20),
Subject varchar (20),
Marks int)

----Book2.csv

bulk insert Table2 from 'C:\Users\priya\OneDrive\Desktop\csv2.csv'
with(
firstrow = 2,
rowterminator = '\n',
fieldterminator = ',')

select*from Table1
select*from Table2

select Stud_Name from Table1
union
select Stud_Name from Table2

select Stud_Name from Table1
union all
select Stud_Name from Table2

select*from  Table1 A
inner join
Table2 B
on A.Stud_Id = B.Stud_Id


select*from  Table1 A
RIGHT join
Table2 B
on A.Stud_Id = B.Stud_Id



select A.*, B.* from  Table1 A
LEFT join
Table2 B
on A.Stud_Id = B.Stud_Id


create table TAB1(name varchar(20))

insert into TAB1 (name)
values 
('A'),
('B'),
('C'),
('D'),
('D'),
('E'),
('F')


create table TAB2(name varchar(20))

insert into TAB2 (name)
values
('A'),
('A'),
('B'),
('B'),
('D'),
('E'),
('G')


SELECT*from TAB1
select*from TAB2

SELECT name from TAB1
UNION all
SELECT name from TAB2

SELECT*FROM TAB1
LEFT JOIN
TAB2
ON TAB1.name=TAB2.name
