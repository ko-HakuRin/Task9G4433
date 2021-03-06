USE [master]
GO
/****** Object:  Database [poprijenok_GUS]    Script Date: 10.05.2022 15:12:24 ******/
CREATE DATABASE [poprijenok_GUS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'poprijenok_GUS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\poprijenok_GUS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'poprijenok_GUS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\poprijenok_GUS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

ALTER DATABASE [poprijenok_GUS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [poprijenok_GUS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [poprijenok_GUS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET ARITHABORT OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [poprijenok_GUS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [poprijenok_GUS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [poprijenok_GUS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [poprijenok_GUS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [poprijenok_GUS] SET  MULTI_USER 
GO
ALTER DATABASE [poprijenok_GUS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [poprijenok_GUS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [poprijenok_GUS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [poprijenok_GUS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [poprijenok_GUS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [poprijenok_GUS] SET QUERY_STORE = OFF
GO
USE [poprijenok_GUS]
GO
/****** Object:  Table [dbo].[Agent_address]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_address](
	[Agent_ID] [int] NOT NULL,
	[index] [nvarchar](max) NOT NULL,
	[region] [nvarchar](max) NOT NULL,
	[city] [nvarchar](max) NOT NULL,
	[street] [nvarchar](max) NOT NULL,
	[frame] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Agent_address] PRIMARY KEY CLUSTERED 
(
	[Agent_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agent_release_history]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_release_history](
	[release_ID] [int] IDENTITY(1,1) NOT NULL,
	[agent_ID] [int] NOT NULL,
	[product_ID] [int] NOT NULL,
	[date] [date] NOT NULL,
	[qty] [int] NOT NULL,
 CONSTRAINT [PK_Agent_release_history] PRIMARY KEY CLUSTERED 
(
	[release_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[agent_ID] [int] IDENTITY(1,1) NOT NULL,
	[agent_type_ID] [int] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[phone] [nvarchar](max) NOT NULL,
	[logo] [nvarchar](max) NULL,
	[priority] [int] NOT NULL,
	[director_surname] [nvarchar](max) NOT NULL,
	[director_name] [nvarchar](max) NOT NULL,
	[director_patronymic] [nvarchar](max) NULL,
	[INN] [nvarchar](max) NOT NULL,
	[KPP] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Агенты] PRIMARY KEY CLUSTERED 
(
	[agent_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agents_type]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents_type](
	[type_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Agents_type] PRIMARY KEY CLUSTERED 
(
	[type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cex]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cex](
	[cex_num_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Cex_1] PRIMARY KEY CLUSTERED 
(
	[cex_num_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cex_empolyees]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cex_empolyees](
	[cex_num_ID] [int] NOT NULL,
	[employee_ID] [int] NOT NULL,
 CONSTRAINT [PK_Cex] PRIMARY KEY CLUSTERED 
(
	[cex_num_ID] ASC,
	[employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_pasport]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_pasport](
	[employee_ID] [int] IDENTITY(1,1) NOT NULL,
	[patronymic] [nvarchar](max) NULL,
	[surname] [nvarchar](max) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[birthday] [date] NOT NULL,
	[date_of_issue] [date] NOT NULL,
	[issued_by] [nvarchar](max) NOT NULL,
	[department_code] [nvarchar](max) NOT NULL,
	[series] [int] NOT NULL,
	[number] [int] NOT NULL,
 CONSTRAINT [PK_Employee_pasport] PRIMARY KEY CLUSTERED 
(
	[employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employes]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employes](
	[employee_ID] [int] NOT NULL,
	[bank_details] [nvarchar](max) NOT NULL,
	[is_have_family] [bit] NOT NULL,
	[health_problems] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employes] PRIMARY KEY CLUSTERED 
(
	[employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[equipment_ID] [int] IDENTITY(1,1) NOT NULL,
	[qty] [int] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[equipment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment_of_employee]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment_of_employee](
	[equipment_ID] [int] NOT NULL,
	[employee_ID] [int] NOT NULL,
 CONSTRAINT [PK_Equipment_of_employee] PRIMARY KEY CLUSTERED 
(
	[equipment_ID] ASC,
	[employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[material_type]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material_type](
	[type_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_material_type] PRIMARY KEY CLUSTERED 
(
	[type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[material_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[material_type_ID] [int] NOT NULL,
	[qty_in_package] [int] NOT NULL,
	[unit] [nvarchar](max) NOT NULL,
	[qty_in_storage] [int] NOT NULL,
	[minimal_qty] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NOT NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[material_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials_history]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials_history](
	[material_ID] [int] NOT NULL,
	[date] [date] NOT NULL,
	[qty] [int] NOT NULL,
 CONSTRAINT [PK_Materials_history] PRIMARY KEY CLUSTERED 
(
	[material_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materials_need_to_create_poduct]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materials_need_to_create_poduct](
	[product_ID] [int] NOT NULL,
	[material_ID] [int] NOT NULL,
 CONSTRAINT [PK_materials_need_to_create_poduct] PRIMARY KEY CLUSTERED 
(
	[product_ID] ASC,
	[material_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Minimal_price_history_change]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Minimal_price_history_change](
	[agent_ID] [int] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Minimal_price_history_change] PRIMARY KEY CLUSTERED 
(
	[agent_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_ID] [int] IDENTITY(1,1) NOT NULL,
	[agent_ID] [int] NOT NULL,
	[product_ID] [int] NOT NULL,
	[status] [nvarchar](max) NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority_history]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority_history](
	[history_ID] [int] IDENTITY(1,1) NOT NULL,
	[agent_ID] [int] NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_Priority_history] PRIMARY KEY CLUSTERED 
(
	[history_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_info]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_info](
	[product_ID] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[weight_neto] [nvarchar](max) NOT NULL,
	[weight_with_neto] [nvarchar](max) NOT NULL,
	[sertificate] [nvarchar](max) NULL,
	[standart_type_ID] [int] NOT NULL,
	[product_image] [nvarchar](max) NULL,
	[time_to_create] [varbinary](max) NOT NULL,
	[cost_price] [money] NOT NULL,
 CONSTRAINT [PK_Product_info] PRIMARY KEY CLUSTERED 
(
	[product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_sale]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_sale](
	[product_sale_ID] [int] IDENTITY(1,1) NOT NULL,
	[product_ID] [int] NOT NULL,
	[agent_ID] [int] NOT NULL,
	[release_date] [date] NOT NULL,
	[qty] [int] NOT NULL,
 CONSTRAINT [PK_Product_sale] PRIMARY KEY CLUSTERED 
(
	[product_sale_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_size]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_size](
	[product_ID] [int] NOT NULL,
	[width] [float] NOT NULL,
	[height] [float] NOT NULL,
	[lenght] [float] NOT NULL,
 CONSTRAINT [PK_Product_size] PRIMARY KEY CLUSTERED 
(
	[product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_type]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_type](
	[product_type_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Product_type] PRIMARY KEY CLUSTERED 
(
	[product_type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[product_type_ID] [int] NOT NULL,
	[articul] [int] NOT NULL,
	[peoples_need_to_create] [int] NOT NULL,
	[cex_num_ID] [int] NOT NULL,
	[minimal_price] [money] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Standart_types]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Standart_types](
	[type_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Standart_types] PRIMARY KEY CLUSTERED 
(
	[type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier_type]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_type](
	[supplier_type_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Supplier_type] PRIMARY KEY CLUSTERED 
(
	[supplier_type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[supplier_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[INN] [nvarchar](max) NOT NULL,
	[supplier_type_ID] [int] NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[supplier_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supply_history]    Script Date: 10.05.2022 0:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supply_history](
	[supplier_ID] [int] NOT NULL,
	[material_ID] [int] NOT NULL,
 CONSTRAINT [PK_Supply_history] PRIMARY KEY CLUSTERED 
(
	[supplier_ID] ASC,
	[material_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (1, N'361730', N' Костромская область', N' город Волоколамск', N' шоссе Славы', N'36')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (2, N'30119', N' Курганская область', N' город Дмитров', N' пер. Славы', N'47')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (3, N'599158', N' Ростовская область', N' город Озёры', N' ул. Космонавтов', N'5')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (4, N'304975', N' Пензенская область', N' город Солнечногорск', N' шоссе Балканская', N'76')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (5, N'136886', N' Амурская область', N' город Видное', N' въезд Космонавтов', N'39')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (6, N'8081', N' Тюменская область', N' город Ногинск', N' въезд Гагарина', N'94')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (7, N'35268', N' Сахалинская область', N' город Волоколамск', N' проезд Ладыгина', N'51')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (8, N'409600', N' Новгородская область', N' город Ногинск', N' пл. Гагарина', N'68')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (9, N'481744', N' Амурская область', N' город Щёлково', N' пл. Сталина', N'48')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (11, N'964386', N' Оренбургская область', N' город Чехов', N' пл. Косиора', N'80')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (12, N'988899', N' Саратовская область', N' город Раменское', N' пр. Славы', N'40')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (13, N'265653', N' Калужская область', N' город Ступино', N' шоссе Гоголя', N'89')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (14, N'145030', N' Сахалинская область', N' город Шатура', N' въезд Гоголя', N'79')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (15, N'217022', N' Ростовская область', N' город Озёры', N' ул. Домодедовская', N'19')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (16, N'59565', N' Оренбургская область', N' город Истра', N' шоссе Домодедовская', N'27')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (17, N'252821', N' Тамбовская область', N' город Пушкино', N' ул. Чехова', N'40')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (18, N'695230', N' Курская область', N' город Красногорск', N' пр. Гоголя', N'64')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (19, N'585758', N' Самарская область', N' город Красногорск', N' бульвар Балканская', N'13')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (20, N'294596', N' Мурманская область', N' город Шаховская', N' пр. Домодедовская', N'88')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (21, N'447811', N' Мурманская область', N' город Егорьевск', N' ул. Ленина', N'24')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (22, N'376483', N' Калужская область', N' город Сергиев Посад', N' ул. Славы', N'9')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (23, N'170549', N' Сахалинская область', N' город Видное', N' проезд Космонавтов', N'89')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (24, N'100469', N' Рязанская область', N' город Ногинск', N' шоссе Гагарина', N'57')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (25, N'231891', N' Челябинская область', N' город Шатура', N' бульвар Ладыгина', N'40')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (26, N'384162', N' Астраханская область', N' город Одинцово', N' бульвар Гагарина', N'57')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (27, N'393450', N' Тульская область', N' город Кашира', N' пр. 1905 года', N'47')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (28, N'16215', N' Воронежская область', N' город Зарайск', N' ул. Косиора', N'48')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (29, N'302100', N' Нижегородская область', N' город Мытищи', N' пер. 1905 года', N'63')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (30, N'310403', N' Кировская область', N' город Солнечногорск', N' пл. Балканская', N'76')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (31, N'395101', N' Белгородская область', N' город Балашиха', N' бульвар 1905 года', N'0')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (32, N'152424', N' Рязанская область', N' город Сергиев Посад', N' ул. 1905 года', N'27')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (33, N'848810', N' Кемеровская область', N' город Лотошино', N' пер. Ломоносова', N'90')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (34, N'532703', N' Пензенская область', N' город Чехов', N' наб. Чехова', N'81')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (35, N'423477', N' Мурманская область', N' город Кашира', N' бульвар Домодедовская', N'61')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (36, N'36381', N' Брянская область', N' город Кашира', N' бульвар Гагарина', N'76')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (37, N'21293', N' Амурская область', N' город Наро-Фоминск', N' шоссе Славы', N'40')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (38, N'557264', N' Брянская область', N' город Серпухов', N' въезд Гоголя', N'34')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (39, N'547196', N' Ульяновская область', N' город Серебряные Пруды', N' въезд Балканская', N'81')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (40, N'625988', N' Вологодская область', N' город Озёры', N' пр. Гоголя', N'18')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (41, N'126668', N' Ростовская область', N' город Зарайск', N' наб. Гагарина', N'69')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (42, N'861543', N' Томская область', N' город Истра', N' бульвар Славы', N'42')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (43, N'841700', N' Брянская область', N' город Серпухов', N' спуск Домодедовская', N'35')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (44, N'889757', N' Новосибирская область', N' город Раменское', N' бульвар 1905 года', N'93')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (45, N'336489', N' Калининградская область', N' город Можайск', N' наб. Славы', N'35')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (46, N'479565', N' Курганская область', N' город Клин', N' пл. Ленина', N'54')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (47, N'293265', N' Иркутская область', N' город Клин', N' пр. Славы', N'12')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (48, N'786287', N' Свердловская область', N' город Волоколамск', N' пер. Будапештсткая', N'72')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (49, N'254238', N' Нижегородская область', N' город Павловский Посад', N' проезд Балканская', N'23')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (50, N'713016', N' Брянская область', N' город Подольск', N' пл. Домодедовская', N'93')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (51, N'606703', N' Амурская область', N' город Чехов', N' пл. Будапештсткая', N'91')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (52, N'66594', N' Магаданская область', N' город Шаховская', N' спуск Сталина', N'59')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (53, N'27573', N' Тамбовская область', N' город Коломна', N' ул. Ленина', N'20')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (54, N'903648', N' Калужская область', N' город Воскресенск', N' пр. Будапештсткая', N'91')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (55, N'765320', N' Ивановская область', N' город Шатура', N' спуск Гоголя', N'88')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (56, N'951035', N' Ивановская область', N' город Ступино', N' шоссе Космонавтов', N'73')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (57, N'729639', N' Магаданская область', N' город Талдом', N' въезд Будапештсткая', N'98')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (58, N'577227', N' Калужская область', N' город Павловский Посад', N' наб. Чехова', N'35')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (59, N'738763', N' Курская область', N' город Егорьевск', N' спуск Чехова', N'66')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (60, N'798718', N' Ленинградская область', N' город Пушкино', N' бульвар Балканская', N'37')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (61, N'491360', N' Московская область', N' город Одинцово', N' въезд Ленина', N'19')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (62, N'707812', N' Иркутская область', N' город Шаховская', N' ул. Гагарина', N'17')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (63, N'449723', N' Смоленская область', N' город Наро-Фоминск', N' пер. Ломоносова', N'94')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (64, N'48715', N' Ивановская область', N' город Люберцы', N' проезд Космонавтов', N'89')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (65, N'289468', N' Омская область', N' город Видное', N' пер. Балканская', N'33')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (66, N'373761', N' Псковская область', N' город Наро-Фоминск', N' наб. Гагарина', N'3')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (67, N'331914', N' Курская область', N' город Ногинск', N' спуск Ладыгина', N'66')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (68, N'180288', N' Тверская область', N' город Одинцово', N' ул. Бухарестская', N'37')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (69, N'606990', N' Новосибирская область', N' город Павловский Посад', N' въезд Домодедовская', N'38')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (70, N'928260', N' Нижегородская область', N' город Балашиха', N' пл. Косиора', N'44')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (71, N'429540', N' Мурманская область', N' город Воскресенск', N' пл. Славы', N'36')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (72, N'365674', N' Архангельская область', N' город Серебряные Пруды', N' пр. Ленина', N'29')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (73, N'816260', N' Ивановская область', N' город Москва', N' ул. Гагарина', N'31')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (74, N'453714', N' Смоленская область', N' город Одинцово', N' спуск Косиора', N'84')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (75, N'747695', N' Амурская область', N' город Сергиев Посад', N' въезд Бухарестская', N'46')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (76, N'763019', N' Омская область', N' город Шатура', N' пл. Сталина', N'56')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (77, N'444539', N' Ульяновская область', N' город Лотошино', N' спуск Будапештсткая', N'95')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (78, N'880551', N' Ленинградская область', N' город Красногорск', N' ул. Гоголя', N'61')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (79, N'761751', N' Амурская область', N' город Балашиха', N' шоссе Гоголя', N'2')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (80, N'252101', N' Ростовская область', N' город Дорохово', N' пер. Ленина', N'85')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (81, N'28936', N' Магаданская область', N' город Видное', N' ул. Гагарина', N'54')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (82, N'62489', N' Челябинская область', N' город Пушкино', N' въезд Бухарестская', N'7')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (83, N'210024', N' Белгородская область', N' город Сергиев Посад', N' наб. Ломоносова', N'43')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (84, N'959793', N' Курская область', N' город Егорьевск', N' бульвар Ленина', N'72')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (85, N'731935', N' Калининградская область', N' город Павловский Посад', N' наб. Гагарина', N'59')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (86, N'508299', N' Кемеровская область', N' город Кашира', N' пер. Гагарина', N'42')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (87, N'521087', N' Орловская область', N' город Егорьевск', N' шоссе Ладыгина', N'14')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (88, N'462632', N' Костромская область', N' город Шаховская', N' шоссе Сталина', N'92')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (89, N'687171', N' Томская область', N' город Лотошино', N' пл. Славы', N'59')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (90, N'505562', N' Тюменская область', N' город Наро-Фоминск', N' пр. Косиора', N'11')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (91, N'38182', N' Курганская область', N' город Москва', N' спуск Космонавтов', N'16')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (92, N'84315', N' Амурская область', N' город Шаховская', N' наб. Чехова', N'62')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (93, N'619540', N' Курская область', N' город Раменское', N' пл. Балканская', N'12')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (94, N'263764', N' Свердловская область', N' город Раменское', N' пер. Косиора', N'28')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (95, N'966815', N' Новгородская область', N' город Одинцово', N' пр. Космонавтов', N'19')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (96, N'913777', N' Самарская область', N' город Красногорск', N' ул. Бухарестская', N'49')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (97, N'594365', N' Ярославская область', N' город Павловский Посад', N' бульвар Космонавтов', N'64')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (98, N'434616', N' Калининградская область', N' город Павловский Посад', N' пл. Ладыгина', N'83')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (99, N'339507', N' Московская область', N' город Видное', N' ул. Космонавтов', N'11')
INSERT [dbo].[Agent_address] ([Agent_ID], [index], [region], [city], [street], [frame]) VALUES (100, N'960726', N' Томская область', N' город Орехово-Зуево', N' въезд 1905 года', N'51')
GO
SET IDENTITY_INSERT [dbo].[Agent_release_history] ON 

INSERT [dbo].[Agent_release_history] ([release_ID], [agent_ID], [product_ID], [date], [qty]) VALUES (1, 1, 1, CAST(N'2022-05-09' AS Date), 500000)
INSERT [dbo].[Agent_release_history] ([release_ID], [agent_ID], [product_ID], [date], [qty]) VALUES (2, 1, 2, CAST(N'2022-05-09' AS Date), 60000)
SET IDENTITY_INSERT [dbo].[Agent_release_history] OFF
GO
SET IDENTITY_INSERT [dbo].[Agents] ON 

INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (1, 4, N'ITСтройАлмаз', N'fokin.eduard@samoilov.com', N'8-800-185-78-91', N'\agents\agent_83.png', 500, N'Алексеева', N'Валериан', N'Андреевич', N'7689065648', N'456612755')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (2, 5, N'Асбоцемент', N'antonin19@panfilov.ru', N'8-800-211-16-23', N'\agents\agent_34.png', 500, N'Никитинаа', N'Антонина', N'Андреевна', N'1261407459', N'745921890')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (3, 6, N'АсбоцементЛифтРеч-H', N'vladlena58@seliverstova.ru', N'(495) 245-57-16', N'\agents\agent_105.png', 407, N'Кондратьева', N'Таисия', N'Андреевна', N'6567878928', N'560960507')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (4, 3, N'АсбоцементТехАвто', N'matveev.yliy@kiseleva.ru', N'+7 (922) 977-68-84', N'\agents\agent_110.png', 247, N'Сидорова', N'Любовь', N'Ивановна', N'7626076463', N'579234124')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (5, 6, N'БашкирРечТомск', N'aleksandra77@karpov.com', N'8-800-254-71-85', N'\agents\agent_100.png', 84, N'Назарова', N'Вера', N'Андреевна', N'7027724917', N'823811460')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (6, 2, N'БашкирФлотМотор-H', N'morozova.nika@kazakova.ru', N'(495) 793-84-82', N'\agents\agent_36.png', 416, N'Марат', N'Алексеевич', N'Фролов', N'1657476072', N'934931159')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (7, 1, N'БашкирЮпитерТомск', N'dyckov.veniamin@kotova.ru', N'(812) 189-59-57', N'\agents\agent_59.png', 139, N'Фадеева', N'Раиса', N'Александровна', N'1606315697', N'217799345')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (8, 3, N'Бух', N'belova.vikentii@konstantinova.net', N'7 (922) 375-49-21', N'\agents\agent_78.png', 82, N'Татьяна', N'Сергеевна', N'Королёваа', N'1953785418', N'122905583')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (9, 6, N'БухВжух', N'valentina.bolsakova@aksenova.ru', N'(495) 367-21-41', NULL, 327, N'Тарасов', N'Болеслав', N'Александрович', N'2320989197', N'359282667')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (11, 1, N'Вод', N'savva86@zaiteva.ru', N'(495) 142-19-84', N'\agents\agent_129.png', 359, N'Зоя', N'Романовна', N'Селезнёва', N'1296063939', N'447430051')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (12, 4, N'ВодГараж', N'pmaslov@fomiceva.com', N'+7 (922) 363-86-67', N'\agents\agent_67.png', 250, N'Лаврентий', N'Фёдорович', N'Логинова', N'5575072431', N'684290320')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (13, 4, N'ВодГор', N'tvetkova.robert@sorokin.com', N'(35222) 73-72-16', N'\agents\agent_125.png', 72, N'Фаина', N'Фёдоровна', N'Филиппова', N'4463113470', N'899603778')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (14, 1, N'ВодТверьХозМашина', N'tkrylov@baranova.net', N'7 (922) 849-91-96', N'\agents\agent_56.png', 8, N'Александра', N'Дмитриевна', N'Ждановаа', N'4174253174', N'522227145')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (15, 5, N'ВостокГлав', N'gordei95@kirillov.ru', N'(812) 949-29-26', N'\agents\agent_63.png', 107, N'Инга', N'Фёдоровна', N'Дмитриева', N'3580946305', N'405017349')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (16, 3, N'ВостокКазРыб', N'flukin@misin.org', N'(495) 987-31-63', N'\agents\agent_112.png', 361, N'Самсонов', N'Родион', N'Романович', N'7411284960', N'176779733')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (17, 3, N'Газ', N'ulyna.antonov@noskov.ru', N'(35222) 22-45-58', N'\agents\agent_76.png', 170, N'Терентьев', N'Илларион', N'Максимович', N'8876413796', N'955381891')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (18, 2, N'ГазДизайнЖелДор', N'elizaveta.komarov@rybakov.net', N'(495) 797-97-33', N'\agents\agent_49.png', 236, N'Лев', N'Иванович', N'Третьяков', N'2396029740', N'458924890')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (19, 3, N'Гараж', N'antonin51@korolev.com', N'(35222) 54-72-59', N'\agents\agent_90.png', 107, N'Панфилов', N'Константин', N'Максимович', N'2638464552', N'746822723')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (20, 4, N'ГаражЛофт', N'lydmila.belyeva@karpov.ru', N'(495) 427-55-66', N'\agents\agent_108.png', 335, N'Клавдия', N'Фёдоровна', N'Кудряшова', N'2816939574', N'754741128')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (21, 3, N'ГлавITФлотПроф', N'savva.rybov@kolobov.ru', N'(812) 146-66-46', N'\agents\agent_64.png', 62, N'Зыкова', N'Стефан', N'Максимович', N'2561361494', N'525678825')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (22, 2, N'Гор', N'maiy12@koklov.net', N'(495) 973-48-55', N'\agents\agent_52.png', 175, N'Нонна', N'Львовна', N'Одинцоваа', N'7088187045', N'440309946')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (23, 6, N'ЖелДорДизайнМетизТраст', N'lnikitina@kulikova.com', N'(812) 123-63-47', NULL, 290, N'Игорь', N'Львович', N'Агафонова', N'7669116841', N'906390137')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (24, 4, N'Инфо', N'arsenii.mikailova@prokorov.com', N'8-800-793-59-97', N'\agents\agent_89.png', 304, N'Баранова', N'Виктор', N'Романович', N'6549468639', N'718386757')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (25, 4, N'КазаньТекстиль', N'osimonova@andreeva.com', N'(35222) 86-74-21', N'\agents\agent_47.png', 156, N'Александров', N'Бронислав', N'Максимович', N'4584384019', N'149680499')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (26, 4, N'КазХоз', N'istrelkova@fomin.ru', N'+7 (922) 728-85-62', NULL, 213, N'Степанова', N'Роман', N'Иванович', N'6503377671', N'232279972')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (27, 4, N'КазЮпитерТомск', N'tgavrilov@frolov.ru', N'+7 (922) 772-33-58', N'\agents\agent_60.png', 244, N'Рафаил', N'Андреевич', N'Копылов', N'9201745524', N'510248846')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (28, 5, N'Компания Алмаз', N'akalinina@zaitev.ru', N'+7 (922) 688-74-22', N'\agents\agent_121.png', 259, N'Фоминаа', N'Лариса', N'Романовна', N'6698862694', N'662876919')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (29, 5, N'Компания ВодАлмазIT', N'zakar37@nikolaeva.ru', N'(35222) 52-76-16', N'\agents\agent_111.png', 31, N'Гуляев', N'Егор', N'Евгеньевич', N'2345297765', N'908449277')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (30, 5, N'Компания Газ', N'alina56@zdanov.com', N'(35222) 75-96-85', N'\agents\agent_120.png', 445, N'Давид', N'Андреевич', N'Фадеев', N'2262431140', N'247369527')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (31, 5, N'Компания Гараж', N'asiryeva@andreeva.com', N'+7 (922) 848-38-54', N'\agents\agent_66.png', 413, N'Владлена', N'Фёдоровна', N'Ларионоваа', N'6190244524', N'399106161')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (32, 5, N'Компания ЖелДорТверьМонтаж', N'burova.zlata@zueva.ru', N'(495) 521-61-75', N'\agents\agent_85.png', 2, N'Нестор', N'Максимович', N'Гуляев', N'3325722996', N'665766347')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (33, 5, N'Компания КазАлмаз', N'irina.gusina@vlasova.ru', N'8-800-533-24-75', N'\agents\agent_80.png', 396, N'Марк', N'Фёдорович', N'Муравьёва', N'3084797352', N'123190924')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (34, 5, N'Компания КазМеталКазань', N'mmoiseev@teterin.ru', N'(495) 685-34-29', N'\agents\agent_130.png', 252, N'Валерий', N'Владимирович', N'Хохлова', N'4598939812', N'303467543')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (35, 5, N'Компания КрепЦемент', N'rusakov.efim@nikiforov.ru', N'(812) 963-77-87', N'\agents\agent_50.png', 426, N'Екатерина', N'Львовна', N'Суворова', N'3025099903', N'606083992')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (36, 5, N'Компания Монтаж', N'afanasev.anastasiy@muravev.ru', N'(35222) 92-45-98', N'\agents\agent_75.png', 124, N'Силин', N'Даниил', N'Иванович', N'6206428565', N'118570048')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (37, 5, N'Компания МоторТелекомЦемент-М', N'larisa44@silin.org', N'(812) 857-95-57', N'\agents\agent_118.png', 237, N'Иван', N'Евгеньевич', N'Белоусова', N'7326832482', N'440199498')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (38, 5, N'Компания МясДизайнДизайн', N'gleb.gulyev@belyeva.com', N'(812) 535-17-25', N'\agents\agent_53.png', 500, N'Клементина', N'Сергеевна', N'Стрелкова', N'8004989990', N'908629456')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (39, 5, N'Компания СервисРадиоГор', N'nika.nekrasova@kovalev.ru', N'8-800-676-32-86', N'\agents\agent_40.png', 169, N'Попов', N'Вадим', N'Александрович', N'8880473721', N'729975116')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (40, 5, N'Компания СервисТелеМотор', N'veronika.egorov@bespalova.com', N'+7 (922) 461-25-29', N'\agents\agent_102.png', 81, N'Фролова', N'Эдуард', N'Борисович', N'3248454160', N'138472695')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (41, 5, N'Компания ТелекомХмельГаражПром', N'qkolesnikova@kalinina.ru', N'(812) 983-91-73', N'\agents\agent_71.png', 457, N'Костина', N'Татьяна', N'Борисовна', N'1614623826', N'824882264')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (42, 5, N'Компания ТомскХоз', N'nelli11@gureva.ru', N'+7 (922) 849-13-37', N'\agents\agent_115.png', 464, N'Лазарева', N'Аркадий', N'Сергеевич', N'8430391035', N'961540858')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (43, 5, N'Компания ФинансСервис', N'robert.serbakov@safonova.ru', N'(812) 878-42-71', N'\agents\agent_38.png', 395, N'Клавдия', N'Сергеевна', N'Виноградова', N'7491491391', N'673621812')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (44, 5, N'Компания Хмель', N'ermakov.mark@isakova.ru', N'(812) 421-77-82', NULL, 2, N'Владимир', N'Борисович', N'Суворова', N'9004087602', N'297273898')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (45, 1, N'Креп', N'savina.dominika@belousova.com', N'(495) 217-46-29', N'\agents\agent_39.png', 371, N'Назар', N'Алексеевич', N'Григорьева', N'4880732317', N'258673591')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (46, 5, N'Лифт', N'zinaida01@bespalova.ru', N'(812) 484-92-38', N'\agents\agent_101.png', 92, N'Вера', N'Евгеньевна', N'Денисоваа', N'6169713039', N'848972934')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (47, 6, N'МеталСервисМор', N'xdanilov@titov.ru', N'(35222) 91-28-62', NULL, 475, N'Коновалова', N'Кирилл', N'Львович', N'6922817841', N'580142825')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (48, 2, N'МеталТекстильЛифтТрест', N'muravev.trofim@sazonov.net', N'(812) 753-96-76', N'\agents\agent_86.png', 425, N'Одинцов', N'Назар', N'Борисович', N'2971553297', N'821859486')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (49, 2, N'МетизСтрой', N'kristina.pakomov@burova.ru', N'8-800-172-62-56', N'\agents\agent_94.png', 374, N'Ева', N'Борисовна', N'Беспалова', N'4024742936', N'295608432')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (50, 5, N'МетизТехАвтоПроф', N'anastasiy.gromov@samsonova.com', N'(495) 581-42-46', N'\agents\agent_33.png', 321, N'Егор', N'Фёдорович', N'Третьякова', N'2988890076', N'215491048')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (51, 4, N'Мобайл', N'dsiryev@dementeva.com', N'8-800-618-73-37', N'\agents\agent_107.png', 464, N'Екатерина', N'Сергеевна', N'Бобылёва', N'7803888520', N'885703265')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (52, 3, N'Монтаж', N'zakar.sazonova@gavrilov.ru', N'(495) 867-76-15', NULL, 300, N'Блохина', N'Сергей', N'Максимович', N'6142194281', N'154457435')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (53, 2, N'МонтажОрионУрал', N'pzaitev@blokin.org', N'(35222) 67-39-26', N'\agents\agent_96.png', 50, N'Давыдоваа', N'Нина', N'Евгеньевна', N'1692286718', N'181380912')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (54, 1, N'МясРеч', N'bkozlov@volkov.ru', N'8-800-453-63-45', N'\agents\agent_58.png', 355, N'Белоусоваа', N'Ирина', N'Максимовна', N'9254261217', N'656363498')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (55, 4, N'МясТрансМоторЛизинг', N'vlad.sokolov@andreev.org', N'+7 (922) 676-34-94', N'\agents\agent_62.png', 268, N'Тамара', N'Дмитриевна', N'Семёноваа', N'6148685143', N'196332656')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (56, 6, N'Орион', N'aleksei63@kiselev.ru', N'8-800-621-61-93', N'\agents\agent_77.png', 166, N'Мартынов', N'Михаил', N'Борисович', N'2670166502', N'716874456')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (57, 6, N'ОрионГлав', N'sermakova@sarova.net', N'+7 (922) 684-13-74', N'\agents\agent_106.png', 482, N'Тимофеева', N'Григорий', N'Андреевич', N'9032455179', N'763045792')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (58, 1, N'ОрионСофтВодСнос', N'isukanov@sobolev.com', N'(35222) 59-75-11', N'\agents\agent_97.png', 361, N'Мухина', N'Ян', N'Фёдорович', N'1522348613', N'977738715')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (59, 6, N'ОрионТомскТех', N'faina.tikonova@veselov.com', N'+7 (922) 542-89-15', N'\agents\agent_119.png', 73, N'Георгий', N'Александрович', N'Лукин', N'9351493429', N'583041591')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (60, 6, N'Радио', N'rtretykova@kozlov.ru', N'8-800-897-32-78', N'\agents\agent_43.png', 221, N'Эмма', N'Андреевна', N'Колесникова', N'9077613654', N'657690787')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (61, 4, N'РадиоСевер', N'maiy.belov@rogov.ru', N'(495) 368-86-51', N'\agents\agent_123.png', 431, N'Карпов', N'Иосиф', N'Максимович', N'5889206249', N'372789083')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (62, 1, N'Рем', N'zanna25@nikiforova.com', N'(495) 987-88-53', N'\agents\agent_79.png', 329, N'Шароваа', N'Елизавета', N'Львовна', N'3203830728', N'456254820')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (63, 4, N'РемВод', N'komarov.elizaveta@agafonova.ru', N'+7 (922) 353-31-72', N'\agents\agent_126.png', 1, N'Медведеваа', N'Ярослава', N'Фёдоровна', N'3986603105', N'811373078')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (64, 4, N'РемГаражЛифт', N'novikova.gleb@sestakov.ru', N'8-800-772-27-53', N'\agents\agent_65.png', 374, N'Филатов', N'Владимир', N'Максимович', N'1656477206', N'988968838')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (65, 4, N'РемСантехОмскБанк', N'anisimov.mark@vorobev.ru', N'(812) 182-44-77', N'\agents\agent_57.png', 442, N'Фокина', N'Искра', N'Максимовна', N'6823050572', N'176488617')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (66, 6, N'РемСтрем', N'rafail96@sukin.ru', N'(35222) 55-28-24', N'\agents\agent_116.png', 88, N'Альбина', N'Александровна', N'Романова', N'9006569852', N'152177100')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (67, 5, N'РосАвтоМонтаж', N'lapin.inessa@isaeva.com', N'(495) 445-97-76', N'\agents\agent_55.png', 10, N'Диана', N'Алексеевна', N'Исаковаа', N'4735043946', N'263682488')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (68, 3, N'СантехБашкир', N'nikodim81@kiseleva.com', N'+7 (922) 155-87-39', N'\agents\agent_99.png', 369, N'Виктор', N'Иванович', N'Молчанов', N'4159215346', N'639267493')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (69, 5, N'СантехСеверЛенМашина', N'pgorbacev@vasilev.net', N'(812) 918-88-43', N'\agents\agent_74.png', 201, N'Павел', N'Максимович', N'Рожков', N'3506691089', N'830713603')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (70, 1, N'СервисХмельМонтаж', N'galina31@melnikov.ru', N'+7 (922) 344-73-38', N'\agents\agent_92.png', 124, N'Анжелика', N'Дмитриевна', N'Горбунова', N'3459886235', N'356196105')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (71, 2, N'СибБашкирТекстиль', N'vzimina@zdanova.com', N'(495) 285-78-38', N'\agents\agent_69.png', 218, N'Григорий', N'Владимирович', N'Елисеева', N'7392007090', N'576103661')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (72, 2, N'СибГаз', N'inna.sarova@panfilov.ru', N'(495) 945-37-25', N'\agents\agent_103.png', 488, N'Вячеслав', N'Романович', N'Третьякова', N'6483417250', N'455013058')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (73, 1, N'СибПивОмскСнаб', N'evorontova@potapova.ru', N'+7 (922) 153-95-22', N'\agents\agent_46.png', 477, N'Людмила', N'Александровна', N'Сафонова', N'5676173945', N'256512286')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (74, 4, N'Софт', N'jterentev@ersov.com', N'(35222) 12-82-65', N'\agents\agent_122.png', 292, N'Петухова', N'Прохор', N'Фёдорович', N'3889910123', N'952047511')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (75, 1, N'СофтРосБух', N'ivanova.antonin@rodionov.ru', N'+7 (922) 445-69-17', N'\agents\agent_124.png', 69, N'Белова', N'Полина', N'Владимировна', N'8321561226', N'807803984')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (76, 3, N'Строй', N'soloveva.adam@andreev.ru', N'(812) 447-45-59', NULL, 12, N'Кудрявцев', N'Адриан', N'Андреевич', N'6678884759', N'279288618')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (77, 4, N'СтройГорНефть', N'lysy.kolesnikova@molcanova.com', N'(812) 385-21-37', N'\agents\agent_37.png', 161, N'Тарасова', N'Макар', N'Максимович', N'5916775587', N'398299418')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (78, 5, N'ТверьМетизУралСнос', N'rlazareva@novikov.ru', N'(35222) 57-92-75', N'\agents\agent_109.png', 165, N'Зоя', N'Андреевна', N'Соболева', N'1076095397', N'947828491')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (79, 6, N'ТверьМонтажОмск', N'dteterina@selezneva.ru', N'8-800-363-43-86', N'\agents\agent_128.png', 272, N'Матвей', N'Романович', N'Большакова', N'2421347164', N'157370604')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (80, 2, N'ТверьХозМорСбыт', N'marina58@koroleva.com', N'(495) 416-75-67', N'\agents\agent_117.png', 207, N'Аким', N'Львович', N'Субботина', N'6681338084', N'460530907')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (81, 1, N'ТекстильУралАвтоОпт', N'hkononova@pavlova.ru', N'(35222) 98-76-54', NULL, 176, N'Алина', N'Сергеевна', N'Дьячковаа', N'3930950057', N'678529397')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (82, 1, N'ТелеГлавВекторСбыт', N'nsitnikov@kovaleva.ru', N'(35222) 56-15-37', N'\agents\agent_31.png', 185, N'Екатерина', N'Фёдоровна', N'Ковалёва', N'9504787157', N'419758597')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (83, 4, N'ТелекомГор', N'gorskov.larisa@kalinin.com', N'(35222) 78-93-21', N'\agents\agent_98.png', 255, N'Ксения', N'Андреевна', N'Михайлова', N'3748947224', N'766431901')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (84, 2, N'ТелекомЮпитер', N'kulikov.adrian@zuravlev.org', N'(812) 895-67-23', N'\agents\agent_81.png', 302, N'Калинина', N'Татьяна', N'Ивановна', N'9383182378', N'944520594')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (85, 4, N'Тех', N'vasilisa99@belyev.ru', N'+7 (922) 427-13-31', N'\agents\agent_61.png', 278, N'Аким', N'Романович', N'Логинова', N'9282924869', N'587356429')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (86, 3, N'Транс', N'artem.fadeev@polykov.com', N'8-800-954-23-89', N'\agents\agent_127.png', 38, N'Евсеева', N'Болеслав', N'Сергеевич', N'9604275878', N'951258069')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (87, 4, N'ТяжРадиоУралПроф', N'liliy62@grisina.ru', N'+7 (922) 885-66-15', N'\agents\agent_88.png', 278, N'София', N'Алексеевна', N'Мухина', N'5688533246', N'401535045')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (88, 1, N'УралСтройХмель', N'aleksandr95@kolobova.ru', N'(35222) 39-23-65', N'\agents\agent_113.png', 372, N'Август', N'Борисович', N'Красильникова', N'8773558039', N'402502867')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (89, 6, N'ФинансТелеТверь', N'medvedev.klim@afanasev.com', N'(812) 115-56-93', N'\agents\agent_45.png', 100, N'Зайцеваа', N'Дарья', N'Сергеевна', N'2646091050', N'971874277')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (90, 1, N'Флот', N'gerasim.makarov@kornilov.ru', N'8-800-144-25-38', N'\agents\agent_87.png', 473, N'Василий', N'Андреевич', N'Ковалёв', N'1112170258', N'382584255')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (91, 4, N'ХозЮпитер', N'jisakova@nazarova.com', N'+7 (922) 332-48-96', N'\agents\agent_114.png', 375, N'Максимоваа', N'Вера', N'Фёдоровна', N'6667635058', N'380592865')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (92, 5, N'Цемент', N'panova.klementina@bobrov.ru', N'8-800-517-78-47', N'\agents\agent_54.png', 340, N'Анфиса', N'Фёдоровна', N'Буроваа', N'9662118663', N'650216214')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (93, 1, N'ЦементАсбоцемент', N'polykov.veronika@artemeva.ru', N'(495) 184-87-92', NULL, 426, N'Воронова', N'Мария', N'Александровна', N'4345774724', N'352469905')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (94, 1, N'ЦементКрепТех-М', N'yna.evdokimov@gordeeva.ru', N'(812) 838-79-58', N'\agents\agent_82.png', 189, N'Сергеев', N'Владлен', N'Александрович', N'5359981084', N'680416300')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (95, 4, N'Электро', N'likacev.makar@antonov.ru', N'8-800-714-36-41', N'\agents\agent_93.png', 366, N'Шарапова', N'Елена', N'Дмитриевна', N'7896029866', N'786038848')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (96, 4, N'ЭлектроМоторТрансСнос', N'inessa.voronov@sidorova.ru', N'(35222) 43-62-19', NULL, 151, N'Людмила', N'Евгеньевна', N'Новиковаа', N'6608362851', N'799760512')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (97, 1, N'ЭлектроРемОрионЛизинг', N'anfisa.fedotova@tvetkov.ru', N'(495) 519-97-41', N'\agents\agent_68.png', 198, N'Тарасова', N'Дан', N'Львович', N'1340072597', N'500478249')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (98, 4, N'ЭлектроТранс', N'boleslav.zukova@nikiforova.com', N'(812) 342-24-31', N'\agents\agent_91.png', 129, N'Сава', N'Александрович', N'Титова', N'6019144874', N'450629885')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (99, 2, N'ЮпитерЛенГараж-М', N'larkipova@gorbunov.ru', N'(495) 327-58-25', N'\agents\agent_48.png', 470, N'Васильева', N'Валерия', N'Борисовна', N'2038393690', N'259672761')
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (100, 4, N'ЮпитерТяжОрионЭкспедиция', N'gblokin@orlov.net', N'(35222) 95-63-65', N'\agents\agent_44.png', 446, N'Валерий', N'Евгеньевич', N'Виноградов', N'6843174002', N'935556458')
GO
INSERT [dbo].[Agents] ([agent_ID], [agent_type_ID], [title], [email], [phone], [logo], [priority], [director_surname], [director_name], [director_patronymic], [INN], [KPP]) VALUES (101, 3, N'gsagasgas', N'gasgas', N'215126512', NULL, 124, N'gsa', N'gasg', N'gas', N'gsagas', N'gasgas')
SET IDENTITY_INSERT [dbo].[Agents] OFF
GO
SET IDENTITY_INSERT [dbo].[Agents_type] ON 

INSERT [dbo].[Agents_type] ([type_ID], [title]) VALUES (1, N'ЗАО')
INSERT [dbo].[Agents_type] ([type_ID], [title]) VALUES (2, N'МКК')
INSERT [dbo].[Agents_type] ([type_ID], [title]) VALUES (3, N'МФО')
INSERT [dbo].[Agents_type] ([type_ID], [title]) VALUES (4, N'ОАО')
INSERT [dbo].[Agents_type] ([type_ID], [title]) VALUES (5, N'ООО')
INSERT [dbo].[Agents_type] ([type_ID], [title]) VALUES (6, N'ПАО')
SET IDENTITY_INSERT [dbo].[Agents_type] OFF
GO
SET IDENTITY_INSERT [dbo].[Cex] ON 

INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (1, N'Литейниый')
INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (2, N'Производственный')
INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (3, N'Заливочный')
INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (4, N'Создаваемый')
INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (5, N'Красивый')
INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (6, N'Полезный')
INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (7, N'Гениальный')
INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (8, N'Современный')
INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (9, N'Невероятный')
INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (10, N'Качественный')
INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (11, N'Главный')
INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (12, N'Лесозаготовочный')
INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (13, N'Резиновый')
INSERT [dbo].[Cex] ([cex_num_ID], [title]) VALUES (14, N'Пластиковый')
SET IDENTITY_INSERT [dbo].[Cex] OFF
GO
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (1, 1)
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (2, 5)
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (3, 6)
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (4, 7)
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (5, 8)
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (6, 9)
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (7, 10)
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (8, 11)
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (9, 12)
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (10, 13)
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (11, 14)
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (12, 15)
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (13, 16)
INSERT [dbo].[Cex_empolyees] ([cex_num_ID], [employee_ID]) VALUES (14, 17)
GO
SET IDENTITY_INSERT [dbo].[Employee_pasport] ON 

INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (1, N'Сергеевич', N'Павлов', N'Алексей', CAST(N'2002-05-07' AS Date), CAST(N'2016-06-10' AS Date), N'Отделом УФМС', N'004-006', 9216, 80166)
INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (5, N'Давидович', N'Савицкий', N'Роман', CAST(N'1974-12-03' AS Date), CAST(N'2013-11-13' AS Date), N'Отделением УФМС России по г. Йошкар-Ола', N'810-953', 4998, 509057)
INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (6, N'Кудряшов', N'Егорова', N'Кузьма', CAST(N'2022-01-22' AS Date), CAST(N'2018-06-02' AS Date), N'aut velit et vero cum ad vero minima porro in', N'3660', 8546, 233088)
INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (7, N'Гришин', N'Королёва', N'Лилия', CAST(N'1987-06-24' AS Date), CAST(N'1977-04-30' AS Date), N'sint nobis fuga suscipit quo a saepe minus qui perspiciatis', N'7863', 4110, 480579)
INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (8, N'Кононов', N'Симонов', N'Люся', CAST(N'1970-09-17' AS Date), CAST(N'2003-05-23' AS Date), N'est aut soluta rerum natus laudantium iste blanditiis beatae esse', N'9186', 1567, 902365)
INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (9, N'Кононов', N'Самойлов', N'Лаврентий', CAST(N'1991-06-05' AS Date), CAST(N'2016-10-09' AS Date), N'sed rem inventore similique non distinctio nisi laborum amet reprehenderit', N'7046', 6017, 619092)
INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (10, N'Рожков', N'Пестов', N'Лилия', CAST(N'1996-10-15' AS Date), CAST(N'2012-01-12' AS Date), N'earum aspernatur quos consectetur molestias explicabo recusandae dolorum necessitatibus laborum', N'5079', 8486, 141832)
INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (11, N'Белоусова', N'Шубина', N'Герман', CAST(N'1999-08-10' AS Date), CAST(N'1995-04-18' AS Date), N'harum nulla dolorum at dicta vel voluptas sed facere quae', N'5299', 6571, 778464)
INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (12, N'Овчинников', N'Воробьёва', N'Михаил', CAST(N'2001-03-20' AS Date), CAST(N'2020-10-10' AS Date), N'optio iste qui inventore dolore quae aut adipisci pariatur officiis', N'5727', 1116, 125549)
INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (13, N'Наумова', N'Блинова', N'Кирилл', CAST(N'2014-10-16' AS Date), CAST(N'1997-01-12' AS Date), N'pariatur saepe sed velit ipsa animi odio enim magnam provident', N'2298', 4663, 156512)
INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (14, N'Бобылёва', N'Гусева', N'Вероника', CAST(N'1978-08-20' AS Date), CAST(N'1998-04-08' AS Date), N'beatae consectetur itaque ipsam sed vero ex fugit aliquid et', N'9590', 3874, 280990)
INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (15, N'Дроздова', N'Блохин', N'Екатерина', CAST(N'2015-11-05' AS Date), CAST(N'1978-10-13' AS Date), N'quasi id ex repellendus suscipit ipsum natus dolores voluptas excepturi', N'1946', 2976, 851775)
INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (16, N'Иванов', N'Федосеев', N'Светлана', CAST(N'1974-04-15' AS Date), CAST(N'1977-09-23' AS Date), N'aliquid quae sed rerum velit molestiae sequi et modi qui', N'4275', 3159, 200650)
INSERT [dbo].[Employee_pasport] ([employee_ID], [patronymic], [surname], [name], [birthday], [date_of_issue], [issued_by], [department_code], [series], [number]) VALUES (17, N'Корнилова', N'Пономарёв', N'Николай', CAST(N'2019-03-25' AS Date), CAST(N'2003-08-26' AS Date), N'saepe dolor quia et ipsam omnis et eos consectetur eius', N'7879', 8082, 985900)
SET IDENTITY_INSERT [dbo].[Employee_pasport] OFF
GO
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (1, N'1234123412341234', 1, NULL)
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (5, N'1234', 0, NULL)
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (6, N'4321421512', 0, NULL)
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (7, N'512561265', 0, NULL)
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (8, N'56521521', 1, NULL)
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (9, N'521512521', 0, NULL)
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (10, N'5215126676', 1, NULL)
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (11, N'521521', 1, NULL)
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (12, N'51251211', 0, NULL)
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (13, N'521521', 0, NULL)
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (14, N'521667', 1, NULL)
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (15, N'734743225', 0, NULL)
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (16, N'07321515', 1, NULL)
INSERT [dbo].[Employes] ([employee_ID], [bank_details], [is_have_family], [health_problems]) VALUES (17, N'985698128', 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([equipment_ID], [qty], [title]) VALUES (1, 5, N'Шуруповёрт')
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
INSERT [dbo].[Equipment_of_employee] ([equipment_ID], [employee_ID]) VALUES (1, 1)
GO
SET IDENTITY_INSERT [dbo].[Product_sale] ON 

INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (1, 34, 25, CAST(N'2010-06-21' AS Date), 7)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (2, 47, 43, CAST(N'2016-02-17' AS Date), 18)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (3, 44, 64, CAST(N'2012-11-07' AS Date), 9)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (4, 3, 60, CAST(N'2019-06-01' AS Date), 5)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (5, 18, 56, CAST(N'2014-06-11' AS Date), 11)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (6, 14, 65, CAST(N'2012-08-12' AS Date), 12)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (7, 15, 17, CAST(N'2012-09-26' AS Date), 16)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (8, 22, 64, CAST(N'2018-02-28' AS Date), 3)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (9, 12, 38, CAST(N'2011-08-27' AS Date), 10)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (10, 16, 31, CAST(N'2011-08-19' AS Date), 2)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (11, 27, 64, CAST(N'2015-02-02' AS Date), 20)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (12, 45, 45, CAST(N'2011-07-01' AS Date), 14)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (13, 5, 99, CAST(N'2013-12-23' AS Date), 8)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (14, 34, 85, CAST(N'2017-11-11' AS Date), 10)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (15, 44, 50, CAST(N'2014-04-15' AS Date), 14)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (16, 44, 18, CAST(N'2018-06-22' AS Date), 6)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (17, 11, 62, CAST(N'2013-07-11' AS Date), 12)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (18, 22, 55, CAST(N'2016-08-13' AS Date), 7)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (19, 5, 17, CAST(N'2014-07-28' AS Date), 8)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (20, 43, 77, CAST(N'2010-04-15' AS Date), 8)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (21, 43, 26, CAST(N'2017-10-12' AS Date), 8)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (22, 49, 81, CAST(N'2012-09-02' AS Date), 13)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (23, 22, 27, CAST(N'2015-08-08' AS Date), 14)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (24, 42, 39, CAST(N'2012-05-25' AS Date), 15)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (25, 20, 96, CAST(N'2014-03-06' AS Date), 12)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (26, 17, 65, CAST(N'2016-05-18' AS Date), 6)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (27, 23, 35, CAST(N'2014-07-11' AS Date), 10)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (28, 27, 44, CAST(N'2016-08-18' AS Date), 8)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (29, 38, 39, CAST(N'2019-07-25' AS Date), 19)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (30, 8, 12, CAST(N'2019-03-17' AS Date), 6)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (31, 35, 76, CAST(N'2014-08-06' AS Date), 9)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (32, 33, 39, CAST(N'2011-09-12' AS Date), 18)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (33, 43, 52, CAST(N'2011-08-28' AS Date), 11)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (34, 1, 44, CAST(N'2015-12-25' AS Date), 4)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (35, 14, 55, CAST(N'2016-02-25' AS Date), 8)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (36, 21, 85, CAST(N'2012-03-12' AS Date), 18)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (37, 40, 92, CAST(N'2018-06-13' AS Date), 18)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (38, 41, 96, CAST(N'2017-11-05' AS Date), 2)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (39, 49, 41, CAST(N'2016-02-26' AS Date), 1)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (40, 32, 25, CAST(N'2010-06-20' AS Date), 8)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (41, 10, 85, CAST(N'2015-06-23' AS Date), 12)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (42, 43, 38, CAST(N'2013-01-24' AS Date), 3)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (43, 31, 54, CAST(N'2015-02-28' AS Date), 5)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (44, 16, 55, CAST(N'2019-07-05' AS Date), 14)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (45, 8, 8, CAST(N'2014-03-06' AS Date), 6)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (46, 41, 45, CAST(N'2017-05-01' AS Date), 5)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (47, 39, 36, CAST(N'2015-01-17' AS Date), 15)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (48, 2, 89, CAST(N'2018-04-14' AS Date), 7)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (49, 21, 45, CAST(N'2014-12-12' AS Date), 14)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (50, 22, 99, CAST(N'2015-03-28' AS Date), 16)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (51, 1, 82, CAST(N'2017-11-24' AS Date), 15)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (52, 32, 2, CAST(N'2014-06-04' AS Date), 2)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (53, 7, 62, CAST(N'2019-03-18' AS Date), 11)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (54, 16, 82, CAST(N'2015-09-12' AS Date), 8)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (55, 5, 92, CAST(N'2012-01-02' AS Date), 13)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (56, 44, 54, CAST(N'2011-02-01' AS Date), 12)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (57, 36, 22, CAST(N'2016-10-07' AS Date), 17)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (58, 38, 27, CAST(N'2017-06-07' AS Date), 1)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (59, 6, 76, CAST(N'2016-02-26' AS Date), 14)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (60, 13, 76, CAST(N'2013-11-09' AS Date), 5)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (61, 8, 54, CAST(N'2015-07-01' AS Date), 14)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (62, 4, 69, CAST(N'2015-08-27' AS Date), 6)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (63, 47, 92, CAST(N'2013-08-27' AS Date), 15)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (64, 30, 56, CAST(N'2013-05-10' AS Date), 2)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (65, 44, 12, CAST(N'2013-12-01' AS Date), 19)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (66, 2, 43, CAST(N'2011-06-11' AS Date), 16)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (67, 13, 31, CAST(N'2019-05-24' AS Date), 16)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (68, 3, 76, CAST(N'2017-04-02' AS Date), 1)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (69, 9, 65, CAST(N'2013-04-08' AS Date), 10)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (70, 23, 36, CAST(N'2019-08-16' AS Date), 20)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (71, 3, 67, CAST(N'2011-12-26' AS Date), 5)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (72, 18, 31, CAST(N'2016-07-19' AS Date), 19)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (73, 26, 52, CAST(N'2014-03-17' AS Date), 1)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (74, 17, 93, CAST(N'2011-06-14' AS Date), 13)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (75, 32, 100, CAST(N'2017-05-20' AS Date), 13)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (76, 14, 12, CAST(N'2010-04-13' AS Date), 6)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (77, 14, 93, CAST(N'2019-10-15' AS Date), 9)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (78, 7, 7, CAST(N'2019-10-08' AS Date), 20)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (79, 18, 38, CAST(N'2018-04-08' AS Date), 8)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (80, 48, 96, CAST(N'2012-06-14' AS Date), 2)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (81, 10, 77, CAST(N'2012-04-23' AS Date), 3)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (82, 33, 56, CAST(N'2015-08-17' AS Date), 6)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (83, 32, 36, CAST(N'2016-09-14' AS Date), 7)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (84, 38, 14, CAST(N'2012-03-23' AS Date), 15)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (85, 49, 6, CAST(N'2010-11-17' AS Date), 5)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (86, 8, 18, CAST(N'2016-11-17' AS Date), 13)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (87, 26, 22, CAST(N'2010-05-03' AS Date), 19)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (88, 12, 97, CAST(N'2019-03-06' AS Date), 1)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (89, 44, 41, CAST(N'2017-10-14' AS Date), 20)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (90, 23, 67, CAST(N'2017-02-08' AS Date), 3)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (91, 31, 31, CAST(N'2017-08-02' AS Date), 3)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (92, 25, 89, CAST(N'2017-03-09' AS Date), 18)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (93, 11, 38, CAST(N'2017-11-13' AS Date), 18)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (94, 11, 96, CAST(N'2015-12-02' AS Date), 19)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (95, 37, 21, CAST(N'2011-06-14' AS Date), 19)
INSERT [dbo].[Product_sale] ([product_sale_ID], [product_ID], [agent_ID], [release_date], [qty]) VALUES (96, 14, 44, CAST(N'2014-08-14' AS Date), 16)
SET IDENTITY_INSERT [dbo].[Product_sale] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_type] ON 

INSERT [dbo].[Product_type] ([product_type_ID], [title]) VALUES (1, N' Взрослый')
INSERT [dbo].[Product_type] ([product_type_ID], [title]) VALUES (2, N' Для больших деток')
INSERT [dbo].[Product_type] ([product_type_ID], [title]) VALUES (3, N' Для маленьких деток')
INSERT [dbo].[Product_type] ([product_type_ID], [title]) VALUES (4, N' Упругий')
INSERT [dbo].[Product_type] ([product_type_ID], [title]) VALUES (5, N' Цифровой')
SET IDENTITY_INSERT [dbo].[Product_type] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (1, N'Попрыгун 2299', 1, 34750945, 2, 2, 1688.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (2, N'Попрыгун 3016', 5, 74919447, 1, 12, 615.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (3, N'Попрыгун 6412', 2, 28152672, 2, 9, 523.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (4, N'Попрыгун 6882', 4, 12732041, 1, 6, 809.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (5, N'Попрыгунчик детский 1916', 1, 73345857, 5, 8, 832.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (6, N'Попрыгунчик детский 2071', 3, 3157982, 3, 6, 275.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (7, N'Попрыгунчик детский 5117', 2, 80875656, 3, 12, 338.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (8, N'Попрыгунчик детский 6029', 2, 69184347, 3, 7, 419.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (9, N'Попрыгунчик детский 6888', 3, 13875235, 4, 12, 1972.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (10, N'Попрыгунчик детский желтый 1371', 5, 85514178, 3, 7, 252.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (11, N'Попрыгунчик детский желтый 2582', 1, 32125209, 3, 11, 1730.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (12, N'Попрыгунчик детский желтый 6051', 5, 88211092, 4, 12, 727.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (13, N'Попрыгунчик детский желтый 6678', 2, 80007300, 2, 1, 1768.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (14, N'Попрыгунчик детский красный 1289', 3, 82925345, 4, 10, 1919.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (15, N'Попрыгунчик детский красный 1740', 1, 43330133, 5, 3, 1749.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (16, N'Попрыгунчик детский красный 1972', 2, 59509797, 1, 7, 794.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (17, N'Попрыгунчик детский красный 3240', 2, 88098604, 3, 8, 882.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (18, N'Попрыгунчик детский красный 3839', 2, 26655484, 5, 2, 1921.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (19, N'Попрыгунчик детский красный 4969', 3, 10614909, 5, 12, 913.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (20, N'Попрыгунчик детский красный 5400', 1, 68237918, 4, 5, 1570.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (21, N'Попрыгунчик детский красный 6591', 1, 79704172, 5, 7, 592.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (22, N'Попрыгунчик детский розовый 1657', 3, 86558177, 4, 3, 662.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (23, N'Попрыгунчик детский розовый 2694', 2, 13340356, 4, 6, 1691.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (24, N'Попрыгунчик детский розовый 5197', 5, 89612317, 1, 3, 1948.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (25, N'Попрыгунчик детский розовый 5376', 3, 74291677, 4, 6, 1889.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (26, N'Попрыгунчик детский розовый 5501', 1, 25409940, 2, 7, 652.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (27, N'Попрыгунчик детский розовый 6346', 5, 30282346, 1, 10, 1024.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (28, N'Попрыгунчик для девочек 1560', 3, 47378395, 5, 6, 235.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (29, N'Попрыгунчик для девочек 1656', 5, 22217580, 5, 6, 1494.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (30, N'Попрыгунчик для девочек 1895', 5, 54983244, 4, 4, 1586.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (31, N'Попрыгунчик для девочек 2311', 1, 25262035, 4, 1, 1308.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (32, N'Попрыгунчик для девочек 3389', 1, 26434211, 3, 10, 597.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (33, N'Попрыгунчик для девочек 6849', 1, 10084400, 1, 11, 933.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (34, N'Попрыгунчик для кошечек 2604', 3, 11890154, 2, 7, 842.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (35, N'Попрыгунчик для кошечек 3741', 1, 43987093, 5, 4, 1668.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (36, N'Попрыгунчик для кошечек 4740', 4, 80698285, 1, 6, 1973.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (37, N'Попрыгунчик для мальчиков 3307', 5, 30269726, 4, 10, 1533.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (38, N'Попрыгунчик для мальчиков 3929', 3, 2158097, 1, 9, 255.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (39, N'Попрыгунчик для мальчиков 4791', 2, 45540528, 3, 11, 1260.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (40, N'Попрыгунчик для мальчиков 5389', 1, 70873532, 3, 2, 1739.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (41, N'Попрыгунчик для собачек 3500', 2, 79994924, 2, 9, 1142.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (42, N'Попрыгунчик для собачек 4381', 5, 27301447, 2, 5, 1234.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (43, N'Попрыгунчик для собачек 4387', 4, 89607276, 3, 8, 912.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (44, N'Попрыгунчик для собачек 4485', 1, 33440129, 2, 12, 1995.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (45, N'Попрыгунчик для собачек 4529', 2, 81713527, 3, 6, 1923.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (46, N'Попрыгунчик для собачек 5096', 1, 67975083, 4, 9, 1465.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (47, N'Попрыгунчик для собачек 5754', 5, 79018408, 2, 8, 633.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (48, N'Шар 2243', 1, 42536654, 3, 12, 1247.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (49, N'Шар 4124', 5, 39025230, 5, 8, 1160.0000)
INSERT [dbo].[Products] ([product_id], [title], [product_type_ID], [articul], [peoples_need_to_create], [cex_num_ID], [minimal_price]) VALUES (50, N'Шар 6366', 1, 25514523, 4, 4, 1932.0000)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[Agent_address]  WITH CHECK ADD  CONSTRAINT [FK_Agent_address_Agents] FOREIGN KEY([Agent_ID])
REFERENCES [dbo].[Agents] ([agent_ID])
GO
ALTER TABLE [dbo].[Agent_address] CHECK CONSTRAINT [FK_Agent_address_Agents]
GO
ALTER TABLE [dbo].[Agent_release_history]  WITH CHECK ADD  CONSTRAINT [FK_Agent_release_history_Agents] FOREIGN KEY([agent_ID])
REFERENCES [dbo].[Agents] ([agent_ID])
GO
ALTER TABLE [dbo].[Agent_release_history] CHECK CONSTRAINT [FK_Agent_release_history_Agents]
GO
ALTER TABLE [dbo].[Agent_release_history]  WITH CHECK ADD  CONSTRAINT [FK_Agent_release_history_Products] FOREIGN KEY([product_ID])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Agent_release_history] CHECK CONSTRAINT [FK_Agent_release_history_Products]
GO
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_Agents_Agents_type] FOREIGN KEY([agent_type_ID])
REFERENCES [dbo].[Agents_type] ([type_ID])
GO
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_Agents_Agents_type]
GO
ALTER TABLE [dbo].[Cex_empolyees]  WITH CHECK ADD  CONSTRAINT [FK_Cex_Employes] FOREIGN KEY([employee_ID])
REFERENCES [dbo].[Employes] ([employee_ID])
GO
ALTER TABLE [dbo].[Cex_empolyees] CHECK CONSTRAINT [FK_Cex_Employes]
GO
ALTER TABLE [dbo].[Cex_empolyees]  WITH CHECK ADD  CONSTRAINT [FK_Cex_empolyees_Cex] FOREIGN KEY([cex_num_ID])
REFERENCES [dbo].[Cex] ([cex_num_ID])
GO
ALTER TABLE [dbo].[Cex_empolyees] CHECK CONSTRAINT [FK_Cex_empolyees_Cex]
GO
ALTER TABLE [dbo].[Employes]  WITH CHECK ADD  CONSTRAINT [FK_Employes_Employee_pasport] FOREIGN KEY([employee_ID])
REFERENCES [dbo].[Employee_pasport] ([employee_ID])
GO
ALTER TABLE [dbo].[Employes] CHECK CONSTRAINT [FK_Employes_Employee_pasport]
GO
ALTER TABLE [dbo].[Equipment_of_employee]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_of_employee_Employes] FOREIGN KEY([employee_ID])
REFERENCES [dbo].[Employes] ([employee_ID])
GO
ALTER TABLE [dbo].[Equipment_of_employee] CHECK CONSTRAINT [FK_Equipment_of_employee_Employes]
GO
ALTER TABLE [dbo].[Equipment_of_employee]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_of_employee_Equipment] FOREIGN KEY([equipment_ID])
REFERENCES [dbo].[Equipment] ([equipment_ID])
GO
ALTER TABLE [dbo].[Equipment_of_employee] CHECK CONSTRAINT [FK_Equipment_of_employee_Equipment]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_material_type] FOREIGN KEY([material_type_ID])
REFERENCES [dbo].[material_type] ([type_ID])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_material_type]
GO
ALTER TABLE [dbo].[Materials_history]  WITH CHECK ADD  CONSTRAINT [FK_Materials_history_Materials] FOREIGN KEY([material_ID])
REFERENCES [dbo].[Materials] ([material_ID])
GO
ALTER TABLE [dbo].[Materials_history] CHECK CONSTRAINT [FK_Materials_history_Materials]
GO
ALTER TABLE [dbo].[materials_need_to_create_poduct]  WITH CHECK ADD  CONSTRAINT [FK_materials_need_to_create_poduct_Materials] FOREIGN KEY([material_ID])
REFERENCES [dbo].[Materials] ([material_ID])
GO
ALTER TABLE [dbo].[materials_need_to_create_poduct] CHECK CONSTRAINT [FK_materials_need_to_create_poduct_Materials]
GO
ALTER TABLE [dbo].[materials_need_to_create_poduct]  WITH CHECK ADD  CONSTRAINT [FK_materials_need_to_create_poduct_Products] FOREIGN KEY([product_ID])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[materials_need_to_create_poduct] CHECK CONSTRAINT [FK_materials_need_to_create_poduct_Products]
GO
ALTER TABLE [dbo].[Minimal_price_history_change]  WITH CHECK ADD  CONSTRAINT [FK_Minimal_price_history_change_Agents] FOREIGN KEY([agent_ID])
REFERENCES [dbo].[Agents] ([agent_ID])
GO
ALTER TABLE [dbo].[Minimal_price_history_change] CHECK CONSTRAINT [FK_Minimal_price_history_change_Agents]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Agents] FOREIGN KEY([agent_ID])
REFERENCES [dbo].[Agents] ([agent_ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Agents]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products] FOREIGN KEY([product_ID])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Products]
GO
ALTER TABLE [dbo].[Priority_history]  WITH CHECK ADD  CONSTRAINT [FK_Priority_history_Agents] FOREIGN KEY([agent_ID])
REFERENCES [dbo].[Agents] ([agent_ID])
GO
ALTER TABLE [dbo].[Priority_history] CHECK CONSTRAINT [FK_Priority_history_Agents]
GO
ALTER TABLE [dbo].[Product_info]  WITH CHECK ADD  CONSTRAINT [FK_Product_info_Products] FOREIGN KEY([product_ID])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Product_info] CHECK CONSTRAINT [FK_Product_info_Products]
GO
ALTER TABLE [dbo].[Product_info]  WITH CHECK ADD  CONSTRAINT [FK_Product_info_Standart_types] FOREIGN KEY([standart_type_ID])
REFERENCES [dbo].[Standart_types] ([type_ID])
GO
ALTER TABLE [dbo].[Product_info] CHECK CONSTRAINT [FK_Product_info_Standart_types]
GO
ALTER TABLE [dbo].[Product_sale]  WITH CHECK ADD  CONSTRAINT [FK_Product_sale_Agents] FOREIGN KEY([agent_ID])
REFERENCES [dbo].[Agents] ([agent_ID])
GO
ALTER TABLE [dbo].[Product_sale] CHECK CONSTRAINT [FK_Product_sale_Agents]
GO
ALTER TABLE [dbo].[Product_sale]  WITH CHECK ADD  CONSTRAINT [FK_Product_sale_Products] FOREIGN KEY([product_ID])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Product_sale] CHECK CONSTRAINT [FK_Product_sale_Products]
GO
ALTER TABLE [dbo].[Product_size]  WITH CHECK ADD  CONSTRAINT [FK_Product_size_Products] FOREIGN KEY([product_ID])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Product_size] CHECK CONSTRAINT [FK_Product_size_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Cex] FOREIGN KEY([cex_num_ID])
REFERENCES [dbo].[Cex] ([cex_num_ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Cex]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Product_type] FOREIGN KEY([product_type_ID])
REFERENCES [dbo].[Product_type] ([product_type_ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Product_type]
GO
ALTER TABLE [dbo].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_Supplier_type] FOREIGN KEY([supplier_type_ID])
REFERENCES [dbo].[Supplier_type] ([supplier_type_ID])
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [FK_Suppliers_Supplier_type]
GO
ALTER TABLE [dbo].[Supply_history]  WITH CHECK ADD  CONSTRAINT [FK_Supply_history_Materials] FOREIGN KEY([material_ID])
REFERENCES [dbo].[Materials] ([material_ID])
GO
ALTER TABLE [dbo].[Supply_history] CHECK CONSTRAINT [FK_Supply_history_Materials]
GO
ALTER TABLE [dbo].[Supply_history]  WITH CHECK ADD  CONSTRAINT [FK_Supply_history_Suppliers] FOREIGN KEY([supplier_ID])
REFERENCES [dbo].[Suppliers] ([supplier_ID])
GO
ALTER TABLE [dbo].[Supply_history] CHECK CONSTRAINT [FK_Supply_history_Suppliers]
GO
USE [master]
GO
ALTER DATABASE [poprijenok_PAVLOVAS] SET  READ_WRITE 
GO
