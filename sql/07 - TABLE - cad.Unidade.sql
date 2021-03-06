USE [DB_HOSPITAL]
GO

/****** Object:  Table [cad].[Unidade]    Script Date: 09/09/2016 00:54:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [cad].[Unidade](
	[idUnidade] [int] IDENTITY(1,1) NOT NULL,
	[nmUnidade] [varchar](200) NOT NULL,
	[idUsuarioResponsavel] [int] NOT NULL,
	[flAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_Unidade] PRIMARY KEY CLUSTERED 
(
	[idUnidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [cad].[Unidade]  WITH CHECK ADD  CONSTRAINT [FK_Unidade_Usuario] FOREIGN KEY([idUsuarioResponsavel])
REFERENCES [cfg].[Usuario] ([idUsuario])
GO

ALTER TABLE [cad].[Unidade] CHECK CONSTRAINT [FK_Unidade_Usuario]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contém o cadastro das unidades de internação hospitalar.' , @level0type=N'SCHEMA',@level0name=N'cad', @level1type=N'TABLE',@level1name=N'Unidade'
GO

