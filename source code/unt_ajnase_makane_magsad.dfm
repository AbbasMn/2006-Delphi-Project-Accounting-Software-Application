object frm_ajnase_makane_magsad: Tfrm_ajnase_makane_magsad
  Left = 89
  Top = 137
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1605#1588#1575#1607#1583#1607' '#1575#1580#1606#1575#1587' '#1605#1705#1575#1606' '#1605#1602#1589#1583' '#1583#1585' '#1580#1575#1576#1607' '#1580#1575#1610#1610' '#1580#1606#1587
  ClientHeight = 444
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    793
    444)
  PixelsPerInch = 96
  TextHeight = 13
  object suiDBGrid1: TsuiDBGrid
    Left = 1
    Top = 9
    Width = 790
    Height = 426
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
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calacod'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1580#1606#1587
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shakhs_sherkat'
        Title.Alignment = taCenter
        Title.Caption = #1582#1585#1610#1583' '#1575#1586
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tedad_koli'
        Title.Alignment = taCenter
        Title.Caption = #1605#1608#1580#1608#1583#1610' '#1705#1604#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vahed_koli'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583' '#1705#1604#1610
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'geymat_koli'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604#1610
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tedad_jozi_da_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578' '#1705#1604#1610' '#1583#1585#1580#1586#1574#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tedadanbar'
        Title.Alignment = taCenter
        Title.Caption = #1605#1608#1580#1608#1583#1610' '#1580#1586#1574#1610
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vahed_jozi'
        Title.Caption = #1608#1575#1581#1583' '#1580#1586#1574#1610
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'geymatforosh'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymatkharid'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1582#1585#1610#1583
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Dmanbarexite.ADOanbarcala
    Left = 328
    Top = 72
  end
end
