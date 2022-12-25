object Frm_pish_forosh: TFrm_pish_forosh
  Left = 102
  Top = 136
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1580#1606#1575#1587
  ClientHeight = 578
  ClientWidth = 804
  Color = clBtnFace
  Constraints.MinHeight = 50
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    804
    578)
  PixelsPerInch = 96
  TextHeight = 13
  object LMDSpeedButton: TLMDSpeedButton
    Left = 13
    Top = 110
    Width = 185
    Height = 26
    Caption = #1608#1585#1608#1583' '#1602#1610#1605#1578' '#1601#1585#1608#1588' '#1576#1585#1575#1610' '#1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LMDSpeedButtonClick
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object GroupBox3: TGroupBox
    Left = 216
    Top = 100
    Width = 434
    Height = 46
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    DesignSize = (
      434
      46)
    object LMDSpeedButton_add: TLMDSpeedButton
      Left = 293
      Top = 14
      Width = 104
      Height = 22
      Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1580#1606#1587
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_addClick
      Anchors = [akTop]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton_: TLMDSpeedButton
      Left = 165
      Top = 14
      Width = 104
      Height = 22
      Caption = #1581#1584#1601' '#1705#1585#1583#1606' '#1580#1606#1587
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton_Click
      Anchors = [akTop]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton3: TLMDSpeedButton
      Left = 37
      Top = 14
      Width = 104
      Height = 22
      Caption = #1581#1584#1601' '#1705#1585#1583#1606' '#1607#1605#1607' '#1575#1580#1606#1575#1587
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton3Click
      Anchors = [akTop]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = -1
    Top = 150
    Width = 804
    Height = 423
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
        FieldName = 'jens'
        Title.Alignment = taCenter
        Title.Caption = #1580#1606#1587
        Width = 182
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583'  '#1705#1604#1610
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vahed_koli'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583' '#1705#1604#1610
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_jozi_dar_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1580#1586#1574#1610' '#1583#1585' '#1705#1604#1610
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_kol'
        Title.Alignment = taCenter
        Title.Caption = #1580#1605#1593
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vahed_jozei'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583' '#1580#1586#1574#1610
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_vahed'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583' '#1580#1586#1574#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_jens'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604' '
        Width = 110
        Visible = True
      end>
  end
  object suiGroupBox2: TsuiGroupBox
    Left = 1
    Top = 1
    Width = 801
    Height = 99
    UIStyle = MacOS
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Transparent = True
    ParentColor = True
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    BorderColor = 8355711
    DesignSize = (
      801
      99)
    object Label8: TLabel
      Left = 680
      Top = 17
      Width = 93
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1588#1582#1589#1575#1578' '#1582#1585#1610#1583#1575#1585'    :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_name: TLabel
      Left = 224
      Top = 10
      Width = 450
      Height = 26
      Alignment = taCenter
      Anchors = [akTop, akRight]
      AutoSize = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText_arzesh_kol: TDBText
      Left = 160
      Top = 40
      Width = 244
      Height = 23
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      DataField = 'kol_'
      DataSource = DataSource2
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 417
      Top = 51
      Width = 100
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1605#1593' '#1705#1604' '#1575#1585#1586#1588' '#1575#1580#1606#1575#1587':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 680
      Top = 51
      Width = 94
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1593#1583#1575#1583' '#1575#1602#1604#1575#1605' '#1601#1575#1705#1578#1608#1585'    :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 572
      Top = 40
      Width = 102
      Height = 23
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      DataField = 'galam_'
      DataSource = DataSource2
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object LMDSpeedButton1123: TLMDSpeedButton
      Left = 6
      Top = 30
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
    object Label3: TLabel
      Left = 681
      Top = 77
      Width = 93
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1583#1585#1589#1583' '#1578#1582#1601#1610#1601' '#1601#1575#1705#1578#1608#1585' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 417
      Top = 77
      Width = 60
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_darsad_takhfif: TLabel
      Left = 483
      Top = 70
      Width = 191
      Height = 23
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      BiDiMode = bdRightToLeftReadingOnly
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object l_mablagh_takhfif: TLabel
      Left = 176
      Top = 70
      Width = 228
      Height = 23
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      BiDiMode = bdRightToLeftReadingOnly
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object LMDSpeedButton11: TLMDSpeedButton
      Left = 13
      Top = 67
      Width = 104
      Height = 22
      Caption = #1578#1582#1601#1610#1601' '#1585#1608#1610' '#1705#1604' '#1601#1575#1705#1578#1608#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton11Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
    object LMDSpeedButton35: TLMDSpeedButton
      Left = 68
      Top = 30
      Width = 56
      Height = 22
      Caption = #1662#1610#1588' '#1601#1575#1705#1578#1608#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LMDSpeedButton35Click
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh
    Left = 280
    Top = 216
  end
  object DataSource2: TDataSource
    DataSet = DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymat
    Left = 112
    Top = 112
  end
end
