USE [DB_HOSPITAL]
GO

/****** Object:  Table [adt].[AuditoriaRegistro]    Script Date: 09/09/2016 00:55:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [adt].[AuditoriaRegistro](
	[idRegistro] [bigint] IDENTITY(1,1) NOT NULL,
	[nmEsquema] [varchar](100) NOT NULL,
	[nmTabela] [varchar](100) NOT NULL,
	[cdChave] [varchar](100) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[dtRegistro] [datetime] NOT NULL,
	[dsRegistroOriginal] [text] NOT NULL,
	[dsRegistroAlterado] [text] NOT NULL,
 CONSTRAINT [PK_AuditoriaRegistro] PRIMARY KEY CLUSTERED 
(
	[idRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [adt].[AuditoriaRegistro]  WITH CHECK ADD  CONSTRAINT [FK_AuditoriaRegistro_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [cfg].[Usuario] ([idUsuario])
GO

ALTER TABLE [adt].[AuditoriaRegistro] CHECK CONSTRAINT [FK_AuditoriaRegistro_Usuario]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valor único, ou conjunto de valores separados por ponto e vírgula, que representam identificadores únicos da tabela (chaves primárias), para identificação do registro auditado.' , @level0type=N'SCHEMA',@level0name=N'adt', @level1type=N'TABLE',@level1name=N'AuditoriaRegistro', @level2type=N'COLUMN',@level2name=N'cdChave'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contém todos os registros de modificações feitas no sistema.' , @level0type=N'SCHEMA',@level0name=N'adt', @level1type=N'TABLE',@level1name=N'AuditoriaRegistro'
GO

