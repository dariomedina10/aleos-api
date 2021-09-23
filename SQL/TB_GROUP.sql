IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[group]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[group](
		[idGroup] [int] IDENTITY(1,1) NOT NULL,
		[groName] [nvarchar](50) NOT NULL,
		[groDescription] [nvarchar](300) NULL,
		[groActive] [bit] NOT NULL,
		[LevelId] [int] NOT NULL,
		[SeasonId] [int] NOT NULL,
		[TrainingPlanId] [int] NOT NULL,
		[GroupTypeId] [int] NULL,
	 CONSTRAINT [PK_group] PRIMARY KEY CLUSTERED 
	(
		[idGroup] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END