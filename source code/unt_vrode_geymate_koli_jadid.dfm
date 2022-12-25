object frm_vrode_geymate_koli_jadid: Tfrm_vrode_geymate_koli_jadid
  Left = 282
  Top = 216
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1608#1610#1585#1575#1610#1588' '#1602#1610#1605#1578' '#1601#1585#1608#1588' '#1705#1604#1610' '#1580#1606#1587
  ClientHeight = 377
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    476
    377)
  PixelsPerInch = 96
  TextHeight = 13
  object l_type: TLabel
    Left = 64
    Top = 304
    Width = 28
    Height = 13
    Caption = 'l_type'
    Visible = False
  end
  object G_gheire_darsad: TGroupBox
    Left = 4
    Top = 197
    Width = 264
    Height = 92
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1608#1585#1608#1583' '#1602#1610#1605#1578' '#1580#1583#1610#1583' '#1576#1585#1575#1610' '#1580#1606#1587'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 6
    object Label1: TLabel
      Left = 141
      Top = 43
      Width = 114
      Height = 13
      Caption = #1602#1610#1605#1578' '#1580#1586#1574#1610' '#1576#1585#1575#1610' '#1601#1585#1608#1588':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Egeymatjadid: TEdit
      Left = 10
      Top = 38
      Width = 113
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 0
      OnChange = EgeymatjadidChange
      OnKeyPress = EgeymatjadidKeyPress
    end
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 6
    Width = 467
    Height = 186
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1591#1604#1575#1593#1575#1578' '#1580#1606#1587'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object Ljensname: TLabel
      Left = 3
      Top = 17
      Width = 288
      Height = 22
      AutoSize = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lgeymatghabli: TLabel
      Left = 121
      Top = 147
      Width = 170
      Height = 23
      AutoSize = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lcodjens: TLabel
      Left = 98
      Top = 80
      Width = 193
      Height = 23
      AutoSize = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 390
      Top = 21
      Width = 66
      Height = 13
      Caption = #1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 413
      Top = 84
      Width = 43
      Height = 13
      Caption = #1705#1583' '#1580#1606#1587':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 338
      Top = 151
      Width = 118
      Height = 13
      Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588' '#1601#1593#1604#1610'('#1705#1604#1610'):'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 299
      Top = 51
      Width = 155
      Height = 13
      Caption = #1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607' '#1610#1575' '#1588#1585#1705#1578' '#1578#1608#1604#1610#1583' '#1705#1606#1606#1583#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object L_name_sherkat: TLabel
      Left = 3
      Top = 47
      Width = 288
      Height = 22
      AutoSize = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 345
      Top = 116
      Width = 111
      Height = 13
      Caption = #1602#1610#1605#1578' '#1570#1582#1585#1610#1606' '#1582#1585#1610#1583' '#1580#1606#1587':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object L_kharid_jens: TLabel
      Left = 121
      Top = 112
      Width = 170
      Height = 23
      AutoSize = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object RadioGroup2: TRadioGroup
    Left = 272
    Top = 197
    Width = 200
    Height = 92
    BiDiMode = bdRightToLeft
    Caption = '  '#1606#1608#1593' '#1578#1593#1610#1610#1606' '#1602#1610#1605#1578'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1605#1581#1575#1587#1576#1607' '#1602#1610#1605#1578' '#1576#1607' '#1589#1608#1585#1578' '#1583#1585#1589#1583#1610
      #1605#1581#1575#1587#1576#1607' '#1602#1610#1605#1578' '#1576#1607' '#1589#1608#1585#1578' '#1594#1610#1585' '#1583#1585#1589#1583#1610)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    OnClick = RadioGroup2Click
  end
  object G_darsad: TGroupBox
    Left = 4
    Top = 197
    Width = 264
    Height = 92
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1601#1586#1575#1610#1588'/'#1705#1575#1607#1588' '#1602#1610#1605#1578' '#1576#1607' '#1589#1608#1585#1578' '#1583#1585#1589#1583#1610'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    object Label8: TLabel
      Left = 127
      Top = 27
      Width = 127
      Height = 13
      Caption = #1583#1585#1589#1583' '#1575#1601#1586#1575#1610#1588'/'#1705#1575#1607#1588' '#1602#1610#1605#1578':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object E_darsad_sod: TEdit
      Left = 10
      Top = 22
      Width = 113
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 0
      OnChange = E_darsad_sodChange
      OnKeyPress = E_darsad_sodKeyPress
    end
    object RadioGroup1: TRadioGroup
      Left = 56
      Top = 51
      Width = 152
      Height = 35
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1575#1601#1586#1575#1610#1588
        #1705#1575#1607#1588)
      TabOrder = 1
      OnClick = RadioGroup1Click
    end
  end
  object pmolaforforosh: TPDJXPMemo
    Left = 120
    Top = 316
    Width = 351
    Height = 59
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 60
    ParentBiDiMode = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object suiBno: TsuiButton
    Left = 54
    Top = 333
    Width = 45
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1582#1585#1608#1580
    AutoSize = False
    ParentFont = False
    UIStyle = WinXP
    TabOrder = 4
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiBnoClick
    ResHandle = 0
  end
  object suiBok: TsuiButton
    Left = 6
    Top = 333
    Width = 45
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1584#1582#1610#1585#1607
    AutoSize = False
    ParentFont = False
    UIStyle = WinXP
    TabOrder = 5
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiBokClick
    ResHandle = 0
  end
end
