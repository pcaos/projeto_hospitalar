USE [DB_HOSPITAL]
GO

/****** Object:  Table [cfg].[Nivel]    Script Date: 09/09/2016 00:52:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [cfg].[Nivel](
	[idNivel] [int] IDENTITY(1,1) NOT NULL,
	[nmNivel] [varchar](200) NOT NULL,
	[flAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_Nivel] PRIMARY KEY CLUSTERED 
(
	[idNivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contém o cadastro de níveis disponíveis no sistema, para montagem do permissionamento.' , @level0type=N'SCHEMA',@level0name=N'cfg', @level1type=N'TABLE',@level1name=N'Nivel'
GO