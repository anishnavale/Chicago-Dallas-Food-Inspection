CREATE TABLE [Dim_Foodplaces] (
  [FoodPlacesSK] int  NOT NULL IDENTITY PRIMARY KEY,
  [Restaurant_Name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AKA_Name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [StreetAddress] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [City] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [State] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Zip] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Latitude] float(53)  NULL,
  [Longitude] float(53)  NULL,
  [FacilityType] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LicenseSK] int  NULL,
  [DI_CreateDate] datetime  NULL,
  [DI_WorkflowFileName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DI_WorkflowDirectory] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO
ALTER TABLE [Dim_Foodplaces] SET (LOCK_ESCALATION = TABLE)
GO

CREATE TABLE [Dim_InspectionType] (
  [InspectionTypeSK] int  NOT NULL IDENTITY PRIMARY KEY,
  [InspectionType] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DI_CreateDate] datetime  NULL,
  [DI_WorkflowFileName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DI_WorkflowDirectory] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO
ALTER TABLE [Dim_InspectionType] SET (LOCK_ESCALATION = TABLE)
GO

CREATE TABLE [Dim_License] (
  [LicenseSK] int  NOT NULL IDENTITY PRIMARY KEY,
  [ID] char(16) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LICENSE ID] int  NULL,
  [ACCOUNT NUMBER] int  NULL,
  [SITE NUMBER] smallint  NULL,
  [LEGAL NAME] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DOING BUSINESS AS NAME] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ADDRESS] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CITY] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [STATE] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ZIP CODE] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [WARD] int  NULL,
  [PRECINCT] smallint  NULL,
  [WARD PRECINCT] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [POLICE DISTRICT] int  NULL,
  [LICENSE CODE] smallint  NULL,
  [LICENSE DESCRIPTION] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BUSINESS ACTIVITY ID] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BUSINESS ACTIVITY] varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LICENSE NUMBER] int  NULL,
  [APPLICATION TYPE] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ApplicationCreatedDateSK] int  NULL,
  [ApplicationRequirementsCompleteSK] int  NULL,
  [PaymentDateSK] int  NULL,
  [CONDITIONAL APPROVAL] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LicenseTermStartDateSK] int  NULL,
  [LicenseTermExpirationDateSK] int  NULL,
  [LicenseApprovedForIssuanceSK] int  NULL,
  [DateIssuedSK] int  NULL,
  [LICENSE STATUS] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LicenseStatusChangeDateSK] int  NULL,
  [SSA] int  NULL,
  [LATITUDE] float(53)  NULL,
  [LONGITUDE] float(53)  NULL,
  [LOCATION] char(40) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DI_CreateDate] datetime  NULL,
  [DI_WorkflowFileName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DI_WorkflowDirectory] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO
ALTER TABLE [Dim_License] SET (LOCK_ESCALATION = TABLE)
GO

CREATE TABLE [Dim_Results] (
  [ResultsSK] int  NOT NULL IDENTITY PRIMARY KEY,
  [Result] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DI_CreateDate] datetime  NULL,
  [DI_WorkflowFileName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DI_WorkflowDirectory] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO
ALTER TABLE [Dim_Results] SET (LOCK_ESCALATION = TABLE)
GO

CREATE TABLE [Dim_Risk] (
  [RiskSK] int  NOT NULL IDENTITY PRIMARY KEY,
  [Risk] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DI_CreateDate] datetime  NULL,
  [DI_WorkflowFileName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DI_WorkflowDirectory] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO
ALTER TABLE [Dim_Risk] SET (LOCK_ESCALATION = TABLE)
GO

CREATE TABLE [Dim_Violation] (
  [ViolationSK] int  NOT NULL IDENTITY PRIMARY KEY,
  [ViolationCode] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ViolationDescription] varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DI_CreateDate] datetime  NULL,
  [DI_WorkflowFileName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DI_WorkflowDirectory] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO
ALTER TABLE [Dim_Violation] SET (LOCK_ESCALATION = TABLE)
GO

CREATE TABLE [Fct_FoodInspection] (
  [InspectionSK] int  NOT NULL IDENTITY PRIMARY KEY,
  [FoodPlacesSK] int  NULL,
  [InspectionDateSK] int  NULL,
  [ResultSK] int  NULL,
  [RiskSK] int  NULL,
  [InspectionScore] int  NULL,
  [InspectionTypeSK] int  NULL,
  [InspectionFYYear] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
	[InspectionId] int,
  [DI_CreateDate] datetime  NULL,
  [DI_WorkflowFileName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DI_WorkflowDirectory] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO
ALTER TABLE [Fct_FoodInspection] SET (LOCK_ESCALATION = TABLE)
GO

CREATE TABLE [Fct_FoodInspectionViolation] (
  [FoodInsepectionViolationSK] int  NOT NULL IDENTITY PRIMARY KEY,
  [ViolationSK] int  NULL,
  [ViolationDetail] varchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ViolationMemo] varchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ViolationPoints] int  NULL,
  [InspectionSK] int  NULL,
  [DI_CreateDate] datetime  NULL,
  [DI_WorkflowFileName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DI_WorkflowDirectory] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
)
GO
ALTER TABLE [Fct_FoodInspectionViolation] SET (LOCK_ESCALATION = TABLE)
GO

ALTER TABLE [Dim_Foodplaces] ADD CONSTRAINT [fk_Dim_Foodplaces_Dim_License_1] FOREIGN KEY ([LicenseSK]) REFERENCES [Dim_License] ([LicenseSK]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Dim_License] ADD CONSTRAINT [fk_Dim_License_DIM_Date_1] FOREIGN KEY ([LicenseTermStartDateSK]) REFERENCES [DIM_Date] ([date_sk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Dim_License] ADD CONSTRAINT [fk_Dim_License_DIM_Date_2] FOREIGN KEY ([LicenseTermExpirationDateSK]) REFERENCES [DIM_Date] ([date_sk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Dim_License] ADD CONSTRAINT [fk_Dim_License_DIM_Date_3] FOREIGN KEY ([ApplicationCreatedDateSK]) REFERENCES [DIM_Date] ([date_sk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Dim_License] ADD CONSTRAINT [fk_Dim_License_DIM_Date_4] FOREIGN KEY ([ApplicationRequirementsCompleteSK]) REFERENCES [DIM_Date] ([date_sk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Dim_License] ADD CONSTRAINT [fk_Dim_License_DIM_Date_5] FOREIGN KEY ([PaymentDateSK]) REFERENCES [DIM_Date] ([date_sk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Dim_License] ADD CONSTRAINT [fk_Dim_License_DIM_Date_6] FOREIGN KEY ([LicenseApprovedForIssuanceSK]) REFERENCES [DIM_Date] ([date_sk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Dim_License] ADD CONSTRAINT [fk_Dim_License_DIM_Date_7] FOREIGN KEY ([DateIssuedSK]) REFERENCES [DIM_Date] ([date_sk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Dim_License] ADD CONSTRAINT [fk_Dim_License_DIM_Date_8] FOREIGN KEY ([LicenseStatusChangeDateSK]) REFERENCES [DIM_Date] ([date_sk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Fct_FoodInspection] ADD CONSTRAINT [fk_Fct_FoodInspection_Dim_Foodplaces_1] FOREIGN KEY ([FoodPlacesSK]) REFERENCES [Dim_Foodplaces] ([FoodPlacesSK]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Fct_FoodInspection] ADD CONSTRAINT [fk_Fct_FoodInspection_DIM_Date_1] FOREIGN KEY ([InspectionDateSK]) REFERENCES [DIM_Date] ([date_sk]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Fct_FoodInspection] ADD CONSTRAINT [fk_Fct_FoodInspection_Dim_Results_1] FOREIGN KEY ([ResultSK]) REFERENCES [Dim_Results] ([ResultsSK]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Fct_FoodInspection] ADD CONSTRAINT [fk_Fct_FoodInspection_Dim_Risk_1] FOREIGN KEY ([RiskSK]) REFERENCES [Dim_Risk] ([RiskSK]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Fct_FoodInspection] ADD CONSTRAINT [fk_Fct_FoodInspection_Dim_InspectionType_1] FOREIGN KEY ([InspectionTypeSK]) REFERENCES [Dim_InspectionType] ([InspectionTypeSK]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Fct_FoodInspectionViolation] ADD CONSTRAINT [fk_Fct_FoodInspectionViolation_Fct_FoodInspection_1] FOREIGN KEY ([InspectionSK]) REFERENCES [Fct_FoodInspection] ([InspectionSK]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [Fct_FoodInspectionViolation] ADD CONSTRAINT [fk_Fct_FoodInspectionViolation_Dim_Violation_1] FOREIGN KEY ([ViolationSK]) REFERENCES [Dim_Violation] ([ViolationSK]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO



--Alter statements done for Alteryx workflow
ALTER TABLE [dbo].[Dim_License] ALTER COLUMN [STATE] varchar(50) null;
ALTER TABLE [dbo].[Dim_License] ALTER COLUMN [ZIP CODE] varchar(50) null;
ALTER TABLE [dbo].[Dim_License] ALTER COLUMN [WARD PRECINCT] varchar(50) null;
ALTER TABLE [dbo].[Dim_License] ALTER COLUMN [APPLICATION TYPE] varchar(50) null;
ALTER TABLE [dbo].[Dim_License] ALTER COLUMN [CONDITIONAL APPROVAL] varchar(50) null;
ALTER TABLE [dbo].[Dim_License] ALTER COLUMN [LICENSE STATUS] varchar(50) null;
ALTER TABLE [dbo].[Dim_License] ALTER COLUMN [WARD] int null;
ALTER TABLE [dbo].[Dim_License] ALTER COLUMN [POLICE DISTRICT] int null;
ALTER TABLE [dbo].[Dim_License] ALTER COLUMN SSA int null;

ALTER TABLE [dbo].[Dim_Foodplaces] ALTER COLUMN [Latitude] float null;
ALTER TABLE [dbo].[Dim_Foodplaces] ALTER COLUMN [Longitude] float null;

ALTER TABLE [dbo].[Dim_Violation] ALTER COLUMN [ViolationCode] varchar(50) null;

ALTER TABLE [dbo].[Fct_FoodInspection] ALTER COLUMN [InspectionFYYear] varchar(50) null;


ALTER TABLE [dbo].[Fct_FoodInspectionViolation] ALTER COLUMN [ViolationMemo] varchar(4000) null;


--Inserting -999 SK records for null value handling in dimensional model


SET IDENTITY_INSERT [dbo].[Dim_License] ON;

INSERT INTO [dbo].[Dim_License]
           ([LicenseSK]
           ,[ID]
           ,[LICENSE ID]
           ,[ACCOUNT NUMBER]
           ,[SITE NUMBER]
           ,[LEGAL NAME]
           ,[DOING BUSINESS AS NAME]
           ,[ADDRESS]
           ,[CITY]
           ,[STATE]
           ,[ZIP CODE]
           ,[WARD]
           ,[PRECINCT]
           ,[WARD PRECINCT]
           ,[POLICE DISTRICT]
           ,[LICENSE CODE]
           ,[LICENSE DESCRIPTION]
           ,[BUSINESS ACTIVITY ID]
           ,[BUSINESS ACTIVITY]
           ,[LICENSE NUMBER]
           ,[APPLICATION TYPE]
           ,[ApplicationCreatedDateSK]
           ,[ApplicationRequirementsCompleteSK]
           ,[PaymentDateSK]
           ,[CONDITIONAL APPROVAL]
           ,[LicenseTermStartDateSK]
           ,[LicenseTermExpirationDateSK]
           ,[LicenseApprovedForIssuanceSK]
           ,[DateIssuedSK]
           ,[LICENSE STATUS]
           ,[LicenseStatusChangeDateSK]
           ,[SSA]
           ,[LATITUDE]
           ,[LONGITUDE]
           ,[LOCATION]
           ,[DI_CreateDate]
           ,[DI_WorkflowFileName]
           ,[DI_WorkflowDirectory])
     VALUES
           (
		   -999
           ,'No ID Present'
           ,-999
           ,-999
           ,-999
           ,'No Legal Name Present'
           ,'No Business Name Present'
           ,'No Address Present'
           ,'No City Present'
           ,'No State Present'
           ,'No Zip Code Present'
           ,-999
           ,-999
           ,'No Ward Precint Present'
           ,-999
           ,-999
           ,'No License Description Present'
           ,'No Business Activity ID Present'
           ,'No Business Activity Present'
           ,-999
           ,'No Application Type Present'
           ,19000101
           ,19000101
           ,19000101
           ,'No Conditional Approval Present'
           ,19000101
           ,19000101
           ,19000101
           ,19000101
           ,'No License Status Present'
           ,19000101
           ,-999
           ,NULL
           ,NULL
           ,'No Location Present'
           ,'01-JAN-1990'
           ,'No Workflow File Name Present'
           ,'No Workflow Directory Present'
		   )
GO


DBCC checkident (Dim_License, RESEED, 1);
SET IDENTITY_INSERT [dbo].[Dim_License] OFF;

SET IDENTITY_INSERT [dbo].[Dim_Foodplaces] ON;  

USE [foodinspection]
GO

INSERT INTO [dbo].[Dim_Foodplaces]
           ([FoodPlacesSK]
           ,[Restaurant_Name]
           ,[AKA_Name]
           ,[StreetAddress]
           ,[City]
           ,[State]
           ,[Zip]
           ,[Latitude]
           ,[Longitude]
           ,[FacilityType]
           ,[LicenseSK]
           ,[DI_CreateDate]
           ,[DI_WorkflowFileName]
           ,[DI_WorkflowDirectory])
     VALUES
           (
		   -999
           ,'No Restaurant Name Present'
           ,'No AKA Name Present'
           ,'No StreetAddress Present'
           ,'No City Present'
           ,'No State Present'
           ,'No Zip Present'
           ,NULL
           ,NULL
           ,'No Facility Type Present'
           ,-999
           ,'01-JAN-1990'
           ,'No Workflow File Name Present'
           ,'No Workflow Directory Present')
GO

DBCC checkident (Dim_Foodplaces, RESEED, 1);
SET IDENTITY_INSERT [dbo].[Dim_Foodplaces] OFF;

SET IDENTITY_INSERT [dbo].[Dim_Results] ON;  


USE [foodinspection]
GO

INSERT INTO [dbo].[Dim_Results]
           ([ResultsSK]
           ,[Result]
           ,[DI_CreateDate]
           ,[DI_WorkflowFileName]
           ,[DI_WorkflowDirectory])
     VALUES
           (
		   -999
           ,'No Result Present'
           ,'01-JAN-1990'
           ,'No Workflow File Name Present'
           ,'No Workflow Directory Present')
GO
DBCC checkident (Dim_Results, RESEED, 1);
SET IDENTITY_INSERT [dbo].[Dim_Results] OFF;

SET IDENTITY_INSERT [dbo].[Dim_Risk] ON; 


USE [foodinspection]
GO

INSERT INTO [dbo].[Dim_Risk]
           ([RiskSK]
           ,[Risk]
           ,[DI_CreateDate]
           ,[DI_WorkflowFileName]
           ,[DI_WorkflowDirectory])
     VALUES
           (
		   -999
           ,'No Risk Present'
           ,'01-JAN-1990'
           ,'No Workflow File Name Present'
           ,'No Workflow Directory Present')
GO
DBCC checkident (Dim_Risk, RESEED, 1);
SET IDENTITY_INSERT [dbo].[Dim_Risk] OFF;

SET IDENTITY_INSERT [dbo].[Dim_Violation] ON;  


USE [foodinspection]
GO

INSERT INTO [dbo].[Dim_Violation]
           ([ViolationSK]
           ,[ViolationCode]
           ,[ViolationDescription]
           ,[DI_CreateDate]
           ,[DI_WorkflowFileName]
           ,[DI_WorkflowDirectory])
     VALUES
           (
		  -999
           ,'No Violation Code Present'
           ,'No Violation Description Present'
           ,'01-JAN-1990'
           ,'No Workflow File Name Present'
           ,'No Workflow Directory Present')
GO

DBCC checkident (Dim_Violation, RESEED, 1);
SET IDENTITY_INSERT [dbo].[Dim_Violation] OFF;

SET IDENTITY_INSERT [dbo].[Dim_InspectionType] ON;  

USE [foodinspection]
GO

INSERT INTO [dbo].[Dim_InspectionType]
           ([InspectionTypeSK]
           ,[InspectionType]
           ,[DI_CreateDate]
           ,[DI_WorkflowFileName]
           ,[DI_WorkflowDirectory])
     VALUES
           (-999
           ,'No Inspection Type Present'
           ,'01-JAN-1990'
           ,'No Workflow File Name Present'
           ,'No Workflow Directory Present')
GO

DBCC checkident (Dim_InspectionType, RESEED, 1);
SET IDENTITY_INSERT [dbo].[Dim_InspectionType] OFF;