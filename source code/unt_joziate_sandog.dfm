object frm_joziate_sandog: Tfrm_joziate_sandog
  Left = 558
  Top = 171
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1580#1586#1574#1610#1575#1578' '#1575#1585#1586#1588' '#1605#1608#1580#1608#1583#1610' '#1589#1606#1583#1608#1602#1607#1575
  ClientHeight = 446
  ClientWidth = 382
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
  object Label11: TLabel
    Left = 79
    Top = 2
    Width = 233
    Height = 22
    Caption = #1605#1608#1580#1608#1583#1610' '#1705#1604' " '#1589#1606#1583#1608#1602' '#1576#1585#1583#1575#1588#1578' " '#1585#1575' '#1575#1586' '#1602#1587#1605#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 102
    Top = 24
    Width = 190
    Height = 26
    Caption = #1580#1586#1574#1610#1575#1578' '#1607#1586#1610#1606#1607' '#1607#1575' " '#1605#1588#1575#1607#1583#1607' '#1606#1605#1575#1610#1610#1583' "'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LMDSpeedButton2: TLMDSpeedButton
    Left = 135
    Top = 47
    Width = 113
    Height = 22
    Caption = #1608#1585#1608#1583' '#1608' '#1582#1585#1608#1580' '#1589#1606#1583#1608#1602#1607#1575
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LMDSpeedButton2Click
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object DBGrid3: TDBGrid
    Left = 1
    Top = 72
    Width = 378
    Height = 372
    BiDiMode = bdRightToLeft
    Color = clBtnFace
    DataSource = DataSource1
    FixedColor = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'sandog'
        Title.Alignment = taCenter
        Title.Caption = #1589#1606#1583#1608#1602
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'mablag'
        Title.Alignment = taCenter
        Title.Caption = #1605#1608#1580#1608#1583#1610' '#1705#1604
        Width = 137
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DataM_joziate_taraz.ADOQ_joziate_sandogha
    Left = 168
    Top = 152
  end
end
