create table Products
(PId int identity,
PQ int,
PPrice float,
Discount float)

insert into Products values (5,50000.00,2.5)
insert into Products values (20,30000.00,3.5)
insert into Products values (3,50000.00,2.0)

--Calculating the Discounted Price using Build-in function
create function DiscountValue
(@PPrice float,@Discount float)
returns float
as
begin
return (select @PPrice - (@PPrice * @Discount / 100))
end

--details with price after discount
select PId , PPrice, Discount, dbo.DiscountValue(PPrice,Discount) as 'PriceAfterDiscount' from Products 