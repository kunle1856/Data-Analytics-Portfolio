#There are three dataset i.e the transaction dataset which contains the sales transaction of the company, there is the customer's list which contains 
#the customers details such as occuaption, gender, decreased status etc, and there is the customer's address 
#so let's join the three table depending on the needed columns and also obtain the profit by subtracting list price from standard cost.

CREATE TABLE complete_customer_data AS
SELECT
    t.product_id,
    t.customer_id AS t_customer_id,
    t.transaction_date,
    t.online_order,
    t.order_status,
    t.brand,
    t.product_class,
    t.product_line,
    t.product_size,
    t.list_price,
    t.standard_cost,
    (t.list_price - t.standard_cost) AS profit,
    c.customer_id AS c_customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    c.gender,
    c.DOB,
    c.job_industry_category,
    c.wealth_segment,
    a.customer_id AS a_customer_id,
    a.state,
    a.property_valuation
FROM transactions t
JOIN customer_list c ON t.customer_id = c.customer_id
JOIN customeraddress a ON c.customer_id = a.customer_id;

#To get everything in the data:
select * from complete_customer_data;

#The top ten customers based on profit:
select full_name, profit from complete_customer_data
order by profit desc
limit 10;

#The customers whose profit are above 1000
select full_name, profit from complete_customer_data
where profit > 1000
order by profit desc;

#The product line that has the most profit in total
select product_line, round(sum(Profit), 2) as Profit from complete_customer_data
group by product_line
order by profit;

#The state where total profit was greater than average profit from customers
select state,  round(sum(Profit), 2) as Profit from complete_customer_data
where Profit > (select round(Avg(Profit), 2) from complete_customer_data)
group by state
order by Profit desc;

#Let's get each customers profit percent
select sum(profit) as profit from complete_customer_data;
select full_name, concat(round(((Profit/21396682.13)*100), 4), "%") as customer_profit_percent from complete_customer_data
order by customer_profit_percent desc;

#Let's create a store procedure to get the top ten customer based on profit.
delimiter &&
create procedure top_five_customers()
begin
select Full_Name, Profit
from complete_customer_data order by Profit DESC
Limit 10 ;
End  &&
delimiter ;

call top_five_customers(); -- calling for the top customers based on sales.

#let's get customers who bought good between april to july
select full_name, transaction_date from complete_customer_data
where transaction_date between "01/04/2017" and "01/07/2017"
order by transaction_date;

#sum of profit by Brand depending on their product line
SELECT Brand, product_line, SUM(profit) AS profit
FROM complete_customer_data
GROUP BY Brand, product_line
ORDER BY profit;

#let's compare the profit from state and profit from individual.
 with individual_profit (t_customer_id, full_name, state, profit, profit_by_state)
 as(
 select t_customer_id, full_Name, state, profit, sum(profit) over (partition by state order by state) as profit_by_state 
from complete_customer_data
 )
select *, (profit/profit_by_state)*100 as profit_from_individual from individual_profit;
