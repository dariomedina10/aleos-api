IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[account](
	[idAccount] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](50) NOT NULL,
	[AccountEmail] [nvarchar](50) NOT NULL,
	[CreadistsInitials] [int] NOT NULL,
	[idProvider] [nvarchar](50) NOT NULL,
	[AccountPhone] [nvarchar](20) NULL,
	[AccountMobile] [nvarchar](20) NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[idAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END