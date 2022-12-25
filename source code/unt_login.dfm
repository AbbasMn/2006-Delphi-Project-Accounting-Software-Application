object Frm_login: TFrm_login
  Left = 395
  Top = 364
  BorderStyle = bsDialog
  ClientHeight = 121
  ClientWidth = 271
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 185
    Top = 25
    Width = 60
    Height = 13
    Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610'  :'
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 4
    Width = 267
    Height = 114
    BiDiMode = bdRightToLeft
    Caption = '  '#1608#1585#1608#1583' '#1576#1607' '#1587#1610#1587#1578#1605'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object L_name_register: TLabel
      Left = 189
      Top = 55
      Width = 57
      Height = 13
      Caption = #1585#1605#1586' '#1593#1576#1608#1585'     :'
    end
    object Label2: TLabel
      Left = 189
      Top = 25
      Width = 56
      Height = 13
      Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610'  :'
    end
    object L_logof: TLabel
      Left = 108
      Top = 88
      Width = 35
      Height = 13
      Caption = 'L_logof'
      Visible = False
    end
    object suiBtaeed: TsuiButton
      Left = 23
      Top = 81
      Width = 36
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
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiBtaeedClick
      ResHandle = 0
    end
    object suibexit: TsuiButton
      Left = 62
      Top = 81
      Width = 36
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
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suibexitClick
      ResHandle = 0
    end
    object Elogin: TEdit
      Left = 22
      Top = 50
      Width = 131
      Height = 22
      Hint = #1581#1583#1575#1705#1579#1585' 10'#1705#1575#1585#1575#1705#1578#1585
      BiDiMode = bdLeftToRight
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = True
      TabOrder = 1
    end
    object e_username: TEdit
      Left = 22
      Top = 20
      Width = 131
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
    end
  end
  object Egettarikh: TEdit
    Left = 145
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 88
    Width = 65
    Height = 21
    TabOrder = 2
    Visible = False
  end
end
