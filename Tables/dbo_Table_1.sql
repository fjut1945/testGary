CREATE TABLE [dbo].[Table_1] (
  [test] [nchar](14) NOT NULL,
  [asd1] [date] NULL CONSTRAINT [DF__Table_1__asd__7E77B618] DEFAULT (getutcdate()),
  CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED ([test])
)
ON [PRIMARY]
GO