object Frm_foroshandegan_jens: TFrm_foroshandegan_jens
  Left = 110
  Top = 98
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1608#1588#1606#1583#1711#1575#1606' '#1580#1606#1587
  ClientHeight = 578
  ClientWidth = 782
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
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    782
    578)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 470
    Top = 4
    Width = 310
    Height = 65
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608#1610' '#1580#1606#1587
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
    TabOrder = 0
    DesignSize = (
      310
      65)
    object Label5: TLabel
      Left = 246
      Top = 28
      Width = 48
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1580#1606#1587' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 78
      Top = 28
      Width = 51
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1705#1583#1588#1585#1705#1578#1610':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object esearch: TEdit
      Left = 145
      Top = 25
      Width = 96
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
    object Edit2: TEdit
      Left = 5
      Top = 23
      Width = 68
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      TabOrder = 1
      OnChange = Edit2Change
    end
  end
  object suiDbjens: TsuiDBGrid
    Left = 4
    Top = 70
    Width = 774
    Height = 120
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = dsjens
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
    TabOrder = 1
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
        FieldName = 'calaname'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1580#1606#1587
        Width = 350
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'code_sherkati'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583#1588#1585#1705#1578#1610
        Visible = True
      end>
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 4
    Top = 193
    Width = 774
    Height = 368
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = Dskharid
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'shahrforoshande'
        Title.Alignment = taCenter
        Title.Caption = #1601#1585#1608#1588#1606#1583#1607
        Width = 130
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582
        Width = 81
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
        Title.Caption = #1608#1575#1581#1583#1705#1604#1610
        Width = 80
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_koli'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'teded_jozi'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1580#1586#1574#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_jozei'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583#1580#1586#1574#1610
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'gheymat'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1580#1586#1574#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1705#1604
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kol'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604' '#1582#1585#1610#1583
        Width = 100
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
  object GroupBox2: TGroupBox
    Left = 13
    Top = 2
    Width = 443
    Height = 66
    BiDiMode = bdRightToLeft
    Caption = #1606#1608#1593' '#1711#1586#1575#1585#1588' '#1711#1610#1585#1610
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
    TabOrder = 4
    object RadioGroup1: TRadioGroup
      Left = 227
      Top = 17
      Width = 212
      Height = 35
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #1578#1575#1585#1610#1582
        #1587#1575#1604
        #1576#1610#1606' '#1583#1608#1578#1575#1585#1610#1582)
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object g_sal: TGroupBox
      Left = 4
      Top = 7
      Width = 221
      Height = 49
      Caption = ' '#1576#1585' '#1575#1587#1575#1587' '#1587#1575#1604'  '
      TabOrder = 1
      object Label1: TLabel
        Left = 170
        Top = 22
        Width = 31
        Height = 13
        Caption = ' '#1587#1575#1604' :'
      end
      object scsal: TDBLookupComboBox
        Left = 36
        Top = 18
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
      Top = 7
      Width = 221
      Height = 49
      Caption = #1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582' '
      TabOrder = 2
      object RadioGroup2: TRadioGroup
        Left = 113
        Top = 13
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
        Top = 20
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
        Top = 20
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
        OnChange = MaskEditmahChange
      end
      object MaskEditsal: TMaskEdit
        Left = 5
        Top = 20
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
      Top = 7
      Width = 221
      Height = 58
      Caption = #1576#1610#1606' '#1583#1608' '#1578#1575#1585#1610#1582
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
      end
      object suiButton1: TsuiButton
        Left = 171
        Top = 26
        Width = 25
        Height = 18
        Caption = #1578#1575#1610#1610#1583
        AutoSize = False
        UIStyle = WinXP
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
  object Dskharid: TDataSource
    DataSet = Dmlistha.ADOkharidha
    Left = 352
    Top = 272
  end
  object dsjens: TDataSource
    DataSet = Dmlistha.ADOdistinctcalaname2
    Left = 624
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOQsaljadid
    Left = 25
    Top = 25
  end
end
