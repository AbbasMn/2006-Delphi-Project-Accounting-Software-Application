object Frm_moshakhasat_anbarha: TFrm_moshakhasat_anbarha
  Left = 89
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1605#1588#1582#1589#1575#1578' '#1575#1606#1576#1575#1585' '#1607#1575
  ClientHeight = 503
  ClientWidth = 737
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
    737
    503)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 444
    Top = 232
    Width = 291
    Height = 268
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1608#1610#1585#1575#1610#1588' '#1605#1588#1582#1589#1575#1578' '#1575#1606#1576#1575#1585' '#1575#1606#1578#1582#1575#1576#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      291
      268)
    object lanbarname: TLabel
      Left = 17
      Top = 9
      Width = 74
      Height = 11
      Alignment = taCenter
      Anchors = [akRight]
      AutoSize = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label11: TLabel
      Left = 217
      Top = 24
      Width = 70
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1575#1606#1576#1575#1585'           :'
    end
    object Label13: TLabel
      Left = 217
      Top = 56
      Width = 70
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606'    :'
    end
    object l: TLabel
      Left = 213
      Top = 87
      Width = 74
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1587#1608#1608#1604' '#1575#1606#1576#1575#1585'    : '
    end
    object Label1: TLabel
      Left = 217
      Top = 116
      Width = 70
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1570#1583#1585#1587' '#1575#1606#1576#1575#1585'       :'
    end
    object suiButton1: TsuiButton
      Left = 5
      Top = 241
      Width = 66
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1575#1589#1604#1575#1581' '#1575#1606#1576#1575#1585
      AutoSize = False
      ParentFont = False
      FileTheme = frm_main.suiFileTheme1
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
    object Eadress: TTeMemo
      Left = 5
      Top = 125
      Width = 208
      Height = 111
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 50
      ParentBiDiMode = False
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 1
      ThemeObject = 'default'
    end
    object Emasool: TEdit
      Left = 5
      Top = 82
      Width = 193
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      TabOrder = 4
    end
    object Etelephon: TEdit
      Left = 5
      Top = 51
      Width = 193
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      TabOrder = 5
      OnKeyPress = EtelephonKeyPress
    end
    object E_name: TEdit
      Left = 5
      Top = 19
      Width = 193
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      TabOrder = 6
    end
    object suiButton2: TsuiButton
      Left = 76
      Top = 241
      Width = 66
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1581#1584#1601' '#1575#1606#1576#1575#1585
      AutoSize = False
      ParentFont = False
      FileTheme = frm_main.suiFileTheme1
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
  end
  object GroupBox2: TGroupBox
    Left = 444
    Top = 2
    Width = 290
    Height = 223
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 0
    DesignSize = (
      290
      223)
    object Label4: TLabel
      Left = 194
      Top = 20
      Width = 87
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608#1610' '#1575#1606#1576#1575#1585'      :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object esearch: TEdit
      Left = 46
      Top = 15
      Width = 144
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
      Top = 48
      Width = 281
      Height = 171
      TabStop = False
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
          FieldName = 'name'
          Title.Alignment = taCenter
          Title.Caption = #1575#1606#1576#1575#1585
          Width = 220
          Visible = True
        end>
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 2
    Top = 7
    Width = 441
    Height = 492
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
        FieldName = 'anbarname'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1575#1606#1576#1575#1585
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calaname'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1580#1606#1587
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'geymatforosh'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1580#1586#1574#1610
        Width = 80
        Visible = True
      end>
  end
  object Datasanbarname: TDataSource
    DataSet = Dmanbarexite.ADOanbarname
    Left = 528
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = Dmlistha.ADOlistanbarforosh
    Left = 312
    Top = 152
  end
end
