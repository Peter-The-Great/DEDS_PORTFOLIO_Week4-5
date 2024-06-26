USE [Great_Outdoors]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 18-3-2024 14:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[SK_COURSE_id] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[COURSE_id] [int] NOT NULL,
	[COURSE_description] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[SK_COURSE_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 18-3-2024 14:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[SK_ORDER_DETAIL_id] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[ORDER_DETAIL_id] [int] NOT NULL,
	[UNIT_COST_money] [decimal](19, 4) NULL,
	[PRODUCT_id] [int] NULL,
	[UNIT_SALE_PRICE_money] [decimal](19, 4) NULL,
	[UNIT_PRICE_money] [decimal](19, 4) NULL,
	[QUANTITY_number] [int] NULL,
	[ORDER_TABLE_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SK_ORDER_DETAIL_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 18-3-2024 14:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[SK_ORDER_TABLE_id] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[ORDER_TABLE_id] [int] NOT NULL,
	[SALES_STAFF_id] [int] NULL,
	[RETAILER_CONTACT_id] [int] NULL,
	[ORDER_METHOD_name] [nvarchar](80) NULL,
	[ORDER_DATE_date] [nvarchar](30) NULL,
	[ORDER_METHOD_id] [int] NULL,
	[RETAILER_name] [nvarchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[SK_ORDER_TABLE_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18-3-2024 14:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[SK_PRODUCT_id] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[PRODUCT_id] [int] NOT NULL,
	[PRODUCT_MARGIN_percentage] [decimal](12, 12) NULL,
	[PRODUCT_image] [nvarchar](60) NULL,
	[PRODUCT_PRODUCTION_COST_money] [decimal](19, 4) NULL,
	[LANGUAGE_name] [nvarchar](80) NULL,
	[PRODUCT_LINE_id] [int] NULL,
	[PRODUCT_name] [nvarchar](80) NULL,
	[PRODUCT_LINE_name] [nvarchar](80) NULL,
	[PRODUCT_description] [ntext] NULL,
	[PRODUCT_INTRODUCTION_DATE_date] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[SK_PRODUCT_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Retailer]    Script Date: 18-3-2024 14:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Retailer](
	[SK_RETAILER_id] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[RETAILER_id] [int] NOT NULL,
	[FAX_phone] [nvarchar](30) NULL,
	[RETAILER_MR_id] [int] NULL,
	[COUNTRY_id] [int] NULL,
	[RETAILER_TYPE_id] [int] NULL,
	[COUNTRY_name] [nvarchar](80) NULL,
	[ADDRESS2_address] [nvarchar](80) NULL,
	[REGION_name] [nvarchar](80) NULL,
	[SALES_TERRITORY_id] [int] NULL,
	[PHONE_phone] [nvarchar](30) NULL,
	[CITY_name] [nvarchar](80) NULL,
	[SEGMENT_LANGUAGE_code] [nvarchar](40) NULL,
	[RETAILER_name] [nvarchar](80) NULL,
	[CURRENCY_name] [nvarchar](80) NULL,
	[SEGMENT_code] [nvarchar](40) NULL,
	[ADDRESS1_address] [nvarchar](80) NULL,
	[FLAG_image] [nvarchar](60) NULL,
	[RETAILER_TYPE_name] [nvarchar](80) NULL,
	[TERRITORY_name] [nvarchar](80) NULL,
	[COUNTRY_LANGUAGE_code] [nvarchar](40) NULL,
	[COMPANY_name] [nvarchar](80) NULL,
	[POSTAL_ZONE_code] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[SK_RETAILER_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Retailer_Contact]    Script Date: 18-3-2024 14:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Retailer_Contact](
	[SK_RETAILER_CONTACT_id] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[RETAILER_CONTACT_id] [int] NOT NULL,
	[FAX_phone] [nvarchar](30) NULL,
	[COUNTRY_id] [int] NULL,
	[FIRST_NAME_name] [nvarchar](80) NULL,
	[COUNTRY_name] [nvarchar](80) NULL,
	[EMAIL_address] [nvarchar](80) NULL,
	[ADDRESS2_address] [nvarchar](80) NULL,
	[REGION_name] [nvarchar](80) NULL,
	[EXTENSION_number] [int] NULL,
	[SALES_TERRITORY_id] [int] NULL,
	[LANGUAGE_name] [nvarchar](80) NULL,
	[CITY_name] [nvarchar](80) NULL,
	[LAST_NAME_name] [nvarchar](80) NULL,
	[GENDER_char] [char](1) NULL,
	[CURRENCY_name] [nvarchar](80) NULL,
	[ADDRESS1_address] [nvarchar](80) NULL,
	[RETAILER_id] [int] NULL,
	[ACTIVE_INDICATOR_bool] [bit] NULL,
	[FLAG_image] [nvarchar](60) NULL,
	[TERRITORY_name] [nvarchar](80) NULL,
	[RETAILER_SITE_id] [int] NULL,
	[JOB_POSITION_name] [nvarchar](80) NULL,
	[POSTAL_ZONE_code] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[SK_RETAILER_CONTACT_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Return_Reason]    Script Date: 18-3-2024 14:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Return_Reason](
	[SK_RETURN_REASON_id] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[RETURN_REASON_id] [int] NOT NULL,
	[RETURN_REASON_description] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[SK_RETURN_REASON_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Returns]    Script Date: 18-3-2024 14:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Returns](
	[SK_RETURNS_id] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[RETURNS_id] [int] NOT NULL,
	[RETURN_REASON_id] [int] NULL,
	[RETURN_DATE_date] [nvarchar](30) NULL,
	[RETURN_QUANTITY_number] [int] NULL,
	[ORDER_DETAIL_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SK_RETURNS_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Forecast]    Script Date: 18-3-2024 14:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Forecast](
	[SK_PRODUCT_id] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[PRODUCT_id] [int] NOT NULL,
	[YEAR_number] [int] NULL,
	[MONTH_number] [int] NULL,
	[EXPECTED_VOLUME_number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SK_PRODUCT_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Staff]    Script Date: 18-3-2024 14:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Staff](
	[SK_SALES_STAFF_id] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[SALES_STAFF_id] [int] NOT NULL,
	[FAX_phone] [nvarchar](30) NULL,
	[COUNTRY_id] [int] NULL,
	[FIRST_NAME_name] [nvarchar](80) NULL,
	[DATE_HIRED_date] [nvarchar](30) NULL,
	[COUNTRY_name] [nvarchar](80) NULL,
	[EMAIL_address] [nvarchar](80) NULL,
	[ADDRESS2_address] [nvarchar](80) NULL,
	[REGION_name] [nvarchar](80) NULL,
	[EXTENSION_number] [int] NULL,
	[SALES_TERRITORY_id] [int] NULL,
	[LANGUAGE_name] [nvarchar](80) NULL,
	[CITY_name] [nvarchar](80) NULL,
	[LAST_NAME_name] [nvarchar](80) NULL,
	[WORK_PHONE_phone] [nvarchar](30) NULL,
	[CURRENCY_name] [nvarchar](80) NULL,
	[ADDRESS1_address] [nvarchar](80) NULL,
	[MANAGER_id] [int] NULL,
	[FLAG_image] [nvarchar](60) NULL,
	[SALES_BRANCH_id] [int] NULL,
	[TERRITORY_name] [nvarchar](80) NULL,
	[POSITION_name] [nvarchar](80) NULL,
	[POSTAL_ZONE_code] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[SK_SALES_STAFF_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Target]    Script Date: 18-3-2024 14:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Target](
	[SK_TARGET_id] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[TARGET_id] [int] NOT NULL,
	[SALES_STAFF_id] [int] NULL,
	[PRODUCT_id] [int] NULL,
	[RETAILER_id] [int] NULL,
	[RETAILER_name] [nvarchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[SK_TARGET_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satisfaction_Type]    Script Date: 18-3-2024 14:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satisfaction_Type](
	[SK_SATISFACTION_TYPE_id] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[SATISFACTION_TYPE_id] [int] NOT NULL,
	[SATISFACTION_TYPE_description] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[SK_SATISFACTION_TYPE_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Order_Details] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Retailer] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Retailer_Contact] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Return_Reason] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Returns] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Sales_Forecast] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Sales_Staff] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Sales_Target] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Satisfaction_Type] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO