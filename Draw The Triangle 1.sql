DECLARE @counter INT = 20
WHILE (@counter > 0) 
BEGIN
   PRINT REPLICATE('* ', @counter) 
   SET @counter = @counter - 1
END
