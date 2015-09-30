SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetWorkingDays]  
(  
    @startDate SMALLDATETIME,  
    @endDate SMALLDATETIME  
) 
RETURNS INT  
AS  
BEGIN 
    DECLARE @range INT; 
 
    SET @range = DATEDIFF(DAY, @startDate, @endDate)+1; 
 
    RETURN  
    ( 
        SELECT  
            @range / 7 * 5 + @range % 7 -  
            ( 
                SELECT COUNT(*)  
            FROM 
                ( 
                    SELECT 1 AS d 
                    UNION ALL SELECT 2  
                    UNION ALL SELECT 3  
                    UNION ALL SELECT 4  
                    UNION ALL SELECT 5  
                    UNION ALL SELECT 6  
                    UNION ALL SELECT 7 
                ) weekdays 
                WHERE d <= @range % 7  
                AND DATENAME(WEEKDAY, @endDate - d + 1)  
                IN 
                ( 
                    'Saturday', 
                    'Sunday' 
                ) 
            ) 
    ); 
END  


GO
