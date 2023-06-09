DECLARE @orderCount INT;
EXEC GetOrderCountByCustomer @customerID = 1, @orderCount = @orderCount OUTPUT;
SELECT @orderCount AS OrderCount;
