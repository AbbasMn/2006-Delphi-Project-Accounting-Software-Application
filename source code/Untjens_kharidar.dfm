object Frm_jens_kharidar: TFrm_jens_kharidar
  Left = 214
  Top = 146
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '#1582#1585#1610#1583#1575#1585#1575#1606' '#1580#1606#1587
  ClientHeight = 564
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
  OnShow = FormShow
  DesignSize = (
    782
    564)
  PixelsPerInch = 96
  TextHeight = 13
  object suiDBGrid1: TsuiDBGrid
    Left = 5
    Top = 200
    Width = 773
    Height = 341
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = Dskharidar
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
        FieldName = 'shahrforoshande'
        Title.Alignment = taCenter
        Title.Caption = #1582#1585#1610#1583#1575#1585
        Width = 174
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
        Width = 75
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
        FieldName = 'tedad'
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
        Width = 69
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_vahed'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_kol'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1705#1604
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_jens'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1582#1585#1610#1583
        Width = 104
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 474
    Top = 4
    Width = 305
    Height = 69
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
    TabOrder = 1
    DesignSize = (
      305
      69)
    object Label5: TLabel
      Left = 246
      Top = 31
      Width = 45
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1580#1606#1587':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 78
      Top = 16
      Width = 43
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1705#1583' '#1580#1606#1587':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 78
      Top = 47
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
      Left = 147
      Top = 28
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
    object Edit1: TEdit
      Left = 5
      Top = 11
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
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 5
      Top = 42
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
      TabOrder = 2
      OnChange = Edit2Change
    end
  end
  object dxToolButton12: TdxToolButton
    Left = 0
    Top = 0
    Hint = #1601#1575#1705#1578#1608#1585
    Align = alLeft
    ParentShowHint = False
    ShowHint = True
    OnClick = dxToolButton12Click
    ToolType = ttRestore
  end
  object GroupBox2: TGroupBox
    Left = 13
    Top = 8
    Width = 457
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
    TabOrder = 3
    object RadioGroup1: TRadioGroup
      Left = 232
      Top = 17
      Width = 219
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
  object suiDbjens: TsuiDBGrid
    Left = 4
    Top = 77
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
        FieldName = 'calacod'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583#1580#1606#1587
        Width = 46
        Visible = True
      end
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
  object dsjens: TDataSource
    DataSet = Dmlistha.ADOdistinctcalaname
    Left = 600
    Top = 160
  end
  object Dskharidar: TDataSource
    DataSet = Dmlistha.adolistforosh
    Left = 384
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOQsaljadid
    Left = 32
    Top = 8
  end
end
