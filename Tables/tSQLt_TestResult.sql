CREATE TABLE [tSQLt].[TestResult] (
  [Id] [int] IDENTITY,
  [Class] [nvarchar](max) NOT NULL,
  [TestCase] [nvarchar](max) NOT NULL,
  [Name] AS ((quotename([Class])+'.')+quotename([TestCase])),
  [TranName] [nvarchar](max) NOT NULL,
  [Result] [nvarchar](max) NULL,
  [Msg] [nvarchar](max) NULL,
  [TestStartTime] [datetime] NOT NULL CONSTRAINT [DF:TestResult(TestStartTime)] DEFAULT (getdate()),
  [TestEndTime] [datetime] NULL,
  PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO