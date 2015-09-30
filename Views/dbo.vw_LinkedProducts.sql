SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_LinkedProducts]
AS
SELECT      dbo.stk_LinkedProducts.lnk_ID, dbo.stk_LinkedProducts.lnk_CustACCode, dbo.cus_Customer.cus_ShortName, dbo.cus_Customer.cus_AccountName, 
                        dbo.stk_LinkedProducts.lnk_stk_ItemNo, dbo.stk_Products.stk_ItemDescription, dbo.stk_Products.stk_PackDescription, 
                        dbo.stk_LinkedProducts.lnk_CustItemNo, dbo.stk_LinkedProducts.lnk_CustItemDescription, dbo.stk_LinkedProducts.lnk_CustField1, 
                        dbo.stk_LinkedProducts.lnk_CustField2, dbo.stk_LinkedProducts.lnk_CustField3
FROM          dbo.stk_LinkedProducts WITH (NOLOCK) INNER JOIN
                        dbo.stk_Products WITH (NOLOCK) ON dbo.stk_LinkedProducts.lnk_stk_ItemNo = dbo.stk_Products.stk_ItemNo INNER JOIN
                        dbo.cus_Customer WITH (NOLOCK) ON dbo.stk_LinkedProducts.lnk_CustACCode = dbo.cus_Customer.cus_AccountNo


GO
