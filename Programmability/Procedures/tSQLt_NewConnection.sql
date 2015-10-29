SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [tSQLt].[NewConnection] (@command [nvarchar](max))
AS EXTERNAL NAME [tSQLtCLR].[tSQLtCLR.StoredProcedures].[NewConnection]
GO