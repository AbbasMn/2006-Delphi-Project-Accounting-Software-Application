object frm_gozaresh_az_vorodi_khoroji_anbar: Tfrm_gozaresh_az_vorodi_khoroji_anbar
  Left = 93
  Top = 93
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1575#1586' '#1608#1585#1608#1583' '#1608' '#1582#1585#1608#1580' '#1580#1606#1587' '#1576#1607' / '#1575#1586' '#1605#1705#1575#1606' '#1606#1711#1607#1583#1575#1585#1610' '
  ClientHeight = 557
  ClientWidth = 785
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
    785
    557)
  PixelsPerInch = 96
  TextHeight = 13
  object lmdb_avali321: TLMDSpeedButton
    Left = 444
    Top = 215
    Width = 30
    Height = 22
    Caption = #1575#1608#1604#1610#1606
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = lmdb_avali321Click
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object lmdb_gabli: TLMDSpeedButton
    Left = 403
    Top = 215
    Width = 30
    Height = 22
    Caption = #1602#1576#1604#1610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = lmdb_gabliClick
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object lmdb_badi: TLMDSpeedButton
    Left = 363
    Top = 215
    Width = 30
    Height = 22
    Caption = #1576#1593#1583#1610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = lmdb_badiClick
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object lmdb_akharin: TLMDSpeedButton
    Left = 323
    Top = 215
    Width = 30
    Height = 22
    Caption = #1570#1582#1585#1610#1606
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = lmdb_akharinClick
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object Label2: TLabel
    Left = 316
    Top = 80
    Width = 176
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1575#1606#1608#1593' '#1608#1585#1608#1583' / '#1582#1585#1608#1580' '#1580#1606#1587' '#1576#1607' '#1605#1705#1575#1606' '#1575#1606#1578#1582#1575#1576#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 46
    Top = 80
    Width = 172
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    Caption = #1578#1608#1590#1610#1581#1575#1578' '#1705#1575#1605#1604' '#1606#1581#1608#1607' '#1608#1585#1608#1583' / '#1582#1585#1608#1580' '#1580#1606#1587
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lmdb_avali: TLMDSpeedButton
    Left = 363
    Top = 30
    Width = 158
    Height = 22
    Caption = #1581#1584#1601' '#1711#1586#1575#1585#1588#1575#1578' '#1605#1705#1575#1606' '#1575#1606#1578#1582#1575#1576#1610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = lmdb_avaliClick
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object suiDBGrid2: TsuiDBGrid
    Left = 543
    Top = 4
    Width = 240
    Height = 172
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = Datasanbarname
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
    TabOrder = 0
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
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = #1605#1705#1575#1606
        Width = 250
        Visible = True
      end>
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 3
    Top = 239
    Width = 779
    Height = 309
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = DataSource2
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
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'time_'
        Title.Alignment = taCenter
        Title.Caption = #1587#1575#1593#1578
        Width = 68
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sh_factor'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jens'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1580#1606#1587
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'code_sherkati'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1580#1606#1587' '#1583#1585' '#1578#1608#1604#1610#1583#1610
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'calacod'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1580#1606#1587' '
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1705#1604#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_koli'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583' '#1705#1604#1610
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_jozi_dar_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578' '#1580#1586#1574#1610' '#1583#1585' '#1705#1604#1610
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_jozei'
        Title.Caption = #1608#1575#1581#1583' '#1580#1586#1574#1610
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_kol'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1705#1604
        Visible = True
      end>
  end
  object DBMemo1: TDBMemo
    Left = 1
    Top = 98
    Width = 263
    Height = 135
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    DataField = 'tozih'
    DataSource = DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 5
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
  object GroupBox1: TGroupBox
    Left = 544
    Top = 178
    Width = 238
    Height = 59
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1580#1587#1578#1580#1608#1610' '#1580#1606#1587'  '
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      238
      59)
    object Label5: TLabel
      Left = 158
      Top = 26
      Width = 66
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1580#1606#1587'       :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object esearch: TEdit
      Left = 26
      Top = 23
      Width = 115
      Height = 22
      Anchors = [akTop, akRight]
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
  object GroupBox2: TGroupBox
    Left = 16
    Top = 1
    Width = 340
    Height = 73
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TabStop = True
    DesignSize = (
      340
      73)
    object RadioGroup1: TRadioGroup
      Left = 235
      Top = 6
      Width = 89
      Height = 63
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        #1578#1575#1585#1610#1582
        #1587#1575#1604
        #1576#1610#1606' '#1583#1608#1578#1575#1585#1610#1582)
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object g_sal: TGroupBox
      Left = 4
      Top = 9
      Width = 221
      Height = 58
      Caption = ' '#1576#1585' '#1575#1587#1575#1587' '#1587#1575#1604'  '
      TabOrder = 1
      object Label1: TLabel
        Left = 170
        Top = 25
        Width = 31
        Height = 13
        Caption = ' '#1587#1575#1604' :'
      end
      object scsal: TDBLookupComboBox
        Left = 36
        Top = 21
        Width = 88
        Height = 21
        BiDiMode = bdRightToLeft
        Ctl3D = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'sal'
        ListField = 'sal'
        ListSource = DataSource1
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnClick = scsalClick
      end
    end
    object g_tarikh: TGroupBox
      Left = 4
      Top = 9
      Width = 221
      Height = 58
      Caption = #1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582' '
      TabOrder = 2
      object RadioGroup2: TRadioGroup
        Left = 113
        Top = 16
        Width = 100
        Height = 31
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          #1575#1605#1585#1608#1586
          #1594#1610#1585#1607)
        TabOrder = 0
        TabStop = True
        OnClick = RadioGroup2Click
      end
      object MaskEditrooz: TMaskEdit
        Left = 67
        Top = 23
        Width = 29
        Height = 22
        TabStop = False
        EditMask = '99;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '  '
        OnChange = MaskEditroozChange
      end
      object MaskEditmah: TMaskEdit
        Left = 41
        Top = 23
        Width = 27
        Height = 22
        TabStop = False
        EditMask = '99;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '  '
      end
      object MaskEditsal: TMaskEdit
        Left = 5
        Top = 23
        Width = 35
        Height = 22
        TabStop = False
        EditMask = '9999;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '    '
      end
    end
    object g_b_tarikh: TGroupBox
      Left = 4
      Top = 9
      Width = 221
      Height = 58
      Caption = '  '#1576#1610#1606' '#1583#1608' '#1578#1575#1585#1610#1582'  '
      TabOrder = 3
      object Label7: TLabel
        Left = 116
        Top = 12
        Width = 41
        Height = 13
        Caption = #1575#1586' '#1578#1575#1585#1610#1582'  :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 82
        Top = 12
        Width = 4
        Height = 13
        Caption = '/'
      end
      object Label11: TLabel
        Left = 51
        Top = 12
        Width = 4
        Height = 13
        Caption = '/'
      end
      object Label8: TLabel
        Left = 117
        Top = 39
        Width = 40
        Height = 13
        Caption = #1578#1575' '#1578#1575#1585#1610#1582'  :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 82
        Top = 35
        Width = 4
        Height = 13
        Caption = '/'
      end
      object Label12: TLabel
        Left = 51
        Top = 35
        Width = 4
        Height = 13
        Caption = '/'
      end
      object E_roz_ebteda: TEdit
        Left = 87
        Top = 7
        Width = 23
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 0
        OnExit = E_roz_ebtedaExit
        OnKeyPress = E_roz_ebtedaKeyPress
      end
      object E_mah_ebteda: TEdit
        Left = 55
        Top = 7
        Width = 23
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 1
        OnExit = E_mah_ebtedaExit
        OnKeyPress = E_mah_ebtedaKeyPress
      end
      object E_sal_ebteda: TEdit
        Left = 6
        Top = 7
        Width = 43
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 5
        ParentFont = False
        TabOrder = 2
        OnKeyPress = E_sal_ebtedaKeyPress
      end
      object E_roz_enteha: TEdit
        Left = 87
        Top = 30
        Width = 23
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 3
        OnExit = E_roz_entehaExit
        OnKeyPress = E_roz_entehaKeyPress
      end
      object E_mah_enteha: TEdit
        Left = 55
        Top = 30
        Width = 23
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 4
        OnExit = E_mah_entehaExit
        OnKeyPress = E_mah_entehaKeyPress
      end
      object E_sal_enteha: TEdit
        Left = 6
        Top = 30
        Width = 43
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 5
        ParentFont = False
        TabOrder = 5
        OnKeyPress = E_sal_entehaKeyPress
      end
      object suiButton1: TsuiButton
        Left = 171
        Top = 26
        Width = 25
        Height = 18
        Caption = #1578#1575#1610#1610#1583
        AutoSize = False
        UIStyle = FromThemeFile
        TabOrder = 6
        Transparent = False
        ModalResult = 0
        FocusedRectMargin = 2
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        OnClick = suiButton1Click
        ResHandle = 0
      end
    end
  end
  object DBMemo2: TDBMemo
    Left = 267
    Top = 99
    Width = 275
    Height = 55
    TabStop = False
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    DataField = 'type_'
    DataSource = DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object RadioGroup3: TRadioGroup
    Left = 267
    Top = 158
    Width = 273
    Height = 52
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576'  '#1606#1605#1575#1610#1588' '#1608#1585#1608#1583#1607#1575' / '#1582#1585#1608#1580#1607#1575' /'#1608#1585#1608#1583#1607#1575' '#1608' '#1582#1585#1608#1580#1607#1575'  '
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 3
    Items.Strings = (
      #1608#1585#1608#1583#1607#1575
      #1582#1585#1608#1580#1607#1575
      #1581#1584#1601' '#1705#1575#1605#1604
      #1608#1585#1608#1583#1607#1575' '#1608' '#1582#1585#1608#1580#1607#1575' '#1608' '#1581#1584#1601#1607#1575)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    TabStop = True
    OnClick = RadioGroup3Click
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
  object Datasanbarname: TDataSource
    DataSet = Dmanbarexite.ADOanbarname
    Left = 615
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOQsaljadid
    Left = 32
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = Dmanbar.ADOQ_gozaresh_anbar
    Left = 488
    Top = 304
  end
end
