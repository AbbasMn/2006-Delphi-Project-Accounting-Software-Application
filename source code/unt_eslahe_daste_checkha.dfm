object frm_eslahe_daste_checkha: Tfrm_eslahe_daste_checkha
  Left = 147
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1608#1610#1585#1575#1610#1588' '#1605#1588#1582#1589#1575#1578' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '
  ClientHeight = 496
  ClientWidth = 638
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 375
    Top = 3
    Width = 262
    Height = 208
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 0
    TabStop = True
    DesignSize = (
      262
      208)
    object Label4: TLabel
      Left = 178
      Top = 21
      Width = 75
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608#1610' '#1576#1575#1606#1705' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object suiDBGrid2: TsuiDBGrid
      Left = 4
      Top = 45
      Width = 254
      Height = 157
      TabStop = False
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
          Title.Caption = #1576#1575#1606#1705
          Width = 150
          Visible = True
        end>
    end
    object esearch: TEdit
      Left = 73
      Top = 16
      Width = 90
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
  end
  object DBGarshivforosh: TDBGrid
    Left = 1
    Top = 6
    Width = 373
    Height = 484
    TabStop = False
    BiDiMode = bdRightToLeft
    Color = clBtnFace
    DataSource = DataSource3
    FixedColor = clMenu
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentBiDiMode = False
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
        FieldName = 'bank'
        Title.Alignment = taCenter
        Title.Caption = ' '#1576#1575#1606#1705
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shobe'
        Title.Alignment = taCenter
        Title.Caption = #1588#1593#1576#1607
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sh_hesab'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        Visible = True
      end>
  end
  object G_sh_hesab: TGroupBox
    Left = 377
    Top = 218
    Width = 260
    Height = 246
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1588#1582#1589#1575#1578'  '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      260
      246)
    object Label2: TLabel
      Left = 170
      Top = 196
      Width = 77
      Height = 13
      Caption = '*'#1588#1605#1575#1585#1607' '#1581#1587#1575#1576' :'
    end
    object Label6: TLabel
      Left = 172
      Top = 111
      Width = 74
      Height = 13
      Caption = '*'#1606#1575#1605' '#1588#1593#1576#1607'       :'
    end
    object Label1: TLabel
      Left = 172
      Top = 27
      Width = 76
      Height = 13
      Caption = '*'#1606#1575#1605' '#1576#1575#1606#1705'          :'
    end
    object lanbarname: TLabel
      Left = 4
      Top = 9
      Width = 69
      Height = 20
      Alignment = taCenter
      Anchors = [akTop]
      AutoSize = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object L_shobe: TLabel
      Left = 12
      Top = 81
      Width = 69
      Height = 20
      Alignment = taCenter
      Anchors = [akTop]
      AutoSize = False
      Caption = 'L_shobe'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object L_sh_hesab: TLabel
      Left = 116
      Top = 81
      Width = 69
      Height = 20
      Alignment = taCenter
      Anchors = [akTop]
      AutoSize = False
      Caption = 'L_sh_hesab'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object L_check_nam: TLabel
      Left = 28
      Top = 149
      Width = 69
      Height = 20
      Alignment = taCenter
      Anchors = [akTop]
      AutoSize = False
      Caption = 'L_sh_hesab'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object E_shomare_hesab_sh_hesab: TEdit
      Left = 11
      Top = 191
      Width = 145
      Height = 26
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 2
    end
    object E_shobe_sh_hesab: TEdit
      Left = 11
      Top = 106
      Width = 145
      Height = 26
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 1
    end
    object E_bank_sh_hesab: TEdit
      Left = 11
      Top = 22
      Width = 145
      Height = 26
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      TabOrder = 0
    end
  end
  object suiButton7: TsuiButton
    Left = 426
    Top = 468
    Width = 45
    Height = 25
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
    TabOrder = 4
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
    Left = 379
    Top = 468
    Width = 45
    Height = 25
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
    TabOrder = 3
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton6Click
    ResHandle = 0
  end
  object DataSource3: TDataSource
    DataSet = Dmlistha.ADOQuery_shomare_hesabe_banki
    Left = 192
    Top = 168
  end
  object DataSource2: TDataSource
    DataSet = Dmlistha.ADOQuery_bank2
    Left = 576
    Top = 104
  end
end
