IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[groupType]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[groupType](
		[idGroupType] [int] IDENTITY(1,1) NOT NULL,
		[groTypeName] [nvarchar](50) NOT NULL,
		[groDescription] [nvarchar](300) NULL
	 CONSTRAINT [PK_groupType] PRIMARY KEY CLUSTERED 
	(
		[idGroupType] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END