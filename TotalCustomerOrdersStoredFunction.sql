CREATE PROCEDURE GetOrderCountByCustomer
  @customerID INT,
  @orderCount INT OUTPUT
AS
BEGIN
  SELECT @orderCount = COUNT(*) 
  FROM sales.orders
  WHERE customer_id = @customerID;
END;
GO

