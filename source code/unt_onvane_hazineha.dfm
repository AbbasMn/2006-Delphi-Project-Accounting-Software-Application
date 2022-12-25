object frm_onvane_hazineha: Tfrm_onvane_hazineha
  Left = 167
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1593#1606#1608#1575#1606' '#1607#1586#1610#1606#1607' '#1607#1575
  ClientHeight = 487
  ClientWidth = 362
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
  object gr_onvan: TGroupBox
    Left = 3
    Top = 5
    Width = 355
    Height = 182
    BiDiMode = bdRightToLeft
    Caption = '  '#1579#1576#1578' '#1593#1606#1608#1575#1606' '#1607#1586#1610#1606#1607' '#1580#1583#1610#1583'  '
    ParentBiDiMode = False
    TabOrder = 0
    DesignSize = (
      355
      182)
    object Label2: TLabel
      Left = 269
      Top = 33
      Width = 65
      Height = 13
      Caption = '*'#1593#1606#1608#1575#1606' '#1607#1586#1610#1606#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object L_type: TLabel
      Left = 102
      Top = 16
      Width = 33
      Height = 13
      Caption = 'L_type'
      Visible = False
    end
    object E_onvan: TTeMemo
      Left = 33
      Top = 33
      Width = 219
      Height = 111
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 50
      ParentBiDiMode = False
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      ThemeObject = 'default'
    end
    object Button1: TButton
      Left = 33
      Top = 151
      Width = 46
      Height = 25
      Caption = #1584#1582#1610#1585#1607
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 84
      Top = 151
      Width = 46
      Height = 25
      Caption = #1582#1585#1608#1580
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 3
    Top = 230
    Width = 355
    Height = 255
    BiDiMode = bdRightToLeft
    Caption = '  '#1593#1606#1608#1575#1606' '#1607#1575#1610' '#1579#1576#1578' '#1588#1583#1607' '#1576#1585#1575#1610' '#1607#1586#1610#1606#1607' '#1607#1575'  '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      355
      255)
    object suiDBGrid2: TsuiDBGrid
      Left = 4
      Top = 21
      Width = 347
      Height = 230
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
          FieldName = 'onvane_hazine'
          Title.Alignment = taCenter
          Title.Caption = #1593#1606#1608#1575#1606' '#1607#1586#1610#1606#1607
          Width = 290
          Visible = True
        end>
    end
  end
  object Button3: TButton
    Left = 104
    Top = 197
    Width = 153
    Height = 25
    Caption = #1581#1584#1601' '#1593#1606#1608#1575#1606' '#1607#1586#1610#1606#1607' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607
    TabOrder = 2
    OnClick = Button3Click
  end
  object DataSource1: TDataSource
    DataSet = DataM_hazineha.ADOQ_onvane_hazineha1
    Left = 160
    Top = 288
  end
end
