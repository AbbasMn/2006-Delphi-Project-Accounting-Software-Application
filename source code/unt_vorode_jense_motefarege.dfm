object frm_vorode_jense_motefarege: Tfrm_vorode_jense_motefarege
  Left = 185
  Top = 142
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1608#1585#1608#1583' '#1580#1606#1587' '#1605#1608#1580#1608#1583' '#1575#1586' '#1602#1576#1604' '#1576#1607' '#1575#1606#1576#1575#1585' '#1575#1601#1578#1578#1575#1581#1610#1607
  ClientHeight = 523
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 1
    Top = 2
    Width = 342
    Height = 520
    BiDiMode = bdRightToLeft
    Caption = '  '#1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1580#1606#1587' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object l_jans_name: TLabel
      Left = 34
      Top = 140
      Width = 195
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = #1606#1578#1584#1606#1578#1606#1578#1606#1578#1606#1606#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 236
      Top = 142
      Width = 84
      Height = 13
      Caption = #1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610'      :'
    end
    object L_barcod: TLabel
      Left = -3
      Top = 98
      Width = 44
      Height = 13
      Caption = 'L_barcod'
      Visible = False
    end
    object Label12: TLabel
      Left = 236
      Top = 231
      Width = 82
      Height = 13
      Caption = #1705#1583' '#1588#1585#1705#1578#1610' '#1580#1606#1587':'
    end
    object GroupBox_jozei: TGroupBox
      Left = 24
      Top = 316
      Width = 295
      Height = 176
      Caption = '  '#1580#1606#1587' '#1578#1705' '#1608#1575#1581#1583#1610'  '
      TabOrder = 7
      object Label7: TLabel
        Left = 176
        Top = 129
        Width = 108
        Height = 13
        Caption = '*'#1578#1593#1583#1575#1583' ( '#1608#1575#1581#1583' ) '#1580#1606#1587'   :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 176
        Top = 86
        Width = 108
        Height = 13
        Caption = '*'#1602#1610#1605#1578' '#1607#1585' '#1608#1575#1581#1583' '#1580#1586#1574#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 175
        Top = 43
        Width = 109
        Height = 13
        Caption = '*'#1608#1575#1581#1583' '#1580#1586#1574#1610' '#1580#1606#1587'       :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object L_vahed_joji_jozi: TLabel
        Left = 4
        Top = 39
        Width = 160
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'l_jans_name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 17
        Top = 124
        Width = 144
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 2
        OnKeyPress = Edit2KeyPress
      end
      object Edit3: TEdit
        Left = 17
        Top = 81
        Width = 144
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 9
        ParentFont = False
        TabOrder = 1
        OnKeyPress = Edit3KeyPress
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 17
        Top = 39
        Width = 144
        Height = 21
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'vahed'
        ListField = 'vahed'
        ListSource = DataSource2
        ParentFont = False
        TabOrder = 0
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 24
      Top = 165
      Width = 295
      Height = 57
      Caption = '  '#1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607'  '
      ItemIndex = 0
      Items.Strings = (
        #1576#1583#1608#1606' '#1606#1575#1605
        #1575#1606#1578#1582#1575#1576' '#1606#1575#1605)
      TabOrder = 10
      OnClick = RadioGroup1Click
    end
    object GroupBox_jens_jadid: TGroupBox
      Left = 24
      Top = 64
      Width = 295
      Height = 71
      Caption = '  '#1575#1606#1578#1582#1575#1576' '#1580#1606#1587' '#1580#1583#1610#1583'  '
      TabOrder = 2
      object Label6: TLabel
        Left = 240
        Top = 48
        Width = 51
        Height = 13
        Caption = '*'#1606#1575#1605' '#1580#1606#1587':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 240
        Top = 22
        Width = 49
        Height = 13
        Caption = #1576#1575#1585#1705#1583'        :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 4
        Top = 43
        Width = 232
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 39
        ParentFont = False
        TabOrder = 1
        OnChange = Edit1Change
      end
      object E_barcod: TEdit
        Left = 4
        Top = 17
        Width = 232
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        TabOrder = 0
        OnChange = E_barcodChange
      end
    end
    object RadioGroup_vahed_type: TRadioGroup
      Left = 23
      Top = 258
      Width = 297
      Height = 57
      Caption = '   '#1579#1576#1578' '#1582#1585#1610#1583' '#1580#1606#1587' '#1576#1607' '#1589#1608#1585#1578' '#1578#1705' '#1608#1575#1581#1583#1610' '#1608' '#1583#1608' '#1608#1575#1581#1583#1610'   '
      ItemIndex = 0
      Items.Strings = (
        #1580#1606#1587' '#1583#1608' '#1608#1575#1581#1583#1610
        #1580#1606#1587' '#1578#1705'  '#1608#1575#1581#1583#1610)
      TabOrder = 5
      OnClick = RadioGroup_vahed_typeClick
    end
    object RadioGroup_jens_type: TRadioGroup
      Left = 23
      Top = 18
      Width = 295
      Height = 38
      Caption = '    '#1575#1606#1578#1582#1575#1576' '#1580#1606#1587'  '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1580#1606#1587' '#1605#1608#1580#1608#1583' '#1583#1585#1605#1705#1575#1606#1607#1575
        #1580#1606#1587' '#1580#1583#1610#1583)
      TabOrder = 1
      OnClick = RadioGroup_jens_typeClick
    end
    object GroupBox_jens_anbar: TGroupBox
      Left = 24
      Top = 64
      Width = 295
      Height = 71
      Caption = '  '#1575#1606#1578#1582#1575#1576' '#1580#1606#1587' '#1575#1586' '#1604#1610#1587#1578' '#1575#1580#1606#1575#1587' '#1605#1705#1575#1606#1607#1575'  '
      TabOrder = 3
      object CheckBox2: TCheckBox
        Left = 16
        Top = 22
        Width = 263
        Height = 17
        Caption = #1575#1606#1578#1582#1575#1576' '#1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607' '#1580#1606#1587' '#1605#1705#1575#1606' '#1576#1585#1575#1610' '#1579#1576#1578' '#1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607
        TabOrder = 1
        Visible = False
        OnClick = CheckBox2Click
      end
      object Button1: TButton
        Left = 91
        Top = 25
        Width = 114
        Height = 21
        Caption = #1604#1610#1587#1578' '#1575#1580#1606#1575#1587'  '#1605#1705#1575#1606#1607#1575
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object suiButton3: TsuiButton
      Left = 24
      Top = 494
      Width = 33
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
      TabOrder = 8
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton3Click
      ResHandle = 0
    end
    object suiButton2223: TsuiButton
      Left = 60
      Top = 494
      Width = 33
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1582#1585#1608#1580
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 9
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton2223Click
      ResHandle = 0
    end
    object GroupBox_koli: TGroupBox
      Left = 24
      Top = 316
      Width = 295
      Height = 176
      Caption = '  '#1580#1606#1587' '#1583#1608' '#1608#1575#1581#1583#1610'  '
      TabOrder = 6
      object Label3: TLabel
        Left = 160
        Top = 50
        Width = 124
        Height = 13
        Caption = '*'#1608#1575#1581#1583' '#1580#1586#1574#1610' '#1580#1606#1587'            :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 160
        Top = 83
        Width = 123
        Height = 13
        Caption = '*'#1602#1610#1605#1578' '#1607#1585' '#1608#1575#1581#1583' '#1705#1604#1610'        :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 160
        Top = 116
        Width = 124
        Height = 13
        Caption = '*'#1578#1593#1583#1575#1583' ( '#1608#1575#1581#1583' ) '#1705#1604#1610'          :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 160
        Top = 17
        Width = 124
        Height = 13
        Caption = '*'#1608#1575#1581#1583' '#1705#1604#1610' '#1580#1606#1587'              :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 160
        Top = 151
        Width = 124
        Height = 13
        Caption = '*'#1578#1593#1583#1575#1583' '#1608#1575#1581#1583' '#1580#1586#1574#1610' '#1583#1585' '#1705#1604#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object l_vahed_koli: TLabel
        Left = 3
        Top = 13
        Width = 160
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'l_jans_name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object L_vahed_jozi: TLabel
        Left = 4
        Top = 45
        Width = 160
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'l_jans_name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object l_tedad_J_dar_k: TLabel
        Left = 4
        Top = 147
        Width = 160
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'l_jans_name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 11
        Top = 45
        Width = 144
        Height = 21
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'vahed'
        ListField = 'vahed'
        ListSource = DataSource2
        ParentFont = False
        TabOrder = 1
      end
      object Edit_g_vahed_koli: TEdit
        Left = 11
        Top = 78
        Width = 144
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 9
        ParentFont = False
        TabOrder = 2
        OnKeyPress = Edit_g_vahed_koliKeyPress
      end
      object Edit_tedad_vahed_koli: TEdit
        Left = 11
        Top = 111
        Width = 144
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 3
        OnKeyPress = Edit_tedad_vahed_koliKeyPress
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 11
        Top = 13
        Width = 144
        Height = 21
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'vahed'
        ListField = 'vahed'
        ListSource = DataSource2
        ParentFont = False
        TabOrder = 0
      end
      object Edit_tedad_jozei_dar_koli: TEdit
        Left = 11
        Top = 146
        Width = 144
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 4
        OnKeyPress = Edit_tedad_jozei_dar_koliKeyPress
      end
    end
    object CheckBox1: TCheckBox
      Left = 7
      Top = 8
      Width = 136
      Height = 17
      Caption = #1579#1576#1578' '#1576#1575' '#1593#1606#1608#1575#1606' '#1605#1608#1580#1608#1583' '#1575#1586' '#1602#1576#1604
      TabOrder = 0
      Visible = False
      OnClick = CheckBox1Click
    end
    object e_code_sherkati: TEdit
      Left = 71
      Top = 226
      Width = 121
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      OnChange = e_code_sherkatiChange
    end
    object GroupBox1: TGroupBox
      Left = 32
      Top = 175
      Width = 209
      Height = 40
      TabOrder = 11
      DesignSize = (
        209
        40)
      object L_kharid_az: TLabel
        Left = 4
        Top = 11
        Width = 195
        Height = 18
        Alignment = taCenter
        Anchors = []
        AutoSize = False
        Caption = #1606#1578#1584#1606#1578#1606#1578#1606#1578#1606#1606#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Dmanbar.ADOeditgeymat
    Left = 56
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = Dmlistha.ADOQuery_vahed
    Left = 8
    Top = 264
  end
end
