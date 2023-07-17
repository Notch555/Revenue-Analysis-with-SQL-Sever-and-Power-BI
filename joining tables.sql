--joining three tables and temporarily saving it in a variable "hotels"
with hotels as(
select *from dbo.['2018$']
union
select *from dbo.['2019$']
union
select *from dbo.['2020$'])

select * from hotels
left join market_segment$
on hotels.market_segment = market_segment$.market_segment
left join meal_cost$
on meal_cost$.meal = hotels.meal