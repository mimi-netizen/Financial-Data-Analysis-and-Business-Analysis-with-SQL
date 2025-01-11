SELECT
    strftime('%m', substr(Date, 7, 4) || '-' || substr(Date, 4, 2) || '-' || substr(Date, 1, 2)) AS Month_Number,
    SUM(__Sales_) AS Total_Sales
FROM Financials
WHERE substr(Date, 7, 4) = '2014'
GROUP BY Month_Number
ORDER BY Total_Sales DESC;







