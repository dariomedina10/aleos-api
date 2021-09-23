IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[config]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[config] (
		[idConfig] [int] IDENTITY(1,1) NOT NULL,
		[confName] [nvarchar](30) NOT NULL,
		[confDescriction] [nvarchar](100) NULL,
		[confValue] [nvarchar](max) NOT NULL,
		[confGroup] [nvarchar](30) NOT NULL,
		[confDataUpdate] [datetime] NOT NULL,
	 CONSTRAINT [PK_config] PRIMARY KEY CLUSTERED 
	(
		[idConfig] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET IDENTITY_INSERT [dbo].[config] ON 
IF NOT EXISTS (SELECT [confName] FROM [dbo].[config] WHERE [confName] = N'ClientID')
	INSERT [dbo].[config] ([idConfig], [confName], [confDescriction], [confValue], [confGroup], [confDataUpdate]) VALUES (1, N'ClientID', N'Identificador del cliente de zoho.', N'1000.NMAYTMG3CZVK5Q3VPW75Y3NUFPL9ST', N'Zoho', CAST(N'2021-04-16T00:00:00.000' AS DateTime));
ELSE
	UPDATE [dbo].[config] SET [confValue] = N'1000.NMAYTMG3CZVK5Q3VPW75Y3NUFPL9ST' WHERE [confName] = N'ClientID';

IF NOT EXISTS (SELECT [confName] FROM [dbo].[config] WHERE [confName] = N'ClientSecret')
	INSERT [dbo].[config] ([idConfig], [confName], [confDescriction], [confValue], [confGroup], [confDataUpdate]) VALUES (2, N'ClientSecret', N'Clave secreta del cliente Zoho.', N'b9158dd8ef701b1789e2c15c7856b811a7773c1d22', N'Zoho', CAST(N'2021-04-16T00:00:00.000' AS DateTime));
ELSE
	UPDATE [dbo].[config] SET [confValue] = N'b9158dd8ef701b1789e2c15c7856b811a7773c1d22' WHERE [confName] = N'ClientSecret';

IF NOT EXISTS (SELECT [confName] FROM [dbo].[config] WHERE [confName] = N'RedirectURL')
	INSERT [dbo].[config] ([idConfig], [confName], [confDescriction], [confValue], [confGroup], [confDataUpdate]) VALUES (3, N'RedirectURL', N'Url de retorno de usuario de Zoho.', N'https://api.aleosapp.com/api/Authorized', N'Zoho', CAST(N'2021-04-16T00:00:00.000' AS DateTime));

IF NOT EXISTS (SELECT [confName] FROM [dbo].[config] WHERE [confName] =  N'AccessToken')
	INSERT [dbo].[config] ([idConfig], [confName], [confDescriction], [confValue], [confGroup], [confDataUpdate]) VALUES (5, N'AccessToken', N'Token de Zoho', N'1000.cad9b7d86a1323e1e7be8853d4ac2116.e84712b3e708795f4f6bfc8554d3a765', N'Zoho', CAST(N'2021-08-27T21:06:20.620' AS DateTime));

IF NOT EXISTS (SELECT [confName] FROM [dbo].[config] WHERE [confName] = N'TokenDate')
	INSERT [dbo].[config] ([idConfig], [confName], [confDescriction], [confValue], [confGroup], [confDataUpdate]) VALUES (6, N'TokenDate', N'Fecha de Ultimo Token', N'27/8/2021 9:06:20 p. m.', N'Zoho', CAST(N'2021-08-27T21:06:20.640' AS DateTime));

IF NOT EXISTS (SELECT [confName] FROM [dbo].[config] WHERE [confName] = N'RefreshToken')
	INSERT [dbo].[config] ([idConfig], [confName], [confDescriction], [confValue], [confGroup], [confDataUpdate]) VALUES (8, N'RefreshToken', N'Token necesario para renovar de Zoho', N'1000.e06cbfd65c93e65a80a03d4b9bb54246.8792ccb11a4f28bc55604cbf1567b126', N'Zoho', CAST(N'2021-04-16T00:00:00.000' AS DateTime));
ELSE
	UPDATE [dbo].[config] SET [confValue] = N'1000.e06cbfd65c93e65a80a03d4b9bb54246.8792ccb11a4f28bc55604cbf1567b126' WHERE [confName] = N'RefreshToken';

SET IDENTITY_INSERT [dbo].[config] OFF