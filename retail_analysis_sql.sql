CREATE DATABASE if not exists retail_analysis;
USE retail_analysis;
CREATE TABLE retail_data (
    Transaction_ID VARCHAR(20),
    Product_ID VARCHAR(20),
    Product_Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Purchase_Amount FLOAT,
    Cost_Price FLOAT,
    Profit FLOAT,
    Quantity INT,
    Inventory_Days INT,
    Transaction_Date DATE,
    Region VARCHAR(20),
    Season VARCHAR(20),
    Payment_Method VARCHAR(20),
    Month INT,
    Year INT,
    Day INT,
    Weekday VARCHAR(10),
    Profit_Margin FLOAT,
    Inventory_Turnover FLOAT,
    YearMonth VARCHAR(10)
);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cleaned_retail_data_for_SQL_and_powerbi.csv'
INTO TABLE retail_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
#Category-wise Profit & Profit Margin
SELECT 
    Product_Category,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Profit_Margin), 2) AS Avg_Profit_Margin
FROM retail_data
GROUP BY Product_Category
ORDER BY Total_Profit DESC;

#Top 10 Selling Sub-Categories by Revenue
SELECT 
    Sub_Category,
    ROUND(SUM(Purchase_Amount), 2) AS Total_Revenue
FROM retail_data
GROUP BY Sub_Category
ORDER BY Total_Revenue DESC
LIMIT 10;

#Regions with Lowest Profit Margin
SELECT 
    Region,
    ROUND(AVG(Profit_Margin), 2) AS Avg_Profit_Margin,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM retail_data
GROUP BY Region
ORDER BY Avg_Profit_Margin ASC;

#Inventory Turnover by Category
SELECT 
    Product_Category,
    ROUND(AVG(Inventory_Turnover), 2) AS Avg_Inventory_Turnover,
    ROUND(AVG(Inventory_Days), 2) AS Avg_Days_In_Inventory
FROM retail_data
GROUP BY Product_Category
ORDER BY Avg_Inventory_Turnover ASC;


#Seasonal Sales Trend
SELECT 
    Season,
    ROUND(SUM(Purchase_Amount), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM retail_data
GROUP BY Season
ORDER BY Total_Sales DESC;

#Best Performing Product Category per Region
SELECT 
    Region,
    Product_Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM retail_data
GROUP BY Region, Product_Category
ORDER BY Region, Total_Profit DESC;

