object frm_daste_check_jadid: Tfrm_daste_check_jadid
  Left = 255
  Top = 279
  BorderStyle = bsDialog
  Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1580#1583#1610#1583
  ClientHeight = 202
  ClientWidth = 312
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = -1
    Top = 4
    Width = 313
    Height = 197
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1588#1582#1589#1575#1578' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 180
      Top = 34
      Width = 117
      Height = 13
      Caption = '*'#1606#1575#1605' '#1576#1575#1606#1705' '#1605#1585#1576#1608#1591'              :'
    end
    object Label2: TLabel
      Left = 181
      Top = 138
      Width = 116
      Height = 13
      Caption = '*'#1588#1605#1575#1585#1607' '#1581#1587#1575#1576'              :'
    end
    object Label6: TLabel
      Left = 180
      Top = 84
      Width = 116
      Height = 13
      Caption = '*'#1606#1575#1605' '#1588#1593#1576#1607'                     :'
    end
    object E_shomare_hesab: TEdit
      Left = 14
      Top = 134
      Width = 145
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 2
      OnKeyPress = E_shomare_hesabKeyPress
    end
    object suiButton7: TsuiButton
      Left = 61
      Top = 168
      Width = 42
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1582#1585#1608#1580
      AutoSize = False
      ParentFont = False
      FileTheme = frm_main.suiFileTheme1
      UIStyle = WinXP
      TabOrder = 4
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton7Click
      ResHandle = 0
    end
    object suiButton6: TsuiButton
      Left = 14
      Top = 168
      Width = 42
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1578#1575#1610#1610#1583
      AutoSize = False
      ParentFont = False
      FileTheme = frm_main.suiFileTheme1
      UIStyle = WinXP
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton6Click
      ResHandle = 0
    end
    object dbanbar: TDBLookupComboBox
      Left = 14
      Top = 30
      Width = 145
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'name'
      ListField = 'name'
      ListSource = DataSource1
      ParentFont = False
      TabOrder = 0
    end
    object E_shobe: TEdit
      Left = 14
      Top = 81
      Width = 145
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Dmlistha.ADOQuery_bank2
    Left = 88
    Top = 48
  end
end
