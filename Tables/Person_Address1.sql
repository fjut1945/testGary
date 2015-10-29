CREATE TABLE [Person].[Address1] (
  [AddressID] [int] IDENTITY,
  [AddressLine1] [nvarchar](60) NOT NULL,
  [AddressLine2] [nvarchar](60) NULL,
  [City] [nvarchar](30) NOT NULL,
  [StateProvinceID] [int] NOT NULL,
  [PostalCode] [nvarchar](15) NOT NULL,
  [SpatialLocation] [geography] NULL,
  [rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL,
  [ModifiedDate] [datetime] NOT NULL,
  [test] [nchar](10) NULL,
  CONSTRAINT [PK_Address_AddressID1] PRIMARY KEY CLUSTERED ([AddressID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO