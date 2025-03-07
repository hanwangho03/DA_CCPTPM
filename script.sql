USE [BOOKINGTOUR]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24/02/2025 9:31:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Age] [nvarchar](max) NULL,
	[AvatarUrl] [nvarchar](max) NULL,
	[fullname] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[IdBlog] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[id] [nvarchar](450) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[Status] [nvarchar](50) NOT NULL,
	[ThumbnailUrl] [nvarchar](255) NULL,
	[ImageUrl] [nvarchar](255) NULL,
	[Tags] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBlog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOKING]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOKING](
	[ID_BOOKING] [bigint] NOT NULL,
	[CHECK_IN_DATE] [datetime] NULL,
	[CHECK_OUT_DATE] [datetime] NULL,
	[BOOKING_TIME] [datetime] NULL,
	[Id] [nvarchar](450) NOT NULL,
	[ID_HOTEL] [bigint] NOT NULL,
	[ID_TOUR] [bigint] NOT NULL,
	[ID_STATUS] [bigint] NOT NULL,
	[IdInvoice] [bigint] NULL,
	[InvoiceNavigationIdInvoice] [bigint] NULL,
 CONSTRAINT [pk_BOOKING] PRIMARY KEY CLUSTERED 
(
	[ID_BOOKING] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOKING_STATUS]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOKING_STATUS](
	[ID_STATUS] [bigint] NOT NULL,
	[STATUS_NAME] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](100) NULL,
	[CREATED_AT] [datetime] NULL,
 CONSTRAINT [pk_BOOKING_STATUS] PRIMARY KEY CLUSTERED 
(
	[ID_STATUS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHAT]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHAT](
	[ID_CHAT] [bigint] NOT NULL,
	[MESSAGE] [nvarchar](100) NULL,
	[CREATED_AT] [datetime] NULL,
	[Id] [nvarchar](450) NOT NULL,
 CONSTRAINT [pk_CHAT] PRIMARY KEY CLUSTERED 
(
	[ID_CHAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatMessages]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatMessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SenderId] [nvarchar](max) NOT NULL,
	[ReceiverId] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Timestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ChatMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMMENT]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMENT](
	[ID_TOUR] [bigint] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
	[CONTENT] [nvarchar](100) NULL,
	[COMMENT_DATE] [datetime] NULL,
	[REPLY] [nvarchar](100) NULL,
	[IsHidden] [bit] NULL,
	[Rating] [int] NULL,
 CONSTRAINT [pk_COMMENT] PRIMARY KEY CLUSTERED 
(
	[ID_TOUR] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DESTINATION]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DESTINATION](
	[ID_DES] [bigint] NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](200) NULL,
	[ADDRESS] [nvarchar](255) NULL,
 CONSTRAINT [pk_DESTINATION] PRIMARY KEY CLUSTERED 
(
	[ID_DES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACILITY]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACILITY](
	[ID_FACILITY] [bigint] NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](100) NULL,
	[STATUS] [nvarchar](50) NULL,
	[ID_TYPE] [bigint] NOT NULL,
 CONSTRAINT [pk_FACILITY] PRIMARY KEY CLUSTERED 
(
	[ID_FACILITY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HostRegistrations]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostRegistrations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[RegistrationDate] [datetime2](7) NOT NULL,
	[IsApproved] [bit] NOT NULL,
 CONSTRAINT [PK_HostRegistrations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOTEL]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOTEL](
	[ID_HOTEL] [bigint] NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[LOCATION] [nvarchar](200) NULL,
	[DESCRIPTION] [nvarchar](1000) NULL,
	[PHONE_NUMBER] [varchar](11) NULL,
	[AVAILABLE] [varchar](10) NULL,
	[STAR_RATING] [bigint] NULL,
	[EMAIL] [varbinary](100) NULL,
	[IMAGE] [varchar](255) NULL,
 CONSTRAINT [pk_HOTEL] PRIMARY KEY CLUSTERED 
(
	[ID_HOTEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ID_TOUR] [bigint] NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVOICE]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE](
	[ID_INVOICE] [bigint] NOT NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[TOTAL_AMOUNT] [decimal](10, 2) NULL,
	[BILLING_DATE] [datetime] NULL,
	[CREATED_AT] [datetime] NULL,
 CONSTRAINT [pk_INVOICE] PRIMARY KEY CLUSTERED 
(
	[ID_INVOICE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAYMENT]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT](
	[ID_PAYMENT] [bigint] NOT NULL,
	[DATE] [datetime] NULL,
	[METHOD] [varchar](50) NULL,
	[AMOUNT] [decimal](10, 2) NULL,
	[STATUS] [varchar](50) NULL,
	[IS_REFUNDED] [varchar](1) NULL,
	[REFUND_AMOUNT] [decimal](10, 2) NULL,
	[REFUND_DATE] [datetime] NULL,
	[Id] [nvarchar](450) NOT NULL,
 CONSTRAINT [pk_PAYMENT] PRIMARY KEY CLUSTERED 
(
	[ID_PAYMENT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAYMENT_INVOICE]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_INVOICE](
	[ID_PAYMENT] [bigint] NOT NULL,
	[ID_INVOICE] [bigint] NOT NULL,
	[PAID_AMOUNT] [decimal](10, 2) NULL,
	[PAYMENT_DATE] [datetime] NULL,
	[STATUS] [varchar](50) NULL,
 CONSTRAINT [pk_PAYMENT_INVOICE] PRIMARY KEY CLUSTERED 
(
	[ID_PAYMENT] ASC,
	[ID_INVOICE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROMOTION]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROMOTION](
	[ID_PMT] [bigint] NOT NULL,
	[NAME] [nvarchar](100) NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[START_DATE] [datetime] NULL,
	[END_DATE] [datetime] NULL,
	[DISCOUNT_AMOUNT] [decimal](10, 2) NULL,
	[ELIGIBILITY_CRITERIA] [nvarchar](100) NULL,
	[STATUS] [varchar](50) NULL,
	[ID_TOUR] [bigint] NOT NULL,
	[ID_HOTEL] [bigint] NOT NULL,
 CONSTRAINT [pk_PROMOTION] PRIMARY KEY CLUSTERED 
(
	[ID_PMT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROMOTION_USER]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROMOTION_USER](
	[ID_PMT] [bigint] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
 CONSTRAINT [pk_PROMOTION_USER] PRIMARY KEY CLUSTERED 
(
	[ID_PMT] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REPORT]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPORT](
	[ID_REPORT] [bigint] NOT NULL,
	[RATING] [nvarchar](100) NULL,
	[CREATED_AT] [datetime] NULL,
	[Id] [nvarchar](450) NOT NULL,
	[ID_TOUR] [bigint] NOT NULL,
 CONSTRAINT [pk_REPORT] PRIMARY KEY CLUSTERED 
(
	[ID_REPORT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROOM]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROOM](
	[ID_ROOM] [bigint] NOT NULL,
	[ROOM_NUMBER] [varchar](10) NULL,
	[STATUS] [varchar](50) NULL,
	[PRICE] [decimal](10, 2) NULL,
	[ID_HOTEL] [bigint] NOT NULL,
	[ID_TYPE] [bigint] NOT NULL,
 CONSTRAINT [pk_ROOM] PRIMARY KEY CLUSTERED 
(
	[ID_ROOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROOM_DETAIL]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROOM_DETAIL](
	[ID_ROOM] [bigint] NOT NULL,
	[ID_FACILITY] [bigint] NOT NULL,
	[AVAILABLE] [varchar](10) NULL,
	[QUANLITY] [bigint] NULL,
	[CONDITION] [nvarchar](50) NULL,
 CONSTRAINT [pk_ROOM_DETAIL] PRIMARY KEY CLUSTERED 
(
	[ID_ROOM] ASC,
	[ID_FACILITY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SERVICE]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICE](
	[ID_SERVICE] [bigint] NOT NULL,
	[NAME] [nvarchar](100) NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[PRICE] [decimal](10, 2) NULL,
	[AVAILABLE] [varchar](50) NULL,
	[CREATED_AT] [datetime] NULL,
	[ID_TOUR] [bigint] NOT NULL,
	[ID_HOTEL] [bigint] NOT NULL,
	[ID_TYPE] [bigint] NOT NULL,
 CONSTRAINT [pk_SERVICE] PRIMARY KEY CLUSTERED 
(
	[ID_SERVICE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TOUR]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOUR](
	[ID_TOUR] [bigint] NOT NULL,
	[NAME] [nvarchar](255) NULL,
	[DESCRIPTION] [nvarchar](1000) NULL,
	[IMAGE] [varchar](255) NULL,
	[START_DATE] [datetime] NULL,
	[END_DATE] [datetime] NULL,
	[MAX_QUANTITY] [bigint] NULL,
	[PRICE] [decimal](10, 2) NULL,
	[IS_DELETE] [varchar](1) NULL,
	[ID_TYPE] [bigint] NOT NULL,
	[ID_TRANS] [bigint] NOT NULL,
	[ID_HOTEL] [bigint] NOT NULL,
	[ApprovalStatus] [nvarchar](50) NULL,
	[IdUser] [nvarchar](max) NULL,
	[IdUserNavigationId] [nvarchar](450) NULL,
 CONSTRAINT [pk_TOUR] PRIMARY KEY CLUSTERED 
(
	[ID_TOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TOUR_DETAILS]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOUR_DETAILS](
	[ID_TOUR] [bigint] NOT NULL,
	[ID_DES] [bigint] NOT NULL,
	[ITINERARY] [nvarchar](2000) NULL,
 CONSTRAINT [pk_TOUR_DETAILS] PRIMARY KEY CLUSTERED 
(
	[ID_TOUR] ASC,
	[ID_DES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANSPORTATION]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSPORTATION](
	[ID_TRANS] [bigint] NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[TYPE] [varchar](50) NULL,
	[SEAT_AVAILABILITY] [bigint] NULL,
 CONSTRAINT [pk_TRANSPORTATION] PRIMARY KEY CLUSTERED 
(
	[ID_TRANS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TYPE_OF_FACILITY]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TYPE_OF_FACILITY](
	[ID_TYPE] [bigint] NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](100) NULL,
 CONSTRAINT [pk_TYPE_OF_FACILITY] PRIMARY KEY CLUSTERED 
(
	[ID_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TYPE_OF_ROOM]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TYPE_OF_ROOM](
	[ID_TYPE] [bigint] NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](100) NULL,
 CONSTRAINT [pk_TYPE_OF_ROOM] PRIMARY KEY CLUSTERED 
(
	[ID_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TYPE_OF_SERVICE]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TYPE_OF_SERVICE](
	[ID_TYPE] [bigint] NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](100) NULL,
 CONSTRAINT [pk_TYPE_OF_SERVICE] PRIMARY KEY CLUSTERED 
(
	[ID_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TYPE_OF_TOUR]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TYPE_OF_TOUR](
	[ID_TYPE] [bigint] NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
 CONSTRAINT [pk_TYPE_OF_TOUR] PRIMARY KEY CLUSTERED 
(
	[ID_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS_FAVORITE_TOUR]    Script Date: 24/02/2025 9:31:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS_FAVORITE_TOUR](
	[Id] [nvarchar](450) NOT NULL,
	[ID_TOUR] [bigint] NOT NULL,
	[CREATED_AT] [datetime] NULL,
 CONSTRAINT [pk_USERS_FAVORITE_TOUR] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[ID_TOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241025090228_InitialMigration', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241026060707_UpdateUserSchema', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241026072856_AddFullNameToApplicationUser', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241026073622_SyncWithSqlChanges', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241105144345_tourvsuserr', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241105162611_hostregistration', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241108063202_idinvoice', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241112160156_chatmess', N'8.0.10')
GO
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] ON 

INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (2, N'1', N'can_manage_users', N'true')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (3, N'2', N'can_edit_posts', N'false')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (4, N'3', N'can_delete_posts', N'false')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (5, N'1', N'can_view_reports', N'true')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (6, N'2', N'can_publish_posts', N'true')
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'ADMIN', N'ADMIN', N'E8CAF85B-5303-4417-A56F-5A783FF5FA7F')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'USER', N'USER', N'B5C76C49-4A9C-4933-A2E1-0C939ADF6406')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3', N'HOST', N'HOST', N'C4178CA9-BA42-48AF-BD23-387EA0B4D6DB')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3, N'A7A7F0CA-9F57-4CED-B9AA-6E1792C7F330', N'role', N'host')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Facebook', N'key5', N'Facebook Account', N'A7A7F0CA-9F57-4CED-B9AA-6E1792C7F330')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'20c7a721-0d38-4917-837d-25a41a4f39ae', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'A7A7F0CA-9F57-4CED-B9AA-6E1792C7F330', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'acca0e75-7ccd-4f27-bf4c-ca2260a5a039', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd87859e0-b087-4351-84c9-467ffc8b2622', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ee2aad92-5ec1-413e-953e-fbead1cf1d1c', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f737f709-152b-4c0a-8143-e61613e84f70', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'025e62d8-8412-4cbb-a642-52a5a513145b', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'145a8d7e-ae1f-4268-8e37-6fe8dad37feb', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'41f9f638-f87e-4878-a87d-5772144b9090', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6d08ecd5-f643-4904-84fb-1f19095a4c7d', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'A7A7F0CA-9F57-4CED-B9AA-6E1792C7F330', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a966be3a-2569-45e8-97ae-811049be53d3', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c77bad24-3a12-451b-a64d-63e05c412ca3', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'25586438-758f-47f2-9bc9-783eeb1c0e37', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5dbd1a05-2e87-4b33-9dcd-e742b4b9b8d8', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'84a10f06-398b-49f1-9d1c-61933318dc07', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9ee13761-cc61-46d1-97c6-0bb93d1bf5c5', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c0814757-763d-4088-8ba8-796327dc4dff', N'3')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'025e62d8-8412-4cbb-a642-52a5a513145b', N'hoangtram@gmail.com', N'HOANGTRAM@GMAIL.COM', N'hoangtram@gmail.com', N'HOANGTRAM@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEM4zjEbTnOtustqQNXQy09z2CVUkCkX3oeYHmPBKhHaDkR940rxnP96Hhgixgfr7fg==', N'NKKS4VIRUC3QSIUUKVHZKOCT46N64OKF', N'5f2b1ead-1a21-4664-b787-bab1ac233c27', N'0378060941', 0, 0, NULL, 0, 0, N'Bến Tre', N'21', N'/images/09fc94ff-59ce-4768-9ead-a89eb8a31cfb.jpg', N'Hoàng Trâm')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'145a8d7e-ae1f-4268-8e37-6fe8dad37feb', N'thanhthoai@gmail.com', N'THANHTHOAI@GMAIL.COM', N'thanhthoai@gmail.com', N'THANHTHOAI@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAECmGDMLgOKw78Hio0FFyvicdNeVIJB+BLXiTycQsgY2gD5llT4Txo3YbD59yKwfIxw==', N'HRLCFK7SMEIWJHQK4MRG53LBKLXXKM4Y', N'a43b5298-4f00-47aa-b9a3-c330997751ad', N'0378060941', 0, 0, NULL, 0, 0, N'Chợ châu thới', NULL, N'/images/b4d0d90a-4748-46cf-ad03-edd3ed8c80a4.jpg', N'Dương Thành Thoại')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'20c7a721-0d38-4917-837d-25a41a4f39ae', N'Maily@gmail.com', NULL, N'maily@gmail.com', NULL, 0, N'AQAAAAIAAYagAAAAEKxBASAybvSTKIPVavdh2Qt/8CFb+bI/qxk8pFTPzgXUmEBrmKOpqmTOzQ65WC/0sQ==', N'NVAGQIKVRANKQR2AD5YILTPV7HGRD6YK', N'ec7603ce-4733-4713-99e3-c3cfa548119b', N'0123456789', 0, 0, NULL, 0, 0, N'Linh Trung', N'23', NULL, N'Nguyễn Thị Mai Ly')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'25586438-758f-47f2-9bc9-783eeb1c0e37', N'annhien@gmail.com', N'ANNHIEN@GMAIL.COM', N'annhien@gmail.com', N'ANNHIEN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEDY3mZB0WNCMtW9+7BIkKQL33vcC2nJXNirgPNj+bOakccP4js9qLBzc99xunlUeSw==', N'BPYWCJ2ZZBHZLMFLD5EAH6A7G6DRUL3L', N'8b43e833-7149-4ed0-bffd-332dcf482781', N'0378060941', 0, 0, NULL, 1, 0, N'Chợ châu thới', NULL, N'/images/0b861d3b-99d4-4294-84df-a4de35c42d65.jpg', N'Trần An Nhiên')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'41f9f638-f87e-4878-a87d-5772144b9090', N'Nhantran@gmail.com', N'NHANTRAN@GMAIL.COM', N'Nhantran@gmail.com', N'NHANTRAN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAENCPdPdhQhyBJj8OaXGMIuDCKvYBHjMnD/7s6XcJp+lCdyNKbNESCEJKw6TcIIhrlQ==', N'VRYTLBKNYP5DDKXHIGJB5A5GYLQKUROI', N'cbf59d9d-6d69-452a-b53f-a2f9c76e87ca', N'0378060941', 0, 0, NULL, 0, 0, N'Chợ châu thới', NULL, N'/images/2f062aa9-007f-434c-a6fd-4e9eca40a5ed.jpg', N'Trần thành Nhân')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'5dbd1a05-2e87-4b33-9dcd-e742b4b9b8d8', N'nguyenthimaily1718@gmail.com', N'NGUYENTHIMAILY1718@GMAIL.COM', N'nguyenthimaily1718@gmail.com', N'NGUYENTHIMAILY1718@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEHnIbymWWswZtamMJ2Z/8ky0YivoMKCNLlO+sOhkbXDojAITMgFZeLbCN37lsEGr4A==', N'QLAKZKFTGFQN2CHQCWHLWSMUSVBPVPJW', N'30c4b920-cb60-488a-bbea-10a355359e03', N'0378060941', 0, 0, NULL, 0, 0, N'Chợ châu thới', N'212', NULL, N'Mai Ly')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'tranthebaobt8@gmail.com', N'TRANTHEBAOBT8@GMAIL.COM', N'tranthebaobt8@gmail.com', N'TRANTHEBAOBT8@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOr0rrmn3TyDQ3CBFoYzQTSd4nwTEUkNP3MaLxMIN+8nRKu3nhj4MUfWO4cZ+J/lSA==', N'R3I4F4JOWQAUYNLPI4RJIRO6PGM5KBQT', N'631af414-bf33-45cd-8d06-2332de0cd227', N'0378060941', 1, 0, NULL, 0, 0, N'Chợ châu thới', NULL, N'/images/660084af-b6be-4e38-b3d7-9d1f49de83e0.jpg', N'Trần Thế Bảo')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'6d08ecd5-f643-4904-84fb-1f19095a4c7d', N'Khanh123@gmail.com', N'KHANH123@GMAIL.COM', N'Khanh123@gmail.com', N'KHANH123@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEAiiT8x8YvOWI5rzYGIUiRWs2OKLOuagDY36jjuoKZ7UPCAAZ2/IMwXcTg2MlmZbhw==', N'Y7SX7QJQVJYTHTP2JDG434CV4VO75EMZ', N'3c3f97ed-ee23-4059-afbd-3b628598d4a4', N'0378060941', 1, 0, NULL, 0, 0, N'Chợ châu thới', NULL, N'/images/6579cbdd-5d39-4dc1-a4f5-a56b7e3b1b09.jpg', N'trần tuấn khanh')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'7367898b-a952-411d-b2cd-a9a62f14b26d', N'ngoctho@gmail.com', N'NGOCTHO@GMAIL.COM', N'ngoctho@gmail.com', N'NGOCTHO@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEPNz8ROXG5pt8Wrt5obbvJvcfH4SELmFFvS1ZGm5Xa63+kOGW1j/SgbJ1+YiQ/8ocQ==', N'AY53YZ2AE4VZXQDJQOEMOYOOK5ZGK76D', N'3c894cf4-2f2b-4ca3-9d6b-747a35c33cc9', N'0123456789', 0, 0, NULL, 0, 0, N'Cu chi', NULL, N'/images/82a29d0c-df4e-421d-9f3f-c7f3d978c7cb.jpg', N'Ngoc Tho')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'84a10f06-398b-49f1-9d1c-61933318dc07', N'huubang@gmail.com', N'HUUBANG@GMAIL.COM', N'huubang@gmail.com', N'HUUBANG@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJv4RYC6asjkk5ZIQVczVekyB0C/5gm7XtzURhMHB4Me6wdsfR/AkipyLHYb29weQw==', N'B6MVHGZ6OFTGZFMY7X6YT5SUEIYGH4XR', N'25850ef6-9a2e-43f7-a2c4-154063de60c6', N'0378060941', 0, 0, NULL, 0, 0, N'Chợ châu thới', NULL, N'/images/4540c790-c966-4379-a839-5aa74969fbfe.jpg', N'Nguyễn Hữu Bằng')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'9ee13761-cc61-46d1-97c6-0bb93d1bf5c5', N'Khanh@gmail.com', N'KHANH@GMAIL.COM', N'Khanh@gmail.com', N'KHANH@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEGLLIJndLN0Qtu1Aj3widvbiNaO0pppKxIqlND2EJ4mpxezdjqDSP9+HOat8ruZ6Rg==', N'4D6BKGVNOUESTZ5KX7AYFPTGFCKVBCAK', N'bba6c784-0586-4744-9968-2167f33741a7', NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, N'Lê Tuấn Khanh')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'A7A7F0CA-9F57-4CED-B9AA-6E1792C7F330', N'Hoàng Văn Huy', N'0945678901', N'huy@example.com', N'HUY@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEJzK5/4D0wM5gFDFksZgZ2p4xBrFJiWDFDGHbKZl/nJNO1b7DqD1HH4vP+Y6B8o1X5g==', N'E2BB1890-6885-4477-BFD8-D02876BA1922', N'BB423C2D-2D7E-48A6-8DEC-49383B73B94E', N'0945678901', 1, 1, NULL, 0, 0, NULL, NULL, NULL, N'b')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'a966be3a-2569-45e8-97ae-811049be53d3', N'thanhnhan1@gmail.com', N'THANHNHAN1@GMAIL.COM', N'thanhnhan1@gmail.com', N'THANHNHAN1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELguw4zr84bERENJJLOLSNTUq/ZsYe9UntTl0tpjS5dpeH665mbqRADj2zueEDF9Ew==', N'TZVVPF7ZHRWRUQZB7TQZKY2ODY2J53KP', N'2d8616d5-6fec-4431-a23e-83e1dcda1eb0', N'0378060941', 0, 0, NULL, 1, 0, N'Chợ châu thới', NULL, N'/images/2ae2565a-f231-437d-8486-ff2de8a3f853.jpg', N'Thành Nhân')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'acca0e75-7ccd-4f27-bf4c-ca2260a5a039', N'baotranthe@gmail.com', NULL, N'baotranthe@gmail.com', NULL, 0, N'AQAAAAIAAYagAAAAEKKbHEfjwJ4gVoqNDGT31pnToYNVtlIt7sWeGR7GIZgcBLxdFYSg6hyGkbv3NmOlgw==', N'AQAAAAIAAYagAAAAEKKbHEfjwJ4gVoqNDGT31pnToYNVtlIt7sWeGR7GIZgcBLxdFYSg6hyGkbv3NmOlgw==', N'AQAAAAIAAYagAAAAEKKbHEfjwJ4gVoqNDGT31pnToYNVtlIt7sWeGR7GIZgcBLxdFYSg6hyGkbv3NmOlgw==', N'0387338874', 1, 0, NULL, 0, 0, N'Linh Trung', N'21', NULL, N'Trần Thế Bảo')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'c0814757-763d-4088-8ba8-796327dc4dff', N'nhan@gmail.com', N'NHAN@GMAIL.COM', N'nhan@gmail.com', N'NHAN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEH+nBpdnXqRdgO//7eWItr8HluWmxtn8uLMr6K3MX3+/TlaZfonY/dQPoYQhxQxmTw==', N'LKH624EIVA6YRL3PI5CGPLOED6B3OD2F', N'57496dfa-c295-4220-bc1b-e9aa48c3bc91', NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, N'd')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'c77bad24-3a12-451b-a64d-63e05c412ca3', N'baotraanthe@gmail.com', N'BAOTRAANTHE@GMAIL.COM', N'baotraanthe@gmail.com', N'BAOTRAANTHE@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEFKylxJbPtAukE6G+6+1cZroNZXLLmQKkGfHh1drsB7o0yPthbLnW8iPNosOd4TbKA==', N'L65QAYHH2WR6MOZC67ITCEBJPXKK3ZJ2', N'5f045faf-01b4-4b4b-911c-2e9d98e69b15', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, N'trần thế bảo')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'd87859e0-b087-4351-84c9-467ffc8b2622', N'baotran@gmail.com', NULL, N'baotran@gmail.com', NULL, 0, N'AQAAAAIAAYagAAAAEH4Be7ZdcKzBDpvZmNnjHbCPqDHc4LE93SGMQCxvbFYTy4AAUxpJWZPDJgk7zEJ43g==', N'A3NY42YIZA2ZRO7SUXCS3EH5QFNDWDUP', N'8f3908fe-5249-4ee4-b728-b894d5d09a21', N'0378060941', 1, 0, NULL, 0, 0, N'Chợ châu thới', N'22', NULL, N'Trần Thế Bảo')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'ee2aad92-5ec1-413e-953e-fbead1cf1d1c', N'bao1the@gmail.com', N'BAO1THE@GMAIL.COM', N'bao1the@gmail.com', N'BAO1THE@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEI68pG3LRLDR0A/dEz5mrU20XvjnfITP8Fgx9f3jYRLr4l7gwzVo5c59IHVH46TWdA==', N'2WPJFFZOU2JDYI44Y7CSFWKYTSMG6JFQ', N'bd934fc7-d572-4589-a061-f53bb9078f2a', N'0378060941', 0, 0, NULL, 0, 0, N'Chợ châu thới', N'21', NULL, N'thế bảo')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [AvatarUrl], [fullname]) VALUES (N'f737f709-152b-4c0a-8143-e61613e84f70', N'baothetran@gmail.com', NULL, N'baothetran@gmail.com', NULL, 0, N'AQAAAAIAAYagAAAAEAEyhYWQ3tV8nIZfBlp+BQEcirY4z5xG6jbm+Lz9qvM46vB/hCBJlSOixEu8Ttbl0g==', N'XBQB5G66ZLFS3MDFP6QWSK4A36BJLXFY', N'50036ee6-4cfb-48d9-b0bf-be652a447e16', N'0387338874', 1, 0, NULL, 0, 0, N'linh trung', N'21', NULL, N'Thế Bảo')
GO
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'A7A7F0CA-9F57-4CED-B9AA-6E1792C7F330', N'Facebook', N'AccessToken', N'value5')
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'A7A7F0CA-9F57-4CED-B9AA-6E1792C7F330', N'Google', N'RefreshToken', N'value4')
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([IdBlog], [Title], [Content], [id], [CreatedAt], [UpdatedAt], [Status], [ThumbnailUrl], [ImageUrl], [Tags]) VALUES (19, N'Chuyến đi rực rở', N'Khu nghỉ dưỡng thuộc địa cũ này là nơi nghỉ ngơi tránh xa cái nóng quanh năm của miền Nam Việt Nam. Thị trấn này có rất nhiều tòa nhà thời Pháp tuyệt đẹp và được bao quanh bởi những cây thông và trang trại trồng rau và hoa kỳ lạ. Thật đáng để đi chỉ để trốn cái', N'ee2aad92-5ec1-413e-953e-fbead1cf1d1c', CAST(N'2024-12-08T12:25:27.780' AS DateTime), NULL, N'Active', N'nhatho.jpg', N'chodalat - Copy.jpg', N'tag2')
INSERT [dbo].[Blog] ([IdBlog], [Title], [Content], [id], [CreatedAt], [UpdatedAt], [Status], [ThumbnailUrl], [ImageUrl], [Tags]) VALUES (20, N'Du lịch cần chuẩn bị những gì bạn đã biết chưa?', N'1. Lên kế hoạch: Chọn điểm đến, thời gian và các địa danh muốn tham quan.
2. Đặt dịch vụ: Mua vé máy bay, tàu, xe và đặt khách sạn hoặc dịch vụ trước.
3. Chuẩn bị giấy tờ: Mang theo CMND/CCCD/Passport, vé du lịch và bảo hiểm du lịch.
4. Đóng gói hành lý: Mang quần áo, dụng cụ cá nhân, đồ điện tử, tiền mặt, thẻ ngân hàng, và kính thuốc (nếu cần).
5. Xác định ngân sách: Tính toán chi phí cho chuyến đi và đổi tiền tệ nếu cần.
6. Kiểm tra sức khỏe: Khám sức khỏe và tiêm phòng (nếu cần).
7. Thông báo liên lạc: Cung cấp thông tin liên lạc cho gia đình và bạn bè.
8. Sắp xếp công việc: Hoàn tất công việc và chuẩn bị cho sự vắng mặt.
9.Tận hưởng chuyến đi', N'ee2aad92-5ec1-413e-953e-fbead1cf1d1c', CAST(N'2024-12-11T14:11:58.343' AS DateTime), NULL, N'Active', N'camtucau.jpg', N'hoxuanhuong.jpg', N'dalat')
INSERT [dbo].[Blog] ([IdBlog], [Title], [Content], [id], [CreatedAt], [UpdatedAt], [Status], [ThumbnailUrl], [ImageUrl], [Tags]) VALUES (21, N'Đà Lạt siêu vui', N'Thật tuyệt vời khi bạn có một chuyến đi Đà Lạt siêu vui! Đà Lạt luôn có sức hút riêng, với khí hậu mát mẻ, cảnh đẹp mê hoặc và rất nhiều địa điểm thú vị để khám phá. Những điểm đến nổi bật như: Hồ Xuân Hương: Đi dạo quanh hồ, đạp vịt, ngắm hoàng hôn là những trải nghiệm nhẹ nhàng, giúp bạn thư giãn tuyệt đối. Thung lũng Tình Yêu: Với cảnh sắc lãng mạn, những vườn hoa đủ màu sắc và khung cảnh thiên nhiên thơ mộng, đây là nơi lý tưởng cho cả bạn bè và gia đình. Làng Cù Lần: Khám phá một ngôi làng độc đáo giữa rừng thông với cảnh sắc hoang sơ và các hoạt động thú vị như đi xe Jeep, chèo thuyền...', N'ee2aad92-5ec1-413e-953e-fbead1cf1d1c', CAST(N'2024-12-11T14:13:02.920' AS DateTime), NULL, N'Active', N'caphe.jpg', N'khachsanlaudoi.png', N'dalat')
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (4, CAST(N'2024-11-21T17:20:35.020' AS DateTime), CAST(N'2024-11-22T17:20:35.020' AS DateTime), CAST(N'2024-11-21T17:20:35.020' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 4, 24, 1, 86, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (5, CAST(N'2024-11-21T17:20:43.287' AS DateTime), CAST(N'2024-11-22T17:20:43.287' AS DateTime), CAST(N'2024-11-21T17:20:43.287' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 5, 23, 4, 87, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (6, CAST(N'2024-11-21T17:20:59.767' AS DateTime), CAST(N'2024-11-22T17:20:59.767' AS DateTime), CAST(N'2024-11-21T17:20:59.767' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 1, 21, 4, 88, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (13, CAST(N'2024-11-29T19:42:07.840' AS DateTime), CAST(N'2024-11-30T19:42:07.840' AS DateTime), CAST(N'2024-11-29T19:42:07.847' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 1, 22, 4, 95, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (21, CAST(N'2024-12-08T11:52:10.050' AS DateTime), CAST(N'2024-12-09T11:52:10.050' AS DateTime), CAST(N'2024-12-08T11:52:10.050' AS DateTime), N'6d08ecd5-f643-4904-84fb-1f19095a4c7d', 1, 21, 3, 103, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (22, CAST(N'2024-12-09T23:49:31.520' AS DateTime), CAST(N'2024-12-10T23:49:31.520' AS DateTime), CAST(N'2024-12-09T23:49:31.520' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 1, 21, 3, 104, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (23, CAST(N'2024-12-11T14:18:27.543' AS DateTime), CAST(N'2024-12-12T14:18:27.543' AS DateTime), CAST(N'2024-12-11T14:18:27.543' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 3, 39, 1, 105, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (25, CAST(N'2024-12-12T18:53:57.103' AS DateTime), CAST(N'2024-12-13T18:53:57.103' AS DateTime), CAST(N'2024-12-12T18:53:57.103' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 3, 36, 4, 110, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (26, CAST(N'2024-12-13T16:38:50.497' AS DateTime), CAST(N'2024-12-14T16:38:50.497' AS DateTime), CAST(N'2024-12-13T16:38:50.497' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 3, 41, 4, 111, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (27, CAST(N'2024-12-13T16:43:04.023' AS DateTime), CAST(N'2024-12-14T16:43:04.023' AS DateTime), CAST(N'2024-12-13T16:43:04.023' AS DateTime), N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', 4, 34, 4, 112, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (28, CAST(N'2024-12-13T18:39:33.237' AS DateTime), CAST(N'2024-12-14T18:39:33.237' AS DateTime), CAST(N'2024-12-13T18:39:33.237' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 5, 40, 4, 113, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (29, CAST(N'2024-12-13T18:39:46.430' AS DateTime), CAST(N'2024-12-14T18:39:46.430' AS DateTime), CAST(N'2024-12-13T18:39:46.430' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 3, 41, 4, 114, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (30, CAST(N'2024-12-13T20:24:52.080' AS DateTime), CAST(N'2024-12-14T20:24:52.080' AS DateTime), CAST(N'2024-12-13T20:24:52.080' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 5, 40, 4, 115, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (31, CAST(N'2024-12-21T17:41:19.023' AS DateTime), CAST(N'2024-12-22T17:41:19.023' AS DateTime), CAST(N'2024-12-21T17:41:19.023' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 4, 34, 4, 116, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (32, CAST(N'2024-12-22T12:46:13.880' AS DateTime), CAST(N'2024-12-23T12:46:13.880' AS DateTime), CAST(N'2024-12-22T12:46:13.880' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 4, 34, 4, 117, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (33, CAST(N'2024-12-22T12:54:58.713' AS DateTime), CAST(N'2024-12-23T12:54:58.713' AS DateTime), CAST(N'2024-12-22T12:54:58.713' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 3, 41, 4, 118, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (34, CAST(N'2025-02-17T08:07:26.857' AS DateTime), CAST(N'2025-02-18T08:07:26.857' AS DateTime), CAST(N'2025-02-17T08:07:26.857' AS DateTime), N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', 2, 28, 4, 119, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (35, CAST(N'2025-02-17T08:11:29.687' AS DateTime), CAST(N'2025-02-18T08:11:29.687' AS DateTime), CAST(N'2025-02-17T08:11:29.687' AS DateTime), N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', 2, 28, 4, 120, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (36, CAST(N'2025-02-17T08:35:46.620' AS DateTime), CAST(N'2025-02-18T08:35:46.620' AS DateTime), CAST(N'2025-02-17T08:35:46.620' AS DateTime), N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', 2, 2, 4, 121, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (37, CAST(N'2025-02-17T09:04:54.433' AS DateTime), CAST(N'2025-02-18T09:04:54.433' AS DateTime), CAST(N'2025-02-17T09:04:54.433' AS DateTime), N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', 1, 29, 4, 122, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (38, CAST(N'2025-02-17T09:05:19.953' AS DateTime), CAST(N'2025-02-18T09:05:19.953' AS DateTime), CAST(N'2025-02-17T09:05:19.953' AS DateTime), N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', 1, 29, 4, 123, NULL)
INSERT [dbo].[BOOKING] ([ID_BOOKING], [CHECK_IN_DATE], [CHECK_OUT_DATE], [BOOKING_TIME], [Id], [ID_HOTEL], [ID_TOUR], [ID_STATUS], [IdInvoice], [InvoiceNavigationIdInvoice]) VALUES (39, CAST(N'2025-02-20T13:25:47.420' AS DateTime), CAST(N'2025-02-21T13:25:47.590' AS DateTime), CAST(N'2025-02-20T13:25:48.373' AS DateTime), N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', 5, 40, 4, 124, NULL)
GO
INSERT [dbo].[BOOKING_STATUS] ([ID_STATUS], [STATUS_NAME], [DESCRIPTION], [CREATED_AT]) VALUES (1, N'Confirmed', N'Đã xác nhận', CAST(N'2024-11-02T14:07:38.033' AS DateTime))
INSERT [dbo].[BOOKING_STATUS] ([ID_STATUS], [STATUS_NAME], [DESCRIPTION], [CREATED_AT]) VALUES (3, N'Xác Nhận', N'Đang chờ xác nhận', NULL)
INSERT [dbo].[BOOKING_STATUS] ([ID_STATUS], [STATUS_NAME], [DESCRIPTION], [CREATED_AT]) VALUES (4, N'Pending', N'Đang chờ xác nhận', CAST(N'2024-11-02T14:07:38.033' AS DateTime))
GO
INSERT [dbo].[CHAT] ([ID_CHAT], [MESSAGE], [CREATED_AT], [Id]) VALUES (4, N'Có buffet sáng không?', CAST(N'2024-03-30T00:00:00.000' AS DateTime), N'A7A7F0CA-9F57-4CED-B9AA-6E1792C7F330')
GO
SET IDENTITY_INSERT [dbo].[ChatMessages] ON 

INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (1, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'xin chào', CAST(N'2024-11-13T02:00:17.7303846' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (2, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'xin chào', CAST(N'2024-11-13T02:11:29.0759571' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (3, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'aaaaa', CAST(N'2024-11-13T02:57:44.5002060' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (4, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'aaaaa', CAST(N'2024-11-13T02:57:47.5127581' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (5, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'aaaaa', CAST(N'2024-11-13T02:57:47.5257397' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (6, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'aaaaa', CAST(N'2024-11-13T02:57:47.5348359' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (7, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'aaaaa', CAST(N'2024-11-13T02:57:47.6142411' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (8, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'aaaaa', CAST(N'2024-11-13T02:57:47.6505035' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (9, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'aaaaa', CAST(N'2024-11-13T02:57:47.6690558' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (10, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'jdasdlajdasjd', CAST(N'2024-11-13T02:59:47.1719373' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (11, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'', CAST(N'2024-11-13T02:59:47.6592837' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (12, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'alo', CAST(N'2024-11-13T02:59:58.1097706' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (13, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'123', CAST(N'2024-11-13T03:10:51.3156218' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (14, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'hello', CAST(N'2024-11-13T03:25:30.7789989' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (15, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'xin chào', CAST(N'2024-11-13T03:31:02.8040269' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (16, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'123', CAST(N'2024-11-13T03:46:08.5290981' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (17, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'xin chào bạn', CAST(N'2024-11-13T03:58:04.8365064' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (18, N'Admin', N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'xin chào bạn', CAST(N'2024-11-13T06:40:22.9031128' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (19, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'xin chào', CAST(N'2024-11-13T06:42:39.3215838' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (20, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'chào bạn . bạn cần gì', CAST(N'2024-11-13T06:43:02.6376375' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (21, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'bạn ơi . Bạn cần gì', CAST(N'2024-11-13T07:11:23.4115303' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (22, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'xin chào bạn', CAST(N'2024-11-15T02:20:13.7716149' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (23, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'bạn cho mình hỏi', CAST(N'2024-11-15T02:21:09.8797612' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (24, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'bạn cần hỏi gì', CAST(N'2024-11-15T02:21:49.1128123' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (25, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'asdsad', CAST(N'2024-11-15T02:22:04.6342170' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (26, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'dsds', CAST(N'2024-11-15T02:22:42.7697726' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (27, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'1234 NGÀY', CAST(N'2024-11-15T03:12:54.1773052' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (28, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'DS', CAST(N'2024-11-15T03:13:00.6731779' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (29, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'xin chào ạ', CAST(N'2024-11-20T15:54:09.1205277' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (30, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'chào ạ', CAST(N'2024-11-20T15:54:34.5888969' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (31, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'bạn làm gì đso', CAST(N'2024-11-20T15:59:56.0096084' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (32, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'dạ', CAST(N'2024-11-20T16:00:10.5432431' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (33, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-20T16:00:49.1013384' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (34, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-20T16:04:33.0990226' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (35, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'3', CAST(N'2024-11-20T17:15:48.9681047' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (36, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'1', CAST(N'2024-11-20T17:32:42.9853304' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (37, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-20T17:32:49.9815225' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (38, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'3', CAST(N'2024-11-20T17:34:39.9321713' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (39, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-20T17:34:45.2309280' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (40, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'3', CAST(N'2024-11-20T17:36:38.3642297' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (41, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-20T17:36:47.3180562' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (42, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-20T17:39:38.7581411' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (43, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-20T17:40:35.7801660' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (44, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-20T17:40:44.9347227' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (45, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'3', CAST(N'2024-11-20T17:42:57.6563805' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (46, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T02:39:05.0033737' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (47, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-21T02:49:39.4948820' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (48, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'1', CAST(N'2024-11-21T02:49:56.0547685' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (49, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T02:57:58.5657324' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (50, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-21T02:58:07.0859734' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (51, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'2', CAST(N'2024-11-21T02:59:52.8857052' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (52, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'3', CAST(N'2024-11-21T03:00:03.4557138' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (53, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T03:00:09.9581567' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (54, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-21T03:10:08.8033270' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (55, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T03:10:15.4155855' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (56, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'1', CAST(N'2024-11-21T03:32:07.0294427' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (57, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-21T03:32:16.6719981' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (58, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T03:37:21.7225927' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (59, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T03:43:21.6474491' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (60, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-21T03:43:30.0473099' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (61, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'3', CAST(N'2024-11-21T03:45:23.1097286' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (62, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T03:45:29.7828273' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (63, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T03:54:26.2598108' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (64, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'1', CAST(N'2024-11-21T03:55:19.4776485' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (65, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-21T03:55:27.0556132' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (66, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'2', CAST(N'2024-11-21T03:57:27.7172606' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (67, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'3', CAST(N'2024-11-21T03:57:41.2477991' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (68, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'1', CAST(N'2024-11-21T04:02:47.4859766' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (69, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-21T04:02:51.5346449' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (70, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'1', CAST(N'2024-11-21T04:04:13.8043286' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (71, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-21T04:04:20.9555347' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (72, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'3', CAST(N'2024-11-21T04:10:36.4633350' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (73, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T04:10:44.7201542' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (74, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-21T04:12:30.3974982' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (75, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'3', CAST(N'2024-11-21T04:15:21.0625259' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (76, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'4', CAST(N'2024-11-21T04:26:57.0690669' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (77, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'5', CAST(N'2024-11-21T04:27:05.0293719' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (78, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'6', CAST(N'2024-11-21T04:27:08.9236951' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (79, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T04:31:06.3534393' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (80, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T04:41:00.6264916' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (81, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'2', CAST(N'2024-11-21T04:41:08.9974067' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (82, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'3', CAST(N'2024-11-21T04:41:12.8080576' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (83, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'4', CAST(N'2024-11-21T04:42:09.7151595' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (84, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'5', CAST(N'2024-11-21T04:42:16.2154615' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (85, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'3', CAST(N'2024-11-21T04:45:38.2383481' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (86, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T04:45:43.2649804' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (87, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'1', CAST(N'2024-11-21T04:47:59.6770852' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (88, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-21T04:48:06.4321498' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (89, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'4', CAST(N'2024-11-21T04:51:18.1351708' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (90, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T04:51:23.6025773' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (91, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'2', CAST(N'2024-11-21T04:53:22.1734454' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (92, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'3', CAST(N'2024-11-21T04:53:25.7862284' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (93, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'1', CAST(N'2024-11-21T04:56:25.2227495' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (94, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-21T04:56:31.1360350' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (95, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'3', CAST(N'2024-11-21T04:56:48.5360907' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (96, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'1', CAST(N'2024-11-21T05:03:47.7493001' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (97, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-21T05:03:52.6477240' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (98, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'1', CAST(N'2024-11-21T05:05:57.4381714' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (99, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-21T05:06:03.2491314' AS DateTime2))
GO
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (100, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'2', CAST(N'2024-11-21T05:06:26.8876294' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (101, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'3', CAST(N'2024-11-21T05:07:00.7142331' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (102, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T05:13:34.7876317' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (103, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'2', CAST(N'2024-11-21T05:13:39.8692498' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (104, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'3', CAST(N'2024-11-21T05:15:23.3014515' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (105, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-21T05:15:29.0253722' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (106, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'2', CAST(N'2024-11-21T05:17:55.8142616' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (107, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'3', CAST(N'2024-11-21T05:18:04.4559425' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (108, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'xin chào bạn cần gì', CAST(N'2024-11-21T10:44:15.6310797' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (109, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'cho mình hỏi bên mình hiện tại có Tour nào đi đà lạt vào tháng 12 không ạ', CAST(N'2024-11-21T10:45:59.9571087' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (110, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Dạ thì hiện tại vào tháng 12 không còn Tour nào ở khu vực Đà Lạt nữa ạ', CAST(N'2024-11-21T10:47:07.5292833' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (111, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Anh chị có thể hỏi thêm các tour khác để em có thể hổ trợ nha!', CAST(N'2024-11-21T10:48:00.0381737' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (112, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'em cảm ơn', CAST(N'2024-11-21T10:48:05.9600910' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (113, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'mình cảm ơn ', CAST(N'2024-11-21T10:48:21.3994495' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (114, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'vậy mình sẽ xem xét và nhắn lại sau ', CAST(N'2024-11-21T10:48:39.2336346' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (115, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Dạ vậy em xin phép chào tạm biệt ạ.', CAST(N'2024-11-21T10:49:14.3159262' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (116, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'<3', CAST(N'2024-11-21T10:49:18.3430997' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (117, N'7367898b-a952-411d-b2cd-a9a62f14b26d', N'Admin', N'hello', CAST(N'2024-11-27T17:45:13.5727606' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (118, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'123', CAST(N'2024-11-27T17:53:50.6100137' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (119, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'xin chào', CAST(N'2024-11-27T18:01:23.3030866' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (120, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'123', CAST(N'2024-11-27T18:04:30.0304507' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (121, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'123', CAST(N'2024-11-27T18:04:36.6384481' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (122, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'12', CAST(N'2024-11-27T18:06:23.1006204' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (123, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-27T18:13:55.4295482' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (124, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'12', CAST(N'2024-11-27T18:14:05.4837006' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (125, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'3', CAST(N'2024-11-27T18:15:20.3966814' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (126, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-27T18:21:24.8735803' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (127, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'12', CAST(N'2024-11-27T18:26:41.1859747' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (128, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'123', CAST(N'2024-11-27T18:38:47.3102605' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (129, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'12', CAST(N'2024-11-27T18:39:25.5165002' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (130, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'1', CAST(N'2024-11-27T18:40:46.7267478' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (131, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-27T18:40:58.7184752' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (132, N'7367898b-a952-411d-b2cd-a9a62f14b26d', N'Admin', N'1', CAST(N'2024-11-28T05:44:00.9301224' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (133, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'3', CAST(N'2024-11-28T07:54:57.7366605' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (134, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'xin chao', CAST(N'2024-11-30T02:19:11.9443508' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (135, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'2', CAST(N'2024-11-30T02:19:22.7105426' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (136, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'tôi muốn đặt tour', CAST(N'2024-12-05T08:15:37.1806015' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (137, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'tôi chào bạn', CAST(N'2024-12-07T04:38:09.1092457' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (138, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'213', CAST(N'2024-12-07T04:44:14.8032243' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (139, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'12', CAST(N'2024-12-07T04:44:21.9264888' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (140, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'chào bạn', CAST(N'2024-12-07T04:44:43.4652332' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (141, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'123', CAST(N'2024-12-07T04:49:04.0015170' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (142, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'123', CAST(N'2024-12-07T04:49:42.7534426' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (143, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'123', CAST(N'2024-12-07T04:53:19.8319016' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (144, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'xin chào', CAST(N'2024-12-07T04:53:37.0742721' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (145, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'123', CAST(N'2024-12-07T04:55:28.7945332' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (146, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'xin chào', CAST(N'2024-12-07T04:55:44.8725284' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (147, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'123', CAST(N'2024-12-07T05:02:53.1667133' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (148, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'213', CAST(N'2024-12-07T05:02:58.5908701' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (149, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'12', CAST(N'2024-12-07T05:03:18.9458914' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (150, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'21', CAST(N'2024-12-07T05:03:21.7432294' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (151, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'12', CAST(N'2024-12-07T05:09:53.6193120' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (152, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'12', CAST(N'2024-12-07T05:09:58.1820362' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (153, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'h', CAST(N'2024-12-07T05:10:07.1132430' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (154, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'12', CAST(N'2024-12-07T05:14:13.8592009' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (155, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'12', CAST(N'2024-12-07T05:14:16.8392179' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (156, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'12', CAST(N'2024-12-07T05:14:58.3666698' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (157, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'12', CAST(N'2024-12-07T05:17:41.0040093' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (158, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'123', CAST(N'2024-12-07T05:18:49.8106789' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (159, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'12', CAST(N'2024-12-07T05:25:09.9528072' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (160, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'12', CAST(N'2024-12-07T05:25:18.4547289' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (161, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'13', CAST(N'2024-12-07T05:25:28.3296664' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (162, N'6d08ecd5-f643-4904-84fb-1f19095a4c7d', N'Admin', N'xin chào', CAST(N'2024-12-08T04:55:43.8318921' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (163, N'Admin', N'025e62d8-8412-4cbb-a642-52a5a513145b', N'xin chào bạn', CAST(N'2024-12-08T05:26:16.2497586' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (164, N'a966be3a-2569-45e8-97ae-811049be53d3', N'Admin', N'xin chào', CAST(N'2024-12-12T11:21:31.8086868' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (165, N'Admin', N'a966be3a-2569-45e8-97ae-811049be53d3', N'chào bạn ', CAST(N'2024-12-12T11:22:01.0964871' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (166, N'Admin', N'a966be3a-2569-45e8-97ae-811049be53d3', N'bạn cần gì', CAST(N'2024-12-12T11:22:05.1913919' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (167, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'em muốn hỏi', CAST(N'2024-12-12T11:50:26.8364167' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (168, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'mình muốn đặt tour như nào ạ', CAST(N'2024-12-12T11:55:34.3966149' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (169, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Admin', N'xin chao', CAST(N'2024-12-13T09:44:55.6370637' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (170, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'xin chào', CAST(N'2024-12-13T11:27:05.7582384' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (171, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'xin chao', CAST(N'2024-12-21T10:40:02.9528582' AS DateTime2))
INSERT [dbo].[ChatMessages] ([Id], [SenderId], [ReceiverId], [Message], [Timestamp]) VALUES (172, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Admin', N'xin chao', CAST(N'2024-12-22T05:48:16.8318439' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ChatMessages] OFF
GO
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (1, N'7367898b-a952-411d-b2cd-a9a62f14b26d', N'đẹp quá', CAST(N'2024-11-04T10:17:51.150' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (3, N'7367898b-a952-411d-b2cd-a9a62f14b26d', N'đẹp lắm', CAST(N'2024-11-02T14:07:38.033' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (4, N'7367898b-a952-411d-b2cd-a9a62f14b26d', N'một chuyến đi tuyệt vời', CAST(N'2024-11-02T14:09:30.230' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (5, N'7367898b-a952-411d-b2cd-a9a62f14b26d', N'xịn lắm', CAST(N'2024-11-02T14:08:12.377' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (5, N'A7A7F0CA-9F57-4CED-B9AA-6E1792C7F330', N'Tôi rất vui vì trải nghiệm.', CAST(N'2024-09-30T00:00:00.000' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (21, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'cũng hay', CAST(N'2024-11-15T03:19:44.570' AS DateTime), NULL, 1, 4)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (21, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'chuyến đi vui lắm', CAST(N'2024-12-06T21:47:41.190' AS DateTime), N'2', 0, 5)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (21, N'6d08ecd5-f643-4904-84fb-1f19095a4c7d', N'chuyến đi vui lắm', CAST(N'2024-12-08T11:51:36.837' AS DateTime), N'cảm ơn bạn', 0, 3)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (23, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'chuyến đi đẹp lắm', CAST(N'2024-11-14T22:51:42.840' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (26, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'rất vui vì được đi chuyesn đi này', CAST(N'2024-11-21T15:16:55.727' AS DateTime), NULL, 0, 4)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (27, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'tour vui vẻ', CAST(N'2024-12-05T16:09:14.153' AS DateTime), NULL, 0, 4)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (29, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'chuyến đi này rất vui', CAST(N'2024-11-15T09:52:26.453' AS DateTime), NULL, 0, 3)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (34, N'145a8d7e-ae1f-4268-8e37-6fe8dad37feb', N'Chuyến đi vui lắm', CAST(N'2024-12-12T18:11:59.747' AS DateTime), N'cam on', 0, 4)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (34, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'chuyen di vui lam', CAST(N'2024-12-13T16:42:37.870' AS DateTime), N'cam on', 0, 4)
INSERT [dbo].[COMMENT] ([ID_TOUR], [Id], [CONTENT], [COMMENT_DATE], [REPLY], [IsHidden], [Rating]) VALUES (36, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'tour đẹp lắm', CAST(N'2024-12-12T18:48:01.687' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (1, N'Địa điểm A', N'Mô tả địa điểm A', N'Đà Nẵng')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (2, N'Địa điểm B', N'Mô tả địa điểm B', N'Hà Nội')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (3, N'Địa điểm C', N'Mô tả địa điểm C', N'Đà Lạt')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (4, N'Địa điểm D', N'Mô tả địa điểm D', N'Sapa')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (5, N'Địa điểm E', N'Mô tả địa điểm E', N'Phan Thiết')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (6, N'Địa điểm F', N'Mô tả địa điểm F', N'Phú quốc')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (7, N'Địa điểm F', N'Mô tả địa điểm F', N'Quảng Ninh')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (8, N'Địa điểm F', N'Địa điểm F', N'Nha Trang')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (9, N'Địa điểm F', N'Mô tả địa điểm F', N'Cà Mau')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (10, N'Địa điểm F', N'Mô tả địa điểm F', N'Quảng Nam')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (11, N'Địa điểm F', N'Mô tả địa điểm F', N'Tây Ninh')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (12, N'Địa điểm F', N'Mô tả địa điểm F', N'Huế')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (13, N'Địa điểm F', N'Mô tả địa điểm F', N'Bến Tre')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (14, N'Địa điểm F', N'Mô tả địa điểm F', N'Ninh Bình')
INSERT [dbo].[DESTINATION] ([ID_DES], [NAME], [DESCRIPTION], [ADDRESS]) VALUES (15, N'Địa điểm F', N'Mô tả địa điểm F', NULL)
GO
INSERT [dbo].[FACILITY] ([ID_FACILITY], [NAME], [DESCRIPTION], [STATUS], [ID_TYPE]) VALUES (1, N'Hồ bơi', N'Hồ bơi ngoài trời', N'Available', 1)
INSERT [dbo].[FACILITY] ([ID_FACILITY], [NAME], [DESCRIPTION], [STATUS], [ID_TYPE]) VALUES (2, N'Phòng gym', N'Phòng tập gym hiện đại', N'Available', 2)
INSERT [dbo].[FACILITY] ([ID_FACILITY], [NAME], [DESCRIPTION], [STATUS], [ID_TYPE]) VALUES (3, N'Sân tennis', N'Sân tennis tiêu chuẩn', N'Under Maintenance', 3)
INSERT [dbo].[FACILITY] ([ID_FACILITY], [NAME], [DESCRIPTION], [STATUS], [ID_TYPE]) VALUES (4, N'Spa', N'Dịch vụ spa cao cấp', N'Available', 4)
GO
SET IDENTITY_INSERT [dbo].[HostRegistrations] ON 

INSERT [dbo].[HostRegistrations] ([Id], [UserId], [FullName], [Email], [RegistrationDate], [IsApproved]) VALUES (1, N'7367898b-a952-411d-b2cd-a9a62f14b26d', N'Nguyễn Thị Ngọc Tho', N'ngoctho@gmail.com', CAST(N'2024-11-01T22:41:53.0630000' AS DateTime2), 1)
INSERT [dbo].[HostRegistrations] ([Id], [UserId], [FullName], [Email], [RegistrationDate], [IsApproved]) VALUES (2, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Trần Thế Bảo', N'tranthebaobt8@gmail.com', CAST(N'2024-11-06T01:09:32.1013832' AS DateTime2), 1)
INSERT [dbo].[HostRegistrations] ([Id], [UserId], [FullName], [Email], [RegistrationDate], [IsApproved]) VALUES (3, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Trần Thế Bảo', N'tranthebaobt8@gmail.com', CAST(N'2024-11-08T13:02:02.3151800' AS DateTime2), 1)
INSERT [dbo].[HostRegistrations] ([Id], [UserId], [FullName], [Email], [RegistrationDate], [IsApproved]) VALUES (5, N'025e62d8-8412-4cbb-a642-52a5a513145b', N'Hoàn Trâm', N'hoantram@gmail.com', CAST(N'2024-12-05T16:07:14.4060766' AS DateTime2), 0)
INSERT [dbo].[HostRegistrations] ([Id], [UserId], [FullName], [Email], [RegistrationDate], [IsApproved]) VALUES (6, N'84a10f06-398b-49f1-9d1c-61933318dc07', N'Nguyễn Trần Hữu Bằng', N'huubang@gmail.com', CAST(N'2024-12-12T18:04:30.9942248' AS DateTime2), 1)
INSERT [dbo].[HostRegistrations] ([Id], [UserId], [FullName], [Email], [RegistrationDate], [IsApproved]) VALUES (7, N'84a10f06-398b-49f1-9d1c-61933318dc07', N'Nguyễn Trần Hữu Bằng', N'huubang@gmail.com', CAST(N'2024-12-12T18:09:21.3232610' AS DateTime2), 1)
INSERT [dbo].[HostRegistrations] ([Id], [UserId], [FullName], [Email], [RegistrationDate], [IsApproved]) VALUES (8, N'25586438-758f-47f2-9bc9-783eeb1c0e37', N'An Nhiên', N'annhien@gmail.com', CAST(N'2024-12-12T18:44:26.8130748' AS DateTime2), 1)
INSERT [dbo].[HostRegistrations] ([Id], [UserId], [FullName], [Email], [RegistrationDate], [IsApproved]) VALUES (9, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', N'Trần Thế Bảo', N'tranthebaobt8@gmail.com', CAST(N'2024-12-13T16:44:25.1801692' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[HostRegistrations] OFF
GO
INSERT [dbo].[HOTEL] ([ID_HOTEL], [NAME], [LOCATION], [DESCRIPTION], [PHONE_NUMBER], [AVAILABLE], [STAR_RATING], [EMAIL], [IMAGE]) VALUES (1, N'Khách sạn Ánh Dương', N'Đà Nẵng', N'Mô tả khách sạn A', N'0901234567', N'Yes', 5, 0x686F74656C616E6864756F6E6740676D61696C2E636F6D, N'hotelA.jpg')
INSERT [dbo].[HOTEL] ([ID_HOTEL], [NAME], [LOCATION], [DESCRIPTION], [PHONE_NUMBER], [AVAILABLE], [STAR_RATING], [EMAIL], [IMAGE]) VALUES (2, N'Khách sạn Bảo Trân', N'Hà Nội', N'Mô tả khách sạn B', N'0912345678', N'No', 4, 0x686F74656C62616F7472616E40676D61696C2E636F6D, N'hotelB.jpg')
INSERT [dbo].[HOTEL] ([ID_HOTEL], [NAME], [LOCATION], [DESCRIPTION], [PHONE_NUMBER], [AVAILABLE], [STAR_RATING], [EMAIL], [IMAGE]) VALUES (3, N'Khách sạn Ocean', N'Đà Lạt', N'Mô tả khách sạn C', N'0923456789', N'Yes', 3, 0x686F74656C4F6365616E40676D61696C2E636F6D, N'hotelC.jpg')
INSERT [dbo].[HOTEL] ([ID_HOTEL], [NAME], [LOCATION], [DESCRIPTION], [PHONE_NUMBER], [AVAILABLE], [STAR_RATING], [EMAIL], [IMAGE]) VALUES (4, N'Khách sạn Duli', N'Sapa', N'Mô tả khách sạn D', N'0934567890', N'No', 2, 0x686F74656C64756C6940676D61696C2E636F6D, N'hotelD.jpg')
INSERT [dbo].[HOTEL] ([ID_HOTEL], [NAME], [LOCATION], [DESCRIPTION], [PHONE_NUMBER], [AVAILABLE], [STAR_RATING], [EMAIL], [IMAGE]) VALUES (5, N'Khách sạn Egg', N'Phan Thiết', N'Mô tả khách sạn E', N'0934564832', N'Yes', 2, 0x686F74656C65676740676D61696C2E636F6D, N'hotelE.jpg')
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (1, 2, N'java.jpg', CAST(N'2024-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (2, 17, N'z5985026039123_72cca6810e066d818270412501843e24.jpg', CAST(N'2024-11-05T13:17:53.603' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (3, 17, N'z5949189523014_c94c0b3917f4ad25fe33fbec13c9ff77.jpg', CAST(N'2024-11-05T13:17:53.667' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (4, 17, N'z5985017747168_2c8a5a9583711a127a32aaa3220963fb.jpg', CAST(N'2024-11-05T13:17:53.670' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (5, 18, N'z5985026039123_72cca6810e066d818270412501843e24.jpg', CAST(N'2024-11-05T13:21:34.207' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (6, 18, N'z5949189523014_c94c0b3917f4ad25fe33fbec13c9ff77.jpg', CAST(N'2024-11-05T13:21:34.210' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (7, 18, N'z5985017747168_2c8a5a9583711a127a32aaa3220963fb.jpg', CAST(N'2024-11-05T13:21:34.210' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (8, 19, N'z5949189523014_c94c0b3917f4ad25fe33fbec13c9ff77.jpg', CAST(N'2024-11-05T22:14:20.287' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (19, 20, N'th (1).jpg', CAST(N'2024-11-07T14:59:44.973' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (20, 20, N'tl1.jpg', CAST(N'2024-11-07T14:59:45.027' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (21, 20, N'thai_lan.jpg', CAST(N'2024-11-07T14:59:45.033' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (22, 21, N'th (2).jpg', CAST(N'2024-11-07T15:01:08.860' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (23, 21, N'th (4).jpg', CAST(N'2024-11-07T15:01:08.863' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (24, 21, N'th (3).jpg', CAST(N'2024-11-07T15:01:08.867' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (25, 22, N'th (5).jpg', CAST(N'2024-11-07T15:02:15.727' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (26, 22, N'th (7).jpg', CAST(N'2024-11-07T15:02:15.727' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (27, 22, N'th (6).jpg', CAST(N'2024-11-07T15:02:15.730' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (38, 24, N'popular3.jpg', CAST(N'2024-11-14T03:20:46.283' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (39, 24, N'popular2.jpg', CAST(N'2024-11-14T03:20:46.333' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (40, 24, N'popular1.jpg', CAST(N'2024-11-14T03:20:46.337' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (41, 24, N'blog3.jpg', CAST(N'2024-11-14T03:20:46.340' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (42, 24, N'blog2.jpg', CAST(N'2024-11-14T03:20:46.340' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (43, 24, N'blog1.jpg', CAST(N'2024-11-14T03:20:46.340' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (44, 24, N'th (8).jpg', CAST(N'2024-11-14T03:20:46.343' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (45, 24, N'th (7).jpg', CAST(N'2024-11-14T03:20:46.343' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (46, 24, N'th (6).jpg', CAST(N'2024-11-14T03:20:46.343' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (47, 24, N'th (5).jpg', CAST(N'2024-11-14T03:20:46.347' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (48, 25, N'th (17).jpg', CAST(N'2024-11-15T03:27:30.010' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (49, 25, N'th (16).jpg', CAST(N'2024-11-15T03:27:30.053' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (50, 25, N'th (15).jpg', CAST(N'2024-11-15T03:27:30.057' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (51, 25, N'th (14).jpg', CAST(N'2024-11-15T03:27:30.057' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (52, 25, N'th (13).jpg', CAST(N'2024-11-15T03:27:30.060' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (53, 25, N'th (12).jpg', CAST(N'2024-11-15T03:27:30.060' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (54, 25, N'th (11).jpg', CAST(N'2024-11-15T03:27:30.060' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (55, 25, N'th (10).jpg', CAST(N'2024-11-15T03:27:30.063' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (56, 25, N'th (5).jpg', CAST(N'2024-11-15T03:27:30.063' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (57, 25, N'th (1).jpg', CAST(N'2024-11-15T03:27:30.063' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (58, 26, N'th (28).jpg', CAST(N'2024-11-15T03:29:37.607' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (59, 26, N'th (27).jpg', CAST(N'2024-11-15T03:29:37.610' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (60, 26, N'th (26).jpg', CAST(N'2024-11-15T03:29:37.610' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (61, 26, N'th (25).jpg', CAST(N'2024-11-15T03:29:37.613' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (62, 26, N'th (24).jpg', CAST(N'2024-11-15T03:29:37.613' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (63, 26, N'th (23).jpg', CAST(N'2024-11-15T03:29:37.617' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (64, 26, N'th (22).jpg', CAST(N'2024-11-15T03:29:37.617' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (65, 26, N'th (21).jpg', CAST(N'2024-11-15T03:29:37.623' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (66, 26, N'th (20).jpg', CAST(N'2024-11-15T03:29:37.630' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (67, 26, N'th (19).jpg', CAST(N'2024-11-15T03:29:37.633' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (68, 27, N'th (39).jpg', CAST(N'2024-11-15T03:32:01.753' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (69, 27, N'th (38).jpg', CAST(N'2024-11-15T03:32:01.757' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (70, 27, N'th (37).jpg', CAST(N'2024-11-15T03:32:01.757' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (71, 27, N'th (36).jpg', CAST(N'2024-11-15T03:32:01.760' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (72, 27, N'th (35).jpg', CAST(N'2024-11-15T03:32:01.760' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (73, 27, N'th (34).jpg', CAST(N'2024-11-15T03:32:01.763' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (74, 27, N'th (33).jpg', CAST(N'2024-11-15T03:32:01.763' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (75, 27, N'th (32).jpg', CAST(N'2024-11-15T03:32:01.767' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (76, 27, N'th (31).jpg', CAST(N'2024-11-15T03:32:01.767' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (77, 27, N'th (30).jpg', CAST(N'2024-11-15T03:32:01.773' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (78, 28, N'3a.jpg', CAST(N'2024-11-15T03:35:04.917' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (79, 28, N'3d.jpg', CAST(N'2024-11-15T03:35:04.923' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (80, 28, N'24.jpg', CAST(N'2024-11-15T03:35:04.927' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (81, 28, N'f1.jpg', CAST(N'2024-11-15T03:35:04.927' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (82, 28, N'f6.jpg', CAST(N'2024-11-15T03:35:04.930' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (83, 28, N'88.jpg', CAST(N'2024-11-15T03:35:04.933' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (84, 28, N'19.jpg', CAST(N'2024-11-15T03:35:04.937' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (85, 28, N'8e.jpg', CAST(N'2024-11-15T03:35:04.937' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (86, 28, N'30.jpg', CAST(N'2024-11-15T03:35:04.947' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (87, 28, N'17.jpg', CAST(N'2024-11-15T03:35:04.950' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (88, 29, N'9c.jpg', CAST(N'2024-11-15T03:37:17.893' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (89, 29, N'9b.jpg', CAST(N'2024-11-15T03:37:17.897' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (90, 29, N'9a.jpg', CAST(N'2024-11-15T03:37:17.897' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (91, 29, N'99.jpg', CAST(N'2024-11-15T03:37:17.900' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (92, 29, N'98.jpg', CAST(N'2024-11-15T03:37:17.903' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (93, 29, N'96.jpg', CAST(N'2024-11-15T03:37:17.907' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (94, 29, N'6d.jpg', CAST(N'2024-11-15T03:37:17.910' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (95, 29, N'6c.jpg', CAST(N'2024-11-15T03:37:17.913' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (96, 29, N'6a.jpg', CAST(N'2024-11-15T03:37:17.917' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (97, 29, N'69.jpg', CAST(N'2024-11-15T03:37:17.920' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (98, 30, N'9c.jpg', CAST(N'2024-11-21T16:18:19.070' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (99, 30, N'9a.jpg', CAST(N'2024-11-21T16:18:19.143' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (100, 30, N'98.jpg', CAST(N'2024-11-21T16:18:19.147' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (101, 30, N'6d.jpg', CAST(N'2024-11-21T16:18:19.150' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (102, 30, N'6a.jpg', CAST(N'2024-11-21T16:18:19.153' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (103, 30, N'19.jpg', CAST(N'2024-11-21T16:18:19.157' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (104, 30, N'30.jpg', CAST(N'2024-11-21T16:18:19.163' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (105, 30, N'3a.jpg', CAST(N'2024-11-21T16:18:19.163' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (106, 30, N'24.jpg', CAST(N'2024-11-21T16:18:19.167' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (107, 30, N'f6.jpg', CAST(N'2024-11-21T16:18:19.167' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (108, 30, N'th (47).jpg', CAST(N'2024-11-21T16:18:19.180' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (109, 30, N'th (45).jpg', CAST(N'2024-11-21T16:18:19.183' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (110, 30, N'th (43).jpg', CAST(N'2024-11-21T16:18:19.183' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (111, 30, N'hai-duong.jpg', CAST(N'2024-11-21T16:18:19.187' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (117, 31, N'langhoakieng.jpg', CAST(N'2024-12-08T11:48:35.970' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (118, 31, N'langmonguyendinhchieu.jpg', CAST(N'2024-12-08T11:48:36.023' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (119, 31, N'nhacohuynhphu.jpg', CAST(N'2024-12-08T11:48:36.030' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (120, 31, N'bienconbung.jpg', CAST(N'2024-12-08T11:48:36.033' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (121, 31, N'bienconbung2.jpg', CAST(N'2024-12-08T11:48:36.037' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (122, 31, N'conphung.jpg', CAST(N'2024-12-08T11:48:36.040' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (123, 31, N'dulichsinhthailangxanh.jpg', CAST(N'2024-12-08T11:48:36.047' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (124, 31, N'khudulichlanphuong.jpg', CAST(N'2024-12-08T11:48:36.047' AS DateTime))
GO
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (125, 31, N'khudulichlanphuong2.jpg', CAST(N'2024-12-08T11:48:36.050' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (126, 31, N'khuluuniemnguyenthidinh.jpg', CAST(N'2024-12-08T11:48:36.060' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (127, 32, N'khachsanlaudoi.png', CAST(N'2024-12-08T12:15:20.693' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (128, 32, N'khudat.jpg', CAST(N'2024-12-08T12:15:20.750' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (129, 32, N'langbiang.jpg', CAST(N'2024-12-08T12:15:20.757' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (130, 32, N'may.jpg', CAST(N'2024-12-08T12:15:20.767' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (131, 32, N'nhaga.jpg', CAST(N'2024-12-08T12:15:20.767' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (132, 32, N'nhatho.jpg', CAST(N'2024-12-08T12:15:20.770' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (133, 32, N'camtucau.jpg', CAST(N'2024-12-08T12:15:20.773' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (134, 32, N'caphe.jpg', CAST(N'2024-12-08T12:15:20.777' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (135, 32, N'chodalat - Copy.jpg', CAST(N'2024-12-08T12:15:20.780' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (136, 32, N'hamruou.jpg', CAST(N'2024-12-08T12:15:20.783' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (137, 32, N'hoxuanhuong.jpg', CAST(N'2024-12-08T12:15:20.787' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (138, 32, N'hoxuanhuong2.jpg', CAST(N'2024-12-08T12:15:20.793' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (139, 33, N'bienconbung.jpg', CAST(N'2024-12-11T13:32:16.753' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (140, 33, N'bienconbung2.jpg', CAST(N'2024-12-11T13:32:16.777' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (141, 33, N'conphung.jpg', CAST(N'2024-12-11T13:32:16.780' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (142, 33, N'dulichsinhthailangxanh.jpg', CAST(N'2024-12-11T13:32:16.787' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (143, 33, N'khudulichlanphuong.jpg', CAST(N'2024-12-11T13:32:16.790' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (144, 33, N'khudulichlanphuong2.jpg', CAST(N'2024-12-11T13:32:16.793' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (145, 33, N'khuluuniemnguyenthidinh.jpg', CAST(N'2024-12-11T13:32:16.800' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (146, 33, N'langhoakieng.jpg', CAST(N'2024-12-11T13:32:16.807' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (147, 33, N'langmonguyendinhchieu.jpg', CAST(N'2024-12-11T13:32:16.810' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (148, 33, N'nhacohuynhphu.jpg', CAST(N'2024-12-11T13:32:16.817' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (149, 34, N'captreo.jpg', CAST(N'2024-12-11T13:51:21.140' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (150, 34, N'cauhon.jpg', CAST(N'2024-12-11T13:51:21.143' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (151, 34, N'conrua.jpg', CAST(N'2024-12-11T13:51:21.147' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (152, 34, N'hoboi.jpg', CAST(N'2024-12-11T13:51:21.150' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (153, 34, N'lehoi.jpg', CAST(N'2024-12-11T13:51:21.153' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (154, 34, N'phochauau.jpg', CAST(N'2024-12-11T13:51:21.157' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (155, 34, N'resort.jpg', CAST(N'2024-12-11T13:51:21.163' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (156, 34, N'suoi.jpg', CAST(N'2024-12-11T13:51:21.167' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (157, 34, N'villa.jpg', CAST(N'2024-12-11T13:51:21.170' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (158, 34, N'vinpearl.jpg', CAST(N'2024-12-11T13:51:21.173' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (159, 35, N'cho - Copy.jpg', CAST(N'2024-12-11T13:53:19.247' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (160, 35, N'cong - Copy.jpg', CAST(N'2024-12-11T13:53:19.250' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (161, 35, N'den - Copy.jpg', CAST(N'2024-12-11T13:53:19.253' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (162, 35, N'denlong - Copy.jpg', CAST(N'2024-12-11T13:53:19.257' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (163, 35, N'thaden - Copy.jpg', CAST(N'2024-12-11T13:53:19.260' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (164, 35, N'thuyen - Copy.jpg', CAST(N'2024-12-11T13:53:19.277' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (165, 35, N'thuyencoden - Copy.jpg', CAST(N'2024-12-11T13:53:19.280' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (166, 35, N'thuyento - Copy.jpg', CAST(N'2024-12-11T13:53:19.280' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (167, 35, N'thuyentraitim - Copy.jpg', CAST(N'2024-12-11T13:53:19.283' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (168, 36, N'bien2.jpg', CAST(N'2024-12-11T13:55:20.710' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (169, 36, N'biennguoi.jpg', CAST(N'2024-12-11T13:55:20.713' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (170, 36, N'duquay.jpg', CAST(N'2024-12-11T13:55:20.717' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (171, 36, N'khudulich.jpg', CAST(N'2024-12-11T13:55:20.720' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (172, 36, N'nhahatdo.jpg', CAST(N'2024-12-11T13:55:20.723' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (173, 36, N'thuycung.jpg', CAST(N'2024-12-11T13:55:20.727' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (174, 36, N'trungtamhoinghi.jpg', CAST(N'2024-12-11T13:55:20.730' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (175, 36, N'vinpearl.jpg', CAST(N'2024-12-11T13:55:20.733' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (176, 36, N'vinpearl2.jpg', CAST(N'2024-12-11T13:55:20.733' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (177, 36, N'zipline.jpg', CAST(N'2024-12-11T13:55:20.740' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (178, 37, N'chua.jpg', CAST(N'2024-12-11T13:57:27.950' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (179, 37, N'damthituong.jpg', CAST(N'2024-12-11T13:57:27.953' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (180, 37, N'doan.jpg', CAST(N'2024-12-11T13:57:27.953' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (181, 37, N'hondabac.jpg', CAST(N'2024-12-11T13:57:27.957' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (182, 37, N'hondabac2.jpg', CAST(N'2024-12-11T13:57:27.957' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (183, 37, N'honkhoai.jpg', CAST(N'2024-12-11T13:57:27.960' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (184, 37, N'khutuongniem.jpg', CAST(N'2024-12-11T13:57:27.963' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (185, 37, N'muicamau.jpg', CAST(N'2024-12-11T13:57:27.970' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (186, 37, N'muicamau2.jpg', CAST(N'2024-12-11T13:57:27.973' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (187, 37, N'rungduoc.jpg', CAST(N'2024-12-11T13:57:27.977' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (188, 38, N'chuagokien.jpg', CAST(N'2024-12-11T13:59:29.133' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (189, 38, N'hodautieng.jpg', CAST(N'2024-12-11T13:59:29.137' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (190, 38, N'hodautieng2.jpg', CAST(N'2024-12-11T13:59:29.140' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (191, 38, N'linhsontienthachtu.jpg', CAST(N'2024-12-11T13:59:29.143' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (192, 38, N'nuiba.jpg', CAST(N'2024-12-11T13:59:29.147' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (193, 38, N'thapcobinhthanhtay.jpg', CAST(N'2024-12-11T13:59:29.150' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (194, 38, N'thunglungmathienlanh.jpg', CAST(N'2024-12-11T13:59:29.153' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (195, 38, N'toancanhnuiba.jpg', CAST(N'2024-12-11T13:59:29.157' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (196, 38, N'toathanh.jpg', CAST(N'2024-12-11T13:59:29.160' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (197, 39, N'banahill.jpg', CAST(N'2024-12-11T14:01:01.480' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (198, 39, N'bien.jpg', CAST(N'2024-12-11T14:01:01.490' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (199, 39, N'caurong.jpg', CAST(N'2024-12-11T14:01:01.490' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (200, 39, N'cautinhyeu.jpg', CAST(N'2024-12-11T14:01:01.493' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (201, 39, N'cauvang.jpg', CAST(N'2024-12-11T14:01:01.497' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (202, 39, N'cauvang2.jpg', CAST(N'2024-12-11T14:01:01.500' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (203, 39, N'congvienferroli.jpg', CAST(N'2024-12-11T14:01:01.507' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (204, 39, N'congviennuoc.jpg', CAST(N'2024-12-11T14:01:01.513' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (205, 39, N'copphunnuoc.jpg', CAST(N'2024-12-11T14:01:01.517' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (206, 39, N'nhatho2.jpg', CAST(N'2024-12-11T14:01:01.517' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (207, 40, N'baichay.png', CAST(N'2024-12-11T14:02:28.210' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (208, 40, N'baotang.jpg', CAST(N'2024-12-11T14:02:28.213' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (209, 40, N'bentrongbaotang.jpg', CAST(N'2024-12-11T14:02:28.217' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (210, 40, N'caubaichay.jpg', CAST(N'2024-12-11T14:02:28.220' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (211, 40, N'chuabavang.jpg', CAST(N'2024-12-11T14:02:28.223' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (212, 40, N'chuabavang2.jpg', CAST(N'2024-12-11T14:02:28.223' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (213, 40, N'khudulichyentu.jpg', CAST(N'2024-12-11T14:02:28.227' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (214, 40, N'khudulichyentu2.jpg', CAST(N'2024-12-11T14:02:28.230' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (215, 40, N'langchaibahang.jpg', CAST(N'2024-12-11T14:02:28.237' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (216, 40, N'vinhhalong.jpg', CAST(N'2024-12-11T14:02:28.240' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (217, 41, N'baichay.png', CAST(N'2024-12-11T14:16:56.027' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (218, 41, N'baotang.jpg', CAST(N'2024-12-11T14:16:56.030' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (219, 41, N'baotang2.jpg', CAST(N'2024-12-11T14:16:56.033' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (220, 41, N'bentrongbaotang.jpg', CAST(N'2024-12-11T14:16:56.033' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (221, 41, N'caubaichay.jpg', CAST(N'2024-12-11T14:16:56.037' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (222, 41, N'chuabavang.jpg', CAST(N'2024-12-11T14:16:56.037' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (223, 41, N'chuabavang2.jpg', CAST(N'2024-12-11T14:16:56.040' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (224, 41, N'khudulichyentu.jpg', CAST(N'2024-12-11T14:16:56.040' AS DateTime))
GO
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (225, 41, N'khudulichyentu2.jpg', CAST(N'2024-12-11T14:16:56.047' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (226, 41, N'langchaibahang.jpg', CAST(N'2024-12-11T14:16:56.050' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (227, 41, N'vinhhalong.jpg', CAST(N'2024-12-11T14:16:56.053' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (228, 42, N'chuabavang.jpg', CAST(N'2024-12-12T12:03:57.913' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (229, 42, N'khudulichyentu.jpg', CAST(N'2024-12-12T12:03:57.933' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (230, 42, N'khudulichyentu2.jpg', CAST(N'2024-12-12T12:03:57.937' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (231, 42, N'langchaibahang.jpg', CAST(N'2024-12-12T12:03:57.940' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (232, 42, N'baichay.png', CAST(N'2024-12-12T12:03:57.943' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (233, 42, N'baotang.jpg', CAST(N'2024-12-12T12:03:57.943' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (234, 42, N'baotang2.jpg', CAST(N'2024-12-12T12:03:57.947' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (235, 42, N'bentrongbaotang.jpg', CAST(N'2024-12-12T12:03:57.947' AS DateTime))
INSERT [dbo].[Images] ([Id], [ID_TOUR], [ImageUrl], [CreatedAt]) VALUES (236, 42, N'caubaichay.jpg', CAST(N'2024-12-12T12:03:57.950' AS DateTime))
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (0, N'Thanh toán cho tour đã đặt', CAST(28.00 AS Decimal(10, 2)), CAST(N'2024-11-01T00:20:25.890' AS DateTime), CAST(N'2024-11-01T00:20:25.890' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (1, N'Hóa đơn A', CAST(5000.00 AS Decimal(10, 2)), CAST(N'2024-01-06T00:00:00.000' AS DateTime), CAST(N'2024-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (2, N'Hóa đơn B', CAST(6000.00 AS Decimal(10, 2)), CAST(N'2024-02-04T00:00:00.000' AS DateTime), CAST(N'2024-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (3, N'Hóa đơn C', CAST(4500.00 AS Decimal(10, 2)), CAST(N'2024-03-06T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (4, N'Hóa đơn D', CAST(7000.00 AS Decimal(10, 2)), CAST(N'2024-04-07T00:00:00.000' AS DateTime), CAST(N'2024-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (5, N'Hóa đơn E', CAST(5000.00 AS Decimal(10, 2)), CAST(N'2024-04-07T00:00:00.000' AS DateTime), CAST(N'2024-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (6, N'Thanh toán cho tour đã đặt', CAST(50.00 AS Decimal(10, 2)), CAST(N'2024-11-01T00:31:04.540' AS DateTime), CAST(N'2024-11-01T00:31:04.540' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (7, N'Thanh toán cho tour đã đặt', CAST(40.00 AS Decimal(10, 2)), CAST(N'2024-11-01T10:54:56.293' AS DateTime), CAST(N'2024-11-01T10:54:56.293' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (8, N'Thanh toán cho tour đã đặt', CAST(24.00 AS Decimal(10, 2)), CAST(N'2024-11-02T12:12:31.997' AS DateTime), CAST(N'2024-11-02T12:12:31.997' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (9, N'Thanh toán cho tour đã đặt', CAST(32.00 AS Decimal(10, 2)), CAST(N'2024-11-02T12:13:51.240' AS DateTime), CAST(N'2024-11-02T12:13:51.240' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (10, N'Thanh toán cho tour đã đặt', CAST(45.00 AS Decimal(10, 2)), CAST(N'2024-11-02T12:14:58.517' AS DateTime), CAST(N'2024-11-02T12:14:58.517' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (11, N'Thanh toán cho tour đã đặt', CAST(56.00 AS Decimal(10, 2)), CAST(N'2024-11-02T12:16:12.127' AS DateTime), CAST(N'2024-11-02T12:16:12.127' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (12, N'Thanh toán cho tour đã đặt', CAST(28.00 AS Decimal(10, 2)), CAST(N'2024-11-02T12:20:09.910' AS DateTime), CAST(N'2024-11-02T12:20:09.910' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (13, N'Thanh toán cho tour đã đặt', CAST(22.00 AS Decimal(10, 2)), CAST(N'2024-11-02T12:24:25.967' AS DateTime), CAST(N'2024-11-02T12:24:25.967' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (14, N'Thanh toán cho tour đã đặt', CAST(330.00 AS Decimal(10, 2)), CAST(N'2024-11-05T23:01:56.577' AS DateTime), CAST(N'2024-11-05T23:01:56.577' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (15, N'Thanh toán cho tour đã đặt', CAST(56.00 AS Decimal(10, 2)), CAST(N'2024-11-06T19:57:41.917' AS DateTime), CAST(N'2024-11-06T19:57:41.917' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (16, N'Thanh toán cho tour đã đặt', CAST(270.00 AS Decimal(10, 2)), CAST(N'2024-11-06T21:17:59.663' AS DateTime), CAST(N'2024-11-06T21:17:59.663' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (17, N'Thanh toán cho tour đã đặt', CAST(91.00 AS Decimal(10, 2)), CAST(N'2024-11-06T21:21:17.850' AS DateTime), CAST(N'2024-11-06T21:21:17.850' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (18, N'Thanh toán cho tour đã đặt', CAST(40.00 AS Decimal(10, 2)), CAST(N'2024-11-06T21:25:58.357' AS DateTime), CAST(N'2024-11-06T21:25:58.357' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (19, N'Thanh toán cho tour đã đặt', CAST(56.00 AS Decimal(10, 2)), CAST(N'2024-11-06T21:27:51.590' AS DateTime), CAST(N'2024-11-06T21:27:51.590' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (20, N'Thanh toán cho tour đã đặt', CAST(88.00 AS Decimal(10, 2)), CAST(N'2024-11-06T21:31:55.347' AS DateTime), CAST(N'2024-11-06T21:31:55.347' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (21, N'Thanh toán cho tour đã đặt', CAST(210.00 AS Decimal(10, 2)), CAST(N'2024-11-07T12:00:48.487' AS DateTime), CAST(N'2024-11-07T12:00:48.487' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (22, N'Thanh toán cho tour đã đặt', CAST(70.00 AS Decimal(10, 2)), CAST(N'2024-11-07T12:05:06.447' AS DateTime), CAST(N'2024-11-07T12:05:06.447' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (23, N'Thanh toán cho tour đã đặt', CAST(98.00 AS Decimal(10, 2)), CAST(N'2024-11-07T12:14:33.333' AS DateTime), CAST(N'2024-11-07T12:14:33.333' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (24, N'Thanh toán cho tour đã đặt', CAST(70.00 AS Decimal(10, 2)), CAST(N'2024-11-07T12:25:38.330' AS DateTime), CAST(N'2024-11-07T12:25:38.330' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (25, N'Thanh toán cho tour đã đặt', CAST(105.00 AS Decimal(10, 2)), CAST(N'2024-11-07T12:38:13.780' AS DateTime), CAST(N'2024-11-07T12:38:13.780' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (26, N'Thanh toán cho tour đã đặt', CAST(56.00 AS Decimal(10, 2)), CAST(N'2024-11-07T12:41:15.203' AS DateTime), CAST(N'2024-11-07T12:41:15.203' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (27, N'Thanh toán cho tour đã đặt', CAST(147.00 AS Decimal(10, 2)), CAST(N'2024-11-07T12:56:33.097' AS DateTime), CAST(N'2024-11-07T12:56:33.097' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (28, N'Thanh toán cho tour đã đặt', CAST(147.00 AS Decimal(10, 2)), CAST(N'2024-11-07T13:04:35.457' AS DateTime), CAST(N'2024-11-07T13:04:35.457' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (29, N'Thanh toán cho tour đã đặt', CAST(140.00 AS Decimal(10, 2)), CAST(N'2024-11-07T13:07:36.580' AS DateTime), CAST(N'2024-11-07T13:07:36.580' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (30, N'Thanh toán cho tour đã đặt', CAST(147.00 AS Decimal(10, 2)), CAST(N'2024-11-07T13:12:05.963' AS DateTime), CAST(N'2024-11-07T13:12:05.963' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (31, N'Thanh toán cho tour đã đặt', CAST(70.00 AS Decimal(10, 2)), CAST(N'2024-11-07T13:45:21.607' AS DateTime), CAST(N'2024-11-07T13:45:21.607' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (32, N'Thanh toán cho tour đã đặt', CAST(147.00 AS Decimal(10, 2)), CAST(N'2024-11-07T14:00:02.387' AS DateTime), CAST(N'2024-11-07T14:00:02.387' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (33, N'Thanh toán cho tour đã đặt', CAST(105.00 AS Decimal(10, 2)), CAST(N'2024-11-07T14:04:11.123' AS DateTime), CAST(N'2024-11-07T14:04:11.123' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (34, N'Thanh toán cho tour đã đặt', CAST(49.00 AS Decimal(10, 2)), CAST(N'2024-11-07T14:08:13.060' AS DateTime), CAST(N'2024-11-07T14:08:13.060' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (35, N'Thanh toán cho tour đã đặt', CAST(70.00 AS Decimal(10, 2)), CAST(N'2024-11-07T14:11:53.573' AS DateTime), CAST(N'2024-11-07T14:11:53.573' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (36, N'Thanh toán cho tour đã đặt', CAST(147.00 AS Decimal(10, 2)), CAST(N'2024-11-07T14:13:39.787' AS DateTime), CAST(N'2024-11-07T14:13:39.787' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (37, N'Thanh toán cho tour đã đặt', CAST(147.00 AS Decimal(10, 2)), CAST(N'2024-11-07T14:24:50.357' AS DateTime), CAST(N'2024-11-07T14:24:50.357' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (38, N'Thanh toán cho tour đã đặt', CAST(21.00 AS Decimal(10, 2)), CAST(N'2024-11-07T14:34:49.763' AS DateTime), CAST(N'2024-11-07T14:34:49.763' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (39, N'Thanh toán cho tour đã đặt', CAST(147.00 AS Decimal(10, 2)), CAST(N'2024-11-07T14:36:04.213' AS DateTime), CAST(N'2024-11-07T14:36:04.213' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (40, N'Thanh toán cho tour đã đặt', CAST(147.00 AS Decimal(10, 2)), CAST(N'2024-11-07T14:41:10.623' AS DateTime), CAST(N'2024-11-07T14:41:10.623' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (41, N'Thanh toán cho tour đã đặt', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-11-07T15:26:09.193' AS DateTime), CAST(N'2024-11-07T15:26:09.193' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (42, N'Thanh toán cho tour đã đặt', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-11-07T15:31:00.200' AS DateTime), CAST(N'2024-11-07T15:31:00.200' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (43, N'Thanh toán cho tour đã đặt', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-11-07T15:35:08.343' AS DateTime), CAST(N'2024-11-07T15:35:08.343' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (44, N'Thanh toán cho tour đã đặt', CAST(1520000.00 AS Decimal(10, 2)), CAST(N'2024-11-07T20:42:06.837' AS DateTime), CAST(N'2024-11-07T20:42:06.837' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (45, N'Thanh toán cho tour đã đặt', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-11-08T10:32:07.420' AS DateTime), CAST(N'2024-11-08T10:32:07.420' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (46, N'Thanh toán cho tour đã đặt', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-11-08T10:50:46.573' AS DateTime), CAST(N'2024-11-08T10:50:46.573' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (47, N'Thanh toán cho tour đã đặt', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-11-08T11:02:02.650' AS DateTime), CAST(N'2024-11-08T11:02:02.650' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (48, N'Thanh toán cho tour đã đặt', CAST(277500.00 AS Decimal(10, 2)), CAST(N'2024-11-08T11:08:48.490' AS DateTime), CAST(N'2024-11-08T11:08:48.490' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (49, N'Thanh toán cho tour đã đặt', CAST(300000.00 AS Decimal(10, 2)), CAST(N'2024-11-08T11:54:27.770' AS DateTime), CAST(N'2024-11-08T11:54:27.770' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (50, N'Thanh toán cho tour đã đặt', CAST(375000.00 AS Decimal(10, 2)), CAST(N'2024-11-08T12:00:56.650' AS DateTime), CAST(N'2024-11-08T12:00:56.650' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (51, N'Thanh toán cho tour đã đặt', CAST(247500.00 AS Decimal(10, 2)), CAST(N'2024-11-08T12:03:40.430' AS DateTime), CAST(N'2024-11-08T12:03:40.430' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (52, N'Thanh toán cho tour đã đặt', CAST(130625.00 AS Decimal(10, 2)), CAST(N'2024-11-08T12:08:04.223' AS DateTime), CAST(N'2024-11-08T12:08:04.223' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (53, N'Thanh toán cho tour đã đặt', CAST(780000.00 AS Decimal(10, 2)), CAST(N'2024-11-08T12:13:54.193' AS DateTime), CAST(N'2024-11-08T12:13:54.193' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (54, N'Thanh toán cho tour đã đặt', CAST(1050000.00 AS Decimal(10, 2)), CAST(N'2024-11-08T12:15:24.910' AS DateTime), CAST(N'2024-11-08T12:15:24.910' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (55, N'Thanh toán cho tour đã đặt', CAST(765000.00 AS Decimal(10, 2)), CAST(N'2024-11-08T12:18:39.080' AS DateTime), CAST(N'2024-11-08T12:18:39.080' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (56, N'Thanh toán cho tour đã đặt', CAST(390000.00 AS Decimal(10, 2)), CAST(N'2024-11-08T12:30:19.767' AS DateTime), CAST(N'2024-11-08T12:30:19.767' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (57, N'Thanh toán cho tour đã đặt', CAST(82500.00 AS Decimal(10, 2)), CAST(N'2024-11-08T12:34:27.197' AS DateTime), CAST(N'2024-11-08T12:34:27.197' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (58, N'Thanh toán cho tour đã đặt', CAST(88000.00 AS Decimal(10, 2)), CAST(N'2024-11-08T13:41:57.953' AS DateTime), CAST(N'2024-11-08T13:41:57.953' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (59, N'Thanh toán cho tour đã đặt', CAST(90750.00 AS Decimal(10, 2)), CAST(N'2024-11-08T14:16:21.613' AS DateTime), CAST(N'2024-11-08T14:16:21.613' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (60, N'Thanh toán cho tour đã đặt', CAST(115500.00 AS Decimal(10, 2)), CAST(N'2024-11-08T14:20:57.727' AS DateTime), CAST(N'2024-11-08T14:20:57.727' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (61, N'Thanh toán cho tour đã đặt', CAST(495000.00 AS Decimal(10, 2)), CAST(N'2024-11-10T23:16:25.573' AS DateTime), CAST(N'2024-11-10T23:16:25.577' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (62, N'Thanh toán cho tour đã đặt', CAST(55000000.00 AS Decimal(10, 2)), CAST(N'2024-11-11T00:03:29.233' AS DateTime), CAST(N'2024-11-11T00:03:29.233' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (63, N'Thanh toán cho tour đã đặt', CAST(5000000.00 AS Decimal(10, 2)), CAST(N'2024-11-11T00:03:36.473' AS DateTime), CAST(N'2024-11-11T00:03:36.473' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (64, N'Thanh toán cho tour đã đặt', CAST(600000.00 AS Decimal(10, 2)), CAST(N'2024-11-12T13:56:13.240' AS DateTime), CAST(N'2024-11-12T13:56:13.240' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (65, N'Thanh toán cho tour đã đặt', CAST(2000000.00 AS Decimal(10, 2)), CAST(N'2024-11-12T14:26:52.250' AS DateTime), CAST(N'2024-11-12T14:26:52.250' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (66, N'Thanh toán cho tour đã đặt', CAST(56000.00 AS Decimal(10, 2)), CAST(N'2024-11-14T03:23:38.110' AS DateTime), CAST(N'2024-11-14T03:23:38.110' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (67, N'Thanh toán cho tour đã đặt', CAST(2100000.00 AS Decimal(10, 2)), CAST(N'2024-11-14T12:03:55.600' AS DateTime), CAST(N'2024-11-14T12:03:55.600' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (68, N'Thanh toán cho tour đã đặt', CAST(42000.00 AS Decimal(10, 2)), CAST(N'2024-11-14T12:04:19.767' AS DateTime), CAST(N'2024-11-14T12:04:19.767' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (69, N'Thanh toán cho tour đã đặt', CAST(40000.00 AS Decimal(10, 2)), CAST(N'2024-11-14T12:16:34.063' AS DateTime), CAST(N'2024-11-14T12:16:34.063' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (70, N'Thanh toán cho tour đã đặt', CAST(42000.00 AS Decimal(10, 2)), CAST(N'2024-11-14T12:19:19.420' AS DateTime), CAST(N'2024-11-14T12:19:19.423' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (71, N'Thanh toán cho tour đã đặt', CAST(42000.00 AS Decimal(10, 2)), CAST(N'2024-11-14T12:22:08.223' AS DateTime), CAST(N'2024-11-14T12:22:08.223' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (72, N'Thanh toán cho tour đã đặt', CAST(52000.00 AS Decimal(10, 2)), CAST(N'2024-11-14T12:36:09.903' AS DateTime), CAST(N'2024-11-14T12:36:09.903' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (73, N'Thanh toán cho tour đã đặt', CAST(63000.00 AS Decimal(10, 2)), CAST(N'2024-11-14T12:38:54.670' AS DateTime), CAST(N'2024-11-14T12:38:54.670' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (74, N'Thanh toán cho tour đã đặt', CAST(63000.00 AS Decimal(10, 2)), CAST(N'2024-11-14T12:42:22.923' AS DateTime), CAST(N'2024-11-14T12:42:22.923' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (75, N'Thanh toán cho tour đã đặt', CAST(67000.00 AS Decimal(10, 2)), CAST(N'2024-11-14T12:43:49.353' AS DateTime), CAST(N'2024-11-14T12:43:49.353' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (76, N'Thanh toán cho tour đã đặt', CAST(50400.00 AS Decimal(10, 2)), CAST(N'2024-11-14T13:12:32.257' AS DateTime), CAST(N'2024-11-14T13:12:32.257' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (77, N'Thanh toán cho tour đã đặt', CAST(50400.00 AS Decimal(10, 2)), CAST(N'2024-11-14T13:14:44.470' AS DateTime), CAST(N'2024-11-14T13:14:44.473' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (78, N'Thanh toán cho tour đã đặt', CAST(33600.00 AS Decimal(10, 2)), CAST(N'2024-11-14T13:17:15.620' AS DateTime), CAST(N'2024-11-14T13:17:15.620' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (79, N'Thanh toán cho tour đã đặt', CAST(50400.00 AS Decimal(10, 2)), CAST(N'2024-11-14T13:22:49.857' AS DateTime), CAST(N'2024-11-14T13:22:49.857' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (80, N'Thanh toán cho tour đã đặt', CAST(33600.00 AS Decimal(10, 2)), CAST(N'2024-11-14T13:33:16.777' AS DateTime), CAST(N'2024-11-14T13:33:16.777' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (81, N'Thanh toán cho tour đã đặt', CAST(8500000.00 AS Decimal(10, 2)), CAST(N'2024-11-15T09:32:09.157' AS DateTime), CAST(N'2024-11-15T09:32:09.157' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (82, N'Thanh toán cho tour đã đặt', CAST(1400000.00 AS Decimal(10, 2)), CAST(N'2024-11-15T09:36:28.177' AS DateTime), CAST(N'2024-11-15T09:36:28.177' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (83, N'Thanh toán cho tour đã đặt', CAST(700000.00 AS Decimal(10, 2)), CAST(N'2024-11-21T17:07:51.460' AS DateTime), CAST(N'2024-11-21T17:07:51.460' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (84, N'Thanh toán cho tour đã đặt', CAST(1200000.00 AS Decimal(10, 2)), CAST(N'2024-11-21T17:20:05.993' AS DateTime), CAST(N'2024-11-21T17:20:05.993' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (85, N'Thanh toán cho tour đã đặt', CAST(1750000.00 AS Decimal(10, 2)), CAST(N'2024-11-21T17:20:26.243' AS DateTime), CAST(N'2024-11-21T17:20:26.243' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (86, N'Thanh toán cho tour đã đặt', CAST(600000.00 AS Decimal(10, 2)), CAST(N'2024-11-21T17:20:35.017' AS DateTime), CAST(N'2024-11-21T17:20:35.017' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (87, N'Thanh toán cho tour đã đặt', CAST(4000.00 AS Decimal(10, 2)), CAST(N'2024-11-21T17:20:43.280' AS DateTime), CAST(N'2024-11-21T17:20:43.280' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (88, N'Thanh toán cho tour đã đặt', CAST(10000000.00 AS Decimal(10, 2)), CAST(N'2024-11-21T17:20:59.760' AS DateTime), CAST(N'2024-11-21T17:20:59.760' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (89, N'Thanh toán cho tour đã đặt', CAST(5000000.00 AS Decimal(10, 2)), CAST(N'2024-11-21T17:38:10.940' AS DateTime), CAST(N'2024-11-21T17:38:10.943' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (90, N'Thanh toán cho tour đã đặt', CAST(600000.00 AS Decimal(10, 2)), CAST(N'2024-11-21T17:57:29.960' AS DateTime), CAST(N'2024-11-21T17:57:29.960' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (91, N'Thanh toán cho tour đã đặt', CAST(1000000.00 AS Decimal(10, 2)), CAST(N'2024-11-22T00:35:22.227' AS DateTime), CAST(N'2024-11-22T00:35:22.227' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (92, N'Thanh toán cho tour đã đặt', CAST(1000000.00 AS Decimal(10, 2)), CAST(N'2024-11-22T01:00:57.717' AS DateTime), CAST(N'2024-11-22T01:00:57.717' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (93, N'Thanh toán cho tour đã đặt', CAST(8750000.00 AS Decimal(10, 2)), CAST(N'2024-11-28T15:13:32.450' AS DateTime), CAST(N'2024-11-28T15:13:32.450' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (94, N'Thanh toán cho tour đã đặt', CAST(525000.00 AS Decimal(10, 2)), CAST(N'2024-11-28T15:14:20.610' AS DateTime), CAST(N'2024-11-28T15:14:20.610' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (95, N'Thanh toán cho tour đã đặt', CAST(150000.00 AS Decimal(10, 2)), CAST(N'2024-11-29T19:42:07.600' AS DateTime), CAST(N'2024-11-29T19:42:07.603' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (96, N'Thanh toán cho tour đã đặt', CAST(750000.00 AS Decimal(10, 2)), CAST(N'2024-11-29T20:02:06.477' AS DateTime), CAST(N'2024-11-29T20:02:06.477' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (97, N'Thanh toán cho tour đã đặt', CAST(500000.00 AS Decimal(10, 2)), CAST(N'2024-11-29T20:07:51.240' AS DateTime), CAST(N'2024-11-29T20:07:51.240' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (98, N'Thanh toán cho tour đã đặt', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-12-05T16:05:50.660' AS DateTime), CAST(N'2024-12-05T16:05:50.660' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (99, N'Thanh toán cho tour đã đặt', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-12-05T16:06:09.693' AS DateTime), CAST(N'2024-12-05T16:06:09.693' AS DateTime))
GO
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (100, N'Thanh toán cho tour đã đặt', CAST(500000.00 AS Decimal(10, 2)), CAST(N'2024-12-06T17:33:49.660' AS DateTime), CAST(N'2024-12-06T17:33:49.660' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (101, N'Thanh toán cho tour đã đặt', CAST(475000.00 AS Decimal(10, 2)), CAST(N'2024-12-06T17:34:26.110' AS DateTime), CAST(N'2024-12-06T17:34:26.110' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (102, N'Thanh toán cho tour đã đặt', CAST(11000.00 AS Decimal(10, 2)), CAST(N'2024-12-07T12:59:44.833' AS DateTime), CAST(N'2024-12-07T12:59:44.833' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (103, N'Thanh toán cho tour đã đặt', CAST(13750000.00 AS Decimal(10, 2)), CAST(N'2024-12-08T11:52:10.030' AS DateTime), CAST(N'2024-12-08T11:52:10.030' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (104, N'Thanh toán cho tour đã đặt', CAST(5000000.00 AS Decimal(10, 2)), CAST(N'2024-12-09T23:49:31.013' AS DateTime), CAST(N'2024-12-09T23:49:31.013' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (105, N'Thanh toán cho tour đã đặt', CAST(13750000.00 AS Decimal(10, 2)), CAST(N'2024-12-11T14:18:27.527' AS DateTime), CAST(N'2024-12-11T14:18:27.527' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (106, N'Thanh toán cho tour đã đặt', CAST(11000000.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:12:16.770' AS DateTime), CAST(N'2024-12-12T18:12:16.770' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (107, N'Thanh toán cho tour đã đặt', CAST(3000000.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:19:10.223' AS DateTime), CAST(N'2024-12-12T18:19:10.223' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (108, N'Thanh toán cho tour đã đặt', CAST(10000000.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:42:13.693' AS DateTime), CAST(N'2024-12-12T18:42:13.693' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (109, N'Thanh toán cho tour đã đặt', CAST(5250000.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:48:43.273' AS DateTime), CAST(N'2024-12-12T18:48:43.273' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (110, N'Thanh toán cho tour đã đặt', CAST(3500000.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:53:57.100' AS DateTime), CAST(N'2024-12-12T18:53:57.100' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (111, N'Thanh toán cho tour đã đặt', CAST(2000000.00 AS Decimal(10, 2)), CAST(N'2024-12-13T16:38:50.413' AS DateTime), CAST(N'2024-12-13T16:38:50.413' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (112, N'Thanh toán cho tour đã đặt', CAST(8250000.00 AS Decimal(10, 2)), CAST(N'2024-12-13T16:43:04.020' AS DateTime), CAST(N'2024-12-13T16:43:04.020' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (113, N'Thanh toán cho tour đã đặt', CAST(6125000.00 AS Decimal(10, 2)), CAST(N'2024-12-13T18:39:33.230' AS DateTime), CAST(N'2024-12-13T18:39:33.230' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (114, N'Thanh toán cho tour đã đặt', CAST(2000000.00 AS Decimal(10, 2)), CAST(N'2024-12-13T18:39:46.423' AS DateTime), CAST(N'2024-12-13T18:39:46.423' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (115, N'Thanh toán cho tour đã đặt', CAST(6125000.00 AS Decimal(10, 2)), CAST(N'2024-12-13T20:24:51.847' AS DateTime), CAST(N'2024-12-13T20:24:51.850' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (116, N'Thanh toán cho tour đã đặt', CAST(11000000.00 AS Decimal(10, 2)), CAST(N'2024-12-21T17:41:18.967' AS DateTime), CAST(N'2024-12-21T17:41:18.967' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (117, N'Thanh toán cho tour đã đặt', CAST(5500000.00 AS Decimal(10, 2)), CAST(N'2024-12-22T12:46:13.747' AS DateTime), CAST(N'2024-12-22T12:46:13.747' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (118, N'Thanh toán cho tour đã đặt', CAST(3500000.00 AS Decimal(10, 2)), CAST(N'2024-12-22T12:54:58.703' AS DateTime), CAST(N'2024-12-22T12:54:58.703' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (119, N'Thanh toán cho tour đã đặt', CAST(0.00 AS Decimal(10, 2)), CAST(N'2025-02-17T08:07:26.703' AS DateTime), CAST(N'2025-02-17T08:07:26.703' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (120, N'Thanh toán cho tour đã đặt', CAST(0.00 AS Decimal(10, 2)), CAST(N'2025-02-17T08:11:29.677' AS DateTime), CAST(N'2025-02-17T08:11:29.677' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (121, N'Thanh toán cho tour đã đặt', CAST(0.00 AS Decimal(10, 2)), CAST(N'2025-02-17T08:35:46.433' AS DateTime), CAST(N'2025-02-17T08:35:46.433' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (122, N'Thanh toán cho tour đã đặt', CAST(0.00 AS Decimal(10, 2)), CAST(N'2025-02-17T09:04:54.267' AS DateTime), CAST(N'2025-02-17T09:04:54.267' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (123, N'Thanh toán cho tour đã đặt', CAST(0.00 AS Decimal(10, 2)), CAST(N'2025-02-17T09:05:19.940' AS DateTime), CAST(N'2025-02-17T09:05:19.940' AS DateTime))
INSERT [dbo].[INVOICE] ([ID_INVOICE], [DESCRIPTION], [TOTAL_AMOUNT], [BILLING_DATE], [CREATED_AT]) VALUES (124, N'Thanh toán cho tour đã đặt', CAST(5250000.00 AS Decimal(10, 2)), CAST(N'2025-02-20T13:25:46.437' AS DateTime), CAST(N'2025-02-20T13:25:46.440' AS DateTime))
GO
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (0, CAST(N'2024-10-31T23:30:52.007' AS DateTime), N'MoMo', CAST(7000.00 AS Decimal(10, 2)), N'Ðang x? lý', N'N', NULL, NULL, N'7367898b-a952-411d-b2cd-a9a62f14b26d')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (5, CAST(N'2024-04-07T00:00:00.000' AS DateTime), N'Momo', CAST(5000.00 AS Decimal(10, 2)), N'Completed', N'N', NULL, NULL, N'A7A7F0CA-9F57-4CED-B9AA-6E1792C7F330')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (9, CAST(N'2024-11-11T00:04:15.750' AS DateTime), N'VnPay', CAST(5000000.00 AS Decimal(10, 2)), N'Canceled', N'N', CAST(4000000.00 AS Decimal(10, 2)), CAST(N'2024-11-12T14:17:30.657' AS DateTime), N'689f16b3-d666-444c-b46b-a73fb2fd9cb9')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (10, CAST(N'2024-11-12T14:27:23.007' AS DateTime), N'VnPay', CAST(2000000.00 AS Decimal(10, 2)), N'Canceled', N'N', CAST(1600000.00 AS Decimal(10, 2)), CAST(N'2024-11-12T14:46:12.820' AS DateTime), N'689f16b3-d666-444c-b46b-a73fb2fd9cb9')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (11, CAST(N'2024-11-14T13:23:24.443' AS DateTime), N'VnPay', CAST(50400.00 AS Decimal(10, 2)), N'Canceled', N'N', CAST(40320.00 AS Decimal(10, 2)), CAST(N'2024-11-14T13:25:46.330' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (12, CAST(N'2024-11-15T09:37:32.720' AS DateTime), N'VnPay', CAST(1400000.00 AS Decimal(10, 2)), N'Canceled', N'N', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:49:42.053' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (13, CAST(N'2024-11-21T17:40:39.780' AS DateTime), N'VnPay', CAST(5000000.00 AS Decimal(10, 2)), N'Canceled', N'N', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:54:50.750' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (14, CAST(N'2024-11-22T00:36:40.097' AS DateTime), N'VnPay', CAST(1000000.00 AS Decimal(10, 2)), N'Canceled', N'N', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-12-13T18:40:06.777' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (15, CAST(N'2024-11-22T01:03:04.413' AS DateTime), N'VnPay', CAST(1000000.00 AS Decimal(10, 2)), N'Canceled', N'N', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-12-13T18:40:08.950' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (16, CAST(N'2024-12-08T11:53:41.853' AS DateTime), N'VnPay', CAST(13750000.00 AS Decimal(10, 2)), N'Completed', N'N', NULL, NULL, N'6d08ecd5-f643-4904-84fb-1f19095a4c7d')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (17, CAST(N'2024-12-12T18:13:22.183' AS DateTime), N'VnPay', CAST(11000000.00 AS Decimal(10, 2)), N'Canceled', N'N', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:13:49.687' AS DateTime), N'145a8d7e-ae1f-4268-8e37-6fe8dad37feb')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (18, CAST(N'2024-12-12T18:19:54.547' AS DateTime), N'VnPay', CAST(3000000.00 AS Decimal(10, 2)), N'Canceled', N'N', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:20:14.977' AS DateTime), N'a966be3a-2569-45e8-97ae-811049be53d3')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (19, CAST(N'2024-12-12T18:42:46.897' AS DateTime), N'VnPay', CAST(10000000.00 AS Decimal(10, 2)), N'Canceled', N'N', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:43:07.400' AS DateTime), N'25586438-758f-47f2-9bc9-783eeb1c0e37')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (20, CAST(N'2024-12-12T18:49:15.187' AS DateTime), N'VnPay', CAST(5250000.00 AS Decimal(10, 2)), N'Canceled', N'N', CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-12-21T17:42:48.810' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (21, CAST(N'2024-12-12T18:54:36.997' AS DateTime), N'VnPay', CAST(3500000.00 AS Decimal(10, 2)), N'Completed', N'N', NULL, NULL, N'025e62d8-8412-4cbb-a642-52a5a513145b')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (22, CAST(N'2024-12-13T16:43:38.033' AS DateTime), N'VnPay', CAST(8250000.00 AS Decimal(10, 2)), N'Completed', N'N', NULL, NULL, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (23, CAST(N'2024-12-21T17:42:18.903' AS DateTime), N'VnPay', CAST(11000000.00 AS Decimal(10, 2)), N'Completed', N'N', NULL, NULL, N'025e62d8-8412-4cbb-a642-52a5a513145b')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (24, CAST(N'2024-12-22T12:47:02.013' AS DateTime), N'VnPay', CAST(5500000.00 AS Decimal(10, 2)), N'Completed', N'N', NULL, NULL, N'025e62d8-8412-4cbb-a642-52a5a513145b')
INSERT [dbo].[PAYMENT] ([ID_PAYMENT], [DATE], [METHOD], [AMOUNT], [STATUS], [IS_REFUNDED], [REFUND_AMOUNT], [REFUND_DATE], [Id]) VALUES (25, CAST(N'2025-02-20T13:27:57.760' AS DateTime), N'VnPay', CAST(5250000.00 AS Decimal(10, 2)), N'Completed', N'N', NULL, NULL, N'689f16b3-d666-444c-b46b-a73fb2fd9cb9')
GO
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (0, 4, CAST(7000.00 AS Decimal(10, 2)), CAST(N'2024-10-31T23:30:52.090' AS DateTime), N'Hoàn thành')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (5, 5, CAST(5500000.00 AS Decimal(10, 2)), CAST(N'2024-04-07T00:00:00.000' AS DateTime), N'Paid')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (9, 63, CAST(5000000.00 AS Decimal(10, 2)), CAST(N'2024-11-11T00:04:15.807' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (10, 65, CAST(2000000.00 AS Decimal(10, 2)), CAST(N'2024-11-12T14:27:23.067' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (11, 79, CAST(50400.00 AS Decimal(10, 2)), CAST(N'2024-11-14T13:23:24.503' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (12, 82, CAST(1400000.00 AS Decimal(10, 2)), CAST(N'2024-11-15T09:37:32.770' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (13, 89, CAST(5000000.00 AS Decimal(10, 2)), CAST(N'2024-11-21T17:40:39.880' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (14, 91, CAST(1000000.00 AS Decimal(10, 2)), CAST(N'2024-11-22T00:36:40.203' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (15, 92, CAST(1000000.00 AS Decimal(10, 2)), CAST(N'2024-11-22T01:03:04.480' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (16, 103, CAST(13750000.00 AS Decimal(10, 2)), CAST(N'2024-12-08T11:53:41.943' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (17, 106, CAST(11000000.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:13:22.240' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (18, 107, CAST(3000000.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:19:54.553' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (19, 108, CAST(10000000.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:42:46.907' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (20, 109, CAST(5250000.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:49:15.197' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (21, 110, CAST(3500000.00 AS Decimal(10, 2)), CAST(N'2024-12-12T18:54:37.007' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (22, 112, CAST(8250000.00 AS Decimal(10, 2)), CAST(N'2024-12-13T16:43:38.090' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (23, 116, CAST(11000000.00 AS Decimal(10, 2)), CAST(N'2024-12-21T17:42:19.023' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (24, 117, CAST(5500000.00 AS Decimal(10, 2)), CAST(N'2024-12-22T12:47:02.053' AS DateTime), N'Completed')
INSERT [dbo].[PAYMENT_INVOICE] ([ID_PAYMENT], [ID_INVOICE], [PAID_AMOUNT], [PAYMENT_DATE], [STATUS]) VALUES (25, 124, CAST(5250000.00 AS Decimal(10, 2)), CAST(N'2025-02-20T13:27:57.847' AS DateTime), N'Completed')
GO
INSERT [dbo].[PROMOTION] ([ID_PMT], [NAME], [DESCRIPTION], [START_DATE], [END_DATE], [DISCOUNT_AMOUNT], [ELIGIBILITY_CRITERIA], [STATUS], [ID_TOUR], [ID_HOTEL]) VALUES (1, N'Khuyến mãi mùa hè', N'Giảm giá 20%', CAST(N'2024-06-01T00:00:00.000' AS DateTime), CAST(N'2024-06-30T00:00:00.000' AS DateTime), CAST(20.00 AS Decimal(10, 2)), N'Khách hàng mới', N'Active', 1, 1)
INSERT [dbo].[PROMOTION] ([ID_PMT], [NAME], [DESCRIPTION], [START_DATE], [END_DATE], [DISCOUNT_AMOUNT], [ELIGIBILITY_CRITERIA], [STATUS], [ID_TOUR], [ID_HOTEL]) VALUES (2, N'Khuyến mãi mùa thu', N'Giảm giá 15%', CAST(N'2024-09-01T00:00:00.000' AS DateTime), CAST(N'2024-09-30T00:00:00.000' AS DateTime), CAST(15.00 AS Decimal(10, 2)), N'Khách hàng VIP', N'Active', 2, 2)
INSERT [dbo].[PROMOTION] ([ID_PMT], [NAME], [DESCRIPTION], [START_DATE], [END_DATE], [DISCOUNT_AMOUNT], [ELIGIBILITY_CRITERIA], [STATUS], [ID_TOUR], [ID_HOTEL]) VALUES (3, N'Khuyến mãi mùa đông', N'Giảm giá 25%', CAST(N'2024-12-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(25.00 AS Decimal(10, 2)), N'Khách hàng thân thiết', N'Active', 3, 3)
INSERT [dbo].[PROMOTION] ([ID_PMT], [NAME], [DESCRIPTION], [START_DATE], [END_DATE], [DISCOUNT_AMOUNT], [ELIGIBILITY_CRITERIA], [STATUS], [ID_TOUR], [ID_HOTEL]) VALUES (4, N'Khuyến mãi mùa xuân', N'Giảm giá 10%', CAST(N'2024-03-01T00:00:00.000' AS DateTime), CAST(N'2024-03-31T00:00:00.000' AS DateTime), CAST(20.00 AS Decimal(10, 2)), N'Tất cả khách hàng', N'Inactive', 4, 4)
INSERT [dbo].[PROMOTION] ([ID_PMT], [NAME], [DESCRIPTION], [START_DATE], [END_DATE], [DISCOUNT_AMOUNT], [ELIGIBILITY_CRITERIA], [STATUS], [ID_TOUR], [ID_HOTEL]) VALUES (5, N'Khuyến mãi mùa đông', N'Giảm giá 20%', CAST(N'2024-12-01T00:00:00.000' AS DateTime), CAST(N'2024-12-31T00:00:00.000' AS DateTime), CAST(25.00 AS Decimal(10, 2)), N'Khách hàng VIP', N'Active', 3, 3)
INSERT [dbo].[PROMOTION] ([ID_PMT], [NAME], [DESCRIPTION], [START_DATE], [END_DATE], [DISCOUNT_AMOUNT], [ELIGIBILITY_CRITERIA], [STATUS], [ID_TOUR], [ID_HOTEL]) VALUES (10, N'Săn sale 13/11', N'Siêu sale giữa tháng', CAST(N'2024-11-13T00:00:00.000' AS DateTime), CAST(N'2024-11-15T00:00:00.000' AS DateTime), CAST(20.00 AS Decimal(10, 2)), N'Tất cả khách hàng', N'active', 2, 2)
INSERT [dbo].[PROMOTION] ([ID_PMT], [NAME], [DESCRIPTION], [START_DATE], [END_DATE], [DISCOUNT_AMOUNT], [ELIGIBILITY_CRITERIA], [STATUS], [ID_TOUR], [ID_HOTEL]) VALUES (11, N'Giảm giá 20/11', N'giảm 20&', CAST(N'2024-11-14T00:00:00.000' AS DateTime), CAST(N'2024-11-16T00:00:00.000' AS DateTime), CAST(20.00 AS Decimal(10, 2)), N'Tất cả khách hàng', N'active', 23, 2)
INSERT [dbo].[PROMOTION] ([ID_PMT], [NAME], [DESCRIPTION], [START_DATE], [END_DATE], [DISCOUNT_AMOUNT], [ELIGIBILITY_CRITERIA], [STATUS], [ID_TOUR], [ID_HOTEL]) VALUES (12, N'Khuyến mãi 20/11', N'giảm giá 20%', CAST(N'2024-11-15T00:00:00.000' AS DateTime), CAST(N'2024-11-20T00:00:00.000' AS DateTime), CAST(20.00 AS Decimal(10, 2)), N'Tất cả khách hàng', N'active', 29, 2)
INSERT [dbo].[PROMOTION] ([ID_PMT], [NAME], [DESCRIPTION], [START_DATE], [END_DATE], [DISCOUNT_AMOUNT], [ELIGIBILITY_CRITERIA], [STATUS], [ID_TOUR], [ID_HOTEL]) VALUES (15, N'Giảm giá 12/12', N'cuối năm', CAST(N'2024-12-06T00:00:00.000' AS DateTime), CAST(N'2024-12-07T00:00:00.000' AS DateTime), CAST(2000.00 AS Decimal(10, 2)), N'Tất cả khách hàng', N'active', 18, 4)
INSERT [dbo].[PROMOTION] ([ID_PMT], [NAME], [DESCRIPTION], [START_DATE], [END_DATE], [DISCOUNT_AMOUNT], [ELIGIBILITY_CRITERIA], [STATUS], [ID_TOUR], [ID_HOTEL]) VALUES (16, N'Giảm giá cuối năm', N'12', CAST(N'2024-12-06T00:00:00.000' AS DateTime), CAST(N'2024-12-07T00:00:00.000' AS DateTime), CAST(3000.00 AS Decimal(10, 2)), N'Tất cả khách hàng', N'active', 28, 5)
GO
INSERT [dbo].[REPORT] ([ID_REPORT], [RATING], [CREATED_AT], [Id], [ID_TOUR]) VALUES (5, N'Phan Thiết thật đẹp đẽ', CAST(N'2024-01-08T00:00:00.000' AS DateTime), N'A7A7F0CA-9F57-4CED-B9AA-6E1792C7F330', 5)
INSERT [dbo].[REPORT] ([ID_REPORT], [RATING], [CREATED_AT], [Id], [ID_TOUR]) VALUES (6, N'3', CAST(N'2024-11-02T15:55:55.317' AS DateTime), N'7367898b-a952-411d-b2cd-a9a62f14b26d', 3)
INSERT [dbo].[REPORT] ([ID_REPORT], [RATING], [CREATED_AT], [Id], [ID_TOUR]) VALUES (7, N'Lịch trình thay đổi đột ngột', CAST(N'2024-11-02T15:58:40.670' AS DateTime), N'7367898b-a952-411d-b2cd-a9a62f14b26d', 3)
INSERT [dbo].[REPORT] ([ID_REPORT], [RATING], [CREATED_AT], [Id], [ID_TOUR]) VALUES (8, N'Thông tin không chính xác', CAST(N'2024-11-02T16:21:17.500' AS DateTime), N'7367898b-a952-411d-b2cd-a9a62f14b26d', 2)
INSERT [dbo].[REPORT] ([ID_REPORT], [RATING], [CREATED_AT], [Id], [ID_TOUR]) VALUES (11, NULL, CAST(N'2024-11-15T09:56:50.480' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 29)
INSERT [dbo].[REPORT] ([ID_REPORT], [RATING], [CREATED_AT], [Id], [ID_TOUR]) VALUES (12, N'Dịch vụ kém', CAST(N'2024-11-21T19:15:15.650' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 21)
INSERT [dbo].[REPORT] ([ID_REPORT], [RATING], [CREATED_AT], [Id], [ID_TOUR]) VALUES (13, N'Lịch trình thay đổi đột ngột', CAST(N'2024-11-21T20:33:03.497' AS DateTime), N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', 21)
INSERT [dbo].[REPORT] ([ID_REPORT], [RATING], [CREATED_AT], [Id], [ID_TOUR]) VALUES (14, N'Thông tin không chính xác', CAST(N'2024-12-06T21:54:25.550' AS DateTime), N'c77bad24-3a12-451b-a64d-63e05c412ca3', 21)
INSERT [dbo].[REPORT] ([ID_REPORT], [RATING], [CREATED_AT], [Id], [ID_TOUR]) VALUES (15, N'Thông tin không chính xác', CAST(N'2024-12-12T18:15:17.377' AS DateTime), N'145a8d7e-ae1f-4268-8e37-6fe8dad37feb', 34)
INSERT [dbo].[REPORT] ([ID_REPORT], [RATING], [CREATED_AT], [Id], [ID_TOUR]) VALUES (16, N'Giá cả không hợp lý', CAST(N'2024-12-12T18:42:03.967' AS DateTime), N'25586438-758f-47f2-9bc9-783eeb1c0e37', 39)
INSERT [dbo].[REPORT] ([ID_REPORT], [RATING], [CREATED_AT], [Id], [ID_TOUR]) VALUES (17, N'Thông tin không chính xác', CAST(N'2024-12-12T18:48:17.930' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 36)
INSERT [dbo].[REPORT] ([ID_REPORT], [RATING], [CREATED_AT], [Id], [ID_TOUR]) VALUES (18, N'Dịch vụ kém', CAST(N'2024-12-13T16:42:50.813' AS DateTime), N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', 34)
INSERT [dbo].[REPORT] ([ID_REPORT], [RATING], [CREATED_AT], [Id], [ID_TOUR]) VALUES (19, N'Lịch trình thay đổi đột ngột', CAST(N'2024-12-21T17:41:02.963' AS DateTime), N'025e62d8-8412-4cbb-a642-52a5a513145b', 34)
GO
INSERT [dbo].[ROOM] ([ID_ROOM], [ROOM_NUMBER], [STATUS], [PRICE], [ID_HOTEL], [ID_TYPE]) VALUES (1, N'101', N'Available', CAST(1500000.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ROOM] ([ID_ROOM], [ROOM_NUMBER], [STATUS], [PRICE], [ID_HOTEL], [ID_TYPE]) VALUES (2, N'102', N'Booked', CAST(1200000.00 AS Decimal(10, 2)), 2, 2)
INSERT [dbo].[ROOM] ([ID_ROOM], [ROOM_NUMBER], [STATUS], [PRICE], [ID_HOTEL], [ID_TYPE]) VALUES (3, N'201', N'Available', CAST(1700000.00 AS Decimal(10, 2)), 3, 3)
INSERT [dbo].[ROOM] ([ID_ROOM], [ROOM_NUMBER], [STATUS], [PRICE], [ID_HOTEL], [ID_TYPE]) VALUES (4, N'202', N'Under Maintenance', CAST(1800000.00 AS Decimal(10, 2)), 4, 4)
INSERT [dbo].[ROOM] ([ID_ROOM], [ROOM_NUMBER], [STATUS], [PRICE], [ID_HOTEL], [ID_TYPE]) VALUES (5, N'203', N'Booked', CAST(1300000.00 AS Decimal(10, 2)), 5, 1)
GO
INSERT [dbo].[ROOM_DETAIL] ([ID_ROOM], [ID_FACILITY], [AVAILABLE], [QUANLITY], [CONDITION]) VALUES (1, 1, N'Yes', 1, N'Good')
INSERT [dbo].[ROOM_DETAIL] ([ID_ROOM], [ID_FACILITY], [AVAILABLE], [QUANLITY], [CONDITION]) VALUES (2, 2, N'Yes', 1, N'Good')
INSERT [dbo].[ROOM_DETAIL] ([ID_ROOM], [ID_FACILITY], [AVAILABLE], [QUANLITY], [CONDITION]) VALUES (3, 3, N'No', 0, N'Under Maintenance')
INSERT [dbo].[ROOM_DETAIL] ([ID_ROOM], [ID_FACILITY], [AVAILABLE], [QUANLITY], [CONDITION]) VALUES (4, 4, N'Yes', 1, N'Good')
INSERT [dbo].[ROOM_DETAIL] ([ID_ROOM], [ID_FACILITY], [AVAILABLE], [QUANLITY], [CONDITION]) VALUES (5, 2, N'No', 0, N'Under Maintenance')
GO
INSERT [dbo].[SERVICE] ([ID_SERVICE], [NAME], [DESCRIPTION], [PRICE], [AVAILABLE], [CREATED_AT], [ID_TOUR], [ID_HOTEL], [ID_TYPE]) VALUES (1, N'Dịch vụ giặt là', N'Giặt là quần áo trong ngày', CAST(200000.00 AS Decimal(10, 2)), NULL, CAST(N'2023-02-06T00:00:00.000' AS DateTime), 3, 1, 1)
INSERT [dbo].[SERVICE] ([ID_SERVICE], [NAME], [DESCRIPTION], [PRICE], [AVAILABLE], [CREATED_AT], [ID_TOUR], [ID_HOTEL], [ID_TYPE]) VALUES (2, N'Dịch vụ ăn uống', N'Buffet sáng và tối', CAST(500000.00 AS Decimal(10, 2)), NULL, CAST(N'2023-07-29T00:00:00.000' AS DateTime), 4, 2, 2)
INSERT [dbo].[SERVICE] ([ID_SERVICE], [NAME], [DESCRIPTION], [PRICE], [AVAILABLE], [CREATED_AT], [ID_TOUR], [ID_HOTEL], [ID_TYPE]) VALUES (3, N'Dịch vụ trông trẻ', N'Trông trẻ trong ngày', CAST(1000000.00 AS Decimal(10, 2)), NULL, CAST(N'2023-10-15T00:00:00.000' AS DateTime), 1, 3, 3)
INSERT [dbo].[SERVICE] ([ID_SERVICE], [NAME], [DESCRIPTION], [PRICE], [AVAILABLE], [CREATED_AT], [ID_TOUR], [ID_HOTEL], [ID_TYPE]) VALUES (4, N'Dịch vụ xe đưa đón', N'Xe đưa đón từ sân bay', CAST(300000.00 AS Decimal(10, 2)), NULL, CAST(N'2023-04-03T00:00:00.000' AS DateTime), 2, 4, 4)
GO
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (1, N'Tour Đà Nẵng1', N'Mô tả Tour A', N'danang.jpg', CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-01-05T00:00:00.000' AS DateTime), 30, CAST(5000.00 AS Decimal(10, 2)), N'N', 1, 1, 1, N'Đang chờ', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (2, N'Tour Hà Nội', N'Mô tả Tour B', N'hanoi.jpg', CAST(N'2024-02-01T00:00:00.000' AS DateTime), CAST(N'2024-02-03T00:00:00.000' AS DateTime), 40, CAST(4000.00 AS Decimal(10, 2)), N'N', 2, 3, 2, N'Đã phê duyệt', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (3, N'Tour Đà Lạt', N'Mô tả Tour C', N'dalat.jpg', CAST(N'2024-03-01T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), 25, CAST(5500.00 AS Decimal(10, 2)), N'N', 3, 4, 3, N'Đã phê duyệt', N'NULL7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (4, N'Du lịch Sapa 5N4Đ', N'Mô tả Tour D', N'sapa.jpg', CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-05T00:00:00.000' AS DateTime), 50, CAST(2000000.00 AS Decimal(10, 2)), N'N', 4, 2, 4, N'Đang chờ', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (5, N'Tour Phan Thiết', N'Mô tả Tour E', N'phanthiet.jpg', CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-06T00:00:00.000' AS DateTime), 20, CAST(5000.00 AS Decimal(10, 2)), N'Y', 4, 1, 5, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (6, N'á', N'scs', N'ssa.jpg', CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-06T00:00:00.000' AS DateTime), 30, CAST(5000.00 AS Decimal(10, 2)), N'Y', 3, 1, 2, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (7, N'Tour Thái Lan 5N4Đ: Bangkok - Pattaya - Công Viên Khủng Long (Bay Sáng, Trưa)', N'- Chiêm ngưỡng tượng Phật Vàng tại chùa Wat Traimit, biểu tượng tâm linh nổi tiếng.  - Khám phá Pattaya sôi động, thành phố biển không bao giờ ngủ.  - Hòa mình vào thế giới tiền sử đầy ấn tượng tại Công viên Khủng Long.  - Thư giãn trên bãi biển đảo Coral và tham gia các hoạt động thể thao dưới nước thú vị.  - Thưởng thức show diễn nghệ thuật hoành tráng, mang đậm văn hóa Thái Lan, và thỏa sức mua sắm tại các chợ đêm sầm uất.', N'thailan.jpg', CAST(N'2024-11-07T00:00:00.000' AS DateTime), CAST(N'2024-11-21T00:00:00.000' AS DateTime), 30, CAST(30000.00 AS Decimal(10, 2)), N'N', 3, 2, 2, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (8, N'Tour Trung Quốc 6N5Đ: Lệ Giang - Đại Lý - Shangrila (No Shopping)', N'- Khám phá Lệ Giang Cổ Trấn di sản thế giới được UNESCO công nhận, nổi tiếng với kiến trúc cổ kính và hệ thống kênh rạch độc đáo.  - Tham quan Đại Lý vùng đất với Tam Tháp Đại Lý nổi tiếng và bề dày lịch sử văn hóa của dân tộc Bạch.  - Chiêm ngưỡng vẻ đẹp Shangri-La, nơi được mệnh danh là thiên đường hạ giới với thiên nhiên hùng vĩ và khí hậu trong lành.  - Tham quan Tu viện Songzanlin, tu viện Phật giáo Tây Tạng lớn nhất Vân Nam, mang đậm kiến trúc Tây Tạng và sự thanh bình.  - Chiêm ngưỡng Núi Tuyết Ngọc Long, với phong cảnh núi non tuyệt đẹp và hệ sinh thái đa dạng.', NULL, CAST(N'2024-10-31T00:00:00.000' AS DateTime), CAST(N'2024-11-15T00:00:00.000' AS DateTime), 30, CAST(30000.00 AS Decimal(10, 2)), N'N', 4, 3, 4, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (9, N'Tour Châu Âu 10N9Đ: TP.HCM - Khám Phá Pháp - Thụy Sĩ - Ý - Vatican', N'Trải nghiệm hành trình tuyệt vời từ TP.HCM đến Paris, thủ đô ánh sáng với những điểm tham quan nổi bật như Khải Hoàn Môn, Tháp Eiffel và du thuyền trên sông Seine. Khám phá Nancy và Colmar với kiến trúc cổ kính, tiếp tục đến Lucerne và Zurich với hồ nước và cầu gỗ nổi tiếng. Đắm mình trong vẻ đẹp thơ mộng của Venice, chiêm ngưỡng Tháp Nghiêng Pisa và những công trình lịch sử tại Rome như Đấu Trường La Mã và Tòa thánh Vatican.  Cùng iVIVU khám phá ngay hôm nay!', NULL, CAST(N'2024-11-07T00:00:00.000' AS DateTime), CAST(N'2024-11-22T00:00:00.000' AS DateTime), 21, CAST(30000.00 AS Decimal(10, 2)), N'N', 1, 2, 4, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (10, N'Tour Châu Âu 10N9Đ: TP.HCM - Khám Phá Pháp - Thụy Sĩ - Ý - Vatican', N'Trải nghiệm hành trình tuyệt vời từ TP.HCM đến Paris, thủ đô ánh sáng với những điểm tham quan nổi bật như Khải Hoàn Môn, Tháp Eiffel và du thuyền trên sông Seine. Khám phá Nancy và Colmar với kiến trúc cổ kính, tiếp tục đến Lucerne và Zurich với hồ nước và cầu gỗ nổi tiếng. Đắm mình trong vẻ đẹp thơ mộng của Venice, chiêm ngưỡng Tháp Nghiêng Pisa và những công trình lịch sử tại Rome như Đấu Trường La Mã và Tòa thánh Vatican.  Cùng iVIVU khám phá ngay hôm nay!', NULL, CAST(N'2024-11-07T00:00:00.000' AS DateTime), CAST(N'2024-11-22T00:00:00.000' AS DateTime), 21, CAST(30000.00 AS Decimal(10, 2)), N'N', 1, 2, 4, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (11, N'Tour du lịch mạo hiểm', N'121', NULL, CAST(N'2024-11-07T00:00:00.000' AS DateTime), CAST(N'2024-11-15T00:00:00.000' AS DateTime), 21, CAST(30000.00 AS Decimal(10, 2)), N'N', 2, 1, 1, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (12, N'Tour du lịch mạo hiểm', N'121', NULL, CAST(N'2024-11-07T00:00:00.000' AS DateTime), CAST(N'2024-11-15T00:00:00.000' AS DateTime), 21, CAST(30000.00 AS Decimal(10, 2)), N'N', 2, 1, 1, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (13, N'Tour du lịch mạo hiểm', N'Trải nghiệm hành trình tuyệt vời từ TP.HCM đến Paris, thủ đô ánh sáng với những điểm tham quan nổi bật như Khải Hoàn Môn, Tháp Eiffel và du thuyền trên sông Seine. Khám phá Nancy và Colmar với kiến trúc cổ kính, tiếp tục đến Lucerne và Zurich với hồ nước và cầu gỗ nổi tiếng. Đắm mình trong vẻ đẹp thơ mộng của Venice, chiêm ngưỡng Tháp Nghiêng Pisa và những công trình lịch sử tại Rome như Đấu Trường La Mã và Tòa thánh Vatican.  Cùng iVIVU khám phá ngay hôm nay!', NULL, CAST(N'2024-11-13T00:00:00.000' AS DateTime), CAST(N'2024-11-16T00:00:00.000' AS DateTime), 2, CAST(30000.00 AS Decimal(10, 2)), N'N', 4, 1, 1, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (14, N'Tour du lịch mạo hiểm', N'Trải nghiệm hành trình tuyệt vời từ TP.HCM đến Paris, thủ đô ánh sáng với những điểm tham quan nổi bật như Khải Hoàn Môn, Tháp Eiffel và du thuyền trên sông Seine. Khám phá Nancy và Colmar với kiến trúc cổ kính, tiếp tục đến Lucerne và Zurich với hồ nước và cầu gỗ nổi tiếng. Đắm mình trong vẻ đẹp thơ mộng của Venice, chiêm ngưỡng Tháp Nghiêng Pisa và những công trình lịch sử tại Rome như Đấu Trường La Mã và Tòa thánh Vatican.  Cùng iVIVU khám phá ngay hôm nay!', NULL, CAST(N'2024-11-09T00:00:00.000' AS DateTime), CAST(N'2024-11-01T00:00:00.000' AS DateTime), 21, CAST(30000.00 AS Decimal(10, 2)), N'N', 0, 1, 1, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (15, N'Tour du lịch mạo hiểm', N'Trải nghiệm hành trình tuyệt vời từ TP.HCM đến Paris, thủ đô ánh sáng với những điểm tham quan nổi bật như Khải Hoàn Môn, Tháp Eiffel và du thuyền trên sông Seine. Khám phá Nancy và Colmar với kiến trúc cổ kính, tiếp tục đến Lucerne và Zurich với hồ nước và cầu gỗ nổi tiếng. Đắm mình trong vẻ đẹp thơ mộng của Venice, chiêm ngưỡng Tháp Nghiêng Pisa và những công trình lịch sử tại Rome như Đấu Trường La Mã và Tòa thánh Vatican.  Cùng iVIVU khám phá ngay hôm nay!', NULL, CAST(N'2024-11-09T00:00:00.000' AS DateTime), CAST(N'2024-11-01T00:00:00.000' AS DateTime), 21, CAST(30000.00 AS Decimal(10, 2)), N'N', 0, 1, 1, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (16, N'Tour du lịch mạo hiểm', N'Trải nghiệm hành trình tuyệt vời từ TP.HCM đến Paris, thủ đô ánh sáng với những điểm tham quan nổi bật như Khải Hoàn Môn, Tháp Eiffel và du thuyền trên sông Seine. Khám phá Nancy và Colmar với kiến trúc cổ kính, tiếp tục đến Lucerne và Zurich với hồ nước và cầu gỗ nổi tiếng. Đắm mình trong vẻ đẹp thơ mộng của Venice, chiêm ngưỡng Tháp Nghiêng Pisa và những công trình lịch sử tại Rome như Đấu Trường La Mã và Tòa thánh Vatican.  Cùng iVIVU khám phá ngay hôm nay!', NULL, CAST(N'2024-11-09T00:00:00.000' AS DateTime), CAST(N'2024-11-01T00:00:00.000' AS DateTime), 21, CAST(30000.00 AS Decimal(10, 2)), N'N', 0, 1, 1, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (17, N'Tour Đà Nẵng 1', N'Giảm giá 20%', NULL, CAST(N'2024-11-05T00:00:00.000' AS DateTime), CAST(N'2024-11-09T00:00:00.000' AS DateTime), 23, CAST(30000.00 AS Decimal(10, 2)), N'N', 0, 1, 1, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (18, N'Tour Đà Nẵng 12', N'Giảm giá 20%', NULL, CAST(N'2024-11-05T00:00:00.000' AS DateTime), CAST(N'2024-11-09T00:00:00.000' AS DateTime), 23, CAST(30000.00 AS Decimal(10, 2)), N'N', 0, 1, 1, N'Đang chờ', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (19, N'Tour du lịch mạo hiểm', N'Giảm giá 20%', NULL, CAST(N'2024-11-14T00:00:00.000' AS DateTime), CAST(N'2024-11-17T00:00:00.000' AS DateTime), 21, CAST(30000.00 AS Decimal(10, 2)), N'N', 0, 1, 1, N'Từ chối', NULL, NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (20, N'Du lịch Huế 3N2Đ', N'Huế, nằm bên dòng sông Hương êm đềm, là một trong những thành phố đẹp nhất Việt Nam, được mệnh danh là "miền đất của di sản và văn hóa". Với vẻ đẹp cổ kính, thơ mộng cùng bề dày lịch sử hàng trăm năm, Huế mang đến cho du khách những trải nghiệm đậm chất văn hóa, kiến trúc và phong cảnh thiên nhiên tuyệt đẹp.', N'th (1).jpg', CAST(N'2024-11-08T00:00:00.000' AS DateTime), CAST(N'2024-11-10T00:00:00.000' AS DateTime), 20, CAST(300000.00 AS Decimal(10, 2)), N'N', 0, 2, 1, N'Đang chờ', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (21, N'Du lịch Quảng Trị 2N1Đ', N'Quảng Trị, nằm ở miền Trung Việt Nam, là vùng đất in đậm dấu ấn lịch sử và văn hóa. Với vị trí chiến lược, nơi đây từng là chiến trường khốc liệt trong các cuộc chiến tranh bảo vệ tổ quốc. Ngày nay, Quảng Trị trở thành điểm đến thu hút du khách nhờ vào sự kết hợp hài hòa giữa di tích lịch sử, cảnh quan thiên nhiên và những nét đặc trưng văn hóa vùng miền.', N'th (4).jpg', CAST(N'2024-11-07T00:00:00.000' AS DateTime), CAST(N'2024-11-10T00:00:00.000' AS DateTime), 40, CAST(2000000.00 AS Decimal(10, 2)), N'N', 0, 1, 1, N'Đang chờ', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (22, N'Du lịch Quy Nhơn - Phú Yên 2N1Đ', N'Du lịch Quy Nhơn là một địa điểm du lịch nổi tiếng ở miền Trung, du lịch Quy Nhơn thành phố ven biển thuộc tỉnh Bình Định với cảnh sắc tuyệt đẹp, được bao quanh bởi nhiều bãi cát trắng hoang sơ, những ngọn núi xanh tươi bát ngát và những hòn đảo yên bình. Không giống như những bãi biển nhộn nhịp khác ở Vũng Tàu hay Nha Trang, Quy Nhơn lại là một bãi biển thiên đường du lịch mang vẻ đẹp yên bình với làn nước trong vắt. Hãy cùng Du Lịch Việt khám phá vẻ đẹp cùng những trải nghiệm thú vị tại Quy Nhơn mà du khách sẽ được trải nghiệm khi đến với thiên đường du lịch mùa Thu trong nước tại đây. Đón bình minh trên Eo Gió Nằm trên địa bàn thuộc xã Nhơn Lý, cách thành phố Quy Nhơn khoảng 20km, Eo Gió là địa danh mà bất cứ ai khi đến du lịch Quy Nhơn cũng đều muốn đến thăm, đừng trước khung cảnh tuyệt đẹp tại Eo gió du khách sẽ chỉ muốn thả dáng và check-in.', N'th (7).jpg', CAST(N'2024-11-10T00:00:00.000' AS DateTime), CAST(N'2024-11-12T00:00:00.000' AS DateTime), 23, CAST(700000.00 AS Decimal(10, 2)), N'N', 2, 1, 1, N'Đang chờ', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (23, N'Du lịch Vũng Tàu 2N1Đ', N'Vũng Tàu, một trong những điểm đến nổi tiếng nhất miền Nam Việt Nam, được thiên nhiên ban tặng cảnh sắc tuyệt đẹp với bờ biển dài, nước trong xanh và khí hậu mát mẻ quanh năm. Chỉ cách TP.HCM khoảng 2 giờ di chuyển, Vũng Tàu là điểm dừng chân lý tưởng cho những ai muốn tìm kiếm một không gian nghỉ dưỡng yên bình, gắn liền với biển cả.', N'popular3.jpg', CAST(N'2024-11-12T00:00:00.000' AS DateTime), CAST(N'2024-11-13T00:00:00.000' AS DateTime), 20, CAST(2000000.00 AS Decimal(10, 2)), N'N', 1, 2, 5, N'Đang chờ', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (24, N'Du lịch Bình Thuận 3N2Đ', N'Bình Thuận, nằm ở miền duyên hải Nam Trung Bộ, là một điểm đến hấp dẫn với thiên nhiên hoang sơ, biển xanh cát trắng, và văn hóa độc đáo. Vùng đất này là nơi hội tụ của những bãi biển đẹp nhất Việt Nam, những đồi cát vàng rực rỡ, và cả những di tích lịch sử lâu đời.', N'blog2.jpg', CAST(N'2024-11-14T00:00:00.000' AS DateTime), CAST(N'2024-11-16T00:00:00.000' AS DateTime), 27, CAST(300000.00 AS Decimal(10, 2)), N'N', 4, 1, 4, N'Đang chờ', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (25, N'Đà Lạt: Toàn cảnh bình minh, đồi chè xanh và dâu tây...', N'Ngắm bình minh ngoạn mục tại Cầu Đất Panorama và tham quan Đồi Trà Xanh Cầu Đất. Thưởng thức bữa sáng miễn phí và khuyến mãi đồ uống tại Lợi Cửa Gió.', N'th (10).jpg', CAST(N'2024-11-15T00:00:00.000' AS DateTime), CAST(N'2024-11-19T00:00:00.000' AS DateTime), 33, CAST(100000.00 AS Decimal(10, 2)), N'N', 4, 1, 2, N'Đã phê duyệt', N'5dbd1a05-2e87-4b33-9dcd-e742b4b9b8d8', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (26, N'Từ Vũng Tàu: Địa đạo Núi Đất, Long Tân, Long Phước', N'Tìm hiểu về lịch sử Chiến tranh Việt Nam trong chuyến tham quan từ Vũng Tàu. Tham quan Trường Mầm Non Núi Đất, Ngã Tư Long Tân và Địa Đạo Long Phước.', N'th (19).jpg', CAST(N'2024-11-15T00:00:00.000' AS DateTime), CAST(N'2024-11-19T00:00:00.000' AS DateTime), 44, CAST(200000.00 AS Decimal(10, 2)), N'N', 4, 1, 5, N'Đã phê duyệt', N'5dbd1a05-2e87-4b33-9dcd-e742b4b9b8d8', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (27, N'Từ Hà Nội: Ninh Bình, Tràng An, Bái Đính và Hang Múa', N'Đắm chìm trong văn hóa và lịch sử Việt Nam trong chuyến đi trong ngày từ Hà Nội đến Ninh Bình. Tham quan chùa Bái Đính, đi thuyền ngắm cảnh qua Tràng An và chiêm ngưỡng quang cảnh từ Hang Múa.', N'th (30).jpg', CAST(N'2024-11-15T00:00:00.000' AS DateTime), CAST(N'2024-11-20T00:00:00.000' AS DateTime), 33, CAST(300000.00 AS Decimal(10, 2)), N'N', 5, 3, 4, N'Đã phê duyệt', N'5dbd1a05-2e87-4b33-9dcd-e742b4b9b8d8', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (28, N'Tour Ngày Vịnh Hạ Long Bằng Du Thuyền 5 Sao Diamond, Buffet, Hang Động, Hồ Bơi', N'Bạn sẽ được chiêm ngưỡng vẻ đẹp của Hạ Long Heritages với du thuyền Diamond Luxury 5 sao có thiết kế sang trọng và thanh lịch. Du thuyền Diamond sẽ làm cho chuyến đi của bạn đến Vịnh Hạ Long trọn vẹn hơn. Chuyến tham quan có thể kéo dài khoảng 6 giờ cho tuyến 2. Du thuyền Diamond 5 sao có sức chứa 100 hành khách, với 2 nhà hàng lớn, trên tầng 1. Sản phẩm này có "Tiệc hoàng hôn", Tắm hoàng hôn và hồ bơi Jacuzzi. Khi đón, bạn sẽ được đưa bằng xe Limousine đưa đón 2 chiều bằng đường cao tốc. Bữa trưa tự chọn ngon miệng và đa dạng với các lựa chọn dành cho người ăn chay, hải sản và ẩm thực Việt Nam, và tất cả các khoản phí vào cửa đã bao gồm trong gói: Hang động, Đảo Titop, Chèo thuyền kayak, Các hoạt động và hướng dẫn viên nhiệt tình của chúng tôi trong suốt chuyến đi của bạn.', N'88.jpg', CAST(N'2024-11-15T00:00:00.000' AS DateTime), CAST(N'2024-11-20T00:00:00.000' AS DateTime), 33, CAST(300000.00 AS Decimal(10, 2)), N'N', 4, 3, 2, N'Đã phê duyệt', N'5dbd1a05-2e87-4b33-9dcd-e742b4b9b8d8', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (29, N'TOUR HUẾ 1 NGÀY CÓ HƯỚNG DẪN TỪ THÀNH PHỐ ĐÀ NẴNG', N'Hãy tự mình khám phá một trong những điểm tham quan được chụp ảnh nhiều nhất của Việt Nam trong chuyến đi trong ngày đến Cầu Vàng và Bà Nà Hills từ Đà Nẵng. Để người khác lái xe cho phép bạn ngồi lại và tận hưởng phong cảnh miền Trung Việt Nam, trong khi thời gian rảnh rỗi cho phép bạn linh hoạt khám phá công viên theo tốc độ của riêng mình.', N'69.jpg', CAST(N'2024-11-15T00:00:00.000' AS DateTime), CAST(N'2024-11-23T00:00:00.000' AS DateTime), 44, CAST(500000.00 AS Decimal(10, 2)), N'N', 2, 1, 1, N'Đã phê duyệt', N'5dbd1a05-2e87-4b33-9dcd-e742b4b9b8d8', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (30, N'Du lịch Hà Nội 3N2Đ', N'Hà Nội, thủ đô ngàn năm tuổi của Việt Nam, là một thành phố đầy chất thơ với sự hòa quyện giữa nét cổ kính và hiện đại. Nơi đây không chỉ lưu giữ những dấu ấn lịch sử hào hùng mà còn là điểm đến hấp dẫn với những cảnh quan đẹp, nền văn hóa phong phú, và ẩm thực độc đáo.', N'6d.jpg', CAST(N'2024-11-21T00:00:00.000' AS DateTime), CAST(N'2024-11-23T00:00:00.000' AS DateTime), 20, CAST(2500000.00 AS Decimal(10, 2)), N'N', 3, 2, 4, N'Đang chờ', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (31, N'Tour du lịch Bến Tre 1 ngày đích thực ''Ít khách du lịch'' Đồng bằng sông Cửu Long', N'Khám phá khía cạnh không dành cho khách du lịch của Đồng bằng sông Cửu Long trong tour du lịch có hướng dẫn viên trọn ngày này với một nhóm nhỏ. Tận hưởng dịch vụ đón khách từ khách sạn tại Thành phố Hồ Chí Minh và đi bằng xe có máy lạnh đến Bến Tre. Đi thuyền dọc theo Sông Cửu Long, tham quan nhà máy gạch và trang trại dừa, đạp xe qua vùng nông thôn và thưởng thức bữa trưa tại nhà dân địa phương.', N'khudulichlanphuong.jpg', CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-12T00:00:00.000' AS DateTime), 21, CAST(500000.00 AS Decimal(10, 2)), N'N', 4, 1, 2, N'Đã phê duyệt', N'9ee13761-cc61-46d1-97c6-0bb93d1bf5c5', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (32, N'Du lịch Đà Lạt 3N2Đ', N'Khu nghỉ dưỡng thuộc địa cũ này là nơi nghỉ ngơi tránh xa cái nóng quanh năm của miền Nam Việt Nam. Thị trấn này có rất nhiều tòa nhà thời Pháp tuyệt đẹp và được bao quanh bởi những cây thông và trang trại trồng rau và hoa kỳ lạ. Thật đáng để đi chỉ để trốn cái', N'camtucau.jpg', CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-10T00:00:00.000' AS DateTime), 21, CAST(2000000.00 AS Decimal(10, 2)), N'N', 4, 1, 2, N'Đang chờ', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (33, N'Du lịch Bến Tre', N'Bến Tre, được mệnh danh là "xứ dừa", là một trong những điểm đến hấp dẫn nhất tại miền Tây Nam Bộ Việt Nam. Với vẻ đẹp yên bình của sông nước, những rặng dừa xanh ngút ngàn và con người mộc mạc, thân thiện, Bến Tre mang đến cho du khách những trải nghiệm khó quên khi hòa mình vào thiên nhiên và văn hóa đặc trưng của miền Tây.', N'bienconbung2.jpg', CAST(N'2024-12-11T00:00:00.000' AS DateTime), CAST(N'2024-12-11T00:00:00.000' AS DateTime), 20, CAST(500000.00 AS Decimal(10, 2)), N'N', 3, 1, 1, N'Đang chờ', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (34, N'Du lịch Phú Quốc 5N4Đ', N'Phú Quốc, được mệnh danh là "đảo ngọc", là hòn đảo lớn nhất Việt Nam thuộc tỉnh Kiên Giang. Nằm trong vịnh Thái Lan, nơi đây nổi tiếng với những bãi biển hoang sơ, rừng nguyên sinh, và các đặc sản độc đáo. Với khí hậu ôn hòa quanh năm, Phú Quốc là thiên đường du lịch thu hút hàng triệu du khách trong và ngoài nước.', N'vinpearl2.jpg', CAST(N'2024-12-10T00:00:00.000' AS DateTime), CAST(N'2024-12-14T00:00:00.000' AS DateTime), 45, CAST(5500000.00 AS Decimal(10, 2)), N'N', 4, 2, 4, N'Đã phê duyệt', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (35, N'Du lịch Hội An 3N2Đ', N'Hội An, một thành phố cổ kính nằm bên bờ sông Thu Bồn, là điểm đến nổi bật của miền Trung Việt Nam. Được UNESCO công nhận là Di sản Văn hóa Thế giới, Hội An thu hút du khách bởi vẻ đẹp hòa quyện giữa văn hóa, lịch sử và cảnh sắc thiên nhiên. Nơi đây mang đến một không gian yên bình, tĩnh lặng nhưng không kém phần quyến rũ.', N'thuyencoden - Copy.jpg', NULL, NULL, 20, CAST(3500000.00 AS Decimal(10, 2)), N'N', 3, 2, 3, N'Đang chờ', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (36, N'Du lịch Nha Trang 3N2Đ', N'Nha Trang, được biết đến là một trong những thành phố biển đẹp nhất Việt Nam, nổi bật với những bãi cát trắng dài, làn nước biển xanh biếc và khí hậu ôn hòa quanh năm. Nằm ở tỉnh Khánh Hòa, Nha Trang không chỉ là thiên đường nghỉ dưỡng mà còn là điểm đến văn hóa, lịch sử và ẩm thực phong phú, làm say đắm lòng du khách.', N'bien2.jpg', CAST(N'2024-12-10T00:00:00.000' AS DateTime), CAST(N'2024-12-12T00:00:00.000' AS DateTime), 20, CAST(3500000.00 AS Decimal(10, 2)), N'N', 4, 1, 3, N'Đã phê duyệt', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (37, N'Du lịch Cà Mau 2N1Đ', N'Cà Mau, tọa lạc tại điểm cực Nam của Việt Nam, là nơi giao thoa giữa đất liền và biển cả, nơi sông nước hòa quyện với rừng đước xanh thẳm. Với vẻ đẹp mộc mạc và những giá trị văn hóa, lịch sử độc đáo, Cà Mau không chỉ là niềm tự hào của người dân miền Tây mà còn là điểm đến hấp dẫn cho những ai yêu thích khám phá thiên nhiên và trải nghiệm cuộc sống vùng sông nước.', N'cotco.jpg', CAST(N'2024-12-06T00:00:00.000' AS DateTime), CAST(N'2024-12-07T00:00:00.000' AS DateTime), 21, CAST(2000000.00 AS Decimal(10, 2)), N'N', 3, 1, 4, N'Đã phê duyệt', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (38, N'Du lịch Tây Ninh 2N1Đ', N'Tây Ninh, nằm ở miền Đông Nam Bộ Việt Nam, là điểm đến hấp dẫn bởi sự hòa quyện giữa vẻ đẹp thiên nhiên hoang sơ, những công trình kiến trúc độc đáo và bề dày văn hóa, lịch sử. Được biết đến như trung tâm của đạo Cao Đài, Tây Ninh còn là nơi có nhiều danh thắng nổi bật và các hoạt động du lịch thú vị.', N'toathanh.jpg', CAST(N'2024-12-12T00:00:00.000' AS DateTime), CAST(N'2024-12-13T00:00:00.000' AS DateTime), 20, CAST(1500000.00 AS Decimal(10, 2)), N'N', 2, 1, 2, N'Đã phê duyệt', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (39, N'Du lịch Đà Nẵng 3N2Đ', N'Đà Nẵng, một trong những thành phố lớn và phát triển nhất Việt Nam, nổi bật với vẻ đẹp thiên nhiên kỳ vĩ, bãi biển xanh mát, và sự pha trộn hoàn hảo giữa nét hiện đại và những giá trị văn hóa truyền thống. Với vị trí thuận lợi, Đà Nẵng là điểm đến hấp dẫn cho những ai yêu thích khám phá, nghỉ dưỡng và tìm hiểu văn hóa miền Trung.', N'copphunnuoc.jpg', CAST(N'2024-12-10T00:00:00.000' AS DateTime), CAST(N'2024-12-12T00:00:00.000' AS DateTime), 21, CAST(5000000.00 AS Decimal(10, 2)), N'N', 4, 1, 3, N'Đã phê duyệt', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (40, N'Du lịch Quảng Ninh 3N2Đ', NULL, N'caubaichay.jpg', CAST(N'2024-12-15T00:00:00.000' AS DateTime), CAST(N'2024-12-17T00:00:00.000' AS DateTime), 20, CAST(3500000.00 AS Decimal(10, 2)), N'N', 3, 1, 5, N'Đã phê duyệt', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (41, N'Du lịch Quảng Nam 3N2Đ', N'Quảng Nam là một tỉnh nằm ở miền Trung Việt Nam, nổi bật với vẻ đẹp thiên nhiên hoang sơ, các di tích lịch sử và văn hóa đặc sắc, cùng những bãi biển xinh đẹp. Tỉnh này không chỉ là nơi lưu giữ các giá trị văn hóa truyền thống mà còn có cảnh quan thiên nhiên tuyệt vời, thu hút du khách trong và ngoài nước.', N'baotang2.jpg', CAST(N'2024-12-11T00:00:00.000' AS DateTime), CAST(N'2024-12-13T00:00:00.000' AS DateTime), 21, CAST(2000000.00 AS Decimal(10, 2)), N'N', 3, 1, 3, N'Đã phê duyệt', N'7367898b-a952-411d-b2cd-a9a62f14b26d', NULL)
INSERT [dbo].[TOUR] ([ID_TOUR], [NAME], [DESCRIPTION], [IMAGE], [START_DATE], [END_DATE], [MAX_QUANTITY], [PRICE], [IS_DELETE], [ID_TYPE], [ID_TRANS], [ID_HOTEL], [ApprovalStatus], [IdUser], [IdUserNavigationId]) VALUES (42, N'Tour du lịch mạo hiểm', N'Mạo hiểm và thử thách bản thân', N'vinhhalong.jpg', CAST(N'2024-12-12T00:00:00.000' AS DateTime), CAST(N'2024-12-18T00:00:00.000' AS DateTime), 21, CAST(500000.00 AS Decimal(10, 2)), N'N', 4, 1, 1, N'Chờ Duyệt', N'9ee13761-cc61-46d1-97c6-0bb93d1bf5c5', NULL)
GO
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (1, 1, N'Ngày 1: Đến nơi; Ngày 2: Tham quan thành phố; Ngày 3: Khởi hành')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (2, 2, N'Ngày 1: Tham quan chùa; Ngày 2: Tham quan Phố cổ Hội An; Ngày 3: Viếng thăm lăng Chủ tịch Hồ Chí Minh')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (3, 3, N'Ngày 1: Đi bộ thác Datanla; Ngày 2: Đi săn mây; Ngày 3: Tour văn hóa')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (4, 4, N'Ngày 1: Tham quan thác tình yêu; Ngày 2: Đi Pơ Mu Sapa ; Ngày 3: Chụp ảnh ở cổng trời Sapa')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (5, 5, N'Ngày 1: Tham quan đồi cát; Ngày 2: Đi ăn uống ở chợ Phan Thiết ; Ngày 3: Đi chụp ảnh ở quán cà phê')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (23, 15, N'Ngày 1: Tham quan đồi cát; Ngày 2: Đi ăn uống ở chợ Phan Thiết ; Ngày 3: Đi chụp ảnh ở quán cà phê')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (27, 2, N'Ngày 1: Tham quan đồi cát; Ngày 2: Đi ăn uống ở chợ Phan Thiết ; Ngày 3: Đi chụp ảnh ở quán cà phê')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (28, 7, N'Ngày 1: Tham quan đồi cát; Ngày 2: Đi ăn uống ở chợ Phan Thiết ; Ngày 3: Đi chụp ảnh ở quán cà phê')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (29, 12, N'Ngày 1: Tham quan đồi cát; Ngày 2: Đi ăn uống ở chợ Phan Thiết ; Ngày 3: Đi chụp ảnh ở quán cà phê')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (33, 13, N'Ngày 1: Tham quan đồi cát; Ngày 2: Đi ăn uống ở chợ Phan Thiết ; Ngày 3: Đi chụp ảnh ở quán cà phê')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (34, 6, N'Ngày 1: Tham quan đồi cát; Ngày 2: Đi ăn uống ở chợ Phan Thiết ; Ngày 3: Đi chụp ảnh ở quán cà phê')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (36, 8, N'Ngày 1: Tham quan đồi cát; Ngày 2: Đi ăn uống ở chợ Phan Thiết ; Ngày 3: Đi chụp ảnh ở quán cà phê')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (37, 9, N'Ngày 1: Tham quan đồi cát; Ngày 2: Đi ăn uống ở chợ Phan Thiết ; Ngày 3: Đi chụp ảnh ở quán cà phê')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (38, 11, N'Ngày 1: Tham quan đồi cát; Ngày 2: Đi ăn uống ở chợ Phan Thiết ; Ngày 3: Đi chụp ảnh ở quán cà phê')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (39, 1, N'Ngày 1: Tham quan đồi cát; Ngày 2: Đi ăn uống ở chợ Phan Thiết ; Ngày 3: Đi chụp ảnh ở quán cà phê')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (40, 7, N'Ngày 1: Tham quan đồi cát; Ngày 2: Đi ăn uống ở chợ Phan Thiết ; Ngày 3: Đi chụp ảnh ở quán cà phê')
INSERT [dbo].[TOUR_DETAILS] ([ID_TOUR], [ID_DES], [ITINERARY]) VALUES (41, 10, N'Ngày 1: Tham quan đồi cát; Ngày 2: Đi ăn uống ở chợ Phan Thiết ; Ngày 3: Đi chụp ảnh ở quán cà phê')
GO
INSERT [dbo].[TRANSPORTATION] ([ID_TRANS], [NAME], [TYPE], [SEAT_AVAILABILITY]) VALUES (1, N'Xe buýt', N'Bus', 40)
INSERT [dbo].[TRANSPORTATION] ([ID_TRANS], [NAME], [TYPE], [SEAT_AVAILABILITY]) VALUES (2, N'Máy bay', N'Airplane', 150)
INSERT [dbo].[TRANSPORTATION] ([ID_TRANS], [NAME], [TYPE], [SEAT_AVAILABILITY]) VALUES (3, N'Tàu lửa', N'Train', 100)
INSERT [dbo].[TRANSPORTATION] ([ID_TRANS], [NAME], [TYPE], [SEAT_AVAILABILITY]) VALUES (4, N'Tàu thuyền', N'Ship', 200)
GO
INSERT [dbo].[TYPE_OF_FACILITY] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (1, N'Hồ bơi', N'Hồ bơi ngoài trời')
INSERT [dbo].[TYPE_OF_FACILITY] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (2, N'Phòng gym', N'Phòng tập thể dục')
INSERT [dbo].[TYPE_OF_FACILITY] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (3, N'Sân tennis', N'Sân tennis tiêu chuẩn')
INSERT [dbo].[TYPE_OF_FACILITY] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (4, N'Spa', N'Dịch vụ spa thư giãn')
GO
INSERT [dbo].[TYPE_OF_ROOM] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (1, N'Phòng đơn', N'Phòng cho 1 người')
INSERT [dbo].[TYPE_OF_ROOM] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (2, N'Phòng đôi', N'Phòng cho 2 người')
INSERT [dbo].[TYPE_OF_ROOM] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (3, N'Phòng gia đình', N'Phòng cho gia đình')
INSERT [dbo].[TYPE_OF_ROOM] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (4, N'Phòng suite', N'Phòng cao cấp')
GO
INSERT [dbo].[TYPE_OF_SERVICE] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (1, N'Dịch vụ giặt là', N'Dịch vụ giặt là hàng ngày')
INSERT [dbo].[TYPE_OF_SERVICE] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (2, N'Dịch vụ ăn uống', N'Dịch vụ cung cấp bữa ăn')
INSERT [dbo].[TYPE_OF_SERVICE] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (3, N'Dịch vụ trông trẻ', N'Dịch vụ trông trẻ cho gia đình có trẻ em')
INSERT [dbo].[TYPE_OF_SERVICE] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (4, N'Dịch vụ xe đưa đón', N'Dịch vụ xe đưa đón tại sân bay')
GO
INSERT [dbo].[TYPE_OF_TOUR] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (0, N'Tour sinh tồn', N'Mạo hiểm và thử thách bản thân')
INSERT [dbo].[TYPE_OF_TOUR] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (1, N'Tour mạo hiểm', N'Mạo hiểm với những thử thách')
INSERT [dbo].[TYPE_OF_TOUR] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (2, N'Tour du lịch núi', N'Chinh phục những ngọn núi cao trên đất nước')
INSERT [dbo].[TYPE_OF_TOUR] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (3, N'Tour khám phá', N'Khám phá những điều còn bí ẩn')
INSERT [dbo].[TYPE_OF_TOUR] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (4, N'Tour nghỉ dưỡng', N'Nghỉ giải lao sau những giờ làm việc vất vả')
INSERT [dbo].[TYPE_OF_TOUR] ([ID_TYPE], [NAME], [DESCRIPTION]) VALUES (5, N'Tour ẩm thực', N'Thưởng thức những món ăn đặc sản vùng miền')
GO
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'025e62d8-8412-4cbb-a642-52a5a513145b', 2, NULL)
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'025e62d8-8412-4cbb-a642-52a5a513145b', 3, NULL)
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'025e62d8-8412-4cbb-a642-52a5a513145b', 20, NULL)
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'025e62d8-8412-4cbb-a642-52a5a513145b', 21, NULL)
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'025e62d8-8412-4cbb-a642-52a5a513145b', 22, NULL)
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'025e62d8-8412-4cbb-a642-52a5a513145b', 26, NULL)
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'025e62d8-8412-4cbb-a642-52a5a513145b', 39, NULL)
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'145a8d7e-ae1f-4268-8e37-6fe8dad37feb', 34, NULL)
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'25586438-758f-47f2-9bc9-783eeb1c0e37', 39, NULL)
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'689f16b3-d666-444c-b46b-a73fb2fd9cb9', 39, NULL)
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'6d08ecd5-f643-4904-84fb-1f19095a4c7d', 21, NULL)
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'7367898b-a952-411d-b2cd-a9a62f14b26d', 2, NULL)
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'A7A7F0CA-9F57-4CED-B9AA-6E1792C7F330', 4, CAST(N'2024-09-30T00:00:00.000' AS DateTime))
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'A7A7F0CA-9F57-4CED-B9AA-6E1792C7F330', 5, CAST(N'2024-09-30T00:00:00.000' AS DateTime))
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'a966be3a-2569-45e8-97ae-811049be53d3', 36, NULL)
INSERT [dbo].[USERS_FAVORITE_TOUR] ([Id], [ID_TOUR], [CREATED_AT]) VALUES (N'a966be3a-2569-45e8-97ae-811049be53d3', 38, NULL)
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [fullname]
GO
ALTER TABLE [dbo].[Blog] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Blog] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[Images] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Author] FOREIGN KEY([id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Author]
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD FOREIGN KEY([ID_HOTEL])
REFERENCES [dbo].[HOTEL] ([ID_HOTEL])
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD FOREIGN KEY([ID_STATUS])
REFERENCES [dbo].[BOOKING_STATUS] ([ID_STATUS])
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD FOREIGN KEY([ID_TOUR])
REFERENCES [dbo].[TOUR] ([ID_TOUR])
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD  CONSTRAINT [FK_BOOKING_INVOICE_InvoiceNavigationIdInvoice] FOREIGN KEY([InvoiceNavigationIdInvoice])
REFERENCES [dbo].[INVOICE] ([ID_INVOICE])
GO
ALTER TABLE [dbo].[BOOKING] CHECK CONSTRAINT [FK_BOOKING_INVOICE_InvoiceNavigationIdInvoice]
GO
ALTER TABLE [dbo].[CHAT]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD FOREIGN KEY([ID_TOUR])
REFERENCES [dbo].[TOUR] ([ID_TOUR])
GO
ALTER TABLE [dbo].[FACILITY]  WITH CHECK ADD FOREIGN KEY([ID_TYPE])
REFERENCES [dbo].[TYPE_OF_FACILITY] ([ID_TYPE])
GO
ALTER TABLE [dbo].[HostRegistrations]  WITH CHECK ADD  CONSTRAINT [FK_HostRegistrations_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HostRegistrations] CHECK CONSTRAINT [FK_HostRegistrations_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD FOREIGN KEY([ID_TOUR])
REFERENCES [dbo].[TOUR] ([ID_TOUR])
GO
ALTER TABLE [dbo].[PAYMENT]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PAYMENT_INVOICE]  WITH CHECK ADD FOREIGN KEY([ID_INVOICE])
REFERENCES [dbo].[INVOICE] ([ID_INVOICE])
GO
ALTER TABLE [dbo].[PAYMENT_INVOICE]  WITH CHECK ADD FOREIGN KEY([ID_PAYMENT])
REFERENCES [dbo].[PAYMENT] ([ID_PAYMENT])
GO
ALTER TABLE [dbo].[PROMOTION]  WITH CHECK ADD FOREIGN KEY([ID_HOTEL])
REFERENCES [dbo].[HOTEL] ([ID_HOTEL])
GO
ALTER TABLE [dbo].[PROMOTION]  WITH CHECK ADD FOREIGN KEY([ID_TOUR])
REFERENCES [dbo].[TOUR] ([ID_TOUR])
GO
ALTER TABLE [dbo].[PROMOTION_USER]  WITH CHECK ADD FOREIGN KEY([ID_PMT])
REFERENCES [dbo].[PROMOTION] ([ID_PMT])
GO
ALTER TABLE [dbo].[PROMOTION_USER]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[REPORT]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[REPORT]  WITH CHECK ADD FOREIGN KEY([ID_TOUR])
REFERENCES [dbo].[TOUR] ([ID_TOUR])
GO
ALTER TABLE [dbo].[ROOM]  WITH CHECK ADD FOREIGN KEY([ID_HOTEL])
REFERENCES [dbo].[HOTEL] ([ID_HOTEL])
GO
ALTER TABLE [dbo].[ROOM]  WITH CHECK ADD FOREIGN KEY([ID_TYPE])
REFERENCES [dbo].[TYPE_OF_ROOM] ([ID_TYPE])
GO
ALTER TABLE [dbo].[ROOM_DETAIL]  WITH CHECK ADD FOREIGN KEY([ID_FACILITY])
REFERENCES [dbo].[FACILITY] ([ID_FACILITY])
GO
ALTER TABLE [dbo].[ROOM_DETAIL]  WITH CHECK ADD FOREIGN KEY([ID_ROOM])
REFERENCES [dbo].[ROOM] ([ID_ROOM])
GO
ALTER TABLE [dbo].[SERVICE]  WITH CHECK ADD  CONSTRAINT [] FOREIGN KEY([ID_TOUR])
REFERENCES [dbo].[TOUR] ([ID_TOUR])
GO
ALTER TABLE [dbo].[SERVICE] CHECK CONSTRAINT []
GO
ALTER TABLE [dbo].[SERVICE]  WITH CHECK ADD FOREIGN KEY([ID_HOTEL])
REFERENCES [dbo].[HOTEL] ([ID_HOTEL])
GO
ALTER TABLE [dbo].[SERVICE]  WITH CHECK ADD FOREIGN KEY([ID_TYPE])
REFERENCES [dbo].[TYPE_OF_SERVICE] ([ID_TYPE])
GO
ALTER TABLE [dbo].[TOUR]  WITH CHECK ADD FOREIGN KEY([ID_HOTEL])
REFERENCES [dbo].[HOTEL] ([ID_HOTEL])
GO
ALTER TABLE [dbo].[TOUR]  WITH CHECK ADD FOREIGN KEY([ID_TRANS])
REFERENCES [dbo].[TRANSPORTATION] ([ID_TRANS])
GO
ALTER TABLE [dbo].[TOUR]  WITH CHECK ADD FOREIGN KEY([ID_TYPE])
REFERENCES [dbo].[TYPE_OF_TOUR] ([ID_TYPE])
GO
ALTER TABLE [dbo].[TOUR]  WITH CHECK ADD  CONSTRAINT [FK_TOUR_AspNetUsers_IdUserNavigationId] FOREIGN KEY([IdUserNavigationId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[TOUR] CHECK CONSTRAINT [FK_TOUR_AspNetUsers_IdUserNavigationId]
GO
ALTER TABLE [dbo].[TOUR_DETAILS]  WITH CHECK ADD FOREIGN KEY([ID_DES])
REFERENCES [dbo].[DESTINATION] ([ID_DES])
GO
ALTER TABLE [dbo].[TOUR_DETAILS]  WITH CHECK ADD FOREIGN KEY([ID_TOUR])
REFERENCES [dbo].[TOUR] ([ID_TOUR])
GO
ALTER TABLE [dbo].[USERS_FAVORITE_TOUR]  WITH CHECK ADD FOREIGN KEY([ID_TOUR])
REFERENCES [dbo].[TOUR] ([ID_TOUR])
GO
ALTER TABLE [dbo].[USERS_FAVORITE_TOUR]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
