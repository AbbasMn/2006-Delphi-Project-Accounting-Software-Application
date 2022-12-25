object Frm_jadval_checkhaye_pasnashode: TFrm_jadval_checkhaye_pasnashode
  Left = 153
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '#1670#1705#1607#1575#1610' '#1662#1575#1587' '#1606#1588#1583#1607
  ClientHeight = 413
  ClientWidth = 722
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
    722
    413)
  PixelsPerInch = 96
  TextHeight = 13
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
  object suiDBGrid1: TsuiDBGrid
    Left = 2
    Top = 136
    Width = 717
    Height = 270
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
        FieldName = 'shahrforoshande'
        Title.Alignment = taCenter
        Title.Caption = #1589#1575#1581#1576' '#1670#1705
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sh_hesab'
        Title.Alignment = taCenter
        Title.Caption = #1576#1575#1606#1705' '#1588#1593#1576#1607' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'mablagh_check'
        Title.Alignment = taCenter
        Title.Caption = #1605#1576#1604#1594' '#1670#1705
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sh_check'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1670#1705
        Width = 110
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh_kharid'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1670#1705
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh_kharid'
        Title.Alignment = taCenter
        Title.Caption = ' '#1578#1575#1585#1610#1582' '#1601#1585#1608#1588
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'pass'
        Title.Alignment = taCenter
        Title.Caption = #1662#1575#1587' '#1588#1583#1606
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 13
    Top = 6
    Width = 706
    Height = 69
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1606#1608#1593' '#1711#1586#1575#1585#1588' '#1711#1610#1585#1610
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      706
      69)
    object RadioGroup1: TRadioGroup
      Left = 389
      Top = 8
      Width = 219
      Height = 55
      Anchors = [akTop, akRight]
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1578#1575#1585#1610#1582' '#1670#1705
        #1587#1575#1604' '#1670#1705
        #1670#1705' '#1576#1610#1606' '#1583#1608#1578#1575#1585#1610#1582
        #1607#1605#1607' '#1587#1575#1604#1607#1575)
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object g_sal: TGroupBox
      Left = 98
      Top = 14
      Width = 221
      Height = 49
      Caption = ' '#1576#1585' '#1575#1587#1575#1587' '#1587#1575#1604'  '
      TabOrder = 1
      object Label1: TLabel
        Left = 170
        Top = 22
        Width = 31
        Height = 13
        Caption = ' '#1587#1575#1604' :'
      end
      object scsal: TDBLookupComboBox
        Left = 36
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
        ListSource = DataSource1
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnClick = scsalClick
      end
    end
    object g_tarikh: TGroupBox
      Left = 98
      Top = 14
      Width = 221
      Height = 49
      Caption = #1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582' '
      TabOrder = 2
      object RadioGroup2: TRadioGroup
        Left = 113
        Top = 13
        Width = 100
        Height = 31
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          #1575#1605#1585#1608#1586
          #1594#1610#1585#1607)
        TabOrder = 0
        TabStop = True
        OnClick = RadioGroup2Click
      end
      object MaskEditrooz: TMaskEdit
        Left = 67
        Top = 20
        Width = 29
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
        OnChange = MaskEditroozChange
      end
      object MaskEditmah: TMaskEdit
        Left = 41
        Top = 20
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
        TabOrder = 2
        Text = '  '
      end
      object MaskEditsal: TMaskEdit
        Left = 5
        Top = 20
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
    end
    object g_b_tarikh: TGroupBox
      Left = 98
      Top = 8
      Width = 221
      Height = 58
      Caption = ' '#1576#1610#1606' '#1583#1608' '#1578#1575#1585#1610#1582'   '
      TabOrder = 3
      object Label7: TLabel
        Left = 116
        Top = 12
        Width = 41
        Height = 13
        Caption = #1575#1586' '#1578#1575#1585#1610#1582'  :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 82
        Top = 12
        Width = 4
        Height = 13
        Caption = '/'
      end
      object Label11: TLabel
        Left = 51
        Top = 12
        Width = 4
        Height = 13
        Caption = '/'
      end
      object Label8: TLabel
        Left = 117
        Top = 39
        Width = 40
        Height = 13
        Caption = #1578#1575' '#1578#1575#1585#1610#1582'  :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 82
        Top = 35
        Width = 4
        Height = 13
        Caption = '/'
      end
      object Label12: TLabel
        Left = 51
        Top = 35
        Width = 4
        Height = 13
        Caption = '/'
      end
      object E_roz_ebteda: TEdit
        Left = 87
        Top = 7
        Width = 23
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 0
      end
      object E_mah_ebteda: TEdit
        Left = 55
        Top = 7
        Width = 23
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 1
      end
      object E_sal_ebteda: TEdit
        Left = 6
        Top = 7
        Width = 43
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 5
        ParentFont = False
        TabOrder = 2
      end
      object E_roz_enteha: TEdit
        Left = 87
        Top = 30
        Width = 23
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 3
      end
      object E_mah_enteha: TEdit
        Left = 55
        Top = 30
        Width = 23
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 4
      end
      object E_sal_enteha: TEdit
        Left = 6
        Top = 30
        Width = 43
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 5
        ParentFont = False
        TabOrder = 5
      end
      object suiButton1: TsuiButton
        Left = 171
        Top = 26
        Width = 25
        Height = 18
        Caption = #1578#1575#1610#1610#1583
        AutoSize = False
        UIStyle = WinXP
        TabOrder = 6
        Transparent = False
        ModalResult = 0
        FocusedRectMargin = 2
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        OnClick = suiButton1Click
        ResHandle = 0
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 457
    Top = 75
    Width = 230
    Height = 60
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1588#1605#1575#1585#1607' '#1670#1705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      230
      60)
    object Label2: TLabel
      Left = 153
      Top = 25
      Width = 70
      Height = 13
      Anchors = [akTop, akRight]
      Caption = ' '#1588#1605#1575#1585#1607' '#1670#1705'    :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Esearch2: TEdit
      Left = 6
      Top = 22
      Width = 142
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      TabOrder = 0
      OnChange = Esearch2Change
      OnKeyPress = Esearch2KeyPress
    end
  end
  object GroupBox3: TGroupBox
    Left = 32
    Top = 75
    Width = 230
    Height = 60
    BiDiMode = bdRightToLeft
    Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1606#1575#1605' '#1589#1575#1581#1576' '#1670#1705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    object Label3: TLabel
      Left = 155
      Top = 26
      Width = 66
      Height = 13
      Caption = #1589#1575#1581#1576' '#1670#1705'    :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object esearch: TEdit
      Left = 4
      Top = 22
      Width = 144
      Height = 22
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
    DataSet = DataM_final.ADOQ_T_pardakht_check_forosh
    Left = 304
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOQsaljadid
    Left = 40
    Top = 16
  end
end
