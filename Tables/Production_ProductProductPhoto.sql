CREATE TABLE [Production].[ProductProductPhoto] (
  [ProductID] [int] NOT NULL,
  [ProductPhotoID] [int] NOT NULL,
  [Primary] [dbo].[Flag] NOT NULL CONSTRAINT [DF_ProductProductPhoto_Primary] DEFAULT (0),
  [ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_ProductProductPhoto_ModifiedDate] DEFAULT (getdate()),
  CONSTRAINT [PK_ProductProductPhoto_ProductID_ProductPhotoID] PRIMARY KEY NONCLUSTERED ([ProductID], [ProductPhotoID]),
  CONSTRAINT [FK_ProductProductPhoto_Product_ProductID] FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID]),
  CONSTRAINT [FK_ProductProductPhoto_ProductPhoto_ProductPhotoID] FOREIGN KEY ([ProductPhotoID]) REFERENCES [Production].[ProductPhoto] ([ProductPhotoID])
)
ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Cross-reference table mapping products and product photos.', 'SCHEMA', N'Production', 'TABLE', N'ProductProductPhoto'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Product identification number. Foreign key to Product.ProductID.', 'SCHEMA', N'Production', 'TABLE', N'ProductProductPhoto', 'COLUMN', N'ProductID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Product photo identification number. Foreign key to ProductPhoto.ProductPhotoID.', 'SCHEMA', N'Production', 'TABLE', N'ProductProductPhoto', 'COLUMN', N'ProductPhotoID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'0 = Photo is not the principal image. 1 = Photo is the principal image.', 'SCHEMA', N'Production', 'TABLE', N'ProductProductPhoto', 'COLUMN', N'Primary'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'ProductProductPhoto', 'COLUMN', N'ModifiedDate'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Nonclustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'ProductProductPhoto', 'INDEX', N'PK_ProductProductPhoto_ProductID_ProductPhotoID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'ProductProductPhoto', 'CONSTRAINT', N'PK_ProductProductPhoto_ProductID_ProductPhotoID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Product.ProductID.', 'SCHEMA', N'Production', 'TABLE', N'ProductProductPhoto', 'CONSTRAINT', N'FK_ProductProductPhoto_Product_ProductID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing ProductPhoto.ProductPhotoID.', 'SCHEMA', N'Production', 'TABLE', N'ProductProductPhoto', 'CONSTRAINT', N'FK_ProductProductPhoto_ProductPhoto_ProductPhotoID'
GO