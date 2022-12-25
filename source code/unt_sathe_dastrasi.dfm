object frm_sathe_dastrasi: Tfrm_sathe_dastrasi
  Left = 73
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1578#1593#1585#1610#1601' '#1587#1591#1581' '#1583#1587#1578#1585#1587#1610' '#1705#1575#1585#1576#1585
  ClientHeight = 626
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    785
    626)
  PixelsPerInch = 96
  TextHeight = 13
  object L_karbar1: TLabel
    Left = 18
    Top = 563
    Width = 286
    Height = 22
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = #1575#1580#1606#1575#1587' '#1575#1606#1578#1582#1575#1576' '#1606#1588#1583#1607' '#1575#1606#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object L_g_text: TLabel
    Left = 314
    Top = 568
    Width = 52
    Height = 13
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585'    :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object L_karbar: TLabel
    Left = 162
    Top = 595
    Width = 127
    Height = 22
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = #1575#1580#1606#1575#1587' '#1575#1606#1578#1582#1575#1576' '#1606#1588#1583#1607' '#1575#1606#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 592
    Top = 2
    Width = 191
    Height = 132
    BiDiMode = bdRightToLeft
    Caption = '  '#1582#1585#1610#1583'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object kharid_jens: TCheckBox
      Left = 48
      Top = 88
      Width = 129
      Height = 17
      Caption = #1601#1585#1608#1588#1606#1583#1711#1575#1606' '#1580#1606#1587
      TabOrder = 0
      OnClick = kharid_jensClick
    end
    object kharid_az_for: TCheckBox
      Left = 56
      Top = 64
      Width = 121
      Height = 17
      Caption = #1582#1585#1610#1583#1607#1575' '#1575#1586' '#1601#1585#1608#1588#1606#1583#1607
      TabOrder = 1
      OnClick = kharid_az_forClick
    end
    object kharid_factor: TCheckBox
      Left = 80
      Top = 40
      Width = 97
      Height = 17
      Caption = #1589#1583#1608#1585#1601#1575#1705#1578#1608#1585#1582#1585#1610#1583
      TabOrder = 2
      OnClick = kharid_factorClick
    end
    object kharid_kharid: TCheckBox
      Left = 56
      Top = 16
      Width = 121
      Height = 17
      Caption = #1582#1585#1610#1583' '#1580#1606#1587
      TabOrder = 3
      OnClick = kharid_kharidClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 395
    Top = 2
    Width = 191
    Height = 132
    BiDiMode = bdRightToLeft
    Caption = '  '#1601#1585#1608#1588'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object forosh_forosh: TCheckBox
      Left = 80
      Top = 16
      Width = 97
      Height = 17
      Caption = #1601#1585#1608#1588' '#1580#1606#1587
      TabOrder = 0
      OnClick = forosh_foroshClick
    end
    object forosh_sarie: TCheckBox
      Left = 80
      Top = 40
      Width = 97
      Height = 17
      Caption = #1601#1585#1608#1588' '#1587#1585#1610#1593
      TabOrder = 1
      OnClick = forosh_sarieClick
    end
    object forosh_factor: TCheckBox
      Left = 64
      Top = 64
      Width = 113
      Height = 17
      Caption = #1589#1583#1608#1585' '#1601#1575#1705#1578#1608#1585' '#1601#1585#1608#1588
      TabOrder = 2
      OnClick = forosh_factorClick
    end
    object forosh_jens: TCheckBox
      Left = 80
      Top = 88
      Width = 97
      Height = 17
      Caption = #1582#1585#1610#1583#1575#1585#1575#1606'  '#1580#1606#1587
      TabOrder = 3
      OnClick = forosh_jensClick
    end
    object forosh_foroshha: TCheckBox
      Left = 80
      Top = 112
      Width = 97
      Height = 17
      Caption = #1601#1585#1608#1588#1607#1575' '#1576#1607' '#1582#1585#1610#1583#1575#1585
      TabOrder = 4
      OnClick = forosh_foroshhaClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 592
    Top = 135
    Width = 191
    Height = 231
    BiDiMode = bdRightToLeft
    Caption = '  '#1606#1602#1583#1610' '#1608' '#1576#1575#1606#1705#1610'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    object nagdi_daryafte_bedehi: TCheckBox
      Left = 56
      Top = 16
      Width = 121
      Height = 17
      Caption = #1583#1585#1610#1575#1601#1578' '#1576#1583#1607#1610' '#1575#1586' '#1582#1585#1610#1583#1575#1585
      TabOrder = 0
      OnClick = nagdi_daryafte_bedehiClick
    end
    object nagdi_pardakhte_bedehi: TCheckBox
      Left = 24
      Top = 40
      Width = 153
      Height = 17
      Caption = #1662#1585#1583#1575#1582#1578' '#1576#1583#1607#1610' '#1576#1607' '#1601#1585#1608#1588#1606#1583#1607
      TabOrder = 1
      OnClick = nagdi_pardakhte_bedehiClick
    end
    object nagdi_varize_sarmaye: TCheckBox
      Left = 40
      Top = 64
      Width = 137
      Height = 17
      Caption = ' '#1608#1575#1585#1610#1586' '#1576#1607' '#1589#1606#1583#1608#1602' '#1587#1585#1605#1575#1610#1607
      TabOrder = 2
      OnClick = nagdi_varize_sarmayeClick
    end
    object CheckBox13: TCheckBox
      Left = 80
      Top = 88
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 3
    end
    object nagdi_variz_be_bank: TCheckBox
      Left = 80
      Top = 87
      Width = 97
      Height = 17
      Caption = #1608#1575#1585#1610#1586' '#1576#1607' '#1576#1575#1606#1705
      TabOrder = 4
      OnClick = nagdi_variz_be_bankClick
    end
    object nagdi_entegal_az_san_be_bank: TCheckBox
      Left = 24
      Top = 112
      Width = 153
      Height = 17
      Caption = #1575#1606#1578#1602#1575#1604' '#1608#1580#1607' '#1575#1586' '#1589#1606#1583#1608#1602' '#1576#1607' '#1576#1575#1606#1705
      TabOrder = 5
      OnClick = nagdi_entegal_az_san_be_bankClick
    end
    object nagdi_entegal_az_bank_be_sandog: TCheckBox
      Left = 24
      Top = 136
      Width = 153
      Height = 17
      Caption = #1575#1606#1578#1602#1575#1604' '#1608#1580#1607' '#1575#1586' '#1576#1575#1606#1705' '#1576#1607' '#1589#1606#1583#1608#1602
      TabOrder = 6
      OnClick = nagdi_entegal_az_bank_be_sandogClick
    end
    object nagdi_beine_sandogha: TCheckBox
      Left = 40
      Top = 160
      Width = 137
      Height = 17
      Caption = #1575#1606#1578#1602#1575#1604' '#1608#1580#1607' '#1576#1610#1606' '#1589#1606#1583#1608#1602#1607#1575
      TabOrder = 7
      OnClick = nagdi_beine_sandoghaClick
    end
    object nagdi_bardasht_az_bank: TCheckBox
      Left = 40
      Top = 184
      Width = 137
      Height = 17
      Caption = #1576#1585#1583#1575#1588#1578' '#1575#1586'  '#1576#1575#1606#1705
      TabOrder = 8
      OnClick = nagdi_bardasht_az_bankClick
    end
    object nagdi_bardasht_az_sandog: TCheckBox
      Left = 40
      Top = 208
      Width = 137
      Height = 17
      Caption = #1576#1585#1583#1575#1588#1578' '#1575#1586' '#1589#1606#1583#1608#1602#1607#1575
      TabOrder = 9
      OnClick = nagdi_bardasht_az_sandogClick
    end
  end
  object GroupBox4: TGroupBox
    Left = 198
    Top = 368
    Width = 191
    Height = 184
    BiDiMode = bdRightToLeft
    Caption = '  '#1670#1705'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    object check_pas_kardan: TCheckBox
      Left = 40
      Top = 16
      Width = 137
      Height = 17
      Caption = #1662#1575#1587' '#1705#1585#1583#1606' '#1670#1705' '#1583#1585#1610#1575#1601#1578#1610
      TabOrder = 0
      OnClick = check_pas_kardanClick
    end
    object check_pass_shode: TCheckBox
      Left = 80
      Top = 40
      Width = 97
      Height = 17
      Caption = #1670#1705#1607#1575#1610' '#1662#1575#1587' '#1588#1583#1607
      TabOrder = 1
      OnClick = check_pass_shodeClick
    end
    object check_pass_nashode: TCheckBox
      Left = 56
      Top = 64
      Width = 121
      Height = 17
      Caption = #1670#1705#1607#1575#1610' '#1662#1575#1587' '#1606#1588#1583#1607
      TabOrder = 2
      OnClick = check_pass_nashodeClick
    end
    object check_hame: TCheckBox
      Left = 56
      Top = 88
      Width = 121
      Height = 17
      Caption = #1607#1605#1607' '#1670#1705#1607#1575#1610' '#1583#1585#1610#1575#1601#1578#1610
      TabOrder = 3
      OnClick = check_hameClick
    end
    object check_pardakhti: TCheckBox
      Left = 80
      Top = 112
      Width = 97
      Height = 17
      Caption = #1670#1705#1607#1575#1610' '#1662#1585#1583#1575#1582#1578#1610
      TabOrder = 4
      OnClick = check_pardakhtiClick
    end
  end
  object GroupBox5: TGroupBox
    Left = 395
    Top = 368
    Width = 191
    Height = 256
    BiDiMode = bdRightToLeft
    Caption = '  '#1711#1586#1575#1585#1588#1575#1578' '#1605#1575#1604#1610'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    object gozaesh_mali_sandog: TCheckBox
      Left = 80
      Top = 16
      Width = 97
      Height = 17
      Caption = #1605#1576#1575#1604#1594' '#1589#1606#1583#1608#1602#1607#1575
      TabOrder = 0
      OnClick = gozaesh_mali_sandogClick
    end
    object gozaesh_mali_bedehkar: TCheckBox
      Left = 80
      Top = 40
      Width = 97
      Height = 17
      Caption = #1582#1585#1610#1583#1575#1585#1575#1606' '#1576#1583#1607#1705#1575#1585
      TabOrder = 1
      OnClick = gozaesh_mali_bedehkarClick
    end
    object gozaesh_mali_talabkar: TCheckBox
      Left = 64
      Top = 64
      Width = 113
      Height = 17
      Caption = #1601#1585#1608#1588#1606#1583#1711#1575#1606' '#1591#1604#1576#1705#1575#1585
      TabOrder = 2
      OnClick = gozaesh_mali_talabkarClick
    end
    object gozaesh_mali_pardakhte_kharidar: TCheckBox
      Left = 80
      Top = 89
      Width = 97
      Height = 15
      Caption = #1662#1585#1583#1575#1582#1578#1607#1575#1610' '#1582#1585#1610#1583#1575#1585
      TabOrder = 3
      OnClick = gozaesh_mali_pardakhte_kharidarClick
    end
    object gozaesh_mali_pardakhte_shoma: TCheckBox
      Left = 80
      Top = 112
      Width = 97
      Height = 17
      Caption = #1662#1585#1583#1575#1582#1578#1607#1575#1610' '#1588#1605#1575
      TabOrder = 4
      OnClick = gozaesh_mali_pardakhte_shomaClick
    end
    object gozaesh_mali_sod: TCheckBox
      Left = 80
      Top = 136
      Width = 97
      Height = 17
      Caption = #1587#1608#1583' '#1601#1585#1608#1588
      TabOrder = 5
      OnClick = gozaesh_mali_sodClick
    end
    object gozaesh_mali_taraz: TCheckBox
      Left = 80
      Top = 160
      Width = 97
      Height = 17
      Caption = #1578#1585#1575#1586' '#1605#1575#1604#1610
      TabOrder = 6
      OnClick = gozaesh_mali_tarazClick
    end
    object gozaesh_mali_banki: TCheckBox
      Left = 80
      Top = 184
      Width = 97
      Height = 17
      Caption = #1605#1608#1575#1585#1583' '#1576#1575#1606#1705#1610
      TabOrder = 7
      OnClick = gozaesh_mali_bankiClick
    end
  end
  object GroupBox6: TGroupBox
    Left = 2
    Top = 2
    Width = 191
    Height = 132
    BiDiMode = bdRightToLeft
    Caption = '  '#1607#1586#1610#1606#1607' '#1607#1575'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 5
    object hazine_jadid: TCheckBox
      Left = 80
      Top = 16
      Width = 97
      Height = 17
      Caption = #1593#1606#1608#1575#1606' '#1607#1586#1610#1606#1607' '#1580#1583#1610#1583
      TabOrder = 0
      OnClick = hazine_jadidClick
    end
    object hazine_sabt: TCheckBox
      Left = 80
      Top = 40
      Width = 97
      Height = 17
      Caption = #1579#1576#1578' '#1607#1586#1610#1606#1607
      TabOrder = 1
      OnClick = hazine_sabtClick
    end
    object hazine_sabt_shode: TCheckBox
      Left = 48
      Top = 64
      Width = 129
      Height = 17
      Caption = #1607#1586#1610#1606#1607' '#1607#1575#1610' '#1579#1576#1578' '#1588#1583#1607
      TabOrder = 2
      OnClick = hazine_sabt_shodeClick
    end
    object hazine_mabalegh: TCheckBox
      Left = 16
      Top = 88
      Width = 161
      Height = 17
      Caption = #1605#1576#1575#1604#1594' '#1662#1585#1583#1575#1582#1578#1610' '#1576#1585#1575#1610' '#1607#1585' '#1607#1586#1610#1606#1607
      TabOrder = 3
      OnClick = hazine_mabaleghClick
    end
    object hazine_eslah: TCheckBox
      Left = 56
      Top = 112
      Width = 121
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1593#1606#1608#1575#1606' '#1607#1586#1610#1606#1607
      TabOrder = 4
      OnClick = hazine_eslahClick
    end
  end
  object GroupBox7: TGroupBox
    Left = 592
    Top = 368
    Width = 191
    Height = 256
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1608#1575#1585#1583' '#1580#1583#1610#1583'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 6
    object jadid_sh_hesab: TCheckBox
      Left = 64
      Top = 112
      Width = 113
      Height = 17
      Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1580#1583#1610#1583
      TabOrder = 0
      OnClick = jadid_sh_hesabClick
    end
    object jadid_bank: TCheckBox
      Left = 80
      Top = 88
      Width = 97
      Height = 17
      Caption = #1576#1575#1606#1705' '#1580#1583#1610#1583
      TabOrder = 1
      OnClick = jadid_bankClick
    end
    object jadid_makan: TCheckBox
      Left = 56
      Top = 64
      Width = 121
      Height = 17
      Caption = #1605#1705#1575#1606' '#1580#1583#1610#1583' '#1580#1606#1587
      TabOrder = 2
      OnClick = jadid_makanClick
    end
    object jadid_shakhs: TCheckBox
      Left = 80
      Top = 16
      Width = 97
      Height = 17
      Caption = #1588#1582#1589' '#1580#1583#1610#1583
      TabOrder = 3
      OnClick = jadid_shakhsClick
    end
    object jadid_yaddasht: TCheckBox
      Left = 80
      Top = 209
      Width = 97
      Height = 17
      Caption = #1610#1575#1583#1583#1575#1588#1578' '#1580#1583#1610#1583
      TabOrder = 4
      OnClick = jadid_yaddashtClick
    end
    object jadid_sandog: TCheckBox
      Left = 80
      Top = 40
      Width = 97
      Height = 17
      Caption = #1589#1606#1583#1608#1602' '#1580#1583#1610#1583
      TabOrder = 5
      OnClick = jadid_sandogClick
    end
    object jadid_sefaresh: TCheckBox
      Left = 80
      Top = 184
      Width = 97
      Height = 17
      Caption = #1587#1601#1575#1585#1588' '#1580#1583#1610#1583
      TabOrder = 6
      OnClick = jadid_sefareshClick
    end
    object jadid_vahed: TCheckBox
      Left = 31
      Top = 160
      Width = 146
      Height = 17
      Caption = #1608#1575#1581#1583' '#1582#1585#1610#1583' '#1608' '#1601#1585#1608#1588' '#1580#1583#1610#1583
      TabOrder = 7
      OnClick = jadid_vahedClick
    end
    object jadid_check: TCheckBox
      Left = 80
      Top = 136
      Width = 97
      Height = 17
      Caption = #1583#1587#1578#1607' '#1670#1705' '#1580#1583#1610#1583
      TabOrder = 8
      OnClick = jadid_checkClick
    end
    object jadid_sal: TCheckBox
      Left = 80
      Top = 234
      Width = 97
      Height = 17
      Caption = #1587#1575#1604' '#1580#1583#1610#1583
      TabOrder = 9
      OnClick = jadid_salClick
    end
  end
  object GroupBox8: TGroupBox
    Left = 198
    Top = 2
    Width = 191
    Height = 132
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1705#1575#1606#1607#1575#1610' '#1580#1606#1587'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 7
    object makan_majazi: TCheckBox
      Left = 64
      Top = 16
      Width = 113
      Height = 17
      Caption = #1575#1580#1606#1575#1587' '#1575#1606#1576#1575#1585' '#1605#1580#1575#1586#1610
      TabOrder = 0
      OnClick = makan_majaziClick
    end
    object makan_har_makan: TCheckBox
      Left = 80
      Top = 40
      Width = 97
      Height = 17
      Caption = #1575#1580#1606#1575#1587' '#1607#1585' '#1605#1705#1575#1606
      TabOrder = 1
      OnClick = makan_har_makanClick
    end
    object makan_makanha: TCheckBox
      Left = 48
      Top = 64
      Width = 129
      Height = 17
      Caption = #1575#1580#1606#1575#1587' '#1607#1605#1607' '#1605#1705#1575#1606#1607#1575
      TabOrder = 2
      OnClick = makan_makanhaClick
    end
    object makan_jabejaei: TCheckBox
      Left = 80
      Top = 88
      Width = 97
      Height = 17
      Caption = #1580#1575#1576#1607' '#1580#1575#1610#1610' '#1580#1606#1587
      TabOrder = 3
      OnClick = makan_jabejaeiClick
    end
    object makan_eftetah: TCheckBox
      Left = 56
      Top = 112
      Width = 121
      Height = 17
      Caption = #1579#1576#1578' '#1575#1580#1606#1575#1587' '#1575#1601#1578#1578#1575#1581#1610#1607
      TabOrder = 4
      OnClick = makan_eftetahClick
    end
  end
  object GroupBox10: TGroupBox
    Left = 2
    Top = 135
    Width = 191
    Height = 231
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1589#1604#1575#1581' '#1594#1610#1585#1605#1575#1604#1610'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 8
    object geyre_mali_shakhs: TCheckBox
      Left = 32
      Top = 16
      Width = 145
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1605#1588#1582#1589#1575#1578' '#1588#1582#1589
      TabOrder = 0
      OnClick = geyre_mali_shakhsClick
    end
    object geyre_mali_jens: TCheckBox
      Left = 40
      Top = 40
      Width = 137
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1605#1588#1582#1589#1575#1578' '#1580#1606#1587
      TabOrder = 1
      OnClick = geyre_mali_jensClick
    end
    object geyre_mali_bank: TCheckBox
      Left = 32
      Top = 64
      Width = 145
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1605#1588#1582#1589#1575#1578' '#1576#1575#1606#1705
      TabOrder = 2
      OnClick = geyre_mali_bankClick
    end
    object geyre_mali_sh_hesab: TCheckBox
      Left = 40
      Top = 88
      Width = 137
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      TabOrder = 3
      OnClick = geyre_mali_sh_hesabClick
    end
    object geyre_mali_vahede_jens: TCheckBox
      Left = 48
      Top = 112
      Width = 129
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1608#1575#1581#1583' '#1580#1606#1587' '
      TabOrder = 4
      OnClick = geyre_mali_vahede_jensClick
    end
    object geyre_mali_vahed: TCheckBox
      Left = 80
      Top = 136
      Width = 97
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1608#1575#1581#1583
      TabOrder = 5
      OnClick = geyre_mali_vahedClick
    end
    object geyre_mali_sal: TCheckBox
      Left = 24
      Top = 160
      Width = 153
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1587#1575#1604' '#1588#1605#1587#1610
      TabOrder = 6
      OnClick = geyre_mali_salClick
    end
  end
  object GroupBox11: TGroupBox
    Left = 2
    Top = 368
    Width = 191
    Height = 184
    BiDiMode = bdRightToLeft
    Caption = '  '#1711#1586#1575#1585#1588#1575#1578' '#1705#1604#1610'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 9
    object koli_kharid: TCheckBox
      Left = 80
      Top = 16
      Width = 97
      Height = 17
      Caption = #1705#1604#1610' '#1575#1586' '#1582#1585#1610#1583#1607#1575
      TabOrder = 0
      OnClick = koli_kharidClick
    end
    object koli_forosh: TCheckBox
      Left = 80
      Top = 40
      Width = 97
      Height = 17
      Caption = #1705#1604#1610' '#1575#1586' '#1601#1585#1608#1588#1607#1575
      TabOrder = 1
      OnClick = koli_foroshClick
    end
    object CheckBox72: TCheckBox
      Left = 80
      Top = 88
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 2
    end
    object koli_vorod_khoroj: TCheckBox
      Left = 48
      Top = 64
      Width = 129
      Height = 17
      Caption = #1711#1586#1575#1585#1588' '#1608#1585#1608#1583'/'#1582#1585#1608#1580' '#1580#1606#1587
      TabOrder = 3
      OnClick = koli_vorod_khorojClick
    end
    object koli_ashkhas: TCheckBox
      Left = 56
      Top = 136
      Width = 121
      Height = 17
      Caption = #1605#1588#1582#1589#1575#1578' '#1575#1588#1582#1575#1589
      TabOrder = 4
      OnClick = koli_ashkhasClick
    end
    object koli_kharidar: TCheckBox
      Left = 80
      Top = 88
      Width = 97
      Height = 17
      Caption = #1705#1604#1610' '#1582#1585#1610#1583#1575#1585
      TabOrder = 5
      OnClick = koli_kharidarClick
    end
    object koli_forohande: TCheckBox
      Left = 80
      Top = 112
      Width = 97
      Height = 17
      Caption = #1705#1604#1610' '#1601#1585#1608#1588#1606#1583#1607
      TabOrder = 6
      OnClick = koli_forohandeClick
    end
    object koli_roz: TCheckBox
      Left = 48
      Top = 160
      Width = 129
      Height = 17
      Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1610#1575#1578#1610' '#1585#1608#1586
      TabOrder = 7
      OnClick = koli_rozClick
    end
  end
  object GroupBox12: TGroupBox
    Left = 198
    Top = 135
    Width = 191
    Height = 231
    BiDiMode = bdRightToLeft
    Caption = '  '#1594#1610#1585#1607'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 10
    object geyre_sefareshat: TCheckBox
      Left = 56
      Top = 16
      Width = 121
      Height = 17
      Caption = #1605#1588#1575#1607#1583#1607' '#1587#1601#1575#1585#1588#1575#1578
      TabOrder = 0
      OnClick = geyre_sefareshatClick
    end
    object geyre_yaddasht: TCheckBox
      Left = 56
      Top = 40
      Width = 121
      Height = 17
      Caption = #1605#1588#1575#1607#1583#1607' '#1610#1575#1583#1583#1575#1588#1578#1607#1575
      TabOrder = 1
      OnClick = geyre_yaddashtClick
    end
    object geyre_mianbor: TCheckBox
      Left = 80
      Top = 64
      Width = 97
      Height = 17
      Caption = #1705#1604#1610#1583#1607#1575#1610' '#1605#1610#1575#1606#1576#1585
      TabOrder = 2
      OnClick = geyre_mianborClick
    end
    object CheckBox80: TCheckBox
      Left = 80
      Top = 88
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 3
    end
    object geyre_mashinhesab: TCheckBox
      Left = 32
      Top = 87
      Width = 145
      Height = 17
      Caption = #1575#1580#1585#1575#1610' '#1605#1575#1588#1610#1606' '#1581#1587#1575#1576
      TabOrder = 4
      OnClick = geyre_mashinhesabClick
    end
    object geyre_seda: TCheckBox
      Left = 40
      Top = 112
      Width = 137
      Height = 17
      Caption = #1578#1606#1592#1610#1605#1575#1578' '#1589#1583#1575#1610' '#1587#1610#1587#1578#1605
      TabOrder = 5
      OnClick = geyre_sedaClick
    end
    object geyre_printer: TCheckBox
      Left = 80
      Top = 136
      Width = 97
      Height = 17
      Caption = #1578#1606#1592#1610#1605#1575#1578' '#1662#1585#1610#1606#1578#1585
      TabOrder = 6
      OnClick = geyre_printerClick
    end
    object geyre_mediaplayer: TCheckBox
      Left = 40
      Top = 160
      Width = 137
      Height = 17
      Caption = 'Windows Media Player'
      TabOrder = 7
      OnClick = geyre_mediaplayerClick
    end
    object geyre_explorer: TCheckBox
      Left = 40
      Top = 184
      Width = 137
      Height = 17
      Caption = 'Windows Explorer'
      TabOrder = 8
      OnClick = geyre_explorerClick
    end
  end
  object GroupBox9: TGroupBox
    Left = 395
    Top = 135
    Width = 191
    Height = 231
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1589#1604#1575#1581' '#1575#1605#1608#1585' '#1605#1575#1604#1610'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 11
    object eslahe_mali_geymate_forosh: TCheckBox
      Left = 24
      Top = 16
      Width = 153
      Height = 17
      Caption = #1608#1610#1585#1575#1610#1588' '#1602#1610#1605#1578' '#1601#1585#1608#1588' '#1580#1606#1587
      TabOrder = 0
      OnClick = eslahe_mali_geymate_foroshClick
    end
    object eslahe_mali_geymate_kharid: TCheckBox
      Left = 40
      Top = 40
      Width = 137
      Height = 17
      Caption = #1608#1610#1585#1575#1610#1588' '#1602#1610#1605#1578' '#1582#1585#1610#1583' '#1580#1606#1587
      TabOrder = 1
      OnClick = eslahe_mali_geymate_kharidClick
    end
    object eslahe_mali_forosh: TCheckBox
      Left = 40
      Top = 64
      Width = 137
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1601#1575#1705#1578#1608#1585' '#1601#1585#1608#1588
      TabOrder = 2
      OnClick = eslahe_mali_foroshClick
    end
    object CheckBox55: TCheckBox
      Left = 80
      Top = 88
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 3
    end
    object eslahe_mali_kharid: TCheckBox
      Left = 48
      Top = 87
      Width = 129
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1601#1575#1705#1578#1608#1585' '#1582#1585#1610#1583
      TabOrder = 4
      OnClick = eslahe_mali_kharidClick
    end
    object eslahe_mali_pardakhte_kharidar: TCheckBox
      Left = 48
      Top = 112
      Width = 129
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1662#1585#1583#1575#1582#1578' '#1582#1585#1610#1583#1575#1585
      TabOrder = 5
      OnClick = eslahe_mali_pardakhte_kharidarClick
    end
    object eslahe_mali_pardakht_be_foroshande: TCheckBox
      Left = 24
      Top = 136
      Width = 153
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1662#1585#1583#1575#1582#1578' '#1576#1607' '#1601#1585#1608#1588#1606#1583#1607
      TabOrder = 6
      OnClick = eslahe_mali_pardakht_be_foroshandeClick
    end
    object eslahe_mali_kharidar: TCheckBox
      Left = 32
      Top = 160
      Width = 145
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1576#1583#1607#1610' '#1608' '#1591#1604#1576' '#1582#1585#1610#1583#1575#1585
      TabOrder = 7
      OnClick = eslahe_mali_kharidarClick
    end
    object eslahe_mali_foroshande: TCheckBox
      Left = 8
      Top = 184
      Width = 169
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1576#1583#1607#1610' '#1608' '#1591#1604#1576' '#1601#1585#1608#1588#1606#1583#1607
      TabOrder = 8
      OnClick = eslahe_mali_foroshandeClick
    end
    object eslahe_mali_banki: TCheckBox
      Left = 40
      Top = 208
      Width = 137
      Height = 17
      Caption = #1575#1589#1604#1575#1581' '#1605#1608#1585#1583' '#1576#1575#1606#1705#1610
      TabOrder = 9
      OnClick = eslahe_mali_bankiClick
    end
  end
  object suiBtaeed1: TsuiButton
    Left = 19
    Top = 598
    Width = 106
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
    TabOrder = 12
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiBtaeed1Click
    ResHandle = 0
  end
end
