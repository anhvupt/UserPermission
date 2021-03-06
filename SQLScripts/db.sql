USE [QlTaiNguyen_1]
GO
/****** Object:  Table [dbo].[GroupResources]    Script Date: 12/16/2019 11:36:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupResources](
	[GroupResourcesID] [int] IDENTITY(0,1) NOT NULL,
	[GroupID] [int] NOT NULL,
	[RecourceID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerGroup]    Script Date: 12/16/2019 11:36:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerGroup](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecourceCategory]    Script Date: 12/16/2019 11:36:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecourceCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resources]    Script Date: 12/16/2019 11:36:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resources](
	[ResourceID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[CategoryID] [int] NULL,
	[NameMethod] [nvarchar](300) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Icon] [nvarchar](300) NULL,
 CONSTRAINT [PK_Resources] PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/16/2019 11:36:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 12/16/2019 11:36:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[UserGroupID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GroupResources] ON 

INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (1, 1, 1)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (2, 1, 5)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (3, 1, 9)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (4, 1, 13)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (5, 1, 17)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (6, 1, 21)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (7, 2, 1)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (8, 2, 2)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (9, 2, 3)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (10, 2, 4)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (11, 2, 5)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (12, 2, 6)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (13, 2, 7)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (14, 2, 8)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (15, 2, 9)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (16, 2, 10)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (17, 2, 11)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (18, 2, 12)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (19, 2, 13)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (20, 2, 14)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (21, 2, 15)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (22, 2, 16)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (23, 2, 17)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (24, 2, 18)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (25, 2, 19)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (26, 2, 20)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (27, 2, 21)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (28, 2, 22)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (29, 2, 23)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (30, 2, 24)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (31, 2, 25)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (33, 3, 7)
INSERT [dbo].[GroupResources] ([GroupResourcesID], [GroupID], [RecourceID]) VALUES (35, 3, 10)
SET IDENTITY_INSERT [dbo].[GroupResources] OFF
SET IDENTITY_INSERT [dbo].[PerGroup] ON 

INSERT [dbo].[PerGroup] ([GroupID], [Name], [Description]) VALUES (1, N'User', N'without special permissions')
INSERT [dbo].[PerGroup] ([GroupID], [Name], [Description]) VALUES (2, N'Admin', N'have all permissions')
INSERT [dbo].[PerGroup] ([GroupID], [Name], [Description]) VALUES (3, N'Mod', N'Mod, have special permissions, but not all')
SET IDENTITY_INSERT [dbo].[PerGroup] OFF
SET IDENTITY_INSERT [dbo].[RecourceCategory] ON 

INSERT [dbo].[RecourceCategory] ([ID], [Name], [Description]) VALUES (1, N'Product', N'nhom cac tac vu lien quan den san pham')
INSERT [dbo].[RecourceCategory] ([ID], [Name], [Description]) VALUES (2, N'Order', N'nhom cac tac vu lien quan den don dat hang')
INSERT [dbo].[RecourceCategory] ([ID], [Name], [Description]) VALUES (3, N'Bill', N'nhom cac tac vu lien quan den hoa don')
INSERT [dbo].[RecourceCategory] ([ID], [Name], [Description]) VALUES (4, N'Statistics', N'nhom cac tac vu lien quan den so lieu thong ke')
INSERT [dbo].[RecourceCategory] ([ID], [Name], [Description]) VALUES (5, N'Resource', N'nhom cac tac vu lien quan den tai nguyen he thong')
INSERT [dbo].[RecourceCategory] ([ID], [Name], [Description]) VALUES (6, N'Group', N'nhom cac tac vu lien quan den nhom quyen')
INSERT [dbo].[RecourceCategory] ([ID], [Name], [Description]) VALUES (7, N'User', N'nhom cac tac vu lien quan den nguoi dung')
SET IDENTITY_INSERT [dbo].[RecourceCategory] OFF
SET IDENTITY_INSERT [dbo].[Resources] ON 

INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (1, N'Display list', 1, N'ProductAll', N'Xem danh sach san pham', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (2, N'Create', 1, N'ProductInsert', N'Them san pham', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (3, N'Update', 1, N'ProductUpdate', N'Chinh sua san pham', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (4, N'Delete', 1, N'ProductDelete', N'Xoa san pham', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (5, N'Display list', 2, N'OrderAll', N'Xem danh sach don hang', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (6, N'Create', 2, N'OrderInsert', N'Them don hang', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (7, N'Update', 2, N'OrderUpdate', N'Chinh sua don hang', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (8, N'Delete', 2, N'OrdertDelete', N'Xoa don hang', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (9, N'Display list', 3, N'BillAll', N'Xem danh sach hoa don', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (10, N'Create', 3, N'BillInsert', N'Them hoa don', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (11, N'Update', 3, N'BillUpdate', N'Chinh sua hoa don', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (12, N'Delete', 3, N'BillDelete', N'Xoa hoa don', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (13, N'Display list', 5, N'ResourceAll', N'Xem danh sach resource', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (14, N'Create', 5, N'ResourceInsert', N'Them resource', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (15, N'Update', 5, N'ResourceUpdate', N'Chinh sua resource', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (16, N'Delete', 5, N'ResourceDelete', N'Xoa resource', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (17, N'Display list', 6, N'GroupAll', N'Xem danh sach Group', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (18, N'Create', 6, N'GroupInsert', N'Them Group', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (19, N'Update', 6, N'GroupUpdate', N'Chinh sua Group', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (20, N'Delete', 6, N'GroupDelete', N'Xoa Group', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (21, N'Display list', 7, N'UserAll', N'Xem danh sach User', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (22, N'Create', 7, N'UserInsert', N'Them User', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (23, N'Update', 7, N'UserUpdate', N'Chinh sua User', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (24, N'Delete', 7, N'UserDelete', N'Xoa User', N'')
INSERT [dbo].[Resources] ([ResourceID], [Name], [CategoryID], [NameMethod], [Description], [Icon]) VALUES (25, N'revenue statistic', 4, N'RevenueStatistic', N'', N'')
SET IDENTITY_INSERT [dbo].[Resources] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [Password]) VALUES (2, N'admin', N'123')
INSERT [dbo].[User] ([UserID], [UserName], [Password]) VALUES (4, N'anhvupt', N'gg')
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserGroup] ON 

INSERT [dbo].[UserGroup] ([UserGroupID], [UserID], [GroupID]) VALUES (1, 2, 2)
INSERT [dbo].[UserGroup] ([UserGroupID], [UserID], [GroupID]) VALUES (4, 4, 1)
SET IDENTITY_INSERT [dbo].[UserGroup] OFF
ALTER TABLE [dbo].[GroupResources]  WITH CHECK ADD FOREIGN KEY([GroupID])
REFERENCES [dbo].[PerGroup] ([GroupID])
GO
ALTER TABLE [dbo].[GroupResources]  WITH CHECK ADD FOREIGN KEY([RecourceID])
REFERENCES [dbo].[Resources] ([ResourceID])
GO
ALTER TABLE [dbo].[Resources]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[RecourceCategory] ([ID])
GO
ALTER TABLE [dbo].[UserGroup]  WITH CHECK ADD FOREIGN KEY([GroupID])
REFERENCES [dbo].[PerGroup] ([GroupID])
GO
ALTER TABLE [dbo].[UserGroup]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
/****** Object:  StoredProcedure [dbo].[GetInformationSchema]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GetInformationSchema]
	@TableName [nvarchar](255) = null
AS


if (@TableName is null)
	begin
		Exec GetInformationSchemaTables
		Exec GetInformationSchemaTableConstraints
		Exec GetInformationSchemaColumns
		Exec GetInformationSchemaColumnUsage
   end

if(@TableName is not null)
	begin
		Exec GetInformationSchemaTables @TableName
		Exec GetInformationSchemaTableConstraints @TableName
		Exec GetInformationSchemaColumns @TableName
		Exec GetInformationSchemaColumnUsage @TableName
    end
	


GO
/****** Object:  StoredProcedure [dbo].[GetInformationSchemaColumns]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GetInformationSchemaColumns]
	@TableName [nvarchar](255) = null
AS


  
	SELECT c.*
	FROM Information_Schema.Tables t
	inner join Information_Schema.Columns c
	on c.Table_Name = t.Table_Name
	--WHERE t.TABLE_TYPE IN ('BASE TABLE', 'VIEW') 
	WHERE (t.Table_Name = @TableName or @TableName is null)
	and t.TABLE_TYPE IN ('BASE TABLE') 
	and t.Table_Name <> 'dtproperties'
    and t.Table_Name <> 'sysdiagrams'

	ORDER BY t.TABLE_NAME


GO
/****** Object:  StoredProcedure [dbo].[GetInformationSchemaColumnUsage]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GetInformationSchemaColumnUsage]
	@TableName [nvarchar](255) = null
AS
select ccu.*
from Information_Schema.Tables t
inner join Information_Schema.Constraint_Column_Usage ccu
on ccu.Table_Name = t.Table_Name
where (t.Table_Name = @TableName or @TableName is null)
	and t.Table_Type IN ('BASE TABLE') 
	and t.Table_Name <> 'dtproperties'
    and t.Table_Name <> 'sysdiagrams'


GO
/****** Object:  StoredProcedure [dbo].[GetInformationSchemaTableConstraints]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GetInformationSchemaTableConstraints]
	@TableName [nvarchar](255) = null
AS



   select tc.*
	from Information_Schema.Tables t
	inner join Information_Schema.Table_Constraints tc
	on t.Table_Name = tc.Table_Name
	where (t.Table_Name = @TableName or @TableName is null)
	and t.Table_Type IN ('BASE TABLE') 
	and t.Table_Name <> 'dtproperties'
    and t.Table_Name <> 'sysdiagrams'

	Order by t.Table_Name	


GO
/****** Object:  StoredProcedure [dbo].[GetInformationSchemaTables]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GetInformationSchemaTables]
	@TableName [nvarchar](255) = null
AS


  SELECT t.*
	from Information_Schema.Tables t
where (t.Table_Name = @TableName or @TableName is null)
and t.Table_Name <> 'dtproperties'
and t.Table_Name <> 'sysdiagrams'


GO
/****** Object:  StoredProcedure [dbo].[GroupResources_All]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GroupResources_All]
AS
Select GroupResourcesID, GroupID, RecourceID
From [GroupResources]
GO
/****** Object:  StoredProcedure [dbo].[GroupResources_Get_ByCriteriaExact]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GroupResources_Get_ByCriteriaExact]
	@GroupResourcesID [int] = null,
	@GroupID [int] = null,
	@RecourceID [int] = null
AS
Select GroupResourcesID, GroupID, RecourceID
From [GroupResources] 
Where ( GroupResourcesID = @GroupResourcesID Or @GroupResourcesID = null ) 
And ( GroupID = @GroupID Or @GroupID = null ) 
And ( RecourceID = @RecourceID Or @RecourceID = null ) 
GO
/****** Object:  StoredProcedure [dbo].[GroupResources_Get_ByCriteriaFuzzy]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GroupResources_Get_ByCriteriaFuzzy]
	@GroupResourcesID [int] = null,
	@GroupID [int] = null,
	@RecourceID [int] = null
AS
Select GroupResourcesID, GroupID, RecourceID
From [GroupResources] 
Where ( GroupResourcesID = @GroupResourcesID Or @GroupResourcesID = null ) 
And ( GroupID = @GroupID Or @GroupID = null ) 
And ( RecourceID = @RecourceID Or @RecourceID = null ) 
GO
/****** Object:  StoredProcedure [dbo].[GroupResources_Get_ByGroupID]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GroupResources_Get_ByGroupID]
	@GroupID int 
AS
	SELECT * from GroupResources
	where [GroupID] = @GroupID
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[GroupResources_Insert]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GroupResources_Insert]
	@GroupResourcesID [int] OUTPUT,
	@GroupID [int],
	@RecourceID [int]
AS
Insert Into [GroupResources] 
( GroupID, RecourceID)
Values ( @GroupID, @RecourceID) 
GO
/****** Object:  StoredProcedure [dbo].[IsIdentity]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[IsIdentity]
	@TableName [nvarchar](255) = null,
	@ColumnName [nvarchar](255) = null,
	@IsIdentity [bit] = 0 OUTPUT
AS
if exists(select *
		from information_schema.columns 
		where 
		table_schema = 'dbo' 
		and columnproperty(object_id(@TableName), @ColumnName,'IsIdentity') = 1 
		)
			set @IsIdentity = 1
else
			set @IsIdentity = 0
GO
/****** Object:  StoredProcedure [dbo].[PerGroup_All]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[PerGroup_All]
AS
Select GroupID, Name, Description
From [PerGroup]
GO
/****** Object:  StoredProcedure [dbo].[PerGroup_Delete]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[PerGroup_Delete]
	@GroupID [int]
AS
Delete From [PerGroup] 
Where  GroupID = @GroupID  

GO
/****** Object:  StoredProcedure [dbo].[PerGroup_Get_ByCriteriaExact]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[PerGroup_Get_ByCriteriaExact]
	@GroupID [int] = null,
	@Name [nvarchar](50) = null,
	@Description [nvarchar](max) = null
AS
Select GroupID, Name, Description
From [PerGroup] 
Where ( GroupID = @GroupID Or @GroupID = null ) 
And ( Name = @Name Or @Name = null ) 
And ( Description = @Description Or @Description = null ) 
GO
/****** Object:  StoredProcedure [dbo].[PerGroup_Get_ByCriteriaFuzzy]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[PerGroup_Get_ByCriteriaFuzzy]
	@GroupID [int] = null,
	@Name [nvarchar](50) = null,
	@Description [nvarchar](max) = null
AS
Select GroupID, Name, Description
From [PerGroup] 
Where ( GroupID = @GroupID Or @GroupID = null ) 
And ( Name Like @Name + '%' Or @Name = null ) 
And ( Description Like @Description + '%' Or @Description = null ) 
GO
/****** Object:  StoredProcedure [dbo].[PerGroup_Insert]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[PerGroup_Insert]
	@GroupID [int] OUTPUT,
	@Name [nvarchar](50),
	@Description [nvarchar](max)
AS
Insert Into [PerGroup] 
( Name, Description)
Values ( @Name, @Description) 
Set @GroupID = IDENT_CURRENT('PerGroup')
GO
/****** Object:  StoredProcedure [dbo].[PerGroup_Single]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[PerGroup_Single]
	@GroupID [int]
AS
Select GroupID, Name, Description
From [PerGroup] 
Where  GroupID = @GroupID  
GO
/****** Object:  StoredProcedure [dbo].[PerGroup_Update]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[PerGroup_Update]
	@GroupID [int],
	@Name [nvarchar](50),
	@Description [nvarchar](max)
AS
Update [PerGroup] 
Set Name = @Name, 
Description = @Description 
Where  GroupID = @GroupID  

GO
/****** Object:  StoredProcedure [dbo].[Procedure]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Procedure]
	@UserName int = 0,
	@Password int
AS
	SELECT * from [User]
	where UserName = @UserName and Password = @Password
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[RecourceCategory_All]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[RecourceCategory_All]
AS
Select ID, Name, Description
From [RecourceCategory]
GO
/****** Object:  StoredProcedure [dbo].[RecourceCategory_Delete]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[RecourceCategory_Delete]
	@ID [int]
AS
Delete From [RecourceCategory] 
Where  ID = @ID  

GO
/****** Object:  StoredProcedure [dbo].[RecourceCategory_Get_ByCriteriaExact]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[RecourceCategory_Get_ByCriteriaExact]
	@ID [int] = null,
	@Name [nvarchar](300) = null,
	@Description [nvarchar](max) = null
AS
Select ID, Name, Description
From [RecourceCategory] 
Where ( ID = @ID Or @ID = null ) 
And ( Name = @Name Or @Name = null ) 
And ( Description = @Description Or @Description = null ) 
GO
/****** Object:  StoredProcedure [dbo].[RecourceCategory_Get_ByCriteriaFuzzy]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[RecourceCategory_Get_ByCriteriaFuzzy]
	@ID [int] = null,
	@Name [nvarchar](300) = null,
	@Description [nvarchar](max) = null
AS
Select ID, Name, Description
From [RecourceCategory] 
Where ( ID = @ID Or @ID = null ) 
And ( Name Like @Name + '%' Or @Name = null ) 
And ( Description Like @Description + '%' Or @Description = null ) 
GO
/****** Object:  StoredProcedure [dbo].[RecourceCategory_Insert]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[RecourceCategory_Insert]
	@ID [int] OUTPUT,
	@Name [nvarchar](300),
	@Description [nvarchar](max)
AS
Insert Into [RecourceCategory] 
( Name, Description)
Values ( @Name, @Description) 
Set @ID = IDENT_CURRENT('RecourceCategory')
GO
/****** Object:  StoredProcedure [dbo].[RecourceCategory_Single]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[RecourceCategory_Single]
	@ID [int]
AS
Select ID, Name, Description
From [RecourceCategory] 
Where  ID = @ID  
GO
/****** Object:  StoredProcedure [dbo].[RecourceCategory_Update]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[RecourceCategory_Update]
	@ID [int],
	@Name [nvarchar](300),
	@Description [nvarchar](max)
AS
Update [RecourceCategory] 
Set Name = @Name, 
Description = @Description 
Where  ID = @ID  

GO
/****** Object:  StoredProcedure [dbo].[Resources_All]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Resources_All]
AS
Select ResourceID, Name, CategoryID, NameMethod, Description, Icon
From [Resources]
GO
/****** Object:  StoredProcedure [dbo].[Resources_Delete]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Resources_Delete]
	@ResourceID [int]
AS
Delete From [Resources] 
Where  ResourceID = @ResourceID  

GO
/****** Object:  StoredProcedure [dbo].[Resources_Get_ByCriteriaExact]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Resources_Get_ByCriteriaExact]
	@ResourceID [int] = null,
	@Name [nvarchar](300) = null,
	@CategoryID [int] = null,
	@NameMethod [nvarchar](300) = null,
	@Description [nvarchar](max) = null,
	@Icon [nvarchar](300) = null
AS
Select ResourceID, Name, CategoryID, NameMethod, Description, Icon
From [Resources] 
Where ( ResourceID = @ResourceID Or @ResourceID = null ) 
And ( Name = @Name Or @Name = null ) 
And ( CategoryID = @CategoryID Or @CategoryID = null ) 
And ( NameMethod = @NameMethod Or @NameMethod = null ) 
And ( Description = @Description Or @Description = null ) 
And ( Icon = @Icon Or @Icon = null ) 
GO
/****** Object:  StoredProcedure [dbo].[Resources_Get_ByCriteriaFuzzy]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Resources_Get_ByCriteriaFuzzy]
	@ResourceID [int] = null,
	@Name [nvarchar](300) = null,
	@CategoryID [int] = null,
	@NameMethod [nvarchar](300) = null,
	@Description [nvarchar](max) = null,
	@Icon [nvarchar](300) = null
AS
Select ResourceID, Name, CategoryID, NameMethod, Description, Icon
From [Resources] 
Where ( ResourceID = @ResourceID Or @ResourceID = null ) 
And ( Name Like @Name + '%' Or @Name = null ) 
And ( CategoryID = @CategoryID Or @CategoryID = null ) 
And ( NameMethod Like @NameMethod + '%' Or @NameMethod = null ) 
And ( Description Like @Description + '%' Or @Description = null ) 
And ( Icon Like @Icon + '%' Or @Icon = null ) 
GO
/****** Object:  StoredProcedure [dbo].[Resources_Insert]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Resources_Insert]
	@ResourceID [int] OUTPUT,
	@Name [nvarchar](300),
	@CategoryID [int],
	@NameMethod [nvarchar](300),
	@Description [nvarchar](max),
	@Icon [nvarchar](300)
AS
Insert Into [Resources] 
( Name, CategoryID, NameMethod, Description, Icon)
Values ( @Name, @CategoryID, @NameMethod, @Description, @Icon) 
Set @ResourceID = IDENT_CURRENT('Resources')
GO
/****** Object:  StoredProcedure [dbo].[Resources_Single]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Resources_Single]
	@ResourceID [int]
AS
Select ResourceID, Name, CategoryID, NameMethod, Description, Icon
From [Resources] 
Where  ResourceID = @ResourceID  
GO
/****** Object:  StoredProcedure [dbo].[Resources_Update]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Resources_Update]
	@ResourceID [int],
	@Name [nvarchar](300),
	@CategoryID [int],
	@NameMethod [nvarchar](300),
	@Description [nvarchar](max),
	@Icon [nvarchar](300)
AS
Update [Resources] 
Set Name = @Name, 
CategoryID = @CategoryID, 
NameMethod = @NameMethod, 
Description = @Description, 
Icon = @Icon 
Where  ResourceID = @ResourceID  

GO
/****** Object:  StoredProcedure [dbo].[User_All]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[User_All]
AS
Select UserID, UserName, Password
From [User]
GO
/****** Object:  StoredProcedure [dbo].[User_Check_Login]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_Check_Login]
	@UserName nvarchar(30),
	@Password nvarchar(30)
AS
	SELECT * from [User]
	where [UserName]=@UserName and [Password]=@Password
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[User_Count_UserName]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_Count_UserName]
	@UserName nvarchar(30)
AS
	SELECT COUNT(UserId) from [User] where UserName = @UserName
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[User_Delete]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[User_Delete]
	@UserID [int]
AS
Delete From [User] 
Where  UserID = @UserID  

GO
/****** Object:  StoredProcedure [dbo].[User_FindByUserName]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_FindByUserName]
	@UserName nvarchar(30)
AS
	SELECT COUNT(userID) from [User]
	where [UserName]=@UserName
GO
/****** Object:  StoredProcedure [dbo].[User_Get_ByCriteriaExact]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[User_Get_ByCriteriaExact]
	@UserID [int] = null,
	@UserName [nvarchar](50) = null,
	@Password [nvarchar](50) = null
AS
Select UserID, UserName, Password
From [User] 
Where ( UserID = @UserID Or @UserID = null ) 
And ( UserName = @UserName Or @UserName = null ) 
And ( Password = @Password Or @Password = null ) 
GO
/****** Object:  StoredProcedure [dbo].[User_Get_ByCriteriaFuzzy]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[User_Get_ByCriteriaFuzzy]
	@UserID [int] = null,
	@UserName [nvarchar](50) = null,
	@Password [nvarchar](50) = null
AS
Select UserID, UserName, Password
From [User] 
Where ( UserID = @UserID Or @UserID = null ) 
And ( UserName Like @UserName + '%' Or @UserName = null ) 
And ( Password Like @Password + '%' Or @Password = null ) 
GO
/****** Object:  StoredProcedure [dbo].[User_Insert]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[User_Insert]
	@UserID [int] OUTPUT,
	@UserName [nvarchar](50),
	@Password [nvarchar](50)
AS
Insert Into [User] 
( UserName, Password)
Values ( @UserName, @Password) 
Set @UserID = IDENT_CURRENT('User')
GO
/****** Object:  StoredProcedure [dbo].[User_Single]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[User_Single]
	@UserID [int]
AS
Select UserID, UserName, Password
From [User] 
Where  UserID = @UserID  
GO
/****** Object:  StoredProcedure [dbo].[User_Update]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[User_Update]
	@UserID [int],
	@UserName [nvarchar](50),
	@Password [nvarchar](50)
AS
Update [User] 
Set UserName = @UserName, 
Password = @Password 
Where  UserID = @UserID  

GO
/****** Object:  StoredProcedure [dbo].[UserGroup_All]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserGroup_All]
AS
Select UserGroupID, UserID, GroupID
From [UserGroup]
GO
/****** Object:  StoredProcedure [dbo].[UserGroup_Delete]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserGroup_Delete]
	@UserGroupID [int]
AS
Delete From [UserGroup] 
Where  UserGroupID = @UserGroupID  

GO
/****** Object:  StoredProcedure [dbo].[UserGroup_Get_ByCriteriaExact]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserGroup_Get_ByCriteriaExact]
	@UserGroupID [int] = null,
	@UserID [int] = null,
	@GroupID [int] = null
AS
Select UserGroupID, UserID, GroupID
From [UserGroup] 
Where ( UserGroupID = @UserGroupID Or @UserGroupID = null ) 
And ( UserID = @UserID Or @UserID = null ) 
And ( GroupID = @GroupID Or @GroupID = null ) 
GO
/****** Object:  StoredProcedure [dbo].[UserGroup_Get_ByCriteriaFuzzy]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserGroup_Get_ByCriteriaFuzzy]
	@UserGroupID [int] = null,
	@UserID [int] = null,
	@GroupID [int] = null
AS
Select UserGroupID, UserID, GroupID
From [UserGroup] 
Where ( UserGroupID = @UserGroupID Or @UserGroupID = null ) 
And ( UserID = @UserID Or @UserID = null ) 
And ( GroupID = @GroupID Or @GroupID = null ) 
GO
/****** Object:  StoredProcedure [dbo].[UserGroup_Get_ByGroupID]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UserGroup_Get_ByGroupID]
	@GroupID int
AS
	SELECT * from [UserGroup]
	where GroupID = GroupID
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[UserGroup_Get_ByUserID]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UserGroup_Get_ByUserID]
	@UserID int
AS
	SELECT * from [UserGroup]
	where UserID = @UserID
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[UserGroup_Insert]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserGroup_Insert]
	@UserGroupID [int] OUTPUT,
	@UserID [int],
	@GroupID [int]
AS
Insert Into [UserGroup] 
( UserID, GroupID)
Values ( @UserID, @GroupID) 
Set @UserGroupID = IDENT_CURRENT('UserGroup')
GO
/****** Object:  StoredProcedure [dbo].[UserGroup_Single]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserGroup_Single]
	@UserGroupID [int]
AS
Select UserGroupID, UserID, GroupID
From [UserGroup] 
Where  UserGroupID = @UserGroupID  
GO
/****** Object:  StoredProcedure [dbo].[UserGroup_Update]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserGroup_Update]
	@UserGroupID [int],
	@UserID [int],
	@GroupID [int]
AS
Update [UserGroup] 
Set UserID = @UserID, 
GroupID = @GroupID 
Where  UserGroupID = @UserGroupID  

GO
/****** Object:  StoredProcedure [dbo].[UserInfo_All]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserInfo_All]
AS
Select UserInfoID, Name, Email, Address, PhoneNumber
From [UserInfo]
GO
/****** Object:  StoredProcedure [dbo].[UserInfo_Delete]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserInfo_Delete]
	@UserInfoID [int]
AS
Delete From [UserInfo] 
Where  UserInfoID = @UserInfoID  

GO
/****** Object:  StoredProcedure [dbo].[UserInfo_Get_ByCriteriaExact]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserInfo_Get_ByCriteriaExact]
	@UserInfoID [int] = null,
	@Name [nvarchar](200) = null,
	@Email [nvarchar](200) = null,
	@Address [nvarchar](200) = null,
	@PhoneNumber [nvarchar](200) = null
AS
Select UserInfoID, Name, Email, Address, PhoneNumber
From [UserInfo] 
Where ( UserInfoID = @UserInfoID Or @UserInfoID = null ) 
And ( Name = @Name Or @Name = null ) 
And ( Email = @Email Or @Email = null ) 
And ( Address = @Address Or @Address = null ) 
And ( PhoneNumber = @PhoneNumber Or @PhoneNumber = null ) 
GO
/****** Object:  StoredProcedure [dbo].[UserInfo_Get_ByCriteriaFuzzy]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserInfo_Get_ByCriteriaFuzzy]
	@UserInfoID [int] = null,
	@Name [nvarchar](200) = null,
	@Email [nvarchar](200) = null,
	@Address [nvarchar](200) = null,
	@PhoneNumber [nvarchar](200) = null
AS
Select UserInfoID, Name, Email, Address, PhoneNumber
From [UserInfo] 
Where ( UserInfoID = @UserInfoID Or @UserInfoID = null ) 
And ( Name Like @Name + '%' Or @Name = null ) 
And ( Email Like @Email + '%' Or @Email = null ) 
And ( Address Like @Address + '%' Or @Address = null ) 
And ( PhoneNumber Like @PhoneNumber + '%' Or @PhoneNumber = null ) 
GO
/****** Object:  StoredProcedure [dbo].[UserInfo_Insert]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserInfo_Insert]
	@UserInfoID [int] OUTPUT,
	@Name [nvarchar](200),
	@Email [nvarchar](200),
	@Address [nvarchar](200),
	@PhoneNumber [nvarchar](200)
AS
Insert Into [UserInfo] 
( Name, Email, Address, PhoneNumber)
Values ( @Name, @Email, @Address, @PhoneNumber) 
Set @UserInfoID = IDENT_CURRENT('UserInfo')
GO
/****** Object:  StoredProcedure [dbo].[UserInfo_Single]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserInfo_Single]
	@UserInfoID [int]
AS
Select UserInfoID, Name, Email, Address, PhoneNumber
From [UserInfo] 
Where  UserInfoID = @UserInfoID  
GO
/****** Object:  StoredProcedure [dbo].[UserInfo_Update]    Script Date: 12/16/2019 11:36:12 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[UserInfo_Update]
	@UserInfoID [int],
	@Name [nvarchar](200),
	@Email [nvarchar](200),
	@Address [nvarchar](200),
	@PhoneNumber [nvarchar](200)
AS
Update [UserInfo] 
Set Name = @Name, 
Email = @Email, 
Address = @Address, 
PhoneNumber = @PhoneNumber 
Where  UserInfoID = @UserInfoID  

GO
