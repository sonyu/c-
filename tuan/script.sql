USE [db_codechecked]
GO
/****** Object:  Table [dbo].[tb_datachecked]    Script Date: 29/08/2016 11:04:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_datachecked](
	[keycode] [nchar](13) NOT NULL,
	[indate] [nchar](8) NULL,
	[wodate] [nchar](8) NULL,
	[linecode] [nvarchar](10) NULL,
	[linename] [nvarchar](60) NULL,
	[shift] [nchar](2) NULL,
	[empname] [nvarchar](60) NULL,
	[modelcode] [nvarchar](100) NULL,
	[total] [numeric](12, 0) NULL,
	[goodqty] [numeric](12, 0) NULL,
	[mixqty] [numeric](12, 0) NULL,
	[defqty] [numeric](12, 0) NULL,
	[starttime] [datetime] NULL,
	[endtime] [datetime] NULL,
	[insempcode] [nvarchar](10) NULL,
	[insdt] [datetime] NULL,
	[updemcode] [nvarchar](10) NULL,
	[upddt] [datetime] NULL,
 CONSTRAINT [PK_tb_datachecked] PRIMARY KEY CLUSTERED 
(
	[keycode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_datamix]    Script Date: 29/08/2016 11:04:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_datamix](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[keycode] [nchar](13) NOT NULL,
	[indate] [nchar](8) NULL,
	[wodate] [nchar](10) NULL,
	[linecode] [nvarchar](10) NULL,
	[linename] [nvarchar](60) NULL,
	[shift] [nchar](2) NULL,
	[empname] [nvarchar](60) NULL,
	[modelcode] [nvarchar](100) NULL,
	[modelcheck] [nvarchar](100) NULL,
	[checktime] [datetime] NULL,
	[insempcode] [nvarchar](10) NULL,
	[insdt] [datetime] NULL,
 CONSTRAINT [PK_tb_datamix] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[keycode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_language]    Script Date: 29/08/2016 11:04:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_language](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[obj_name] [nvarchar](50) NOT NULL,
	[control_name] [nvarchar](50) NOT NULL,
	[control_type] [nvarchar](50) NULL,
	[word_def] [nvarchar](255) NULL,
	[word_eng] [nvarchar](255) NULL,
	[word_loc] [nvarchar](255) NULL,
	[word_korea] [nvarchar](255) NULL,
 CONSTRAINT [PK_db_language] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[obj_name] ASC,
	[control_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_User]    Script Date: 29/08/2016 11:04:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserCode] [nvarchar](10) NULL,
	[Password] [nvarchar](20) NULL,
 CONSTRAINT [PK_tb_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tb_language] ON 

INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (151, N'frm_Main', N'tabPage1', N'TabPage', N'Assy Line', N'Assy Line', N'Assy Line', N'Assy Line')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (152, N'frm_Main', N'tabPage2', N'TabPage', N'Sum Data', N'Sum Data', N'Sum Data', N'생산실적조회')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (153, N'frm_Main', N'colwodate', N'DataGridViewTextBoxColumn', N'Work Date', N'Work Date', N'Work Date', N'작업일자')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (154, N'frm_Main', N'colshift', N'DataGridViewTextBoxColumn', N'Shift', N'Shift', N'Shift', N'근무조')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (155, N'frm_Main', N'colkeycode', N'DataGridViewTextBoxColumn', N'Working Code', N'Working Code', N'Working Code', N'작업순번')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (156, N'frm_Main', N'colmodelcode', N'DataGridViewTextBoxColumn', N'Model Code', N'Model Code', N'Model Code', N'제품코드')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (157, N'frm_Main', N'colgoodqty', N'DataGridViewTextBoxColumn', N'Good', N'Good', N'Good', N'양품수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (158, N'frm_Main', N'coldef', N'DataGridViewTextBoxColumn', N'Defect', N'Defect', N'Defect', N'불량수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (159, N'frm_Main', N'colmix', N'DataGridViewTextBoxColumn', N'Mix', N'Mix', N'Mix', N'혼입수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (160, N'frm_Main', N'coltotal', N'DataGridViewTextBoxColumn', N'Total', N'Total', N'Total', N'생산수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (161, N'frm_Main', N'colstarttime', N'DataGridViewTextBoxColumn', N'Start Time', N'Start Time', N'Start Time', N'시작시각')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (162, N'frm_Main', N'colendtime', N'DataGridViewTextBoxColumn', N'End Time', N'End Time', N'End Time', N'종료시각')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (163, N'frm_Main', N'collinename', N'DataGridViewTextBoxColumn', N'Line Name', N'Line Name', N'Line Name', N'생산라인')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (164, N'frm_Main', N'colempname', N'DataGridViewTextBoxColumn', N'Employee', N'Employee', N'Employee', N'생산담당자')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (165, N'frm_Main', N'tabPage3', N'TabPage', N'Mixed Data Detail', N'Mixed Data Detail', N'Mixed Data Detail', N'혼입현황세부')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (166, N'frm_Main', N'colngid', N'DataGridViewTextBoxColumn', N'id', N'id', N'id', N'id')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (167, N'frm_Main', N'colngwodate', N'DataGridViewTextBoxColumn', N'Work Date', N'Work Date', N'Work Date', N'작업일자')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (168, N'frm_Main', N'colngshift', N'DataGridViewTextBoxColumn', N'Shift', N'Shift', N'Shift', N'근무조')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (169, N'frm_Main', N'colngkeycode', N'DataGridViewTextBoxColumn', N'Working Code', N'Working Code', N'Working Code', N'작업순번')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (170, N'frm_Main', N'colngmodelcode', N'DataGridViewTextBoxColumn', N'Model Code', N'Model Code', N'Model Code', N'제품코드')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (171, N'frm_Main', N'colngmodelcheck', N'DataGridViewTextBoxColumn', N'Mixed Code', N'Mixed Code', N'Mixed Code', N'혼입코드')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (172, N'frm_Main', N'colngchecktime', N'DataGridViewTextBoxColumn', N'Check Time', N'Check Time', N'Check Time', N'체크시간')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (173, N'frm_Main', N'colnglinename', N'DataGridViewTextBoxColumn', N'Line Name', N'Line Name', N'Line Name', N'생산라인')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (174, N'frm_Main', N'colngempname', N'DataGridViewTextBoxColumn', N'Employeee', N'Employeee', N'Employeee', N'생산담당자')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (175, N'frm_Main', N'label2', N'Label', N'~', N'~', N'~', N'~')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (176, N'frm_Main', N'label4', N'Label', N'Check', N'Check', N'Check', N'검색')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (177, N'frm_Main', N'label3', N'Label', N'Shift', N'Shift', N'Shift', N'근무조')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (178, N'frm_Main', N'label5', N'Label', N'Line', N'Line', N'Line', N'설비')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (179, N'frm_Main', N'label1', N'Label', N'Work Date', N'Work Date', N'Work Date', N'작업일자')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (180, N'frm_Main', N'btnSearch', N'Button', N'Search', N'Search', N'Search', N'실적조회')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (181, N'frm_Main', N'btnExport', N'Button', N'Export Excel', N'Export Excel', N'Export Excel', N'엑셀출력')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (182, N'frm_Main', N'btnLineConfig', N'Button', N'Line Config', N'Line Config', N'Line Config', N'라인설정')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (183, N'frm_Main', N'btnEditData', N'Button', N'Edit Defect Data', N'Edit Defect Data', N'Edit Defect Data', N'불량수량수정')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (184, N'frm_Main', N'btnInputData', N'Button', N'Input Data', N'Input Data', N'Input Data', N'라인실행')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (185, N'frm_Main', N'lbUser', N'Label', N'', N'', N'', N'')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (186, N'frm_Main', N'btnSetLanguage', N'Button', N'Language', N'Language', N'Language', N'언어변환')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (187, N'frm_Main', N'assyLineToolStripMenuItem', N'ToolStripMenuItem', N'Assy Line', N'Assy Line', N'Assy Line', N'Assy Line')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (188, N'frm_MessageWarning', N'btnSetLanguage', N'Button', N'Language', N'Language', N'Language', N'언어변환')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (189, N'frm_MessageWarning', N'btnOk', N'Button', N'OK', N'OK', N'OK', N'확인')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (190, N'frm_MessageWarning', N'lbmassage4', N'Label', N'Username or Password Wrong ! Please recheck...', N'Username or Password Wrong ! Please recheck...', N'Username or Password Wrong ! Please recheck...', N'아이디 및 비번 오류!! 다시 입력해 주세요.')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (191, N'frm_MessageWarning', N'lbmassage7', N'Label', N'Data Error !', N'Data Error !', N'Data Error !', N'입력오류!')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (192, N'frm_MessageWarning', N'lbmassage6', N'Label', N'Data not zero !', N'Data not zero !', N'Data not zero !', N'입력된 자료가 없습니다.')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (193, N'frm_MessageWarning', N'lbmassage5', N'Label', N'Please Save !', N'Please Save !', N'Please Save !', N'저장버튼을 클릭해 주세요.')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (194, N'frm_MessageWarning', N'lbmassage1', N'Label', N'Please choose Shift !', N'Please choose Shift !', N'Please choose Shift !', N'근무조를 선택해 주세요.')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (195, N'frm_MessageWarning', N'lbmassage3', N'Label', N'Please insert Code !', N'Please insert Code !', N'Please insert Code !', N'제품코드를 입력해 주세요.')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (196, N'frm_MessageWarning', N'lbmassage2', N'Label', N'Please insert Employee Name !', N'Please insert Employee Name !', N'Please insert Employee Name !', N'생산담당자 이름을 입력해 주세요.')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (197, N'frm_LineConfig', N'btnSetLanguage', N'Button', N'Language', N'Language', N'Language', N'언어변환')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (198, N'frm_LineConfig', N'btnCancel', N'Button', N'Close', N'Close', N'Close', N'닫기')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (199, N'frm_LineConfig', N'btnOK', N'Button', N'OK', N'OK', N'OK', N'저장')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (200, N'frm_LineConfig', N'lbMessage', N'Label', N'Success !', N'Success !', N'Success !', N'저장성공!')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (201, N'frm_LineConfig', N'lbLineName', N'Label', N'Line Name', N'Line Name', N'Line Name', N'생산라인')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (202, N'frm_LineConfig', N'lbLineCode', N'Label', N'Line Code', N'Line Code', N'Line Code', N'라인코드')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (203, N'frm_InputData', N'colwodate', N'DataGridViewTextBoxColumn', N'Work Date', N'Work Date', N'Work Date', N'작업일자')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (204, N'frm_InputData', N'colshift', N'DataGridViewTextBoxColumn', N'Shift', N'Shift', N'Shift', N'근무조')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (205, N'frm_InputData', N'colkeycode', N'DataGridViewTextBoxColumn', N'Working Code', N'Working Code', N'Working Code', N'작업순번')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (206, N'frm_InputData', N'colmodelcode', N'DataGridViewTextBoxColumn', N'Model Code', N'Model Code', N'Model Code', N'제품코드')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (207, N'frm_InputData', N'colgoodqty', N'DataGridViewTextBoxColumn', N'Good', N'Good', N'Good', N'양품수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (208, N'frm_InputData', N'coldef', N'DataGridViewTextBoxColumn', N'Defect', N'Defect', N'Defect', N'불량수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (209, N'frm_InputData', N'colmix', N'DataGridViewTextBoxColumn', N'Mix', N'Mix', N'Mix', N'혼입수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (210, N'frm_InputData', N'coltotal', N'DataGridViewTextBoxColumn', N'Total', N'Total', N'Total', N'생산수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (211, N'frm_InputData', N'colstarttime', N'DataGridViewTextBoxColumn', N'Start Time', N'Start Time', N'Start Time', N'시작시각')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (212, N'frm_InputData', N'colendtime', N'DataGridViewTextBoxColumn', N'End Time', N'End Time', N'End Time', N'종료시각')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (213, N'frm_InputData', N'collinename', N'DataGridViewTextBoxColumn', N'Line Name', N'Line Name', N'Line Name', N'생산라인')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (214, N'frm_InputData', N'colempname', N'DataGridViewTextBoxColumn', N'Employee', N'Employee', N'Employee', N'생산담당자')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (215, N'frm_InputData', N'lbMassage', N'Label', N'', N'', N'', N'')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (216, N'frm_InputData', N'lbCodeTempl', N'Label', N'', N'', N'', N'')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (217, N'frm_InputData', N'btnSave', N'Button', N'Save', N'Save', N'Save', N'저장')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (218, N'frm_InputData', N'btnStop', N'Button', N'Stop', N'Stop', N'Stop', N'일시정지')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (219, N'frm_InputData', N'btnStart', N'Button', N'Start', N'Start', N'Start', N'작업시작')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (220, N'frm_InputData', N'lbTotal', N'Label', N'Total', N'Total', N'Total', N'생산수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (221, N'frm_InputData', N'lbMix', N'Label', N'Mix', N'Mix', N'Mix', N'혼입수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (222, N'frm_InputData', N'lbDeff', N'Label', N'Defect', N'Defect', N'Defect', N'불량수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (223, N'frm_InputData', N'lbOK', N'Label', N'OK', N'OK', N'OK', N'양품수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (224, N'frm_InputData', N'lbStartTime', N'Label', N'2016/08/23 10:29:25', N'2016/08/23 10:29:25', N'2016/08/23 10:29:25', N'2016/08/23 10:29:25')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (225, N'frm_InputData', N'lbWorking', N'Label', N'Working', N'Working', N'Working', N'Working')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (226, N'frm_InputData', N'btnSetLanguage', N'Button', N'Language', N'Language', N'Language', N'언어변환')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (227, N'frm_InputData', N'lbProduc', N'Label', N'Model Code', N'Model Code', N'Model Code', N'제품코드')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (228, N'frm_InputData', N'lbShift', N'Label', N'Shift', N'Shift', N'Shift', N'근무조')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (229, N'frm_InputData', N'lbEmployee', N'Label', N'Employee', N'Employee', N'Employee', N'담당자')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (230, N'frm_InputData', N'lbLine', N'Label', N'Line', N'Line', N'Line', N'설비')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (231, N'frm_InputData', N'lbWorkDate', N'Label', N'Work Date', N'Work Date', N'Work Date', N'작업일자')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (232, N'frm_EditDeff', N'btnSetLanguage', N'Button', N'Language', N'Language', N'Language', N'언어변환')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (233, N'frm_EditDeff', N'lbmassage', N'Label', N'Success !', N'Success !', N'Success !', N'저장성공!')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (234, N'frm_EditDeff', N'lbempname', N'Label', N'Employee', N'Employee', N'Employee', N'생산담당자')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (235, N'frm_EditDeff', N'lbendtime', N'Label', N'End Time', N'End Time', N'End Time', N'종료시각')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (236, N'frm_EditDeff', N'lblinename', N'Label', N'Line Name', N'Line Name', N'Line Name', N'작업라인')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (237, N'frm_EditDeff', N'lbstarttime', N'Label', N'Start Time', N'Start Time', N'Start Time', N'시작시각')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (238, N'frm_EditDeff', N'lbtotal', N'Label', N'Total', N'Total', N'Total', N'생산수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (239, N'frm_EditDeff', N'lbMix', N'Label', N'Mix', N'Mix', N'Mix', N'혼입수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (240, N'frm_EditDeff', N'lbDeff', N'Label', N'Defect', N'Defect', N'Defect', N'불량수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (241, N'frm_EditDeff', N'lbkeycode', N'Label', N'Working Code', N'Working Code', N'Working Code', N'작업순번')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (242, N'frm_EditDeff', N'lbmodelcode', N'Label', N'Model Code', N'Model Code', N'Model Code', N'제품코드')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (243, N'frm_EditDeff', N'lbshift', N'Label', N'Shift', N'Shift', N'Shift', N'근무조')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (244, N'frm_EditDeff', N'lbgood', N'Label', N'Good', N'Good', N'Good', N'양품수량')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (245, N'frm_EditDeff', N'lbwodate', N'Label', N'Work Date', N'Work Date', N'Work Date', N'작업일자')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (246, N'frm_EditDeff', N'btnCancel', N'Button', N'Close', N'Close', N'Close', N'닫기')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (247, N'frm_EditDeff', N'btnOK', N'Button', N'Save', N'Save', N'Save', N'저장')
INSERT [dbo].[tb_language] ([id], [obj_name], [control_name], [control_type], [word_def], [word_eng], [word_loc], [word_korea]) VALUES (248, N'frm_InputData', N'cboDef', N'CheckBox', N'Input Defect', N'Input Defect', N'Input Defect', N'불량수량등록')
SET IDENTITY_INSERT [dbo].[tb_language] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_User] ON 

INSERT [dbo].[tb_User] ([id], [UserCode], [Password]) VALUES (1, N'User01', N'4')
SET IDENTITY_INSERT [dbo].[tb_User] OFF
