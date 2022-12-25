object frm_eslah_forosh: Tfrm_eslah_forosh
  Left = 133
  Top = 145
  Anchors = [akLeft, akTop, akRight, akBottom]
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1575#1606#1578#1582#1575#1576' '#1601#1585#1608#1588' '#1576#1585#1575#1610' '#1575#1589#1604#1575#1581' '#1610#1575' '#1581#1584#1601
  ClientHeight = 578
  ClientWidth = 804
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
    804
    578)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 484
    Top = 1
    Width = 317
    Height = 287
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1582#1585#1610#1583#1575#1585'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      317
      287)
    object DBText_shakhs: TDBText
      Left = 10
      Top = 17
      Width = 39
      Height = 17
      Alignment = taRightJustify
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'shahrforoshande'
      DataSource = Dskharidha
      ParentBiDiMode = False
      Visible = False
    end
    object DBText_geymat: TDBText
      Left = 122
      Top = 9
      Width = 39
      Height = 17
      Alignment = taRightJustify
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'geymat_jens'
      DataSource = Dskharidha
      ParentBiDiMode = False
      Visible = False
    end
    object DBText_calacod: TDBText
      Left = 50
      Top = 0
      Width = 39
      Height = 17
      Alignment = taRightJustify
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'calacod'
      DataSource = Dskharidha
      ParentBiDiMode = False
      Visible = False
    end
    object DBText_id: TDBText
      Left = 8
      Top = 2
      Width = 33
      Height = 17
      Alignment = taRightJustify
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'id'
      DataSource = Dskharidha
      ParentBiDiMode = False
      Visible = False
    end
    object Label2: TLabel
      Left = 242
      Top = 27
      Width = 51
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1588#1582#1589':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 79
      Top = 27
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
    object suiDbjens: TsuiDBGrid
      Left = 6
      Top = 63
      Width = 308
      Height = 220
      TabStop = False
      Anchors = [akLeft]
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
          Width = 230
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'code'
          Title.Alignment = taCenter
          Title.Caption = #1705#1583
          Width = 40
          Visible = True
        end>
    end
    object esearch: TEdit
      Left = 138
      Top = 22
      Width = 101
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
      OnChange = esearchChange
    end
    object e_cod: TEdit
      Left = 24
      Top = 22
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
      TabOrder = 2
      OnChange = e_codChange
      OnKeyPress = e_codKeyPress
    end
  end
  object GroupBox7: TGroupBox
    Left = 171
    Top = 62
    Width = 312
    Height = 226
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1582#1585#1610#1583#1607#1575#1610' '#1588#1582#1589' '#1583#1585' '#1578#1575#1585#1610#1582' '#1575#1606#1578#1582#1575#1576#1610'  '
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
      312
      226)
    object L_sh_factor: TLabel
      Left = 10
      Top = 9
      Width = 57
      Height = 13
      Caption = 'L_sh_factor'
      Visible = False
    end
    object L_shakhs: TLabel
      Left = 73
      Top = 11
      Width = 57
      Height = 13
      Caption = 'L_sh_factor'
      Visible = False
    end
    object l_review: TLabel
      Left = 28
      Top = 11
      Width = 92
      Height = 13
      Caption = 'l_review_sh_factor'
      Visible = False
    end
    object suiDBGrid2: TsuiDBGrid
      Left = 2
      Top = 35
      Width = 307
      Height = 160
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
          Alignment = taCenter
          Expanded = False
          FieldName = 'code'
          Title.Alignment = taCenter
          Title.Caption = #1705#1583
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'shahrforoshande'
          Title.Alignment = taCenter
          Title.Caption = #1582#1585#1610#1583#1575#1585
          Width = 84
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'tarikh'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582
          Width = 66
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'shomare'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
          Width = 63
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
    object CheckBox1: TCheckBox
      Left = 67
      Top = 16
      Width = 178
      Height = 17
      Anchors = [akTop]
      Caption = #1606#1605#1575#1610#1588' '#1607#1605#1607' '#1582#1585#1610#1583#1607#1575' '#1583#1585' '#1607#1605#1607' '#1578#1575#1585#1610#1582#1607#1575
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object suiButton2: TsuiButton
      Left = 79
      Top = 199
      Width = 153
      Height = 21
      Anchors = [akTop]
      Caption = #1570#1582#1585#1610#1606' '#1588#1605#1575#1585#1607' '#1601#1610#1588'/'#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
      AutoSize = False
      UIStyle = WinXP
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton2Click
      ResHandle = 0
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 1
    Top = 291
    Width = 800
    Height = 278
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = Dskharidha
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
        FieldName = 'sh_factor'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jens'
        Title.Alignment = taCenter
        Title.Caption = #1580#1606#1587
        Width = 114
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1705#1604#1610
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_koli'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583#1705#1604#1610
        Width = 53
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
        Width = 67
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_jozei'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583#1580#1586#1574#1610
        Width = 77
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_kol'
        Title.Alignment = taCenter
        Title.Caption = #1580#1605#1593
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_vahed'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
        Width = 61
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
        Title.Caption = #1578#1575#1585#1610#1582' '#1601#1585#1608#1588
        Width = 95
        Visible = True
      end>
  end
  object GroupBox6: TGroupBox
    Left = 3
    Top = 2
    Width = 167
    Height = 287
    TabOrder = 3
    object LMDSpeedButton_add1534354: TLMDSpeedButton
      Left = 6
      Top = 136
      Width = 151
      Height = 22
      Caption = #1575#1589#1604#1575#1581' '#1578#1593#1583#1575#1583' '#1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_add1534354Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_111: TLMDSpeedButton
      Left = 6
      Top = 216
      Width = 151
      Height = 22
      Caption = #1581#1584#1601' '#1602#1604#1605' '#1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_111Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_add2: TLMDSpeedButton
      Left = 6
      Top = 16
      Width = 151
      Height = 22
      Caption = #1575#1589#1604#1575#1581' '#1605#1576#1604#1594' '#1606#1602#1583' '#1579#1576#1578' '#1588#1583#1607' '#1601#1575#1705#1578#1608#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_add2Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_add: TLMDSpeedButton
      Left = 6
      Top = 56
      Width = 151
      Height = 22
      Caption = #1575#1589#1604#1575#1581' '#1605#1576#1604#1594' '#1670#1705' '#1579#1576#1578' '#1588#1583#1607' '#1601#1575#1705#1578#1608#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_addClick
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_add22: TLMDSpeedButton
      Left = 6
      Top = 176
      Width = 151
      Height = 22
      Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1580#1606#1587' '#1576#1607' '#1601#1575#1705#1578#1608#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_add22Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_add1: TLMDSpeedButton
      Left = 6
      Top = 96
      Width = 151
      Height = 22
      Caption = #1575#1589#1604#1575#1581' '#1605#1576#1604#1594' '#1578#1582#1601#1610#1601' '#1601#1575#1705#1578#1608#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_add1Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_1: TLMDSpeedButton
      Left = 6
      Top = 256
      Width = 151
      Height = 22
      Caption = #1575#1589#1604#1575#1581' '#1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1608#1588
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_1Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
  end
  object GroupBox5: TGroupBox
    Left = 171
    Top = 1
    Width = 312
    Height = 56
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '    '#1578#1575#1585#1610#1582' '#1601#1585#1608#1588'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    DesignSize = (
      312
      56)
    object MaskEditrooz: TMaskEdit
      Left = 110
      Top = 22
      Width = 27
      Height = 22
      TabStop = False
      Anchors = [akTop]
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
    end
    object MaskEditmah: TMaskEdit
      Left = 81
      Top = 22
      Width = 26
      Height = 22
      TabStop = False
      Anchors = [akTop]
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
      Left = 42
      Top = 22
      Width = 35
      Height = 22
      TabStop = False
      Anchors = [akTop]
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
    object RadioGroup2: TRadioGroup
      Left = 139
      Top = 17
      Width = 130
      Height = 33
      Anchors = [akTop]
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1575#1605#1585#1608#1586
        #1594#1610#1585#1607)
      TabOrder = 0
      TabStop = True
      OnClick = RadioGroup2Click
    end
  end
  object dsshakhs: TDataSource
    DataSet = DataModule1.ADOQuery3
    Left = 872
    Top = 168
  end
  object Dskharidha: TDataSource
    DataSet = DataModule_gozaresh_tarkibi.ADO_fac_roz_show
    Left = 376
    Top = 360
  end
  object DataSource1: TDataSource
    DataSet = DataM_final.ADOQ_t_sh_facrorhaye_forosh
    Left = 352
    Top = 176
  end
end
