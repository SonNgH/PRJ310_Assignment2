USE [master]
GO
CREATE DATABASE [AssignPRJ]
GO
USE [AssignPRJ]
GO
/****** Object:  Table [dbo].[CheckAttedance]    Script Date: 7/17/2022 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckAttedance](
	[CaID] [int] IDENTITY(1,1) NOT NULL,
	[SlotID] [int] NOT NULL,
	[SID] [int] NOT NULL,
	[CheckAttendance] [bit] NOT NULL,
	[Taker] [nvarchar](50) NOT NULL,
	[RecordTime] [datetime] NULL,
 CONSTRAINT [PK_CheckAttedance] PRIMARY KEY CLUSTERED 
(
	[CaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 7/17/2022 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[SID] [int] NOT NULL,
	[GroupID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 7/17/2022 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupCode] [nchar](10) NOT NULL,
	[SubID] [int] NOT NULL,
	[Term] [nvarchar](50) NOT NULL,
	[Campus] [nvarchar](50) NOT NULL,
	[Department] [nvarchar](50) NOT NULL,
	[InstructorID] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 7/17/2022 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstructorID] [int] IDENTITY(1,1) NOT NULL,
	[IName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 7/17/2022 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomCode] [nvarchar](50) NOT NULL,
	[Campus] [nvarchar](50) NOT NULL,
	[Capacity] [int] NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 7/17/2022 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[SlotID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Slot] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Slot] PRIMARY KEY CLUSTERED 
(
	[SlotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/17/2022 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[Scode] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](150) NOT NULL,
	[Gender] [bit] NOT NULL,
	[img] [ntext] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 7/17/2022 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubID] [int] IDENTITY(1,1) NOT NULL,
	[SubCode] [nvarchar](50) NOT NULL,
	[SubName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (3, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (7, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (8, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (13, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (14, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (15, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (16, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (17, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (18, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (19, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (21, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (22, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (23, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (24, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (25, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (26, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (27, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (28, 4)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (1, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (2, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (3, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (6, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (53, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (54, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (55, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (16, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (17, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (18, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (19, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (21, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (42, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (43, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (44, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (45, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (46, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (47, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (48, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (49, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (40, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (41, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (12, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (13, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (14, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (35, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (36, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (37, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (38, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (39, 5)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (39, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (10, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (11, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (58, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (53, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (54, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (55, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (16, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (17, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (18, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (19, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (21, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (42, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (43, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (24, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (25, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (46, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (27, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (48, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (49, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (40, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (41, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (12, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (13, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (14, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (35, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (36, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (37, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (38, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (15, 6)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (10, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (11, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (58, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (53, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (54, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (55, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (16, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (17, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (18, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (19, 7)
GO
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (21, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (42, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (6, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (7, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (8, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (46, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (27, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (48, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (49, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (40, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (41, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (12, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (13, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (14, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (35, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (36, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (37, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (38, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (15, 7)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (10, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (11, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (58, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (53, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (54, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (55, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (16, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (17, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (18, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (19, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (21, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (42, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (43, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (24, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (25, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (46, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (27, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (48, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (49, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (40, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (41, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (12, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (13, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (14, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (35, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (36, 12)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (10, 10)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (11, 10)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (18, 10)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (13, 10)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (14, 10)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (15, 10)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (16, 10)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (17, 10)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (19, 10)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (12, 10)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (32, 10)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (11, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (18, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (13, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (14, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (15, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (16, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (17, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (19, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (12, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (10, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (41, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (42, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (43, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (45, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (46, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (47, 14)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (29, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (28, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (27, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (25, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (23, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (22, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (21, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (20, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (35, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (19, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (39, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (11, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (12, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (13, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (14, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (15, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (16, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (17, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (18, 13)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (28, 15)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (27, 15)
GO
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (43, 15)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (45, 15)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (46, 15)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (30, 15)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (31, 15)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (32, 15)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (9, 15)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (35, 15)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (10, 15)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (28, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (7, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (26, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (25, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (41, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (42, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (3, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (2, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (46, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (30, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (31, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (32, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (19, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (35, 17)
INSERT [dbo].[Enroll] ([SID], [GroupID]) VALUES (1, 17)
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([GroupID], [GroupCode], [SubID], [Term], [Campus], [Department], [InstructorID]) VALUES (4, N'SE1647    ', 1, N'Summer2020', N'FU-HL', N'Computing Fundamental', 1)
INSERT [dbo].[Group] ([GroupID], [GroupCode], [SubID], [Term], [Campus], [Department], [InstructorID]) VALUES (5, N'GD1634    ', 2, N'Fall2020', N'FU-HL', N'Graphic Design', 1)
INSERT [dbo].[Group] ([GroupID], [GroupCode], [SubID], [Term], [Campus], [Department], [InstructorID]) VALUES (6, N'JPN1601   ', 3, N'Spring2021', N'FU-HL', N'Japanese', 1)
INSERT [dbo].[Group] ([GroupID], [GroupCode], [SubID], [Term], [Campus], [Department], [InstructorID]) VALUES (7, N'BA1623    ', 5, N'Spring2021', N'FU-HL', N'Business Administration', 1)
INSERT [dbo].[Group] ([GroupID], [GroupCode], [SubID], [Term], [Campus], [Department], [InstructorID]) VALUES (10, N'JPN1602   ', 3, N'Summer2021', N'FU-HL', N'Japanese', 1)
INSERT [dbo].[Group] ([GroupID], [GroupCode], [SubID], [Term], [Campus], [Department], [InstructorID]) VALUES (12, N'SE1616    ', 2, N'Summer2021', N'FU-HL', N'Computing Fundamental', 1)
INSERT [dbo].[Group] ([GroupID], [GroupCode], [SubID], [Term], [Campus], [Department], [InstructorID]) VALUES (13, N'SE1535    ', 8, N'Spring2022', N'FU-HL', N'Computing Fundamental', 1)
INSERT [dbo].[Group] ([GroupID], [GroupCode], [SubID], [Term], [Campus], [Department], [InstructorID]) VALUES (14, N'SE1515    ', 8, N'Spring2022', N'FU-HL', N'Computing Fundamental', 1)
INSERT [dbo].[Group] ([GroupID], [GroupCode], [SubID], [Term], [Campus], [Department], [InstructorID]) VALUES (15, N'SE1234    ', 8, N'Spring2022', N'FU-HL', N'Computing Fundamental', 1)
INSERT [dbo].[Group] ([GroupID], [GroupCode], [SubID], [Term], [Campus], [Department], [InstructorID]) VALUES (17, N'SE1603    ', 3, N'Fall2021', N'FU-HL', N'Internet of Things', 1)
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([InstructorID], [IName], [UserName], [password]) VALUES (1, N'Ngo Tung Son', N'sonnt', N'123')
INSERT [dbo].[Instructor] ([InstructorID], [IName], [UserName], [password]) VALUES (3, N'Dang Phung Khuong', N'khuongpd', N'123')
INSERT [dbo].[Instructor] ([InstructorID], [IName], [UserName], [password]) VALUES (4, N'Nguyen Nhat Linh', N'linhnl', N'123')
SET IDENTITY_INSERT [dbo].[Instructor] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([RoomID], [RoomCode], [Campus], [Capacity]) VALUES (1, N'DE101', N'FU-HL', 30)
INSERT [dbo].[Room] ([RoomID], [RoomCode], [Campus], [Capacity]) VALUES (2, N'BE101', N'FU-HL', 30)
INSERT [dbo].[Room] ([RoomID], [RoomCode], [Campus], [Capacity]) VALUES (3, N'DE102', N'FU-HL', 30)
INSERT [dbo].[Room] ([RoomID], [RoomCode], [Campus], [Capacity]) VALUES (4, N'DE103', N'FU-HL', 30)
INSERT [dbo].[Room] ([RoomID], [RoomCode], [Campus], [Capacity]) VALUES (5, N'AL104', N'FU-HL', 30)
INSERT [dbo].[Room] ([RoomID], [RoomCode], [Campus], [Capacity]) VALUES (6, N'DE105', N'FU-HL', 30)
INSERT [dbo].[Room] ([RoomID], [RoomCode], [Campus], [Capacity]) VALUES (7, N'AL106', N'FU-HL', 30)
INSERT [dbo].[Room] ([RoomID], [RoomCode], [Campus], [Capacity]) VALUES (8, N'DE107', N'FU-HL', 30)
INSERT [dbo].[Room] ([RoomID], [RoomCode], [Campus], [Capacity]) VALUES (9, N'DE108', N'FU-HL', 30)
INSERT [dbo].[Room] ([RoomID], [RoomCode], [Campus], [Capacity]) VALUES (10, N'BE109', N'FU-HL', 30)
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[Slot] ON 

INSERT [dbo].[Slot] ([SlotID], [GroupID], [Date], [Slot], [RoomID], [status]) VALUES (1, 6, CAST(N'2022-06-20' AS Date), 5, 2, 0)
INSERT [dbo].[Slot] ([SlotID], [GroupID], [Date], [Slot], [RoomID], [status]) VALUES (2, 6, CAST(N'2022-06-20' AS Date), 4, 2, 0)
INSERT [dbo].[Slot] ([SlotID], [GroupID], [Date], [Slot], [RoomID], [status]) VALUES (3, 12, CAST(N'2022-06-20' AS Date), 1, 1, 0)
INSERT [dbo].[Slot] ([SlotID], [GroupID], [Date], [Slot], [RoomID], [status]) VALUES (4, 5, CAST(N'2022-06-21' AS Date), 3, 1, 0)
INSERT [dbo].[Slot] ([SlotID], [GroupID], [Date], [Slot], [RoomID], [status]) VALUES (5, 12, CAST(N'2022-06-21' AS Date), 2, 3, 0)
INSERT [dbo].[Slot] ([SlotID], [GroupID], [Date], [Slot], [RoomID], [status]) VALUES (6, 12, CAST(N'2022-06-21' AS Date), 1, 3, 0)
INSERT [dbo].[Slot] ([SlotID], [GroupID], [Date], [Slot], [RoomID], [status]) VALUES (7, 6, CAST(N'2022-06-22' AS Date), 2, 5, 0)
INSERT [dbo].[Slot] ([SlotID], [GroupID], [Date], [Slot], [RoomID], [status]) VALUES (8, 7, CAST(N'2022-06-23' AS Date), 1, 6, 0)
INSERT [dbo].[Slot] ([SlotID], [GroupID], [Date], [Slot], [RoomID], [status]) VALUES (11, 7, CAST(N'2022-06-23' AS Date), 2, 6, 0)
INSERT [dbo].[Slot] ([SlotID], [GroupID], [Date], [Slot], [RoomID], [status]) VALUES (12, 10, CAST(N'2022-06-24' AS Date), 4, 4, 0)
SET IDENTITY_INSERT [dbo].[Slot] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (1, N'HE153512', N'Le Van B', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (2, N'HE153512', N'Dinh Van A', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (6, N'HE153512', N'Le Hong Phuc', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (7, N'HE153512', N'Trinh Ha Anh', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (8, N'HE153512', N'Nguyen Van B', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (3, N'HE153512', N'Nguyen Van A', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (9, N'HE153512', N'Dang Viet Anh', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (10, N'HE156812', N'To Quang Huy', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (11, N'HE151241', N'Nguyen Huy Ba', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (12, N'HE155672', N'Trinh Ha Nam', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (13, N'HE142342', N'Nguyen Van An', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (14, N'HE143232', N'Dinh Van Nam', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (15, N'HE143552', N'Trinh Ha Nam', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (16, N'HE157346', N'Tran Anh Duc', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (17, N'HE158462', N'Bui Trinh Ha', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (18, N'HE154632', N'Hoang Kim Khanh', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (19, N'HE146246', N'Hoang Van An', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (20, N'HE152552', N'Tran Huu Tan', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (21, N'HE158483', N'Pham Van Mach', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (22, N'HE158496', N'Duong Thuy Trang', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (23, N'HE158497', N'Le Van Thang', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (24, N'HE158493', N'Nguyen Luu Ly', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (25, N'HE158498', N'Nguyen Son Quyen', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (26, N'HE153394', N'Tran Hoai Thuong', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (27, N'HE153395', N'Nguyen Hoai Thuong', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (28, N'HE153396', N'Tran Son Quyen', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (29, N'HE153397', N'Pham Thanh Tuan', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (30, N'HE153398', N'Trinh Ha Duc', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (31, N'HE158499', N'Bach Tuyet Cao', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (32, N'HE153399', N'Le Duc Anh', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (33, N'HE153300', N'Tran Bach Tuyet', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (34, N'HE150070', N'Nguyen Huy Hoang', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (35, N'HE150138', N'Nguyen Tuan Truong', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (36, N'HE150224', N'Vu Hoang Tai Toan', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (37, N'HE150333', N'Nguyen Ngoc Huy Hoang', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (38, N'HE150375', N'The Minh An', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (39, N'HE150385', N'Do Huy An', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (40, N'HE151136', N'Hoang Do Huy', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (41, N'HE151313', N'Le The An', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (42, N'HE153583', N'Le Viet Anh', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (43, N'HE153716', N'Nguyen Thi Nam', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (44, N'HE160113', N'Dinh Van Cao', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (45, N'HE160124', N'Tran Ngoc Ha', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (46, N'HE160250', N'Nguyen Ngoc Minh', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (47, N'HE160297', N'Bui Tu Anh', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (48, N'HE160384', N'Pham Duc Duong', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (49, N'HE160385', N'Hoang Long', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (50, N'HE160417', N'Phan Hoai Nam', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (51, N'HE160714', N'Pham Hoang Nam', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (52, N'HE160727', N'Nguyen Quoc Dung', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (53, N'HE161270', N'Ha An Thai', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (54, N'HE163452', N'Loc Tuan Hung', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (55, N'HE150085', N'Ngo Hong Quang', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (56, N'HE150176', N'Nguyen Huu Manh', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (57, N'HE150296', N'Nguyen Minh Hieu', 1, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
INSERT [dbo].[Student] ([SID], [Scode], [FullName], [Gender], [img]) VALUES (58, N'HE150321', N'Nguyen Hai Dung', 0, N'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([SubID], [SubCode], [SubName]) VALUES (1, N'WED201c', N'Web Design')
INSERT [dbo].[Subject] ([SubID], [SubCode], [SubName]) VALUES (2, N'2DP49', N'Digital project 2D')
INSERT [dbo].[Subject] ([SubID], [SubCode], [SubName]) VALUES (3, N'JPD113', N'Elementary Japanese 1-A1.1')
INSERT [dbo].[Subject] ([SubID], [SubCode], [SubName]) VALUES (4, N'IOT102', N'Internet of Things')
INSERT [dbo].[Subject] ([SubID], [SubCode], [SubName]) VALUES (5, N'ACC101', N'Principles of Accounting ')
INSERT [dbo].[Subject] ([SubID], [SubCode], [SubName]) VALUES (6, N'SWE201c', N'Introduction to Software Engineering')
INSERT [dbo].[Subject] ([SubID], [SubCode], [SubName]) VALUES (7, N'SWP391', N'Application development project')
INSERT [dbo].[Subject] ([SubID], [SubCode], [SubName]) VALUES (8, N'CSD201', N'Data Structures and Algorithms ')
INSERT [dbo].[Subject] ([SubID], [SubCode], [SubName]) VALUES (9, N'PRE201c', N'Excel Skills for Business ')
INSERT [dbo].[Subject] ([SubID], [SubCode], [SubName]) VALUES (10, N'SWT301', N'Software Testing')
INSERT [dbo].[Subject] ([SubID], [SubCode], [SubName]) VALUES (11, N'JPD123', N'Elementary Japanese 1-A1.2')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
ALTER TABLE [dbo].[CheckAttedance]  WITH CHECK ADD  CONSTRAINT [FK_CheckAttedance_Slot] FOREIGN KEY([SlotID])
REFERENCES [dbo].[Slot] ([SlotID])
GO
ALTER TABLE [dbo].[CheckAttedance] CHECK CONSTRAINT [FK_CheckAttedance_Slot]
GO
ALTER TABLE [dbo].[CheckAttedance]  WITH CHECK ADD  CONSTRAINT [FK_CheckAttedance_Student] FOREIGN KEY([SID])
REFERENCES [dbo].[Student] ([SID])
GO
ALTER TABLE [dbo].[CheckAttedance] CHECK CONSTRAINT [FK_CheckAttedance_Student]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Group]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Student] FOREIGN KEY([SID])
REFERENCES [dbo].[Student] ([SID])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Instructor] FOREIGN KEY([InstructorID])
REFERENCES [dbo].[Instructor] ([InstructorID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Instructor]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([SubID])
REFERENCES [dbo].[Subject] ([SubID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Slot]  WITH CHECK ADD  CONSTRAINT [FK_Slot_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[Slot] CHECK CONSTRAINT [FK_Slot_Room]
GO
USE [master]
GO
ALTER DATABASE [AssginPRJ] SET  READ_WRITE 
GO
