create database Exercise3Db
use Exercise3Db

create table CompanyInfo
(CId int identity primary key,
CName nvarchar(50))

create table ProductInfo
(PId int identity(101,1),
PName nvarchar(50),
PPrice float,
PMDate date,
CId int foreign key references CompanyInfo)

insert into CompanyInfo values ('Samsung')
insert into CompanyInfo values ('HP')
insert into CompanyInfo values ('Apple')
insert into CompanyInfo values ('Dell')
insert into CompanyInfo values ('Toshiba')
insert into CompanyInfo values ('Redmi')

select * from CompanyInfo

insert into ProductInfo values('Laptop',55000.90,'12/12/2023',1)
insert into ProductInfo values('Laptop',35000.90,'12/12/2012',2)
insert into ProductInfo values('Mobile',15000.90,'12/03/2012',2)
insert into ProductInfo values('Laptop',135000.90,'12/12/2012',3)
insert into ProductInfo values('Mobile',65000.90,'12/12/2012',3)
insert into ProductInfo values('Laptop',35000.90,'12/12/2012',5)
insert into ProductInfo values('Mobile',35000.90,'12/01/2012',5)
insert into ProductInfo values('Earpod',1000.90,'12/01/2022',3)
insert into ProductInfo values('Laptop',85000.90,'12/12/2021',6)
insert into ProductInfo values('Mobile',55000.90,'12/12/2020',1)

select * from ProductInfo
drop table ProductInfo

--All Companies and Product details
select * from CompanyInfo c join ProductInfo p on c.CId = p.CId

--All products name and their respective Company name
select p.PName, c.CName from CompanyInfo c join ProductInfo p on c.CId=p.CId

--All possible Combinations of company and products
select * from CompanyInfo c full outer join ProductInfo p on c.CId = p.CId
