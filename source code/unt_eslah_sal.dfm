object frm_eslah_sal: Tfrm_eslah_sal
  Left = 303
  Top = 191
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1575#1589#1604#1575#1581' '#1608' '#1581#1584#1601' '#1587#1575#1604
  ClientHeight = 351
  ClientWidth = 368
  Color = clBtnFace
  Constraints.MinHeight = 50
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  Scaled = False
  OnShow = FormShow
  DesignSize = (
    368
    351)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 259
    Top = 18
    Width = 97
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608#1610' '#1587#1575#1604'        :'
    ParentBiDiMode = False
  end
  object L_name: TLabel
    Left = 57
    Top = 11
    Width = 37
    Height = 13
    Caption = 'L_name'
    Visible = False
  end
  object Label1: TLabel
    Left = 259
    Top = 61
    Width = 100
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = '*'#1587#1575#1604' '#1588#1605#1587#1610' '#1580#1583#1610#1583':'
    ParentBiDiMode = False
  end
  object E_name: TEdit
    Left = 141
    Top = 14
    Width = 106
    Height = 21
    BiDiMode = bdRightToLeft
    MaxLength = 4
    ParentBiDiMode = False
    TabOrder = 0
    OnChange = E_nameChange
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 3
    Top = 83
    Width = 362
    Height = 264
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
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
    TabOrder = 4
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
        FieldName = 'sal'
        Title.Alignment = taCenter
        Title.Caption = #1587#1575#1604' '#1588#1605#1587#1610
        Width = 180
        Visible = True
      end>
  end
  object Enewsal: TEdit
    Left = 141
    Top = 56
    Width = 106
    Height = 22
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 4
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
  end
  object suiButton7: TsuiButton
    Left = 61
    Top = 33
    Width = 56
    Height = 25
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1581#1584#1601' '#1587#1575#1604
    AutoSize = False
    ParentFont = False
    FileTheme = frm_main.suiFileTheme1
    UIStyle = WinXP
    TabOrder = 3
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton7Click
    ResHandle = 0
  end
  object suiButton6: TsuiButton
    Left = 1
    Top = 33
    Width = 57
    Height = 25
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1575#1589#1604#1575#1581' '#1587#1575#1604
    AutoSize = False
    ParentFont = False
    FileTheme = frm_main.suiFileTheme1
    UIStyle = WinXP
    TabOrder = 2
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton6Click
    ResHandle = 0
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOQsaljadid
    Left = 73
    Top = 113
  end
end
