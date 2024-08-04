select * from sales

select * from customer

select * from product

-- 1) inner join 
	
select  c.customer_id, c.segment, c.age, s.ship_mode, s.product_id from sales as s
inner join customer as c
on c.customer_id = s.customer_id

-- 2) left join
	
select s.order_id, s.sales, s.profit, c.customer_id, c.age, c.city from sales as s
left join customer as c
on s.customer_id = c.customer_id

-- 3) right join
	
select  c.customer_id, c.country, c.state, s.order_id, s.ship_mode, s.quantity from sales as s
right join customer as c
on s.customer_id = c.customer_id

-- 4) full join

select s.customer_id , s.product_id, s.order_id, c.customer_name, c.segment from sales as s
full join customer as c
on s.customer_id = c.customer_id

-- 5)inner join

select s.customer_id , s.product_id, s.order_id, c.customer_name, c.segment from sales as s
inner join customer as c
on s.customer_id = c.customer//_id

-- 6) left join

select p.product_id ,p.category ,c.customer_id ,c.customer_name ,c.age  from customer as c
left join product as p
on c.customer_id =product_id
	
	
-- 7) 3 tables join
	
select s.customer_id , s.product_id, s.order_id, c.customer_name, c.segment, p.product_id, p.category from sales as s
inner join customer as c
on s.customer_id = c.customer_id
inner join product as p
on s.product_id = p.product_id