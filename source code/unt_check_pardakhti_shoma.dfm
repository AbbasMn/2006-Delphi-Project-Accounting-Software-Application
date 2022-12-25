object frm_check_pardakhti_shoma: Tfrm_check_pardakhti_shoma
  Left = 84
  Top = 128
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '#1670#1705#1607#1575#1610' '#1662#1585#1583#1575#1582#1578#1610
  ClientHeight = 569
  ClientWidth = 840
  Color = clBtnFace
  Constraints.MinHeight = 50
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  Scaled = False
  OnShow = FormShow
  DesignSize = (
    840
    569)
  PixelsPerInch = 96
  TextHeight = 13
  object l_id: TLabel
    Left = 400
    Top = 32
    Width = 16
    Height = 13
    Caption = 'l_id'
    Visible = False
  end
  object GroupBox_bank: TGroupBox
    Left = 30
    Top = 3
    Width = 264
    Height = 60
    BiDiMode = bdRightToLeft
    Caption = '  '#1576#1575#1606#1705' '#1605#1585#1576#1608#1591' '#1576#1607' '#1576#1585#1711#1607' '#1670#1705'  '
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
    object dbanbar: TDBLookupComboBox
      Left = 59
      Top = 23
      Width = 145
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'name'
      ListField = 'name'
      ListSource = DataSource2
      ParentFont = False
      TabOrder = 0
      OnClick = dbanbarClick
    end
  end
  object GroupBox_tarikh: TGroupBox
    Left = 30
    Top = 3
    Width = 264
    Height = 60
    BiDiMode = bdRightToLeft
    Caption = #1578#1575#1585#1610#1582' '#1608' '#1605#1608#1593#1583' '#1670#1705
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      264
      60)
    object suiButton_a: TsuiButton
      Left = 91
      Top = 22
      Width = 81
      Height = 25
      Anchors = [akTop]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1578#1575#1585#1610#1582
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton_aClick
      ResHandle = 0
    end
  end
  object GroupBox_shomare: TGroupBox
    Left = 30
    Top = 3
    Width = 264
    Height = 60
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1588#1605#1575#1585#1607' '#1670#1705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      264
      60)
    object Label1: TLabel
      Left = 171
      Top = 25
      Width = 70
      Height = 13
      Anchors = [akTop, akRight]
      Caption = ' '#1588#1605#1575#1585#1607' '#1670#1705'    :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 24
      Top = 22
      Width = 142
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyPress = Esearch2KeyPress
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 580
    Top = 2
    Width = 251
    Height = 60
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1606#1608#1593' '#1711#1586#1575#1585#1588' '#1711#1610#1585#1610'  '
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #1588#1605#1575#1585#1607' '#1670#1705
      #1578#1575#1585#1610#1582' '#1608' '#1605#1608#1593#1583' '#1670#1705
      #1607#1605#1607' '#1670#1705#1607#1575
      #1576#1575#1606#1705' '#1583#1587#1578#1607' '#1670#1705)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object suiDBGrid1: TsuiDBGrid
    Left = -2
    Top = 126
    Width = 842
    Height = 435
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
    TabOrder = 4
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'shahrforoshande'
        Title.Alignment = taCenter
        Title.Caption = #1601#1585#1608#1588#1606#1583#1607' '#1583#1585#1610#1575#1601#1578' '#1705#1606#1606#1583#1607' '#1670#1705
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sh_hesab'
        Title.Alignment = taCenter
        Title.Caption = #1576#1575#1606#1705' '#1588#1593#1576#1607' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        Width = 119
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sh_check'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1670#1705
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'mablagh_check'
        Title.Alignment = taCenter
        Title.Caption = #1605#1576#1604#1594' '#1670#1705
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1670#1705
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh_kharid'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1582#1585#1610#1583
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'shomare_factor'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585' '#1582#1585#1610#1583
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'pass'
        Title.Alignment = taCenter
        Title.Caption = #1662#1575#1587' '#1588#1583#1606
        Width = 58
        Visible = True
      end>
  end
  object dxToolButton11: TdxToolButton
    Left = 0
    Top = 0
    Hint = #1601#1575#1705#1578#1608#1585
    Align = alLeft
    ParentShowHint = False
    ShowHint = True
    OnClick = dxToolButton11Click
    ToolType = ttRestore
  end
  object GroupBox3: TGroupBox
    Left = 580
    Top = 65
    Width = 251
    Height = 60
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1606#1575#1605' '#1583#1585#1610#1575#1601#1578' '#1705#1606#1606#1583#1607'   '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 169
      Top = 26
      Width = 64
      Height = 13
      Caption = #1583#1585#1610#1575#1601#1578' '#1705#1606#1606#1583#1607' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object esearch: TEdit
      Left = 16
      Top = 22
      Width = 144
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      TabOrder = 0
      OnChange = esearchChange
    end
  end
  object dxToolButton1: TdxToolButton
    Left = 15
    Top = 0
    Hint = #1575#1585#1587#1575#1604' '#1576#1607' '#1662#1585#1610#1606#1578#1585
    Align = alLeft
    ParentShowHint = False
    ShowHint = True
    OnClick = dxToolButton1Click
    ToolType = ttArrowLeft
  end
  object suiButton1: TsuiButton
    Left = 66
    Top = 90
    Width = 193
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1662#1575#1587' '#1705#1585#1583#1606'('#1579#1576#1578' '#1576#1589#1608#1585#1578' '#1605#1608#1585#1583' '#1576#1575#1606#1705#1610') '#1670#1705
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
    OnClick = suiButton1Click
    ResHandle = 0
  end
  object DataSource1: TDataSource
    DataSet = DataM_final.ADOQ_T_pardakht_check_kharid
    Left = 400
    Top = 224
  end
  object DataSource2: TDataSource
    DataSet = Dmlistha.ADOQuery_bank2
    Left = 40
    Top = 64
  end
  object DataSource3: TDataSource
    DataSet = Dmlistha.ADOkharidha
    Left = 26
    Top = 64
  end
  object DataSource4: TDataSource
    DataSet = DataModule1.ADOQsaljadid
    Left = 312
    Top = 24
  end
end
