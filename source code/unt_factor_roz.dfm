object frm_factor_roz: Tfrm_factor_roz
  Left = 229
  Top = 149
  Anchors = [akLeft, akTop, akRight, akBottom]
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1589#1583#1608#1585' '#1601#1575#1705#1578#1608#1585' '#1601#1585#1608#1588
  ClientHeight = 578
  ClientWidth = 831
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  Scaled = False
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    831
    578)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 565
    Top = 8
    Width = 265
    Height = 44
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608#1610' '#1588#1582#1589
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
      265
      44)
    object Label4: TLabel
      Left = 210
      Top = 22
      Width = 51
      Height = 13
      Caption = #1606#1575#1605' '#1588#1582#1589':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_kharidar: TLabel
      Left = 54
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
    object Label8: TLabel
      Left = 60
      Top = 22
      Width = 49
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1705#1583' '#1588#1582#1589':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object esearch: TEdit
      Left = 112
      Top = 17
      Width = 94
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
    object e_cod: TEdit
      Left = 5
      Top = 17
      Width = 52
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
      OnChange = e_codChange
      OnKeyPress = e_codKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 565
    Top = 212
    Width = 266
    Height = 67
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1578#1575#1585#1610#1582' '#1601#1585#1608#1588' '
    ParentBiDiMode = False
    TabOrder = 1
    object MaskEditrooz: TMaskEdit
      Left = 84
      Top = 27
      Width = 29
      Height = 22
      TabStop = False
      BiDiMode = bdRightToLeft
      EditMask = '99;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 2
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = '  '
    end
    object MaskEditmah: TMaskEdit
      Left = 57
      Top = 27
      Width = 28
      Height = 22
      TabStop = False
      BiDiMode = bdRightToLeft
      EditMask = '99;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 2
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = '  '
    end
    object MaskEditsal: TMaskEdit
      Left = 19
      Top = 27
      Width = 37
      Height = 22
      TabStop = False
      BiDiMode = bdRightToLeft
      EditMask = '9999;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 4
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '    '
    end
    object RadioGroup1: TRadioGroup
      Left = 133
      Top = 19
      Width = 130
      Height = 33
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1575#1605#1585#1608#1586
        #1594#1610#1585#1607)
      TabOrder = 0
      TabStop = True
      OnClick = RadioGroup1Click
    end
  end
  object Gp_factor: TGroupBox
    Left = 1
    Top = 8
    Width = 265
    Height = 269
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1588#1582#1589#1575#1578' '#1601#1575#1705#1578#1608#1585'  '
    ParentBiDiMode = False
    TabOrder = 2
    DesignSize = (
      265
      269)
    object GroupBox5: TGroupBox
      Left = 2
      Top = 89
      Width = 260
      Height = 176
      TabOrder = 0
      DesignSize = (
        260
        176)
      object Label5: TLabel
        Left = 144
        Top = 10
        Width = 105
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1583#1575#1583' '#1575#1602#1604#1575#1605' '#1601#1575#1705#1578#1608#1585'    :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label_tedad: TLabel
        Left = 19
        Top = 9
        Width = 114
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText_arzesh_kol: TDBText
        Left = 19
        Top = 33
        Width = 126
        Height = 21
        Alignment = taCenter
        Anchors = [akRight]
        DataField = 'g_kol_foroshha'
        DataSource = DataSource2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText_nagd: TDBText
        Left = 19
        Top = 81
        Width = 126
        Height = 21
        Alignment = taCenter
        Anchors = [akRight]
        DataField = 'nagd'
        DataSource = DataSource4
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText_check: TDBText
        Left = 19
        Top = 105
        Width = 126
        Height = 21
        Alignment = taCenter
        Anchors = [akRight]
        DataField = 'check_kol'
        DataSource = DataSource5
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText_bedehi: TDBText
        Left = 19
        Top = 129
        Width = 126
        Height = 21
        Alignment = taCenter
        Anchors = [akRight]
        DataField = 'bedeh'
        DataSource = DataSource6
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 144
        Top = 131
        Width = 107
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594' '#1576#1583#1607#1610' '#1601#1575#1705#1578#1608#1585'    :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 144
        Top = 107
        Width = 104
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1662#1585#1583#1575#1582#1578' '#1670#1705' '#1601#1575#1705#1578#1608#1585'  :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 144
        Top = 83
        Width = 102
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1662#1585#1583#1575#1582#1578' '#1606#1602#1583#1610' '#1601#1575#1705#1578#1608#1585':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Lsal1: TLabel
        Left = 144
        Top = 34
        Width = 104
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1586#1588' '#1575#1580#1606#1575#1587' '#1601#1575#1705#1578#1608#1585' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 144
        Top = 156
        Width = 108
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594' '#1591#1604#1576' '#1601#1575#1705#1578#1608#1585'      :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 19
        Top = 153
        Width = 126
        Height = 21
        Alignment = taCenter
        Anchors = [akRight]
        DataField = 'talab'
        DataSource = DataSource6
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 143
        Top = 58
        Width = 105
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601' '#1601#1575#1705#1578#1608#1585'   :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 19
        Top = 57
        Width = 126
        Height = 21
        Alignment = taCenter
        Anchors = [akRight]
        DataField = 'mablagh_takhfif'
        DataSource = DataSource7
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object btn_view_roz: TsuiButton
      Left = 7
      Top = 63
      Width = 42
      Height = 20
      Anchors = [akTop]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1605#1588#1575#1607#1583#1607
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btn_view_rozClick
      ResHandle = 0
    end
    object CheckBox1: TCheckBox
      Left = 110
      Top = 65
      Width = 129
      Height = 17
      Caption = #1601#1575#1705#1578#1608#1585' '#1705#1604' '#1582#1585#1610#1583#1607#1575#1610' '#1585#1608#1586
      TabOrder = 3
      OnClick = CheckBox1Click
    end
    object RadioGroup2: TRadioGroup
      Left = 14
      Top = 16
      Width = 235
      Height = 34
      Caption = '  '#1606#1605#1575#1610#1588' '#1578#1575#1585#1610#1582' '#1601#1575#1705#1578#1608#1585'  '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1606#1605#1575#1610#1588
        #1593#1583#1605' '#1606#1605#1575#1610#1588)
      TabOrder = 4
      OnClick = RadioGroup2Click
    end
    object btn_print_roz: TsuiButton
      Left = 63
      Top = 63
      Width = 42
      Height = 20
      Anchors = [akTop]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1662#1585#1610#1606#1578
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btn_print_rozClick
      ResHandle = 0
    end
    object btn_print_taki: TsuiButton
      Left = 63
      Top = 63
      Width = 42
      Height = 20
      Caption = #1662#1585#1610#1606#1578
      AutoSize = False
      UIStyle = WinXP
      TabOrder = 5
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btn_print_takiClick
      ResHandle = 0
    end
    object btn_view_taki: TsuiButton
      Left = 7
      Top = 63
      Width = 42
      Height = 20
      Caption = #1605#1588#1575#1607#1583#1607
      AutoSize = False
      UIStyle = WinXP
      TabOrder = 6
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btn_view_takiClick
      ResHandle = 0
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 3
    Top = 280
    Width = 828
    Height = 293
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = DataSource3
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
        FieldName = 'sh_factor'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'calacod'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583#1580#1606#1587
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jens'
        Title.Alignment = taCenter
        Title.Caption = #1580#1606#1587
        Width = 97
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
        Width = 69
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_koli'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583#1705#1604#1610
        Width = 85
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
        Title.Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_jozei'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583#1580#1586#1574#1610
        Width = 39
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_vahed'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583' '#1580#1586#1574#1610
        Width = 97
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_kol'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1705#1604
        Width = 78
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_jens'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604' '#1582#1585#1610#1583
        Width = 115
        Visible = True
      end>
  end
  object suiDBGrid2: TsuiDBGrid
    Left = 268
    Top = 32
    Width = 294
    Height = 223
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
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
        FieldName = 'code'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1582#1585#1610#1583#1575#1585
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shahrforoshande'
        Title.Alignment = taCenter
        Title.Caption = #1582#1585#1610#1583#1575#1585
        Width = 92
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582
        Width = 68
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'shomare'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'time'
        Title.Alignment = taCenter
        Title.Caption = #1587#1575#1593#1578
        Width = 73
        Visible = True
      end>
  end
  object suiDBGrid3: TsuiDBGrid
    Left = 564
    Top = 58
    Width = 264
    Height = 152
    TabStop = False
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = dsshakhs
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
    TabOrder = 5
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'code'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shahrforoshande'
        Title.Alignment = taCenter
        Title.Caption = #1605#1588#1582#1589#1575#1578' '#1582#1585#1610#1583#1575#1585
        Width = 180
        Visible = True
      end>
  end
  object CheckBox2: TCheckBox
    Left = 326
    Top = 9
    Width = 178
    Height = 17
    Anchors = [akTop]
    BiDiMode = bdRightToLeft
    Caption = #1606#1605#1575#1610#1588' '#1607#1605#1607' '#1582#1585#1610#1583#1607#1575' '#1583#1585' '#1607#1605#1607' '#1578#1575#1585#1610#1582#1607#1575
    ParentBiDiMode = False
    TabOrder = 6
    OnClick = CheckBox2Click
  end
  object suiButton2: TsuiButton
    Left = 339
    Top = 257
    Width = 153
    Height = 21
    Anchors = [akTop]
    Caption = #1570#1582#1585#1610#1606' '#1588#1605#1575#1585#1607' '#1601#1610#1588'/'#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
    AutoSize = False
    UIStyle = WinXP
    TabOrder = 7
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton2Click
    ResHandle = 0
  end
  object DataSource2: TDataSource
    DataSet = DataM_final.ADOQ_g_kol_foroshha
    Left = 40
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = DataM_final.ADOQ_t_sh_facrorhaye_forosh2
    Left = 408
    Top = 120
  end
  object dsshakhs: TDataSource
    DataSet = DataModule1.ADOQuery3
    Left = 872
    Top = 168
  end
  object DataSource3: TDataSource
    DataSet = Dmlistha.adolistforosh
    Left = 352
    Top = 408
  end
  object DataSource4: TDataSource
    DataSet = DataM_final.ADOQ_t_pardakht_nagd_forosh
    Left = 216
    Top = 104
  end
  object DataSource5: TDataSource
    DataSet = DataM_final.ADOQ_T_jame_pardakht_check_forosh
    Left = 32
    Top = 192
  end
  object DataSource6: TDataSource
    DataSet = DataM_final.ADOQ_bedeh_talabe_factor_forosh
    Left = 224
    Top = 224
  end
  object DataSource7: TDataSource
    DataSet = DataM_final.ADOQ_takhfife_forosh
    Left = 203
    Top = 155
  end
end
