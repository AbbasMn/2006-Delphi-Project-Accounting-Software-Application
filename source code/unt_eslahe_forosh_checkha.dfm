object frm_eslahe_forosh_checkha: Tfrm_eslahe_forosh_checkha
  Left = 369
  Top = 96
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1589#1604#1575#1581' '#1605#1576#1604#1594' '#1583#1585#1610#1575#1601#1578#1610' '#1670#1705' '#1576#1585#1575#1610' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
  ClientHeight = 542
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    369
    542)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 78
    Top = 459
    Width = 213
    Height = 13
    Caption = #1605#1576#1604#1594' '#1576#1583#1607#1705#1575#1585' '#1608' '#1576#1587#1578#1575#1606#1705#1575#1585' '#1580#1583#1610#1583' '#1576#1585#1575#1610' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
    Font.Charset = ARABIC_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 294
    Top = 477
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
  object L_bedehkae: TLabel
    Left = 147
    Top = 476
    Width = 5
    Height = 24
    Alignment = taCenter
    Anchors = [akTop]
    BiDiMode = bdRightToLeft
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object L_bestankar: TLabel
    Left = 147
    Top = 498
    Width = 5
    Height = 24
    Alignment = taCenter
    Anchors = [akTop]
    BiDiMode = bdRightToLeft
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 294
    Top = 499
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
  object GroupBox1: TGroupBox
    Left = 3
    Top = 275
    Width = 363
    Height = 185
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1670#1705#1607#1575#1610' '#1579#1576#1578' '#1588#1583#1607' '#1576#1585#1575#1610' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585'  '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      363
      185)
    object DBText1: TDBText
      Left = 11
      Top = 19
      Width = 3
      Height = 17
      DataField = 'id'
      Visible = False
    end
    object a: TsuiButton
      Left = 102
      Top = 17
      Width = 54
      Height = 22
      Anchors = [akTop]
      Caption = #1581#1584#1601' '#1670#1705
      AutoSize = False
      UIStyle = WinXP
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = aClick
      ResHandle = 0
    end
    object suiDBGrid3: TsuiDBGrid
      Left = 2
      Top = 41
      Width = 358
      Height = 140
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
          FieldName = 'sh_hesab'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          Width = 75
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'mablagh_check'
          Title.Alignment = taCenter
          Title.Caption = #1605#1576#1604#1594' '#1670#1705
          Width = 59
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sh_check'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1670#1705
          Width = 69
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
          FieldName = 'pass'
          Title.Alignment = taCenter
          Title.Caption = #1662#1575#1587' '#1588#1583#1606
          Width = 53
          Visible = True
        end>
    end
    object b: TsuiButton
      Left = 209
      Top = 16
      Width = 52
      Height = 22
      Anchors = [akTop]
      Caption = #1670#1705' '#1580#1583#1610#1583
      AutoSize = False
      UIStyle = WinXP
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = bClick
      ResHandle = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 1
    Width = 359
    Height = 135
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1576#1575#1604#1594' '#1606#1602#1583' '#1608' '#1670#1705' '#1602#1576#1604' '#1575#1586' '#1575#1589#1604#1575#1581' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585'  '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object Label9: TLabel
      Left = 112
      Top = 15
      Width = 135
      Height = 13
      Caption = #1575#1585#1586#1588' '#1705#1604' '#1575#1580#1606#1575#1587' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText_t_jam: TDBText
      Left = 5
      Top = 30
      Width = 351
      Height = 15
      Alignment = taCenter
      DataField = 'kol_'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 94
      Top = 71
      Width = 172
      Height = 13
      Caption = #1605#1576#1604#1594' '#1606#1602#1583' '#1579#1576#1578' '#1588#1583#1607' '#1576#1585#1575#1610' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBT_mab_gabl: TDBText
      Left = 5
      Top = 86
      Width = 351
      Height = 20
      Alignment = taCenter
      DataField = 'nagd'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 92
      Top = 99
      Width = 175
      Height = 13
      Caption = #1605#1576#1604#1594' '#1670#1705' '#1579#1576#1578' '#1588#1583#1607' '#1576#1585#1575#1610' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBT_ch_ghabl: TDBText
      Left = 4
      Top = 115
      Width = 351
      Height = 16
      Alignment = taCenter
      DataField = 'check_kol'
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 5
      Top = 55
      Width = 351
      Height = 18
      Alignment = taCenter
      DataField = 'mablagh_takhfif'
      DataSource = DataSource4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 139
      Top = 43
      Width = 82
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601' '#1601#1575#1705#1578#1608#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 5
    Top = 136
    Width = 359
    Height = 137
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      359
      137)
    object Label6: TLabel
      Left = 198
      Top = 15
      Width = 130
      Height = 13
      Caption = '*'#1576#1575#1606#1705' '#1588#1593#1576#1607' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576' :'
    end
    object Label11: TLabel
      Left = 198
      Top = 39
      Width = 128
      Height = 13
      Caption = '*'#1588#1605#1575#1585#1607' '#1576#1585#1711#1607' '#1670#1705'               :'
    end
    object Label8: TLabel
      Left = 198
      Top = 64
      Width = 129
      Height = 13
      Caption = '*'#1605#1576#1604#1594' '#1670#1705'                          :'
    end
    object Label4: TLabel
      Left = 198
      Top = 89
      Width = 127
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '*'#1578#1575#1585#1610#1582'  '#1670#1705'                        :'
    end
    object Label7: TLabel
      Left = 147
      Top = 89
      Width = 4
      Height = 13
      Caption = '/'
    end
    object Label12: TLabel
      Left = 116
      Top = 89
      Width = 4
      Height = 13
      Caption = '/'
    end
    object L_id_check: TLabel
      Left = 289
      Top = 120
      Width = 52
      Height = 13
      Caption = 'L_id_check'
      Visible = False
    end
    object E_shomare_hesab: TEdit
      Left = 32
      Top = 10
      Width = 145
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 49
      ParentFont = False
      TabOrder = 0
    end
    object Edit_shomare: TEdit
      Left = 32
      Top = 35
      Width = 144
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 12
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Edit_shomareKeyPress
    end
    object Edit_mablagh: TEdit
      Left = 32
      Top = 61
      Width = 143
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit_mablaghKeyPress
    end
    object bb: TsuiButton
      Left = 151
      Top = 111
      Width = 56
      Height = 22
      Anchors = [akTop]
      Caption = #1584#1582#1610#1585#1607' '#1670#1705
      AutoSize = False
      UIStyle = WinXP
      TabOrder = 6
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = bbClick
      ResHandle = 0
    end
    object E_roz: TEdit
      Left = 153
      Top = 87
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
      OnExit = E_rozExit
      OnKeyPress = E_rozKeyPress
    end
    object E_mah: TEdit
      Left = 121
      Top = 87
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
      OnExit = E_mahExit
      OnKeyPress = E_mahKeyPress
    end
    object E_sal: TEdit
      Left = 72
      Top = 87
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
      OnExit = E_salExit
      OnKeyPress = E_mahKeyPress
    end
  end
  object Button1: TButton
    Left = 130
    Top = 517
    Width = 109
    Height = 22
    Caption = #1578#1575#1610#1610#1583' '#1608' '#1579#1576#1578' '#1575#1589#1604#1575#1581' '#1670#1705#1607#1575
    TabOrder = 3
    OnClick = Button1Click
  end
  object DataSource2: TDataSource
    DataSet = Dmlistha.ADOmohasebe_forosh
    Left = 19
    Top = 7
  end
  object DataSource1: TDataSource
    DataSet = DataM_final.ADOQ_t_pardakht_nagd_forosh
    Left = 11
    Top = 73
  end
  object DataSource3: TDataSource
    DataSet = DataM_final.ADOQ_T_jame_pardakht_check_forosh
    Left = 331
    Top = 105
  end
  object DataSource5: TDataSource
    DataSet = DataM_final.ADOQ_t_Temp_pardakht_check_forosh
    Left = 99
    Top = 350
  end
  object DataSource4: TDataSource
    DataSet = DataM_final.ADOQ_takhfife_forosh
    Left = 75
    Top = 47
  end
end
