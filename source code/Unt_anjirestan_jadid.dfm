object Frm_anjirestan_jadid: TFrm_anjirestan_jadid
  Left = 79
  Top = 164
  BorderStyle = bsDialog
  Caption = #1575#1606#1580#1610#1585#1587#1578#1575#1606' '#1580#1583#1610#1583
  ClientHeight = 347
  ClientWidth = 402
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
    Top = 5
    Width = 403
    Height = 338
    Align = alCustom
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1588#1582#1589#1575#1578' '#1575#1606#1580#1610#1585#1587#1578#1575#1606' '#1580#1583#1610#1583'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object Label19: TLabel
      Left = 133
      Top = 25
      Width = 138
      Height = 13
      Caption = #1605#1608#1575#1585#1583' '#1587#1578#1575#1585#1607' '#1583#1575#1585' '#1576#1575#1610#1583' '#1608#1575#1585#1583' '#1588#1608#1606#1583'.'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 300
      Top = 62
      Width = 91
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = '*'#1606#1608#1593'                      :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object L_f1_type: TLabel
      Left = 174
      Top = 5
      Width = 49
      Height = 13
      Caption = 'L_f1_type'
      Visible = False
    end
    object G_shakhs: TGroupBox
      Left = 15
      Top = 91
      Width = 371
      Height = 202
      TabOrder = 1
      DesignSize = (
        371
        202)
      object Label4: TLabel
        Left = 287
        Top = 47
        Width = 76
        Height = 13
        Caption = '*'#1606#1575#1605' '#1575#1606#1580#1610#1585#1587#1578#1575#1606' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 286
        Top = 18
        Width = 78
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = '*'#1705#1583'                   :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label18: TLabel
        Left = 287
        Top = 73
        Width = 74
        Height = 13
        Caption = '*'#1578#1593#1583#1575#1583' '#1583#1585#1582#1578'    :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 287
        Top = 118
        Width = 74
        Height = 13
        Caption = #1570#1583#1585#1587'               :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object suiEdit2: TsuiEdit
        Left = 7
        Top = 44
        Width = 193
        Height = 19
        UIStyle = WinXP
        BorderColor = 6842472
        BiDiMode = bdRightToLeft
        Color = clMenu
        Ctl3D = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 15
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object suiEdit1: TsuiEdit
        Left = 7
        Top = 15
        Width = 193
        Height = 19
        UIStyle = WinXP
        BorderColor = 6842472
        BiDiMode = bdRightToLeft
        Color = clMenu
        Ctl3D = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnKeyPress = suiEdit1KeyPress
      end
      object eadress: TTeMemo
        Left = 8
        Top = 98
        Width = 192
        Height = 94
        Alignment = taRightJustify
        BiDiMode = bdRightToLeft
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 200
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 3
        ThemeObject = 'default'
      end
      object etelephon: TsuiEdit
        Left = 8
        Top = 73
        Width = 193
        Height = 19
        UIStyle = WinXP
        BorderColor = 6842472
        BiDiMode = bdRightToLeft
        Color = clMenu
        Ctl3D = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 12
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnKeyPress = etelephonKeyPress
      end
    end
    object suiButton8: TsuiButton
      Left = 65
      Top = 303
      Width = 45
      Height = 25
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
      OnClick = suiButton8Click
      ResHandle = 0
    end
    object suiButton2: TsuiButton
      Left = 16
      Top = 303
      Width = 45
      Height = 25
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
      OnClick = suiButton2Click
      ResHandle = 0
    end
    object ComboBox1: TComboBox
      Left = 22
      Top = 58
      Width = 193
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = #1575#1606#1580#1610#1585#1587#1578#1575#1606
      Items.Strings = (
        #1575#1606#1580#1610#1585#1587#1578#1575#1606)
    end
  end
end
