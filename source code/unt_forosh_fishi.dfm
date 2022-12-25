object frm_forosh_fishi: Tfrm_forosh_fishi
  Left = 6
  Top = 23
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1608#1588' '#1587#1585#1610#1593
  ClientHeight = 729
  ClientWidth = 1260
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    1260
    729)
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 319
    Top = 426
    Width = 48
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1576#1587#1578#1575#1606#1705#1575#1585'  :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object L_bestankar: TLabel
    Left = 29
    Top = 422
    Width = 267
    Height = 21
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object L_bedehkae: TLabel
    Left = 30
    Top = 394
    Width = 265
    Height = 21
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 319
    Top = 398
    Width = 48
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1576#1583#1607' '#1705#1575#1585'     :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object LMDSpeedButton_621: TLMDSpeedButton
    Left = 153
    Top = 323
    Width = 104
    Height = 22
    Caption = #1662#1610#1588' '#1601#1575#1705#1578#1608#1585
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LMDSpeedButton_621Click
    Anchors = [akTop]
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object g_kharidar: TGroupBox
    Left = 988
    Top = 6
    Width = 272
    Height = 723
    Anchors = [akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1582#1585#1610#1583#1575#1585'   '
    ParentBiDiMode = False
    TabOrder = 0
    TabStop = True
    DesignSize = (
      272
      723)
    object Label4: TLabel
      Left = 213
      Top = 23
      Width = 51
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = #1606#1575#1605' '#1588#1582#1589':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 59
      Top = 23
      Width = 49
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Caption = #1705#1583' '#1588#1582#1589':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object suiDBGrid1: TsuiDBGrid
      Left = 4
      Top = 54
      Width = 264
      Height = 665
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
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = suiDBGrid1KeyPress
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
          Width = 300
          Visible = True
        end>
    end
    object E_name: TEdit
      Left = 113
      Top = 18
      Width = 97
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnChange = E_nameChange
      OnKeyPress = E_nameKeyPress
    end
    object e_cod: TEdit
      Left = 8
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
      MaxLength = 30
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnChange = e_codChange
      OnKeyPress = e_codKeyPress
    end
  end
  object GroupBox1: TGroupBox
    Left = 409
    Top = 6
    Width = 577
    Height = 723
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1580#1606#1587' '
    ParentBiDiMode = False
    TabOrder = 1
    TabStop = True
    DesignSize = (
      577
      723)
    object Label8: TLabel
      Left = 20
      Top = 566
      Width = 265
      Height = 20
      Alignment = taCenter
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = #1670#1604#1608' ...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      Visible = False
    end
    object Label13: TLabel
      Left = -4
      Top = 606
      Width = 265
      Height = 23
      Alignment = taCenter
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = #1582#1608#1585#1575#1705' ...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      Visible = False
    end
    object Label14: TLabel
      Left = 36
      Top = 665
      Width = 265
      Height = 20
      Alignment = taCenter
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = #1594#1610#1585#1607' ...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      Visible = False
    end
    object l_barcod_khan: TLabel
      Left = 193
      Top = 7
      Width = 186
      Height = 42
      Alignment = taCenter
      Anchors = [akTop]
      Caption = #1576#1575#1585#1705#1583' '#1582#1608#1575#1606' '#1601#1593#1575#1604' '#1575#1587#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'B Titr'
      Font.Style = []
      ParentFont = False
    end
    object LMDSpeedButton_6067776621: TLMDSpeedButton
      Left = 431
      Top = 27
      Width = 138
      Height = 22
      Caption = #1608#1610#1585#1575#1610#1588' '#1602#1610#1605#1578' '#1601#1585#1608#1588' '#1580#1586#1574#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_6067776621Click
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_6021: TLMDSpeedButton
      Left = 8
      Top = 27
      Width = 138
      Height = 22
      Caption = #1608#1610#1585#1575#1610#1588' '#1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1608#1588' '#1580#1606#1587
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_6021Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_6440621: TLMDSpeedButton
      Left = 491
      Top = 99
      Width = 78
      Height = 22
      Caption = #1575#1580#1606#1575#1587' '#1607#1585' '#1605#1705#1575#1606
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_6440621Click
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_60621: TLMDSpeedButton
      Left = 8
      Top = 99
      Width = 78
      Height = 22
      Caption = #1605#1575#1588#1610#1606' '#1581#1587#1575#1576
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_60621Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_6066621: TLMDSpeedButton
      Left = 431
      Top = 61
      Width = 138
      Height = 22
      Caption = #1608#1610#1585#1575#1610#1588' '#1602#1610#1605#1578' '#1601#1585#1608#1588' '#1705#1604#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_6066621Click
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object suiDBGrid5: TsuiDBGrid
      Left = -1
      Top = 656
      Width = 329
      Height = 19
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = True
      DataSource = DataSource7
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
      Visible = False
      OnKeyPress = suiDBGrid5KeyPress
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
          Title.Caption = #1606#1575#1605' '#1594#1584#1575' ('#1594#1610#1585#1607').'
          Width = 88
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'calacod'
          Title.Alignment = taCenter
          Title.Caption = #1705#1583
          Width = 46
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'tedadanbar'
          Title.Alignment = taCenter
          Title.Caption = #1578#1593#1583#1575#1583' '#1605#1608#1580#1608#1583
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'geymatforosh'
          Title.Alignment = taCenter
          Title.Caption = #1602#1610#1605#1578
          Width = 111
          Visible = True
        end>
    end
    object suiDBGrid6: TsuiDBGrid
      Left = 15
      Top = 624
      Width = 329
      Height = 64
      Anchors = [akLeft, akTop, akBottom]
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = True
      DataSource = DataSource8
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
      Visible = False
      OnKeyPress = suiDBGrid6KeyPress
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
          Title.Caption = #1606#1575#1605' '#1594#1584#1575' ('#1594#1610#1585#1607').'
          Width = 88
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'calacod'
          Title.Alignment = taCenter
          Title.Caption = #1705#1583
          Width = 46
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'tedadanbar'
          Title.Alignment = taCenter
          Title.Caption = #1578#1593#1583#1575#1583' '#1605#1608#1580#1608#1583
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'geymatforosh'
          Title.Alignment = taCenter
          Title.Caption = #1602#1610#1605#1578
          Width = 111
          Visible = True
        end>
    end
    object suiDBGrid2: TsuiDBGrid
      Left = 3
      Top = 130
      Width = 570
      Height = 588
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
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = suiDBGrid2KeyPress
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
          Width = 110
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'geymatforosh'
          Title.Alignment = taCenter
          Title.Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588' '#1580#1586#1574#1610
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'geymatforosh_koli'
          Title.Alignment = taCenter
          Title.Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588' '#1705#1604#1610
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'tedadanbar'
          Title.Alignment = taCenter
          Title.Caption = #1578#1593#1583#1575#1583' '#1605#1608#1580#1608#1583
          Width = 72
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'calacod'
          Title.Alignment = taCenter
          Title.Caption = #1705#1583
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tedad_koli'
          Title.Alignment = taCenter
          Title.Caption = #1578#1593#1583#1575#1583' '#1705#1604#1610
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tedad_jozi_da_koli'
          Title.Alignment = taCenter
          Title.Caption = #1580#1586#1610' '#1583#1585' '#1705#1604#1610
          Width = 59
          Visible = True
        end>
    end
    object E_barcod_khan: TEdit
      Left = 192
      Top = 47
      Width = 193
      Height = 24
      Anchors = [akTop]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = E_barcod_khanChange
      OnEnter = E_barcod_khanEnter
      OnExit = E_barcod_khanExit
      OnKeyPress = E_barcod_khanKeyPress
    end
    object rad_ajnas: TRadioGroup
      Left = 161
      Top = 74
      Width = 254
      Height = 51
      Anchors = [akTop]
      Columns = 2
      Items.Strings = (
        #1607#1605#1607' '#1575#1580#1606#1575#1587
        #1575#1580#1606#1575#1587' '#1588#1585#1705#1578' '
        #1575#1580#1606#1575#1587' '#1605#1608#1580#1608#1583
        #1575#1580#1606#1575#1587' '#1594#1610#1585' '#1605#1608#1580#1608#1583)
      TabOrder = 4
      OnClick = rad_ajnasClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 1
    Top = 6
    Width = 407
    Height = 315
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1580#1606#1575#1587' '#1608#1575#1585#1583' '#1588#1583#1607' '#1576#1585#1575#1610' '#1601#1575#1705#1578#1608#1585'  '
    ParentBiDiMode = False
    TabOrder = 2
    TabStop = True
    DesignSize = (
      407
      315)
    object LMDSpeedButton_62661: TLMDSpeedButton
      Left = 34
      Top = 107
      Width = 104
      Height = 22
      Caption = #1581#1584#1601' '#1605#1608#1585#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_62661Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton11: TLMDSpeedButton
      Left = 4
      Top = 18
      Width = 90
      Height = 22
      Caption = #1578#1582#1601#1610#1601' '#1601#1575#1705#1578#1608#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton11Click
      Anchors = [akTop]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object DBText_arzesh_kol: TDBText
      Left = 165
      Top = 43
      Width = 140
      Height = 25
      Alignment = taCenter
      Anchors = [akTop, akRight]
      DataField = 'kol_'
      DataSource = DataSource4
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 307
      Top = 49
      Width = 96
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1605#1593' '#1705#1604' '#1575#1585#1586#1588' '#1601#1575#1705#1578#1608#1585':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 67
      Top = 49
      Width = 82
      Height = 13
      Caption = #1578#1593#1583#1575#1583' '#1575#1602#1604#1575#1605' '#1601#1575#1705#1578#1608#1585':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 5
      Top = 51
      Width = 61
      Height = 20
      Alignment = taCenter
      DataField = 'galam_'
      DataSource = DataSource4
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 67
      Top = 83
      Width = 90
      Height = 13
      Caption = #1583#1585#1589#1583' '#1578#1582#1601#1610#1601' '#1601#1575#1705#1578#1608#1585':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_darsad_takhfif: TLabel
      Left = 5
      Top = 78
      Width = 61
      Height = 22
      Alignment = taCenter
      AutoSize = False
      BiDiMode = bdRightToLeftReadingOnly
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 306
      Top = 83
      Width = 98
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601' '#1601#1575#1705#1578#1608#1585'    :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_mablagh_takhfif: TLabel
      Left = 173
      Top = 78
      Width = 132
      Height = 22
      Alignment = taCenter
      Anchors = [akTop, akRight]
      AutoSize = False
      BiDiMode = bdRightToLeftReadingOnly
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object LMDSpeedButton_3: TLMDSpeedButton
      Left = 290
      Top = 18
      Width = 110
      Height = 22
      Caption = #1575#1589#1604#1575#1581' '#1601#1575#1705#1578#1608#1585#1607#1575#1610' '#1601#1585#1608#1588
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_3Click
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_: TLMDSpeedButton
      Left = 194
      Top = 18
      Width = 90
      Height = 22
      Caption = #1589#1583#1608#1585' '#1601#1575#1705#1578#1608#1585' '#1575#1604#1605#1579#1606#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_Click
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_602122: TLMDSpeedButton
      Left = 274
      Top = 107
      Width = 104
      Height = 22
      Caption = #1608#1610#1585#1575#1610#1588' '#1578#1593#1583#1575#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_602122Click
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object suiDBGrid3: TsuiDBGrid
      Left = 3
      Top = 134
      Width = 400
      Height = 177
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
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = suiDBGrid3KeyPress
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
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tedad_koli'
          Title.Alignment = taCenter
          Title.Caption = #1578#1593#1583#1575#1583' '#1705#1604#1610
          Width = 58
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'tedad_kol'
          Title.Alignment = taCenter
          Title.Caption = #1578#1593#1583#1575#1583
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vahed_jozei'
          Title.Alignment = taCenter
          Title.Caption = #1608#1575#1581#1583
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'geymat_vahed'
          Title.Alignment = taCenter
          Title.Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
          Width = 56
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'geymat_jens'
          Title.Alignment = taCenter
          Title.Caption = #1602#1610#1605#1578' '#1705#1604' '
          Width = 62
          Visible = True
        end>
    end
    object suiButton1: TsuiButton
      Left = 99
      Top = 18
      Width = 90
      Height = 22
      Anchors = [akTop]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1601#1575#1705#1578#1608#1585
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
      OnClick = suiButton1Click
      OnKeyPress = suiButton1KeyPress
      ResHandle = 0
    end
    object CheckBox2: TCheckBox
      Left = 168
      Top = 110
      Width = 70
      Height = 17
      Caption = #1589#1583#1608#1585' '#1601#1610#1588
      TabOrder = 1
      OnKeyPress = CheckBox2KeyPress
    end
  end
  object GroupBox3: TGroupBox
    Left = 2
    Top = 346
    Width = 407
    Height = 53
    BiDiMode = bdRightToLeft
    Caption = '  '#1578#1575#1585#1610#1582' '#1601#1585#1608#1588'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      407
      53)
    object suiButton4: TsuiButton
      Left = 168
      Top = 20
      Width = 38
      Height = 22
      Anchors = [akTop, akRight]
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
      OnKeyPress = suiButton4KeyPress
      ResHandle = 0
    end
    object MaskEditforooz: TMaskEdit
      Left = 131
      Top = 20
      Width = 27
      Height = 22
      TabStop = False
      Anchors = [akTop, akRight]
      Enabled = False
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
      OnChange = MaskEditforoozChange
      OnKeyPress = MaskEditforoozKeyPress
    end
    object MaskEditfomah: TMaskEdit
      Left = 105
      Top = 20
      Width = 26
      Height = 22
      TabStop = False
      Anchors = [akTop, akRight]
      Enabled = False
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
      OnKeyPress = MaskEditfomahKeyPress
    end
    object MaskEditfosal: TMaskEdit
      Left = 69
      Top = 20
      Width = 35
      Height = 22
      TabStop = False
      Anchors = [akTop, akRight]
      Enabled = False
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
      OnKeyPress = MaskEditfosalKeyPress
    end
    object RadioGroup1: TRadioGroup
      Left = 240
      Top = 15
      Width = 130
      Height = 33
      Anchors = [akTop, akRight]
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
  object suiButton5222: TsuiButton
    Left = 52
    Top = 702
    Width = 42
    Height = 25
    ParentColor = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ShowHint = False
    Caption = #1582#1585#1608#1580
    AutoSize = False
    ParentShowHint = False
    ParentFont = False
    UIStyle = WinXP
    TabOrder = 6
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton5222Click
    OnKeyPress = suiButton5222KeyPress
    ResHandle = 0
  end
  object suiButton6: TsuiButton
    Left = 9
    Top = 702
    Width = 42
    Height = 25
    ParentColor = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1578#1575#1610#1610#1583
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
    OnClick = suiButton6Click
    OnKeyPress = suiButton6KeyPress
    ResHandle = 0
  end
  object GroupBox4: TGroupBox
    Left = 2
    Top = 456
    Width = 407
    Height = 240
    BiDiMode = bdRightToLeft
    Caption = '  '#1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1604#1610' '#1601#1585#1608#1588' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    TabStop = True
    DesignSize = (
      407
      240)
    object Label9: TLabel
      Left = 274
      Top = 20
      Width = 125
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1583#1585#1610#1575#1601#1578'  '#1606#1602#1583#1610'                    :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_taeed_forosh: TLabel
      Left = 374
      Top = 37
      Width = 6
      Height = 13
      Caption = 'a'
      Visible = False
    end
    object Label11: TLabel
      Left = 274
      Top = 53
      Width = 126
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1608#1585#1608#1583' '#1583#1585#1610#1575#1601#1578' '#1606#1602#1583' '#1576#1607' '#1589#1606#1583#1608#1602' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 19
      Top = 31
      Width = 88
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1705#1575#1578' '#1575#1593#1578#1576#1575#1585#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Edit4: TEdit
      Left = 132
      Top = 15
      Width = 133
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 0
      OnChange = Edit4Change
      OnExit = Edit4Exit
      OnKeyPress = Edit4KeyPress
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 132
      Top = 49
      Width = 133
      Height = 21
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'sandog'
      ListField = 'sandog'
      ListSource = DataSource5
      ParentFont = False
      TabOrder = 1
      OnKeyPress = DBLookupComboBox3KeyPress
    end
    object GroupBox5: TGroupBox
      Left = 3
      Top = 73
      Width = 400
      Height = 163
      Caption = '  '#1583#1585#1610#1575#1601#1578' '#1576#1607' '#1589#1608#1585#1578' '#1670#1705'   '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      DesignSize = (
        400
        163)
      object DBText2: TDBText
        Left = 299
        Top = 19
        Width = 51
        Height = 17
        DataField = 'id'
        DataSource = DataSource2
        Visible = False
      end
      object suiDBGrid4: TsuiDBGrid
        Left = 4
        Top = 46
        Width = 391
        Height = 113
        Anchors = [akLeft, akTop, akRight, akBottom]
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = True
        DataSource = DataSource6
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
        OnKeyPress = suiDBGrid4KeyPress
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
            FieldName = 'sh_hesab'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
            Width = 95
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
            FieldName = 'sh_check'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1670#1705
            Width = 87
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'tarikh'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1670#1705
            Width = 86
            Visible = True
          end>
      end
      object b: TsuiButton
        Left = 213
        Top = 17
        Width = 78
        Height = 22
        Anchors = [akTop]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = #1575#1606#1578#1582#1575#1576' '#1670#1705
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
        OnClick = bClick
        OnKeyPress = bKeyPress
        ResHandle = 0
      end
      object Edit5: TEdit
        Left = 8
        Top = 16
        Width = 73
        Height = 21
        TabStop = False
        TabOrder = 3
        Text = 'Edit5'
        Visible = False
      end
      object suiButton12323: TsuiButton
        Left = 110
        Top = 17
        Width = 78
        Height = 22
        Anchors = [akTop]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = #1581#1584#1601' '#1670#1705
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
        OnClick = suiButton12323Click
        OnKeyPress = suiButton12323KeyPress
        ResHandle = 0
      end
    end
    object CheckBox1: TCheckBox
      Left = 2
      Top = 11
      Width = 123
      Height = 17
      Caption = #1662#1585#1583#1575#1582#1578' '#1576#1575' '#1705#1575#1585#1578' '#1575#1593#1578#1576#1575#1585#1610
      TabOrder = 2
      Visible = False
      OnClick = CheckBox1Click
    end
    object E_sh_kart: TEdit
      Left = 3
      Top = 48
      Width = 120
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
  end
  object RadioGroup2: TRadioGroup
    Left = 341
    Top = 673
    Width = 44
    Height = 32
    BiDiMode = bdRightToLeft
    Columns = 2
    Items.Strings = (
      #1585#1587#1578#1608#1585#1575#1606
      #1576#1610#1585#1608#1606' '#1576#1585)
    ParentBiDiMode = False
    TabOrder = 7
    Visible = False
    OnClick = RadioGroup2Click
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOQuery3
    Left = 852
    Top = 177
  end
  object DataSource2: TDataSource
    DataSet = Dmanbarexite.ADOanbarcala
    Left = 544
    Top = 200
  end
  object DataSource3: TDataSource
    DataSet = DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh
    Left = 256
    Top = 216
  end
  object DataSource4: TDataSource
    DataSet = DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymat
    Left = 216
    Top = 64
  end
  object DataSource5: TDataSource
    DataSet = DataModule_gozaresh_tarkibi.ADOQuery_sandog
    Left = 280
    Top = 384
  end
  object DataSource6: TDataSource
    DataSet = DataM_final.ADOQ_t_Temp_pardakht_check_forosh
    Left = 179
    Top = 542
  end
  object DataSource7: TDataSource
    Left = 424
    Top = 648
  end
  object DataSource8: TDataSource
    Left = 480
    Top = 664
  end
  object ADOQ_sh_fish: TADOQuery
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_sh_fish')
    Left = 344
    Top = 560
    object ADOQ_sh_fishsh_fish: TFloatField
      FieldName = 'sh_fish'
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 692
    Top = 30
  end
  object LMDMessageHint1: TLMDMessageHint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 958
    Top = 198
  end
  object suiMSNPopForm1: TsuiMSNPopForm
    AnimateTime = 400
    StayTime = 5000
    PositionX = 100
    PositionY = 100
    AutoPosition = True
    ClickHide = True
    Title = #1605#1588#1582#1589#1575#1578' '#1605#1575#1604#1610' '#1588#1582#1589
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -12
    TitleFont.Name = 'Nazanin'
    TitleFont.Style = [fsBold]
    MessageFont.Charset = DEFAULT_CHARSET
    MessageFont.Color = clNavy
    MessageFont.Height = -19
    MessageFont.Name = 'Nazanin'
    MessageFont.Style = [fsBold]
    Left = 966
    Top = 134
  end
end
