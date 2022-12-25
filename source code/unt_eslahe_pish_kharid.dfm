object frm_eslahe_pish_kharid: Tfrm_eslahe_pish_kharid
  Left = 453
  Top = 227
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1589#1604#1575#1581
  ClientHeight = 371
  ClientWidth = 343
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
  object l_id: TLabel
    Left = 128
    Top = 344
    Width = 16
    Height = 13
    Caption = 'l_id'
    Visible = False
  end
  object l_type: TLabel
    Left = 196
    Top = 345
    Width = 28
    Height = 13
    Caption = 'l_type'
    Visible = False
  end
  object GroupBox_jozei: TGroupBox
    Left = 8
    Top = 142
    Width = 328
    Height = 196
    BiDiMode = bdRightToLeft
    Caption = '  '#1580#1606#1587' '#1578#1705' '#1608#1575#1581#1583#1610'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object Label7: TLabel
      Left = 176
      Top = 155
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
      Top = 112
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
      Top = 69
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
      Top = 65
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
      Top = 150
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
      Top = 107
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
      Top = 65
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
    object CheckBox1: TCheckBox
      Left = 184
      Top = 27
      Width = 97
      Height = 17
      Caption = #1578#1594#1610#1610#1585' '#1608#1575#1581#1583
      TabOrder = 3
      OnClick = CheckBox1Click
    end
  end
  object GroupBox_koli: TGroupBox
    Left = 8
    Top = 142
    Width = 328
    Height = 196
    BiDiMode = bdRightToLeft
    Caption = '  '#1580#1606#1587' '#1583#1608' '#1608#1575#1581#1583#1610'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    object Label3: TLabel
      Left = 166
      Top = 73
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
      Left = 166
      Top = 106
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
      Left = 166
      Top = 139
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
      Left = 166
      Top = 40
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
      Left = 166
      Top = 174
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
      Left = 4
      Top = 36
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
      Top = 68
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
      Top = 170
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
      Left = 17
      Top = 68
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
      Left = 17
      Top = 101
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
      Left = 17
      Top = 134
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
      Left = 17
      Top = 36
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
      Left = 17
      Top = 169
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
    object CheckBox2: TCheckBox
      Left = 189
      Top = 17
      Width = 97
      Height = 17
      Caption = #1578#1594#1610#1610#1585' '#1608#1575#1581#1583
      TabOrder = 5
      OnClick = CheckBox2Click
    end
  end
  object GroupBox_jens_jadid: TGroupBox
    Left = 8
    Top = 11
    Width = 328
    Height = 125
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1588#1582#1589#1575#1578' '#1580#1606#1587'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 240
      Top = 60
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
      Top = 26
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
    object Label12: TLabel
      Left = 240
      Top = 97
      Width = 82
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = #1705#1583' '#1588#1585#1705#1578#1610' '#1580#1606#1587':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 4
      Top = 55
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
    end
    object E_barcod: TEdit
      Left = 4
      Top = 21
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
    end
    object e_code_sherkati: TEdit
      Left = 115
      Top = 91
      Width = 121
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object suiButton3: TsuiButton
    Left = 8
    Top = 343
    Width = 35
    Height = 25
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1578#1575#1610#1610#1583
    AutoSize = False
    ParentBiDiMode = False
    ParentFont = False
    UIStyle = WinXP
    TabOrder = 2
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton3Click
    ResHandle = 0
  end
  object suiButton2: TsuiButton
    Left = 47
    Top = 343
    Width = 35
    Height = 25
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1582#1585#1608#1580
    AutoSize = False
    ParentBiDiMode = False
    ParentFont = False
    UIStyle = WinXP
    TabOrder = 3
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton2Click
    ResHandle = 0
  end
  object DataSource2: TDataSource
    DataSet = Dmlistha.ADOQuery_vahed
    Left = 8
    Top = 264
  end
end
