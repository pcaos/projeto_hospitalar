USE [DB_HOSPITAL]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'cfg', @level1type=N'TABLE',@level1name=N'NivelFuncao'

GO

ALTER TABLE [cfg].[NivelFuncao] DROP CONSTRAINT [FK_NivelFuncao_Nivel]
GO

ALTER TABLE [cfg].[NivelFuncao] DROP CONSTRAINT [FK_NivelFuncao_Funcao]
GO

/****** Object:  Table [cfg].[NivelFuncao]    Script Date: 09/09/2016 00:53:15 ******/
DROP TABLE [cfg].[NivelFuncao]
GO

/****** Object:  Table [cfg].[NivelFuncao]    Script Date: 09/09/2016 00:53:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [cfg].[NivelFuncao](
	[idNivel] [int] NOT NULL,
	[idFuncao] [int] NOT NULL,
	[flAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_NivelFuncao] PRIMARY KEY CLUSTERED 
(
	[idNivel] ASC,
	[idFuncao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [cfg].[NivelFuncao]  WITH CHECK ADD  CONSTRAINT [FK_NivelFuncao_Funcao] FOREIGN KEY([idFuncao])
REFERENCES [cfg].[Funcao] ([idFuncao])
GO

ALTER TABLE [cfg].[NivelFuncao] CHECK CONSTRAINT [FK_NivelFuncao_Funcao]
GO

ALTER TABLE [cfg].[NivelFuncao]  WITH CHECK ADD  CONSTRAINT [FK_NivelFuncao_Nivel] FOREIGN KEY([idNivel])
REFERENCES [cfg].[Nivel] ([idNivel])
GO

ALTER TABLE [cfg].[NivelFuncao] CHECK CONSTRAINT [FK_NivelFuncao_Nivel]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contém o cadastro dos níveis e suas funções disponíveis.' , @level0type=N'SCHEMA',@level0name=N'cfg', @level1type=N'TABLE',@level1name=N'NivelFuncao'
GO

