object frm_factore_kharid: Tfrm_factore_kharid
  Left = 111
  Top = 97
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1589#1583#1608#1585' '#1601#1575#1705#1578#1608#1585#1582#1585#1610#1583
  ClientHeight = 574
  ClientWidth = 780
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
    780
    574)
  PixelsPerInch = 96
  TextHeight = 13
  object L_shakhs: TLabel
    Left = 329
    Top = 3
    Width = 56
    Height = 13
    Caption = 'L_sh_factor'
    Visible = False
  end
  object L_sh_factor: TLabel
    Left = 266
    Top = 1
    Width = 56
    Height = 13
    Caption = 'L_sh_factor'
    Visible = False
  end
  object GroupBox2: TGroupBox
    Left = 400
    Top = 10
    Width = 380
    Height = 284
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      380
      284)
    object DBText_shakhs: TDBText
      Left = 10
      Top = 17
      Width = 39
      Height = 17
      Alignment = taRightJustify
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'shahrforoshande'
      ParentBiDiMode = False
      Visible = False
    end
    object DBText_geymat: TDBText
      Left = 122
      Top = 9
      Width = 39
      Height = 17
      Alignment = taRightJustify
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'geymat_jens'
      ParentBiDiMode = False
      Visible = False
    end
    object DBText_calacod: TDBText
      Left = 50
      Top = 0
      Width = 39
      Height = 17
      Alignment = taRightJustify
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'calacod'
      ParentBiDiMode = False
      Visible = False
    end
    object DBText_id: TDBText
      Left = 8
      Top = 2
      Width = 33
      Height = 17
      Alignment = taRightJustify
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'id'
      ParentBiDiMode = False
      Visible = False
    end
    object Label2: TLabel
      Left = 321
      Top = 21
      Width = 51
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1588#1582#1589':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 163
      Top = 21
      Width = 49
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1705#1583' '#1588#1582#1589':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object suiDbjens: TsuiDBGrid
      Left = 3
      Top = 47
      Width = 374
      Height = 178
      TabStop = False
      Anchors = [akLeft]
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = True
      DataSource = dsshakhs
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
          FieldName = 'shahrforoshande'
          Title.Alignment = taCenter
          Title.Caption = #1601#1585#1608#1588#1606#1583#1607
          Width = 275
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'code'
          Title.Alignment = taCenter
          Title.Caption = #1705#1583
          Width = 40
          Visible = True
        end>
    end
    object GroupBox5: TGroupBox
      Left = 4
      Top = 225
      Width = 373
      Height = 56
      Caption = '    '#1578#1575#1585#1610#1582' '#1582#1585#1610#1583'  '
      TabOrder = 5
      object MaskEditrooz: TMaskEdit
        Left = 125
        Top = 22
        Width = 27
        Height = 22
        TabStop = False
        EditMask = '99;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '  '
      end
      object MaskEditmah: TMaskEdit
        Left = 99
        Top = 22
        Width = 26
        Height = 22
        TabStop = False
        EditMask = '99;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '  '
      end
      object MaskEditsal: TMaskEdit
        Left = 63
        Top = 22
        Width = 35
        Height = 22
        TabStop = False
        EditMask = '9999;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '    '
      end
      object RadioGroup2: TRadioGroup
        Left = 179
        Top = 17
        Width = 131
        Height = 33
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          #1575#1605#1585#1608#1586
          #1594#1610#1585#1607)
        TabOrder = 0
        TabStop = True
        OnClick = RadioGroup2Click
      end
    end
    object esearch: TEdit
      Left = 218
      Top = 16
      Width = 101
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      TabOrder = 0
      OnChange = esearchChange
    end
    object suiButton1: TsuiButton
      Left = 8
      Top = 16
      Width = 45
      Height = 22
      Anchors = [akTop]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1605#1588#1575#1607#1583#1607
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      ResHandle = 0
    end
    object e_cod: TEdit
      Left = 108
      Top = 16
      Width = 52
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      TabOrder = 1
      OnChange = e_codChange
      OnKeyPress = e_codKeyPress
    end
    object suiButton__: TsuiButton
      Left = 56
      Top = 16
      Width = 45
      Height = 22
      Anchors = [akTop]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1662#1585#1610#1606#1578
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton__Click
      ResHandle = 0
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 1
    Top = 296
    Width = 776
    Height = 262
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = Dskharidha
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
        FieldName = 'sh_factor'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jens'
        Title.Alignment = taCenter
        Title.Caption = #1580#1606#1587
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1705#1604#1610
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_koli'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583#1705#1604#1610
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_jozi_dar_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1580#1586#1574#1610' '#1583#1585#1705#1604#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'teded_jozi'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1580#1586#1574#1610
        Width = 65
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_jozei'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583#1580#1586#1574#1610
        Width = 78
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad'
        Title.Alignment = taCenter
        Title.Caption = #1580#1605#1593
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'gheymat'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kol'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1601#1585#1608#1588
        Width = 120
        Visible = True
      end>
  end
  object suiDBGrid2: TsuiDBGrid
    Left = 2
    Top = 40
    Width = 394
    Height = 228
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
    TabOrder = 2
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'code'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1601#1585#1608#1588#1606#1583#1607
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shahrforoshande'
        Title.Alignment = taCenter
        Title.Caption = #1601#1585#1608#1588#1606#1583#1607
        Width = 162
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'shomare'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
        Width = 78
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'time'
        Title.Alignment = taCenter
        Title.Caption = #1587#1575#1593#1578
        Width = 80
        Visible = True
      end>
  end
  object CheckBox2: TCheckBox
    Left = 110
    Top = 17
    Width = 178
    Height = 17
    Anchors = [akTop]
    BiDiMode = bdRightToLeft
    Caption = #1606#1605#1575#1610#1588' '#1607#1605#1607' '#1582#1585#1610#1583#1607#1575' '#1583#1585' '#1607#1605#1607' '#1578#1575#1585#1610#1582#1607#1575
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    OnClick = CheckBox2Click
  end
  object suiButton2: TsuiButton
    Left = 123
    Top = 271
    Width = 153
    Height = 21
    Anchors = [akTop]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1570#1582#1585#1610#1606' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585' '#1582#1585#1610#1583
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
    OnClick = suiButton2Click
    ResHandle = 0
  end
  object DataSource1: TDataSource
    DataSet = DataM_final.ADOQ_t_sh_facrorhaye_kharid
    Left = 272
    Top = 152
  end
  object Dskharidha: TDataSource
    DataSet = Dmlistha.ADOkharidha
    Left = 368
    Top = 432
  end
  object dsshakhs: TDataSource
    DataSet = DataModule1.ADOQuery3
    Left = 872
    Top = 168
  end
end
