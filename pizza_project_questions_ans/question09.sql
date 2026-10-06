-- group the order by date and calculate the average 
--  number of pizza ordered per day;

select avg(daily_order) as average_order from 
(select orders.order_date as dates,
sum(order_details.quantity) as daily_order
from orders join order_details
on orders.order_id = order_details.order_id
group by dates) as order_quantity;