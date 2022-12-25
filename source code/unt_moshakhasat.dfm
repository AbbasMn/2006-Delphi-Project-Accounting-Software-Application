object frm_moshakhasat: Tfrm_moshakhasat
  Left = 272
  Top = 192
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1605#1588#1582#1589#1575#1578' '#1575#1588#1582#1575#1589
  ClientHeight = 540
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 459
    Top = 10
    Width = 92
    Height = 13
    Caption = ':  '#1580#1587#1578#1580#1608#1610' '#1588#1582#1589' '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 2
    Top = 15
    Width = 290
    Height = 524
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
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UIStyle = FromThemeFile
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
        FieldName = 'code'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shahrforoshande'
        Title.Alignment = taCenter
        Title.Caption = #1588#1582#1589
        Width = 180
        Visible = True
      end>
  end
  object GroupBox6: TGroupBox
    Left = 295
    Top = 147
    Width = 264
    Height = 391
    TabOrder = 4
    object Label9: TLabel
      Left = 79
      Top = 9
      Width = 111
      Height = 14
      Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1606#1575#1605' '#1588#1607#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText_t_jam: TDBText
      Left = 4
      Top = 28
      Width = 256
      Height = 23
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'shahrforoshande'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 92
      Top = 92
      Width = 84
      Height = 14
      Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606' '#1579#1575#1576#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 88
      Top = 133
      Width = 92
      Height = 14
      Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 5
      Top = 112
      Width = 255
      Height = 18
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'telephon'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object lmdb_badi: TLMDSpeedButton
      Left = 97
      Top = 363
      Width = 30
      Height = 22
      Caption = #1576#1593#1583#1610
      OnClick = lmdb_badiClick
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object lmdb_gabli: TLMDSpeedButton
      Left = 137
      Top = 363
      Width = 30
      Height = 22
      Caption = #1602#1576#1604#1610
      OnClick = lmdb_gabliClick
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object lmdb_avali: TLMDSpeedButton
      Left = 178
      Top = 363
      Width = 30
      Height = 22
      Caption = #1575#1608#1604#1610#1606
      OnClick = lmdb_avaliClick
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object lmdb_akharin: TLMDSpeedButton
      Left = 57
      Top = 363
      Width = 30
      Height = 22
      Caption = #1570#1582#1585#1610#1606
      OnClick = lmdb_akharinClick
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object Label1: TLabel
      Left = 93
      Top = 175
      Width = 82
      Height = 14
      Caption = #1662#1587#1578' '#1575#1604#1705#1578#1585#1608#1606#1610#1705#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 5
      Top = 154
      Width = 255
      Height = 18
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'telephonhamrah'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 5
      Top = 196
      Width = 255
      Height = 18
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'email'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 120
      Top = 215
      Width = 28
      Height = 14
      Caption = #1570#1583#1585#1587
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 128
      Top = 55
      Width = 13
      Height = 14
      Caption = #1705#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 5
      Top = 71
      Width = 255
      Height = 20
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'code'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 3
      Top = 234
      Width = 246
      Height = 123
      TabStop = False
      BiDiMode = bdRightToLeft
      DataField = 'adress'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 295
    Top = 75
    Width = 263
    Height = 70
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1606#1581#1608#1607' '#1606#1605#1575#1610#1588'  '#1604#1610#1587#1578' '#1575#1588#1582#1575#1589'  '
    Items.Strings = (
      #1576#1585' '#1575#1587#1575#1587' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1606#1575#1605' '#1588#1607#1585
      #1576#1585' '#1575#1587#1575#1587' '#1705#1583)
    ParentBiDiMode = False
    TabOrder = 2
    OnClick = RadioGroup1Click
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
  object E_name: TEdit
    Left = 317
    Top = 6
    Width = 132
    Height = 21
    BiDiMode = bdRightToLeft
    MaxLength = 10
    ParentBiDiMode = False
    TabOrder = 0
    OnChange = E_nameChange
  end
  object RadioGroup2: TRadioGroup
    Left = 296
    Top = 29
    Width = 263
    Height = 45
    BiDiMode = bdRightToLeft
    Caption = '  '#1606#1602#1588' '#1588#1582#1589'  '
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #1582#1585#1610#1583#1575#1585'/'#1601#1585#1608#1588#1606#1583#1607
      #1582#1585#1610#1583#1575#1585
      #1601#1585#1608#1588#1606#1583#1607)
    ParentBiDiMode = False
    TabOrder = 1
    OnClick = RadioGroup2Click
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
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOQuery3
    Left = 104
    Top = 112
  end
end
