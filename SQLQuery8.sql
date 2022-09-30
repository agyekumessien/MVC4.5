CREATE TABLE [dbo].[AddressDtoes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Street] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[ZipCode] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.AddressDtoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ajaxes]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ajaxes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AjaxId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[AjaxText] [nvarchar](max) NULL,
	[AjaxTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Ajax_AjaxId] [int] NULL,
	[AjaxSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
	[AspNetUsers_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Ajaxes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AjaxReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AjaxReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AjaxRId] [int] NOT NULL,
	[AjaxRText] [nvarchar](max) NULL,
	[AjaxRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[AjaxId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[AjaxRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[AjaxReplies_AjaxRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AjaxReply1_Id] [int] NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.AjaxReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AngularReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AngularReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AngularRId] [int] NOT NULL,
	[AngularRText] [nvarchar](max) NULL,
	[AngularRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[AngularId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[AngularRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[AngularReplies_AngularRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
	[AngularReply1_Id] [int] NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.AngularReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Angulars]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Angulars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AngularId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[AngularText] [nvarchar](max) NULL,
	[AngularTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Angular_AngularId] [int] NULL,
	[AngularSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Angulars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[BirthDate] [datetime] NULL,
	[Country] [nvarchar](max) NULL,
	[EmailLinkDate] [datetime] NULL,
	[JoinDate] [datetime] NULL,
	[LastLoginDate] [datetime] NULL,
	[UserProfile] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserPhoto] [varbinary](max) NULL,
	[Image] [varbinary](max) NULL,
	[PersonalPhoto] [varbinary](max) NULL,
	[LoginCount] [int] NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[ProfileModel_Id] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspWebFormReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspWebFormReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AspWfRId] [int] NOT NULL,
	[AspWfRText] [nvarchar](max) NULL,
	[AspWfRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[AspWfId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[AspWfRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[AspWebFormReplies_AspWfRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[AspWebform_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
	[AspWebFormReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
 CONSTRAINT [PK_dbo.AspWebFormReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspWebforms]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspWebforms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AspWfId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[AspWfText] [nvarchar](max) NULL,
	[AspWfTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[AspWebform_AspWfId] [int] NULL,
	[AspWfSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[AspWebform2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.AspWebforms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AzureReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AzureReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AzureRId] [int] NOT NULL,
	[AzureRText] [nvarchar](max) NULL,
	[AzureRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[AzureId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[AzureRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[AzureReplies_AzureRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[AzureReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.AzureReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Azures]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Azures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AzureId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[AzureText] [nvarchar](max) NULL,
	[AzureTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Azure_AzureId] [int] NULL,
	[AzureSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Azures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[C__]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C__](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[C__Id] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[C__Text] [nvarchar](max) NULL,
	[C__Title] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[C___C__Id] [int] NULL,
	[C__SKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.C__] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[C__Replies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C__Replies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[C__RId] [int] NOT NULL,
	[C__RText] [nvarchar](max) NULL,
	[C__RTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[C__Id] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[C__RSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[C__Replies_C__RId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[C__Replies2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.C__Replies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carts]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RecordId] [int] NOT NULL,
	[CartId] [nvarchar](max) NULL,
	[ProductID] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[Cart_RecordId] [int] NULL,
	[DateCreated] [datetime] NOT NULL,
	[PictureUrl] [nvarchar](max) NOT NULL,
	[Brand] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[DeliveryMethodId] [int] NULL,
	[ClientSecret] [nvarchar](max) NULL,
	[PaymentIntentId] [nvarchar](max) NULL,
	[ShippingPrice] [decimal](18, 2) NOT NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[Cart2_Id] [int] NULL,
	[tbh_Products_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreateMessages]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreateMessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RecipientUsername] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.CreateMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CSharps]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSharps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CSId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[CSharpText] [nvarchar](max) NULL,
	[CSharpTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[CSharp_CSId] [int] NULL,
	[CSharpSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[CSharp2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.CSharps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CSReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CSRId] [int] NOT NULL,
	[CSRText] [nvarchar](max) NULL,
	[CSRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[CSId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CSRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[CSReplies_CSRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[CSharp_Id] [int] NULL,
	[CSReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.CSReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CSSes]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSSes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CSSId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[CSSText] [nvarchar](max) NULL,
	[CSSTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[CSS_CSSId] [int] NULL,
	[CSSSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.CSSes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CSSReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSSReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CSSRId] [int] NOT NULL,
	[CSSRText] [nvarchar](max) NULL,
	[CSSRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[CSSId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CSSRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[CSSReplies_CSSRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[CSSReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.CSSReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Databas]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Databas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DbId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[DatabasesText] [nvarchar](max) NULL,
	[DatabasesTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Databases_DbId] [int] NULL,
	[DatabasesSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Databas1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Databas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DBAReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBAReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DBARId] [int] NOT NULL,
	[DBARText] [nvarchar](max) NULL,
	[DBARTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[DBAId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[DBARSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[DBAReplies_DBARId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[DBAReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.DBAReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DBAs]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBAs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DBAId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[DBAText] [nvarchar](max) NULL,
	[DBATitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[DBA_DBAId] [int] NULL,
	[DBASKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.DBAs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DBReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DBRId] [int] NOT NULL,
	[DBRText] [nvarchar](max) NULL,
	[DBRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[DbId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[DBRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[DBReplies_DBRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Databas_Id] [int] NULL,
	[DBReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.DBReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DotNetReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DotNetReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DNRId] [int] NOT NULL,
	[DNRText] [nvarchar](max) NULL,
	[DNRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[DotNetId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[DNRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[DotNetReplies_DNRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[DotNetReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.DotNetReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DotNets]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DotNets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DotNetId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[DotNetText] [nvarchar](max) NULL,
	[DotNetTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[DotNet_DotNetId] [int] NULL,
	[DotNetSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.DotNets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EntityFrameWorks]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntityFrameWorks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityFId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[EntityFText] [nvarchar](max) NULL,
	[EntityFTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[EntityFrameWork_EntityFId] [int] NULL,
	[EntityFrameWorkSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[EntityFrameWork2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.EntityFrameWorks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EntityFReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntityFReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityFRepId] [int] NOT NULL,
	[EntityFRepText] [nvarchar](max) NULL,
	[EntityFRepTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[EntityFId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[EntityFRepSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[EntityFReplies_EntityFRepId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[EntityFrameWork_Id] [int] NULL,
	[EntityFReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.EntityFReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ErrorViewModels]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorViewModels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RequestId] [nvarchar](max) NULL,
	[ShowRequestId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ErrorViewModels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FilePaths]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilePaths](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilePathId] [int] NOT NULL,
	[FileName] [nvarchar](max) NULL,
	[FileType] [int] NOT NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.FilePaths] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Files]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Files](
	[FileId] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](max) NULL,
	[ContentType] [nvarchar](max) NULL,
	[Content] [varbinary](max) NULL,
	[FileType] [int] NOT NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Files] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FileTypes]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FileTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileTypeId] [int] NOT NULL,
	[FileTypeName] [varbinary](max) NULL,
 CONSTRAINT [PK_dbo.FileTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[genMainSliders]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genMainSliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MainSliderID] [int] NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[AltText] [nvarchar](max) NULL,
	[OfferTag] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[BtnText] [nvarchar](max) NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_dbo.genMainSliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[genPromoRights]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genPromoRights](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PromoRightID] [int] NOT NULL,
	[CategoryID] [int] NULL,
	[ImageURL] [nvarchar](max) NULL,
	[AltText] [nvarchar](max) NULL,
	[OfferTag] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[isDeleted] [bit] NULL,
	[tbh_Category_Id] [int] NULL,
 CONSTRAINT [PK_dbo.genPromoRights] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JavaReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JavaReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JavaRId] [int] NOT NULL,
	[JavaRText] [nvarchar](max) NULL,
	[JavaRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[JavaId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[JavaRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[JavaReplies_JavaRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[JavaReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.JavaReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Javas]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Javas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JavaId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[JavaText] [nvarchar](max) NULL,
	[JavaTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Java_JavaId] [int] NULL,
	[JavaSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Javas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JqJavaReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JqJavaReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JqJavaRepId] [int] NOT NULL,
	[JqJavaRepText] [nvarchar](max) NULL,
	[JqJavaRepTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[JqJavaId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[JqJavaRepSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[JqJavaReplies_JqJavaRepId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[JqJavaReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.JqJavaReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JqJavas]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JqJavas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JqJavaId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[JqJavaText] [nvarchar](max) NULL,
	[JqJavaTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[JqJava_JqJavaId] [int] NULL,
	[JqJavaSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.JqJavas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Logo] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Manufacturers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MembersDtoes]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembersDtoes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[PhotoUrl] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
	[KnownAs] [nvarchar](max) NULL,
	[Created] [datetime] NOT NULL,
	[LastActive] [datetime] NOT NULL,
	[Gender] [nvarchar](max) NULL,
	[Introduction] [nvarchar](max) NULL,
	[LookingFor] [nvarchar](max) NULL,
	[Interests] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.MembersDtoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberUpdateDtoes]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberUpdateDtoes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Introduction] [nvarchar](max) NULL,
	[LookingFor] [nvarchar](max) NULL,
	[Interests] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.MemberUpdateDtoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MVCReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MVCReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MVCRId] [int] NOT NULL,
	[MVCRText] [nvarchar](max) NULL,
	[MVCRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[MVCId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[MVCRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[MVCReplies_MVCRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[MVCReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.MVCReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MVCs]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MVCs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MVCId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[MVCText] [nvarchar](max) NULL,
	[MVCTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[MVC_MVCId] [int] NULL,
	[MVCSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.MVCs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetCoreReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetCoreReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NetCoreRId] [int] NOT NULL,
	[NetCoreRText] [nvarchar](max) NULL,
	[NetCoreRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[NetCoreId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[NetCoreRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[NetCoreReplies_NetCoreRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[NetCoreReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.NetCoreReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetCores]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetCores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NetCoreId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[NetCoreText] [nvarchar](max) NULL,
	[NetCoreTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[NetCore_NetCoreId] [int] NULL,
	[NetCoreSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.NetCores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NLReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NLReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NLRId] [int] NOT NULL,
	[NLRText] [nvarchar](max) NULL,
	[NLRTitle] [nvarchar](max) NULL,
	[NLId] [int] NOT NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
	[NLReplies_NLRId] [int] NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[NLReply1_Id] [int] NULL,
 CONSTRAINT [PK_dbo.NLReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NoSqlReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoSqlReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoSqlRId] [int] NOT NULL,
	[NoSqlRText] [nvarchar](max) NULL,
	[NoSqlRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[NoSqlId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[NoSqlRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[NoSqlReplies_NoSqlRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[NoSqlReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.NoSqlReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NoSqls]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoSqls](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoSqlId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[NoSqlText] [nvarchar](max) NULL,
	[NoSqlTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[NoSql_NoSqlId] [int] NULL,
	[NoSqlSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.NoSqls] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NoteListReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoteListReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoteListRId] [int] NOT NULL,
	[NoteListRText] [nvarchar](max) NULL,
	[NotesPageRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[NoteListId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[NoteListRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[NoteListReplies_NoteListRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[NoteListReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.NoteListReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NoteLists]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoteLists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoteListId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[NoteListText] [nvarchar](max) NULL,
	[NoteListTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[NoteList_NoteListId] [int] NULL,
	[NoteListSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.NoteLists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NotesPageReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotesPageReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NotesPageRId] [int] NOT NULL,
	[NotesPageRText] [nvarchar](max) NULL,
	[NotesPageRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[NotesPageId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[NotesPageRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[NotesPageReplies_NotesPageRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[NotesPageReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.NotesPageReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NotesPages]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotesPages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NotesPageId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[NotesPageText] [nvarchar](max) NULL,
	[NotesPageTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[NotesPage_NotesPageId] [int] NULL,
	[NotesPageSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.NotesPages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhotoDtoes]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoDtoes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NULL,
	[IsMain] [bit] NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[MembersDto_Id] [int] NULL,
	[tbh_Membership_Id] [int] NULL,
 CONSTRAINT [PK_dbo.PhotoDtoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhotoForApprovalDtoes]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoForApprovalDtoes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[IsApproved] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.PhotoForApprovalDtoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_CSharp]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_CSharp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostCSId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[PostCSharpText] [nvarchar](max) NULL,
	[PostCSharpTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Post_CSharp_PostCSId] [int] NULL,
	[PostCSharpSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_CSharp2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_CSharp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_CSReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_CSReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostCSRId] [int] NOT NULL,
	[PostCSRText] [nvarchar](max) NULL,
	[PostCSRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[PostCSId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[PostCSRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Post_CSReplies_PostCSRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_CSharp_Id] [int] NULL,
	[Post_CSReplies2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_CSReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_CSS]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_CSS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostCSSId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[PostCSSText] [nvarchar](max) NULL,
	[PostCSSTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Post_CSS_PostCSSId] [int] NULL,
	[PostCSSSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_CSS2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_CSS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_CSSReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_CSSReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostCSSRId] [int] NOT NULL,
	[PostCSSRText] [nvarchar](max) NULL,
	[PostCSSRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[PostCSSId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[PostCSSRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Post_CSSReplies_PostCSSRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_CSS_Id] [int] NULL,
	[Post_CSSReplies2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_CSSReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_Databases]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Databases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostDbId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[PostDatabasesText] [nvarchar](max) NULL,
	[PostDatabasesTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Post_Databases_PostDbId] [int] NULL,
	[PostDatabasesSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_Databases2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_Databases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_DBA]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_DBA](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostDBAId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[PostDBAText] [nvarchar](max) NULL,
	[PostDBATitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Post_DBA_PostDBAId] [int] NULL,
	[PostDBAKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_DBA2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_DBA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_DBAReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_DBAReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostDBARId] [int] NOT NULL,
	[PostDBARText] [nvarchar](max) NULL,
	[PostDBARTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[PostDBAId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[PostDBARSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Post_DBAReplies_PostDBARId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_DBA_Id] [int] NULL,
	[Post_DBAReplies2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_DBAReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_DBReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_DBReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostDBRId] [int] NOT NULL,
	[PostDBRText] [nvarchar](max) NULL,
	[PostDBRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[PostDbId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[PostDBRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Post_DBReplies_PostDBRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_Databases_Id] [int] NULL,
	[Post_DBReplies2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_DBReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_EntityFrameWorks]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_EntityFrameWorks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostEfId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[PostEfText] [nvarchar](max) NULL,
	[PostEfTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Post_EntityFrameWorks_PostEfId] [int] NULL,
	[PEfSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_EntityFrameWorks2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_EntityFrameWorks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_EntityFReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_EntityFReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostEntityFRepId] [int] NOT NULL,
	[PostEntityFRepText] [nvarchar](max) NULL,
	[PostEntityFRepTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[PostEfId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[PostEntityFRepSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Post_EntityFReplies_PostEntityFRepId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_EntityFrameWorks_Id] [int] NULL,
	[Post_EntityFReplies2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_EntityFReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_JqJava]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_JqJava](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostJqJavaId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[PostJqJavaText] [nvarchar](max) NULL,
	[PostJqJavaTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Post_JqJava_PostJqJavaId] [int] NULL,
	[JqJavaSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_JqJava2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_JqJava] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_JqJavaReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_JqJavaReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostJqJavaRepId] [int] NOT NULL,
	[PostJqJavaRepText] [nvarchar](max) NULL,
	[PostJqJavaRepTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[PostJqJavaId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[PostJqJavaRepSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Post_JqJavaReplies_PostJqJavaRepId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_JqJava_Id] [int] NULL,
	[Post_JqJavaReplies2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_JqJavaReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_Mvc]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Mvc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostMvcId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[PostMvcText] [nvarchar](max) NULL,
	[PostMvcTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Post_Mvc_PostMvcId] [int] NULL,
	[PostMvcSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_Mvc2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_Mvc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_MvcReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_MvcReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostMvcRId] [int] NOT NULL,
	[PostMvcRText] [nvarchar](max) NULL,
	[PostMvcRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[PostMvcId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[PostMvcRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Post_MvcReplies_PostMvcRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_Mvc_Id] [int] NULL,
	[Post_MvcReplies2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_MvcReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_QReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_QReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostQRId] [int] NOT NULL,
	[PostQRText] [nvarchar](max) NULL,
	[PostQRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[PostQId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[PostQRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Post_QReplies_PostQRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_QReplies2_Id] [int] NULL,
	[Post_Question_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_QReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_Question]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Question](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostQId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[PostQText] [nvarchar](max) NULL,
	[PostQTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Post_Question_PostQId] [int] NULL,
	[PostCSharpSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_Question2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_Question] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_Webform]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Webform](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostWformId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[PostWformText] [nvarchar](max) NULL,
	[PostWformTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Post_Webform_PostWformId] [int] NULL,
	[PostWformKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_Webform2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_Webform] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_WebformReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_WebformReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostWformRId] [int] NOT NULL,
	[PostWformRText] [nvarchar](max) NULL,
	[PostWformRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[PostWformId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[PostWformRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Post_WebformReplies_PostWformRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[Post_Webform_Id] [int] NULL,
	[Post_WebformReplies2_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Post_WebformReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Posts]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[RoleId] [nvarchar](max) NULL,
	[PostTitle] [nvarchar](max) NULL,
	[PostText] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[CreatedOn] [datetime] NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[UserId] [int] NOT NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[Post_PostId] [int] NULL,
	[PostSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageId] [int] NULL,
	[LanguageName] [nvarchar](max) NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostTags]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ThreadId] [int] NOT NULL,
	[TagId] [nvarchar](max) NULL,
	[Checked] [bit] NOT NULL,
	[pstid] [nvarchar](max) NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[tbh_Tag_Id] [int] NULL,
 CONSTRAINT [PK_dbo.PostTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostVideos]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostVideos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VideoUrl] [nvarchar](max) NULL,
	[VideoThumbnail] [nvarchar](max) NULL,
	[pstid] [nvarchar](max) NULL,
	[VideoSiteName] [nvarchar](max) NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PostVideos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producers]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfilePictureURL] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Bio] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Producers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProfileModels]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProfileModels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[Firstname] [nvarchar](max) NULL,
	[Lastname] [nvarchar](max) NULL,
	[Fullname] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[IsEmailVerified] [nvarchar](max) NULL,
	[IsTwoFactorOn] [nvarchar](max) NULL,
	[Birthday] [datetime] NULL,
	[Country] [nvarchar](max) NULL,
	[EmailLinkDate] [datetime] NULL,
	[JoinDate] [datetime] NULL,
	[LastLoginDate] [datetime] NULL,
	[UserProfile] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserPhoto] [varbinary](max) NULL,
	[image] [varbinary](max) NULL,
	[PersonalPhoto] [varbinary](max) NULL,
	[LoginCount] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProfileModels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReactReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReactReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReactRId] [int] NOT NULL,
	[ReactRText] [nvarchar](max) NULL,
	[ReactRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[ReactId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[ReactRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[ReactReplies_ReactRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[ReactReply1_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.ReactReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reacts]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReactId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[ReactText] [nvarchar](max) NULL,
	[ReactTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[React_ReactId] [int] NULL,
	[ReactSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Reacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Searches]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Searches](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SearchId] [int] NOT NULL,
	[DbId] [int] NULL,
	[CSId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[Search_SearchId] [int] NULL,
	[CSharp_Id] [int] NULL,
	[Databas_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Searches] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SenderPhotoUrls]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SenderPhotoUrls](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RecipientId] [int] NOT NULL,
	[RecipientUsername] [nvarchar](max) NULL,
	[RecipientPhotoUrl] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[DateRead] [datetime] NULL,
	[MessageSent] [datetime] NOT NULL,
	[SenderDeleted] [bit] NOT NULL,
	[RecipientDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SenderPhotoUrls] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](max) NULL,
	[lastName] [nvarchar](max) NULL,
	[feesPaid] [int] NOT NULL,
	[gender] [nvarchar](max) NULL,
	[emailId] [nvarchar](max) NULL,
	[telephoneNumber] [nvarchar](max) NULL,
	[dateOfBirth] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
	[creationDate] [datetime] NOT NULL,
	[lastModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Album]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Album](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AlbumID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[PublishOn] [datetime] NOT NULL,
	[ViewsCount] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Album] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Blog]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Blog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BlogID] [int] NOT NULL,
	[Heading] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[SubTitle] [nvarchar](max) NULL,
	[Details] [nvarchar](max) NULL,
	[PublishOn] [datetime] NOT NULL,
	[AddedBy] [int] NULL,
	[DateAdded] [datetime] NULL,
 CONSTRAINT [PK_dbo.tbh_Blog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Brand]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BID] [decimal](18, 2) NOT NULL,
	[BName] [nvarchar](max) NULL,
	[BLogo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbh_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Category]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbh_Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[MenuUrl] [nvarchar](max) NULL,
	[CatImage] [varbinary](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[MenuIcon] [nvarchar](max) NULL,
	[SortOrder] [int] NULL,
	[DateAdded] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Status] [bit] NULL,
	[Ancestor] [nvarchar](max) NULL,
	[cartoon] [nvarchar](max) NULL,
	[tbh_Category2_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbh_CommentLike]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_CommentLike](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommentLikeId] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Like] [bit] NOT NULL,
	[Dislike] [bit] NOT NULL,
	[CommentId] [nvarchar](max) NULL,
	[tbh_Comments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_CommentLike] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Comments]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Body] [nvarchar](max) NULL,
	[NetLikeCount] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[PageId] [nvarchar](max) NULL,
	[pstid] [nvarchar](max) NULL,
	[ParentReplyId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbh_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Communications]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Communications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommunicationID] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[ParentId] [int] NULL,
	[MenuURL] [nvarchar](max) NULL,
	[SortOrder] [int] NULL,
	[AddedDate] [datetime] NULL,
	[AddedBy] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Importance] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Picture1] [nvarchar](max) NULL,
	[Picture2] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[Ancestor] [nvarchar](max) NULL,
	[isActive] [bit] NULL,
	[tbh_Departments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Communications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_CompanyStory]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_CompanyStory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CStoryID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[EmbedCode] [nvarchar](max) NULL,
	[OtherDetails] [nvarchar](max) NULL,
	[AddedBy] [int] NULL,
	[DateAdded] [datetime] NULL,
 CONSTRAINT [PK_dbo.tbh_CompanyStory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_ContactUs]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbh_ContactUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContactUsID] [decimal](18, 2) NOT NULL,
	[UserId] [int] NOT NULL,
	[Subject] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[emailid] [nvarchar](max) NULL,
	[phone] [decimal](18, 2) NULL,
	[message] [nvarchar](max) NULL,
	[messagedate] [datetime] NULL,
	[FileName] [nvarchar](max) NULL,
	[Upload] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[ContentType] [nvarchar](max) NULL,
	[Content] [varbinary](max) NULL,
	[FileType] [int] NOT NULL,
	[AspNetUser_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_ContactUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbh_ContactUsEnquiry]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_ContactUsEnquiry](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CEnquiryID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[YourMessage] [nvarchar](max) NULL,
	[DateAdded] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.tbh_ContactUsEnquiry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Coupon]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Coupon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CouponID] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[Status] [bit] NOT NULL,
	[Start_Date] [datetime] NOT NULL,
	[End_Date] [datetime] NOT NULL,
	[AspNetUser_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Coupon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Departments]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[ParentId] [int] NULL,
	[MenuURL] [nvarchar](max) NULL,
	[SortOrder] [int] NULL,
	[AddedDate] [datetime] NULL,
	[AddedBy] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Importance] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Picture1] [nvarchar](max) NULL,
	[Picture2] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[Ancestor] [nvarchar](max) NULL,
	[isActive] [bit] NULL,
	[tbh_Departments2_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Documents]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Documents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[file_id] [int] NOT NULL,
	[file_name] [nvarchar](max) NULL,
	[file_ext] [nvarchar](max) NULL,
	[file_base6] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbh_Documents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_DSReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_DSReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DSReplyId] [int] NOT NULL,
	[DSReplyText] [nvarchar](max) NULL,
	[DSReplyTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[PostId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[ReplytSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[tbh_DSReplies_DSReplyId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_DSReplies2_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_DSReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Faq]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Faq](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FaqID] [int] NOT NULL,
	[AddedBy] [int] NOT NULL,
	[DateAdded] [datetime] NOT NULL,
	[Question] [nvarchar](max) NULL,
	[Answer] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbh_Faq] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_FeeEnquiry]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_FeeEnquiry](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FEnquiryID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[DateAdded] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.tbh_FeeEnquiry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_FrontSlider]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_FrontSlider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FsID] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[FsURL] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[Picture1] [nvarchar](max) NULL,
	[Picture2] [nvarchar](max) NULL,
	[Picture3] [nvarchar](max) NULL,
	[AltText] [nvarchar](max) NULL,
	[BtnText] [nvarchar](max) NULL,
	[OfferTag] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[Status] [int] NOT NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_FrontSlider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Gallery]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Gallery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GalleryID] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[ParentId] [int] NULL,
	[MenuURL] [nvarchar](max) NULL,
	[SortOrder] [int] NULL,
	[AddedDate] [datetime] NULL,
	[AddedBy] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Importance] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Picture1] [nvarchar](max) NULL,
	[Picture2] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[Ancestor] [nvarchar](max) NULL,
	[isActive] [bit] NULL,
	[tbh_Departments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Gallery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_InstallmentStatus]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_InstallmentStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IStatusID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbh_InstallmentStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Language]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Language](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[LanguageName] [nvarchar](max) NULL,
	[LanguageDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbh_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Media]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Media](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MediaID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[MediaUrl] [nvarchar](max) NULL,
	[alt] [nvarchar](max) NULL,
	[title] [nvarchar](max) NULL,
	[AddedBy] [int] NULL,
	[DateAdded] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[DateModied] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_dbo.tbh_Media] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Membership]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Membership](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MSliderID] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[Username] [nvarchar](max) NULL,
	[PhotoUrl] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
	[KnownAs] [nvarchar](max) NULL,
	[Created] [datetime] NOT NULL,
	[LastActive] [datetime] NOT NULL,
	[Gender] [nvarchar](max) NULL,
	[Introduction] [nvarchar](max) NULL,
	[LookingFor] [nvarchar](max) NULL,
	[Interests] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbh_Membership] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_MenuMaster]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_MenuMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuMasterID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.tbh_MenuMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_MenuPermission]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_MenuPermission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MPID] [int] NOT NULL,
	[MenuID] [int] NULL,
	[RoleID] [int] NOT NULL,
	[AccountID] [int] NULL,
	[SortOrder] [int] NULL,
	[IsCreate] [bit] NOT NULL,
	[IsRead] [bit] NOT NULL,
	[IsUpdate] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.tbh_MenuPermission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_OrderDetails]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_OrderDetails](
	[OrderDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Coupon] [nvarchar](max) NULL,
	[Discount] [decimal](18, 2) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[OrderDate] [datetime] NULL,
	[tbh_Products_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Pages]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Pages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PageID] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[PageURL] [nvarchar](max) NULL,
	[SortOrder] [int] NULL,
	[MenuIcon] [nvarchar](max) NULL,
	[AddedDate] [datetime] NULL,
	[AddedBy] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[SKU] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[OldPrice] [decimal](18, 2) NULL,
	[DiscountPercentage] [int] NULL,
	[UnitsInStock] [int] NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[AltText] [nvarchar](max) NULL,
	[AddBadge] [bit] NULL,
	[OfferTitle] [nvarchar](max) NULL,
	[OfferBadgeClass] [nvarchar](max) NULL,
	[TotalRating] [int] NULL,
	[Picture1] [nvarchar](max) NULL,
	[Picture2] [nvarchar](max) NULL,
	[Picture3] [nvarchar](max) NULL,
	[Picture4] [nvarchar](max) NULL,
	[IsFor] [nvarchar](max) NULL,
	[PermissionTo] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[Status] [int] NOT NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Pages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Payments]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentID] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[CreditAmount] [decimal](18, 2) NULL,
	[DebitAmount] [decimal](18, 2) NULL,
	[Balance] [decimal](18, 2) NULL,
	[PaymentDateTime] [datetime] NULL,
	[tbh_PaymentTypes_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_PaymentTypes]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_PaymentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PayTypeID] [int] NOT NULL,
	[TypeName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbh_PaymentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_PostCategory]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_PostCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [nvarchar](max) NULL,
	[Checked] [bit] NOT NULL,
	[pstid] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbh_PostCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_PostLike]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_PostLike](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostLikeId] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Like] [bit] NOT NULL,
	[Dislike] [bit] NOT NULL,
	[ThreadId] [int] NULL,
	[PostId] [int] NULL,
	[pstid] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
	[KnownAs] [nvarchar](max) NULL,
	[PhotoUrl] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Thread_Id] [int] NULL,
	[Thread_Id1] [int] NULL,
	[Thread1_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_PostLike] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_PostMeta]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_PostMeta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PMetaID] [int] NOT NULL,
	[MetaTitle] [nvarchar](max) NULL,
	[MetaKeywords] [nvarchar](max) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[AddedBy] [int] NULL,
	[DateAdded] [datetime] NULL,
	[PageID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.tbh_PostMeta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_ProductBrand]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_ProductBrand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BID] [decimal](18, 2) NOT NULL,
	[BName] [nvarchar](max) NULL,
	[BLogo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbh_ProductBrand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_ProductCart]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_ProductCart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[cartid] [decimal](18, 2) NOT NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[TotalRating] [decimal](18, 2) NULL,
	[qty] [decimal](18, 2) NULL,
	[size] [nvarchar](max) NULL,
	[color] [nvarchar](max) NULL,
	[brand] [nvarchar](max) NULL,
	[total] [decimal](18, 2) NULL,
	[username] [nvarchar](max) NULL,
	[ProductID] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.tbh_ProductCart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_ProductCoupon]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_ProductCoupon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CouponID] [decimal](18, 2) NOT NULL,
	[CouponName] [nvarchar](max) NULL,
	[MinCartValue] [decimal](18, 2) NULL,
	[CouponPercent] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.tbh_ProductCoupon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_productpic]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_productpic](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[picid] [int] NOT NULL,
	[PID] [decimal](18, 2) NULL,
	[ProductID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[ColorImageUrl] [nvarchar](max) NULL,
	[colorname] [nvarchar](max) NULL,
	[DepartmentID] [decimal](18, 2) NULL,
	[SubDepartmentID] [decimal](18, 2) NULL,
	[Status] [bit] NULL,
	[Main] [bit] NULL,
	[tbh_productpic_picid] [int] NULL,
	[tbh_productpic2_Id] [int] NULL,
	[tbh_Products_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_productpic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Products]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[ShopID] [int] NULL,
	[CategoryID] [int] NULL,
	[SubCategoryID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[ProductsURL] [nvarchar](max) NULL,
	[SortOrder] [int] NULL,
	[MenuIcon] [nvarchar](max) NULL,
	[AddedDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[AddedBy] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[SKU] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[OldPrice] [decimal](18, 2) NULL,
	[DiscountPercentage] [int] NULL,
	[UnitsInStock] [int] NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[AltText] [nvarchar](max) NULL,
	[AddBadge] [bit] NULL,
	[OfferTitle] [nvarchar](max) NULL,
	[OfferBadgeClass] [nvarchar](max) NULL,
	[TotalRating] [int] NULL,
	[Picture1] [nvarchar](max) NULL,
	[Picture2] [nvarchar](max) NULL,
	[Picture3] [nvarchar](max) NULL,
	[Picture4] [nvarchar](max) NULL,
	[IsFor] [nvarchar](max) NULL,
	[PermissionTo] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[Status] [int] NOT NULL,
	[Main] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ZoomUrl] [nvarchar](max) NULL,
	[ProductType] [nvarchar](max) NULL,
	[ProductBrand] [nvarchar](max) NULL,
	[ManufacturerId] [int] NOT NULL,
	[tbh_Products_ProductID] [int] NULL,
	[CategoryItems] [int] NOT NULL,
	[tbh_Category_Id] [int] NULL,
	[tbh_SubCategory_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Products2_Id] [int] NULL,
	[tbh_Shop_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
	[Producer_Id] [int] NULL,
	[Vendor_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_ProductsDetails]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_ProductsDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PDetailsID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[PID] [int] NULL,
	[Features] [nvarchar](max) NULL,
	[Model] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
	[SType] [nvarchar](max) NULL,
	[size] [nvarchar](max) NULL,
	[UnitsInstock] [decimal](18, 2) NULL,
	[tbh_Products_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_ProductsDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_ProductSize]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_ProductSize](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [decimal](18, 2) NULL,
	[SubDepartmentID] [decimal](18, 2) NULL,
	[PID] [decimal](18, 2) NULL,
	[ProductID] [decimal](18, 2) NULL,
	[colorid] [decimal](18, 2) NULL,
	[size] [nvarchar](max) NULL,
	[UnitsInstock] [decimal](18, 2) NULL,
	[sizeid] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.tbh_ProductSize] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_ReadPost]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_ReadPost](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RPId] [int] NOT NULL,
	[ThreadId] [int] NULL,
	[ReplyId] [int] NULL,
	[ThreadText] [nvarchar](max) NULL,
	[ThreadTitle] [nvarchar](max) NULL,
	[ReplyText] [nvarchar](max) NULL,
	[ReplyTitle] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Replies_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_ReadPost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_RecentlyViews]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_RecentlyViews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RViewID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserId] [int] NULL,
	[ViewDate] [datetime] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[AspNetUser_Id] [int] NULL,
	[tbh_Products_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_RecentlyViews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Replies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Replies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReplyId] [int] NOT NULL,
	[ReplyText] [nvarchar](max) NULL,
	[ReplyTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[ThreadId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[ReplytSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[tbh_Replies_ReplyId] [int] NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_Replies2_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Replies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_ReplyLike]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_ReplyLike](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReplyLikeId] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Like] [bit] NOT NULL,
	[Dislike] [bit] NOT NULL,
	[ReplyId] [int] NULL,
	[tbh_Replies_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_ReplyLike] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Reviews]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReviewID] [int] NOT NULL,
	[UserId] [int] NULL,
	[ProductID] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Review1] [nvarchar](max) NULL,
	[Rate] [int] NULL,
	[DateTime] [datetime] NULL,
	[isDelete] [bit] NULL,
	[AspNetUser_Id] [int] NULL,
	[tbh_Products_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Services]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[ParentId] [int] NULL,
	[MenuURL] [nvarchar](max) NULL,
	[SortOrder] [int] NULL,
	[AddedDate] [datetime] NULL,
	[AddedBy] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Importance] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Picture1] [nvarchar](max) NULL,
	[Picture2] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[Ancestor] [nvarchar](max) NULL,
	[isActive] [bit] NULL,
	[tbh_Departments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Setting]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Setting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SettingID] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbh_Setting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_SettingMeta]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_SettingMeta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SMetaID] [int] NOT NULL,
	[TableName] [nvarchar](max) NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaValue] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[AddedBy] [int] NULL,
	[DateAdded] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[DateModied] [datetime] NULL,
	[tbh_SettingMeta2_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_SettingMeta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_ShippingDetails]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_ShippingDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShippingID] [int] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Province] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[PostCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbh_ShippingDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Shop]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Shop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShopID] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[ParentId] [int] NULL,
	[MenuURL] [nvarchar](max) NULL,
	[SortOrder] [int] NULL,
	[AddedDate] [datetime] NULL,
	[AddedBy] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Importance] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Picture1] [nvarchar](max) NULL,
	[Picture2] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[Ancestor] [nvarchar](max) NULL,
	[isActive] [bit] NULL,
	[tbh_Departments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Shop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Slider]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Slider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SliderID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbh_Slider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_SliderItem]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_SliderItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SItemID] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[SubTitle] [nvarchar](max) NULL,
	[Details] [nvarchar](max) NULL,
	[SliderPicture] [nvarchar](max) NULL,
	[SliderID] [int] NULL,
	[tbh_Slider_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_SliderItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Social]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Social](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SocialID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[UrlText] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[AddedBy] [int] NULL,
	[DateAdded] [datetime] NULL,
 CONSTRAINT [PK_dbo.tbh_Social] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_SocialLink]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_SocialLink](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SLinkID] [int] NOT NULL,
	[SocialID] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[UrlText] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[AddedBy] [int] NULL,
	[DateAdded] [datetime] NULL,
	[tbh_Social_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_SocialLink] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_SubCategory]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_SubCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Picture1] [nvarchar](max) NULL,
	[Picture2] [nvarchar](max) NULL,
	[isActive] [bit] NULL,
	[tbh_Category_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_SubCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_SubDepartments]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_SubDepartments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubDepartmentID] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[ParentId] [int] NULL,
	[MenuURL] [nvarchar](max) NULL,
	[MenuIcon] [nvarchar](max) NULL,
	[SortOrder] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[SubDeptPic] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Picture1] [nvarchar](max) NULL,
	[Picture2] [nvarchar](max) NULL,
	[isActive] [bit] NULL,
	[MenuMasterID] [int] NULL,
	[tbh_SubDepartments_SubDepartmentID] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_MenuMaster_Id] [int] NULL,
	[tbh_SubDepartments2_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_SubDepartments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Subscribe]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Subscribe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubscribeId] [decimal](18, 2) NOT NULL,
	[UserId] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
	[emailid] [nvarchar](max) NULL,
	[AspNetUsers_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Subscribe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Tag]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Tag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UrlSeo] [nvarchar](max) NULL,
	[Checked] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.tbh_Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbh_Wishlist]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbh_Wishlist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WishlistID] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[isActive] [bit] NULL,
	[AspNetUser_Id] [int] NULL,
	[tbh_Products_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tbh_Wishlist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_file]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_file](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[file_id] [int] NOT NULL,
	[file_name] [nvarchar](max) NULL,
	[file_ext] [nvarchar](max) NULL,
	[file_base6] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tbl_file] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Order]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[PaymentID] [int] NULL,
	[ShippingID] [int] NULL,
	[CouponID] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[tbl_Order_OrderId] [int] NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ShippingMethod] [nvarchar](max) NULL,
	[SubTotal] [decimal](18, 2) NULL,
	[Shipping] [decimal](18, 2) NULL,
	[Street] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Fax] [nvarchar](max) NULL,
	[DeliveryMethod] [nvarchar](max) NULL,
	[ShippedDate] [datetime] NULL,
	[TransactionID] [nvarchar](max) NULL,
	[TrackingID] [nvarchar](max) NULL,
	[Discount] [int] NULL,
	[Taxes] [int] NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[isCompleted] [bit] NULL,
	[OrderDate] [datetime] NULL,
	[DIspatched] [bit] NULL,
	[DispatchedDate] [datetime] NULL,
	[Shipped] [bit] NULL,
	[ShippingDate] [datetime] NULL,
	[Deliver] [bit] NULL,
	[DeliveryDate] [datetime] NULL,
	[Notes] [nvarchar](max) NULL,
	[CancelOrder] [bit] NULL,
	[AspNetUser_Id] [int] NULL,
	[tbh_Coupon_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Payments_Id] [int] NULL,
	[tbh_ShippingDetails_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
	[tbl_Order2_OrderId] [int] NULL,
 CONSTRAINT [PK_dbo.tbl_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblVideos]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblVideos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ContentType] [nvarchar](max) NULL,
	[Data] [varbinary](max) NULL,
	[FileSize] [int] NULL,
	[FilePath] [nvarchar](max) NULL,
	[tblVideo_Id] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[PostDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[VideoTitle] [nvarchar](max) NULL,
	[AspNetUser_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
	[tblVideo2_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tblVideos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Threads]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Threads](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ThreadId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[ThreadText] [nvarchar](max) NULL,
	[ThreadTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[Thread_ThreadId] [int] NULL,
	[ThreadSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Threads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserDtoes]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDtoes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Token] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.UserDtoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfilePictureURL] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Bio] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Vendors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCFReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCFReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WCFRId] [int] NOT NULL,
	[WCFRText] [nvarchar](max) NULL,
	[WCFRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[WCFId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[WCFRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[WCFReplies_WCFRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
	[WCFReply1_Id] [int] NULL,
 CONSTRAINT [PK_dbo.WCFReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCFs]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCFs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WCFId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[WCFText] [nvarchar](max) NULL,
	[WCFTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[WCF_WCFId] [int] NULL,
	[WCFSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.WCFs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WebApiReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebApiReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WebApiRId] [int] NOT NULL,
	[WebApiRText] [nvarchar](max) NULL,
	[WebApiRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[WebApiId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[WebApiRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[WebApiReplies_WebApiRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
	[WebApiReply1_Id] [int] NULL,
 CONSTRAINT [PK_dbo.WebApiReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WebApis]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebApis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WebApiId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[WebApiText] [nvarchar](max) NULL,
	[WebApiTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[WebApi_WebApiId] [int] NULL,
	[WebApiSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.WebApis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](max) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](max) NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](max) NULL,
	[PasswordVerificationToken] [nvarchar](max) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.webpages_Membership] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Provider] [nvarchar](max) NULL,
	[ProviderUserId] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.webpages_OAuthMembership] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[RoleName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.webpages_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[webpages_Roles_Id] [int] NULL,
 CONSTRAINT [PK_dbo.webpages_UsersInRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Wishlists]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WishlistID] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[isActive] [bit] NULL,
	[AspNetUser_Id] [int] NULL,
	[tbh_Products_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Wishlists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WPFReplies]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WPFReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WPFRId] [int] NOT NULL,
	[WPFRText] [nvarchar](max) NULL,
	[WPFRTitle] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NOT NULL,
	[WPFId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[WPFRSku] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[WPFReplies_WPFRId] [int] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
	[WPFReply1_Id] [int] NULL,
 CONSTRAINT [PK_dbo.WPFReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WPFs]    Script Date: 9/27/2022 8:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WPFs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WPFId] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[LanguageId] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[WPFText] [nvarchar](max) NULL,
	[WPFTitle] [nvarchar](max) NULL,
	[MenuURL] [nvarchar](max) NULL,
	[FullImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[GetUserName] [nvarchar](max) NULL,
	[UserProfile_Id] [nvarchar](max) NULL,
	[MemberProfile] [nvarchar](max) NULL,
	[WPF_WPFId] [int] NULL,
	[WPFSKu] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[LanguageName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[Reply] [nvarchar](max) NULL,
	[TID] [int] NOT NULL,
	[AspNetUsers_Id] [int] NULL,
	[tbh_Departments_Id] [int] NULL,
	[tbh_Language_Id] [int] NULL,
	[tbh_SubDepartments_Id] [int] NULL,
 CONSTRAINT [PK_dbo.WPFs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_AjaxId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AjaxId] ON [dbo].[Ajaxes]
(
	[AjaxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Ajaxes]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Ajaxes]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Ajaxes]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Ajaxes]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AjaxId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AjaxId] ON [dbo].[AjaxReplies]
(
	[AjaxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AjaxReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AjaxReply1_Id] ON [dbo].[AjaxReplies]
(
	[AjaxReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[AjaxReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[AjaxReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[AjaxReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[AjaxReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AngularId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AngularId] ON [dbo].[AngularReplies]
(
	[AngularId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AngularReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AngularReply1_Id] ON [dbo].[AngularReplies]
(
	[AngularReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[AngularReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[AngularReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[AngularReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[AngularReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AngularId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AngularId] ON [dbo].[Angulars]
(
	[AngularId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Angulars]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Angulars]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Angulars]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Angulars]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProfileModel_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProfileModel_Id] ON [dbo].[AspNetUsers]
(
	[ProfileModel_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[AspWebFormReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspWebform_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspWebform_Id] ON [dbo].[AspWebFormReplies]
(
	[AspWebform_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspWebFormReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspWebFormReply1_Id] ON [dbo].[AspWebFormReplies]
(
	[AspWebFormReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[AspWebFormReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[AspWebFormReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[AspWebFormReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[AspWebforms]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspWebform2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspWebform2_Id] ON [dbo].[AspWebforms]
(
	[AspWebform2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[AspWebforms]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[AspWebforms]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[AspWebforms]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[AzureReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AzureId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AzureId] ON [dbo].[AzureReplies]
(
	[AzureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AzureReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AzureReply1_Id] ON [dbo].[AzureReplies]
(
	[AzureReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[AzureReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[AzureReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[AzureReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Azures]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AzureId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AzureId] ON [dbo].[Azures]
(
	[AzureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Azures]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Azures]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Azures]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[C__]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_C__Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_C__Id] ON [dbo].[C__]
(
	[C__Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[C__]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[C__]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[C__]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[C__Replies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_C__Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_C__Id] ON [dbo].[C__Replies]
(
	[C__Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_C__Replies2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_C__Replies2_Id] ON [dbo].[C__Replies]
(
	[C__Replies2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[C__Replies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[C__Replies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[C__Replies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cart2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Cart2_Id] ON [dbo].[Carts]
(
	[Cart2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Products_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Products_Id] ON [dbo].[Carts]
(
	[tbh_Products_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[CSharps]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CSharp2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_CSharp2_Id] ON [dbo].[CSharps]
(
	[CSharp2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[CSharps]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[CSharps]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[CSharps]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[CSReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CSharp_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_CSharp_Id] ON [dbo].[CSReplies]
(
	[CSharp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CSReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_CSReply1_Id] ON [dbo].[CSReplies]
(
	[CSReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[CSReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[CSReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[CSReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[CSSes]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CSSId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_CSSId] ON [dbo].[CSSes]
(
	[CSSId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[CSSes]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[CSSes]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[CSSes]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[CSSReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CSSId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_CSSId] ON [dbo].[CSSReplies]
(
	[CSSId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CSSReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_CSSReply1_Id] ON [dbo].[CSSReplies]
(
	[CSSReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[CSSReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[CSSReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[CSSReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Databas]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Databas1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Databas1_Id] ON [dbo].[Databas]
(
	[Databas1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Databas]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Databas]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Databas]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[DBAReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DBAId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_DBAId] ON [dbo].[DBAReplies]
(
	[DBAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DBAReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_DBAReply1_Id] ON [dbo].[DBAReplies]
(
	[DBAReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[DBAReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[DBAReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[DBAReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[DBAs]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DBAId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_DBAId] ON [dbo].[DBAs]
(
	[DBAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[DBAs]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[DBAs]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[DBAs]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[DBReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Databas_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Databas_Id] ON [dbo].[DBReplies]
(
	[Databas_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DBReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_DBReply1_Id] ON [dbo].[DBReplies]
(
	[DBReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[DBReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[DBReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[DBReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[DotNetReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DotNetId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_DotNetId] ON [dbo].[DotNetReplies]
(
	[DotNetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DotNetReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_DotNetReply1_Id] ON [dbo].[DotNetReplies]
(
	[DotNetReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[DotNetReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[DotNetReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[DotNetReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[DotNets]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DotNetId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_DotNetId] ON [dbo].[DotNets]
(
	[DotNetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[DotNets]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[DotNets]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[DotNets]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[EntityFrameWorks]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EntityFrameWork2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_EntityFrameWork2_Id] ON [dbo].[EntityFrameWorks]
(
	[EntityFrameWork2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[EntityFrameWorks]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[EntityFrameWorks]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[EntityFrameWorks]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[EntityFReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EntityFrameWork_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_EntityFrameWork_Id] ON [dbo].[EntityFReplies]
(
	[EntityFrameWork_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EntityFReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_EntityFReply1_Id] ON [dbo].[EntityFReplies]
(
	[EntityFReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[EntityFReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[EntityFReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[EntityFReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Category_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Category_Id] ON [dbo].[genPromoRights]
(
	[tbh_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[JavaReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_JavaId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_JavaId] ON [dbo].[JavaReplies]
(
	[JavaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_JavaReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_JavaReply1_Id] ON [dbo].[JavaReplies]
(
	[JavaReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[JavaReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[JavaReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[JavaReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Javas]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_JavaId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_JavaId] ON [dbo].[Javas]
(
	[JavaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Javas]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Javas]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Javas]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[JqJavaReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_JqJavaId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_JqJavaId] ON [dbo].[JqJavaReplies]
(
	[JqJavaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_JqJavaReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_JqJavaReply1_Id] ON [dbo].[JqJavaReplies]
(
	[JqJavaReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[JqJavaReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[JqJavaReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[JqJavaReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[JqJavas]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_JqJavaId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_JqJavaId] ON [dbo].[JqJavas]
(
	[JqJavaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[JqJavas]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[JqJavas]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[JqJavas]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[MVCReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MVCId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_MVCId] ON [dbo].[MVCReplies]
(
	[MVCId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MVCReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_MVCReply1_Id] ON [dbo].[MVCReplies]
(
	[MVCReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[MVCReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[MVCReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[MVCReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[MVCs]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MVCId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_MVCId] ON [dbo].[MVCs]
(
	[MVCId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[MVCs]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[MVCs]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[MVCs]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[NetCoreReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NetCoreId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_NetCoreId] ON [dbo].[NetCoreReplies]
(
	[NetCoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NetCoreReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_NetCoreReply1_Id] ON [dbo].[NetCoreReplies]
(
	[NetCoreReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[NetCoreReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[NetCoreReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[NetCoreReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[NetCores]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NetCoreId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_NetCoreId] ON [dbo].[NetCores]
(
	[NetCoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[NetCores]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[NetCores]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[NetCores]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[NLReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NLReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_NLReply1_Id] ON [dbo].[NLReplies]
(
	[NLReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[NoSqlReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NoSqlId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_NoSqlId] ON [dbo].[NoSqlReplies]
(
	[NoSqlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NoSqlReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_NoSqlReply1_Id] ON [dbo].[NoSqlReplies]
(
	[NoSqlReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[NoSqlReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[NoSqlReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[NoSqlReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[NoSqls]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NoSqlId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_NoSqlId] ON [dbo].[NoSqls]
(
	[NoSqlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[NoSqls]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[NoSqls]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[NoSqls]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[NoteListReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NoteListId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_NoteListId] ON [dbo].[NoteListReplies]
(
	[NoteListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NoteListReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_NoteListReply1_Id] ON [dbo].[NoteListReplies]
(
	[NoteListReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[NoteListReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[NoteListReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[NoteListReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[NoteLists]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NoteListId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_NoteListId] ON [dbo].[NoteLists]
(
	[NoteListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[NoteLists]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[NoteLists]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[NoteLists]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[NotesPageReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NotesPageId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_NotesPageId] ON [dbo].[NotesPageReplies]
(
	[NotesPageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NotesPageReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_NotesPageReply1_Id] ON [dbo].[NotesPageReplies]
(
	[NotesPageReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[NotesPageReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[NotesPageReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[NotesPageReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[NotesPages]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NotesPageId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_NotesPageId] ON [dbo].[NotesPages]
(
	[NotesPageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[NotesPages]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[NotesPages]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[NotesPages]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MembersDto_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_MembersDto_Id] ON [dbo].[PhotoDtoes]
(
	[MembersDto_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Membership_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Membership_Id] ON [dbo].[PhotoDtoes]
(
	[tbh_Membership_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_CSharp]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_CSharp2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_CSharp2_Id] ON [dbo].[Post_CSharp]
(
	[Post_CSharp2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_CSharp]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_CSharp]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_CSharp]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_CSReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_CSharp_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_CSharp_Id] ON [dbo].[Post_CSReplies]
(
	[Post_CSharp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_CSReplies2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_CSReplies2_Id] ON [dbo].[Post_CSReplies]
(
	[Post_CSReplies2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_CSReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_CSReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_CSReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_CSS]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_CSS2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_CSS2_Id] ON [dbo].[Post_CSS]
(
	[Post_CSS2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_CSS]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_CSS]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_CSS]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_CSSReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_CSS_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_CSS_Id] ON [dbo].[Post_CSSReplies]
(
	[Post_CSS_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_CSSReplies2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_CSSReplies2_Id] ON [dbo].[Post_CSSReplies]
(
	[Post_CSSReplies2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_CSSReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_CSSReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_CSSReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_Databases]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_Databases2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_Databases2_Id] ON [dbo].[Post_Databases]
(
	[Post_Databases2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_Databases]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_Databases]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_Databases]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_DBA]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_DBA2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_DBA2_Id] ON [dbo].[Post_DBA]
(
	[Post_DBA2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_DBA]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_DBA]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_DBA]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_DBAReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_DBA_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_DBA_Id] ON [dbo].[Post_DBAReplies]
(
	[Post_DBA_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_DBAReplies2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_DBAReplies2_Id] ON [dbo].[Post_DBAReplies]
(
	[Post_DBAReplies2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_DBAReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_DBAReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_DBAReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_DBReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_Databases_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_Databases_Id] ON [dbo].[Post_DBReplies]
(
	[Post_Databases_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_DBReplies2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_DBReplies2_Id] ON [dbo].[Post_DBReplies]
(
	[Post_DBReplies2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_DBReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_DBReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_DBReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_EntityFrameWorks]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_EntityFrameWorks2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_EntityFrameWorks2_Id] ON [dbo].[Post_EntityFrameWorks]
(
	[Post_EntityFrameWorks2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_EntityFrameWorks]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_EntityFrameWorks]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_EntityFrameWorks]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_EntityFReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_EntityFrameWorks_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_EntityFrameWorks_Id] ON [dbo].[Post_EntityFReplies]
(
	[Post_EntityFrameWorks_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_EntityFReplies2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_EntityFReplies2_Id] ON [dbo].[Post_EntityFReplies]
(
	[Post_EntityFReplies2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_EntityFReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_EntityFReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_EntityFReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_JqJava]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_JqJava2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_JqJava2_Id] ON [dbo].[Post_JqJava]
(
	[Post_JqJava2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_JqJava]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_JqJava]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_JqJava]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_JqJavaReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_JqJava_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_JqJava_Id] ON [dbo].[Post_JqJavaReplies]
(
	[Post_JqJava_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_JqJavaReplies2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_JqJavaReplies2_Id] ON [dbo].[Post_JqJavaReplies]
(
	[Post_JqJavaReplies2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_JqJavaReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_JqJavaReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_JqJavaReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_Mvc]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_Mvc2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_Mvc2_Id] ON [dbo].[Post_Mvc]
(
	[Post_Mvc2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_Mvc]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_Mvc]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_Mvc]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_MvcReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_Mvc_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_Mvc_Id] ON [dbo].[Post_MvcReplies]
(
	[Post_Mvc_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_MvcReplies2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_MvcReplies2_Id] ON [dbo].[Post_MvcReplies]
(
	[Post_MvcReplies2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_MvcReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_MvcReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_MvcReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_QReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_QReplies2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_QReplies2_Id] ON [dbo].[Post_QReplies]
(
	[Post_QReplies2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_Question_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_Question_Id] ON [dbo].[Post_QReplies]
(
	[Post_Question_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_QReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_QReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_QReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_Question]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_Question2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_Question2_Id] ON [dbo].[Post_Question]
(
	[Post_Question2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_Question]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_Question]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_Question]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_Webform]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_Webform2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_Webform2_Id] ON [dbo].[Post_Webform]
(
	[Post_Webform2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_Webform]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_Webform]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_Webform]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Post_WebformReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_Webform_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_Webform_Id] ON [dbo].[Post_WebformReplies]
(
	[Post_Webform_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Post_WebformReplies2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Post_WebformReplies2_Id] ON [dbo].[Post_WebformReplies]
(
	[Post_WebformReplies2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Post_WebformReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Post_WebformReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Post_WebformReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Posts]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PostId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_PostId] ON [dbo].[Posts]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Posts]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Posts]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Tag_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Tag_Id] ON [dbo].[PostTags]
(
	[tbh_Tag_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ThreadId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ThreadId] ON [dbo].[PostTags]
(
	[ThreadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[ReactReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReactId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ReactId] ON [dbo].[ReactReplies]
(
	[ReactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReactReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ReactReply1_Id] ON [dbo].[ReactReplies]
(
	[ReactReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[ReactReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[ReactReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[ReactReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Reacts]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReactId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ReactId] ON [dbo].[Reacts]
(
	[ReactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Reacts]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Reacts]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Reacts]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CSharp_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_CSharp_Id] ON [dbo].[Searches]
(
	[CSharp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Databas_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Databas_Id] ON [dbo].[Searches]
(
	[Databas_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SearchId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_SearchId] ON [dbo].[Searches]
(
	[SearchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Category2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Category2_Id] ON [dbo].[tbh_Category]
(
	[tbh_Category2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Comments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Comments_Id] ON [dbo].[tbh_CommentLike]
(
	[tbh_Comments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[tbh_Communications]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUser_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUser_Id] ON [dbo].[tbh_ContactUs]
(
	[AspNetUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUser_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUser_Id] ON [dbo].[tbh_Coupon]
(
	[AspNetUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments2_Id] ON [dbo].[tbh_Departments]
(
	[tbh_Departments2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[tbh_DSReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PostId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_PostId] ON [dbo].[tbh_DSReplies]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[tbh_DSReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_DSReplies2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_DSReplies2_Id] ON [dbo].[tbh_DSReplies]
(
	[tbh_DSReplies2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[tbh_DSReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[tbh_DSReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[tbh_FrontSlider]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[tbh_FrontSlider]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[tbh_Gallery]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderId] ON [dbo].[tbh_OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Products_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Products_Id] ON [dbo].[tbh_OrderDetails]
(
	[tbh_Products_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[tbh_Pages]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[tbh_Pages]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_PaymentTypes_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_PaymentTypes_Id] ON [dbo].[tbh_Payments]
(
	[tbh_PaymentTypes_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PostId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_PostId] ON [dbo].[tbh_PostLike]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Thread_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Thread_Id] ON [dbo].[tbh_PostLike]
(
	[Thread_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Thread_Id1]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Thread_Id1] ON [dbo].[tbh_PostLike]
(
	[Thread_Id1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Thread1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Thread1_Id] ON [dbo].[tbh_PostLike]
(
	[Thread1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ThreadId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ThreadId] ON [dbo].[tbh_PostLike]
(
	[ThreadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_productpic2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_productpic2_Id] ON [dbo].[tbh_productpic]
(
	[tbh_productpic2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Products_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Products_Id] ON [dbo].[tbh_productpic]
(
	[tbh_Products_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ManufacturerId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ManufacturerId] ON [dbo].[tbh_Products]
(
	[ManufacturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Producer_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Producer_Id] ON [dbo].[tbh_Products]
(
	[Producer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Category_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Category_Id] ON [dbo].[tbh_Products]
(
	[tbh_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[tbh_Products]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Products2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Products2_Id] ON [dbo].[tbh_Products]
(
	[tbh_Products2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Shop_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Shop_Id] ON [dbo].[tbh_Products]
(
	[tbh_Shop_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubCategory_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubCategory_Id] ON [dbo].[tbh_Products]
(
	[tbh_SubCategory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[tbh_Products]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vendor_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Vendor_Id] ON [dbo].[tbh_Products]
(
	[Vendor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Products_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Products_Id] ON [dbo].[tbh_ProductsDetails]
(
	[tbh_Products_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[tbh_ReadPost]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Replies_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Replies_Id] ON [dbo].[tbh_ReadPost]
(
	[tbh_Replies_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ThreadId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ThreadId] ON [dbo].[tbh_ReadPost]
(
	[ThreadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUser_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUser_Id] ON [dbo].[tbh_RecentlyViews]
(
	[AspNetUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Products_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Products_Id] ON [dbo].[tbh_RecentlyViews]
(
	[tbh_Products_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[tbh_Replies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[tbh_Replies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[tbh_Replies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Replies2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Replies2_Id] ON [dbo].[tbh_Replies]
(
	[tbh_Replies2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[tbh_Replies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ThreadId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ThreadId] ON [dbo].[tbh_Replies]
(
	[ThreadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Replies_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Replies_Id] ON [dbo].[tbh_ReplyLike]
(
	[tbh_Replies_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUser_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUser_Id] ON [dbo].[tbh_Reviews]
(
	[AspNetUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Products_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Products_Id] ON [dbo].[tbh_Reviews]
(
	[tbh_Products_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[tbh_Services]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SettingMeta2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SettingMeta2_Id] ON [dbo].[tbh_SettingMeta]
(
	[tbh_SettingMeta2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[tbh_Shop]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Slider_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Slider_Id] ON [dbo].[tbh_SliderItem]
(
	[tbh_Slider_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Social_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Social_Id] ON [dbo].[tbh_SocialLink]
(
	[tbh_Social_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Category_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Category_Id] ON [dbo].[tbh_SubCategory]
(
	[tbh_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[tbh_SubDepartments]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_MenuMaster_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_MenuMaster_Id] ON [dbo].[tbh_SubDepartments]
(
	[tbh_MenuMaster_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments2_Id] ON [dbo].[tbh_SubDepartments]
(
	[tbh_SubDepartments2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[tbh_Subscribe]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUser_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUser_Id] ON [dbo].[tbh_Wishlist]
(
	[AspNetUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Products_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Products_Id] ON [dbo].[tbh_Wishlist]
(
	[tbh_Products_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUser_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUser_Id] ON [dbo].[tbl_Order]
(
	[AspNetUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Coupon_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Coupon_Id] ON [dbo].[tbl_Order]
(
	[tbh_Coupon_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[tbl_Order]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Payments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Payments_Id] ON [dbo].[tbl_Order]
(
	[tbh_Payments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_ShippingDetails_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_ShippingDetails_Id] ON [dbo].[tbl_Order]
(
	[tbh_ShippingDetails_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[tbl_Order]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbl_Order2_OrderId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbl_Order2_OrderId] ON [dbo].[tbl_Order]
(
	[tbl_Order2_OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUser_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUser_Id] ON [dbo].[tblVideos]
(
	[AspNetUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[tblVideos]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[tblVideos]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tblVideo2_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tblVideo2_Id] ON [dbo].[tblVideos]
(
	[tblVideo2_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[Threads]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[Threads]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[Threads]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[Threads]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ThreadId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ThreadId] ON [dbo].[Threads]
(
	[ThreadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[WCFReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[WCFReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[WCFReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[WCFReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCFId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCFId] ON [dbo].[WCFReplies]
(
	[WCFId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCFReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCFReply1_Id] ON [dbo].[WCFReplies]
(
	[WCFReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[WCFs]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[WCFs]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[WCFs]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[WCFs]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WCFId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_WCFId] ON [dbo].[WCFs]
(
	[WCFId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[WebApiReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[WebApiReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[WebApiReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[WebApiReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WebApiId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_WebApiId] ON [dbo].[WebApiReplies]
(
	[WebApiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WebApiReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_WebApiReply1_Id] ON [dbo].[WebApiReplies]
(
	[WebApiReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[WebApis]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[WebApis]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[WebApis]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[WebApis]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WebApiId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_WebApiId] ON [dbo].[WebApis]
(
	[WebApiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_webpages_Roles_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_webpages_Roles_Id] ON [dbo].[webpages_UsersInRoles]
(
	[webpages_Roles_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUser_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUser_Id] ON [dbo].[Wishlists]
(
	[AspNetUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Products_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Products_Id] ON [dbo].[Wishlists]
(
	[tbh_Products_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[WPFReplies]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[WPFReplies]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[WPFReplies]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[WPFReplies]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WPFId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_WPFId] ON [dbo].[WPFReplies]
(
	[WPFId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WPFReply1_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_WPFReply1_Id] ON [dbo].[WPFReplies]
(
	[WPFReply1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_Id] ON [dbo].[WPFs]
(
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Departments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Departments_Id] ON [dbo].[WPFs]
(
	[tbh_Departments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_Language_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_Language_Id] ON [dbo].[WPFs]
(
	[tbh_Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbh_SubDepartments_Id]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbh_SubDepartments_Id] ON [dbo].[WPFs]
(
	[tbh_SubDepartments_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WPFId]    Script Date: 9/27/2022 8:38:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_WPFId] ON [dbo].[WPFs]
(
	[WPFId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ajaxes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Ajaxes_dbo.Ajaxes_AjaxId] FOREIGN KEY([AjaxId])
REFERENCES [dbo].[Ajaxes] ([Id])
GO
ALTER TABLE [dbo].[Ajaxes] CHECK CONSTRAINT [FK_dbo.Ajaxes_dbo.Ajaxes_AjaxId]
GO
ALTER TABLE [dbo].[Ajaxes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Ajaxes_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Ajaxes] CHECK CONSTRAINT [FK_dbo.Ajaxes_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Ajaxes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Ajaxes_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Ajaxes] CHECK CONSTRAINT [FK_dbo.Ajaxes_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Ajaxes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Ajaxes_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Ajaxes] CHECK CONSTRAINT [FK_dbo.Ajaxes_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Ajaxes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Ajaxes_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Ajaxes] CHECK CONSTRAINT [FK_dbo.Ajaxes_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[AjaxReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AjaxReplies_dbo.Ajaxes_AjaxId] FOREIGN KEY([AjaxId])
REFERENCES [dbo].[Ajaxes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AjaxReplies] CHECK CONSTRAINT [FK_dbo.AjaxReplies_dbo.Ajaxes_AjaxId]
GO
ALTER TABLE [dbo].[AjaxReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AjaxReplies_dbo.AjaxReplies_AjaxReply1_Id] FOREIGN KEY([AjaxReply1_Id])
REFERENCES [dbo].[AjaxReplies] ([Id])
GO
ALTER TABLE [dbo].[AjaxReplies] CHECK CONSTRAINT [FK_dbo.AjaxReplies_dbo.AjaxReplies_AjaxReply1_Id]
GO
ALTER TABLE [dbo].[AjaxReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AjaxReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AjaxReplies] CHECK CONSTRAINT [FK_dbo.AjaxReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[AjaxReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AjaxReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[AjaxReplies] CHECK CONSTRAINT [FK_dbo.AjaxReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[AjaxReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AjaxReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[AjaxReplies] CHECK CONSTRAINT [FK_dbo.AjaxReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[AjaxReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AjaxReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[AjaxReplies] CHECK CONSTRAINT [FK_dbo.AjaxReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[AngularReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AngularReplies_dbo.AngularReplies_AngularReply1_Id] FOREIGN KEY([AngularReply1_Id])
REFERENCES [dbo].[AngularReplies] ([Id])
GO
ALTER TABLE [dbo].[AngularReplies] CHECK CONSTRAINT [FK_dbo.AngularReplies_dbo.AngularReplies_AngularReply1_Id]
GO
ALTER TABLE [dbo].[AngularReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AngularReplies_dbo.Angulars_AngularId] FOREIGN KEY([AngularId])
REFERENCES [dbo].[Angulars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AngularReplies] CHECK CONSTRAINT [FK_dbo.AngularReplies_dbo.Angulars_AngularId]
GO
ALTER TABLE [dbo].[AngularReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AngularReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AngularReplies] CHECK CONSTRAINT [FK_dbo.AngularReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[AngularReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AngularReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[AngularReplies] CHECK CONSTRAINT [FK_dbo.AngularReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[AngularReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AngularReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[AngularReplies] CHECK CONSTRAINT [FK_dbo.AngularReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[AngularReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AngularReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[AngularReplies] CHECK CONSTRAINT [FK_dbo.AngularReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Angulars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Angulars_dbo.Angulars_AngularId] FOREIGN KEY([AngularId])
REFERENCES [dbo].[Angulars] ([Id])
GO
ALTER TABLE [dbo].[Angulars] CHECK CONSTRAINT [FK_dbo.Angulars_dbo.Angulars_AngularId]
GO
ALTER TABLE [dbo].[Angulars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Angulars_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Angulars] CHECK CONSTRAINT [FK_dbo.Angulars_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Angulars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Angulars_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Angulars] CHECK CONSTRAINT [FK_dbo.Angulars_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Angulars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Angulars_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Angulars] CHECK CONSTRAINT [FK_dbo.Angulars_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Angulars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Angulars_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Angulars] CHECK CONSTRAINT [FK_dbo.Angulars_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUsers_dbo.ProfileModels_ProfileModel_Id] FOREIGN KEY([ProfileModel_Id])
REFERENCES [dbo].[ProfileModels] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_dbo.AspNetUsers_dbo.ProfileModels_ProfileModel_Id]
GO
ALTER TABLE [dbo].[AspWebFormReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspWebFormReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspWebFormReplies] CHECK CONSTRAINT [FK_dbo.AspWebFormReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[AspWebFormReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspWebFormReplies_dbo.AspWebFormReplies_AspWebFormReply1_Id] FOREIGN KEY([AspWebFormReply1_Id])
REFERENCES [dbo].[AspWebFormReplies] ([Id])
GO
ALTER TABLE [dbo].[AspWebFormReplies] CHECK CONSTRAINT [FK_dbo.AspWebFormReplies_dbo.AspWebFormReplies_AspWebFormReply1_Id]
GO
ALTER TABLE [dbo].[AspWebFormReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspWebFormReplies_dbo.AspWebforms_AspWebform_Id] FOREIGN KEY([AspWebform_Id])
REFERENCES [dbo].[AspWebforms] ([Id])
GO
ALTER TABLE [dbo].[AspWebFormReplies] CHECK CONSTRAINT [FK_dbo.AspWebFormReplies_dbo.AspWebforms_AspWebform_Id]
GO
ALTER TABLE [dbo].[AspWebFormReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspWebFormReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[AspWebFormReplies] CHECK CONSTRAINT [FK_dbo.AspWebFormReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[AspWebFormReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspWebFormReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[AspWebFormReplies] CHECK CONSTRAINT [FK_dbo.AspWebFormReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[AspWebFormReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspWebFormReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[AspWebFormReplies] CHECK CONSTRAINT [FK_dbo.AspWebFormReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[AspWebforms]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspWebforms_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspWebforms] CHECK CONSTRAINT [FK_dbo.AspWebforms_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[AspWebforms]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspWebforms_dbo.AspWebforms_AspWebform2_Id] FOREIGN KEY([AspWebform2_Id])
REFERENCES [dbo].[AspWebforms] ([Id])
GO
ALTER TABLE [dbo].[AspWebforms] CHECK CONSTRAINT [FK_dbo.AspWebforms_dbo.AspWebforms_AspWebform2_Id]
GO
ALTER TABLE [dbo].[AspWebforms]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspWebforms_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[AspWebforms] CHECK CONSTRAINT [FK_dbo.AspWebforms_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[AspWebforms]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspWebforms_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[AspWebforms] CHECK CONSTRAINT [FK_dbo.AspWebforms_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[AspWebforms]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspWebforms_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[AspWebforms] CHECK CONSTRAINT [FK_dbo.AspWebforms_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[AzureReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AzureReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AzureReplies] CHECK CONSTRAINT [FK_dbo.AzureReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[AzureReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AzureReplies_dbo.AzureReplies_AzureReply1_Id] FOREIGN KEY([AzureReply1_Id])
REFERENCES [dbo].[AzureReplies] ([Id])
GO
ALTER TABLE [dbo].[AzureReplies] CHECK CONSTRAINT [FK_dbo.AzureReplies_dbo.AzureReplies_AzureReply1_Id]
GO
ALTER TABLE [dbo].[AzureReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AzureReplies_dbo.Azures_AzureId] FOREIGN KEY([AzureId])
REFERENCES [dbo].[Azures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AzureReplies] CHECK CONSTRAINT [FK_dbo.AzureReplies_dbo.Azures_AzureId]
GO
ALTER TABLE [dbo].[AzureReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AzureReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[AzureReplies] CHECK CONSTRAINT [FK_dbo.AzureReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[AzureReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AzureReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[AzureReplies] CHECK CONSTRAINT [FK_dbo.AzureReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[AzureReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AzureReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[AzureReplies] CHECK CONSTRAINT [FK_dbo.AzureReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Azures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Azures_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Azures] CHECK CONSTRAINT [FK_dbo.Azures_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Azures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Azures_dbo.Azures_AzureId] FOREIGN KEY([AzureId])
REFERENCES [dbo].[Azures] ([Id])
GO
ALTER TABLE [dbo].[Azures] CHECK CONSTRAINT [FK_dbo.Azures_dbo.Azures_AzureId]
GO
ALTER TABLE [dbo].[Azures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Azures_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Azures] CHECK CONSTRAINT [FK_dbo.Azures_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Azures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Azures_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Azures] CHECK CONSTRAINT [FK_dbo.Azures_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Azures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Azures_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Azures] CHECK CONSTRAINT [FK_dbo.Azures_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[C__]  WITH CHECK ADD  CONSTRAINT [FK_dbo.C___dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[C__] CHECK CONSTRAINT [FK_dbo.C___dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[C__]  WITH CHECK ADD  CONSTRAINT [FK_dbo.C___dbo.C___C__Id] FOREIGN KEY([C__Id])
REFERENCES [dbo].[C__] ([Id])
GO
ALTER TABLE [dbo].[C__] CHECK CONSTRAINT [FK_dbo.C___dbo.C___C__Id]
GO
ALTER TABLE [dbo].[C__]  WITH CHECK ADD  CONSTRAINT [FK_dbo.C___dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[C__] CHECK CONSTRAINT [FK_dbo.C___dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[C__]  WITH CHECK ADD  CONSTRAINT [FK_dbo.C___dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[C__] CHECK CONSTRAINT [FK_dbo.C___dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[C__]  WITH CHECK ADD  CONSTRAINT [FK_dbo.C___dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[C__] CHECK CONSTRAINT [FK_dbo.C___dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[C__Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.C__Replies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[C__Replies] CHECK CONSTRAINT [FK_dbo.C__Replies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[C__Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.C__Replies_dbo.C___C__Id] FOREIGN KEY([C__Id])
REFERENCES [dbo].[C__] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[C__Replies] CHECK CONSTRAINT [FK_dbo.C__Replies_dbo.C___C__Id]
GO
ALTER TABLE [dbo].[C__Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.C__Replies_dbo.C__Replies_C__Replies2_Id] FOREIGN KEY([C__Replies2_Id])
REFERENCES [dbo].[C__Replies] ([Id])
GO
ALTER TABLE [dbo].[C__Replies] CHECK CONSTRAINT [FK_dbo.C__Replies_dbo.C__Replies_C__Replies2_Id]
GO
ALTER TABLE [dbo].[C__Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.C__Replies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[C__Replies] CHECK CONSTRAINT [FK_dbo.C__Replies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[C__Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.C__Replies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[C__Replies] CHECK CONSTRAINT [FK_dbo.C__Replies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[C__Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.C__Replies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[C__Replies] CHECK CONSTRAINT [FK_dbo.C__Replies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Carts_dbo.Carts_Cart2_Id] FOREIGN KEY([Cart2_Id])
REFERENCES [dbo].[Carts] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_dbo.Carts_dbo.Carts_Cart2_Id]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Carts_dbo.tbh_Products_tbh_Products_Id] FOREIGN KEY([tbh_Products_Id])
REFERENCES [dbo].[tbh_Products] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_dbo.Carts_dbo.tbh_Products_tbh_Products_Id]
GO
ALTER TABLE [dbo].[CSharps]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSharps_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CSharps] CHECK CONSTRAINT [FK_dbo.CSharps_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[CSharps]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSharps_dbo.CSharps_CSharp2_Id] FOREIGN KEY([CSharp2_Id])
REFERENCES [dbo].[CSharps] ([Id])
GO
ALTER TABLE [dbo].[CSharps] CHECK CONSTRAINT [FK_dbo.CSharps_dbo.CSharps_CSharp2_Id]
GO
ALTER TABLE [dbo].[CSharps]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSharps_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[CSharps] CHECK CONSTRAINT [FK_dbo.CSharps_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[CSharps]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSharps_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[CSharps] CHECK CONSTRAINT [FK_dbo.CSharps_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[CSharps]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSharps_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[CSharps] CHECK CONSTRAINT [FK_dbo.CSharps_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[CSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CSReplies] CHECK CONSTRAINT [FK_dbo.CSReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[CSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSReplies_dbo.CSharps_CSharp_Id] FOREIGN KEY([CSharp_Id])
REFERENCES [dbo].[CSharps] ([Id])
GO
ALTER TABLE [dbo].[CSReplies] CHECK CONSTRAINT [FK_dbo.CSReplies_dbo.CSharps_CSharp_Id]
GO
ALTER TABLE [dbo].[CSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSReplies_dbo.CSReplies_CSReply1_Id] FOREIGN KEY([CSReply1_Id])
REFERENCES [dbo].[CSReplies] ([Id])
GO
ALTER TABLE [dbo].[CSReplies] CHECK CONSTRAINT [FK_dbo.CSReplies_dbo.CSReplies_CSReply1_Id]
GO
ALTER TABLE [dbo].[CSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[CSReplies] CHECK CONSTRAINT [FK_dbo.CSReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[CSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[CSReplies] CHECK CONSTRAINT [FK_dbo.CSReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[CSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[CSReplies] CHECK CONSTRAINT [FK_dbo.CSReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[CSSes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSSes_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CSSes] CHECK CONSTRAINT [FK_dbo.CSSes_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[CSSes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSSes_dbo.CSSes_CSSId] FOREIGN KEY([CSSId])
REFERENCES [dbo].[CSSes] ([Id])
GO
ALTER TABLE [dbo].[CSSes] CHECK CONSTRAINT [FK_dbo.CSSes_dbo.CSSes_CSSId]
GO
ALTER TABLE [dbo].[CSSes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSSes_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[CSSes] CHECK CONSTRAINT [FK_dbo.CSSes_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[CSSes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSSes_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[CSSes] CHECK CONSTRAINT [FK_dbo.CSSes_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[CSSes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSSes_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[CSSes] CHECK CONSTRAINT [FK_dbo.CSSes_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[CSSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSSReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CSSReplies] CHECK CONSTRAINT [FK_dbo.CSSReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[CSSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSSReplies_dbo.CSSes_CSSId] FOREIGN KEY([CSSId])
REFERENCES [dbo].[CSSes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CSSReplies] CHECK CONSTRAINT [FK_dbo.CSSReplies_dbo.CSSes_CSSId]
GO
ALTER TABLE [dbo].[CSSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSSReplies_dbo.CSSReplies_CSSReply1_Id] FOREIGN KEY([CSSReply1_Id])
REFERENCES [dbo].[CSSReplies] ([Id])
GO
ALTER TABLE [dbo].[CSSReplies] CHECK CONSTRAINT [FK_dbo.CSSReplies_dbo.CSSReplies_CSSReply1_Id]
GO
ALTER TABLE [dbo].[CSSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSSReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[CSSReplies] CHECK CONSTRAINT [FK_dbo.CSSReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[CSSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSSReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[CSSReplies] CHECK CONSTRAINT [FK_dbo.CSSReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[CSSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CSSReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[CSSReplies] CHECK CONSTRAINT [FK_dbo.CSSReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Databas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Databas_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Databas] CHECK CONSTRAINT [FK_dbo.Databas_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Databas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Databas_dbo.Databas_Databas1_Id] FOREIGN KEY([Databas1_Id])
REFERENCES [dbo].[Databas] ([Id])
GO
ALTER TABLE [dbo].[Databas] CHECK CONSTRAINT [FK_dbo.Databas_dbo.Databas_Databas1_Id]
GO
ALTER TABLE [dbo].[Databas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Databas_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Databas] CHECK CONSTRAINT [FK_dbo.Databas_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Databas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Databas_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Databas] CHECK CONSTRAINT [FK_dbo.Databas_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Databas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Databas_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Databas] CHECK CONSTRAINT [FK_dbo.Databas_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[DBAReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBAReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DBAReplies] CHECK CONSTRAINT [FK_dbo.DBAReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[DBAReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBAReplies_dbo.DBAReplies_DBAReply1_Id] FOREIGN KEY([DBAReply1_Id])
REFERENCES [dbo].[DBAReplies] ([Id])
GO
ALTER TABLE [dbo].[DBAReplies] CHECK CONSTRAINT [FK_dbo.DBAReplies_dbo.DBAReplies_DBAReply1_Id]
GO
ALTER TABLE [dbo].[DBAReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBAReplies_dbo.DBAs_DBAId] FOREIGN KEY([DBAId])
REFERENCES [dbo].[DBAs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DBAReplies] CHECK CONSTRAINT [FK_dbo.DBAReplies_dbo.DBAs_DBAId]
GO
ALTER TABLE [dbo].[DBAReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBAReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[DBAReplies] CHECK CONSTRAINT [FK_dbo.DBAReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[DBAReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBAReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[DBAReplies] CHECK CONSTRAINT [FK_dbo.DBAReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[DBAReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBAReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[DBAReplies] CHECK CONSTRAINT [FK_dbo.DBAReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[DBAs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBAs_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DBAs] CHECK CONSTRAINT [FK_dbo.DBAs_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[DBAs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBAs_dbo.DBAs_DBAId] FOREIGN KEY([DBAId])
REFERENCES [dbo].[DBAs] ([Id])
GO
ALTER TABLE [dbo].[DBAs] CHECK CONSTRAINT [FK_dbo.DBAs_dbo.DBAs_DBAId]
GO
ALTER TABLE [dbo].[DBAs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBAs_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[DBAs] CHECK CONSTRAINT [FK_dbo.DBAs_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[DBAs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBAs_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[DBAs] CHECK CONSTRAINT [FK_dbo.DBAs_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[DBAs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBAs_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[DBAs] CHECK CONSTRAINT [FK_dbo.DBAs_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[DBReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DBReplies] CHECK CONSTRAINT [FK_dbo.DBReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[DBReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBReplies_dbo.Databas_Databas_Id] FOREIGN KEY([Databas_Id])
REFERENCES [dbo].[Databas] ([Id])
GO
ALTER TABLE [dbo].[DBReplies] CHECK CONSTRAINT [FK_dbo.DBReplies_dbo.Databas_Databas_Id]
GO
ALTER TABLE [dbo].[DBReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBReplies_dbo.DBReplies_DBReply1_Id] FOREIGN KEY([DBReply1_Id])
REFERENCES [dbo].[DBReplies] ([Id])
GO
ALTER TABLE [dbo].[DBReplies] CHECK CONSTRAINT [FK_dbo.DBReplies_dbo.DBReplies_DBReply1_Id]
GO
ALTER TABLE [dbo].[DBReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[DBReplies] CHECK CONSTRAINT [FK_dbo.DBReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[DBReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[DBReplies] CHECK CONSTRAINT [FK_dbo.DBReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[DBReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DBReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[DBReplies] CHECK CONSTRAINT [FK_dbo.DBReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[DotNetReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DotNetReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DotNetReplies] CHECK CONSTRAINT [FK_dbo.DotNetReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[DotNetReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DotNetReplies_dbo.DotNetReplies_DotNetReply1_Id] FOREIGN KEY([DotNetReply1_Id])
REFERENCES [dbo].[DotNetReplies] ([Id])
GO
ALTER TABLE [dbo].[DotNetReplies] CHECK CONSTRAINT [FK_dbo.DotNetReplies_dbo.DotNetReplies_DotNetReply1_Id]
GO
ALTER TABLE [dbo].[DotNetReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DotNetReplies_dbo.DotNets_DotNetId] FOREIGN KEY([DotNetId])
REFERENCES [dbo].[DotNets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DotNetReplies] CHECK CONSTRAINT [FK_dbo.DotNetReplies_dbo.DotNets_DotNetId]
GO
ALTER TABLE [dbo].[DotNetReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DotNetReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[DotNetReplies] CHECK CONSTRAINT [FK_dbo.DotNetReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[DotNetReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DotNetReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[DotNetReplies] CHECK CONSTRAINT [FK_dbo.DotNetReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[DotNetReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DotNetReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[DotNetReplies] CHECK CONSTRAINT [FK_dbo.DotNetReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[DotNets]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DotNets_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DotNets] CHECK CONSTRAINT [FK_dbo.DotNets_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[DotNets]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DotNets_dbo.DotNets_DotNetId] FOREIGN KEY([DotNetId])
REFERENCES [dbo].[DotNets] ([Id])
GO
ALTER TABLE [dbo].[DotNets] CHECK CONSTRAINT [FK_dbo.DotNets_dbo.DotNets_DotNetId]
GO
ALTER TABLE [dbo].[DotNets]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DotNets_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[DotNets] CHECK CONSTRAINT [FK_dbo.DotNets_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[DotNets]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DotNets_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[DotNets] CHECK CONSTRAINT [FK_dbo.DotNets_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[DotNets]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DotNets_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[DotNets] CHECK CONSTRAINT [FK_dbo.DotNets_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[EntityFrameWorks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityFrameWorks_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[EntityFrameWorks] CHECK CONSTRAINT [FK_dbo.EntityFrameWorks_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[EntityFrameWorks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityFrameWorks_dbo.EntityFrameWorks_EntityFrameWork2_Id] FOREIGN KEY([EntityFrameWork2_Id])
REFERENCES [dbo].[EntityFrameWorks] ([Id])
GO
ALTER TABLE [dbo].[EntityFrameWorks] CHECK CONSTRAINT [FK_dbo.EntityFrameWorks_dbo.EntityFrameWorks_EntityFrameWork2_Id]
GO
ALTER TABLE [dbo].[EntityFrameWorks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityFrameWorks_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[EntityFrameWorks] CHECK CONSTRAINT [FK_dbo.EntityFrameWorks_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[EntityFrameWorks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityFrameWorks_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[EntityFrameWorks] CHECK CONSTRAINT [FK_dbo.EntityFrameWorks_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[EntityFrameWorks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityFrameWorks_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[EntityFrameWorks] CHECK CONSTRAINT [FK_dbo.EntityFrameWorks_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[EntityFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityFReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[EntityFReplies] CHECK CONSTRAINT [FK_dbo.EntityFReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[EntityFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityFReplies_dbo.EntityFrameWorks_EntityFrameWork_Id] FOREIGN KEY([EntityFrameWork_Id])
REFERENCES [dbo].[EntityFrameWorks] ([Id])
GO
ALTER TABLE [dbo].[EntityFReplies] CHECK CONSTRAINT [FK_dbo.EntityFReplies_dbo.EntityFrameWorks_EntityFrameWork_Id]
GO
ALTER TABLE [dbo].[EntityFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityFReplies_dbo.EntityFReplies_EntityFReply1_Id] FOREIGN KEY([EntityFReply1_Id])
REFERENCES [dbo].[EntityFReplies] ([Id])
GO
ALTER TABLE [dbo].[EntityFReplies] CHECK CONSTRAINT [FK_dbo.EntityFReplies_dbo.EntityFReplies_EntityFReply1_Id]
GO
ALTER TABLE [dbo].[EntityFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityFReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[EntityFReplies] CHECK CONSTRAINT [FK_dbo.EntityFReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[EntityFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityFReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[EntityFReplies] CHECK CONSTRAINT [FK_dbo.EntityFReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[EntityFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityFReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[EntityFReplies] CHECK CONSTRAINT [FK_dbo.EntityFReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[genPromoRights]  WITH CHECK ADD  CONSTRAINT [FK_dbo.genPromoRights_dbo.tbh_Category_tbh_Category_Id] FOREIGN KEY([tbh_Category_Id])
REFERENCES [dbo].[tbh_Category] ([Id])
GO
ALTER TABLE [dbo].[genPromoRights] CHECK CONSTRAINT [FK_dbo.genPromoRights_dbo.tbh_Category_tbh_Category_Id]
GO
ALTER TABLE [dbo].[JavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JavaReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JavaReplies] CHECK CONSTRAINT [FK_dbo.JavaReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[JavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JavaReplies_dbo.JavaReplies_JavaReply1_Id] FOREIGN KEY([JavaReply1_Id])
REFERENCES [dbo].[JavaReplies] ([Id])
GO
ALTER TABLE [dbo].[JavaReplies] CHECK CONSTRAINT [FK_dbo.JavaReplies_dbo.JavaReplies_JavaReply1_Id]
GO
ALTER TABLE [dbo].[JavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JavaReplies_dbo.Javas_JavaId] FOREIGN KEY([JavaId])
REFERENCES [dbo].[Javas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JavaReplies] CHECK CONSTRAINT [FK_dbo.JavaReplies_dbo.Javas_JavaId]
GO
ALTER TABLE [dbo].[JavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JavaReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[JavaReplies] CHECK CONSTRAINT [FK_dbo.JavaReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[JavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JavaReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[JavaReplies] CHECK CONSTRAINT [FK_dbo.JavaReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[JavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JavaReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[JavaReplies] CHECK CONSTRAINT [FK_dbo.JavaReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Javas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Javas_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Javas] CHECK CONSTRAINT [FK_dbo.Javas_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Javas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Javas_dbo.Javas_JavaId] FOREIGN KEY([JavaId])
REFERENCES [dbo].[Javas] ([Id])
GO
ALTER TABLE [dbo].[Javas] CHECK CONSTRAINT [FK_dbo.Javas_dbo.Javas_JavaId]
GO
ALTER TABLE [dbo].[Javas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Javas_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Javas] CHECK CONSTRAINT [FK_dbo.Javas_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Javas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Javas_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Javas] CHECK CONSTRAINT [FK_dbo.Javas_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Javas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Javas_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Javas] CHECK CONSTRAINT [FK_dbo.Javas_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[JqJavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JqJavaReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JqJavaReplies] CHECK CONSTRAINT [FK_dbo.JqJavaReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[JqJavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JqJavaReplies_dbo.JqJavaReplies_JqJavaReply1_Id] FOREIGN KEY([JqJavaReply1_Id])
REFERENCES [dbo].[JqJavaReplies] ([Id])
GO
ALTER TABLE [dbo].[JqJavaReplies] CHECK CONSTRAINT [FK_dbo.JqJavaReplies_dbo.JqJavaReplies_JqJavaReply1_Id]
GO
ALTER TABLE [dbo].[JqJavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JqJavaReplies_dbo.JqJavas_JqJavaId] FOREIGN KEY([JqJavaId])
REFERENCES [dbo].[JqJavas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JqJavaReplies] CHECK CONSTRAINT [FK_dbo.JqJavaReplies_dbo.JqJavas_JqJavaId]
GO
ALTER TABLE [dbo].[JqJavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JqJavaReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[JqJavaReplies] CHECK CONSTRAINT [FK_dbo.JqJavaReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[JqJavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JqJavaReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[JqJavaReplies] CHECK CONSTRAINT [FK_dbo.JqJavaReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[JqJavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JqJavaReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[JqJavaReplies] CHECK CONSTRAINT [FK_dbo.JqJavaReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[JqJavas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JqJavas_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JqJavas] CHECK CONSTRAINT [FK_dbo.JqJavas_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[JqJavas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JqJavas_dbo.JqJavas_JqJavaId] FOREIGN KEY([JqJavaId])
REFERENCES [dbo].[JqJavas] ([Id])
GO
ALTER TABLE [dbo].[JqJavas] CHECK CONSTRAINT [FK_dbo.JqJavas_dbo.JqJavas_JqJavaId]
GO
ALTER TABLE [dbo].[JqJavas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JqJavas_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[JqJavas] CHECK CONSTRAINT [FK_dbo.JqJavas_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[JqJavas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JqJavas_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[JqJavas] CHECK CONSTRAINT [FK_dbo.JqJavas_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[JqJavas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JqJavas_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[JqJavas] CHECK CONSTRAINT [FK_dbo.JqJavas_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[MVCReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MVCReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[MVCReplies] CHECK CONSTRAINT [FK_dbo.MVCReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[MVCReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MVCReplies_dbo.MVCReplies_MVCReply1_Id] FOREIGN KEY([MVCReply1_Id])
REFERENCES [dbo].[MVCReplies] ([Id])
GO
ALTER TABLE [dbo].[MVCReplies] CHECK CONSTRAINT [FK_dbo.MVCReplies_dbo.MVCReplies_MVCReply1_Id]
GO
ALTER TABLE [dbo].[MVCReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MVCReplies_dbo.MVCs_MVCId] FOREIGN KEY([MVCId])
REFERENCES [dbo].[MVCs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MVCReplies] CHECK CONSTRAINT [FK_dbo.MVCReplies_dbo.MVCs_MVCId]
GO
ALTER TABLE [dbo].[MVCReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MVCReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[MVCReplies] CHECK CONSTRAINT [FK_dbo.MVCReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[MVCReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MVCReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[MVCReplies] CHECK CONSTRAINT [FK_dbo.MVCReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[MVCReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MVCReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[MVCReplies] CHECK CONSTRAINT [FK_dbo.MVCReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[MVCs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MVCs_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[MVCs] CHECK CONSTRAINT [FK_dbo.MVCs_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[MVCs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MVCs_dbo.MVCs_MVCId] FOREIGN KEY([MVCId])
REFERENCES [dbo].[MVCs] ([Id])
GO
ALTER TABLE [dbo].[MVCs] CHECK CONSTRAINT [FK_dbo.MVCs_dbo.MVCs_MVCId]
GO
ALTER TABLE [dbo].[MVCs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MVCs_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[MVCs] CHECK CONSTRAINT [FK_dbo.MVCs_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[MVCs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MVCs_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[MVCs] CHECK CONSTRAINT [FK_dbo.MVCs_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[MVCs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MVCs_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[MVCs] CHECK CONSTRAINT [FK_dbo.MVCs_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[NetCoreReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NetCoreReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NetCoreReplies] CHECK CONSTRAINT [FK_dbo.NetCoreReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[NetCoreReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NetCoreReplies_dbo.NetCoreReplies_NetCoreReply1_Id] FOREIGN KEY([NetCoreReply1_Id])
REFERENCES [dbo].[NetCoreReplies] ([Id])
GO
ALTER TABLE [dbo].[NetCoreReplies] CHECK CONSTRAINT [FK_dbo.NetCoreReplies_dbo.NetCoreReplies_NetCoreReply1_Id]
GO
ALTER TABLE [dbo].[NetCoreReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NetCoreReplies_dbo.NetCores_NetCoreId] FOREIGN KEY([NetCoreId])
REFERENCES [dbo].[NetCores] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NetCoreReplies] CHECK CONSTRAINT [FK_dbo.NetCoreReplies_dbo.NetCores_NetCoreId]
GO
ALTER TABLE [dbo].[NetCoreReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NetCoreReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[NetCoreReplies] CHECK CONSTRAINT [FK_dbo.NetCoreReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[NetCoreReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NetCoreReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[NetCoreReplies] CHECK CONSTRAINT [FK_dbo.NetCoreReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[NetCoreReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NetCoreReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[NetCoreReplies] CHECK CONSTRAINT [FK_dbo.NetCoreReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[NetCores]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NetCores_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NetCores] CHECK CONSTRAINT [FK_dbo.NetCores_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[NetCores]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NetCores_dbo.NetCores_NetCoreId] FOREIGN KEY([NetCoreId])
REFERENCES [dbo].[NetCores] ([Id])
GO
ALTER TABLE [dbo].[NetCores] CHECK CONSTRAINT [FK_dbo.NetCores_dbo.NetCores_NetCoreId]
GO
ALTER TABLE [dbo].[NetCores]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NetCores_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[NetCores] CHECK CONSTRAINT [FK_dbo.NetCores_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[NetCores]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NetCores_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[NetCores] CHECK CONSTRAINT [FK_dbo.NetCores_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[NetCores]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NetCores_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[NetCores] CHECK CONSTRAINT [FK_dbo.NetCores_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[NLReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NLReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NLReplies] CHECK CONSTRAINT [FK_dbo.NLReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[NLReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NLReplies_dbo.NLReplies_NLReply1_Id] FOREIGN KEY([NLReply1_Id])
REFERENCES [dbo].[NLReplies] ([Id])
GO
ALTER TABLE [dbo].[NLReplies] CHECK CONSTRAINT [FK_dbo.NLReplies_dbo.NLReplies_NLReply1_Id]
GO
ALTER TABLE [dbo].[NoSqlReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoSqlReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NoSqlReplies] CHECK CONSTRAINT [FK_dbo.NoSqlReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[NoSqlReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoSqlReplies_dbo.NoSqlReplies_NoSqlReply1_Id] FOREIGN KEY([NoSqlReply1_Id])
REFERENCES [dbo].[NoSqlReplies] ([Id])
GO
ALTER TABLE [dbo].[NoSqlReplies] CHECK CONSTRAINT [FK_dbo.NoSqlReplies_dbo.NoSqlReplies_NoSqlReply1_Id]
GO
ALTER TABLE [dbo].[NoSqlReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoSqlReplies_dbo.NoSqls_NoSqlId] FOREIGN KEY([NoSqlId])
REFERENCES [dbo].[NoSqls] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NoSqlReplies] CHECK CONSTRAINT [FK_dbo.NoSqlReplies_dbo.NoSqls_NoSqlId]
GO
ALTER TABLE [dbo].[NoSqlReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoSqlReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[NoSqlReplies] CHECK CONSTRAINT [FK_dbo.NoSqlReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[NoSqlReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoSqlReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[NoSqlReplies] CHECK CONSTRAINT [FK_dbo.NoSqlReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[NoSqlReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoSqlReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[NoSqlReplies] CHECK CONSTRAINT [FK_dbo.NoSqlReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[NoSqls]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoSqls_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NoSqls] CHECK CONSTRAINT [FK_dbo.NoSqls_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[NoSqls]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoSqls_dbo.NoSqls_NoSqlId] FOREIGN KEY([NoSqlId])
REFERENCES [dbo].[NoSqls] ([Id])
GO
ALTER TABLE [dbo].[NoSqls] CHECK CONSTRAINT [FK_dbo.NoSqls_dbo.NoSqls_NoSqlId]
GO
ALTER TABLE [dbo].[NoSqls]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoSqls_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[NoSqls] CHECK CONSTRAINT [FK_dbo.NoSqls_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[NoSqls]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoSqls_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[NoSqls] CHECK CONSTRAINT [FK_dbo.NoSqls_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[NoSqls]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoSqls_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[NoSqls] CHECK CONSTRAINT [FK_dbo.NoSqls_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[NoteListReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteListReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NoteListReplies] CHECK CONSTRAINT [FK_dbo.NoteListReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[NoteListReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteListReplies_dbo.NoteListReplies_NoteListReply1_Id] FOREIGN KEY([NoteListReply1_Id])
REFERENCES [dbo].[NoteListReplies] ([Id])
GO
ALTER TABLE [dbo].[NoteListReplies] CHECK CONSTRAINT [FK_dbo.NoteListReplies_dbo.NoteListReplies_NoteListReply1_Id]
GO
ALTER TABLE [dbo].[NoteListReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteListReplies_dbo.NoteLists_NoteListId] FOREIGN KEY([NoteListId])
REFERENCES [dbo].[NoteLists] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NoteListReplies] CHECK CONSTRAINT [FK_dbo.NoteListReplies_dbo.NoteLists_NoteListId]
GO
ALTER TABLE [dbo].[NoteListReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteListReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[NoteListReplies] CHECK CONSTRAINT [FK_dbo.NoteListReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[NoteListReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteListReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[NoteListReplies] CHECK CONSTRAINT [FK_dbo.NoteListReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[NoteListReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteListReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[NoteListReplies] CHECK CONSTRAINT [FK_dbo.NoteListReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[NoteLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteLists_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NoteLists] CHECK CONSTRAINT [FK_dbo.NoteLists_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[NoteLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteLists_dbo.NoteLists_NoteListId] FOREIGN KEY([NoteListId])
REFERENCES [dbo].[NoteLists] ([Id])
GO
ALTER TABLE [dbo].[NoteLists] CHECK CONSTRAINT [FK_dbo.NoteLists_dbo.NoteLists_NoteListId]
GO
ALTER TABLE [dbo].[NoteLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteLists_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[NoteLists] CHECK CONSTRAINT [FK_dbo.NoteLists_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[NoteLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteLists_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[NoteLists] CHECK CONSTRAINT [FK_dbo.NoteLists_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[NoteLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteLists_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[NoteLists] CHECK CONSTRAINT [FK_dbo.NoteLists_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[NotesPageReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NotesPageReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NotesPageReplies] CHECK CONSTRAINT [FK_dbo.NotesPageReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[NotesPageReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NotesPageReplies_dbo.NotesPageReplies_NotesPageReply1_Id] FOREIGN KEY([NotesPageReply1_Id])
REFERENCES [dbo].[NotesPageReplies] ([Id])
GO
ALTER TABLE [dbo].[NotesPageReplies] CHECK CONSTRAINT [FK_dbo.NotesPageReplies_dbo.NotesPageReplies_NotesPageReply1_Id]
GO
ALTER TABLE [dbo].[NotesPageReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NotesPageReplies_dbo.NotesPages_NotesPageId] FOREIGN KEY([NotesPageId])
REFERENCES [dbo].[NotesPages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotesPageReplies] CHECK CONSTRAINT [FK_dbo.NotesPageReplies_dbo.NotesPages_NotesPageId]
GO
ALTER TABLE [dbo].[NotesPageReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NotesPageReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[NotesPageReplies] CHECK CONSTRAINT [FK_dbo.NotesPageReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[NotesPageReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NotesPageReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[NotesPageReplies] CHECK CONSTRAINT [FK_dbo.NotesPageReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[NotesPageReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NotesPageReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[NotesPageReplies] CHECK CONSTRAINT [FK_dbo.NotesPageReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[NotesPages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NotesPages_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NotesPages] CHECK CONSTRAINT [FK_dbo.NotesPages_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[NotesPages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NotesPages_dbo.NotesPages_NotesPageId] FOREIGN KEY([NotesPageId])
REFERENCES [dbo].[NotesPages] ([Id])
GO
ALTER TABLE [dbo].[NotesPages] CHECK CONSTRAINT [FK_dbo.NotesPages_dbo.NotesPages_NotesPageId]
GO
ALTER TABLE [dbo].[NotesPages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NotesPages_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[NotesPages] CHECK CONSTRAINT [FK_dbo.NotesPages_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[NotesPages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NotesPages_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[NotesPages] CHECK CONSTRAINT [FK_dbo.NotesPages_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[NotesPages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NotesPages_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[NotesPages] CHECK CONSTRAINT [FK_dbo.NotesPages_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[PhotoDtoes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PhotoDtoes_dbo.MembersDtoes_MembersDto_Id] FOREIGN KEY([MembersDto_Id])
REFERENCES [dbo].[MembersDtoes] ([Id])
GO
ALTER TABLE [dbo].[PhotoDtoes] CHECK CONSTRAINT [FK_dbo.PhotoDtoes_dbo.MembersDtoes_MembersDto_Id]
GO
ALTER TABLE [dbo].[PhotoDtoes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PhotoDtoes_dbo.tbh_Membership_tbh_Membership_Id] FOREIGN KEY([tbh_Membership_Id])
REFERENCES [dbo].[tbh_Membership] ([Id])
GO
ALTER TABLE [dbo].[PhotoDtoes] CHECK CONSTRAINT [FK_dbo.PhotoDtoes_dbo.tbh_Membership_tbh_Membership_Id]
GO
ALTER TABLE [dbo].[Post_CSharp]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSharp_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_CSharp] CHECK CONSTRAINT [FK_dbo.Post_CSharp_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_CSharp]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSharp_dbo.Post_CSharp_Post_CSharp2_Id] FOREIGN KEY([Post_CSharp2_Id])
REFERENCES [dbo].[Post_CSharp] ([Id])
GO
ALTER TABLE [dbo].[Post_CSharp] CHECK CONSTRAINT [FK_dbo.Post_CSharp_dbo.Post_CSharp_Post_CSharp2_Id]
GO
ALTER TABLE [dbo].[Post_CSharp]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSharp_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_CSharp] CHECK CONSTRAINT [FK_dbo.Post_CSharp_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_CSharp]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSharp_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_CSharp] CHECK CONSTRAINT [FK_dbo.Post_CSharp_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_CSharp]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSharp_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_CSharp] CHECK CONSTRAINT [FK_dbo.Post_CSharp_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_CSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_CSReplies] CHECK CONSTRAINT [FK_dbo.Post_CSReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_CSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSReplies_dbo.Post_CSharp_Post_CSharp_Id] FOREIGN KEY([Post_CSharp_Id])
REFERENCES [dbo].[Post_CSharp] ([Id])
GO
ALTER TABLE [dbo].[Post_CSReplies] CHECK CONSTRAINT [FK_dbo.Post_CSReplies_dbo.Post_CSharp_Post_CSharp_Id]
GO
ALTER TABLE [dbo].[Post_CSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSReplies_dbo.Post_CSReplies_Post_CSReplies2_Id] FOREIGN KEY([Post_CSReplies2_Id])
REFERENCES [dbo].[Post_CSReplies] ([Id])
GO
ALTER TABLE [dbo].[Post_CSReplies] CHECK CONSTRAINT [FK_dbo.Post_CSReplies_dbo.Post_CSReplies_Post_CSReplies2_Id]
GO
ALTER TABLE [dbo].[Post_CSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_CSReplies] CHECK CONSTRAINT [FK_dbo.Post_CSReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_CSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_CSReplies] CHECK CONSTRAINT [FK_dbo.Post_CSReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_CSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_CSReplies] CHECK CONSTRAINT [FK_dbo.Post_CSReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_CSS]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSS_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_CSS] CHECK CONSTRAINT [FK_dbo.Post_CSS_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_CSS]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSS_dbo.Post_CSS_Post_CSS2_Id] FOREIGN KEY([Post_CSS2_Id])
REFERENCES [dbo].[Post_CSS] ([Id])
GO
ALTER TABLE [dbo].[Post_CSS] CHECK CONSTRAINT [FK_dbo.Post_CSS_dbo.Post_CSS_Post_CSS2_Id]
GO
ALTER TABLE [dbo].[Post_CSS]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSS_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_CSS] CHECK CONSTRAINT [FK_dbo.Post_CSS_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_CSS]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSS_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_CSS] CHECK CONSTRAINT [FK_dbo.Post_CSS_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_CSS]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSS_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_CSS] CHECK CONSTRAINT [FK_dbo.Post_CSS_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_CSSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSSReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_CSSReplies] CHECK CONSTRAINT [FK_dbo.Post_CSSReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_CSSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSSReplies_dbo.Post_CSS_Post_CSS_Id] FOREIGN KEY([Post_CSS_Id])
REFERENCES [dbo].[Post_CSS] ([Id])
GO
ALTER TABLE [dbo].[Post_CSSReplies] CHECK CONSTRAINT [FK_dbo.Post_CSSReplies_dbo.Post_CSS_Post_CSS_Id]
GO
ALTER TABLE [dbo].[Post_CSSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSSReplies_dbo.Post_CSSReplies_Post_CSSReplies2_Id] FOREIGN KEY([Post_CSSReplies2_Id])
REFERENCES [dbo].[Post_CSSReplies] ([Id])
GO
ALTER TABLE [dbo].[Post_CSSReplies] CHECK CONSTRAINT [FK_dbo.Post_CSSReplies_dbo.Post_CSSReplies_Post_CSSReplies2_Id]
GO
ALTER TABLE [dbo].[Post_CSSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSSReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_CSSReplies] CHECK CONSTRAINT [FK_dbo.Post_CSSReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_CSSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSSReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_CSSReplies] CHECK CONSTRAINT [FK_dbo.Post_CSSReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_CSSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_CSSReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_CSSReplies] CHECK CONSTRAINT [FK_dbo.Post_CSSReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_Databases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Databases_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_Databases] CHECK CONSTRAINT [FK_dbo.Post_Databases_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_Databases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Databases_dbo.Post_Databases_Post_Databases2_Id] FOREIGN KEY([Post_Databases2_Id])
REFERENCES [dbo].[Post_Databases] ([Id])
GO
ALTER TABLE [dbo].[Post_Databases] CHECK CONSTRAINT [FK_dbo.Post_Databases_dbo.Post_Databases_Post_Databases2_Id]
GO
ALTER TABLE [dbo].[Post_Databases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Databases_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_Databases] CHECK CONSTRAINT [FK_dbo.Post_Databases_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_Databases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Databases_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_Databases] CHECK CONSTRAINT [FK_dbo.Post_Databases_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_Databases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Databases_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_Databases] CHECK CONSTRAINT [FK_dbo.Post_Databases_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_DBA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBA_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_DBA] CHECK CONSTRAINT [FK_dbo.Post_DBA_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_DBA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBA_dbo.Post_DBA_Post_DBA2_Id] FOREIGN KEY([Post_DBA2_Id])
REFERENCES [dbo].[Post_DBA] ([Id])
GO
ALTER TABLE [dbo].[Post_DBA] CHECK CONSTRAINT [FK_dbo.Post_DBA_dbo.Post_DBA_Post_DBA2_Id]
GO
ALTER TABLE [dbo].[Post_DBA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBA_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_DBA] CHECK CONSTRAINT [FK_dbo.Post_DBA_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_DBA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBA_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_DBA] CHECK CONSTRAINT [FK_dbo.Post_DBA_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_DBA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBA_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_DBA] CHECK CONSTRAINT [FK_dbo.Post_DBA_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_DBAReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBAReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_DBAReplies] CHECK CONSTRAINT [FK_dbo.Post_DBAReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_DBAReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBAReplies_dbo.Post_DBA_Post_DBA_Id] FOREIGN KEY([Post_DBA_Id])
REFERENCES [dbo].[Post_DBA] ([Id])
GO
ALTER TABLE [dbo].[Post_DBAReplies] CHECK CONSTRAINT [FK_dbo.Post_DBAReplies_dbo.Post_DBA_Post_DBA_Id]
GO
ALTER TABLE [dbo].[Post_DBAReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBAReplies_dbo.Post_DBAReplies_Post_DBAReplies2_Id] FOREIGN KEY([Post_DBAReplies2_Id])
REFERENCES [dbo].[Post_DBAReplies] ([Id])
GO
ALTER TABLE [dbo].[Post_DBAReplies] CHECK CONSTRAINT [FK_dbo.Post_DBAReplies_dbo.Post_DBAReplies_Post_DBAReplies2_Id]
GO
ALTER TABLE [dbo].[Post_DBAReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBAReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_DBAReplies] CHECK CONSTRAINT [FK_dbo.Post_DBAReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_DBAReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBAReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_DBAReplies] CHECK CONSTRAINT [FK_dbo.Post_DBAReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_DBAReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBAReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_DBAReplies] CHECK CONSTRAINT [FK_dbo.Post_DBAReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_DBReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_DBReplies] CHECK CONSTRAINT [FK_dbo.Post_DBReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_DBReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBReplies_dbo.Post_Databases_Post_Databases_Id] FOREIGN KEY([Post_Databases_Id])
REFERENCES [dbo].[Post_Databases] ([Id])
GO
ALTER TABLE [dbo].[Post_DBReplies] CHECK CONSTRAINT [FK_dbo.Post_DBReplies_dbo.Post_Databases_Post_Databases_Id]
GO
ALTER TABLE [dbo].[Post_DBReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBReplies_dbo.Post_DBReplies_Post_DBReplies2_Id] FOREIGN KEY([Post_DBReplies2_Id])
REFERENCES [dbo].[Post_DBReplies] ([Id])
GO
ALTER TABLE [dbo].[Post_DBReplies] CHECK CONSTRAINT [FK_dbo.Post_DBReplies_dbo.Post_DBReplies_Post_DBReplies2_Id]
GO
ALTER TABLE [dbo].[Post_DBReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_DBReplies] CHECK CONSTRAINT [FK_dbo.Post_DBReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_DBReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_DBReplies] CHECK CONSTRAINT [FK_dbo.Post_DBReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_DBReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_DBReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_DBReplies] CHECK CONSTRAINT [FK_dbo.Post_DBReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_EntityFrameWorks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_EntityFrameWorks_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_EntityFrameWorks] CHECK CONSTRAINT [FK_dbo.Post_EntityFrameWorks_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_EntityFrameWorks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_EntityFrameWorks_dbo.Post_EntityFrameWorks_Post_EntityFrameWorks2_Id] FOREIGN KEY([Post_EntityFrameWorks2_Id])
REFERENCES [dbo].[Post_EntityFrameWorks] ([Id])
GO
ALTER TABLE [dbo].[Post_EntityFrameWorks] CHECK CONSTRAINT [FK_dbo.Post_EntityFrameWorks_dbo.Post_EntityFrameWorks_Post_EntityFrameWorks2_Id]
GO
ALTER TABLE [dbo].[Post_EntityFrameWorks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_EntityFrameWorks_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_EntityFrameWorks] CHECK CONSTRAINT [FK_dbo.Post_EntityFrameWorks_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_EntityFrameWorks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_EntityFrameWorks_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_EntityFrameWorks] CHECK CONSTRAINT [FK_dbo.Post_EntityFrameWorks_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_EntityFrameWorks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_EntityFrameWorks_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_EntityFrameWorks] CHECK CONSTRAINT [FK_dbo.Post_EntityFrameWorks_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_EntityFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_EntityFReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_EntityFReplies] CHECK CONSTRAINT [FK_dbo.Post_EntityFReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_EntityFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_EntityFReplies_dbo.Post_EntityFrameWorks_Post_EntityFrameWorks_Id] FOREIGN KEY([Post_EntityFrameWorks_Id])
REFERENCES [dbo].[Post_EntityFrameWorks] ([Id])
GO
ALTER TABLE [dbo].[Post_EntityFReplies] CHECK CONSTRAINT [FK_dbo.Post_EntityFReplies_dbo.Post_EntityFrameWorks_Post_EntityFrameWorks_Id]
GO
ALTER TABLE [dbo].[Post_EntityFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_EntityFReplies_dbo.Post_EntityFReplies_Post_EntityFReplies2_Id] FOREIGN KEY([Post_EntityFReplies2_Id])
REFERENCES [dbo].[Post_EntityFReplies] ([Id])
GO
ALTER TABLE [dbo].[Post_EntityFReplies] CHECK CONSTRAINT [FK_dbo.Post_EntityFReplies_dbo.Post_EntityFReplies_Post_EntityFReplies2_Id]
GO
ALTER TABLE [dbo].[Post_EntityFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_EntityFReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_EntityFReplies] CHECK CONSTRAINT [FK_dbo.Post_EntityFReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_EntityFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_EntityFReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_EntityFReplies] CHECK CONSTRAINT [FK_dbo.Post_EntityFReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_EntityFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_EntityFReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_EntityFReplies] CHECK CONSTRAINT [FK_dbo.Post_EntityFReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_JqJava]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_JqJava_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_JqJava] CHECK CONSTRAINT [FK_dbo.Post_JqJava_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_JqJava]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_JqJava_dbo.Post_JqJava_Post_JqJava2_Id] FOREIGN KEY([Post_JqJava2_Id])
REFERENCES [dbo].[Post_JqJava] ([Id])
GO
ALTER TABLE [dbo].[Post_JqJava] CHECK CONSTRAINT [FK_dbo.Post_JqJava_dbo.Post_JqJava_Post_JqJava2_Id]
GO
ALTER TABLE [dbo].[Post_JqJava]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_JqJava_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_JqJava] CHECK CONSTRAINT [FK_dbo.Post_JqJava_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_JqJava]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_JqJava_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_JqJava] CHECK CONSTRAINT [FK_dbo.Post_JqJava_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_JqJava]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_JqJava_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_JqJava] CHECK CONSTRAINT [FK_dbo.Post_JqJava_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_JqJavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_JqJavaReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_JqJavaReplies] CHECK CONSTRAINT [FK_dbo.Post_JqJavaReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_JqJavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_JqJavaReplies_dbo.Post_JqJava_Post_JqJava_Id] FOREIGN KEY([Post_JqJava_Id])
REFERENCES [dbo].[Post_JqJava] ([Id])
GO
ALTER TABLE [dbo].[Post_JqJavaReplies] CHECK CONSTRAINT [FK_dbo.Post_JqJavaReplies_dbo.Post_JqJava_Post_JqJava_Id]
GO
ALTER TABLE [dbo].[Post_JqJavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_JqJavaReplies_dbo.Post_JqJavaReplies_Post_JqJavaReplies2_Id] FOREIGN KEY([Post_JqJavaReplies2_Id])
REFERENCES [dbo].[Post_JqJavaReplies] ([Id])
GO
ALTER TABLE [dbo].[Post_JqJavaReplies] CHECK CONSTRAINT [FK_dbo.Post_JqJavaReplies_dbo.Post_JqJavaReplies_Post_JqJavaReplies2_Id]
GO
ALTER TABLE [dbo].[Post_JqJavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_JqJavaReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_JqJavaReplies] CHECK CONSTRAINT [FK_dbo.Post_JqJavaReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_JqJavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_JqJavaReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_JqJavaReplies] CHECK CONSTRAINT [FK_dbo.Post_JqJavaReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_JqJavaReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_JqJavaReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_JqJavaReplies] CHECK CONSTRAINT [FK_dbo.Post_JqJavaReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_Mvc]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Mvc_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_Mvc] CHECK CONSTRAINT [FK_dbo.Post_Mvc_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_Mvc]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Mvc_dbo.Post_Mvc_Post_Mvc2_Id] FOREIGN KEY([Post_Mvc2_Id])
REFERENCES [dbo].[Post_Mvc] ([Id])
GO
ALTER TABLE [dbo].[Post_Mvc] CHECK CONSTRAINT [FK_dbo.Post_Mvc_dbo.Post_Mvc_Post_Mvc2_Id]
GO
ALTER TABLE [dbo].[Post_Mvc]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Mvc_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_Mvc] CHECK CONSTRAINT [FK_dbo.Post_Mvc_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_Mvc]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Mvc_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_Mvc] CHECK CONSTRAINT [FK_dbo.Post_Mvc_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_Mvc]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Mvc_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_Mvc] CHECK CONSTRAINT [FK_dbo.Post_Mvc_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_MvcReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_MvcReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_MvcReplies] CHECK CONSTRAINT [FK_dbo.Post_MvcReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_MvcReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_MvcReplies_dbo.Post_Mvc_Post_Mvc_Id] FOREIGN KEY([Post_Mvc_Id])
REFERENCES [dbo].[Post_Mvc] ([Id])
GO
ALTER TABLE [dbo].[Post_MvcReplies] CHECK CONSTRAINT [FK_dbo.Post_MvcReplies_dbo.Post_Mvc_Post_Mvc_Id]
GO
ALTER TABLE [dbo].[Post_MvcReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_MvcReplies_dbo.Post_MvcReplies_Post_MvcReplies2_Id] FOREIGN KEY([Post_MvcReplies2_Id])
REFERENCES [dbo].[Post_MvcReplies] ([Id])
GO
ALTER TABLE [dbo].[Post_MvcReplies] CHECK CONSTRAINT [FK_dbo.Post_MvcReplies_dbo.Post_MvcReplies_Post_MvcReplies2_Id]
GO
ALTER TABLE [dbo].[Post_MvcReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_MvcReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_MvcReplies] CHECK CONSTRAINT [FK_dbo.Post_MvcReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_MvcReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_MvcReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_MvcReplies] CHECK CONSTRAINT [FK_dbo.Post_MvcReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_MvcReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_MvcReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_MvcReplies] CHECK CONSTRAINT [FK_dbo.Post_MvcReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_QReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_QReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_QReplies] CHECK CONSTRAINT [FK_dbo.Post_QReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_QReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_QReplies_dbo.Post_QReplies_Post_QReplies2_Id] FOREIGN KEY([Post_QReplies2_Id])
REFERENCES [dbo].[Post_QReplies] ([Id])
GO
ALTER TABLE [dbo].[Post_QReplies] CHECK CONSTRAINT [FK_dbo.Post_QReplies_dbo.Post_QReplies_Post_QReplies2_Id]
GO
ALTER TABLE [dbo].[Post_QReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_QReplies_dbo.Post_Question_Post_Question_Id] FOREIGN KEY([Post_Question_Id])
REFERENCES [dbo].[Post_Question] ([Id])
GO
ALTER TABLE [dbo].[Post_QReplies] CHECK CONSTRAINT [FK_dbo.Post_QReplies_dbo.Post_Question_Post_Question_Id]
GO
ALTER TABLE [dbo].[Post_QReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_QReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_QReplies] CHECK CONSTRAINT [FK_dbo.Post_QReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_QReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_QReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_QReplies] CHECK CONSTRAINT [FK_dbo.Post_QReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_QReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_QReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_QReplies] CHECK CONSTRAINT [FK_dbo.Post_QReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_Question]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Question_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_Question] CHECK CONSTRAINT [FK_dbo.Post_Question_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_Question]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Question_dbo.Post_Question_Post_Question2_Id] FOREIGN KEY([Post_Question2_Id])
REFERENCES [dbo].[Post_Question] ([Id])
GO
ALTER TABLE [dbo].[Post_Question] CHECK CONSTRAINT [FK_dbo.Post_Question_dbo.Post_Question_Post_Question2_Id]
GO
ALTER TABLE [dbo].[Post_Question]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Question_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_Question] CHECK CONSTRAINT [FK_dbo.Post_Question_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_Question]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Question_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_Question] CHECK CONSTRAINT [FK_dbo.Post_Question_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_Question]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Question_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_Question] CHECK CONSTRAINT [FK_dbo.Post_Question_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_Webform]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Webform_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_Webform] CHECK CONSTRAINT [FK_dbo.Post_Webform_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_Webform]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Webform_dbo.Post_Webform_Post_Webform2_Id] FOREIGN KEY([Post_Webform2_Id])
REFERENCES [dbo].[Post_Webform] ([Id])
GO
ALTER TABLE [dbo].[Post_Webform] CHECK CONSTRAINT [FK_dbo.Post_Webform_dbo.Post_Webform_Post_Webform2_Id]
GO
ALTER TABLE [dbo].[Post_Webform]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Webform_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_Webform] CHECK CONSTRAINT [FK_dbo.Post_Webform_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_Webform]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Webform_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_Webform] CHECK CONSTRAINT [FK_dbo.Post_Webform_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_Webform]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_Webform_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_Webform] CHECK CONSTRAINT [FK_dbo.Post_Webform_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Post_WebformReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_WebformReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_WebformReplies] CHECK CONSTRAINT [FK_dbo.Post_WebformReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Post_WebformReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_WebformReplies_dbo.Post_Webform_Post_Webform_Id] FOREIGN KEY([Post_Webform_Id])
REFERENCES [dbo].[Post_Webform] ([Id])
GO
ALTER TABLE [dbo].[Post_WebformReplies] CHECK CONSTRAINT [FK_dbo.Post_WebformReplies_dbo.Post_Webform_Post_Webform_Id]
GO
ALTER TABLE [dbo].[Post_WebformReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_WebformReplies_dbo.Post_WebformReplies_Post_WebformReplies2_Id] FOREIGN KEY([Post_WebformReplies2_Id])
REFERENCES [dbo].[Post_WebformReplies] ([Id])
GO
ALTER TABLE [dbo].[Post_WebformReplies] CHECK CONSTRAINT [FK_dbo.Post_WebformReplies_dbo.Post_WebformReplies_Post_WebformReplies2_Id]
GO
ALTER TABLE [dbo].[Post_WebformReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_WebformReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Post_WebformReplies] CHECK CONSTRAINT [FK_dbo.Post_WebformReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Post_WebformReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_WebformReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Post_WebformReplies] CHECK CONSTRAINT [FK_dbo.Post_WebformReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Post_WebformReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_WebformReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Post_WebformReplies] CHECK CONSTRAINT [FK_dbo.Post_WebformReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Posts_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_dbo.Posts_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Posts_dbo.Posts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_dbo.Posts_dbo.Posts_PostId]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Posts_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_dbo.Posts_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Posts_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_dbo.Posts_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[PostTags]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PostTags_dbo.tbh_Tag_tbh_Tag_Id] FOREIGN KEY([tbh_Tag_Id])
REFERENCES [dbo].[tbh_Tag] ([Id])
GO
ALTER TABLE [dbo].[PostTags] CHECK CONSTRAINT [FK_dbo.PostTags_dbo.tbh_Tag_tbh_Tag_Id]
GO
ALTER TABLE [dbo].[PostTags]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PostTags_dbo.Threads_ThreadId] FOREIGN KEY([ThreadId])
REFERENCES [dbo].[Threads] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostTags] CHECK CONSTRAINT [FK_dbo.PostTags_dbo.Threads_ThreadId]
GO
ALTER TABLE [dbo].[ReactReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReactReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ReactReplies] CHECK CONSTRAINT [FK_dbo.ReactReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[ReactReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReactReplies_dbo.ReactReplies_ReactReply1_Id] FOREIGN KEY([ReactReply1_Id])
REFERENCES [dbo].[ReactReplies] ([Id])
GO
ALTER TABLE [dbo].[ReactReplies] CHECK CONSTRAINT [FK_dbo.ReactReplies_dbo.ReactReplies_ReactReply1_Id]
GO
ALTER TABLE [dbo].[ReactReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReactReplies_dbo.Reacts_ReactId] FOREIGN KEY([ReactId])
REFERENCES [dbo].[Reacts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReactReplies] CHECK CONSTRAINT [FK_dbo.ReactReplies_dbo.Reacts_ReactId]
GO
ALTER TABLE [dbo].[ReactReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReactReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[ReactReplies] CHECK CONSTRAINT [FK_dbo.ReactReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[ReactReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReactReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[ReactReplies] CHECK CONSTRAINT [FK_dbo.ReactReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[ReactReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReactReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[ReactReplies] CHECK CONSTRAINT [FK_dbo.ReactReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Reacts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reacts_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Reacts] CHECK CONSTRAINT [FK_dbo.Reacts_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Reacts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reacts_dbo.Reacts_ReactId] FOREIGN KEY([ReactId])
REFERENCES [dbo].[Reacts] ([Id])
GO
ALTER TABLE [dbo].[Reacts] CHECK CONSTRAINT [FK_dbo.Reacts_dbo.Reacts_ReactId]
GO
ALTER TABLE [dbo].[Reacts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reacts_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Reacts] CHECK CONSTRAINT [FK_dbo.Reacts_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Reacts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reacts_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Reacts] CHECK CONSTRAINT [FK_dbo.Reacts_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Reacts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reacts_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Reacts] CHECK CONSTRAINT [FK_dbo.Reacts_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Searches]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Searches_dbo.CSharps_CSharp_Id] FOREIGN KEY([CSharp_Id])
REFERENCES [dbo].[CSharps] ([Id])
GO
ALTER TABLE [dbo].[Searches] CHECK CONSTRAINT [FK_dbo.Searches_dbo.CSharps_CSharp_Id]
GO
ALTER TABLE [dbo].[Searches]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Searches_dbo.Databas_Databas_Id] FOREIGN KEY([Databas_Id])
REFERENCES [dbo].[Databas] ([Id])
GO
ALTER TABLE [dbo].[Searches] CHECK CONSTRAINT [FK_dbo.Searches_dbo.Databas_Databas_Id]
GO
ALTER TABLE [dbo].[Searches]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Searches_dbo.Searches_SearchId] FOREIGN KEY([SearchId])
REFERENCES [dbo].[Searches] ([Id])
GO
ALTER TABLE [dbo].[Searches] CHECK CONSTRAINT [FK_dbo.Searches_dbo.Searches_SearchId]
GO
ALTER TABLE [dbo].[tbh_Category]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Category_dbo.tbh_Category_tbh_Category2_Id] FOREIGN KEY([tbh_Category2_Id])
REFERENCES [dbo].[tbh_Category] ([Id])
GO
ALTER TABLE [dbo].[tbh_Category] CHECK CONSTRAINT [FK_dbo.tbh_Category_dbo.tbh_Category_tbh_Category2_Id]
GO
ALTER TABLE [dbo].[tbh_CommentLike]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_CommentLike_dbo.tbh_Comments_tbh_Comments_Id] FOREIGN KEY([tbh_Comments_Id])
REFERENCES [dbo].[tbh_Comments] ([Id])
GO
ALTER TABLE [dbo].[tbh_CommentLike] CHECK CONSTRAINT [FK_dbo.tbh_CommentLike_dbo.tbh_Comments_tbh_Comments_Id]
GO
ALTER TABLE [dbo].[tbh_Communications]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Communications_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[tbh_Communications] CHECK CONSTRAINT [FK_dbo.tbh_Communications_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[tbh_ContactUs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_ContactUs_dbo.AspNetUsers_AspNetUser_Id] FOREIGN KEY([AspNetUser_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tbh_ContactUs] CHECK CONSTRAINT [FK_dbo.tbh_ContactUs_dbo.AspNetUsers_AspNetUser_Id]
GO
ALTER TABLE [dbo].[tbh_Coupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Coupon_dbo.AspNetUsers_AspNetUser_Id] FOREIGN KEY([AspNetUser_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tbh_Coupon] CHECK CONSTRAINT [FK_dbo.tbh_Coupon_dbo.AspNetUsers_AspNetUser_Id]
GO
ALTER TABLE [dbo].[tbh_Departments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Departments_dbo.tbh_Departments_tbh_Departments2_Id] FOREIGN KEY([tbh_Departments2_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[tbh_Departments] CHECK CONSTRAINT [FK_dbo.tbh_Departments_dbo.tbh_Departments_tbh_Departments2_Id]
GO
ALTER TABLE [dbo].[tbh_DSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_DSReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tbh_DSReplies] CHECK CONSTRAINT [FK_dbo.tbh_DSReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[tbh_DSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_DSReplies_dbo.Posts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbh_DSReplies] CHECK CONSTRAINT [FK_dbo.tbh_DSReplies_dbo.Posts_PostId]
GO
ALTER TABLE [dbo].[tbh_DSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_DSReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[tbh_DSReplies] CHECK CONSTRAINT [FK_dbo.tbh_DSReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[tbh_DSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_DSReplies_dbo.tbh_DSReplies_tbh_DSReplies2_Id] FOREIGN KEY([tbh_DSReplies2_Id])
REFERENCES [dbo].[tbh_DSReplies] ([Id])
GO
ALTER TABLE [dbo].[tbh_DSReplies] CHECK CONSTRAINT [FK_dbo.tbh_DSReplies_dbo.tbh_DSReplies_tbh_DSReplies2_Id]
GO
ALTER TABLE [dbo].[tbh_DSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_DSReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[tbh_DSReplies] CHECK CONSTRAINT [FK_dbo.tbh_DSReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[tbh_DSReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_DSReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[tbh_DSReplies] CHECK CONSTRAINT [FK_dbo.tbh_DSReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[tbh_FrontSlider]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_FrontSlider_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[tbh_FrontSlider] CHECK CONSTRAINT [FK_dbo.tbh_FrontSlider_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[tbh_FrontSlider]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_FrontSlider_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[tbh_FrontSlider] CHECK CONSTRAINT [FK_dbo.tbh_FrontSlider_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[tbh_Gallery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Gallery_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[tbh_Gallery] CHECK CONSTRAINT [FK_dbo.tbh_Gallery_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[tbh_OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_OrderDetails_dbo.tbh_Products_tbh_Products_Id] FOREIGN KEY([tbh_Products_Id])
REFERENCES [dbo].[tbh_Products] ([Id])
GO
ALTER TABLE [dbo].[tbh_OrderDetails] CHECK CONSTRAINT [FK_dbo.tbh_OrderDetails_dbo.tbh_Products_tbh_Products_Id]
GO
ALTER TABLE [dbo].[tbh_OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_OrderDetails_dbo.tbl_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[tbl_Order] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbh_OrderDetails] CHECK CONSTRAINT [FK_dbo.tbh_OrderDetails_dbo.tbl_Order_OrderId]
GO
ALTER TABLE [dbo].[tbh_Pages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Pages_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[tbh_Pages] CHECK CONSTRAINT [FK_dbo.tbh_Pages_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[tbh_Pages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Pages_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[tbh_Pages] CHECK CONSTRAINT [FK_dbo.tbh_Pages_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[tbh_Payments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Payments_dbo.tbh_PaymentTypes_tbh_PaymentTypes_Id] FOREIGN KEY([tbh_PaymentTypes_Id])
REFERENCES [dbo].[tbh_PaymentTypes] ([Id])
GO
ALTER TABLE [dbo].[tbh_Payments] CHECK CONSTRAINT [FK_dbo.tbh_Payments_dbo.tbh_PaymentTypes_tbh_PaymentTypes_Id]
GO
ALTER TABLE [dbo].[tbh_PostLike]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_PostLike_dbo.Posts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([Id])
GO
ALTER TABLE [dbo].[tbh_PostLike] CHECK CONSTRAINT [FK_dbo.tbh_PostLike_dbo.Posts_PostId]
GO
ALTER TABLE [dbo].[tbh_PostLike]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_PostLike_dbo.Threads_Thread_Id] FOREIGN KEY([Thread_Id])
REFERENCES [dbo].[Threads] ([Id])
GO
ALTER TABLE [dbo].[tbh_PostLike] CHECK CONSTRAINT [FK_dbo.tbh_PostLike_dbo.Threads_Thread_Id]
GO
ALTER TABLE [dbo].[tbh_PostLike]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_PostLike_dbo.Threads_Thread_Id1] FOREIGN KEY([Thread_Id1])
REFERENCES [dbo].[Threads] ([Id])
GO
ALTER TABLE [dbo].[tbh_PostLike] CHECK CONSTRAINT [FK_dbo.tbh_PostLike_dbo.Threads_Thread_Id1]
GO
ALTER TABLE [dbo].[tbh_PostLike]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_PostLike_dbo.Threads_Thread1_Id] FOREIGN KEY([Thread1_Id])
REFERENCES [dbo].[Threads] ([Id])
GO
ALTER TABLE [dbo].[tbh_PostLike] CHECK CONSTRAINT [FK_dbo.tbh_PostLike_dbo.Threads_Thread1_Id]
GO
ALTER TABLE [dbo].[tbh_PostLike]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_PostLike_dbo.Threads_ThreadId] FOREIGN KEY([ThreadId])
REFERENCES [dbo].[Threads] ([Id])
GO
ALTER TABLE [dbo].[tbh_PostLike] CHECK CONSTRAINT [FK_dbo.tbh_PostLike_dbo.Threads_ThreadId]
GO
ALTER TABLE [dbo].[tbh_productpic]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_productpic_dbo.tbh_productpic_tbh_productpic2_Id] FOREIGN KEY([tbh_productpic2_Id])
REFERENCES [dbo].[tbh_productpic] ([Id])
GO
ALTER TABLE [dbo].[tbh_productpic] CHECK CONSTRAINT [FK_dbo.tbh_productpic_dbo.tbh_productpic_tbh_productpic2_Id]
GO
ALTER TABLE [dbo].[tbh_productpic]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_productpic_dbo.tbh_Products_tbh_Products_Id] FOREIGN KEY([tbh_Products_Id])
REFERENCES [dbo].[tbh_Products] ([Id])
GO
ALTER TABLE [dbo].[tbh_productpic] CHECK CONSTRAINT [FK_dbo.tbh_productpic_dbo.tbh_Products_tbh_Products_Id]
GO
ALTER TABLE [dbo].[tbh_Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Products_dbo.Manufacturers_ManufacturerId] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbh_Products] CHECK CONSTRAINT [FK_dbo.tbh_Products_dbo.Manufacturers_ManufacturerId]
GO
ALTER TABLE [dbo].[tbh_Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Products_dbo.Producers_Producer_Id] FOREIGN KEY([Producer_Id])
REFERENCES [dbo].[Producers] ([Id])
GO
ALTER TABLE [dbo].[tbh_Products] CHECK CONSTRAINT [FK_dbo.tbh_Products_dbo.Producers_Producer_Id]
GO
ALTER TABLE [dbo].[tbh_Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Products_dbo.tbh_Category_tbh_Category_Id] FOREIGN KEY([tbh_Category_Id])
REFERENCES [dbo].[tbh_Category] ([Id])
GO
ALTER TABLE [dbo].[tbh_Products] CHECK CONSTRAINT [FK_dbo.tbh_Products_dbo.tbh_Category_tbh_Category_Id]
GO
ALTER TABLE [dbo].[tbh_Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Products_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[tbh_Products] CHECK CONSTRAINT [FK_dbo.tbh_Products_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[tbh_Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Products_dbo.tbh_Products_tbh_Products2_Id] FOREIGN KEY([tbh_Products2_Id])
REFERENCES [dbo].[tbh_Products] ([Id])
GO
ALTER TABLE [dbo].[tbh_Products] CHECK CONSTRAINT [FK_dbo.tbh_Products_dbo.tbh_Products_tbh_Products2_Id]
GO
ALTER TABLE [dbo].[tbh_Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Products_dbo.tbh_Shop_tbh_Shop_Id] FOREIGN KEY([tbh_Shop_Id])
REFERENCES [dbo].[tbh_Shop] ([Id])
GO
ALTER TABLE [dbo].[tbh_Products] CHECK CONSTRAINT [FK_dbo.tbh_Products_dbo.tbh_Shop_tbh_Shop_Id]
GO
ALTER TABLE [dbo].[tbh_Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Products_dbo.tbh_SubCategory_tbh_SubCategory_Id] FOREIGN KEY([tbh_SubCategory_Id])
REFERENCES [dbo].[tbh_SubCategory] ([Id])
GO
ALTER TABLE [dbo].[tbh_Products] CHECK CONSTRAINT [FK_dbo.tbh_Products_dbo.tbh_SubCategory_tbh_SubCategory_Id]
GO
ALTER TABLE [dbo].[tbh_Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Products_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[tbh_Products] CHECK CONSTRAINT [FK_dbo.tbh_Products_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[tbh_Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Products_dbo.Vendors_Vendor_Id] FOREIGN KEY([Vendor_Id])
REFERENCES [dbo].[Vendors] ([Id])
GO
ALTER TABLE [dbo].[tbh_Products] CHECK CONSTRAINT [FK_dbo.tbh_Products_dbo.Vendors_Vendor_Id]
GO
ALTER TABLE [dbo].[tbh_ProductsDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_ProductsDetails_dbo.tbh_Products_tbh_Products_Id] FOREIGN KEY([tbh_Products_Id])
REFERENCES [dbo].[tbh_Products] ([Id])
GO
ALTER TABLE [dbo].[tbh_ProductsDetails] CHECK CONSTRAINT [FK_dbo.tbh_ProductsDetails_dbo.tbh_Products_tbh_Products_Id]
GO
ALTER TABLE [dbo].[tbh_ReadPost]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_ReadPost_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tbh_ReadPost] CHECK CONSTRAINT [FK_dbo.tbh_ReadPost_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[tbh_ReadPost]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_ReadPost_dbo.tbh_Replies_tbh_Replies_Id] FOREIGN KEY([tbh_Replies_Id])
REFERENCES [dbo].[tbh_Replies] ([Id])
GO
ALTER TABLE [dbo].[tbh_ReadPost] CHECK CONSTRAINT [FK_dbo.tbh_ReadPost_dbo.tbh_Replies_tbh_Replies_Id]
GO
ALTER TABLE [dbo].[tbh_ReadPost]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_ReadPost_dbo.Threads_ThreadId] FOREIGN KEY([ThreadId])
REFERENCES [dbo].[Threads] ([Id])
GO
ALTER TABLE [dbo].[tbh_ReadPost] CHECK CONSTRAINT [FK_dbo.tbh_ReadPost_dbo.Threads_ThreadId]
GO
ALTER TABLE [dbo].[tbh_RecentlyViews]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_RecentlyViews_dbo.AspNetUsers_AspNetUser_Id] FOREIGN KEY([AspNetUser_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tbh_RecentlyViews] CHECK CONSTRAINT [FK_dbo.tbh_RecentlyViews_dbo.AspNetUsers_AspNetUser_Id]
GO
ALTER TABLE [dbo].[tbh_RecentlyViews]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_RecentlyViews_dbo.tbh_Products_tbh_Products_Id] FOREIGN KEY([tbh_Products_Id])
REFERENCES [dbo].[tbh_Products] ([Id])
GO
ALTER TABLE [dbo].[tbh_RecentlyViews] CHECK CONSTRAINT [FK_dbo.tbh_RecentlyViews_dbo.tbh_Products_tbh_Products_Id]
GO
ALTER TABLE [dbo].[tbh_Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Replies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tbh_Replies] CHECK CONSTRAINT [FK_dbo.tbh_Replies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[tbh_Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Replies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[tbh_Replies] CHECK CONSTRAINT [FK_dbo.tbh_Replies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[tbh_Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Replies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[tbh_Replies] CHECK CONSTRAINT [FK_dbo.tbh_Replies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[tbh_Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Replies_dbo.tbh_Replies_tbh_Replies2_Id] FOREIGN KEY([tbh_Replies2_Id])
REFERENCES [dbo].[tbh_Replies] ([Id])
GO
ALTER TABLE [dbo].[tbh_Replies] CHECK CONSTRAINT [FK_dbo.tbh_Replies_dbo.tbh_Replies_tbh_Replies2_Id]
GO
ALTER TABLE [dbo].[tbh_Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Replies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[tbh_Replies] CHECK CONSTRAINT [FK_dbo.tbh_Replies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[tbh_Replies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Replies_dbo.Threads_ThreadId] FOREIGN KEY([ThreadId])
REFERENCES [dbo].[Threads] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbh_Replies] CHECK CONSTRAINT [FK_dbo.tbh_Replies_dbo.Threads_ThreadId]
GO
ALTER TABLE [dbo].[tbh_ReplyLike]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_ReplyLike_dbo.tbh_Replies_tbh_Replies_Id] FOREIGN KEY([tbh_Replies_Id])
REFERENCES [dbo].[tbh_Replies] ([Id])
GO
ALTER TABLE [dbo].[tbh_ReplyLike] CHECK CONSTRAINT [FK_dbo.tbh_ReplyLike_dbo.tbh_Replies_tbh_Replies_Id]
GO
ALTER TABLE [dbo].[tbh_Reviews]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Reviews_dbo.AspNetUsers_AspNetUser_Id] FOREIGN KEY([AspNetUser_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tbh_Reviews] CHECK CONSTRAINT [FK_dbo.tbh_Reviews_dbo.AspNetUsers_AspNetUser_Id]
GO
ALTER TABLE [dbo].[tbh_Reviews]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Reviews_dbo.tbh_Products_tbh_Products_Id] FOREIGN KEY([tbh_Products_Id])
REFERENCES [dbo].[tbh_Products] ([Id])
GO
ALTER TABLE [dbo].[tbh_Reviews] CHECK CONSTRAINT [FK_dbo.tbh_Reviews_dbo.tbh_Products_tbh_Products_Id]
GO
ALTER TABLE [dbo].[tbh_Services]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Services_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[tbh_Services] CHECK CONSTRAINT [FK_dbo.tbh_Services_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[tbh_SettingMeta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_SettingMeta_dbo.tbh_SettingMeta_tbh_SettingMeta2_Id] FOREIGN KEY([tbh_SettingMeta2_Id])
REFERENCES [dbo].[tbh_SettingMeta] ([Id])
GO
ALTER TABLE [dbo].[tbh_SettingMeta] CHECK CONSTRAINT [FK_dbo.tbh_SettingMeta_dbo.tbh_SettingMeta_tbh_SettingMeta2_Id]
GO
ALTER TABLE [dbo].[tbh_Shop]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Shop_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[tbh_Shop] CHECK CONSTRAINT [FK_dbo.tbh_Shop_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[tbh_SliderItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_SliderItem_dbo.tbh_Slider_tbh_Slider_Id] FOREIGN KEY([tbh_Slider_Id])
REFERENCES [dbo].[tbh_Slider] ([Id])
GO
ALTER TABLE [dbo].[tbh_SliderItem] CHECK CONSTRAINT [FK_dbo.tbh_SliderItem_dbo.tbh_Slider_tbh_Slider_Id]
GO
ALTER TABLE [dbo].[tbh_SocialLink]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_SocialLink_dbo.tbh_Social_tbh_Social_Id] FOREIGN KEY([tbh_Social_Id])
REFERENCES [dbo].[tbh_Social] ([Id])
GO
ALTER TABLE [dbo].[tbh_SocialLink] CHECK CONSTRAINT [FK_dbo.tbh_SocialLink_dbo.tbh_Social_tbh_Social_Id]
GO
ALTER TABLE [dbo].[tbh_SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_SubCategory_dbo.tbh_Category_tbh_Category_Id] FOREIGN KEY([tbh_Category_Id])
REFERENCES [dbo].[tbh_Category] ([Id])
GO
ALTER TABLE [dbo].[tbh_SubCategory] CHECK CONSTRAINT [FK_dbo.tbh_SubCategory_dbo.tbh_Category_tbh_Category_Id]
GO
ALTER TABLE [dbo].[tbh_SubDepartments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_SubDepartments_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[tbh_SubDepartments] CHECK CONSTRAINT [FK_dbo.tbh_SubDepartments_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[tbh_SubDepartments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_SubDepartments_dbo.tbh_MenuMaster_tbh_MenuMaster_Id] FOREIGN KEY([tbh_MenuMaster_Id])
REFERENCES [dbo].[tbh_MenuMaster] ([Id])
GO
ALTER TABLE [dbo].[tbh_SubDepartments] CHECK CONSTRAINT [FK_dbo.tbh_SubDepartments_dbo.tbh_MenuMaster_tbh_MenuMaster_Id]
GO
ALTER TABLE [dbo].[tbh_SubDepartments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_SubDepartments_dbo.tbh_SubDepartments_tbh_SubDepartments2_Id] FOREIGN KEY([tbh_SubDepartments2_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[tbh_SubDepartments] CHECK CONSTRAINT [FK_dbo.tbh_SubDepartments_dbo.tbh_SubDepartments_tbh_SubDepartments2_Id]
GO
ALTER TABLE [dbo].[tbh_Subscribe]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Subscribe_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tbh_Subscribe] CHECK CONSTRAINT [FK_dbo.tbh_Subscribe_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[tbh_Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Wishlist_dbo.AspNetUsers_AspNetUser_Id] FOREIGN KEY([AspNetUser_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tbh_Wishlist] CHECK CONSTRAINT [FK_dbo.tbh_Wishlist_dbo.AspNetUsers_AspNetUser_Id]
GO
ALTER TABLE [dbo].[tbh_Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbh_Wishlist_dbo.tbh_Products_tbh_Products_Id] FOREIGN KEY([tbh_Products_Id])
REFERENCES [dbo].[tbh_Products] ([Id])
GO
ALTER TABLE [dbo].[tbh_Wishlist] CHECK CONSTRAINT [FK_dbo.tbh_Wishlist_dbo.tbh_Products_tbh_Products_Id]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbl_Order_dbo.AspNetUsers_AspNetUser_Id] FOREIGN KEY([AspNetUser_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_dbo.tbl_Order_dbo.AspNetUsers_AspNetUser_Id]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbl_Order_dbo.tbh_Coupon_tbh_Coupon_Id] FOREIGN KEY([tbh_Coupon_Id])
REFERENCES [dbo].[tbh_Coupon] ([Id])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_dbo.tbl_Order_dbo.tbh_Coupon_tbh_Coupon_Id]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbl_Order_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_dbo.tbl_Order_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbl_Order_dbo.tbh_Payments_tbh_Payments_Id] FOREIGN KEY([tbh_Payments_Id])
REFERENCES [dbo].[tbh_Payments] ([Id])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_dbo.tbl_Order_dbo.tbh_Payments_tbh_Payments_Id]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbl_Order_dbo.tbh_ShippingDetails_tbh_ShippingDetails_Id] FOREIGN KEY([tbh_ShippingDetails_Id])
REFERENCES [dbo].[tbh_ShippingDetails] ([Id])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_dbo.tbl_Order_dbo.tbh_ShippingDetails_tbh_ShippingDetails_Id]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbl_Order_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_dbo.tbl_Order_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbl_Order_dbo.tbl_Order_tbl_Order2_OrderId] FOREIGN KEY([tbl_Order2_OrderId])
REFERENCES [dbo].[tbl_Order] ([OrderId])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_dbo.tbl_Order_dbo.tbl_Order_tbl_Order2_OrderId]
GO
ALTER TABLE [dbo].[tblVideos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblVideos_dbo.AspNetUsers_AspNetUser_Id] FOREIGN KEY([AspNetUser_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tblVideos] CHECK CONSTRAINT [FK_dbo.tblVideos_dbo.AspNetUsers_AspNetUser_Id]
GO
ALTER TABLE [dbo].[tblVideos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblVideos_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[tblVideos] CHECK CONSTRAINT [FK_dbo.tblVideos_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[tblVideos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblVideos_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[tblVideos] CHECK CONSTRAINT [FK_dbo.tblVideos_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[tblVideos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblVideos_dbo.tblVideos_tblVideo2_Id] FOREIGN KEY([tblVideo2_Id])
REFERENCES [dbo].[tblVideos] ([Id])
GO
ALTER TABLE [dbo].[tblVideos] CHECK CONSTRAINT [FK_dbo.tblVideos_dbo.tblVideos_tblVideo2_Id]
GO
ALTER TABLE [dbo].[Threads]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Threads_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Threads] CHECK CONSTRAINT [FK_dbo.Threads_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Threads]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Threads_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[Threads] CHECK CONSTRAINT [FK_dbo.Threads_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[Threads]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Threads_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[Threads] CHECK CONSTRAINT [FK_dbo.Threads_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[Threads]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Threads_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[Threads] CHECK CONSTRAINT [FK_dbo.Threads_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[Threads]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Threads_dbo.Threads_ThreadId] FOREIGN KEY([ThreadId])
REFERENCES [dbo].[Threads] ([Id])
GO
ALTER TABLE [dbo].[Threads] CHECK CONSTRAINT [FK_dbo.Threads_dbo.Threads_ThreadId]
GO
ALTER TABLE [dbo].[WCFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WCFReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WCFReplies] CHECK CONSTRAINT [FK_dbo.WCFReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[WCFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WCFReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[WCFReplies] CHECK CONSTRAINT [FK_dbo.WCFReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[WCFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WCFReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[WCFReplies] CHECK CONSTRAINT [FK_dbo.WCFReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[WCFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WCFReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[WCFReplies] CHECK CONSTRAINT [FK_dbo.WCFReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[WCFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WCFReplies_dbo.WCFReplies_WCFReply1_Id] FOREIGN KEY([WCFReply1_Id])
REFERENCES [dbo].[WCFReplies] ([Id])
GO
ALTER TABLE [dbo].[WCFReplies] CHECK CONSTRAINT [FK_dbo.WCFReplies_dbo.WCFReplies_WCFReply1_Id]
GO
ALTER TABLE [dbo].[WCFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WCFReplies_dbo.WCFs_WCFId] FOREIGN KEY([WCFId])
REFERENCES [dbo].[WCFs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WCFReplies] CHECK CONSTRAINT [FK_dbo.WCFReplies_dbo.WCFs_WCFId]
GO
ALTER TABLE [dbo].[WCFs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WCFs_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WCFs] CHECK CONSTRAINT [FK_dbo.WCFs_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[WCFs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WCFs_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[WCFs] CHECK CONSTRAINT [FK_dbo.WCFs_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[WCFs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WCFs_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[WCFs] CHECK CONSTRAINT [FK_dbo.WCFs_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[WCFs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WCFs_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[WCFs] CHECK CONSTRAINT [FK_dbo.WCFs_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[WCFs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WCFs_dbo.WCFs_WCFId] FOREIGN KEY([WCFId])
REFERENCES [dbo].[WCFs] ([Id])
GO
ALTER TABLE [dbo].[WCFs] CHECK CONSTRAINT [FK_dbo.WCFs_dbo.WCFs_WCFId]
GO
ALTER TABLE [dbo].[WebApiReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WebApiReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WebApiReplies] CHECK CONSTRAINT [FK_dbo.WebApiReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[WebApiReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WebApiReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[WebApiReplies] CHECK CONSTRAINT [FK_dbo.WebApiReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[WebApiReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WebApiReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[WebApiReplies] CHECK CONSTRAINT [FK_dbo.WebApiReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[WebApiReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WebApiReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[WebApiReplies] CHECK CONSTRAINT [FK_dbo.WebApiReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[WebApiReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WebApiReplies_dbo.WebApiReplies_WebApiReply1_Id] FOREIGN KEY([WebApiReply1_Id])
REFERENCES [dbo].[WebApiReplies] ([Id])
GO
ALTER TABLE [dbo].[WebApiReplies] CHECK CONSTRAINT [FK_dbo.WebApiReplies_dbo.WebApiReplies_WebApiReply1_Id]
GO
ALTER TABLE [dbo].[WebApiReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WebApiReplies_dbo.WebApis_WebApiId] FOREIGN KEY([WebApiId])
REFERENCES [dbo].[WebApis] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WebApiReplies] CHECK CONSTRAINT [FK_dbo.WebApiReplies_dbo.WebApis_WebApiId]
GO
ALTER TABLE [dbo].[WebApis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WebApis_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WebApis] CHECK CONSTRAINT [FK_dbo.WebApis_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[WebApis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WebApis_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[WebApis] CHECK CONSTRAINT [FK_dbo.WebApis_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[WebApis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WebApis_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[WebApis] CHECK CONSTRAINT [FK_dbo.WebApis_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[WebApis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WebApis_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[WebApis] CHECK CONSTRAINT [FK_dbo.WebApis_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[WebApis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WebApis_dbo.WebApis_WebApiId] FOREIGN KEY([WebApiId])
REFERENCES [dbo].[WebApis] ([Id])
GO
ALTER TABLE [dbo].[WebApis] CHECK CONSTRAINT [FK_dbo.WebApis_dbo.WebApis_WebApiId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.webpages_UsersInRoles_dbo.webpages_Roles_webpages_Roles_Id] FOREIGN KEY([webpages_Roles_Id])
REFERENCES [dbo].[webpages_Roles] ([Id])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [FK_dbo.webpages_UsersInRoles_dbo.webpages_Roles_webpages_Roles_Id]
GO
ALTER TABLE [dbo].[Wishlists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Wishlists_dbo.AspNetUsers_AspNetUser_Id] FOREIGN KEY([AspNetUser_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Wishlists] CHECK CONSTRAINT [FK_dbo.Wishlists_dbo.AspNetUsers_AspNetUser_Id]
GO
ALTER TABLE [dbo].[Wishlists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Wishlists_dbo.tbh_Products_tbh_Products_Id] FOREIGN KEY([tbh_Products_Id])
REFERENCES [dbo].[tbh_Products] ([Id])
GO
ALTER TABLE [dbo].[Wishlists] CHECK CONSTRAINT [FK_dbo.Wishlists_dbo.tbh_Products_tbh_Products_Id]
GO
ALTER TABLE [dbo].[WPFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WPFReplies_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WPFReplies] CHECK CONSTRAINT [FK_dbo.WPFReplies_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[WPFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WPFReplies_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[WPFReplies] CHECK CONSTRAINT [FK_dbo.WPFReplies_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[WPFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WPFReplies_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[WPFReplies] CHECK CONSTRAINT [FK_dbo.WPFReplies_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[WPFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WPFReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[WPFReplies] CHECK CONSTRAINT [FK_dbo.WPFReplies_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[WPFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WPFReplies_dbo.WPFReplies_WPFReply1_Id] FOREIGN KEY([WPFReply1_Id])
REFERENCES [dbo].[WPFReplies] ([Id])
GO
ALTER TABLE [dbo].[WPFReplies] CHECK CONSTRAINT [FK_dbo.WPFReplies_dbo.WPFReplies_WPFReply1_Id]
GO
ALTER TABLE [dbo].[WPFReplies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WPFReplies_dbo.WPFs_WPFId] FOREIGN KEY([WPFId])
REFERENCES [dbo].[WPFs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WPFReplies] CHECK CONSTRAINT [FK_dbo.WPFReplies_dbo.WPFs_WPFId]
GO
ALTER TABLE [dbo].[WPFs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WPFs_dbo.AspNetUsers_AspNetUsers_Id] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WPFs] CHECK CONSTRAINT [FK_dbo.WPFs_dbo.AspNetUsers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[WPFs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WPFs_dbo.tbh_Departments_tbh_Departments_Id] FOREIGN KEY([tbh_Departments_Id])
REFERENCES [dbo].[tbh_Departments] ([Id])
GO
ALTER TABLE [dbo].[WPFs] CHECK CONSTRAINT [FK_dbo.WPFs_dbo.tbh_Departments_tbh_Departments_Id]
GO
ALTER TABLE [dbo].[WPFs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WPFs_dbo.tbh_Language_tbh_Language_Id] FOREIGN KEY([tbh_Language_Id])
REFERENCES [dbo].[tbh_Language] ([Id])
GO
ALTER TABLE [dbo].[WPFs] CHECK CONSTRAINT [FK_dbo.WPFs_dbo.tbh_Language_tbh_Language_Id]
GO
ALTER TABLE [dbo].[WPFs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WPFs_dbo.tbh_SubDepartments_tbh_SubDepartments_Id] FOREIGN KEY([tbh_SubDepartments_Id])
REFERENCES [dbo].[tbh_SubDepartments] ([Id])
GO
ALTER TABLE [dbo].[WPFs] CHECK CONSTRAINT [FK_dbo.WPFs_dbo.tbh_SubDepartments_tbh_SubDepartments_Id]
GO
ALTER TABLE [dbo].[WPFs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WPFs_dbo.WPFs_WPFId] FOREIGN KEY([WPFId])
REFERENCES [dbo].[WPFs] ([Id])
GO
ALTER TABLE [dbo].[WPFs] CHECK CONSTRAINT [FK_dbo.WPFs_dbo.WPFs_WPFId]
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_Docfiles]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_all_Docfiles]
	
AS
BEGIN
/****** Script for SelectTopNRows command from SSMS  ******/
	SELECT [file_id]
		  ,[file_name]
		  ,[file_ext]
	FROM [dbo].[tbh_Documents]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_files]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_all_files]
	
AS
BEGIN
/****** Script for SelectTopNRows command from SSMS  ******/
	SELECT [file_id], [file_name], [file_ext]
	FROM [dbo].[tbl_file]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_Video]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_all_Video]
	
AS
BEGIN
/****** Script for SelectTopNRows command from SSMS  ******/
	SELECT [Id]
		  ,[Name]
		  ,[ContentType]
		   ,[Data]
		   ,[FileSize]
		   ,[FilePath]
		    ,[VideoTitle]
	FROM [dbo].[tblVideos]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_get_file_details]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_file_details] 
	@file_id INT
AS
BEGIN
/****** Script for SelectTopNRows command from SSMS  ******/
	SELECT [file_id], [file_name], [file_ext], [file_base6]
	FROM [dbo].[tbl_file]
	WHERE [file_id] = @file_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_get_file_Docdetails]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_file_Docdetails] 
	@file_id INT
AS
BEGIN
/****** Script for SelectTopNRows command from SSMS  ******/
	SELECT [file_id]
		  ,[file_name]
		  ,[file_ext]
		  ,[file_base6]
	FROM [dbo].[tbh_Documents]
	WHERE [tbh_Documents].[file_id] = @file_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_get_Video_details]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_Video_details] 
	@Id INT
AS
BEGIN
/****** Script for SelectTopNRows command from SSMS  ******/
	SELECT [Id], [Name], [ContentType], [Data]
	FROM [dbo].[tblVideos]
	WHERE [Id] = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Docfile]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_Docfile]
	@file_name NVARCHAR(MAX),
	@file_ext NVARCHAR(MAX),
	@file_base64 NVARCHAR(MAX)
AS
BEGIN
/****** Script for SelectTopNRows command from SSMS  ******/
	INSERT INTO [dbo].[tbh_Documents]
           ([file_name]
           ,[file_ext]
           ,[file_base6])
     VALUES
           (@file_name
           ,@file_ext
           ,@file_base64)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_file]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_file]
	@file_name NVARCHAR(MAX),
	@file_ext NVARCHAR(MAX),
	@file_base64 NVARCHAR(MAX)
AS
BEGIN
/****** Script for SelectTopNRows command from SSMS  ******/
	INSERT INTO [dbo].[tbl_file]
           ([file_name]
           ,[file_ext]
           ,[file_base6])
     VALUES
           (@file_name
           ,@file_ext
           ,@file_base64)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Videofile]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_Videofile]
	@Name VARCHAR (50),
	@ContentType NVARCHAR (200),
	@Data VARBINARY (MAX), 
	@FileSize int,  
     @FilePath nvarchar(100), 
	 @VideoTitle  NVARCHAR (MAX)
AS
BEGIN
/****** Script for SelectTopNRows command from SSMS  ******/
	INSERT INTO [dbo].[tblVideos]
           ([Name]
           ,[ContentType]
           ,[Data]
		    ,[FileSize]
		   ,[FilePath]
		   ,[VideoTitle])
     VALUES
           (@Name
           ,@ContentType
           ,@Data
		    ,@FileSize
			 ,@FilePath
			  ,@VideoTitle)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UsersGetUserProfileData]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_UsersGetUserProfileData]
	@Id INT
	
AS
  BEGIN
	SELECT  [FirstName] [LastName],  [Email]
	   FROM [dbo].[UserDtoes]

	     WHERE [Id] = @Id


END
GO
/****** Object:  StoredProcedure [EssienUser].[DeleteStudents]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [EssienUser].[DeleteStudents]
( 
 @Id integer 
) 
as  
Begin 
 Delete Students where Id=@Id; 
End
GO
/****** Object:  StoredProcedure [EssienUser].[getFaq]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [EssienUser].[getFaq]  
As   
Begin  
   Select * from tbh_Faq 
End
GO
/****** Object:  StoredProcedure [EssienUser].[getStudents]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [EssienUser].[getStudents]  
As   
Begin  
   Select * from Students Where isActive=1  
End
GO
/****** Object:  StoredProcedure [EssienUser].[InsertUpdateStudents]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Insert and Update Employee
CREATE Procedure [EssienUser].[InsertUpdateStudents]
( 
@Id integer, 
@firstName NVARCHAR (MAX),
@lastName NVARCHAR (MAX),
@feesPaid integer, 
@gender NVARCHAR (MAX),
@emailId  NVARCHAR (MAX), 
@telephoneNumber  NVARCHAR (MAX), 
@dateOfBirth      DATE,           
@isActive    BIT,        
@creationDate     DATETIME,      
@lastModifiedDate DATETIME,   
@Action varchar(10)  
 ) 
As 
Begin 
if @Action='Insert' 
Begin 
 Insert into Students(firstName,lastName,feesPaid,gender,emailId,telephoneNumber,dateOfBirth,isActive,creationDate,lastModifiedDate) values(@firstName,@lastName,@feesPaid,@gender,@emailId,@telephoneNumber,@dateOfBirth,@isActive,@creationDate,@lastModifiedDate);
End 
if @Action='Update' 
Begin 
 Update Students set firstName=@firstName,lastName=@lastName,feesPaid=@feesPaid,gender=@gender,emailId=@emailId,telephoneNumber=@telephoneNumber,dateOfBirth=@dateOfBirth,isActive=@isActive,creationDate=@creationDate,lastModifiedDate=@lastModifiedDate where Id=@Id; 
End   
End
GO
/****** Object:  StoredProcedure [EssienUser].[usp_RolesGetRolesByRoleId]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [EssienUser].[usp_RolesGetRolesByRoleId]
(
	@RoleId		INT
)
AS
	BEGIN

		-- If role is Administrator then show all roles
		if (@RoleId = 1)
			BEGIN
				
				SELECT	[RoleName]
				FROM	[dbo].[webpages_Roles]
			END
		ELSE
			BEGIN
				
				SELECT	[RoleName]
				FROM	[dbo].[webpages_Roles]
				WHERE	[RoleId] = 3

			END

	END
GO
/****** Object:  StoredProcedure [EssienUser].[usp_UsersGetAllUsers]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [EssienUser].[usp_UsersGetAllUsers]
AS
	BEGIN

		SELECT [UserId]
			  ,[DisplayName]
			  ,[DisplayName]
			  ,[Email]
		  FROM [dbo].[UserDtoes]

	END
GO
/****** Object:  StoredProcedure [EssienUser].[usp_UsersGetUserProfileData]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [EssienUser].[usp_UsersGetUserProfileData]
(
	@UserId		INT
)
AS

	BEGIN

		SELECT	[DisplayName], [Email], [Address]
		FROM	[dbo].[UserDtoes]
		WHERE	[UserId] = @UserId

	END
GO
/****** Object:  StoredProcedure [EssienUser].[usp_UsersUpdateUserProfile]    Script Date: 9/27/2022 8:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [EssienUser].[usp_UsersUpdateUserProfile]
(
	@UserId		INT
	,@DisplayName	NVARCHAR(250)
	,@Email		NVARCHAR(75)
	,@Address	NVARCHAR(1500)
)
AS

	BEGIN

		UPDATE [dbo].[UserDtoes]
			SET [DisplayName] = @DisplayName,
				[Email] = @Email,
				[Address] = @Address
		WHERE	[UserId] = @UserId

	END
GO
USE [master]
GO
ALTER DATABASE [angulardemo2] SET  READ_WRITE 
GO
