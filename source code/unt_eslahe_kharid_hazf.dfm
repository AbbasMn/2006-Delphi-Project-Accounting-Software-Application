object frm_eslahe_kharid_hazf: Tfrm_eslahe_kharid_hazf
  Left = 203
  Top = 388
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1581#1584#1601' '#1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610' '#1575#1586' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
  ClientHeight = 298
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    364
    298)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 70
    Top = 171
    Width = 223
    Height = 13
    Caption = #1605#1576#1604#1594' '#1576#1583#1607#1705#1575#1585' '#1608' '#1576#1587#1578#1575#1606#1705#1575#1585' '#1662#1587' '#1575#1586' '#1581#1584#1601' '#1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object L_bestankar: TLabel
    Left = 22
    Top = 235
    Width = 214
    Height = 18
    Alignment = taCenter
    Anchors = [akTop]
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object L_bedehkae: TLabel
    Left = 22
    Top = 203
    Width = 214
    Height = 18
    Alignment = taCenter
    Anchors = [akTop]
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 294
    Top = 203
    Width = 48
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1576#1583#1607' '#1705#1575#1585'     :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 294
    Top = 239
    Width = 48
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1576#1587#1578#1575#1606#1705#1575#1585'  :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
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
    TabOrder = 0
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
      Left = 5
      Top = 29
      Width = 351
      Height = 18
      Alignment = taCenter
      DataField = 'kol_'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
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
      Top = 98
      Width = 351
      Height = 20
      Alignment = taCenter
      DataField = 'nagd'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 92
      Top = 115
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
      Height = 20
      Alignment = taCenter
      DataField = 'check_kol'
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBt_g_jens: TDBText
      Left = 304
      Top = 12
      Width = 49
      Height = 20
      Alignment = taCenter
      DataField = 'kol'
      DataSource = DataSource4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object l_taeed_eslah: TLabel
      Left = 290
      Top = 80
      Width = 67
      Height = 13
      Caption = 'l_taeed_eslah'
      Visible = False
    end
    object Label6: TLabel
      Left = 55
      Top = 46
      Width = 249
      Height = 13
      Caption = #1575#1585#1586#1588' '#1575#1580#1606#1575#1587' '#1579#1576#1578' '#1588#1583#1607' '#1576#1593#1606#1608#1575#1606' '#1605#1585#1580#1608#1593#1610' '#1575#1586' '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 4
      Top = 63
      Width = 351
      Height = 20
      Alignment = taCenter
      DataField = 'kol_'
      DataSource = DataSource5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Button1: TButton
    Left = 123
    Top = 270
    Width = 119
    Height = 25
    Caption = #1578#1575#1610#1610#1583' '#1581#1584#1601' '#1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object DataSource3: TDataSource
    DataSet = DataM_final.ADOQ_T_jame_pardakht_check_kharid
    Left = 283
    Top = 113
  end
  object DataSource1: TDataSource
    DataSet = DataM_final.ADOQ_t_pardakht_nagd_kharid
    Left = 11
    Top = 89
  end
  object DataSource2: TDataSource
    DataSet = Dmlistha.ADOmohasebe_kharid
    Left = 27
    Top = 15
  end
  object DataSource4: TDataSource
    DataSet = Dmlistha.ADOkharidha
    Left = 19
    Top = 257
  end
  object DataSource5: TDataSource
    DataSet = Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei
    Left = 27
    Top = 57
  end
end
