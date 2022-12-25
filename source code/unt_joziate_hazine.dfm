object frm_joziate_hazine: Tfrm_joziate_hazine
  Left = 544
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1580#1586#1574#1610#1575#1578' '#1607#1586#1610#1606#1607' '#1607#1575
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
    Left = 134
    Top = 8
    Width = 113
    Height = 22
    Caption = #1607#1586#1610#1606#1607' '#1607#1575#1610' '#1579#1576#1578' '#1588#1583#1607
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
    Top = 40
    Width = 378
    Height = 404
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
        FieldName = 'hazine'
        Title.Alignment = taCenter
        Title.Caption = #1593#1606#1608#1575#1606' '#1607#1586#1610#1606#1607
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'mablag'
        Title.Alignment = taCenter
        Title.Caption = #1605#1576#1604#1594' '#1705#1604
        Width = 137
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DataM_joziate_taraz.ADOQ_joziate_hazineha
    Left = 128
    Top = 128
  end
end
