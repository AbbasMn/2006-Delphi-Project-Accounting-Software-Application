object frm_joziate_eslahe_bedehe_foroshande: Tfrm_joziate_eslahe_bedehe_foroshande
  Left = 216
  Top = 177
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1589#1604#1575#1581#1575#1578' '#1575#1593#1605#1575#1604' '#1588#1583#1607' '#1576#1585' '#1585#1608#1610' '#1576#1583#1607#1610' '#1705#1604' '#1608' '#1591#1604#1576' '#1705#1604' '#1601#1585#1608#1588#1606#1583#1607
  ClientHeight = 516
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox6: TGroupBox
    Left = 285
    Top = 3
    Width = 264
    Height = 511
    TabOrder = 0
    object Label9: TLabel
      Left = 84
      Top = 101
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
      Left = 4
      Top = 138
      Width = 255
      Height = 26
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'tarikh'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 104
      Top = 181
      Width = 55
      Height = 14
      Caption = #1606#1608#1593' '#1593#1605#1604#1610#1575#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 62
      Top = 268
      Width = 141
      Height = 14
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1593#1605#1604#1610#1575#1578' '#1575#1606#1580#1575#1605' '#1588#1583#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 9
      Top = 216
      Width = 244
      Height = 28
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'type'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object lmdb_badi: TLMDSpeedButton
      Left = 97
      Top = 479
      Width = 30
      Height = 22
      Caption = #1576#1593#1583#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = lmdb_badiClick
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object lmdb_gabli: TLMDSpeedButton
      Left = 137
      Top = 479
      Width = 30
      Height = 22
      Caption = #1602#1576#1604#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = lmdb_gabliClick
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object lmdb_avali: TLMDSpeedButton
      Left = 178
      Top = 479
      Width = 30
      Height = 22
      Caption = #1575#1608#1604#1610#1606
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = lmdb_avaliClick
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object lmdb_akharin: TLMDSpeedButton
      Left = 57
      Top = 479
      Width = 30
      Height = 22
      Caption = #1570#1582#1585#1610#1606
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = lmdb_akharinClick
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object Label1: TLabel
      Left = 83
      Top = 25
      Width = 98
      Height = 14
      Caption = #1605#1588#1582#1589#1575#1578' '#1601#1585#1608#1588#1606#1583#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 1
      Top = 57
      Width = 255
      Height = 29
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'shakhs'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 9
      Top = 312
      Width = 246
      Height = 154
      BiDiMode = bdRightToLeft
      DataField = 'tozih'
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
    Top = 6
    Width = 279
    Height = 509
    TabStop = False
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
        Expanded = False
        FieldName = 'shakhs'
        Title.Alignment = taCenter
        Title.Caption = #1601#1585#1608#1588#1606#1583#1607
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582
        Width = 90
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DataM_final.ADOQ_eslahe_bedehe_tozihe_foroshande
    Left = 216
    Top = 32
  end
end
