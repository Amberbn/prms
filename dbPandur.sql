USE [PRMS_Master]
GO
/****** Object:  Table [dbo].[Mst_CommPlan]    Script Date: 12/5/2016 5:36:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst_CommPlan](
	[CommPlanid] [int] IDENTITY(1,1) NOT NULL,
	[CommPlanDesc] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Mst_CommPlan] PRIMARY KEY CLUSTERED 
(
	[CommPlanid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mst_CommPlan_Detail]    Script Date: 12/5/2016 5:36:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mst_CommPlan_Detail](
	[CommPlanDetailId] [int] IDENTITY(1,1) NOT NULL,
	[CommPlanid] [int] NOT NULL,
	[Detail_Description] [text] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Mst_CommPlan_Detail] PRIMARY KEY CLUSTERED 
(
	[CommPlanDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mst_Perform]    Script Date: 12/5/2016 5:36:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst_Perform](
	[PerformId] [int] IDENTITY(1,1) NOT NULL,
	[PerformDesc] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[RoleMapId] [int] NOT NULL,
 CONSTRAINT [PK_Mst_Perform] PRIMARY KEY CLUSTERED 
(
	[PerformId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mst_Perform_Detail]    Script Date: 12/5/2016 5:36:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst_Perform_Detail](
	[PerformDetailId] [int] IDENTITY(1,1) NOT NULL,
	[PerformId] [int] NOT NULL,
	[Detail_Description] [varchar](200) NOT NULL,
	[Weight] [int] NOT NULL,
 CONSTRAINT [PK_Mst_Perform_Detail] PRIMARY KEY CLUSTERED 
(
	[PerformDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mst_Role]    Script Date: 12/5/2016 5:36:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst_Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Mst_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mst_RoleMap]    Script Date: 12/5/2016 5:36:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst_RoleMap](
	[RoleMapId] [int] IDENTITY(1,1) NOT NULL,
	[RoleMapName] [varchar](10) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Mst_RoleMap] PRIMARY KEY CLUSTERED 
(
	[RoleMapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mst_User]    Script Date: 12/5/2016 5:36:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst_User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[RoleMapId] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[StatusKaryawan] [varchar](50) NOT NULL,
	[StartEmploye] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DirectReportId] [int] NULL,
 CONSTRAINT [PK_Mst_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Queue_Email]    Script Date: 12/5/2016 5:36:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Queue_Email](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [varchar](100) NOT NULL,
	[Message] [varchar](max) NOT NULL,
	[EmailTo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Queue_Email] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Task]    Script Date: 12/5/2016 5:36:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Task](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskId] [int] NOT NULL,
	[TaskName] [varchar](50) NOT NULL,
	[TaskFor] [int] NOT NULL,
	[TaskMaker] [int] NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[IsAction] [bit] NOT NULL,
	[ActionDesc] [varchar](max) NOT NULL,
	[Periode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Task_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Trx_Comm_Plan]    Script Date: 12/5/2016 5:36:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trx_Comm_Plan](
	[TrxId] [int] IDENTITY(1,1) NOT NULL,
	[TaskId] [int] NOT NULL,
	[DescriptionPlan] [varchar](max) NOT NULL,
	[IsAchievable] [bit] NOT NULL,
	[SubmitBy] [int] NOT NULL,
	[Periode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Trx_Comm_Plan] PRIMARY KEY CLUSTERED 
(
	[TrxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Trx_Perform_Review]    Script Date: 12/5/2016 5:36:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trx_Perform_Review](
	[TrxId] [int] IDENTITY(1,1) NOT NULL,
	[PerformDetailId] [int] NOT NULL,
	[TaskId] [int] NOT NULL,
	[Score] [int] NOT NULL,
	[ReviewBy] [int] NOT NULL,
	[ReviewFor] [int] NOT NULL,
	[Periode] [varchar](50) NOT NULL,
	[Notes] [varchar](100) NULL,
	[FileName] [varchar](200) NULL,
	[Comment] [text] NULL,
 CONSTRAINT [PK_Trx_Perform_Review] PRIMARY KEY CLUSTERED 
(
	[TrxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mst_CommPlan] ON 

INSERT [dbo].[Mst_CommPlan] ([CommPlanid], [CommPlanDesc], [IsActive]) VALUES (4, N'Support Busines Growth', 1)
INSERT [dbo].[Mst_CommPlan] ([CommPlanid], [CommPlanDesc], [IsActive]) VALUES (6, N'Improve Technical Expertise', 1)
SET IDENTITY_INSERT [dbo].[Mst_CommPlan] OFF
SET IDENTITY_INSERT [dbo].[Mst_CommPlan_Detail] ON 

INSERT [dbo].[Mst_CommPlan_Detail] ([CommPlanDetailId], [CommPlanid], [Detail_Description], [RoleId]) VALUES (3, 4, N'Participate in internal project (CRM) as developer', 1)
INSERT [dbo].[Mst_CommPlan_Detail] ([CommPlanDetailId], [CommPlanid], [Detail_Description], [RoleId]) VALUES (4, 4, N'Learning + Documenting SharePoint Farm configuration (4 server farm) + put in DMS ', 1)
INSERT [dbo].[Mst_CommPlan_Detail] ([CommPlanDetailId], [CommPlanid], [Detail_Description], [RoleId]) VALUES (5, 4, N'Participate in internal project (CRM) as server admin', 1)
SET IDENTITY_INSERT [dbo].[Mst_CommPlan_Detail] OFF
SET IDENTITY_INSERT [dbo].[Mst_Perform] ON 

INSERT [dbo].[Mst_Perform] ([PerformId], [PerformDesc], [IsActive], [RoleMapId]) VALUES (1, N'Business Impact', 1, 2)
INSERT [dbo].[Mst_Perform] ([PerformId], [PerformDesc], [IsActive], [RoleMapId]) VALUES (3, N'Project Manager expertise', 1, 2)
INSERT [dbo].[Mst_Perform] ([PerformId], [PerformDesc], [IsActive], [RoleMapId]) VALUES (4, N'Business Impact', 1, 3)
INSERT [dbo].[Mst_Perform] ([PerformId], [PerformDesc], [IsActive], [RoleMapId]) VALUES (5, N'Soft skills & social interaction', 1, 3)
INSERT [dbo].[Mst_Perform] ([PerformId], [PerformDesc], [IsActive], [RoleMapId]) VALUES (6, N'Technical expertise', 1, 3)
INSERT [dbo].[Mst_Perform] ([PerformId], [PerformDesc], [IsActive], [RoleMapId]) VALUES (7, N'Personal Development', 1, 3)
INSERT [dbo].[Mst_Perform] ([PerformId], [PerformDesc], [IsActive], [RoleMapId]) VALUES (8, N'Personal Development', 1, 2)
INSERT [dbo].[Mst_Perform] ([PerformId], [PerformDesc], [IsActive], [RoleMapId]) VALUES (10, N'Soft skills & social interaction', 1, 2)
SET IDENTITY_INSERT [dbo].[Mst_Perform] OFF
SET IDENTITY_INSERT [dbo].[Mst_Perform_Detail] ON 

INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (19, 4, N'Business impact/contribution to business growth', 10)
INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (20, 6, N'Quality and accuracy', 20)
INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (21, 6, N'Reliability/speed', 20)
INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (22, 7, N'Certification attained', 15)
INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (23, 7, N'Training attended', 15)
INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (24, 5, N'Working relationship with coulleages', 10)
INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (25, 5, N'Working relationship with customers', 10)
INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (26, 1, N'Business impact/contribution to business growth', 10)
INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (27, 3, N'Managing team member', 20)
INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (28, 3, N'Managing customer expectation', 20)
INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (29, 8, N'Certification attained', 15)
INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (30, 8, N'Training attended', 15)
INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (31, 10, N'Working relationship with coulleages', 10)
INSERT [dbo].[Mst_Perform_Detail] ([PerformDetailId], [PerformId], [Detail_Description], [Weight]) VALUES (32, 10, N'Working relationship with customers', 10)
SET IDENTITY_INSERT [dbo].[Mst_Perform_Detail] OFF
SET IDENTITY_INSERT [dbo].[Mst_Role] ON 

INSERT [dbo].[Mst_Role] ([RoleId], [RoleName], [IsActive]) VALUES (1, N'PMO', 1)
INSERT [dbo].[Mst_Role] ([RoleId], [RoleName], [IsActive]) VALUES (2, N'Team Leader', 1)
INSERT [dbo].[Mst_Role] ([RoleId], [RoleName], [IsActive]) VALUES (3, N'Senior Developer', 1)
INSERT [dbo].[Mst_Role] ([RoleId], [RoleName], [IsActive]) VALUES (4, N'Middle Developer', 1)
INSERT [dbo].[Mst_Role] ([RoleId], [RoleName], [IsActive]) VALUES (5, N'Junior Developer', 1)
INSERT [dbo].[Mst_Role] ([RoleId], [RoleName], [IsActive]) VALUES (6, N'Admin', 1)
INSERT [dbo].[Mst_Role] ([RoleId], [RoleName], [IsActive]) VALUES (7, N'Management', 1)
INSERT [dbo].[Mst_Role] ([RoleId], [RoleName], [IsActive]) VALUES (8, N'Head of Delivery', 1)
INSERT [dbo].[Mst_Role] ([RoleId], [RoleName], [IsActive]) VALUES (9, N'Head of PMO', 1)
SET IDENTITY_INSERT [dbo].[Mst_Role] OFF
SET IDENTITY_INSERT [dbo].[Mst_RoleMap] ON 

INSERT [dbo].[Mst_RoleMap] ([RoleMapId], [RoleMapName], [IsActive]) VALUES (2, N'PMO', 1)
INSERT [dbo].[Mst_RoleMap] ([RoleMapId], [RoleMapName], [IsActive]) VALUES (3, N'Technical', 1)
SET IDENTITY_INSERT [dbo].[Mst_RoleMap] OFF
SET IDENTITY_INSERT [dbo].[Mst_User] ON 

INSERT [dbo].[Mst_User] ([UserId], [RoleId], [RoleMapId], [UserName], [Password], [FullName], [Email], [StatusKaryawan], [StartEmploye], [IsActive], [DirectReportId]) VALUES (2, 2, 3, N'Pandur', N'Pandur', N'Pandur', N'adrian.pandur@gmail.com', N'Permanent', CAST(0x0000A69400000000 AS DateTime), 1, 12)
INSERT [dbo].[Mst_User] ([UserId], [RoleId], [RoleMapId], [UserName], [Password], [FullName], [Email], [StatusKaryawan], [StartEmploye], [IsActive], [DirectReportId]) VALUES (3, 3, 3, N'Diyan', N'Diyan', N'Diyan', N'adrian.pandur@yahoo.com', N'Pekerja Tetap', CAST(0x0000A69500000000 AS DateTime), 1, 2)
INSERT [dbo].[Mst_User] ([UserId], [RoleId], [RoleMapId], [UserName], [Password], [FullName], [Email], [StatusKaryawan], [StartEmploye], [IsActive], [DirectReportId]) VALUES (4, 4, 3, N'Febrian', N'Febrian', N'Febrian', N'adrian.pandur@gmail.com', N'Pekerja Tetap', CAST(0x0000A69300000000 AS DateTime), 1, 2)
INSERT [dbo].[Mst_User] ([UserId], [RoleId], [RoleMapId], [UserName], [Password], [FullName], [Email], [StatusKaryawan], [StartEmploye], [IsActive], [DirectReportId]) VALUES (5, 8, 2, N'Albert', N'Albert', N'Albert', N'adrian.pandur@yahoo.com', N'Permanent', CAST(0x0000A6B400000000 AS DateTime), 1, NULL)
INSERT [dbo].[Mst_User] ([UserId], [RoleId], [RoleMapId], [UserName], [Password], [FullName], [Email], [StatusKaryawan], [StartEmploye], [IsActive], [DirectReportId]) VALUES (6, 6, 3, N'Toha', N'Toha', N'Toha', N'Toha@gmail.com', N'Intern', CAST(0x0000A6AC00000000 AS DateTime), 1, 4)
INSERT [dbo].[Mst_User] ([UserId], [RoleId], [RoleMapId], [UserName], [Password], [FullName], [Email], [StatusKaryawan], [StartEmploye], [IsActive], [DirectReportId]) VALUES (8, 5, 3, N'Robert', N'Robert', N'Robert', N'robert@gmail.com', N'Intern', CAST(0x0000A6B100000000 AS DateTime), 1, 4)
INSERT [dbo].[Mst_User] ([UserId], [RoleId], [RoleMapId], [UserName], [Password], [FullName], [Email], [StatusKaryawan], [StartEmploye], [IsActive], [DirectReportId]) VALUES (9, 1, 2, N'Gatot', N'Gatot', N'Gatot', N'gatot@gmail.com', N'Permanent', CAST(0x0000A4EB00000000 AS DateTime), 1, NULL)
INSERT [dbo].[Mst_User] ([UserId], [RoleId], [RoleMapId], [UserName], [Password], [FullName], [Email], [StatusKaryawan], [StartEmploye], [IsActive], [DirectReportId]) VALUES (12, 7, 2, N'Choirul', N'Choirul', N'Choirul Amri', N'adrian.pandur@gmail.com', N'Permanent', CAST(0x0000A03100000000 AS DateTime), 1, NULL)
INSERT [dbo].[Mst_User] ([UserId], [RoleId], [RoleMapId], [UserName], [Password], [FullName], [Email], [StatusKaryawan], [StartEmploye], [IsActive], [DirectReportId]) VALUES (13, 9, 2, N'Yoga', N'Yoga', N'Yoga', N'yoga@gmail.com', N'Permanent', CAST(0x0000A2F500000000 AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[Mst_User] OFF
SET IDENTITY_INSERT [dbo].[Queue_Email] ON 

INSERT [dbo].[Queue_Email] ([Id], [Subject], [Message], [EmailTo]) VALUES (5, N'Submit Review', N'Pandur has been submit review for Febrian<br><br><a href=''http://localhost:56913/Mst_Performance_Review/Submission/3''>Klik di sini</a>', N'adrian.pandur@gmail.com')
INSERT [dbo].[Queue_Email] ([Id], [Subject], [Message], [EmailTo]) VALUES (6, N'Submit Review Revised', N'Choirul Amri has been revise your review for Febrian.<br><br><a href=''http://localhost:56913/Mst_Performance_Review/Edit/3''>Klik di sini</a>', N'adrian.pandur@gmail.com')
INSERT [dbo].[Queue_Email] ([Id], [Subject], [Message], [EmailTo]) VALUES (7, N'Submit Review', N'Pandur has been submit review for Febrian<br><br><a href=''http://localhost:56913/Mst_Performance_Review/Submission/3''>Klik di sini</a>', N'adrian.pandur@gmail.com')
SET IDENTITY_INSERT [dbo].[Queue_Email] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Task] ON 

INSERT [dbo].[Tbl_Task] ([Id], [TaskId], [TaskName], [TaskFor], [TaskMaker], [Description], [IsAction], [ActionDesc], [Periode]) VALUES (1, 1, N'Review', 12, 2, N'Pandur has been submit review for Febrian', 1, N'Submit', N'April 2017')
INSERT [dbo].[Tbl_Task] ([Id], [TaskId], [TaskName], [TaskFor], [TaskMaker], [Description], [IsAction], [ActionDesc], [Periode]) VALUES (2, 1, N'Review', 2, 12, N'Pandur has been submit review for Febrian', 1, N'Revise', N'April 2017')
INSERT [dbo].[Tbl_Task] ([Id], [TaskId], [TaskName], [TaskFor], [TaskMaker], [Description], [IsAction], [ActionDesc], [Periode]) VALUES (3, 1, N'Review', 12, 2, N'Pandur has been submit review for Febrian', 1, N'Submit', N'April 2017')
INSERT [dbo].[Tbl_Task] ([Id], [TaskId], [TaskName], [TaskFor], [TaskMaker], [Description], [IsAction], [ActionDesc], [Periode]) VALUES (4, 1, N'Review', 2, 12, N'Pandur has been submit review for Febrian', 1, N'Revise', N'April 2017')
INSERT [dbo].[Tbl_Task] ([Id], [TaskId], [TaskName], [TaskFor], [TaskMaker], [Description], [IsAction], [ActionDesc], [Periode]) VALUES (5, 1, N'Review', 12, 2, N'Pandur has been submit review for Febrian', 0, N'Submit', N'April 2017')
SET IDENTITY_INSERT [dbo].[Tbl_Task] OFF
SET IDENTITY_INSERT [dbo].[Trx_Perform_Review] ON 

INSERT [dbo].[Trx_Perform_Review] ([TrxId], [PerformDetailId], [TaskId], [Score], [ReviewBy], [ReviewFor], [Periode], [Notes], [FileName], [Comment]) VALUES (1, 23, 1, 5, 2, 4, N'April 2017', N'', N'', N'Review salah')
INSERT [dbo].[Trx_Perform_Review] ([TrxId], [PerformDetailId], [TaskId], [Score], [ReviewBy], [ReviewFor], [Periode], [Notes], [FileName], [Comment]) VALUES (2, 19, 1, 5, 2, 4, N'April 2017', N'', N'', N'Review salah')
INSERT [dbo].[Trx_Perform_Review] ([TrxId], [PerformDetailId], [TaskId], [Score], [ReviewBy], [ReviewFor], [Periode], [Notes], [FileName], [Comment]) VALUES (3, 24, 1, 5, 2, 4, N'April 2017', N'', N'', N'Review salah')
INSERT [dbo].[Trx_Perform_Review] ([TrxId], [PerformDetailId], [TaskId], [Score], [ReviewBy], [ReviewFor], [Periode], [Notes], [FileName], [Comment]) VALUES (4, 25, 1, 5, 2, 4, N'April 2017', N'', N'', N'Review salah')
INSERT [dbo].[Trx_Perform_Review] ([TrxId], [PerformDetailId], [TaskId], [Score], [ReviewBy], [ReviewFor], [Periode], [Notes], [FileName], [Comment]) VALUES (5, 20, 1, 4, 2, 4, N'April 2017', N'', N'', N'Review salah')
INSERT [dbo].[Trx_Perform_Review] ([TrxId], [PerformDetailId], [TaskId], [Score], [ReviewBy], [ReviewFor], [Periode], [Notes], [FileName], [Comment]) VALUES (6, 21, 1, 4, 2, 4, N'April 2017', N'', N'', N'Review salah')
INSERT [dbo].[Trx_Perform_Review] ([TrxId], [PerformDetailId], [TaskId], [Score], [ReviewBy], [ReviewFor], [Periode], [Notes], [FileName], [Comment]) VALUES (7, 22, 1, 5, 2, 4, N'April 2017', N'', N'', N'Review salah')
SET IDENTITY_INSERT [dbo].[Trx_Perform_Review] OFF
ALTER TABLE [dbo].[Mst_CommPlan_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Mst_CommPlan_Detail_Mst_CommPlan] FOREIGN KEY([CommPlanid])
REFERENCES [dbo].[Mst_CommPlan] ([CommPlanid])
GO
ALTER TABLE [dbo].[Mst_CommPlan_Detail] CHECK CONSTRAINT [FK_Mst_CommPlan_Detail_Mst_CommPlan]
GO
ALTER TABLE [dbo].[Mst_CommPlan_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Mst_CommPlan_Detail_Mst_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Mst_Role] ([RoleId])
GO
ALTER TABLE [dbo].[Mst_CommPlan_Detail] CHECK CONSTRAINT [FK_Mst_CommPlan_Detail_Mst_Role]
GO
ALTER TABLE [dbo].[Mst_Perform]  WITH CHECK ADD  CONSTRAINT [FK_Mst_Perform_Mst_RoleMap] FOREIGN KEY([RoleMapId])
REFERENCES [dbo].[Mst_RoleMap] ([RoleMapId])
GO
ALTER TABLE [dbo].[Mst_Perform] CHECK CONSTRAINT [FK_Mst_Perform_Mst_RoleMap]
GO
ALTER TABLE [dbo].[Mst_Perform_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Mst_Perform_Detail_Mst_Perform] FOREIGN KEY([PerformId])
REFERENCES [dbo].[Mst_Perform] ([PerformId])
GO
ALTER TABLE [dbo].[Mst_Perform_Detail] CHECK CONSTRAINT [FK_Mst_Perform_Detail_Mst_Perform]
GO
ALTER TABLE [dbo].[Mst_User]  WITH CHECK ADD  CONSTRAINT [FK_Mst_User_Mst_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Mst_Role] ([RoleId])
GO
ALTER TABLE [dbo].[Mst_User] CHECK CONSTRAINT [FK_Mst_User_Mst_Role]
GO
ALTER TABLE [dbo].[Mst_User]  WITH CHECK ADD  CONSTRAINT [FK_Mst_User_Mst_RoleMap] FOREIGN KEY([RoleMapId])
REFERENCES [dbo].[Mst_RoleMap] ([RoleMapId])
GO
ALTER TABLE [dbo].[Mst_User] CHECK CONSTRAINT [FK_Mst_User_Mst_RoleMap]
GO
ALTER TABLE [dbo].[Tbl_Task]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Task_Mst_User] FOREIGN KEY([TaskFor])
REFERENCES [dbo].[Mst_User] ([UserId])
GO
ALTER TABLE [dbo].[Tbl_Task] CHECK CONSTRAINT [FK_Tbl_Task_Mst_User]
GO
ALTER TABLE [dbo].[Tbl_Task]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Task_Mst_User1] FOREIGN KEY([TaskMaker])
REFERENCES [dbo].[Mst_User] ([UserId])
GO
ALTER TABLE [dbo].[Tbl_Task] CHECK CONSTRAINT [FK_Tbl_Task_Mst_User1]
GO
ALTER TABLE [dbo].[Trx_Perform_Review]  WITH CHECK ADD  CONSTRAINT [FK_Trx_Perform_Review_Mst_Perform_Detail] FOREIGN KEY([PerformDetailId])
REFERENCES [dbo].[Mst_Perform_Detail] ([PerformDetailId])
GO
ALTER TABLE [dbo].[Trx_Perform_Review] CHECK CONSTRAINT [FK_Trx_Perform_Review_Mst_Perform_Detail]
GO
ALTER TABLE [dbo].[Trx_Perform_Review]  WITH CHECK ADD  CONSTRAINT [FK_Trx_Perform_Review_Mst_User] FOREIGN KEY([ReviewBy])
REFERENCES [dbo].[Mst_User] ([UserId])
GO
ALTER TABLE [dbo].[Trx_Perform_Review] CHECK CONSTRAINT [FK_Trx_Perform_Review_Mst_User]
GO
ALTER TABLE [dbo].[Trx_Perform_Review]  WITH CHECK ADD  CONSTRAINT [FK_Trx_Perform_Review_Mst_User1] FOREIGN KEY([ReviewFor])
REFERENCES [dbo].[Mst_User] ([UserId])
GO
ALTER TABLE [dbo].[Trx_Perform_Review] CHECK CONSTRAINT [FK_Trx_Perform_Review_Mst_User1]
GO
