object Frm_khorojha_az_sandog: TFrm_khorojha_az_sandog
  Left = 547
  Top = 102
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = #1576#1585#1583#1575#1588#1578' '#1606#1602#1583' '#1575#1586' '#1589#1606#1583#1608#1602
  ClientHeight = 485
  ClientWidth = 342
  Color = clBtnFace
  Constraints.MinHeight = 50
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object L_type: TLabel
    Left = 128
    Top = 466
    Width = 33
    Height = 13
    Caption = 'L_type'
    Visible = False
  end
  object L_type_main: TLabel
    Left = 184
    Top = 466
    Width = 33
    Height = 13
    Caption = 'L_type'
    Visible = False
  end
  object Label7: TLabel
    Left = 227
    Top = 307
    Width = 99
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1588#1585#1581'                        :'
    ParentBiDiMode = False
  end
  object GroupBox_sandog_magsad: TGroupBox
    Left = 5
    Top = 120
    Width = 333
    Height = 130
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1589#1606#1583#1608#1602' '#1605#1602#1589#1583'  '
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      333
      130)
    object Label3: TLabel
      Left = 229
      Top = 24
      Width = 72
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1589#1606#1583#1608#1602'      :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object L_sandoge_motefaerge: TLabel
      Left = 31
      Top = 24
      Width = 148
      Height = 21
      Alignment = taCenter
      Anchors = [akTop]
      AutoSize = False
      Caption = #1576#1585#1583#1575#1588#1578' '#1605#1578#1601#1585#1602#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label_sandog_magsad: TLabel
      Left = 18
      Top = 32
      Width = 298
      Height = 19
      Alignment = taCenter
      Anchors = [akTop]
      AutoSize = False
      Caption = '2'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label1: TLabel
      Left = 87
      Top = 62
      Width = 159
      Height = 16
      Anchors = [akTop]
      Caption = #1605#1608#1580#1608#1583#1610' '#1589#1606#1583#1608#1602' '#1583#1585' '#1581#1575#1604' '#1581#1575#1590#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label_mojodi_magsad: TLabel
      Left = 9
      Top = 89
      Width = 314
      Height = 21
      Alignment = taCenter
      Anchors = [akTop]
      AutoSize = False
      Caption = #1605#1608#1580#1608#1583#1610' '#1705#1604#1610' '#1589#1606#1583#1608#1602' '#1583#1585' '#1581#1575#1604' '#1581#1575#1590#1585'   :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 31
      Top = 24
      Width = 148
      Height = 21
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'sandog'
      ListField = 'sandog'
      ListSource = DataSource3
      ParentFont = False
      TabOrder = 0
      OnClick = DBLookupComboBox1Click
    end
  end
  object GroupBox_shomare_hesab: TGroupBox
    Left = 5
    Top = 120
    Width = 333
    Height = 130
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1576#1575#1606#1705#1610'  '
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    object DBGarshivforosh: TDBGrid
      Left = 5
      Top = 17
      Width = 324
      Height = 109
      Color = clBtnFace
      DataSource = DataSource2
      FixedColor = clMenu
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'bank_shobe_sh_hesab'
          Title.Alignment = taCenter
          Title.Caption = #1576#1575#1606#1705' '#1588#1593#1576#1607' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          Width = 300
          Visible = True
        end>
    end
  end
  object GroupBox5: TGroupBox
    Left = 5
    Top = 379
    Width = 333
    Height = 72
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1576#1604#1594' '#1575#1606#1578#1602#1575#1604#1610'  '
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    object Label10: TLabel
      Left = 184
      Top = 20
      Width = 132
      Height = 13
      Caption = #1605#1576#1604#1594' '#1606#1602#1583#1610' '#1576#1585#1575#1610' '#1575#1606#1578#1602#1575#1604'         :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 184
      Top = 47
      Width = 132
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1601#1610#1588'                        :'
    end
    object Edit_mablag: TEdit
      Left = 17
      Top = 15
      Width = 161
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit_mablagKeyPress
    end
    object e_sh_fish: TEdit
      Left = 17
      Top = 42
      Width = 161
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      OnKeyPress = e_sh_fishKeyPress
    end
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 3
    Width = 333
    Height = 112
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1589#1606#1583#1608#1602' '#1605#1576#1583#1575#1569'  '
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      333
      112)
    object Label4: TLabel
      Left = 229
      Top = 24
      Width = 72
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1589#1606#1583#1608#1602'      :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_sandog_mabda: TLabel
      Left = 17
      Top = 32
      Width = 298
      Height = 20
      Alignment = taCenter
      Anchors = [akTop]
      AutoSize = False
      Caption = '1'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label8: TLabel
      Left = 87
      Top = 54
      Width = 159
      Height = 16
      Anchors = [akTop]
      Caption = #1605#1608#1580#1608#1583#1610' '#1589#1606#1583#1608#1602' '#1583#1585' '#1581#1575#1604' '#1581#1575#1590#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label_mojodi_mabda: TLabel
      Left = 10
      Top = 76
      Width = 312
      Height = 23
      Alignment = taCenter
      Anchors = [akTop]
      AutoSize = False
      Caption = #1605#1608#1580#1608#1583#1610' '#1705#1604#1610' '#1589#1606#1583#1608#1602' '#1583#1585' '#1581#1575#1604' '#1581#1575#1590#1585'   :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 31
      Top = 20
      Width = 148
      Height = 21
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'sandog'
      ListField = 'sandog'
      ListSource = DataSource1
      ParentFont = False
      TabOrder = 0
      OnClick = DBLookupComboBox3Click
    end
  end
  object suiButton5: TsuiButton
    Left = 54
    Top = 455
    Width = 45
    Height = 25
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1582#1585#1608#1580
    AutoSize = False
    ParentFont = False
    UIStyle = WinXP
    TabOrder = 7
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton5Click
    ResHandle = 0
  end
  object suiButton6: TsuiButton
    Left = 6
    Top = 455
    Width = 45
    Height = 25
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1578#1575#1610#1610#1583
    AutoSize = False
    ParentFont = False
    UIStyle = WinXP
    TabOrder = 6
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton6Click
    ResHandle = 0
  end
  object Memo1: TMemo
    Left = 5
    Top = 307
    Width = 180
    Height = 73
    BiDiMode = bdRightToLeft
    MaxLength = 40
    ParentBiDiMode = False
    TabOrder = 4
  end
  object GroupBox2: TGroupBox
    Left = 7
    Top = 251
    Width = 333
    Height = 51
    BiDiMode = bdRightToLeft
    Caption = '  * '#1578#1575#1585#1610#1582'  '
    ParentBiDiMode = False
    TabOrder = 3
    object RadioGroup11: TRadioGroup
      Left = 170
      Top = 13
      Width = 133
      Height = 33
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1575#1605#1585#1608#1586
        #1594#1610#1585#1607)
      TabOrder = 0
      TabStop = True
      OnClick = RadioGroup11Click
    end
    object E_tarikh: TEdit
      Left = 30
      Top = 20
      Width = 121
      Height = 22
      TabStop = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule_gozaresh_tarkibi.ADOQuery_sandog
    Left = 600
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = Dmlistha.ADOQuery_shomare_hesabe_banki
    Left = 56
    Top = 192
  end
  object DataSource3: TDataSource
    DataSet = DataModule_gozaresh_tarkibi.ADOQuery_sandog2
    Left = 293
    Top = 176
  end
end
