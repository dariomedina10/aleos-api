IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[players]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[players](
	[idPlayer] [int] IDENTITY(1,1) NOT NULL,
	[plaFistName] [nvarchar](50) NOT NULL,
	[plaLastName] [nvarchar](50) NOT NULL,
	[plaImage] [varchar](max) NULL,
	[plaEmail] [nvarchar](50) NOT NULL,
	[plaPhoneNumber] [nvarchar](20) NOT NULL,
	[plaBirthDate] [date] NOT NULL,
	[plaGender] [nvarchar](45) NOT NULL,
	[idLevel] [int] NULL,
	[idProvider] [nvarchar](50) NOT NULL,
	[idAccount] [nvarchar](50) NOT NULL,
	[idLocation] [int] NOT NULL,
	[NameSecundaryContact] [nvarchar](50) NULL,
	[phoneNumberSecudary] [nvarchar](20) NULL,
	[dateUpdate] [datetime] NULL,
	[dateCreate] [datetime] NULL,
 CONSTRAINT [PK_player] PRIMARY KEY CLUSTERED 
(
	[idPlayer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END