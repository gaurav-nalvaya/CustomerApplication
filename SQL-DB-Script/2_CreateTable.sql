USE [CustomerApplication]
GO

/****** Object:  Table [dbo].[ContactInformation]    Script Date: 02-Jul-21 4:59:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ContactInformation](
	[customerId] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nchar](30) NOT NULL,
	[lastName] [nchar](30) NOT NULL,
	[email] [nchar](50) NOT NULL,
	[phoneNumber] [nchar] (15) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_ContactInformation] PRIMARY KEY CLUSTERED 
(
	[customerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


