object frm_anbarhaye_havie_jens: Tfrm_anbarhaye_havie_jens
  Left = 85
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1605#1705#1575#1606#1607#1575#1610' '#1581#1575#1608#1610' '#1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610
  ClientHeight = 561
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    785
    561)
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 662
    Top = 11
    Width = 74
    Height = 13
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608#1610' '#1605#1705#1575#1606':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
  end
  object l_type: TLabel
    Left = 496
    Top = 8
    Width = 28
    Height = 13
    Caption = 'l_type'
    Visible = False
  end
  object suiDBGrid2: TsuiDBGrid
    Left = 489
    Top = 30
    Width = 293
    Height = 120
    TabStop = False
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = DataSource2
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
        FieldName = 'anbarname'
        Title.Alignment = taCenter
        Title.Caption = #1605#1705#1575#1606' '#1607#1575#1610' '#1581#1575#1608#1610' '#1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610
        Width = 258
        Visible = True
      end>
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 1
    Top = 153
    Width = 781
    Height = 402
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
        FieldName = 'calaname'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1580#1606#1587
        Width = 127
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'calacod'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1580#1606#1587
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shakhs_sherkat'
        Title.Alignment = taCenter
        Title.Caption = #1582#1585#1610#1583' '#1575#1586
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_koli'
        Title.Alignment = taCenter
        Title.Caption = #1605#1608#1580#1608#1583#1610' '#1705#1604#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_koli'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583' '#1705#1604#1610
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_koli'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604#1610
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_jozi_da_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1580#1586#1574#1610' '#1583#1585' '#1705#1604#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedadanbar'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1705#1604
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_jozi'
        Title.Caption = #1608#1575#1581#1583' '#1580#1586#1574#1610
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymatforosh'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymatkharid'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1582#1585#1610#1583
        Visible = True
      end>
  end
  object GroupBox2: TGroupBox
    Left = 2
    Top = 1
    Width = 483
    Height = 150
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1606#1608#1593' '#1580#1575#1576#1607' '#1580#1575#1610#1610' '#1608' '#1578#1593#1583#1575#1583' '#1580#1606#1587'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      483
      150)
    object GroupBox_koli: TGroupBox
      Left = 13
      Top = 27
      Width = 230
      Height = 80
      Caption = '  '#1575#1606#1578#1582#1575#1576' '#1580#1606#1587' '#1576#1607' '#1589#1608#1585#1578' '#1705#1604#1610' '
      TabOrder = 1
      DesignSize = (
        230
        80)
      object Label1: TLabel
        Left = 103
        Top = 36
        Width = 111
        Height = 13
        Anchors = [akTop]
        Caption = ' '#1578#1593#1583#1575#1583'  '#1608#1575#1581#1583' '#1705#1604#1610' '#1580#1606#1587' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edit_koli_tedadkoli: TEdit
        Left = 4
        Top = 31
        Width = 89
        Height = 22
        Anchors = [akTop]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 0
        OnKeyPress = Edit_koli_tedadkoliKeyPress
      end
    end
    object GroupBox_jozi: TGroupBox
      Left = 13
      Top = 27
      Width = 230
      Height = 80
      Caption = '  '#1575#1606#1578#1582#1575#1576' '#1580#1606#1587' '#1576#1607' '#1589#1608#1585#1578' '#1580#1586#1574#1610'  '
      TabOrder = 3
      DesignSize = (
        230
        80)
      object Label2: TLabel
        Left = 102
        Top = 36
        Width = 114
        Height = 13
        Anchors = [akTop]
        Caption = ' '#1578#1593#1583#1575#1583'  '#1608#1575#1581#1583' '#1581#1586#1574#1610' '#1580#1606#1587':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edit_jozi_tedadjozi: TEdit
        Left = 4
        Top = 31
        Width = 89
        Height = 22
        Anchors = [akTop]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 0
        OnChange = Edit_jozi_tedadjoziChange
        OnKeyPress = Edit_jozi_tedadjoziKeyPress
      end
    end
    object GroupBox_koli_jozi: TGroupBox
      Left = 13
      Top = 27
      Width = 230
      Height = 80
      Caption = '  '#1575#1606#1578#1582#1575#1576' '#1580#1606#1587' '#1576#1607' '#1589#1608#1585#1578' '#1705#1604#1610' '#1608' '#1580#1586#1574#1610'  '
      TabOrder = 2
      DesignSize = (
        230
        80)
      object Label5: TLabel
        Left = 109
        Top = 25
        Width = 111
        Height = 13
        Anchors = [akTop]
        Caption = ' '#1578#1593#1583#1575#1583'  '#1608#1575#1581#1583' '#1705#1604#1610' '#1580#1606#1587' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 106
        Top = 51
        Width = 114
        Height = 13
        Anchors = [akTop]
        Caption = ' '#1578#1593#1583#1575#1583'  '#1608#1575#1581#1583' '#1581#1586#1574#1610' '#1580#1606#1587':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edit_ko_jozi_tedadkoli: TEdit
        Left = 10
        Top = 20
        Width = 89
        Height = 22
        Anchors = [akTop]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 0
        OnKeyPress = Edit_ko_jozi_tedadkoliKeyPress
      end
      object Edit_ko_jozi_tedadjozi: TEdit
        Left = 10
        Top = 46
        Width = 89
        Height = 22
        Anchors = [akTop]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 1
        OnKeyPress = Edit_ko_jozi_tedadjoziKeyPress
      end
    end
    object RadioGroup_jens_type: TRadioGroup
      Left = 275
      Top = 27
      Width = 204
      Height = 106
      Anchors = [akTop, akRight]
      Caption = '    '#1575#1606#1578#1582#1575#1576' '#1606#1608#1593' '#1580#1575#1576#1580#1575#1610#1610' '#1580#1606#1587'  '
      ItemIndex = 0
      Items.Strings = (
        #1575#1606#1578#1602#1575#1604' '#1576#1607' '#1589#1608#1585#1578' '#1705#1604#1610' '
        #1575#1606#1578#1602#1575#1604' '#1576#1607' '#1589#1608#1585#1578' '#1580#1586#1574#1610
        #1575#1606#1578#1602#1575#1604' '#1576#1607' '#1589#1608#1585#1578' '#1705#1604#1610' '#1608' '#1580#1586#1574#1610)
      TabOrder = 0
      OnClick = RadioGroup_jens_typeClick
    end
    object suibtaeed: TsuiButton
      Left = 13
      Top = 111
      Width = 40
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1578#1575#1610#1610#1583
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 4
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suibtaeedClick
      ResHandle = 0
    end
  end
  object Edit1: TEdit
    Left = 540
    Top = 6
    Width = 107
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
    TabOrder = 3
    OnChange = Edit1Change
  end
  object DataSource1: TDataSource
    DataSet = Dmlistha.ADOlistanbarforosh
    Left = 328
    Top = 232
  end
  object DataSource2: TDataSource
    DataSet = Dm_zayeat_marjoei.ADOQ_anbarhaye_havie_jens
    Left = 544
    Top = 56
  end
end
