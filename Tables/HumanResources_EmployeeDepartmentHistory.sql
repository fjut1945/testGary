﻿CREATE TABLE [HumanResources].[EmployeeDepartmentHistory] (
  [BusinessEntityID] [int] NOT NULL,
  [DepartmentID] [smallint] NOT NULL,
  [ShiftID] [tinyint] NOT NULL,
  [StartDate] [date] NOT NULL,
  [EndDate] [date] NULL,
  [ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_EmployeeDepartmentHistory_ModifiedDate] DEFAULT (getdate()),
  CONSTRAINT [PK_EmployeeDepartmentHistory_BusinessEntityID_StartDate_DepartmentID] PRIMARY KEY CLUSTERED ([BusinessEntityID], [StartDate], [DepartmentID], [ShiftID]),
  CONSTRAINT [CK_EmployeeDepartmentHistory_EndDate] CHECK ([EndDate]>=[StartDate] OR [EndDate] IS NULL),
  CONSTRAINT [FK_EmployeeDepartmentHistory_Department_DepartmentID] FOREIGN KEY ([DepartmentID]) REFERENCES [HumanResources].[Department] ([DepartmentID]),
  CONSTRAINT [FK_EmployeeDepartmentHistory_Employee_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID]),
  CONSTRAINT [FK_EmployeeDepartmentHistory_Shift_ShiftID] FOREIGN KEY ([ShiftID]) REFERENCES [HumanResources].[Shift] ([ShiftID])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_EmployeeDepartmentHistory_DepartmentID]
  ON [HumanResources].[EmployeeDepartmentHistory] ([DepartmentID])
  ON [PRIMARY]
GO

CREATE INDEX [IX_EmployeeDepartmentHistory_ShiftID]
  ON [HumanResources].[EmployeeDepartmentHistory] ([ShiftID])
  ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Employee department transfers.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Employee identification number. Foreign key to Employee.BusinessEntityID.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'COLUMN', N'BusinessEntityID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Department in which the employee worked including currently. Foreign key to Department.DepartmentID.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'COLUMN', N'DepartmentID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Identifies which 8-hour shift the employee works. Foreign key to Shift.Shift.ID.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'COLUMN', N'ShiftID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Date the employee started work in the department.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'COLUMN', N'StartDate'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Date the employee left the department. NULL = Current department.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'COLUMN', N'EndDate'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'COLUMN', N'ModifiedDate'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'INDEX', N'IX_EmployeeDepartmentHistory_DepartmentID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'INDEX', N'IX_EmployeeDepartmentHistory_ShiftID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'INDEX', N'PK_EmployeeDepartmentHistory_BusinessEntityID_StartDate_DepartmentID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'CONSTRAINT', N'PK_EmployeeDepartmentHistory_BusinessEntityID_StartDate_DepartmentID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NUL', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'CONSTRAINT', N'CK_EmployeeDepartmentHistory_EndDate'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Department.DepartmentID.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'CONSTRAINT', N'FK_EmployeeDepartmentHistory_Department_DepartmentID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Employee.EmployeeID.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'CONSTRAINT', N'FK_EmployeeDepartmentHistory_Employee_BusinessEntityID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Shift.ShiftID', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'CONSTRAINT', N'FK_EmployeeDepartmentHistory_Shift_ShiftID'
GO