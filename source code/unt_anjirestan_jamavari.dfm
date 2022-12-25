object frm_anjirestan_jamavari: Tfrm_anjirestan_jamavari
  Left = 135
  Top = 20
  BorderStyle = bsSingle
  Caption = #1575#1580#1606#1575#1587
  ClientHeight = 697
  ClientWidth = 1315
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
  OnActivate = FormActivate
  OnShow = FormShow
  DesignSize = (
    1315
    697)
  PixelsPerInch = 96
  TextHeight = 13
  object L_sh_darj_factor: TLabel
    Left = 95
    Top = 19
    Width = 141
    Height = 13
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeftReadingOnly
    Caption = '*'#1588#1605#1575#1585#1607'  '#1583#1585#1580' '#1588#1583#1607' '#1585#1608#1610' '#1601#1575#1705#1578#1608#1585' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 423
    Top = 82
    Width = 50
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1578#1608#1590#1610#1581#1575#1578'  :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object GroupBox3: TGroupBox
    Left = 477
    Top = 161
    Width = 263
    Height = 46
    TabOrder = 1
    DesignSize = (
      263
      46)
    object LMDSpeedButton_22: TLMDSpeedButton
      Left = 185
      Top = 14
      Width = 70
      Height = 22
      Caption = #1581#1584#1601' '#1605#1581#1589#1608#1604
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
      Left = 85
      Top = 14
      Width = 91
      Height = 22
      Caption = #1581#1584#1601' '#1607#1605#1607' '#1605#1581#1589#1608#1604#1575#1578
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
      Left = 6
      Top = 14
      Width = 70
      Height = 22
      Caption = #1608#1610#1585#1575#1610#1588' '#1605#1581#1589#1608#1604
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
    Left = 2
    Top = 212
    Width = 738
    Height = 479
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
        FieldName = 'shahrforoshande'
        Title.Caption = #1575#1606#1580#1610#1585#1587#1578#1575#1606
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jens'
        Title.Alignment = taCenter
        Title.Caption = #1580#1606#1587
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vahed_koli'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583' '#1705#1604#1610
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1705#1604#1610
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_jozi_dar_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1580#1586#1574#1610' '#1583#1585#1705#1604#1610
        Width = 80
        Visible = True
      end
      item
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
        FieldName = 'tedad'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610
        Width = 80
        Visible = True
      end>
  end
  object suiGroupBox2: TsuiGroupBox
    Left = 477
    Top = 74
    Width = 262
    Height = 85
    UIStyle = MacOS
    Anchors = [akTop, akRight]
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
      262
      85)
    object DBText_arzesh_kol: TDBText
      Left = 12
      Top = 52
      Width = 126
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
    object Label8: TLabel
      Left = 146
      Top = 23
      Width = 109
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1605#1593' '#1570#1608#1585#1610' '#1575#1586' '#1575#1606#1580#1610#1585#1587#1578#1575#1606':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_shahr: TLabel
      Left = 4
      Top = 16
      Width = 130
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
    object Label2: TLabel
      Left = 147
      Top = 60
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
  end
  object GroupBox5: TGroupBox
    Left = 1049
    Top = 12
    Width = 264
    Height = 681
    Anchors = [akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1580#1610#1585#1587#1578#1575#1606#1607#1575#1610' '#1579#1576#1578' '#1588#1583#1607'  '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      264
      681)
    object suiDBGrid2: TsuiDBGrid
      Left = 3
      Top = 23
      Width = 257
      Height = 655
      TabStop = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = True
      DataSource = DataSource5
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
          FieldName = 'shahrforoshande'
          Title.Alignment = taCenter
          Title.Caption = #1575#1606#1580#1610#1585#1587#1578#1575#1606
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telephon'
          Title.Caption = #1578#1593#1583#1575#1583' '#1583#1585#1582#1578
          Width = 60
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 476
    Top = 13
    Width = 264
    Height = 53
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1578#1575#1585#1610#1582' '#1580#1605#1593' '#1570#1608#1585#1610'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    object suiButton4: TsuiButton
      Left = 95
      Top = 21
      Width = 38
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1578#1575#1585#1610#1582' *'
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
      OnClick = suiButton4Click
      ResHandle = 0
    end
    object MaskEditrooz: TMaskEdit
      Left = 65
      Top = 21
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
    object MaskEditmah: TMaskEdit
      Left = 39
      Top = 21
      Width = 26
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
      TabOrder = 3
      Text = '  '
    end
    object MaskEditsal: TMaskEdit
      Left = 3
      Top = 21
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
      TabOrder = 4
      Text = '    '
    end
    object RadioGroup1: TRadioGroup
      Left = 139
      Top = 13
      Width = 92
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
  object RadioGroup2: TRadioGroup
    Left = 241
    Top = 11
    Width = 233
    Height = 62
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1579#1576#1578' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #1579#1576#1578' '#1576#1575' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
      #1579#1576#1578' '#1576#1575' '#1588#1605#1575#1585#1607' '#1578#1585#1578#1610#1576#1610' '#1575#1606#1580#1610#1585#1587#1578#1575#1606' ')
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 5
    OnClick = RadioGroup2Click
  end
  object E_sh_darj_factor: TEdit
    Left = 31
    Top = 18
    Width = 47
    Height = 22
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 6
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 742
    Top = 13
    Width = 304
    Height = 679
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1581#1589#1608#1604'   '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 7
    object L_type: TLabel
      Left = 142
      Top = 8
      Width = 33
      Height = 13
      Caption = 'L_type'
      Visible = False
    end
    object l_jans_name: TLabel
      Left = 6
      Top = 200
      Width = 292
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'l_jans_name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 128
      Top = 179
      Width = 75
      Height = 13
      Caption = #1605#1581#1589#1608#1604' '#1575#1606#1578#1582#1575#1576#1610':'
    end
    object L_barcod: TLabel
      Left = 242
      Top = 216
      Width = 44
      Height = 13
      Caption = 'L_barcod'
      Visible = False
    end
    object Label12: TLabel
      Left = 106
      Top = 236
      Width = 94
      Height = 13
      Caption = #1705#1583' '#1588#1585#1705#1578#1610' '#1605#1581#1589#1608#1604' :'
    end
    object Label14: TLabel
      Left = 238
      Top = 140
      Width = 60
      Height = 13
      Caption = '*'#1606#1575#1605' '#1605#1581#1589#1608#1604':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 241
      Top = 100
      Width = 55
      Height = 13
      Caption = #1576#1575#1585#1705#1583'          :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox_jozei: TGroupBox
      Left = 5
      Top = 394
      Width = 295
      Height = 196
      Caption = '  '#1605#1581#1589#1608#1604' '#1578#1705' '#1608#1575#1581#1583#1610'  '
      TabOrder = 3
      object Label7: TLabel
        Left = 167
        Top = 129
        Width = 117
        Height = 13
        Caption = '*'#1578#1593#1583#1575#1583' ( '#1608#1575#1581#1583' ) '#1605#1581#1589#1608#1604'   :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 176
        Top = 86
        Width = 108
        Height = 13
        Caption = '*'#1602#1610#1605#1578' '#1607#1585' '#1608#1575#1581#1583' '#1580#1586#1574#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 166
        Top = 43
        Width = 118
        Height = 13
        Caption = '*'#1608#1575#1581#1583' '#1580#1586#1574#1610' '#1605#1581#1589#1608#1604'       :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object L_vahed_joji_jozi: TLabel
        Left = 4
        Top = 39
        Width = 160
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'l_jans_name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 17
        Top = 124
        Width = 144
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 2
        OnKeyPress = Edit2KeyPress
      end
      object Edit3: TEdit
        Left = 17
        Top = 81
        Width = 144
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 9
        ParentFont = False
        TabOrder = 1
        OnKeyPress = Edit3KeyPress
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 17
        Top = 39
        Width = 144
        Height = 21
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'vahed'
        ListField = 'vahed'
        ListSource = DataSource4
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox_koli: TGroupBox
      Left = 6
      Top = 393
      Width = 295
      Height = 196
      Caption = '  '#1605#1581#1589#1608#1604' '#1583#1608' '#1608#1575#1581#1583#1610'  '
      TabOrder = 4
      object Label4: TLabel
        Left = 166
        Top = 58
        Width = 124
        Height = 13
        Caption = '*'#1608#1575#1581#1583' '#1580#1586#1574#1610' '#1605#1581#1589#1608#1604'         :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 166
        Top = 91
        Width = 123
        Height = 13
        Caption = '*'#1602#1610#1605#1578' '#1607#1585' '#1608#1575#1581#1583' '#1705#1604#1610'        :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 166
        Top = 124
        Width = 124
        Height = 13
        Caption = '*'#1578#1593#1583#1575#1583' ( '#1608#1575#1581#1583' ) '#1705#1604#1610'          :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 166
        Top = 25
        Width = 124
        Height = 13
        Caption = '*'#1608#1575#1581#1583' '#1705#1604#1610' '#1605#1581#1589#1608#1604'           :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 166
        Top = 159
        Width = 124
        Height = 13
        Caption = '*'#1578#1593#1583#1575#1583' '#1608#1575#1581#1583' '#1580#1586#1574#1610' '#1583#1585' '#1705#1604#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object l_vahed_koli: TLabel
        Left = 4
        Top = 21
        Width = 160
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'l_jans_name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object L_vahed_jozi: TLabel
        Left = 4
        Top = 54
        Width = 160
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'l_jans_name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object l_tedad_J_dar_k: TLabel
        Left = 4
        Top = 155
        Width = 160
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'l_jans_name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 17
        Top = 53
        Width = 144
        Height = 21
        DataField = 'vahed'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'vahed'
        ListField = 'vahed'
        ListSource = DataSource4
        ParentFont = False
        TabOrder = 1
      end
      object Edit_g_vahed_koli: TEdit
        Left = 17
        Top = 86
        Width = 144
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 9
        ParentFont = False
        TabOrder = 2
        OnKeyPress = Edit_g_vahed_koliKeyPress
      end
      object Edit_tedad_vahed_koli: TEdit
        Left = 17
        Top = 119
        Width = 144
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 3
        OnKeyPress = Edit_tedad_vahed_koliKeyPress
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 17
        Top = 21
        Width = 144
        Height = 21
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'vahed'
        ListField = 'vahed'
        ListSource = DataSource4
        ParentFont = False
        TabOrder = 0
      end
      object Edit_tedad_jozei_dar_koli: TEdit
        Left = 17
        Top = 154
        Width = 144
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 4
        OnKeyPress = Edit_tedad_jozei_dar_koliKeyPress
      end
    end
    object RadioGroup_vahed_type: TRadioGroup
      Left = 4
      Top = 305
      Width = 297
      Height = 57
      Caption = ' '#1579#1576#1578' '#1605#1581#1589#1608#1604' '#1576#1607' '#1589#1608#1585#1578' '#1578#1705' '#1608#1575#1581#1583#1610' '#1608' '#1583#1608' '#1608#1575#1581#1583#1610'   '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1605#1581#1589#1608#1604' '#1583#1608' '#1608#1575#1581#1583#1610
        #1605#1581#1589#1608#1604' '#1578#1705'  '#1608#1575#1581#1583#1610)
      TabOrder = 2
      OnClick = RadioGroup_vahed_typeClick
    end
    object RadioGroup_jens_type: TRadioGroup
      Left = 4
      Top = 27
      Width = 295
      Height = 44
      Caption = '  '#1575#1606#1578#1582#1575#1576' '#1605#1581#1589#1608#1604'  '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1605#1581#1589#1608#1604' '#1605#1608#1580#1608#1583' '#1583#1585#1605#1705#1575#1606#1607#1575
        #1605#1581#1589#1608#1604' '#1580#1583#1610#1583)
      TabOrder = 0
      OnClick = RadioGroup_jens_typeClick
    end
    object suiButton11: TsuiButton
      Left = 7
      Top = 611
      Width = 290
      Height = 38
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = #1579#1576#1578' '#1605#1581#1589#1608#1604
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
      OnClick = suiButton11Click
      ResHandle = 0
    end
    object e_code_sherkati: TEdit
      Left = 95
      Top = 251
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      OnChange = e_code_sherkatiChange
    end
    object Edit1: TEdit
      Left = 11
      Top = 135
      Width = 225
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 39
      ParentFont = False
      TabOrder = 6
      OnChange = Edit1Change
      OnExit = Edit1Exit
    end
    object E_barcod: TEdit
      Left = 11
      Top = 95
      Width = 225
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 7
      OnChange = E_barcodChange
      OnExit = E_barcodExit
    end
    object GroupBox_jens_anbar: TGroupBox
      Left = 6
      Top = 87
      Width = 295
      Height = 76
      Caption = '  '#1575#1606#1578#1582#1575#1576' '#1605#1581#1589#1608#1604' '#1575#1586' '#1604#1610#1587#1578' '#1605#1581#1589#1608#1604#1575#1578' '#1605#1705#1575#1606#1607#1575'  '
      TabOrder = 8
      object btnListMahsol: TButton
        Left = 91
        Top = 34
        Width = 114
        Height = 21
        Caption = #1604#1610#1587#1578' '#1605#1581#1589#1608#1604#1575#1578' '#1605#1705#1575#1606#1607#1575
        TabOrder = 0
        OnClick = btnListMahsolClick
      end
    end
  end
  object Memo1: TMemo
    Left = 240
    Top = 102
    Width = 228
    Height = 101
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '')
    MaxLength = 300
    ParentBiDiMode = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 8
  end
  object Button2: TButton
    Left = 242
    Top = 76
    Width = 96
    Height = 25
    Caption = #1662#1575#1705' '#1705#1585#1583#1606' '#1578#1608#1590#1610#1581#1575#1578
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button2Click
  end
  object suiButton1: TsuiButton
    Left = 4
    Top = 134
    Width = 228
    Height = 38
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Caption = #1579#1576#1578' '#1606#1607#1575#1610#1610' '#1605#1581#1589#1608#1604#1575#1578' '#1601#1575#1705#1578#1608#1585
    AutoSize = False
    ParentFont = False
    UIStyle = WinXP
    TabOrder = 10
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
    DataSet = DataM_final.ADOQuery_pish_kharid
    Left = 232
    Top = 320
  end
  object DataSource2: TDataSource
    DataSet = Dmlistha.ADOQuery_tedad_pishkharid
    Left = 552
    Top = 120
  end
  object Timer1: TTimer
    Left = 649
    Top = 364
  end
  object DataSource5: TDataSource
    DataSet = DataModule1.ADOQuery4
    Left = 1140
    Top = 233
  end
  object DataSource3: TDataSource
    DataSet = Dmanbar.ADOeditgeymat
    Left = 520
    Top = 224
  end
  object DataSource4: TDataSource
    DataSet = Dmlistha.ADOQuery_vahed
    Left = 920
    Top = 368
  end
end
