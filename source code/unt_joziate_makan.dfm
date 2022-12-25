object frm_joziate_makan: Tfrm_joziate_makan
  Left = 513
  Top = 130
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1580#1586#1574#1610#1575#1578' '#1575#1585#1586#1588' '#1575#1580#1606#1575#1587' '#1605#1705#1575#1606#1607#1575
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LMDSpeedButton23213: TLMDSpeedButton
    Left = 198
    Top = 8
    Width = 113
    Height = 22
    Caption = #1575#1580#1606#1575#1587' '#1607#1585' '#1605#1705#1575#1606
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LMDSpeedButton23213Click
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object LMDSpeedButton2: TLMDSpeedButton
    Left = 70
    Top = 8
    Width = 113
    Height = 22
    Caption = #1575#1580#1606#1575#1587' '#1575#1606#1576#1575#1585' '#1605#1580#1575#1586#1610
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
        FieldName = 'makan'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1605#1705#1575#1606
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'arzesh'
        Title.Alignment = taCenter
        Title.Caption = #1575#1585#1586#1588' '#1575#1580#1606#1575#1587' '#1605#1608#1580#1608#1583' '#1583#1585' '#1605#1705#1575#1606
        Width = 137
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DataM_joziate_taraz.ADOQ_joziate_makan
    Left = 168
    Top = 152
  end
end
