SELECT
	_Product_,
    SUM(__Sales_) AS Total_Sales,
    SUM(_Profit_) AS Total_Profit,
    (SUM(_Profit_)/SUM(__Sales_)) AS Profit_Margin
FROM Financials
Group BY _product_
ORDER BY Profit_Margin DESC
	