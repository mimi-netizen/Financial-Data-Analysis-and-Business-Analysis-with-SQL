SELECT
	Country,
    AVG(__Sales_) AS Average_Sales,
    AVG(_Profit_) AS Average_Profit
FROM Financials
GROUP BY Country

SELECT
	AVG(__Sales_) as Avg_Sales,
    MAX(_Profit_) AS Max_Profit,
    SUM(_Units_Sold_) AS Total_Units_Sold
FROM Financials

