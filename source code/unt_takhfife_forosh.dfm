object frm_takhfife_forosh: Tfrm_takhfife_forosh
  Left = 394
  Top = 359
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1578#1582#1601#1610#1601' '#1601#1575#1705#1578#1608#1585' '#1601#1585#1608#1588
  ClientHeight = 196
  ClientWidth = 252
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
  object Label3: TLabel
    Left = 78
    Top = 8
    Width = 100
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1580#1605#1593' '#1705#1604' '#1575#1585#1586#1588' '#1575#1580#1606#1575#1587':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object l_arzesh_kol: TLabel
    Left = 2
    Top = 24
    Width = 247
    Height = 23
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = #1580#1605#1593' '#1705#1604' '#1575#1585#1586#1588' '#1575#1580#1606#1575#1587':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -17
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object l_fish: TLabel
    Left = 24
    Top = 8
    Width = 24
    Height = 13
    Caption = 'l_fish'
    Visible = False
  end
  object g_geymat: TGroupBox
    Left = 1
    Top = 120
    Width = 251
    Height = 47
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 164
      Top = 20
      Width = 60
      Height = 13
      Caption = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601' :'
    end
    object E_geymat: TEdit
      Left = 26
      Top = 15
      Width = 132
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 0
      OnKeyPress = E_geymatKeyPress
    end
  end
  object RadioGroup_jens_type: TRadioGroup
    Left = 1
    Top = 50
    Width = 251
    Height = 68
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1606#1608#1593'  '#1578#1582#1601#1610#1601' '#1601#1575#1705#1578#1608#1585'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #1578#1582#1601#1610#1601' '#1583#1585#1589#1583#1610' '#1575#1586' '#1705#1604' '#1575#1585#1586#1588' '#1575#1580#1606#1575#1587
      #1578#1582#1601#1610#1601' '#1605#1576#1604#1594#1610' '#1575#1586' '#1705#1604' '#1575#1585#1586#1588' '#1575#1580#1606#1575#1587)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    OnClick = RadioGroup_jens_typeClick
  end
  object g_darsad: TGroupBox
    Left = 1
    Top = 120
    Width = 251
    Height = 47
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 164
      Top = 20
      Width = 67
      Height = 13
      Caption = #1583#1585#1589#1583' '#1578#1582#1601#1610#1601'  :'
    end
    object e_darsad: TEdit
      Left = 26
      Top = 15
      Width = 132
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      OnKeyPress = e_darsadKeyPress
    end
  end
  object Button1: TButton
    Left = 88
    Top = 170
    Width = 75
    Height = 25
    Caption = #1578#1575#1610#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
end
