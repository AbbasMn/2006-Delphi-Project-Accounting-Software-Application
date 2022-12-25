object frm_eslahe_forosh_naghd: Tfrm_eslahe_forosh_naghd
  Left = 354
  Top = 176
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1589#1604#1575#1581' '#1605#1576#1604#1594' '#1662#1585#1583#1575#1582#1578#1610' '#1606#1602#1583' '#1576#1585#1575#1610' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
  ClientHeight = 411
  ClientWidth = 364
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
    Left = 3
    Top = 170
    Width = 359
    Height = 240
    BiDiMode = bdRightToLeft
    Caption = '  '#1583#1585#1610#1575#1601#1578' '#1606#1602#1583#1610'  '#1580#1583#1610#1583'  '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      359
      240)
    object Label3: TLabel
      Left = 275
      Top = 143
      Width = 48
      Height = 13
      Caption = #1576#1583#1607' '#1705#1575#1585'     :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 275
      Top = 179
      Width = 48
      Height = 13
      Caption = #1576#1587#1578#1575#1606#1705#1575#1585'  :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object L_bestankar: TLabel
      Left = 3
      Top = 178
      Width = 214
      Height = 14
      Alignment = taCenter
      Anchors = [akTop]
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object L_bedehkae: TLabel
      Left = 3
      Top = 146
      Width = 214
      Height = 14
      Alignment = taCenter
      Anchors = [akTop]
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 105
      Top = 36
      Width = 149
      Height = 13
      Caption = #1605#1576#1604#1594' '#1606#1602#1583' '#1580#1583#1610#1583' '#1576#1585#1575#1610' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 64
      Top = 111
      Width = 230
      Height = 13
      Caption = #1605#1576#1604#1594' '#1576#1583#1607#1705#1575#1585' '#1608' '#1576#1587#1578#1575#1606#1705#1575#1585' '#1662#1587' '#1575#1586' '#1608#1585#1608#1583' '#1605#1576#1604#1594' '#1606#1602#1583#1610' '#1580#1583#1610#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit4: TEdit
      Left = 106
      Top = 70
      Width = 147
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 0
      OnChange = Edit4Change
      OnExit = Edit4Exit
      OnKeyPress = Edit4KeyPress
    end
    object Button1: TButton
      Left = 127
      Top = 210
      Width = 105
      Height = 25
      Caption = #1578#1575#1610#1610#1583' '#1605#1576#1604#1594' '#1606#1602#1583#1610' '#1580#1583#1610#1583
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 1
    Width = 359
    Height = 160
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object Label9: TLabel
      Left = 112
      Top = 12
      Width = 135
      Height = 13
      Caption = #1575#1585#1586#1588' '#1705#1604' '#1575#1580#1606#1575#1587' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText_t_jam: TDBText
      Left = 4
      Top = 28
      Width = 351
      Height = 18
      Alignment = taCenter
      DataField = 'kol_'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 94
      Top = 81
      Width = 172
      Height = 13
      Caption = #1605#1576#1604#1594' '#1606#1602#1583' '#1579#1576#1578' '#1588#1583#1607' '#1576#1585#1575#1610' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBT_mab_gabl: TDBText
      Left = 5
      Top = 97
      Width = 351
      Height = 18
      Alignment = taCenter
      DataField = 'nagd'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 92
      Top = 116
      Width = 175
      Height = 13
      Caption = #1605#1576#1604#1594' '#1670#1705' '#1579#1576#1578' '#1588#1583#1607' '#1576#1585#1575#1610' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBT_m_check: TDBText
      Left = 4
      Top = 133
      Width = 351
      Height = 18
      Alignment = taCenter
      DataField = 'check_kol'
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 139
      Top = 46
      Width = 82
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601' '#1601#1575#1705#1578#1608#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 4
      Top = 62
      Width = 351
      Height = 18
      Alignment = taCenter
      DataField = 'mablagh_takhfif'
      DataSource = DataSource4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DataSource1: TDataSource
    DataSet = DataM_final.ADOQ_t_pardakht_nagd_forosh
    Left = 163
    Top = 81
  end
  object DataSource2: TDataSource
    DataSet = Dmlistha.ADOmohasebe_forosh
    Left = 27
    Top = 15
  end
  object DataSource3: TDataSource
    DataSet = DataM_final.ADOQ_T_jame_pardakht_check_forosh
    Left = 171
    Top = 145
  end
  object DataSource4: TDataSource
    DataSet = DataM_final.ADOQ_takhfife_forosh
    Left = 27
    Top = 55
  end
end
