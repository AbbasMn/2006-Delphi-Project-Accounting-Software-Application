object frm_pish_kharid: Tfrm_pish_kharid
  Left = 101
  Top = 128
  BorderStyle = bsSingle
  Caption = #1575#1580#1606#1575#1587
  ClientHeight = 601
  ClientWidth = 943
  Color = clBtnFace
  Constraints.MinHeight = 50
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    943
    601)
  PixelsPerInch = 96
  TextHeight = 13
  object suiGroupBox2: TsuiGroupBox
    Left = 1
    Top = -4
    Width = 941
    Height = 72
    UIStyle = MacOS
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Transparent = True
    ParentColor = True
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    BorderColor = 8355711
    DesignSize = (
      941
      72)
    object Label8: TLabel
      Left = 783
      Top = 16
      Width = 106
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1588#1582#1589#1575#1578' '#1601#1585#1608#1588#1606#1583#1607'    :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_shahr: TLabel
      Left = 606
      Top = 38
      Width = 329
      Height = 26
      Alignment = taCenter
      Anchors = [akTop, akRight]
      AutoSize = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 444
      Top = 17
      Width = 106
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1605#1593' '#1705#1604' '#1575#1585#1586#1588' '#1575#1580#1606#1575#1587'  :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 442
      Top = 50
      Width = 107
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1593#1583#1575#1583' '#1575#1602#1604#1575#1605'                  :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 330
      Top = 38
      Width = 101
      Height = 26
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      DataField = 'tedad'
      DataSource = DataSource2
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object LMDSpeedButton11: TLMDSpeedButton
      Left = 6
      Top = 43
      Width = 56
      Height = 22
      Caption = '<< '#1576#1585#1711#1588#1578' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton11Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object DBText_arzesh_kol: TDBText
      Left = 223
      Top = 8
      Width = 210
      Height = 26
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      DataField = 'kol_'
      DataSource = DataSource2
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object GroupBox3: TGroupBox
    Left = 185
    Top = 193
    Width = 573
    Height = 46
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    DesignSize = (
      573
      46)
    object LMDSpeedButton_add: TLMDSpeedButton
      Left = 446
      Top = 14
      Width = 104
      Height = 22
      Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1580#1606#1587
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_addClick
      Anchors = [akTop]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_22: TLMDSpeedButton
      Left = 163
      Top = 14
      Width = 104
      Height = 22
      Caption = #1581#1584#1601' '#1705#1585#1583#1606' '#1580#1606#1587
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_22Click
      Anchors = [akTop]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton3: TLMDSpeedButton
      Left = 22
      Top = 14
      Width = 104
      Height = 22
      Caption = #1581#1584#1601' '#1705#1585#1583#1606' '#1607#1605#1607' '#1575#1580#1606#1575#1587
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton3Click
      Anchors = [akTop]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_: TLMDSpeedButton
      Left = 304
      Top = 14
      Width = 104
      Height = 22
      Caption = #1608#1610#1585#1575#1610#1588
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_Click
      Anchors = [akTop]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 0
    Top = 242
    Width = 943
    Height = 358
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = DataSource1
    FixedColor = clMenu
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UIStyle = DeepBlue
    BorderColor = clBlack
    FocusedColor = clNavy
    SelectedColor = clYellow
    FontColor = clBlack
    TitleFontColor = clBlack
    FixedBGColor = clMenu
    BGColor = clBtnFace
    Columns = <
      item
        Expanded = False
        FieldName = 'jens'
        Title.Alignment = taCenter
        Title.Caption = #1580#1606#1587
        Width = 83
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'code_sherkati'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583#1588#1585#1705#1578#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vahed_koli'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583' '#1705#1604#1610
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1705#1604#1610
        Width = 52
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_koli'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604#1610
        Width = 68
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_jozi_dar_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1580#1586#1574#1610' '#1583#1585#1705#1604#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vahed_jozei'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583#1580#1586#1574#1610
        Width = 51
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610
        Width = 65
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'gheymat'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1580#1586#1574#1610
        Width = 74
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kol'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604' '#1582#1585#1610#1583
        Width = 67
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'keraye'
        Title.Alignment = taCenter
        Title.Caption = #1705#1585#1575#1610#1607' '#1580#1606#1587
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_jadid'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1580#1583#1610#1583
        Width = 92
        Visible = True
      end>
  end
  object CheckBox1: TCheckBox
    Left = 614
    Top = 69
    Width = 177
    Height = 17
    Anchors = [akTop]
    BiDiMode = bdRightToLeft
    Caption = #1579#1576#1578' '#1705#1585#1575#1610#1607' '#1662#1585#1583#1575#1582#1578#1610' '#1576#1585#1575#1610' '#1601#1575#1705#1578#1608#1585
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    OnClick = CheckBox1Click
  end
  object G_darsad: TGroupBox
    Left = 476
    Top = 88
    Width = 452
    Height = 95
    Anchors = [akTop]
    BiDiMode = bdRightToLeft
    Caption = '  '#1579#1576#1578' '#1705#1585#1575#1610#1607' '#1662#1585#1583#1575#1582#1578#1610' '#1576#1585#1575#1610' '#1601#1575#1705#1578#1608#1585'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    DesignSize = (
      452
      95)
    object L_ker_drsadi: TLabel
      Left = 106
      Top = 44
      Width = 144
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = ':          '#1583#1585#1589#1583' '#1575#1586' '#1705#1604' '#1575#1585#1586#1588' '#1575#1580#1606#1575#1587
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object L_ker_mablaghi: TLabel
      Left = 106
      Top = 44
      Width = 146
      Height = 13
      Anchors = [akTop, akRight]
      Caption = ' '#1705#1585#1575#1610#1607' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607' '#1576#1585#1575#1610' '#1601#1575#1705#1578#1608#1585' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object L_geymat_kharid: TLabel
      Left = 5
      Top = 109
      Width = 36
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object e_keraye: TEdit
      Left = 10
      Top = 39
      Width = 93
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 0
      OnKeyPress = e_kerayeKeyPress
    end
    object RadioGroup1: TRadioGroup
      Left = 256
      Top = 19
      Width = 191
      Height = 62
      Anchors = [akTop]
      Caption = '    '#1606#1581#1608#1607' '#1575#1593#1605#1575#1604' '#1705#1585#1575#1610#1607'  '
      ItemIndex = 0
      Items.Strings = (
        #1576#1607' '#1589#1608#1585#1578' '#1583#1585#1589#1583#1610' '#1575#1586' '#1705#1604' '#1575#1585#1586#1588' '#1575#1580#1606#1575#1587
        #1576#1607' '#1589#1608#1585#1578' '#1608#1585#1608#1583' '#1605#1576#1604#1594' '#1705#1585#1575#1610#1607)
      TabOrder = 1
      OnClick = RadioGroup1Click
    end
    object e_keraye_darsadi: TEdit
      Left = 10
      Top = 39
      Width = 93
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 2
      OnKeyPress = e_keraye_darsadiKeyPress
    end
    object Button12: TButton
      Left = 10
      Top = 64
      Width = 75
      Height = 25
      Anchors = [akTop]
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 3
      OnClick = Button12Click
    end
  end
  object G_sod: TGroupBox
    Left = 14
    Top = 88
    Width = 452
    Height = 95
    Anchors = [akTop]
    BiDiMode = bdRightToLeft
    Caption = 
      '  '#1583#1585#1589#1583' '#1587#1608#1583' '#1575#1590#1575#1601#1607' '#1588#1608#1606#1583#1607'  '#1576#1585#1575#1610' '#1601#1585#1608#1588' '#1575#1580#1606#1575#1587' '#1601#1575#1705#1578#1608#1585'('#1575#1601#1586#1575#1610#1588' '#1602#1610#1605#1578' '#1601#1585#1608#1588')' +
      '. '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 5
    DesignSize = (
      452
      95)
    object Label4: TLabel
      Left = 114
      Top = 44
      Width = 169
      Height = 13
      Caption = #1583#1585#1589#1583' '#1587#1608#1583' '#1576#1585#1575#1610' '#1601#1585#1608#1588' '#1575#1580#1606#1575#1587' '#1601#1575#1705#1578#1608#1585':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object E_darsad_sod: TEdit
      Left = 10
      Top = 39
      Width = 93
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      OnKeyPress = E_darsad_sodKeyPress
    end
    object Button1: TButton
      Left = 10
      Top = 64
      Width = 75
      Height = 25
      Anchors = [akTop]
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object CheckBox2: TCheckBox
    Left = 132
    Top = 69
    Width = 216
    Height = 17
    Anchors = [akTop]
    BiDiMode = bdRightToLeft
    Caption = #1583#1585#1589#1583' '#1587#1608#1583' '#1575#1590#1575#1601#1607' '#1588#1608#1606#1583#1607' '#1576#1607' '#1602#1610#1605#1578' '#1582#1585#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 6
    OnClick = CheckBox2Click
  end
  object DataSource1: TDataSource
    DataSet = DataM_final.ADOQuery_pish_kharid
    Left = 376
    Top = 296
  end
  object DataSource2: TDataSource
    DataSet = Dmlistha.ADOQuery_tedad_pishkharid
    Left = 128
    Top = 32
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 593
    Top = 20
  end
end
