object frm_show_sefaresh: Tfrm_show_sefaresh
  Left = 99
  Top = 113
  Anchors = [akLeft, akTop, akRight, akBottom]
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1587#1601#1575#1585#1588#1607#1575#1610' '#1583#1585#1610#1575#1601#1578#1610
  ClientHeight = 569
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  Scaled = False
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    777
    569)
  PixelsPerInch = 96
  TextHeight = 13
  object LMDSpeedButton3: TLMDSpeedButton
    Left = 123
    Top = 454
    Width = 81
    Height = 22
    Caption = #1581#1584#1601' '#1587#1601#1575#1585#1588
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LMDSpeedButton3Click
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object LMDSpeedButton_: TLMDSpeedButton
    Left = 31
    Top = 454
    Width = 81
    Height = 22
    Caption = #1575#1606#1580#1575#1605' '#1587#1601#1575#1585#1588
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LMDSpeedButton_Click
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object GroupBox1: TGroupBox
    Left = 502
    Top = 3
    Width = 275
    Height = 60
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608#1610' '#1587#1601#1575#1585#1588#1607#1575#1610' '#1588#1582#1589
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      275
      60)
    object Label4: TLabel
      Left = 203
      Top = 25
      Width = 63
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1588#1582#1589'    :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object esearch: TEdit
      Left = 22
      Top = 22
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
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 239
    Top = 66
    Width = 538
    Height = 500
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
    TabOrder = 5
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
        FieldName = 'shakhs'
        Title.Alignment = taCenter
        Title.Caption = #1588#1582#1589
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'onvan'
        Title.Alignment = taCenter
        Title.Caption = #1593#1606#1608#1575#1606' '#1587#1601#1575#1585#1588
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh_sefaresh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582'  '#1587#1601#1575#1585#1588
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh_residegi'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1610#1575#1583' '#1570#1608#1585#1610
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'anjam'
        Title.Alignment = taCenter
        Title.Caption = #1585#1587#1610#1583#1711#1610
        Width = 103
        Visible = True
      end>
  end
  object GroupBox_s_jens: TGroupBox
    Left = 1
    Top = 63
    Width = 236
    Height = 136
    BiDiMode = bdRightToLeft
    Caption = #1593#1606#1608#1575#1606' '#1587#1601#1575#1585#1588' '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    object DBText5: TDBText
      Left = 6
      Top = 24
      Width = 222
      Height = 25
      Alignment = taCenter
      DataField = 'onvan'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox_jens: TGroupBox
      Left = 5
      Top = 53
      Width = 226
      Height = 76
      Caption = #1580#1606#1587' '#1587#1601#1575#1585#1588#1610
      TabOrder = 0
      object DBText1: TDBText
        Left = 4
        Top = 19
        Width = 219
        Height = 22
        Alignment = taCenter
        DataField = 'jens'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 143
        Top = 48
        Width = 70
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = #1578#1593#1583#1575#1583' '#1587#1601#1575#1585#1588' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 15
        Top = 48
        Width = 122
        Height = 22
        Alignment = taCenter
        DataField = 'tedad'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox_geyre: TGroupBox
      Left = 5
      Top = 53
      Width = 226
      Height = 76
      BiDiMode = bdRightToLeft
      Caption = #1587#1601#1575#1585#1588' '#1594#1610#1585#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      object DBText3: TDBText
        Left = 1
        Top = 30
        Width = 224
        Height = 24
        Alignment = taCenter
        DataField = 'onvan'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -17
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 202
    Width = 236
    Height = 201
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1578#1606' '#1587#1601#1575#1585#1588' '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      236
      201)
    object TeDBMemo2: TTeDBMemo
      Left = 5
      Top = 27
      Width = 226
      Height = 167
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      ThemeObject = 'default'
      DataField = 'matn'
      DataSource = DataSource1
    end
  end
  object GroupBox3: TGroupBox
    Left = 46
    Top = 408
    Width = 143
    Height = 37
    TabOrder = 4
    object LMDSpeedButton1: TLMDSpeedButton
      Left = 81
      Top = 10
      Width = 30
      Height = 22
      Caption = #1576#1593#1583#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton1Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton2: TLMDSpeedButton
      Left = 32
      Top = 10
      Width = 30
      Height = 22
      Caption = #1602#1576#1604#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton2Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 13
    Top = 3
    Width = 466
    Height = 60
    BiDiMode = bdRightToLeft
    Caption = '  '#1606#1608#1593' '#1711#1586#1575#1585#1588' '#1711#1610#1585#1610'  '
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object RadioGroup1: TRadioGroup
      Left = 4
      Top = 14
      Width = 459
      Height = 37
      BiDiMode = bdRightToLeft
      Columns = 4
      ItemIndex = 2
      Items.Strings = (
        #1587#1601#1575#1585#1588' '#1575#1606#1580#1575#1605' '#1588#1583#1607'     '
        #1587#1601#1575#1585#1588' '#1575#1606#1580#1575#1605' '#1606#1588#1583#1607'   '
        #1585#1587#1610#1583#1711#1610' '#1583#1585' '#1575#1605#1585#1608#1586'   '
        #1575#1606#1580#1575#1605' '#1588#1583#1607' '#1608' '#1606#1588#1583#1607)
      ParentBiDiMode = False
      TabOrder = 0
      TabStop = True
      OnClick = RadioGroup1Click
    end
  end
  object dxToolButton123: TdxToolButton
    Left = 0
    Top = 0
    Hint = #1601#1575#1705#1578#1608#1585
    Align = alLeft
    ParentShowHint = False
    ShowHint = True
    OnClick = dxToolButton123Click
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
  object DataSource1: TDataSource
    DataSet = DataModule_gozaresh_tarkibi.ADOQuery_sefaresh
    Left = 456
    Top = 232
  end
end
