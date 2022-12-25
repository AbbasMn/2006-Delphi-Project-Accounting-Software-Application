object Frm_search: TFrm_search
  Left = 70
  Top = 104
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1580#1587#1578#1580#1608#1583#1585' '#1601#1585#1608#1588#1607#1575
  ClientHeight = 578
  ClientWidth = 781
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
    781
    578)
  PixelsPerInch = 96
  TextHeight = 13
  object suiDBGrid1: TsuiDBGrid
    Left = 5
    Top = 219
    Width = 772
    Height = 355
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
    TabOrder = 5
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
        FieldName = 'shahrforoshande'
        Title.Alignment = taCenter
        Title.Caption = #1582#1585#1610#1583#1575#1585
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jens'
        Title.Alignment = taCenter
        Title.Caption = #1580#1606#1587
        Width = 170
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
        FieldName = 'tedad'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1580#1586#1574#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'vahed_jozei'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583#1580#1586#1574#1610
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_vahed'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1580#1586#1574#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad_kol'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1705#1604
        Width = 36
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'geymat_jens'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1601#1585#1608#1588
        Width = 100
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 519
    Top = 14
    Width = 256
    Height = 78
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1606#1608#1593' '#1580#1587#1578#1580#1608'  '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 3
    Items.Strings = (
      #1576#1585' '#1575#1587#1575#1587' '#1607#1605#1607' '#1601#1585#1608#1588#1607#1575
      #1576#1585' '#1575#1587#1575#1587' '#1587#1575#1604
      #1576#1585' '#1575#1587#1575#1587' '#1587#1575#1604' '#1608' '#1605#1575#1607
      #1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object GroupBox5: TGroupBox
    Left = 7
    Top = 12
    Width = 495
    Height = 204
    BiDiMode = bdRightToLeft
    Caption = '  '#1711#1586#1575#1585#1588' '#1705#1604#1610' '#1575#1586' '#1575#1605#1608#1585' '#1605#1575#1604#1610'  '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 6
    object Lserchtype: TLabel
      Left = 4
      Top = 17
      Width = 479
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
    object Label10: TLabel
      Left = 363
      Top = 40
      Width = 124
      Height = 13
      Caption = #1575#1585#1586#1588' '#1705#1604' '#1601#1585#1608#1588#1607#1575'              :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 2
      Top = 36
      Width = 260
      Height = 20
      Alignment = taCenter
      BiDiMode = bdRightToLeftReadingOnly
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
    object Label9: TLabel
      Left = 307
      Top = 125
      Width = 180
      Height = 13
      Caption = #1575#1585#1586#1588' '#1605#1576#1575#1604#1594' '#1583#1585#1610#1575#1601#1578#1610' '#1606#1602#1583' '#1607#1606#1711#1575#1605' '#1601#1585#1608#1588'   :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 2
      Top = 121
      Width = 260
      Height = 20
      Alignment = taCenter
      BiDiMode = bdRightToLeftReadingOnly
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
    object Label7: TLabel
      Left = 304
      Top = 97
      Width = 183
      Height = 13
      Caption = #1575#1585#1586#1588' '#1605#1576#1575#1604#1594' '#1583#1585#1610#1575#1601#1578#1610' '#1670#1705' '#1607#1606#1711#1575#1605' '#1601#1585#1608#1588'   :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 264
      Top = 154
      Width = 223
      Height = 13
      Caption = #1575#1585#1586#1588' '#1605#1576#1575#1604#1594#1610' '#1705#1607' '#1607#1606#1711#1575#1605' '#1601#1585#1608#1588' '#1591#1604#1576#1705#1575#1585' '#1588#1583#1607' '#1575#1610#1583'  :  '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 2
      Top = 150
      Width = 260
      Height = 20
      Alignment = taCenter
      BiDiMode = bdRightToLeftReadingOnly
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
      Left = 262
      Top = 183
      Width = 225
      Height = 13
      Caption = #1575#1585#1586#1588' '#1605#1576#1575#1604#1594#1610' '#1705#1607' '#1607#1606#1711#1575#1605' '#1601#1585#1608#1588' '#1576#1583#1607#1705#1575#1585' '#1588#1583#1607' '#1575#1610#1583'  :  '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 2
      Top = 179
      Width = 260
      Height = 20
      Alignment = taCenter
      BiDiMode = bdRightToLeftReadingOnly
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
    object DBText2: TDBText
      Left = 2
      Top = 93
      Width = 260
      Height = 20
      Alignment = taCenter
      BiDiMode = bdRightToLeftReadingOnly
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
    object Label12: TLabel
      Left = 293
      Top = 68
      Width = 194
      Height = 13
      Caption = #1575#1585#1586#1588' '#1605#1576#1575#1604#1594' '#1578#1582#1601#1610#1601' '#1583#1575#1583#1607' '#1588#1583#1607' '#1607#1606#1711#1575#1605' '#1601#1585#1608#1588':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 2
      Top = 64
      Width = 260
      Height = 20
      Alignment = taCenter
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'takhfife_kol'
      DataSource = DataSource6
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
  end
  object G_sal_mah_roz: TGroupBox
    Left = 518
    Top = 99
    Width = 258
    Height = 103
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585#1575#1587#1575#1587' '#1587#1575#1604' '#1548' '#1605#1575#1607' '#1608' '#1585#1608#1586' '#1601#1585#1608#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    object Label3: TLabel
      Left = 214
      Top = 81
      Width = 38
      Height = 13
      Caption = #1585#1608#1586'       :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 212
      Top = 26
      Width = 40
      Height = 13
      Caption = #1587#1575#1604'     :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 213
      Top = 53
      Width = 39
      Height = 13
      Caption = #1605#1575#1607'       :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btaeedall: TsuiButton
      Left = 65
      Top = 79
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
      Width = 90
      Height = 21
      BiDiMode = bdRightToLeft
      Ctl3D = True
      DataField = 'sal'
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
      Top = 51
      Width = 88
      Height = 21
      Style = csDropDownList
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
        #1575#1587#1601#1606#1583
        '')
    end
    object scrooz: TComboBox
      Left = 115
      Top = 78
      Width = 88
      Height = 21
      Style = csDropDownList
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
        '31'
        '')
    end
  end
  object G_sal_mah: TGroupBox
    Left = 518
    Top = 99
    Width = 258
    Height = 74
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585#1575#1587#1575#1587' '#1587#1575#1604' '#1608' '#1605#1575#1607' '#1601#1585#1608#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    object Label2: TLabel
      Left = 213
      Top = 51
      Width = 39
      Height = 13
      Caption = #1605#1575#1607'       :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 212
      Top = 26
      Width = 40
      Height = 13
      Caption = #1587#1575#1604'     :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object suiButton1: TsuiButton
      Left = 65
      Top = 47
      Width = 45
      Height = 21
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
      Top = 21
      Width = 88
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
    object scmah: TComboBox
      Left = 115
      Top = 47
      Width = 88
      Height = 21
      Style = csDropDownList
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
        #1575#1587#1601#1606#1583
        '')
    end
  end
  object G_sal: TGroupBox
    Left = 518
    Top = 99
    Width = 258
    Height = 50
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585#1575#1587#1575#1587' '#1587#1575#1604' '#1601#1585#1608#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 212
      Top = 26
      Width = 40
      Height = 13
      Caption = #1587#1575#1604'     :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object scsal: TDBLookupComboBox
      Left = 116
      Top = 21
      Width = 88
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
      OnClick = scsalClick
    end
  end
  object G_hame: TGroupBox
    Left = 518
    Top = 99
    Width = 258
    Height = 36
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1607#1605#1607' '#1601#1585#1608#1588#1607#1575
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object chall: TPDJXPCheckBox
      Left = 168
      Top = 15
      Width = 78
      Height = 17
      Alignment = taLeftJustify
      Caption = #1607#1605#1607' '#1601#1585#1608#1588#1607#1575
      Checked = False
      Color = clBtnFace
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      OnClick = challClick
    end
  end
  object dxToolButton12: TdxToolButton
    Left = 0
    Top = 0
    Hint = #1601#1575#1705#1578#1608#1585
    Align = alLeft
    ParentShowHint = False
    ShowHint = True
    OnClick = dxToolButton12Click
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
  object Dskharidha: TDataSource
    DataSet = Dmlistha.adolistforosh
    Left = 128
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOQsaljadid
    Left = 575
    Top = 51
  end
  object DataSource4: TDataSource
    DataSet = Dmlistha.ADOmohasebe_forosh
    Left = 74
    Top = 69
  end
  object DataSource2: TDataSource
    DataSet = DataM_final.ADOQ_jame_t_pardakht_nagd_forosh
    Left = 250
    Top = 61
  end
  object DataSource3: TDataSource
    DataSet = DataM_final.ADOQ_T_jame_pardakht_check_forosh
    Left = 90
    Top = 29
  end
  object DataSource5: TDataSource
    DataSet = DataM_final.ADOQ_jame_bede_talab_dar_forosh
    Left = 42
    Top = 85
  end
  object DataSource6: TDataSource
    DataSet = DataM_final.ADOQ_jame_takhfife
    Left = 231
    Top = 100
  end
end
