object frm_editgeymatjens: Tfrm_editgeymatjens
  Left = 45
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1608#1610#1585#1575#1610#1588' '#1602#1610#1605#1578' '#1580#1606#1587' '#1576#1607' '#1589#1608#1585#1578' '#1578#1705#1610
  ClientHeight = 575
  ClientWidth = 979
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
  OnShow = FormShow
  DesignSize = (
    979
    575)
  PixelsPerInch = 96
  TextHeight = 13
  object suiGroupBox1: TsuiGroupBox
    Left = 4
    Top = -1
    Width = 971
    Height = 80
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
    TabOrder = 0
    BorderColor = 8355711
    DesignSize = (
      971
      80)
    object Label7: TLabel
      Left = 841
      Top = 51
      Width = 127
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1606#1575#1605' '#1580#1606#1587':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object l_type: TLabel
      Left = 355
      Top = 49
      Width = 30
      Height = 13
      Caption = 'l_type'
      Visible = False
    end
    object L_name_sherkat: TLabel
      Left = 59
      Top = 16
      Width = 854
      Height = 25
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'L_name_sherkat'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object l_review: TLabel
      Left = 719
      Top = 25
      Width = 40
      Height = 13
      Caption = 'l_review'
      Visible = False
    end
    object Label1: TLabel
      Left = 621
      Top = 51
      Width = 125
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1705#1583' '#1580#1606#1587':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object b_eslahe_geymate_kharid: TButton
      Left = 14
      Top = 47
      Width = 139
      Height = 25
      Caption = #1608#1610#1585#1575#1610#1588' '#1602#1610#1605#1578' '#1582#1585#1610#1583' '#1580#1586#1574#1610
      TabOrder = 5
      OnClick = b_eslahe_geymate_kharidClick
    end
    object b_eslahe_geymate_forosh: TButton
      Left = 6
      Top = 47
      Width = 139
      Height = 25
      Caption = #1608#1610#1585#1575#1610#1588' '#1602#1610#1605#1578' '#1601#1585#1608#1588' '#1580#1586#1574#1610
      TabOrder = 2
      OnClick = b_eslahe_geymate_foroshClick
    end
    object esearch: TEdit
      Left = 750
      Top = 48
      Width = 90
      Height = 21
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      TabOrder = 0
      OnChange = esearchChange
    end
    object Button2: TButton
      Left = 297
      Top = 47
      Width = 111
      Height = 25
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1608#1610#1585#1575#1610#1588' '#1602#1610#1605#1578
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button12123: TButton
      Left = 412
      Top = 47
      Width = 111
      Height = 25
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1608#1588' '#1580#1606#1587
      TabOrder = 4
      OnClick = Button12123Click
    end
    object esearch_cod: TEdit
      Left = 528
      Top = 48
      Width = 90
      Height = 21
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      TabOrder = 1
      OnChange = esearch_codChange
    end
    object b_eslahe_geymate_forosh_koli: TButton
      Left = 151
      Top = 47
      Width = 139
      Height = 25
      Caption = #1608#1610#1585#1575#1610#1588' '#1602#1610#1605#1578' '#1601#1585#1608#1588' '#1705#1604#1610
      TabOrder = 6
      OnClick = b_eslahe_geymate_forosh_koliClick
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 3
    Top = 85
    Width = 973
    Height = 480
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
    UIStyle = Protein
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
        Width = 146
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'code_sherkati'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583#1588#1585#1705#1578#1610
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'calacod'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1580#1606#1587
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shakhs_sherkat'
        Title.Alignment = taCenter
        Title.Caption = #1582#1585#1610#1583' '#1575#1586
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'anbarname'
        Title.Alignment = taCenter
        Title.Caption = #1605#1705#1575#1606' '#1580#1606#1587
        Width = 102
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_jozi_da_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610' '#1583#1585' '#1705#1604#1610
        Width = 87
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedadanbar'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vahed_jozi'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583#1580#1586#1574#1610
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymatkharid'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1582#1585#1610#1583' '#1580#1586#1574#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymatforosh'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588' '#1580#1586#1574#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'geymatforosh_koli'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588' '#1705#1604#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikhedit'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1570#1582#1585#1610#1606' '#1576#1607' '#1585#1608#1586#1585#1587#1575#1606#1610
        Width = 114
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Dmanbar.ADOeditgeymat
    Left = 312
    Top = 360
  end
end
