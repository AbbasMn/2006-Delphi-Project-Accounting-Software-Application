object frm_sode_foroshe_ajnas: Tfrm_sode_foroshe_ajnas
  Left = 115
  Top = 101
  Width = 718
  Height = 687
  BorderIcons = [biSystemMenu]
  Caption = #1587#1608#1583' '#1601#1585#1608#1588' '#1575#1580#1606#1575#1587
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
    710
    653)
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 198
    Top = 66
    Width = 127
    Height = 13
    Anchors = [akTop]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1606#1575#1605' '#1580#1606#1587':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
  end
  object G_sal_mah: TGroupBox
    Left = 339
    Top = 67
    Width = 370
    Height = 55
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585#1575#1587#1575#1587' '#1587#1575#1604' '#1608' '#1605#1575#1607' '#1601#1585#1608#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 160
      Top = 27
      Width = 39
      Height = 13
      Caption = #1605#1575#1607'       :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 316
      Top = 27
      Width = 40
      Height = 13
      Caption = #1587#1575#1604'     :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object suiButton1: TsuiButton
      Left = 7
      Top = 23
      Width = 28
      Height = 21
      ParentColor = False
      Caption = #1578#1575#1610#1610#1583
      AutoSize = False
      UIStyle = WinXP
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      ResHandle = 0
    end
    object scsal2: TDBLookupComboBox
      Left = 223
      Top = 22
      Width = 88
      Height = 22
      BiDiMode = bdRightToLeft
      Ctl3D = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'sal'
      ListField = 'sal'
      ListSource = DataSource3
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object scmah: TComboBox
      Left = 66
      Top = 22
      Width = 88
      Height = 22
      Style = csDropDownList
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        #1601#1585#1608#1585#1583#1610#1606
        #1575#1585#1583#1610#1576#1607#1588#1578
        #1582#1585#1583#1575#1583
        #1578#1610#1585
        #1605#1585#1583#1575#1583
        #1588#1607#1585#1610#1608#1585
        #1605#1607#1585
        #1570#1576#1575#1606
        #1570#1584#1585
        #1583#1610' '
        #1576#1607#1605#1606
        #1575#1587#1601#1606#1583
        '')
    end
  end
  object G_sal: TGroupBox
    Left = 339
    Top = 67
    Width = 370
    Height = 55
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585#1575#1587#1575#1587' '#1587#1575#1604' '#1601#1585#1608#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 237
      Top = 25
      Width = 40
      Height = 13
      Caption = #1587#1575#1604'     :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object scsal: TDBLookupComboBox
      Left = 93
      Top = 21
      Width = 88
      Height = 22
      BiDiMode = bdRightToLeft
      Ctl3D = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'sal'
      ListField = 'sal'
      ListSource = DataSource3
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = scsalClick
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 4
    Top = 123
    Width = 702
    Height = 527
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
    TabOrder = 6
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
        Title.Caption = #1606#1575#1605' '#1580#1606#1587
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'calacod'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1580#1606#1587
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_vahed'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymate_kharid'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1582#1585#1610#1583
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedde_forosh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1705#1604' '#1601#1585#1608#1588#1607#1575#1610' '#1580#1606#1587
        Width = 125
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sode_forosh'
        Title.Alignment = taCenter
        Title.Caption = #1587#1608#1583' '#1705#1604' '#1601#1585#1608#1588#1607#1575
        Width = 126
        Visible = True
      end>
  end
  object esearch: TEdit
    Left = 14
    Top = 61
    Width = 179
    Height = 22
    Anchors = [akTop]
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 30
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    OnChange = esearchChange
  end
  object RadioGroup1: TRadioGroup
    Left = 339
    Top = 8
    Width = 371
    Height = 59
    BiDiMode = bdRightToLeft
    Caption = '   '#1606#1608#1593' '#1711#1586#1575#1585#1588'  '
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1576#1585' '#1575#1587#1575#1587' '#1607#1605#1607' '#1587#1575#1604#1607#1575
      #1576#1585' '#1575#1587#1575#1587' '#1587#1575#1604
      #1576#1585' '#1575#1587#1575#1587' '#1605#1575#1607
      #1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 8
    Width = 335
    Height = 48
    BiDiMode = bdRightToLeft
    Caption = '   '#1587#1608#1583' '#1705#1604' '#1581#1575#1589#1604' '#1575#1586' '#1601#1585#1608#1588' '#1607#1605#1607' '#1575#1580#1606#1575#1587' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1606#1608#1593' '#1711#1586#1575#1585#1588'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 7
    object DBText4: TDBText
      Left = 3
      Top = 19
      Width = 327
      Height = 26
      Alignment = taCenter
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'sode_kol'
      DataSource = DataSource2
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
  end
  object G_sal_mah_roz: TGroupBox
    Left = 339
    Top = 67
    Width = 370
    Height = 55
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585#1575#1587#1575#1587' '#1587#1575#1604' '#1548' '#1605#1575#1607' '#1608' '#1585#1608#1586' '#1601#1585#1608#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    object Label3: TLabel
      Left = 118
      Top = 26
      Width = 17
      Height = 13
      Caption = #1585#1608#1586':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 342
      Top = 26
      Width = 25
      Height = 13
      Caption = #1587#1575#1604':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 227
      Top = 26
      Width = 18
      Height = 13
      Caption = #1605#1575#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btaeedall: TsuiButton
      Left = 7
      Top = 23
      Width = 28
      Height = 21
      Caption = #1578#1575#1610#1610#1583
      AutoSize = False
      UIStyle = WinXP
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btaeedallClick
      ResHandle = 0
    end
    object scsalall: TDBLookupComboBox
      Left = 249
      Top = 23
      Width = 90
      Height = 22
      BiDiMode = bdRightToLeft
      Ctl3D = True
      DataField = 'sal'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'sal'
      ListField = 'sal'
      ListSource = DataSource3
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object scmahall: TComboBox
      Left = 139
      Top = 23
      Width = 86
      Height = 22
      Style = csDropDownList
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        #1601#1585#1608#1585#1583#1610#1606
        #1575#1585#1583#1610#1576#1607#1588#1578
        #1582#1585#1583#1575#1583
        #1578#1610#1585
        #1605#1585#1583#1575#1583
        #1588#1607#1585#1610#1608#1585
        #1605#1607#1585
        #1570#1576#1575#1606
        #1570#1584#1585
        #1583#1610' '
        #1576#1607#1605#1606
        #1575#1587#1601#1606#1583
        '')
    end
    object scrooz: TComboBox
      Left = 39
      Top = 23
      Width = 75
      Height = 22
      Style = csDropDownList
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20'
        '21'
        '22'
        '23'
        '24'
        '25'
        '26'
        '27'
        '28'
        '29'
        '30'
        '31'
        '')
    end
  end
  object RadioGroup_sod_order: TRadioGroup
    Left = 14
    Top = 85
    Width = 323
    Height = 37
    BiDiMode = bdRightToLeft
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1576#1585' '#1575#1587#1575#1587' '#1662#1585#1587#1608#1583' '#1578#1585#1610#1606' '#1580#1606#1587
      #1576#1585' '#1575#1587#1575#1587' '#1705#1605' '#1587#1608#1583' '#1578#1585#1610#1606' '#1580#1606#1587)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 5
    OnClick = RadioGroup_sod_orderClick
  end
  object dxToolButton1: TdxToolButton
    Left = 0
    Top = 0
    Hint = #1605#1588#1575#1607#1583#1607' '#1601#1575#1705#1578#1608#1585
    Align = alLeft
    ParentShowHint = False
    ShowHint = True
    OnClick = dxToolButton1Click
    ToolType = ttRestore
  end
  object dxToolButton2: TdxToolButton
    Left = 15
    Top = 0
    Hint = #1575#1585#1587#1575#1604' '#1576#1607' '#1662#1585#1610#1606#1578#1585
    Align = alLeft
    ParentShowHint = False
    ShowHint = True
    OnClick = dxToolButton2Click
    ToolType = ttArrowLeft
  end
  object DataSource1: TDataSource
    DataSet = DataModule_sod.ADOQuery_sod_har_jens
    Left = 264
    Top = 248
  end
  object DataSource2: TDataSource
    DataSet = DataModule_sod.ADOQuery_sode_kol
    Left = 96
    Top = 24
  end
  object DataSource3: TDataSource
    DataSet = DataModule1.ADOQsaljadid
    Left = 560
    Top = 64
  end
end
