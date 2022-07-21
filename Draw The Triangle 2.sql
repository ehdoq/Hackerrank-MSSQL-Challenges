DECLARE @counter INT = 1
WHILE (@counter < 21) 
BEGIN
   PRINT REPLICATE('* ', @counter) 
   SET @counter = @counter + 1
END
