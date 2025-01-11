SELECT
	_Discount_Band_,
    SUM(__Sales_) AS Total_Sales,
    SUM(_Profit_) AS Total_Profit,
    (SUM(__Sales_)/SUM(_Profit_)) AS Profit_Margin
FROM Financials
GROUP BY _Discount_Band_
ORDER BY Total_Profit DESC;

    
	