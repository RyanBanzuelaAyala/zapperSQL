
CREATE TABLE [dbo].[ZP_CUSTOMER_MERCHANT_TRANSATION](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](150) NULL,
	[MarchantId] [nvarchar](150) NULL,
	[TransactionId] [nvarchar](200) NULL,
	[Status] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[ModifiedAt] [datetime] NULL,
	[CreatedAt] [datetime] NULL,
	[VerifiedAt] [datetime] NULL,
)

CREATE TABLE [dbo].[ZP_CUSTOMER](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](150) NULL,
	[FName] [nvarchar](150) NULL,
	[LName] [nvarchar](200) NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime] NULL
)

CREATE TABLE [dbo].[ZP_MERCHANT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MarchantId] [nvarchar](150) NULL,
	[Company] [nvarchar](150) NULL,
	[ListingId] [nvarchar](200) NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime] NULL
)

CREATE TABLE [dbo].[ZP_TRANSACTION](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransactionId] [nvarchar](200) NULL,
	[OrderId] [nvarchar](150) NULL,
	[PaymentId] [nvarchar](200) NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedAt] [datetime] NULL
)

CREATE TABLE [dbo].[ZP_ORDER](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [nvarchar](150) NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[ProcessAt] [datetime] NULL
)

CREATE TABLE [dbo].[ZP_PAYMENT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [nvarchar](150) NULL,
	[PaymentId] [nvarchar](200) NULL,
	[PaymentToken] [nvarchar](MAX) NULL,
	[ApprovalCode] [nvarchar](100) NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[ProcessAt] [datetime] NULL
)