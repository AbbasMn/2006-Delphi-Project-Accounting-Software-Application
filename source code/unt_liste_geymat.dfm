object frm_liste_geymat: Tfrm_liste_geymat
  Left = 226
  Top = 134
  Width = 720
  Height = 612
  BorderIcons = [biSystemMenu]
  Caption = #1604#1610#1587#1578' '#1602#1610#1605#1578' '#1575#1580#1606#1575#1587
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    712
    578)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 24
    Width = 86
    Height = 25
    Caption = #1670#1575#1662' '#1604#1610#1587#1578' '#1602#1610#1605#1578
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 1
    Top = 88
    Width = 709
    Height = 488
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
        FieldName = 'calaname'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1580#1606#1587
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'calacod'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1580#1606#1587' '
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'code_sherkati'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1580#1606#1587' '#1583#1585' '#1578#1608#1604#1610#1583#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymatforosh'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
        Width = 94
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymatforosh_koli'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1593#1605#1583#1607
        Width = 118
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 240
    Top = 3
    Width = 470
    Height = 82
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1606#1581#1608#1607' '#1606#1605#1575#1610#1588' '#1604#1610#1587#1578' '#1602#1610#1605#1578' '#1575#1580#1606#1575#1587'  '
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #1576#1585' '#1575#1587#1575#1587' '#1606#1575#1605' '#1580#1606#1587
      #1576#1585' '#1575#1587#1575#1587' '#1705#1583' '#1580#1606#1587
      #1576#1585' '#1575#1587#1575#1587' '#1578#1593#1583#1575#1583' '#1605#1608#1580#1608#1583' '#1583#1585' '#1605#1705#1575#1606' ('#1705#1605' '#1576#1607' '#1586#1610#1575#1583')'
      #1576#1585#1575#1587#1575#1587' '#1578#1593#1583#1575#1583' '#1605#1608#1580#1608#1583' '#1583#1585' '#1605#1705#1575#1606' ('#1586#1610#1575#1583' '#1576#1607' '#1705#1605')'
      #1576#1585' '#1575#1587#1575#1587' '#1602#1610#1605#1578' '#1601#1585#1608#1588' ('#1705#1605' '#1576#1607' '#1586#1610#1575#1583')'
      #1576#1585' '#1575#1587#1575#1587' '#1602#1610#1605#1578' '#1601#1585#1608#1588' ('#1586#1610#1575#1583' '#1576#1607' '#1705#1605')')
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = Dmlistha.ADOlistanbarforosh
    Left = 328
    Top = 232
  end
end
