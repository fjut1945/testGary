CREATE TABLE [Person].[Address2] (
  [AddressID] [int] IDENTITY,
  [AddressLine1] [nvarchar](60) NOT NULL,
  [AddressLine2] [nvarchar](60) NULL,
  [City1] [nvarchar](30) NOT NULL,
  [StateProvinceID] [int] NOT NULL,
  [PostalCode] [nvarchar](15) NOT NULL,
  [SpatialLocation] [geography] NULL,
  [rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL,
  [ModifiedDate] [datetime] NOT NULL,
  [test] [nchar](10) NULL,
  CONSTRAINT [PK_Address_AddressID2] PRIMARY KEY CLUSTERED ([AddressID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO