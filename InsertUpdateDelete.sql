-- Insert a new product 'Soap' with random sales and profit values
INSERT INTO Financials (_Product_, _Sales_, _Profit_)
VALUES ('Soap', 15000, 2000);

-- Update 'Soap' product with a new random sales value
UPDATE Financials
SET _Sales_ = 20000
WHERE _Product_ = 'Soap';

-- Delete the 'Soap' product from the table
DELETE FROM Financials
WHERE _Product_ = 'Soap';

SELECT _Product_, __Sales_, _Profit_
FROM Financials
WHERE _Product_ = 'Soap';