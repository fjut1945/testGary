SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [tSQLt].[AssertResultSetsHaveSameMetaData] (@expectedCommand [nvarchar](max), @actualCommand [nvarchar](max))
AS EXTERNAL NAME [tSQLtCLR].[tSQLtCLR.StoredProcedures].[AssertResultSetsHaveSameMetaData]
GO