USE [master]
GO
/****** Object:  Database [RMS]    Script Date: 7/4/2018 3:29:04 PM ******/
CREATE DATABASE [RMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\RMS.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\RMS_log.ldf' , SIZE = 2560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RMS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [RMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RMS] SET RECOVERY FULL 
GO
ALTER DATABASE [RMS] SET  MULTI_USER 
GO
ALTER DATABASE [RMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RMS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [RMS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'RMS', N'ON'
GO
USE [RMS]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[MatricNumber] [nvarchar](max) NULL,
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
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Unit] [int] NOT NULL,
	[LevelId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grade]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[Id] [int] NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[LowerLimit] [int] NOT NULL,
	[UpperLimit] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Level]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime] NOT NULL CONSTRAINT [DF_Level_CreatedAt]  DEFAULT (getdate()),
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Result]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[SectionId] [int] NOT NULL,
	[StudentId] [nvarchar](128) NOT NULL,
	[Score] [int] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Section]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedAt] [date] NOT NULL CONSTRAINT [DF_Section_CreatedAt]  DEFAULT (getdate()),
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Section_IsActive]  DEFAULT ((0)),
	[LevelId] [int] NOT NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Semeter]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semeter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_Semeter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] NOT NULL,
	[SectionId] [int] NOT NULL,
	[LevelId] [int] NOT NULL,
	[MatricNumber] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentCourseAssign]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentCourseAssign](
	[Id] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[MatricNumber] [int] NOT NULL,
	[SectionId] [int] NOT NULL,
	[CreatedAt] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 7/4/2018 3:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Question] [text] NULL,
	[Answer] [text] NULL,
	[CreatedAt] [date] NOT NULL CONSTRAINT [DF_User_CreatedAt]  DEFAULT (getdate()),
	[IsAdmin] [bit] NOT NULL CONSTRAINT [DF_User_IsAdmin]  DEFAULT ((0)),
	[IsActiveEO] [bit] NOT NULL CONSTRAINT [DF_User_IsActiveEO]  DEFAULT ((0)),
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201805221635314_New', N'RMS.Migrations.Configuration', 0x1F8B0800000000000400DD5C5B6FE4B6157E2FD0FF20E8A92D9C912FDDC5D69849E08CEDD6A86FD8F1067D5B7024CE5858899A489463A3C82FEB437E52FE424989927895A819CDC54180C0431E7EE7F0F0903CA43EEEEFFFFB6DFCC36B1C392F30CDC2044DDC93D1B1EB40E4274188961337C78BEF3EB93F7CFFE73F8DAF82F8D5F9A9923BA372A425CA26EE33C6AB73CFCBFC6718836C14877E9A64C9028FFC24F6409078A7C7C7FFF04E4E3C48205C82E538E3CF39C2610C8B1FE4E734413E5CE11C44774900A38C95939A5981EADC8318662BE0C389FBF96E362AA45CE7220A01316006A385EB0084120C3031EFFC4B0667384DD072B62205207A7A5B4122B700510699D9E78DB86D0F8E4F690FBCA66105E5E7194EE29E802767CC259EDC7C2DC7BAB5CB88D3AE8873F11BED75E1B8897B13C0A2E873121107C80ACFA7514A8527EE5DADE2225BDD433CAA1A8E4AC8EB94C0FD92A4DF463CE29163DDEEA80EA1D3D131FDEFC899E611CE53384130C729888E9CC77C1E85FEBFE1DB53F20DA2C9D9C97C71F6E9C347109C7DFC3B3CFBC0F794F495C80905A4E8314D563025B6C145DD7FD7F1C4769EDCB06EC6B529BD426289CC06D7B903AFB7102DF1339927A79F5CE73A7C854155C282EB0B0AC9E4218D709A939FF77914817904EB7AAF5527FD7F8BD6D30F1F07D17A0F5EC26531F4927E3271D2CC753EC3A8A8CD9EC35539BD84F1FECAC4AED324A6BFC5F82A6BBFCE923CF5696712A3C8134897108BD68DBD2678AD429A420D1FD615EAE18736B5540D6FAD28EDD03A33A152B1EBD950D9BB5DBDD61177B15A91C12B428B7AA42DE0EA3D6A24353A724855132927B69182480FFEC80BDF2DC870C7E247FEB4D2DCAEE83A4C77A4E90E1064FF3E8FE73456B6ACEC2A066134C0CE61A185E46A8B308D611D253F26649E02D47BCC1F4196918533F817C89EB7EEA019F4F394CCE71906F16AEBDA1E9F13047734F49CAEC186E6E997E41AF83849AF106DB531DE6DE27F4B727C85824B80E117EC5780F4E75318DB030C62CE85EFC32CBB26C10C8369428E2215E00DC267A7BDE1E8C2BEEFCC6D1A8130D6A76ED216F4B5126DD237BD8492C219C474695C9BA9B7C9324476A656A266534B894E5399585F5329989DA54CD26C6821D06967293558625C8CD0F09971017BF8A9F166C98F692DE0DC38232B24FC27443025CB58F0083086296A46C066DDD847B2550C1F55BAF5BDA9D0F41388F2A155AD351B8A4560F8D950C01EFE6C28CC24C52F6140B3128BF362254CE0ADE4F547D1EE392759B6EBE9207473D7CA77B30698A6CB4596257E58CC02CD4D21BBE711ED27399CD37DE953F646BE38221D23811ED22D8F9490BEB972503DA04B18410C9D0BBFBC499D82CC0781EA46D2A1A08761D58EAA31ACB940128DFB9BA293443A4C6923400F411999A921C2EAB408911FAE40D4E925A9A5E51646FB5EEB906B2EE10A22AAB0D31336CAF5F745D4805A8F34285D1E1A7B5CC4B507A2216B358D79570ADB8CBB728DB39398ECC89D0D71C9F2B7AD0466BBC776109CED2EB131C078F7B98F00656715DB00900F2E8716A0D289C910A02CA5DA49808A1EDB43808A2E7977015A1E516DC75F3AAF1E5A788A07E5DD6FEBADEEDA436C0AFE38B0D02C734FD20693163055C3F3724E2BE12BD61CCE889DEC7C96B154570E110A3E8358BCB269F25D6D1EEAB583C841D406D8045A0728FB6AAA002913AA8771D55D5EAB752C8BE8015BDDBBB5C2B2B55F82E56240C5E6BF1E7382E66FCC72705A9D3EEA9ED5D1A004B9D56181C3D10484BC78891DB7708AE95E56758C4D2EDC271BE63AC606A3C5411D99ABC149556706F752159ADD5ED225647D52B28DBC24A54F062F559D19DC4B2C46BB9DA4490A7AA4051BB948DCC2079A6CD54D47BDDBD47563AFE492B182B167209D8DEFC06A15A22547426325CEAC64A04DBF9BF5E768C52586E7671AAA566D6DAD0927295842A996A82696169FB02F01067340EF79A641AC8869F756C3F25FA9E4B74F7510AB7DA092A67FB31635D741D862D51C8435BD261D8B692253DC9E6B865DDFDCA15C4010815473613F4DA23C46E6BCCADCBAFC6CC7B72F4B5484B127D9AFE44D8A9394EC56F4B8D578A87361B3B1A9B395F5C7C70C61F272956BF27E36E59F6694EA3A8A47315D51ED6DBC4C698BCD18C98960FF21EA44D8CE2C6AD83B3C46536A8FC4D1737828AED81E4B24E0F070628D3D2263D9F050ACA8270647D450C0B83A7B54914BC3638A35F6881261868794AA7A58C9D3620423F98AB5F00C1ED54BD86B5089303CBA5ADB63CEA8941861F2A8D56B606B6C96EBEC5135AC191E58536D8FDD5068E43DE280F763E331ACEF865C1ED037DB910D18DB59F087D9D0391E020FC415F7C4624C03058C951F6410194FA97D83A8BC8ED92C880C18E67546F8702F2E33AD6C0333A6F0355E58CADBD80866BC7EA1BAD58050CEA6B248ADBD3EA34A67D1313B1776BF92520E8AA588EB546E24DBF85B86613CA202A3D9CFD1340A215DB42B813B80C205CC70C940714F8F4F4EA5175787F3FAC9CBB220D29CAB4D4FA0C431DB01990CBD80D47F06A94AEDD8E0855003AADC9ADFA000BE4EDCFF16ADCE8B0B18FA57517CE4DC645F50F8734E2A9ED21C3ABFAA54D5615E4C58BCD1A90DFDF55D3C7EB177F9CD7FBE964D8F9C87944CA773E75872F43AC32F3E89E9654DD974036BD67E28F37E679BFC2CA502FE4B0C5EFFCAA3ADF5F4642334DDF3928D008527245A0F4A2BC3FA2F46E6211EE4B5C846FDD5BE08D90851F3EA6328BC415C687AD5B10E96F14547407EE2E24547BFCEEA5F78AC639AF1754788FA83C96F3BEC97DCAAE51EF75CCD997017CB6FE1E74E6EFC4644D97DEFC30A857EA389AED2E47BC00D4A85DF2C1D7B6714F3C1D2040D837C30EC7DC6FDD669E387C2146F0E28FB2588EF9213DEF225F00F45053F00F2A2868CB57FC2F7AE63CD74C97DE0ACD97EB4EE030B36B6CDEF9FBCBDEB60335D861F78B0F5A2681F58ACED6BFFDC73A4596FA17B275CABDC31C3C72ADD8D7917A1BAFCBC408EFFF3840441995196EF60F50CBE36F67187C246C4ACD44C1D94152B1347D1AB48B4ABEDD757B6E1B77696C9B4AB35106EDB74B3F5BF55379369D76DA0B1EE830AAE2592EAE8F91DEB581BEFED3D51BF859E74BC34E8CA595B9907EF89E93D885384D963F892FE7E88DD83B864C8A9D383C8AD7E14277B27F70F8C92FD3B0B970D04FDE74611F4855DB396B9418BA4DABC258B2A11F94B0CC420205BEA458AC305F031A9A617D0C543FEE2528F7E0699C3E0063DE4789563D26518CF23E1C28B26016DFA0BB6BA68F3F861457F654374819819D28BFB07F4631E46416DF7B5E64EC80041B30B76DD4BC712D36BDFE55B8D749F204B20E6BE3A297A82F12A2260D9039A8117B88E6D24FC6EE112F86FCD0DA009A47B2044B78F2F43B04C419C318CA63DF9496238885FBFFF3F4549E08667570000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'b7029936-6c00-4dd1-bee3-f4d852016e61', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1e16771f-b225-4735-8cc4-8a46babaf75d', N'Student')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'4e0e9e3b-0dea-428e-9f90-6b10e939b544', N'SuperAdmin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5fc100de-ee21-4466-a514-77277ae8e9f0', N'1e16771f-b225-4735-8cc4-8a46babaf75d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'71da4847-6878-4895-a2a5-0e3b26ac3e55', N'1e16771f-b225-4735-8cc4-8a46babaf75d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'90bcb2f9-9181-493c-8463-49d67ac78d04', N'1e16771f-b225-4735-8cc4-8a46babaf75d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a56c7eeb-ef8a-4a8e-a21d-bd0abeab3ed6', N'4e0e9e3b-0dea-428e-9f90-6b10e939b544')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4c77c94b-86d5-41de-b00d-21805b71e9e5', N'b7029936-6c00-4dd1-bee3-f4d852016e61')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'68f0d381-b136-4b40-b66a-be03dae7121a', N'b7029936-6c00-4dd1-bee3-f4d852016e61')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ab1d177d-7ac8-42a7-9696-3ebc8b8282d5', N'b7029936-6c00-4dd1-bee3-f4d852016e61')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ae2dbdb2-27c8-4d02-883e-efd51044347d', N'b7029936-6c00-4dd1-bee3-f4d852016e61')
INSERT [dbo].[AspNetUsers] ([Id], [LastName], [FirstName], [MatricNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4c77c94b-86d5-41de-b00d-21805b71e9e5', N'Admin1', N'Admin1', NULL, N'admin1@rms.com', 1, N'AJsWwM4QYcJodXmtTkvvHIsSAyU8YbZOfEcAmGXj9NbGeJMKgyOkJQ7xTw9s18zPhA==', N'11fb8d63-fde4-4054-9257-14809b77a27b', N'08028300022', 0, 1, NULL, 0, 0, N'admin1@rms.com')
INSERT [dbo].[AspNetUsers] ([Id], [LastName], [FirstName], [MatricNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5fc100de-ee21-4466-a514-77277ae8e9f0', N'Bolaji', N'Oyeneye ', N'111571', N'student@rms.ng', 0, N'AKtUR1ar/2tujv3bWL9boZVH3FHlcUFmWay/oBWT+9tOnyGr3ZlYKdf/uzsBm8xhng==', N'103b014b-d527-44b1-b1fc-cdd51cec6df6', N'08062986510', 0, 0, NULL, 0, 0, N'student@rms.ng')
INSERT [dbo].[AspNetUsers] ([Id], [LastName], [FirstName], [MatricNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'68f0d381-b136-4b40-b66a-be03dae7121a', N'Admin', N'Admin', NULL, N'admin@rms.com', 1, N'AJ5bQiLU/ePa1Rab481YdvTM0htUrrnFOGKKEdglptreRWYWKyV1ghSlIgiXImcHEA==', N'b158bc74-65f2-483a-aecd-4daaad02fc0c', N'08039445701', 0, 1, NULL, 0, 0, N'admin@rms.com')
INSERT [dbo].[AspNetUsers] ([Id], [LastName], [FirstName], [MatricNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'71da4847-6878-4895-a2a5-0e3b26ac3e55', N'Adebayo', N'Adeniji', N'111576', N'adeniji@rms.com', 0, N'AAqijV1L2+wzbqAMsIHIOmVvlvhguElTBHxDfvGAL5I1YxgtgY5iOfD+ZEEGCzTakQ==', N'3576b4d8-b7a2-4517-a346-35223c909b89', N'90234567', 0, 0, NULL, 0, 0, N'adeniji@rms.com')
INSERT [dbo].[AspNetUsers] ([Id], [LastName], [FirstName], [MatricNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'90bcb2f9-9181-493c-8463-49d67ac78d04', N'Olamide', N'Oyeneye', N'111456', N'oyeneye@gmail.com', 0, N'AJCBnN8V23gN2stqXR20HkJWWv32uAzTP1LbdQotFxiPaIaNQjfmQUEmWRrFzpkD8w==', N'7c3c365a-eb2f-41df-b6e0-d3067a04071c', N'09062986510', 0, 0, NULL, 0, 0, N'oyeneye@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [LastName], [FirstName], [MatricNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a56c7eeb-ef8a-4a8e-a21d-bd0abeab3ed6', N'Admin', N'Super', NULL, N'superadmin', 1, N'AP3ydVuZxzOcM8p6v0cGC8FVr60N6JfI/S/JLWigLAcdVoY2IwSKlZCRPZVk/FFdpA==', N'000d9c96-c92e-4597-ab41-15ed9a06cd66', NULL, 0, 1, NULL, 0, 0, N'superadmin')
INSERT [dbo].[AspNetUsers] ([Id], [LastName], [FirstName], [MatricNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ab1d177d-7ac8-42a7-9696-3ebc8b8282d5', N'Admin', N'Admin', NULL, N'admin', 1, N'ADS+69yyC3rxvJD61gKz/Ti9PDfAWMp2kQCv+5RhuyCayChLxORhkU3n0IsJu1YfRA==', N'227cb23c-bfd8-4267-bef9-180e32bdd8c2', NULL, 0, 1, NULL, 0, 0, N'admin')
INSERT [dbo].[AspNetUsers] ([Id], [LastName], [FirstName], [MatricNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ae2dbdb2-27c8-4d02-883e-efd51044347d', N'Admin', N'Admin', NULL, N'classrep@rms.com', 1, N'AKM5zobWfsRgSJCRRlJSbqVMwEpwVk0WUyJeVh8GytGeEE97osEG54FhoL7LD8CKCg==', N'5bc0511e-280a-4dff-939e-c560f5f7f0b8', N'08023844500', 0, 1, NULL, 0, 0, N'classrep@rms.com')
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (6, N'CSC 101', N'Introduction to Computer Technology', 3, 1007, 1003, CAST(N'2018-05-27 21:46:48.657' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (7, N'CSC 103', N'Programming Basics', 3, 1007, 1003, CAST(N'2018-05-27 21:46:48.657' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (8, N'CSC 105', N'Elementary Mathematics I', 5, 1007, 1003, CAST(N'2018-05-27 21:46:48.657' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (9, N'CSC 107', N'Physics for Computer Science I', 4, 1007, 1003, CAST(N'2018-05-27 21:46:48.657' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (10, N'CSC 109', N'Computer Application Packages I', 2, 1007, 1003, CAST(N'2018-05-27 21:46:48.657' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (11, N'CSC 111', N'Introduction to internet', 3, 1007, 1003, CAST(N'2018-05-27 21:46:48.657' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (12, N'GNS 101', N'Use of English I', 2, 1007, 1003, CAST(N'2018-05-27 21:46:48.657' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (13, N'LIB 101', N'Use of Library', 0, 1007, 1003, CAST(N'2018-05-27 21:46:48.657' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (14, N'CSC 102', N'Computer in Society', 3, 1007, 1004, CAST(N'2018-05-27 21:49:27.460' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (15, N'CSC 104', N'Elementary mathematics II', 5, 1007, 1004, CAST(N'2018-05-27 21:49:27.460' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (16, N'CSC 106', N'Physics for Computer Science II', 4, 1007, 1004, CAST(N'2018-05-27 21:49:27.460' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (17, N'CSC 110', N'Computer Application Packages II', 2, 1007, 1004, CAST(N'2018-05-27 21:49:27.460' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (18, N'CSC 112', N'Web based E-Services', 3, 1007, 1004, CAST(N'2018-05-27 21:49:27.460' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (19, N'CSC 108', N'Web Technology', 2, 1007, 1004, CAST(N'2018-05-27 21:49:27.460' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (20, N'GNS 101', N'Use of English II', 2, 1007, 1004, CAST(N'2018-05-27 21:49:27.460' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (21, N'CSC 202', N'Overview of Computer Science', 3, 1008, 1004, CAST(N'2018-05-27 21:51:37.670' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (22, N'CSC 204', N'Introduction to Programming Applications', 2, 1008, 1004, CAST(N'2018-05-27 21:51:37.670' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (23, N'CSC 206', N'Mathematical Methods II', 4, 1008, 1004, CAST(N'2018-05-27 21:51:37.670' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (24, N'CSC 208', N'Discrete Structures', 3, 1008, 1004, CAST(N'2018-05-27 21:51:37.670' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (25, N'CSC 210', N'Probability Theory', 3, 1008, 1004, CAST(N'2018-05-27 21:51:37.670' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (26, N'GNS 202', N'Mind, Machine and Society', 2, 1008, 1004, CAST(N'2018-05-27 21:51:37.670' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (27, N'GNS 208', N'Citizenship Education', 2, 1008, 1004, CAST(N'2018-05-27 21:51:37.670' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (28, N'CSC 201', N'Computer Programming I', 3, 1008, 1003, CAST(N'2018-05-27 21:53:34.223' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (29, N'CSC 203', N'Basic Programming Laboratory', 2, 1008, 1003, CAST(N'2018-05-27 21:53:34.223' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (30, N'CSC 205', N'Mathematical Methods I', 4, 1008, 1003, CAST(N'2018-05-27 21:53:34.223' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (31, N'CSC 207', N'Real Analysis', 2, 1008, 1003, CAST(N'2018-05-27 21:53:34.223' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (32, N'CSC 209', N'Elementary Differential Equations', 3, 1008, 1003, CAST(N'2018-05-27 21:53:34.223' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (33, N'CSC 211', N'Organizational Issues', 3, 1008, 1003, CAST(N'2018-05-27 21:53:34.223' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (34, N'MGS 201', N'Technology and Society', 2, 1008, 1003, CAST(N'2018-05-27 21:53:34.223' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (35, N'GNS 209', N'Citizenship Education', 2, 1008, 1003, CAST(N'2018-05-27 21:53:34.223' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (36, N'CSC 301', N'Computer Programming I (C++)', 3, 1009, 1003, CAST(N'2018-05-27 22:29:41.217' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (37, N'CSC 303', N'Computer Logic I', 3, 1009, 1003, CAST(N'2018-05-27 22:29:41.217' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (38, N'CSC 305', N'Database Design & Management', 3, 1009, 1003, CAST(N'2018-05-27 22:29:41.217' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (39, N'CSC 307', N'Numerical Computation I', 3, 1009, 1003, CAST(N'2018-05-27 22:29:41.217' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (40, N'CSC 309', N'Computer Engineering', 3, 1009, 1003, CAST(N'2018-05-27 22:29:41.217' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (41, N'CSC 313', N'Linear Algebra I', 2, 1009, 1003, CAST(N'2018-05-27 22:29:41.217' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (42, N'CSC 315', N'World Wide Web System', 3, 1009, 1003, CAST(N'2018-05-27 22:29:41.217' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (43, N'CSC 302', N'Computer Programming II (Java)', 3, 1009, 1004, CAST(N'2018-05-27 22:30:21.610' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (44, N'CSC 304', N'Computer Logic II', 3, 1009, 1004, CAST(N'2018-05-27 22:30:21.610' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (45, N'CSC 306', N'Digital Laboratory', 1, 1009, 1004, CAST(N'2018-05-27 22:30:21.610' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (46, N'CSC 308', N'Assembly Language Programming', 3, 1009, 1004, CAST(N'2018-05-27 22:30:21.610' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (47, N'CSC 310', N'Numerical Computation II', 3, 1009, 1004, CAST(N'2018-05-27 22:30:21.610' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (48, N'CSC 312', N'Data Structures and Algorithms', 3, 1009, 1004, CAST(N'2018-05-27 22:30:21.610' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (49, N'CSC 314', N'Fundamentals of Software Engineering', 3, 1009, 1004, CAST(N'2018-05-27 22:30:21.610' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (50, N'CSC 318', N'Entrepreneurship', 3, 1009, 1004, CAST(N'2018-05-27 22:30:21.610' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (51, N'CSC 401', N'Principles of Programming Languages', 3, 1010, 1003, CAST(N'2018-05-27 22:32:00.043' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (52, N'CSC 403', N'Operating System', 3, 1010, 1003, CAST(N'2018-05-27 22:32:00.043' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (53, N'CSC 405', N'Programming Project', 3, 1010, 1003, CAST(N'2018-05-27 22:32:00.043' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (54, N'CSC 407', N'Artificial Intelligence', 2, 1010, 1003, CAST(N'2018-05-27 22:32:00.043' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (55, N'CSC 409', N'Simulation and Modelling', 3, 1010, 1003, CAST(N'2018-05-27 22:32:00.043' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (56, N'CSC 411', N'Compiler Construction', 3, 1010, 1003, CAST(N'2018-05-27 22:32:00.043' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (57, N'CSC 413', N'Computer Architecture', 3, 1010, 1003, CAST(N'2018-05-27 22:32:00.043' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (58, N'CSC 402', N'Introduction to information Systems', 3, 1010, 1004, CAST(N'2018-05-27 22:32:33.067' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (59, N'CSC 404', N'Computer Applications', 3, 1010, 1004, CAST(N'2018-05-27 22:32:33.067' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (60, N'CSC 406', N'Introduction to Microprocessor Technology', 3, 1010, 1004, CAST(N'2018-05-27 22:32:33.067' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (61, N'CSC 408', N'User Interface Design', 3, 1010, 1004, CAST(N'2018-05-27 22:32:33.067' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (62, N'CSC 410', N'Management Information Systems', 3, 1010, 1004, CAST(N'2018-05-27 22:32:33.067' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (63, N'CSC 412', N'Principles and Applications of Data Mining', 3, 1010, 1004, CAST(N'2018-05-27 22:32:33.067' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (64, N'CSC 414', N'Automata Theory and Computability', 3, 1010, 1004, CAST(N'2018-05-27 22:32:33.067' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (65, N'CSC 416', N'Project Methodology', 1, 1010, 1004, CAST(N'2018-05-27 22:32:33.067' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (66, N'CSC 501', N'Software Engineering Project', 3, 1011, 1003, CAST(N'2018-05-27 22:33:14.123' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (67, N'CSC 503', N'Software Engineering Methodologies', 2, 1011, 1003, CAST(N'2018-05-27 22:33:14.123' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (68, N'CSC 507', N'Individual Project I', 3, 1011, 1003, CAST(N'2018-05-27 22:33:14.123' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (69, N'CSC 515', N'Decision Support Systems', 2, 1011, 1003, CAST(N'2018-05-27 22:33:14.123' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (70, N'CSC 517', N'Computer Performance Evaluation', 2, 1011, 1003, CAST(N'2018-05-27 22:33:14.123' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (71, N'CSC 519', N'Computer Storage and Retrieval', 3, 1011, 1003, CAST(N'2018-05-27 22:33:14.123' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (72, N'CSC 521', N'Computer Graphics', 3, 1011, 1003, CAST(N'2018-05-27 22:33:14.123' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (73, N'CSC 523', N'Principles and Application of Data Mining', 3, 1011, 1003, CAST(N'2018-05-27 22:33:14.123' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (74, N'CSC 502', N'Software System Seminar', 2, 1011, 1004, CAST(N'2018-05-27 22:33:42.077' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (75, N'CSC 504', N'Hardware System Studies', 3, 1011, 1004, CAST(N'2018-05-27 22:33:42.077' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (76, N'CSC 506', N'Data Communication & Computer Networks', 3, 1011, 1004, CAST(N'2018-05-27 22:33:42.077' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (77, N'CSC 508', N'Individual Project II', 3, 1011, 1004, CAST(N'2018-05-27 22:33:42.077' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (78, N'CSC 510', N'Information Technology Management', 2, 1011, 1004, CAST(N'2018-05-27 22:33:42.077' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (79, N'CSC 512', N'Operations Research', 3, 1011, 1004, CAST(N'2018-05-27 22:33:42.077' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (80, N'CSC 516', N'Current Topics in Information Technology', 2, 1011, 1004, CAST(N'2018-05-27 22:33:42.077' AS DateTime))
INSERT [dbo].[Course] ([Id], [Code], [Title], [Unit], [LevelId], [SemesterId], [CreatedAt]) VALUES (81, N'CSC 518', N'Electronics Commerce Technologies', 3, 1011, 1004, CAST(N'2018-05-27 22:33:42.077' AS DateTime))
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[Level] ON 

INSERT [dbo].[Level] ([Id], [Name], [CreatedAt]) VALUES (1007, N'100', CAST(N'2018-05-22 19:19:47.167' AS DateTime))
INSERT [dbo].[Level] ([Id], [Name], [CreatedAt]) VALUES (1008, N'200', CAST(N'2018-05-22 19:19:47.253' AS DateTime))
INSERT [dbo].[Level] ([Id], [Name], [CreatedAt]) VALUES (1009, N'300', CAST(N'2018-05-22 19:19:47.270' AS DateTime))
INSERT [dbo].[Level] ([Id], [Name], [CreatedAt]) VALUES (1010, N'400', CAST(N'2018-05-22 19:19:47.307' AS DateTime))
INSERT [dbo].[Level] ([Id], [Name], [CreatedAt]) VALUES (1011, N'500', CAST(N'2018-05-22 19:19:47.330' AS DateTime))
SET IDENTITY_INSERT [dbo].[Level] OFF
SET IDENTITY_INSERT [dbo].[Result] ON 

INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (17, 6, 5, N'5fc100de-ee21-4466-a514-77277ae8e9f0', 90, CAST(N'2018-06-23 17:08:48.110' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (18, 7, 5, N'5fc100de-ee21-4466-a514-77277ae8e9f0', 67, CAST(N'2018-06-23 17:08:48.147' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (19, 8, 5, N'5fc100de-ee21-4466-a514-77277ae8e9f0', 77, CAST(N'2018-06-23 17:08:48.200' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (20, 9, 5, N'5fc100de-ee21-4466-a514-77277ae8e9f0', 67, CAST(N'2018-06-23 17:08:48.233' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (21, 10, 5, N'5fc100de-ee21-4466-a514-77277ae8e9f0', 45, CAST(N'2018-06-23 17:08:48.283' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (22, 11, 5, N'5fc100de-ee21-4466-a514-77277ae8e9f0', 46, CAST(N'2018-06-23 17:08:48.317' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (23, 12, 5, N'5fc100de-ee21-4466-a514-77277ae8e9f0', 89, CAST(N'2018-06-23 17:08:48.367' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (24, 13, 5, N'5fc100de-ee21-4466-a514-77277ae8e9f0', 89, CAST(N'2018-06-23 17:08:48.400' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (25, 6, 5, N'71da4847-6878-4895-a2a5-0e3b26ac3e55', 90, CAST(N'2018-06-24 06:34:08.677' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (26, 6, 5, N'90bcb2f9-9181-493c-8463-49d67ac78d04', 67, CAST(N'2018-06-25 09:55:33.733' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (27, 7, 5, N'90bcb2f9-9181-493c-8463-49d67ac78d04', 87, CAST(N'2018-06-25 09:55:42.963' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (28, 8, 5, N'90bcb2f9-9181-493c-8463-49d67ac78d04', 56, CAST(N'2018-06-25 09:55:43.000' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (29, 9, 5, N'90bcb2f9-9181-493c-8463-49d67ac78d04', 56, CAST(N'2018-06-25 09:55:43.020' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (30, 10, 5, N'90bcb2f9-9181-493c-8463-49d67ac78d04', 88, CAST(N'2018-06-25 09:55:43.037' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (31, 11, 5, N'90bcb2f9-9181-493c-8463-49d67ac78d04', 99, CAST(N'2018-06-25 09:55:43.073' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (32, 12, 5, N'90bcb2f9-9181-493c-8463-49d67ac78d04', 98, CAST(N'2018-06-25 09:55:43.097' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (33, 13, 5, N'90bcb2f9-9181-493c-8463-49d67ac78d04', 78, CAST(N'2018-06-25 09:55:43.113' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (34, 7, 5, N'71da4847-6878-4895-a2a5-0e3b26ac3e55', 90, CAST(N'2018-06-25 10:03:32.387' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (35, 8, 5, N'71da4847-6878-4895-a2a5-0e3b26ac3e55', 90, CAST(N'2018-06-25 10:03:32.433' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (36, 9, 5, N'71da4847-6878-4895-a2a5-0e3b26ac3e55', 90, CAST(N'2018-06-25 10:03:32.457' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (37, 10, 5, N'71da4847-6878-4895-a2a5-0e3b26ac3e55', 90, CAST(N'2018-06-25 10:03:32.477' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (38, 11, 5, N'71da4847-6878-4895-a2a5-0e3b26ac3e55', 90, CAST(N'2018-06-25 10:03:32.497' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (39, 12, 5, N'71da4847-6878-4895-a2a5-0e3b26ac3e55', 90, CAST(N'2018-06-25 10:03:32.513' AS DateTime))
INSERT [dbo].[Result] ([Id], [CourseId], [SectionId], [StudentId], [Score], [CreatedAt]) VALUES (40, 13, 5, N'71da4847-6878-4895-a2a5-0e3b26ac3e55', 90, CAST(N'2018-06-25 10:03:32.553' AS DateTime))
SET IDENTITY_INSERT [dbo].[Result] OFF
SET IDENTITY_INSERT [dbo].[Section] ON 

INSERT [dbo].[Section] ([Id], [Name], [CreatedAt], [IsActive], [LevelId]) VALUES (5, N'2013/2014', CAST(N'2018-06-23' AS Date), 1, 1007)
SET IDENTITY_INSERT [dbo].[Section] OFF
SET IDENTITY_INSERT [dbo].[Semeter] ON 

INSERT [dbo].[Semeter] ([Id], [Name], [CreatedAt]) VALUES (1003, N'Harmattan', CAST(N'2018-05-22 19:19:47.407' AS DateTime))
INSERT [dbo].[Semeter] ([Id], [Name], [CreatedAt]) VALUES (1004, N'Rain', CAST(N'2018-05-22 19:19:47.513' AS DateTime))
SET IDENTITY_INSERT [dbo].[Semeter] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [UserName], [Password], [Question], [Answer], [CreatedAt], [IsAdmin], [IsActiveEO]) VALUES (1001, N'bolaji', N'bolaji', N'blaji', N'bolaji', CAST(N'2018-03-17' AS Date), 1, 0)
INSERT [dbo].[User] ([Id], [UserName], [Password], [Question], [Answer], [CreatedAt], [IsAdmin], [IsActiveEO]) VALUES (1002, N'olabisi', N'olabisi', N'olabisi', N'olabisi', CAST(N'2018-03-17' AS Date), 0, 1)
INSERT [dbo].[User] ([Id], [UserName], [Password], [Question], [Answer], [CreatedAt], [IsAdmin], [IsActiveEO]) VALUES (1003, N'olaitan', N'olaitan', N'olaitan', NULL, CAST(N'2018-03-17' AS Date), 0, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/4/2018 3:29:05 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/4/2018 3:29:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/4/2018 3:29:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 7/4/2018 3:29:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/4/2018 3:29:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/4/2018 3:29:05 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MatricNumber_Student]    Script Date: 7/4/2018 3:29:05 PM ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [MatricNumber_Student] UNIQUE NONCLUSTERED 
(
	[MatricNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
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
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Level] FOREIGN KEY([LevelId])
REFERENCES [dbo].[Level] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Level]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Semeter] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semeter] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Semeter]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_AspNetUser] FOREIGN KEY([StudentId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_AspNetUser]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Course]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Section] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Section]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Level] FOREIGN KEY([LevelId])
REFERENCES [dbo].[Level] ([Id])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Level]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Level] FOREIGN KEY([LevelId])
REFERENCES [dbo].[Level] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Level]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Section] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Section]
GO
ALTER TABLE [dbo].[StudentCourseAssign]  WITH CHECK ADD  CONSTRAINT [FK_StudentCourseAssign_Section] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])
GO
ALTER TABLE [dbo].[StudentCourseAssign] CHECK CONSTRAINT [FK_StudentCourseAssign_Section]
GO
ALTER TABLE [dbo].[StudentCourseAssign]  WITH CHECK ADD  CONSTRAINT [FK_StudentCourseAssign_Student] FOREIGN KEY([MatricNumber])
REFERENCES [dbo].[Student] ([MatricNumber])
GO
ALTER TABLE [dbo].[StudentCourseAssign] CHECK CONSTRAINT [FK_StudentCourseAssign_Student]
GO
USE [master]
GO
ALTER DATABASE [RMS] SET  READ_WRITE 
GO
