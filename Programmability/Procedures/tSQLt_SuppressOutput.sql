SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [tSQLt].[SuppressOutput] (@command [nvarchar](max))
AS EXTERNAL NAME [tSQLtCLR].[tSQLtCLR.StoredProcedures].[SuppressOutput]
GO