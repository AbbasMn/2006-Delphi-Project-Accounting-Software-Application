object frm_daste_check_jadid2: Tfrm_daste_check_jadid2
  Left = 458
  Top = 244
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1583#1587#1578#1607' '#1670#1705' '#1580#1583#1610#1583
  ClientHeight = 319
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox_shomare_hesab: TGroupBox
    Left = 5
    Top = 7
    Width = 333
    Height = 202
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1581#1587#1575#1576' '#1576#1575#1606#1705#1610'  '
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
      333
      202)
    object Label8: TLabel
      Left = 170
      Top = 26
      Width = 130
      Height = 13
      Caption = '*'#1576#1575#1606#1705' '#1588#1593#1576#1607' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576' :'
    end
    object DBGarshivforosh: TDBGrid
      Left = 5
      Top = 56
      Width = 324
      Height = 142
      Color = clBtnFace
      DataSource = DataSource2
      FixedColor = clMenu
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'bank_shobe_sh_hesab'
          Title.Alignment = taCenter
          Title.Caption = #1576#1575#1606#1705' '#1588#1593#1576#1607' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          Width = 300
          Visible = True
        end>
    end
    object esearch: TEdit
      Left = 33
      Top = 21
      Width = 130
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
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
  object GroupBox_geyre: TGroupBox
    Left = 6
    Top = 211
    Width = 332
    Height = 76
    BiDiMode = bdRightToLeft
    Caption = '  '#1588#1605#1575#1585#1607' '#1583#1587#1578#1607' '#1670#1705'   '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 217
      Top = 23
      Width = 68
      Height = 13
      Caption = '*'#1575#1586' '#1588#1605#1575#1585#1607'      :'
    end
    object Label3: TLabel
      Left = 218
      Top = 55
      Width = 67
      Height = 13
      Caption = '*'#1578#1575' '#1588#1605#1575#1585#1607'      :'
    end
    object E_down: TEdit
      Left = 46
      Top = 19
      Width = 130
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 0
      OnKeyPress = E_downKeyPress
    end
    object E_up: TEdit
      Left = 46
      Top = 48
      Width = 130
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 1
      OnKeyPress = E_upKeyPress
    end
  end
  object suiButton7: TsuiButton
    Left = 53
    Top = 294
    Width = 42
    Height = 22
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1582#1585#1608#1580
    AutoSize = False
    ParentFont = False
    FileTheme = frm_main.suiFileTheme1
    UIStyle = WinXP
    TabOrder = 3
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton7Click
    ResHandle = 0
  end
  object suiButton6: TsuiButton
    Left = 6
    Top = 294
    Width = 42
    Height = 22
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1578#1575#1610#1610#1583
    AutoSize = False
    ParentFont = False
    FileTheme = frm_main.suiFileTheme1
    UIStyle = WinXP
    TabOrder = 2
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton6Click
    ResHandle = 0
  end
  object DataSource2: TDataSource
    DataSet = Dmlistha.ADOQuery_shomare_hesabe_banki
    Left = 144
    Top = 96
  end
end
