SELECT
    _Product_,
    __Sales_,
    _Profit_
FROM Financials;

SELECT
    _Product_,
    AVG(_Profit_) AS Avg_Profit
FROM Financials
GROUP BY _Product_
ORDER BY Avg_Profit DESC;

SELECT Segment, _Product_, __Sales_, _Profit_
FROM Financials
WHERE Segment = 'Government';