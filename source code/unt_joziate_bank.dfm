object frm_joziate_bank: Tfrm_joziate_bank
  Left = 529
  Top = 168
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1580#1586#1574#1610#1575#1578' '#1575#1585#1586#1588' '#1605#1608#1580#1608#1583#1610' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576#1607#1575#1610' '#1576#1575#1606#1705#1610
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
  object LMDSpeedButton1: TLMDSpeedButton
    Left = 156
    Top = 8
    Width = 70
    Height = 22
    Caption = #1605#1608#1575#1585#1583' '#1576#1575#1606#1705#1610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LMDSpeedButton1Click
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object DBGrid3: TDBGrid
    Left = 1
    Top = 36
    Width = 378
    Height = 408
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
        FieldName = 'bank'
        Title.Alignment = taCenter
        Title.Caption = #1576#1575#1606#1705' '#1588#1593#1576#1607' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'mojodi'
        Title.Alignment = taCenter
        Title.Caption = #1605#1608#1580#1608#1583#1610' '#1705#1604
        Width = 137
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DataM_joziate_taraz.ADOQ_joziate_bank
    Left = 160
    Top = 88
  end
end
