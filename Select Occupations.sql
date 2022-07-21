SELECT 
    Doctor, 
    Professor, 
    Singer, 
    Actor

FROM
    (
        SELECT ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) RowNumber, Name, Occupation 
        FROM OCCUPATIONS
    ) AS Source 
PIVOT
    (
        MIN(Name) FOR Occupation IN (Doctor, Professor, Singer, Actor) 
    ) AS PVT

ORDER BY 
    RowNumber
