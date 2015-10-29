CREATE TABLE [tSQLt].[Private_RenamedObjectLog] (
  [Id] [int] IDENTITY,
  [ObjectId] [int] NOT NULL,
  [OriginalName] [nvarchar](max) NOT NULL,
  CONSTRAINT [PK__Private_RenamedObjectLog__Id] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO