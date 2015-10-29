SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [proba].[test check ufnGetContactInformation]
AS
BEGIN
    CREATE TABLE ACTUAL
    (
	   [PersonID] int NOT NULL, 
	   [FirstName] [nvarchar](50) NULL, 
	   [LastName] [nvarchar](50) NULL, 
	    [JobTitle] [nvarchar](50) NULL,
	   [BusinessEntityType] [nvarchar](50) NULL
    );

    DECLARE @personId int; 
    SET @personId = 1;

    INSERT INTO ACTUAL SELECT * FROM dbo.ufnGetContactInformation(@personId)

    CREATE TABLE EXPECTED 
    (
	   -- Columns returned by the function
	   [PersonID] int NOT NULL, 
	   [FirstName] [nvarchar](50) NULL, 
	   [LastName] [nvarchar](50) NULL, 
	    [JobTitle] [nvarchar](50) NULL,
	   [BusinessEntityType] [nvarchar](50) NULL
    );

    INSERT INTO EXPECTED VALUES (1, 'Ken', 'Sánchez', 'Chief Executive Officer','Employee')


    EXEC tSQLt.AssertEqualsTable 'EXPECTED', 'ACTUAL', 'ufnGetContactInformation returned wrong results'

    DROP TABLE ACTUAL
    DROP TABLE EXPECTED

END;
GO