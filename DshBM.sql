USE [DshBM]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 17.12.2023 16:19:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 17.12.2023 16:19:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](40) NOT NULL,
	[Stazh] [nchar](10) NOT NULL,
	[Subject] [nchar](100) NOT NULL,
	[DenNed] [nchar](20) NULL,
	[Phone] [nchar](12) NULL,
	[Image] [nchar](250) NULL,
	[Dolzhost] [nchar](30) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 17.12.2023 16:19:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nchar](10) NOT NULL,
	[Password] [nchar](10) NOT NULL,
	[IdRole] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Администратор                 ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Учитель                       ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Пользователь                  ')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (1, N'Рыжов Александр Владимирович            ', N'15        ', N'Физ. культура                                                                                       ', N'Понедельник         ', N'88033562586 ', NULL, N'Учитель                       ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (2, N'Савина Наталья Викторовна               ', N'30        ', N'Русский язык                                                                                        ', N'Вторник             ', N'89053256325 ', NULL, N'Учитель                       ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (3, N'Гришина Наталья Владимировна            ', N'26        ', N'Математика                                                                                          ', N'Среда               ', N'89147852367 ', NULL, N'Учитель                       ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (4, N'Жук Александра                          ', N'13        ', N'Развитие речи                                                                                       ', N'Четверг             ', N'89266060544 ', NULL, N'Учитель - дефектолог          ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (5, N'Соловьева Мария Константиновна          ', N'23        ', N'Изо                                                                                                 ', N'Пятница             ', N'89214232222 ', NULL, N'Учитель                       ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (7, N'Алатырцева Надежда Альбертовна          ', N'46        ', N'Формирование слухового восприятия                                                                   ', N'Понедельник         ', N'89244521441 ', NULL, N'Учитель - дефектолог          ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (8, N'Пряхина Елена Григорьевна               ', N'39        ', N'развитие произносительной стороны устной речи                                                       ', N'Вторник             ', N'89369898521 ', NULL, N'Учитель - дефектолог          ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (10, N'Макарова Юлия Викторовна                ', N'28        ', N'Воспитатель                                                                                         ', N'Ежедневно           ', N'89303020125 ', NULL, N'Воспитатель                   ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (11, N'Поршнева Лариса Борисовна               ', N'39        ', N'Литературное чтение                                                                                 ', N'Понедельник         ', N'89145214732 ', NULL, N'Учитель                       ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (13, N'Устимова Анастасия Александровна        ', N'20        ', N'Окружающий мир                                                                                      ', N'Вторник             ', N'89456521452 ', NULL, N'Учитель - дефектолог          ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (14, N'Золотова Елена Андреевна                ', N'42        ', N'Развития слухового восприятия                                                                       ', N'Среда               ', N'89654745474 ', NULL, N'Учитель - дефектолог          ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (15, N'Борисов Александр Николаевич            ', N'35        ', N'социально-бытовая ориентировка                                                                      ', N'Четверг             ', N'89585231520 ', NULL, N'Учитель                       ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (16, N'Рыжова Елена Сергеевна                  ', N'10        ', N'История                                                                                             ', N'Пятница             ', N'89316751375 ', NULL, N'Директор                      ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (20, N'Малышева Наталья Владимировна           ', N'11        ', N'Заместитель                                                                                         ', N'Ежедневно           ', N'88316751480 ', NULL, N'Зам. по учебной части         ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (21, N'Хасанова Татьяна Борисовна              ', N'34        ', N'Заместитель                                                                                         ', N'Ежедневно           ', N'88316751480 ', NULL, N'Зам. по воспитательной работе ')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [Subject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (23, N'Шешенко Эдуард Викторович               ', N'30        ', N'Заместитель                                                                                         ', N'Ежедневно           ', N'88316751375 ', NULL, N'Зам. хозяйственной части      ')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password], [IdRole]) VALUES (1, N'1         ', N'1         ', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [IdRole]) VALUES (2, N'2         ', N'2         ', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [IdRole]) VALUES (3, N'3         ', N'3         ', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
