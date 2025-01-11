WITH Monthly_Sales AS (
  SELECT
    strftime('%m', substr(Date, 7, 4) || '-' || substr(Date, 4, 2) || '-' || substr(Date, 1, 2)) AS Month_Number,
    SUM(__Sales_) AS Total_Sales
  FROM Financials
  WHERE substr(Date, 7, 4) = '2014'
  GROUP BY Month_Number
),
GrowthRate AS(
  SELECT
  	Month_Number,
  	Total_Sales,
  	ROUND((Total_Sales - LAG(Total_Sales) OVER (ORDER BY Month_Number)) * 1.0/LAG(Total_Sales) OVER (ORDER BY Month_Number), 4) AS Monthly_Growth
  FROM Monthly_Sales
),
AvgGrowth AS(
  SELECT
  	ROUND(AVG(Monthly_Growth),4) AS Avg_Monthly_Growth
  FROM GrowthRate
)
SELECT
	Month_Number,
  	Total_Sales,
    Monthly_Growth,
    (SELECT Avg_Monthly_Growth FROM AvgGrowth) AS Avg_Monthly_Growth,
    CASE
    	WHEN Month_Number = '12' THEN ROUND(Total_Sales * (1 + (SELECT Avg_Monthly_Growth fROM AvgGrowth)),2)
        ELSE NULL
    END AS Projected_Sales_13th_Month
FROM GrowthRate


 
  	



