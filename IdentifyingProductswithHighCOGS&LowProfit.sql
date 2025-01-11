SELECT
	CONCAT(_Product_,'_',Segment,'-',Country) AS Unique_ID,
    _Product_,
    _COGS_,
    _Profit_,
    (_Profit_/_COGS_) AS Profit_COGS_Ratio
FROM Financials
WHERE _COGS_ > 50000 AND _Profit_ < 10000
ORDER BY Profit_COGS_Ratio ASC;
	



