DECLARE @table TABLE (PrimeNumber INT)

DECLARE @final AS VARCHAR(1500)
SET @final = ''

DECLARE @Counter INT
SET @Counter = 2

WHILE(@Counter <= 1000)
BEGIN

    IF NOT EXISTS(SELECT PrimeNumber FROM @table WHERE @Counter % PrimeNumber = 0)

    BEGIN
        INSERT INTO @table SELECT @Counter SET @final = @final + CAST(@Counter AS VARCHAR(20))+'&'
    END

    SET @Counter += 1
END

SELECT SUBSTRING(@final, 0, LEN(@final))
