with hotels as
(select * from hotel_2018
union
select * from hotel_2019
union
select * from hotel_2020)

select * from hotels
left join market_segment
on hotels.market_segment = market_segment.market_segment_name
left join meal_cost
on hotels.meal = meal_cost.meal_name


-- Query for analysis
select arrival_date_year, hotel,
sum((stays_in_week_nights+stays_in_weekend_nights) * adr) as revenue 
from hotels
group by arrival_date_year, hotel

