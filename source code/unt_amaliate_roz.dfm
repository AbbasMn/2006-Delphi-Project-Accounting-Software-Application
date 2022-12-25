object frm_amaliate_roz: Tfrm_amaliate_roz
  Left = 400
  Top = 87
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1593#1605#1604#1610#1575#1578' '#1575#1606#1580#1575#1605' '#1588#1583#1607' '#1585#1608#1586
  ClientHeight = 528
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox6: TGroupBox
    Left = 237
    Top = 69
    Width = 264
    Height = 457
    TabOrder = 1
    DesignSize = (
      264
      457)
    object LMDSpeedButton_: TLMDSpeedButton
      Left = 4
      Top = 426
      Width = 121
      Height = 22
      Caption = #1581#1584#1601' '#1593#1605#1604#1610#1575#1578' '#1578#1575#1585#1610#1582' '#1575#1606#1578#1582#1575#1576#1610
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
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 245
      Height = 24
      BiDiMode = bdRightToLeft
      Caption = #1576#1607' '#1583#1604#1610#1604' '#1581#1580#1605'  '#1586#1610#1575#1583' '#1583#1575#1583#1607' '#1607#1575#1610' '#1584#1582#1610#1585#1607' '#1588#1583#1607' '#1583#1585' '#1579#1576#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 20
      Top = 43
      Width = 229
      Height = 24
      BiDiMode = bdRightToLeft
      Caption = #1593#1605#1604#1610#1575#1578' '#1575#1606#1580#1575#1605' '#1588#1583#1607' '#1583#1585' '#1587#1610#1587#1578#1605'  '#1548' '#1576#1607#1578#1585' '#1575#1587#1578' '#1705#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 70
      Width = 250
      Height = 24
      BiDiMode = bdRightToLeft
      Caption = #1583#1585' '#1662#1575#1610#1575#1606' '#1607#1585' '#1585#1608#1586' '#1593#1605#1604#1610#1575#1578' '#1579#1576#1578' '#1588#1583#1607' '#1585#1575' '#1581#1584#1601' '#1606#1605#1575#1610#1610#1583'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 84
      Top = 97
      Width = 95
      Height = 14
      Caption = #1578#1575#1585#1610#1582' '#1575#1580#1585#1575#1610' '#1593#1605#1604#1610#1575#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText_t_jam: TDBText
      Left = 10
      Top = 124
      Width = 244
      Height = 18
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'tarikh'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 78
      Top = 151
      Width = 107
      Height = 14
      Caption = #1587#1575#1593#1578' '#1575#1580#1585#1575#1610' '#1593#1605#1604#1610#1575#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 85
      Top = 206
      Width = 94
      Height = 14
      Caption = #1593#1605#1604#1610#1575#1578' '#1575#1606#1580#1575#1605' '#1588#1583#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 10
      Top = 178
      Width = 244
      Height = 18
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'time_'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object lmdb_badi: TLMDSpeedButton
      Left = 97
      Top = 392
      Width = 30
      Height = 22
      Caption = #1576#1593#1583#1610
      OnClick = lmdb_badiClick
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object lmdb_gabli: TLMDSpeedButton
      Left = 137
      Top = 392
      Width = 30
      Height = 22
      Caption = #1602#1576#1604#1610
      OnClick = lmdb_gabliClick
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object lmdb_avali: TLMDSpeedButton
      Left = 178
      Top = 392
      Width = 30
      Height = 22
      Caption = #1575#1608#1604#1610#1606
      OnClick = lmdb_avaliClick
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object lmdb_akharin: TLMDSpeedButton
      Left = 57
      Top = 392
      Width = 30
      Height = 22
      Caption = #1570#1582#1585#1610#1606
      OnClick = lmdb_akharinClick
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_1: TLMDSpeedButton
      Left = 132
      Top = 426
      Width = 127
      Height = 22
      Caption = #1581#1584#1601' '#1593#1605#1604#1610#1575#1578' '#1585#1608#1586#1607#1575#1610' '#1602#1576#1604#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_1Click
      Anchors = [akTop]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object DBMemo1: TDBMemo
      Left = 3
      Top = 229
      Width = 246
      Height = 154
      TabStop = False
      BiDiMode = bdRightToLeft
      DataField = 'amaliat'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 2
    Top = 15
    Width = 232
    Height = 510
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
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'time_'
        Title.Alignment = taCenter
        Title.Caption = #1587#1575#1593#1578
        Width = 100
        Visible = True
      end>
  end
  object GroupBox5: TGroupBox
    Left = 240
    Top = 11
    Width = 256
    Height = 56
    BiDiMode = bdRightToLeft
    Caption = '   '#1575#1606#1578#1582#1575#1576' '#1578#1575#1585#1610#1582' '#1593#1605#1604#1610#1575#1578' '#1575#1606#1580#1575#1605' '#1711#1585#1601#1578#1607'  '
    ParentBiDiMode = False
    TabOrder = 0
    object MaskEditrooz: TMaskEdit
      Left = 67
      Top = 22
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
      TabOrder = 1
      Text = '  '
    end
    object MaskEditmah: TMaskEdit
      Left = 41
      Top = 22
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
      TabOrder = 2
      Text = '  '
    end
    object MaskEditsal: TMaskEdit
      Left = 5
      Top = 22
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
      TabOrder = 3
      Text = '    '
    end
    object RadioGroup2: TRadioGroup
      Left = 116
      Top = 17
      Width = 130
      Height = 33
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
  object dxToolButton11: TdxToolButton
    Left = 0
    Top = 0
    Hint = #1601#1575#1705#1578#1608#1585
    Align = alLeft
    ParentShowHint = False
    ShowHint = True
    OnClick = dxToolButton11Click
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
    DataSet = frm_main.ADOQ_amaliat
    Left = 88
    Top = 136
  end
end
