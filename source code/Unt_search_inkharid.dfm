object Frm_search_inkharid: TFrm_search_inkharid
  Left = 189
  Top = 166
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1580#1587#1578#1580#1608' '#1583#1585' '#1582#1585#1610#1583#1607#1575
  ClientHeight = 578
  ClientWidth = 793
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
    793
    578)
  PixelsPerInch = 96
  TextHeight = 13
  object suiDBGrid1: TsuiDBGrid
    Left = 3
    Top = 215
    Width = 787
    Height = 354
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = Dskharid
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
        Title.Caption = #1601#1585#1608#1588#1606#1583#1607
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jens'
        Title.Alignment = taCenter
        Title.Caption = #1580#1606#1587
        Width = 109
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1705#1604#1610
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_koli'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583#1705#1604#1610
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_jozi_dar_koli'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610' '#1583#1585' '#1705#1604#1610
        Width = 93
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'teded_jozi'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1580#1586#1574#1610
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_jozei'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583#1580#1586#1574#1610
        Width = 46
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'gheymat'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583#1580#1586#1574#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1705#1604
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kol'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604' '#1582#1585#1610#1583
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582
        Width = 100
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 528
    Top = 7
    Width = 260
    Height = 78
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1606#1608#1593' '#1580#1587#1578#1580#1608'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 3
    Items.Strings = (
      #1576#1585' '#1575#1587#1575#1587' '#1607#1605#1607' '#1582#1585#1610#1583#1607#1575
      #1576#1585' '#1575#1587#1575#1587' '#1587#1575#1604
      #1576#1585' '#1575#1587#1575#1587' '#1587#1575#1604' '#1608' '#1605#1575#1607
      #1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 7
    Width = 505
    Height = 204
    BiDiMode = bdRightToLeft
    Caption = #1711#1586#1575#1585#1588' '#1705#1604#1610' '#1575#1586' '#1575#1605#1608#1585' '#1605#1575#1604#1610'  '
    Ctl3D = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    object Label7: TLabel
      Left = 320
      Top = 67
      Width = 176
      Height = 13
      Caption = #1575#1585#1586#1588' '#1605#1576#1575#1604#1594' '#1662#1585#1583#1575#1582#1578#1610' '#1670#1705' '#1607#1606#1711#1575#1605' '#1582#1585#1610#1583'  :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 320
      Top = 96
      Width = 176
      Height = 13
      Caption = #1575#1585#1586#1588' '#1605#1576#1575#1604#1594' '#1662#1585#1583#1575#1582#1578#1610' '#1606#1602#1583' '#1607#1606#1711#1575#1605' '#1582#1585#1610#1583'   :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 375
      Top = 39
      Width = 121
      Height = 13
      Caption = #1575#1585#1586#1588' '#1705#1604' '#1582#1585#1610#1583#1607#1575'              :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lserchtype: TLabel
      Left = 4
      Top = 16
      Width = 493
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 278
      Top = 125
      Width = 218
      Height = 13
      Caption = #1575#1585#1586#1588' '#1605#1576#1575#1604#1594#1610' '#1705#1607' '#1607#1606#1711#1575#1605' '#1582#1585#1610#1583' '#1576#1583#1607#1705#1575#1585' '#1588#1583#1607' '#1575#1610#1583'  :  '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 6
      Top = 91
      Width = 262
      Height = 22
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'nagd_kol'
      DataSource = DataSource2
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 6
      Top = 62
      Width = 262
      Height = 22
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'check_kol'
      DataSource = DataSource3
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 6
      Top = 34
      Width = 262
      Height = 22
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'kol_'
      DataSource = DataSource4
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 6
      Top = 120
      Width = 262
      Height = 22
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'bedeh_kol'
      DataSource = DataSource5
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 280
      Top = 155
      Width = 216
      Height = 13
      Caption = #1575#1585#1586#1588' '#1605#1576#1575#1604#1594#1610' '#1705#1607' '#1607#1606#1711#1575#1605' '#1582#1585#1610#1583' '#1591#1604#1576#1705#1575#1585' '#1588#1583#1607' '#1575#1610#1583'  :  '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 6
      Top = 150
      Width = 262
      Height = 22
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'talab_kol'
      DataSource = DataSource5
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 6
      Top = 178
      Width = 262
      Height = 22
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      DataField = 'keray_kol'
      DataSource = DataSource6
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 274
      Top = 183
      Width = 222
      Height = 13
      Caption = #1575#1585#1586#1588' '#1605#1576#1575#1604#1594' '#1662#1585#1583#1575#1582#1578#1610' '#1576#1607' '#1593#1606#1608#1575#1606' '#1705#1585#1575#1610#1607' '#1576#1585#1575#1610' '#1582#1585#1610#1583#1607#1575' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object G_sal_mah_roz: TGroupBox
    Left = 528
    Top = 92
    Width = 260
    Height = 103
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585#1575#1587#1575#1587' '#1587#1575#1604' '#1548' '#1605#1575#1607' '#1608' '#1585#1608#1586' '#1582#1585#1610#1583
    Ctl3D = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
    object Label3: TLabel
      Left = 214
      Top = 80
      Width = 38
      Height = 13
      Caption = #1585#1608#1586'       :'
    end
    object Label5: TLabel
      Left = 212
      Top = 26
      Width = 40
      Height = 13
      Caption = #1587#1575#1604'     :'
    end
    object Label6: TLabel
      Left = 213
      Top = 52
      Width = 39
      Height = 13
      Caption = #1605#1575#1607'       :'
    end
    object btaeedall: TsuiButton
      Left = 65
      Top = 76
      Width = 45
      Height = 21
      Caption = #1578#1575#1610#1610#1583
      AutoSize = False
      UIStyle = WinXP
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btaeedallClick
      ResHandle = 0
    end
    object scsalall: TDBLookupComboBox
      Left = 114
      Top = 24
      Width = 87
      Height = 21
      BiDiMode = bdRightToLeft
      Ctl3D = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'sal'
      ListField = 'sal'
      ListSource = DataSource1
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object scmahall: TComboBox
      Left = 115
      Top = 50
      Width = 87
      Height = 21
      ItemHeight = 13
      TabOrder = 1
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
    object scrooz: TComboBox
      Left = 115
      Top = 76
      Width = 87
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20'
        '21'
        '22'
        '23'
        '24'
        '25'
        '26'
        '27'
        '28'
        '29'
        '30'
        '31')
    end
  end
  object G_sal_mah: TGroupBox
    Left = 528
    Top = 92
    Width = 260
    Height = 74
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585#1575#1587#1575#1587' '#1587#1575#1604' '#1608' '#1605#1575#1607' '#1582#1585#1610#1583
    Ctl3D = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    DesignSize = (
      260
      74)
    object Label2: TLabel
      Left = 214
      Top = 51
      Width = 39
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1575#1607'       :'
    end
    object Label4: TLabel
      Left = 213
      Top = 26
      Width = 40
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1587#1575#1604'     :'
    end
    object suiButton1: TsuiButton
      Left = 66
      Top = 47
      Width = 45
      Height = 21
      Anchors = [akTop, akRight]
      ParentColor = False
      Caption = #1578#1575#1610#1610#1583
      AutoSize = False
      UIStyle = WinXP
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      ResHandle = 0
    end
    object scsal2: TDBLookupComboBox
      Left = 115
      Top = 24
      Width = 87
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Ctl3D = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'sal'
      ListField = 'sal'
      ListSource = DataSource1
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object scmah: TComboBox
      Left = 116
      Top = 48
      Width = 87
      Height = 21
      Anchors = [akTop, akRight]
      ItemHeight = 13
      TabOrder = 1
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
  end
  object G_sal: TGroupBox
    Left = 528
    Top = 92
    Width = 260
    Height = 50
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585#1575#1587#1575#1587' '#1587#1575#1604' '#1582#1585#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      260
      50)
    object Label1: TLabel
      Left = 211
      Top = 26
      Width = 40
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1587#1575#1604'     :'
    end
    object scsal: TDBLookupComboBox
      Left = 116
      Top = 24
      Width = 87
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Ctl3D = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'sal'
      ListField = 'sal'
      ListSource = DataSource1
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = scsalClick
    end
  end
  object G_hame: TGroupBox
    Left = 528
    Top = 92
    Width = 260
    Height = 36
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1607#1605#1607' '#1582#1585#1610#1583#1607#1575
    Ctl3D = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    DesignSize = (
      260
      36)
    object chall: TPDJXPCheckBox
      Left = 172
      Top = 16
      Width = 78
      Height = 17
      Alignment = taLeftJustify
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Caption = #1607#1605#1607' '#1582#1585#1610#1583#1607#1575
      Checked = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnClick = challClick
    end
  end
  object dxToolButton121: TdxToolButton
    Left = 0
    Top = 0
    Hint = #1601#1575#1705#1578#1608#1585
    Align = alLeft
    ParentShowHint = False
    ShowHint = True
    OnClick = dxToolButton121Click
    ToolType = ttRestore
  end
  object dxToolButton1: TdxToolButton
    Left = 15
    Top = 0
    Hint = #1575#1585#1587#1575#1604' '#1576#1607' '#1662#1585#1610#1606#1578#1585
    Align = alLeft
    ParentShowHint = False
    ShowHint = True
    OnClick = dxToolButton1Click
    ToolType = ttArrowLeft
  end
  object Dskharid: TDataSource
    DataSet = Dmlistha.ADOkharidha
    Left = 400
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOQsaljadid
    Left = 605
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = DataM_final.ADOQ_jame_t_pardakht_nagd_kharid
    Left = 42
    Top = 21
  end
  object DataSource3: TDataSource
    DataSet = DataM_final.ADOQ_T_jame_pardakht_check_kharid
    Left = 154
    Top = 21
  end
  object DataSource4: TDataSource
    DataSet = Dmlistha.ADOmohasebe_kharid
    Left = 122
    Top = 29
  end
  object DataSource5: TDataSource
    DataSet = DataM_final.ADOQ_jame_bede_talab_dar_kharid
    Left = 74
    Top = 21
  end
  object DataSource6: TDataSource
    DataSet = Dmlistha.ADOmohasebe_jame_keraye_kharidha
    Left = 202
    Top = 21
  end
end
