SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [tSQLt].[ResultSetFilter] (@ResultsetNo [int], @Command [nvarchar](max))
AS EXTERNAL NAME [tSQLtCLR].[tSQLtCLR.StoredProcedures].[ResultSetFilter]
GO