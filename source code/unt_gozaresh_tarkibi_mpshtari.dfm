object Frm_gozaresh_tarkibi_mpshtari: TFrm_gozaresh_tarkibi_mpshtari
  Left = 154
  Top = 129
  BorderStyle = bsDialog
  Caption = #1711#1586#1575#1585#1588' '#1578#1585#1705#1610#1576#1610' '#1575#1586' '#1575#1605#1608#1585#1605#1575#1604#1610' '#1582#1585#1610#1583#1575#1585
  ClientHeight = 544
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
    544)
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 370
    Top = 104
    Width = 93
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1605#1588#1582#1589#1575#1578' '#1582#1585#1610#1583#1575#1585'   : '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 2
    Top = 100
    Width = 368
    Height = 20
    Alignment = taCenter
    DataField = 'shahrforoshande'
    DataSource = dsshakhs
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object L_type_: TLabel
    Left = 2
    Top = 72
    Width = 472
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1575#1585#1586#1588' '#1582#1585#1610#1583#1607#1575' '#1575#1586' '#1601#1585#1608#1588#1606#1583#1607' '#1583#1585' '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox8: TGroupBox
    Left = 477
    Top = 5
    Width = 315
    Height = 536
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1582#1585#1610#1583#1575#1585'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      315
      536)
    object Label8: TLabel
      Left = 240
      Top = 32
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
    object Label10: TLabel
      Left = 81
      Top = 32
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
      Left = 6
      Top = 112
      Width = 305
      Height = 419
      TabStop = False
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
          Expanded = False
          FieldName = 'shahrforoshande'
          Title.Alignment = taCenter
          Title.Caption = #1582#1585#1610#1583#1575#1585
          Width = 215
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'code'
          Title.Alignment = taCenter
          Title.Caption = #1705#1583
          Width = 50
          Visible = True
        end>
    end
    object GroupBox13: TGroupBox
      Left = 7
      Top = 57
      Width = 302
      Height = 51
      Anchors = [akLeft, akTop, akRight]
      Caption = '  '#1605#1588#1575#1607#1583#1607' / '#1662#1585#1610#1606#1578' '#1711#1586#1575#1585#1588'  '
      TabOrder = 3
      DesignSize = (
        302
        51)
      object suiButton66: TsuiButton
        Left = 53
        Top = 18
        Width = 84
        Height = 25
        Anchors = []
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = #1605#1588#1575#1607#1583#1607' '#1711#1586#1575#1585#1588
        AutoSize = False
        ParentFont = False
        UIStyle = WinXP
        TabOrder = 0
        Transparent = False
        ModalResult = 0
        FocusedRectMargin = 2
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        OnClick = suiButton66Click
        ResHandle = 0
      end
      object suiButton6: TsuiButton
        Left = 165
        Top = 18
        Width = 84
        Height = 25
        Anchors = []
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1662#1585#1610#1606#1578#1585
        AutoSize = False
        ParentFont = False
        UIStyle = WinXP
        TabOrder = 1
        Transparent = False
        ModalResult = 0
        FocusedRectMargin = 2
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        OnClick = suiButton6Click
        ResHandle = 0
      end
    end
    object esearch: TEdit
      Left = 135
      Top = 27
      Width = 103
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
      Left = 26
      Top = 27
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
  object GroupBox3: TGroupBox
    Left = 2
    Top = 5
    Width = 474
    Height = 62
    BiDiMode = bdRightToLeft
    Caption = #1606#1608#1593' '#1711#1586#1575#1585#1588' '#1711#1610#1585#1610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object RadioGroup1: TRadioGroup
      Left = 4
      Top = 15
      Width = 466
      Height = 40
      BiDiMode = bdRightToLeft
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #1711#1586#1575#1585#1588' '#1578#1585#1705#1610#1576#1610' '#1575#1586' '#1705#1604' '#1587#1575#1604#1607#1575' '
        #1711#1586#1575#1585#1588' '#1578#1585#1705#1610#1576#1610' '#1575#1586' '#1587#1575#1604
        #1711#1586#1575#1585#1588' '#1578#1585#1705#1610#1576#1610' '#1575#1586' '#1587#1575#1604' '#1608' '#1605#1575#1607)
      ParentBiDiMode = False
      TabOrder = 0
      TabStop = True
      OnClick = RadioGroup1Click
    end
  end
  object Groupbox_salha: TGroupBox
    Left = 2
    Top = 174
    Width = 474
    Height = 367
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      474
      367)
    object Label6: TLabel
      Left = 271
      Top = 25
      Width = 181
      Height = 26
      Caption = #1575#1585#1586#1588' '#1582#1585#1610#1583#1607#1575#1610' '#1588#1582#1589'                  :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText14: TDBText
      Left = 4
      Top = 26
      Width = 250
      Height = 19
      Alignment = taCenter
      Anchors = [akTop, akRight]
      DataField = 'kol_'
      DataSource = DataSource1
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText15: TDBText
      Left = 4
      Top = 106
      Width = 250
      Height = 19
      Alignment = taCenter
      Anchors = [akTop, akRight]
      DataField = 'bedeh_kol'
      DataSource = DataSource2
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label_bedehi_be_foroshande_salha: TLabel
      Left = 271
      Top = 105
      Width = 195
      Height = 26
      Caption = #1575#1585#1586#1588' '#1576#1583#1607#1610' '#1588#1582#1589' '#1607#1606#1711#1575#1605' '#1582#1585#1610#1583'       :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 271
      Top = 146
      Width = 194
      Height = 26
      Caption = #1575#1585#1586#1588' '#1591#1604#1576' '#1588#1582#1589' '#1607#1606#1711#1575#1605' '#1582#1585#1610#1583'        :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText16: TDBText
      Left = 4
      Top = 147
      Width = 250
      Height = 19
      Alignment = taCenter
      Anchors = [akTop, akRight]
      DataField = 'talab_kol'
      DataSource = DataSource2
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 271
      Top = 186
      Width = 188
      Height = 26
      Caption = #1575#1585#1586#1588' '#1662#1585#1583#1575#1582#1578#1607#1575' '#1610' '#1606#1602#1583' '#1588#1582#1589'          :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 271
      Top = 224
      Width = 189
      Height = 26
      Caption = #1575#1585#1586#1588' '#1662#1585#1583#1575#1582#1578#1607#1575#1610' '#1670#1705' '#1588#1582#1589'         :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText20: TDBText
      Left = 4
      Top = 187
      Width = 250
      Height = 19
      Alignment = taCenter
      Anchors = [akTop, akRight]
      DataField = 'nagd_kol'
      DataSource = DataSource4
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText21: TDBText
      Left = 4
      Top = 225
      Width = 250
      Height = 19
      Alignment = taCenter
      Anchors = [akTop, akRight]
      DataField = 'check_kol'
      DataSource = DataSource5
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 271
      Top = 312
      Width = 202
      Height = 26
      Caption = #1605#1576#1604#1594#1610' '#1705#1607' '#1588#1582#1589' '#1576#1607' '#1588#1605#1575' '#1576#1583#1607#1705#1575#1585' '#1575#1587#1578':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 4
      Top = 312
      Width = 250
      Height = 20
      Alignment = taCenter
      Anchors = [akTop, akRight]
      DataField = 'bedeh'
      DataSource = DataSource7
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText9: TDBText
      Left = 4
      Top = 345
      Width = 250
      Height = 20
      Alignment = taCenter
      Anchors = [akTop, akRight]
      DataField = 'talab'
      DataSource = DataSource7
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 271
      Top = 343
      Width = 200
      Height = 22
      Caption = #1605#1576#1604#1594#1610' '#1705#1607' '#1588#1582#1589' '#1575#1586' '#1588#1605#1575' '#1591#1604#1576#1705#1575#1585' '#1575#1587#1578':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 115
      Top = 168
      Width = 244
      Height = 13
      Caption = '-------------------------------------------------------------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 115
      Top = 249
      Width = 244
      Height = 13
      Caption = '-------------------------------------------------------------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 115
      Top = 295
      Width = 244
      Height = 13
      Caption = '-------------------------------------------------------------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_t: TLabel
      Left = 271
      Top = 269
      Width = 188
      Height = 26
      Caption = #1575#1585#1586#1588' '#1662#1585#1583#1575#1582#1578#1607#1575#1610' '#1576#1583#1607#1610' '#1588#1582#1589'       :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText10: TDBText
      Left = 4
      Top = 270
      Width = 250
      Height = 19
      Alignment = taCenter
      Anchors = [akTop, akRight]
      DataField = 'kol_'
      DataSource = DataSource6
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 271
      Top = 65
      Width = 198
      Height = 26
      Caption = #1575#1585#1586#1588' '#1605#1576#1575#1604#1594' '#1578#1582#1601#1610#1601' '#1711#1585#1601#1578#1607' '#1588#1583#1607'         :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 4
      Top = 66
      Width = 250
      Height = 19
      Alignment = taCenter
      Anchors = [akTop, akRight]
      DataField = 'takhfife_kol'
      DataSource = DataSource8
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object G_sal: TGroupBox
    Left = 2
    Top = 125
    Width = 474
    Height = 48
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 309
      Top = 22
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
      Left = 125
      Top = 18
      Width = 88
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
      ListSource = DataSource3
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = scsalClick
    end
  end
  object G_mah: TGroupBox
    Left = 2
    Top = 125
    Width = 474
    Height = 48
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    object Label4: TLabel
      Left = 330
      Top = 22
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
    object Label5: TLabel
      Left = 167
      Top = 22
      Width = 33
      Height = 13
      Caption = #1605#1575#1607'     :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object scsal2: TDBLookupComboBox
      Left = 231
      Top = 18
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
      ListSource = DataSource3
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = scsal2Click
    end
    object scmah: TComboBox
      Left = 69
      Top = 18
      Width = 88
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = scmahChange
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
  object dsshakhs: TDataSource
    DataSet = DataModule1.ADOQuery3
    Left = 592
    Top = 152
  end
  object DataSource3: TDataSource
    DataSet = DataModule1.ADOQsaljadid
    Left = 441
    Top = 2
  end
  object DataSource1: TDataSource
    DataSet = Dmlistha.ADOmohasebe_forosh
    Left = 416
    Top = 168
  end
  object DataSource2: TDataSource
    DataSet = DataM_final.ADOQ_jame_bede_talab_dar_forosh
    Left = 392
    Top = 248
  end
  object DataSource4: TDataSource
    DataSet = DataM_final.ADOQ_jame_t_pardakht_nagd_forosh
    Left = 380
    Top = 363
  end
  object DataSource5: TDataSource
    DataSet = DataM_final.ADOQ_T_jame_pardakht_check_forosh
    Left = 420
    Top = 427
  end
  object DataSource6: TDataSource
    DataSet = DataModule1.ADOQuery_jame_pardakht_kharidar
    Left = 367
    Top = 494
  end
  object DataSource7: TDataSource
    DataSet = DataM_final.ADOQ_bedeh_be_kharidar
    Left = 295
    Top = 502
  end
  object DataSource8: TDataSource
    DataSet = DataM_final.ADOQ_jame_takhfife
    Left = 34
    Top = 232
  end
end
