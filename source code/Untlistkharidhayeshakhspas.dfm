object frm_kharidhaye_shakhs: Tfrm_kharidhaye_shakhs
  Left = 153
  Top = 168
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1582#1585#1610#1583' '#1607#1575#1610' '#1607#1585' '#1588#1582#1589
  ClientHeight = 578
  ClientWidth = 782
  Color = clBtnFace
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
    782
    578)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 376
    Top = 2
    Width = 403
    Height = 44
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608#1610' '#1588#1582#1589
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      403
      44)
    object Label4: TLabel
      Left = 332
      Top = 18
      Width = 63
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1588#1582#1589'    :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 84
      Top = 18
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
    object esearch: TEdit
      Left = 160
      Top = 13
      Width = 144
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
    object e_cod: TEdit
      Left = 22
      Top = 13
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
  end
  object RadioGroup1: TRadioGroup
    Left = 5
    Top = 8
    Width = 367
    Height = 38
    BiDiMode = bdRightToLeft
    Columns = 2
    Ctl3D = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1582#1585#1610#1583#1607#1575#1610' '#1588#1582#1589' '#1583#1585' '#1587#1575#1604
      #1582#1585#1610#1583#1607#1575#1610' '#1588#1582#1589' '#1583#1585' '#1587#1575#1604' '#1608#1605#1575#1607)
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object suiGroupBox1: TsuiGroupBox
    Left = -2
    Top = 48
    Width = 780
    Height = 48
    UIStyle = MacOS
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
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
      780
      48)
    object Label1: TLabel
      Left = 451
      Top = 20
      Width = 60
      Height = 13
      Anchors = [akTop]
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CheckBox1: TCheckBox
      Left = 655
      Top = 18
      Width = 83
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1607#1605#1607' '#1587#1575#1604#1607#1575' '
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object scsal: TDBLookupComboBox
      Left = 350
      Top = 16
      Width = 88
      Height = 21
      Anchors = []
      BiDiMode = bdRightToLeft
      Ctl3D = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'sal'
      ListField = 'sal'
      ListSource = DataSource_sal1
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnClick = scsalClick
    end
    object dtb_salha: TdxToolButton
      Left = 3
      Top = 16
      Hint = #1575#1585#1587#1575#1604' '#1576#1607' '#1662#1585#1610#1606#1578#1585
      Align = alTop
      ParentShowHint = False
      ShowHint = True
      OnClick = dtb_salhaClick
      ToolType = ttArrowLeft
    end
    object dtb_salha1: TdxToolButton
      Left = 3
      Top = 31
      Hint = #1601#1575#1705#1578#1608#1585
      Align = alTop
      ParentShowHint = False
      ShowHint = True
      OnClick = dtb_salha1Click
      ToolType = ttRestore
    end
  end
  object suiGroupBox3: TsuiGroupBox
    Left = -2
    Top = 96
    Width = 780
    Height = 46
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
    TabOrder = 3
    BorderColor = 8355711
    DesignSize = (
      780
      46)
    object Label3: TLabel
      Left = 708
      Top = 19
      Width = 60
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 457
      Top = 19
      Width = 71
      Height = 13
      Anchors = [akTop]
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1575#1607'       :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object scsal2: TDBLookupComboBox
      Left = 607
      Top = 18
      Width = 88
      Height = 21
      Anchors = [akTop]
      BiDiMode = bdRightToLeft
      Ctl3D = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'sal'
      ListField = 'sal'
      ListSource = DataSource_sal1
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = scsal2Click
    end
    object scmahall: TComboBox
      Left = 350
      Top = 18
      Width = 88
      Height = 21
      Style = csDropDownList
      Anchors = [akTop]
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = #1601#1585#1608#1585#1583#1610#1606
      OnChange = scmahallChange
      Items.Strings = (
        #1601#1585#1608#1585#1583#1610#1606
        #1575#1585#1583#1610#1576#1607#1588#1578
        #1582#1585#1583#1575#1583
        #1578#1610#1585
        #1605#1585#1583#1575#1583
        #1588#1607#1585#1610#1608#1585
        #1605#1607#1585
        #1570#1576#1575#1606
        #1570#1584#1585
        #1583#1610' '
        #1576#1607#1605#1606
        #1575#1587#1601#1606#1583)
    end
    object dtb_salmah12: TdxToolButton
      Left = 3
      Top = 31
      Hint = #1601#1575#1705#1578#1608#1585
      Align = alTop
      ParentShowHint = False
      ShowHint = True
      OnClick = dtb_salmah12Click
      ToolType = ttRestore
    end
    object dtb_salmah1: TdxToolButton
      Left = 3
      Top = 16
      Hint = #1575#1585#1587#1575#1604' '#1576#1607' '#1662#1585#1610#1606#1578#1585
      Align = alTop
      ParentShowHint = False
      ShowHint = True
      OnClick = dtb_salmah1Click
      ToolType = ttArrowLeft
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 4
    Top = 269
    Width = 774
    Height = 292
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
        FieldName = 'jens'
        Title.Alignment = taCenter
        Title.Caption = #1580#1606#1587
        Width = 82
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
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_jozi_dar_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1580#1586#1574#1610' '#1583#1585#1705#1604#1610' '
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1580#1586#1574#1610
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_jozei'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583#1580#1586#1574#1610
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_vahed'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1580#1586#1574#1610
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_kol'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1705#1604
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_jens'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604' '#1582#1585#1610#1583
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1582#1585#1610#1583
        Width = 100
        Visible = True
      end>
  end
  object suiDbjens: TsuiDBGrid
    Left = 4
    Top = 144
    Width = 773
    Height = 120
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
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
    TabOrder = 5
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
        Title.Caption = #1582#1585#1610#1583#1575#1585
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'code'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583
        Width = 100
        Visible = True
      end>
  end
  object Dskharidha: TDataSource
    DataSet = Dmlistha.adolistforosh
    Left = 336
    Top = 344
  end
  object dsshakhs: TDataSource
    DataSet = DataModule1.ADOQuery3
    Left = 640
    Top = 208
  end
  object DataSource1: TDataSource
    Left = 480
    Top = 88
  end
  object DataSource_sal1: TDataSource
    DataSet = DataModule1.ADOQsaljadid
    Left = 648
    Top = 80
  end
end
