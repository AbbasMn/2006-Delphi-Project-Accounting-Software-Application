object frm_entekhabe_kharidar: Tfrm_entekhabe_kharidar
  Left = 72
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1606#1578#1582#1575#1576' '#1582#1585#1610#1583#1575#1585
  ClientHeight = 533
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    443
    533)
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 345
    Top = 23
    Width = 51
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1606#1575#1605' '#1582#1585#1610#1583#1575#1585' :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object LMDSpeedButton1123: TLMDSpeedButton
    Left = 6
    Top = 18
    Width = 56
    Height = 22
    Caption = '<< '#1576#1585#1711#1588#1578' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LMDSpeedButton1123Click
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object Label10: TLabel
    Left = 171
    Top = 23
    Width = 49
    Height = 13
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1705#1583' '#1588#1582#1589':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 1
    Top = 64
    Width = 441
    Height = 467
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
        FieldName = 'code'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shahrforoshande'
        Title.Alignment = taCenter
        Title.Caption = #1605#1588#1582#1589#1575#1578' '#1582#1585#1610#1583#1575#1585
        Width = 300
        Visible = True
      end>
  end
  object E_name: TEdit
    Left = 240
    Top = 18
    Width = 100
    Height = 22
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnChange = E_nameChange
  end
  object e_cod: TEdit
    Left = 114
    Top = 18
    Width = 52
    Height = 22
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 30
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    OnChange = e_codChange
    OnKeyPress = e_codKeyPress
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOQuery3
    Left = 116
    Top = 89
  end
end
