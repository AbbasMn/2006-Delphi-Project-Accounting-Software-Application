object frm_shoe_hazine_onvan: Tfrm_shoe_hazine_onvan
  Left = 176
  Top = 165
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1580#1605#1593' '#1605#1576#1604#1594' '#1662#1585#1583#1575#1582#1578#1610' '#1576#1585#1575#1610' '#1607#1585' '#1593#1606#1608#1575#1606' '#1607#1586#1610#1606#1607
  ClientHeight = 529
  ClientWidth = 535
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
  object Label8: TLabel
    Left = 171
    Top = 9
    Width = 193
    Height = 14
    BiDiMode = bdRightToLeft
    Caption = #1580#1605#1593' '#1705#1604' '#1607#1605#1607' '#1607#1586#1610#1606#1607' '#1607#1575#1610' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 35
    Top = 33
    Width = 465
    Height = 26
    Alignment = taCenter
    BiDiMode = bdRightToLeft
    DataField = 'kole_hazineha'
    DataSource = DataSource4
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -17
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object GroupBox5: TGroupBox
    Left = 3
    Top = 72
    Width = 524
    Height = 456
    BiDiMode = bdRightToLeft
    Caption = '  '#1593#1606#1608#1575#1606' '#1607#1586#1610#1606#1607' '#1608' '#1580#1605#1593' '#1705#1604' '#1605#1576#1575#1604#1594' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607' '#1576#1585#1575#1610' '#1570#1606'  '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      524
      456)
    object suiDBGrid2: TsuiDBGrid
      Left = 4
      Top = 21
      Width = 516
      Height = 431
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
      TabOrder = 0
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
          FieldName = 'calaname'
          Title.Caption = #1593#1606#1608#1575#1606' '#1607#1586#1610#1606#1607
          Width = 230
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'kol'
          Title.Alignment = taCenter
          Title.Caption = #1580#1605#1593' '#1705#1604' '#1662#1585#1583#1575#1582#1578' '#1576#1585#1575#1610' '#1607#1586#1610#1606#1607
          Width = 150
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = DataM_hazineha.ADOQ_jame_noe_hazine
    Left = 165
    Top = 217
  end
  object DataSource4: TDataSource
    DataSet = DataM_hazineha.ADOQ_jame_kole_hazineha2
    Left = 104
    Top = 16
  end
end
