SELECT 
    CASE 
        WHEN G.Grade > 7 
        THEN S.Name 
        ELSE NULL 
    END AS Names,
    G.Grade,
    S.Marks
    
FROM 
    Students S
    
INNER JOIN 
    Grades G ON S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
    
ORDER BY 
    G.Grade DESC,
    Names ASC,
    S.Marks ASC;
