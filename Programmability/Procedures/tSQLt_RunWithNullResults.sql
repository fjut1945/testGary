SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [tSQLt].[RunWithNullResults]
    @TestName NVARCHAR(MAX) = NULL
AS
BEGIN
  EXEC tSQLt.Private_Run @TestName, 'tSQLt.NullTestResultFormatter';
END;
GO