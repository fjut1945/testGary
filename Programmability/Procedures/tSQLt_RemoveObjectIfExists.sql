SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
---BUILD+
CREATE PROCEDURE [tSQLt].[RemoveObjectIfExists] 
    @ObjectName NVARCHAR(MAX),
    @NewName NVARCHAR(MAX) = NULL OUTPUT
AS
BEGIN
  EXEC tSQLt.RemoveObject @ObjectName = @ObjectName, @NewName = @NewName OUT, @IfExists = 1;
END;
---Build-
GO