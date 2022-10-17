select customer_name as 'customer Name', customer_segment as 'Customer Segment' from superstores.cust_dimen;
Select * from superstores.cust_dimen order by customer_Name desc;
Select order_id, order_date, order_priority from superstores.orders_dimen where Order_Priority = 'high';
Select avg(sales) as avg_sales, sum(sales) as total_sales from superstores.market_fact;
Select max(sales), min(sales) from superstores.market_fact;
Select region, count(*)as no_of_customers from superstores.cust_dimen group by Region order by No_of_customers desc;
Select region, Count(*) as no_of_customers from superstores.cust_dimen group by Region order by No_of_customers desc limit 1;
select customer_name, count(market_fact.prod_id) from superstores.cust_dimen join market_fact on market_fact.Cust_id = cust_dimen.Cust_id
join prod_dimen on prod_dimen.Prod_id = market_fact.Prod_id
where cust_dimen.Region = 'atlantic' and prod_dimen.Product_Sub_Category = 'tables' group by cust_dimen.Customer_Name;
Select customer_name, customer_segment from superstores.cust_dimen where 'Ontario' = Province and Customer_segment = 'small Business';
select market_fact.Prod_id, Count(*) as No_of_products_sold from superstores.market_fact
group by superstores.market_fact.Prod_id order by superstores.market_fact.Prod_id desc;
select prod_id, product_sub_category from superstores.prod_dimen
where Product_Category in ('Technology', 'furniture');
Select prod_dimen.Product_category, market_fact.Profit From superstores.market_fact
natural join prod_dimen group by Product_Category order by Product_Category desc;
Select prod_dimen.Product_category, market_fact.Profit, prod_dimen.Product_Sub_Category From superstores.market_fact
natural join prod_dimen group by Product_sub_Category, Product_Category;
select orders_dimen.Order_date, market_fact.Order_Quantity, market_fact.Sales from superstores.orders_dimen natural join market_fact;
select customer_name from superstores.cust_dimen where customer_name like '_r%';
select customer_name from superstores.cust_dimen where customer_name like '___d%';
Select cust_dimen.Cust_id, market_fact.Sales, cust_dimen.Region, cust_dimen.Customer_name from superstores.cust_dimen
Natural join superstores.market_fact where superstores.market_fact.Sales between 1000 and 5000
group by superstores.market_fact.Cust_id;
select sales from superstores.market_fact order by sales desc limit 1 offset 2;
