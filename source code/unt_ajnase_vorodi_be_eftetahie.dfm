object frm_ajnase_vorodi_be_eftetahie: Tfrm_ajnase_vorodi_be_eftetahie
  Left = 396
  Top = 159
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1580#1606#1575#1587' '#1608#1585#1608#1583#1610' '#1576#1607' '#1575#1606#1576#1575#1585' '#1575#1601#1578#1578#1575#1581#1610#1607
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
  object DBGrid3: TDBGrid
    Left = 1
    Top = 8
    Width = 378
    Height = 436
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'calaname'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1580#1606#1587
        Width = 108
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedadanbar'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymatkharid'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1580#1586#1574#1610
        Width = 112
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DataM_joziate_taraz.ADOQ_ajnase_vorodi_be_eftetahie
    Left = 168
    Top = 152
  end
end
