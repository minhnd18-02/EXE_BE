USE [EXE201]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] NOT NULL,
	[UserID] [int] NULL,
	[Street] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[PostalCode] [varchar](255) NULL,
	[Country] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] NOT NULL,
	[Name] [varchar](255) NULL,
	[Description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[Comment] [text] NULL,
	[Image] [varchar](255) NULL,
	[Status] [varchar](255) NULL,
	[DateGiven] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[InventoryID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[QuantityAvailable] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membership]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membership](
	[MembershipID] [int] NOT NULL,
	[UserID] [int] NULL,
	[MembershipTypeID] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Status] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MembershipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipType]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipType](
	[MembershipTypeID] [int] NOT NULL,
	[TypeName] [varchar](255) NULL,
	[Description] [text] NULL,
	[Benefits] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MembershipTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[NotificationID] [int] NOT NULL,
	[UserID] [int] NULL,
	[Message] [text] NULL,
	[DateSent] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] NOT NULL,
	[OrderID] [int] NULL,
	[PaymentUserID] [int] NULL,
	[Amount] [decimal](10, 2) NULL,
	[PaymentMethod] [varchar](255) NULL,
	[PaymentStatus] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[Name] [varchar](255) NULL,
	[Description] [text] NULL,
	[Image] [varchar](255) NULL,
	[Status] [varchar](255) NULL,
	[Price] [float] NULL,
	[CategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[Rating] [int] NULL,
	[DateGiven] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalOrder]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalOrder](
	[OrderID] [int] NOT NULL,
	[UserID] [int] NULL,
	[OrderStatus] [varchar](255) NULL,
	[DatePlaced] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[ReturnDate] [datetime] NULL,
	[Total] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalOrderDetails]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalOrderDetails](
	[OrderDetailsID] [int] NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[RentalStart] [datetime] NULL,
	[RentalEnd] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[RoleName] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[UserName] [varchar](255) NULL,
	[FullName] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[Phone] [varchar](255) NULL,
	[Gender] [int] NULL,
	[DateOfBirth] [date] NULL,
	[Email] [varchar](255) NULL,
	[Image] [varchar](255) NULL,
	[Status] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 5/11/2024 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Address] ([AddressID], [UserID], [Street], [City], [State], [PostalCode], [Country]) VALUES (1, 1, N'1234 Main St', N'Metro City', N'MC', N'12345', N'USA')
INSERT [dbo].[Address] ([AddressID], [UserID], [Street], [City], [State], [PostalCode], [Country]) VALUES (2, 2, N'12345 Main St', N'Metro1 City', N'MCC', N'123456', N'VN')
GO
INSERT [dbo].[Cart] ([CartID], [UserID], [ProductID], [Quantity]) VALUES (1, 2, 2, 1)
GO
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (1, N'Electronics', N'Gadgets and electronic devices.')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (2, N'Books', N'All kinds of books.')
GO
INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [ProductID], [Comment], [Image], [Status], [DateGiven]) VALUES (1, 2, 2, N'Great read, highly recommend!', N'feedback.jpg', N'Visible', CAST(N'2023-01-10T10:00:00.000' AS DateTime))
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (1, 1, 5)
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [QuantityAvailable]) VALUES (2, 2, 20)
GO
INSERT [dbo].[Membership] ([MembershipID], [UserID], [MembershipTypeID], [StartDate], [EndDate], [Status]) VALUES (1, 1, 1, CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2024-01-01T00:00:00.000' AS DateTime), N'Active')
GO
INSERT [dbo].[MembershipType] ([MembershipTypeID], [TypeName], [Description], [Benefits]) VALUES (1, N'Gold Member', N'Premium membership for elite customers.', N'Free shipping, discounts on rentals.')
GO
INSERT [dbo].[Notification] ([NotificationID], [UserID], [Message], [DateSent]) VALUES (1, 1, N'Your rental order has been processed.', CAST(N'2023-01-01T12:00:00.000' AS DateTime))
GO
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PaymentUserID], [Amount], [PaymentMethod], [PaymentStatus]) VALUES (1, 1, 1, CAST(1215.00 AS Decimal(10, 2)), N'Credit Card', N'Completed')
GO
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Image], [Status], [Price], [CategoryID]) VALUES (1, N'Laptop', N'A high-performance laptop.', N'laptop.jpg', N'Available', 1200, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Image], [Status], [Price], [CategoryID]) VALUES (2, N'Science Fiction Book', N'A book about future worlds.', N'book.jpg', N'Available', 15, 2)
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([RatingID], [UserID], [ProductID], [Rating], [DateGiven]) VALUES (1, 2, 2, 5, CAST(N'2023-01-10T10:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
INSERT [dbo].[RentalOrder] ([OrderID], [UserID], [OrderStatus], [DatePlaced], [DueDate], [ReturnDate], [Total]) VALUES (1, 1, N'Placed', CAST(N'2023-01-01T10:00:00.000' AS DateTime), CAST(N'2023-01-15T10:00:00.000' AS DateTime), CAST(N'2023-01-14T15:00:00.000' AS DateTime), CAST(1215.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RentalOrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Quantity], [RentalStart], [RentalEnd]) VALUES (1, 1, 1, 1, CAST(N'2023-01-01T10:00:00.000' AS DateTime), CAST(N'2023-01-15T10:00:00.000' AS DateTime))
GO
INSERT [dbo].[Role] ([RoleID], [RoleName], [Description]) VALUES (1, N'Administrator', N'Manages system settings.')
INSERT [dbo].[Role] ([RoleID], [RoleName], [Description]) VALUES (2, N'Customer', N'Regular customer with no special permissions.')
GO
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [Image], [Status]) VALUES (1, N'user01', N'Alice Johnson', N'pass1234', N'555-0101', 1, CAST(N'1990-05-15' AS Date), N'alice@example.com', N'image01.jpg', N'Active')
INSERT [dbo].[User] ([UserID], [UserName], [FullName], [Password], [Phone], [Gender], [DateOfBirth], [Email], [Image], [Status]) VALUES (2, N'user02', N'Bob Smith', N'pass5678', N'555-0202', 0, CAST(N'1985-08-20' AS Date), N'bob@example.com', N'image02.jpg', N'Active')
GO
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (1, 1)
INSERT [dbo].[UserRole] ([UserID], [RoleID]) VALUES (2, 2)
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Membership]  WITH CHECK ADD FOREIGN KEY([MembershipTypeID])
REFERENCES [dbo].[MembershipType] ([MembershipTypeID])
GO
ALTER TABLE [dbo].[Membership]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[RentalOrder] ([OrderID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([PaymentUserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[RentalOrder]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[RentalOrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[RentalOrder] ([OrderID])
GO
ALTER TABLE [dbo].[RentalOrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
