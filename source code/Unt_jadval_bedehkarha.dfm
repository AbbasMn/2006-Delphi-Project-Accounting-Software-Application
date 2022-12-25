object Frm_jadval_bedehkarha: TFrm_jadval_bedehkarha
  Left = 260
  Top = 138
  BorderStyle = bsDialog
  Caption = #1582#1585#1610#1583#1575#1585#1575#1606' '#1576#1583#1607#1705#1575#1585
  ClientHeight = 523
  ClientWidth = 521
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
    521
    523)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 404
    Top = 72
    Width = 113
    Height = 13
    Anchors = [akTop, akRight]
    Caption = ':    '#1580#1605#1593' '#1605#1576#1604#1594' '#1607#1605#1607' '#1591#1604#1576#1607#1575' '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object DBText4: TDBText
    Left = 157
    Top = 67
    Width = 241
    Height = 22
    Alignment = taCenter
    BiDiMode = bdRightToLeft
    DataField = 'bedeh_kol'
    DataSource = DataSource2
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object suiGroupBox1: TsuiGroupBox
    Left = 15
    Top = -2
    Width = 502
    Height = 59
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
    TabStop = True
    BorderColor = 8355711
    DesignSize = (
      502
      59)
    object Label4: TLabel
      Left = 400
      Top = 25
      Width = 86
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1588#1582#1589'/'#1588#1585#1705#1578':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 220
      Top = 25
      Width = 84
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1705#1583' '#1588#1582#1589'/'#1588#1585#1705#1578':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object esearch: TEdit
      Left = 308
      Top = 22
      Width = 89
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
    object e_cod: TEdit
      Left = 167
      Top = 20
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
    object btn_print_taki: TsuiButton
      Left = 15
      Top = 21
      Width = 139
      Height = 20
      Caption = #1605#1588#1575#1607#1583#1607' '#1575#1589#1604#1575#1581#1575#1578' '#1575#1606#1580#1575#1605' '#1588#1583#1607' '
      AutoSize = False
      UIStyle = WinXP
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btn_print_takiClick
      ResHandle = 0
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 2
    Top = 100
    Width = 517
    Height = 421
    TabStop = False
    Anchors = [akTop]
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'code_shakhs'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shahrforoshande'
        Title.Alignment = taCenter
        Title.Caption = #1582#1585#1610#1583#1575#1585
        Width = 247
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'bedeh'
        Title.Alignment = taCenter
        Title.Caption = #1576#1583#1607#1610' '#1705#1604
        Width = 108
        Visible = True
      end>
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
  object suiButton1: TsuiButton
    Left = 4
    Top = 67
    Width = 141
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1662#1585#1583#1575#1582#1578#1607#1575#1610' '#1582#1585#1610#1583#1575#1585#1575#1606' '#1576#1607' '#1588#1605#1575
    AutoSize = False
    ParentFont = False
    UIStyle = WinXP
    TabOrder = 4
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
    DataSet = DataM_final.ADOQ_bedeh_be_kharidar
    Left = 352
    Top = 184
  end
  object DataSource2: TDataSource
    DataSet = DataModule1.ADOQuery_jame_bedehi_be_kharidaran
    Left = 223
    Top = 46
  end
end
