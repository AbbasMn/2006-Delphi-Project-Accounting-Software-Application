object Frm_mmoshakhasat_anjirestan: TFrm_mmoshakhasat_anjirestan
  Left = 555
  Top = 111
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1605#1588#1582#1589#1575#1578' '#1575#1588#1582#1575#1589
  ClientHeight = 277
  ClientWidth = 620
  Color = clBtnFace
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
    620
    277)
  PixelsPerInch = 96
  TextHeight = 13
  object L_code: TLabel
    Left = 416
    Top = 0
    Width = 36
    Height = 13
    Caption = 'L_code'
    Visible = False
  end
  object lname: TLabel
    Left = -46
    Top = 11
    Width = 49
    Height = 20
    Alignment = taCenter
    Anchors = [akTop, akRight]
    AutoSize = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label19: TLabel
    Left = 85
    Top = 9
    Width = 138
    Height = 13
    Caption = #1605#1608#1575#1585#1583' '#1587#1578#1575#1585#1607' '#1583#1575#1585' '#1576#1575#1610#1583' '#1608#1575#1585#1583' '#1588#1608#1606#1583'.'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l_review: TLabel
    Left = -1
    Top = -2
    Width = 39
    Height = 13
    Caption = 'l_review'
    Visible = False
  end
  object GroupBox2: TGroupBox
    Left = 314
    Top = 4
    Width = 309
    Height = 269
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1580#1587#1578#1580#1608#1610' '#1588#1582#1589'  '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    TabStop = True
    DesignSize = (
      309
      269)
    object Label4: TLabel
      Left = 230
      Top = 27
      Width = 67
      Height = 13
      Caption = #1606#1575#1605' '#1575#1606#1580#1610#1585#1587#1578#1575#1606':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 82
      Top = 27
      Width = 18
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1705#1583' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object esearch: TEdit
      Left = 118
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
      TabOrder = 0
      OnChange = esearchChange
    end
    object suiDBGrid2: TsuiDBGrid
      Left = 4
      Top = 54
      Width = 301
      Height = 211
      TabStop = False
      Anchors = []
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
      TabOrder = 2
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -12
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
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'shahrforoshande'
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605' '#1588#1582#1589
          Width = 205
          Visible = True
        end>
    end
    object e_cod: TEdit
      Left = 21
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
      TabOrder = 1
      OnChange = e_codChange
      OnKeyPress = e_codKeyPress
    end
  end
  object G_shakhs: TGroupBox
    Left = 2
    Top = 23
    Width = 305
    Height = 250
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 1
    DesignSize = (
      305
      250)
    object Label1: TLabel
      Left = 219
      Top = 74
      Width = 76
      Height = 13
      Caption = '*'#1606#1575#1605' '#1575#1606#1580#1610#1585#1587#1578#1575#1606' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 218
      Top = 45
      Width = 78
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = '*'#1705#1583'                   :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label18: TLabel
      Left = 219
      Top = 100
      Width = 77
      Height = 13
      Caption = '*'#1578#1593#1583#1575#1583' '#1583#1585#1582#1578'     :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 219
      Top = 145
      Width = 77
      Height = 13
      Caption = #1570#1583#1585#1587'                :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 217
      Top = 12
      Width = 79
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = '*'#1606#1608#1593'                  :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object E_name: TsuiEdit
      Left = 7
      Top = 71
      Width = 193
      Height = 19
      UIStyle = WinXP
      BorderColor = 6842472
      BiDiMode = bdRightToLeft
      Color = clMenu
      Ctl3D = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object E_code: TsuiEdit
      Left = 7
      Top = 42
      Width = 193
      Height = 19
      UIStyle = WinXP
      BorderColor = 6842472
      BiDiMode = bdRightToLeft
      Color = clMenu
      Ctl3D = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object eadress: TTeMemo
      Left = 8
      Top = 125
      Width = 192
      Height = 94
      Alignment = taRightJustify
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 200
      ParentBiDiMode = False
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 3
      ThemeObject = 'default'
    end
    object etelephon: TsuiEdit
      Left = 8
      Top = 100
      Width = 193
      Height = 19
      UIStyle = WinXP
      BorderColor = 6842472
      BiDiMode = bdRightToLeft
      Color = clMenu
      Ctl3D = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 12
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnKeyPress = EtelephonKeyPress
    end
    object suiButton2: TsuiButton
      Left = 8
      Top = 223
      Width = 45
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1578#1575#1610#1610#1583
      AutoSize = False
      ParentFont = False
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
    object ComboBox1: TComboBox
      Left = 7
      Top = 12
      Width = 192
      Height = 21
      Style = csDropDownList
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      Text = #1575#1606#1580#1610#1585#1587#1578#1575#1606
      Items.Strings = (
        #1575#1606#1580#1610#1585#1587#1578#1575#1606)
    end
  end
  object dsshakhs: TDataSource
    DataSet = DataModule1.ADOQuery3
    Left = 488
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOQuery3
    Left = 360
    Top = 184
  end
end
