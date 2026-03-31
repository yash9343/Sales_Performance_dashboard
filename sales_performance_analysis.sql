-- Customer Wise Profit

select `Customer Name`, sum(Profit) as Total_profit
from clean_superstore
group by `Customer Name`
order by Total_profit desc;

-- Monthly Revenue Trends
 
select `Month`,`Year`,sum(Sales) as Revenue
from clean_superstore
group by `Year`,`Month`
order by `Year`,`Month`;

-- Top 10 Best Selling Product

select `Product Name`, sum(Sales) AS Total_Sales
from clean_superstore
group by `Product Name`
order by  Total_Sales DESC
limit 10;

-- Total sales by region

select Region, sum(sales) as Total_sales
from clean_superstore
group by Region
order by Total_sales desc  
  