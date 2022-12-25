object frm_eslahe_zayeat: Tfrm_eslahe_zayeat
  Left = 445
  Top = 208
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1589#1604#1575#1581' '#1578#1593#1583#1575#1583' '#1590#1575#1610#1593#1575#1578' '#1580#1606#1587
  ClientHeight = 333
  ClientWidth = 402
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
    402
    333)
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 255
    Top = 277
    Width = 116
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1578#1593#1583#1575#1583' '#1705#1604' '#1576#1593#1583' '#1575#1586' '#1575#1589#1604#1575#1581'     :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object L_jam_jadid: TLabel
    Left = 31
    Top = 276
    Width = 214
    Height = 17
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
  object GroupBox_jens: TGroupBox
    Left = 5
    Top = 9
    Width = 393
    Height = 161
    BiDiMode = bdRightToLeft
    Caption = '   '#1578#1593#1583#1575#1583' '#1601#1593#1604#1610' '#1590#1575#1610#1593#1575#1578' '#1580#1606#1587'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object Label13: TLabel
      Left = 258
      Top = 42
      Width = 101
      Height = 13
      Caption = #1578#1593#1583#1575#1583' '#1705#1604#1610'                 :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText_t_koli: TDBText
      Left = 34
      Top = 40
      Width = 180
      Height = 18
      Alignment = taCenter
      DataField = 'tedad_koli'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 258
      Top = 67
      Width = 100
      Height = 13
      Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610' '#1583#1585' '#1705#1604#1610'   :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText_t_jozi_dar_koli: TDBText
      Left = 34
      Top = 65
      Width = 180
      Height = 18
      Alignment = taCenter
      DataField = 'tedad_jozi_da_koli'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText_t_jam: TDBText
      Left = 34
      Top = 90
      Width = 180
      Height = 18
      Alignment = taCenter
      DataField = 'tedadanbar'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText_jens: TDBText
      Left = 34
      Top = 15
      Width = 180
      Height = 18
      Alignment = taCenter
      DataField = 'calaname'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 258
      Top = 144
      Width = 100
      Height = 13
      Caption = #1602#1610#1605#1578' '#1580#1606#1587'              :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1_g_kol_gadim: TDBText
      Left = 34
      Top = 141
      Width = 180
      Height = 18
      Alignment = taCenter
      DataField = 'geymatkharid'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 258
      Top = 17
      Width = 102
      Height = 13
      Caption = #1606#1575#1605' '#1580#1606#1587'                   :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 258
      Top = 93
      Width = 100
      Height = 13
      Caption = #1578#1593#1583#1575#1583#1705#1604'                    :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 258
      Top = 118
      Width = 102
      Height = 13
      Caption = #1582#1585#1608#1580' '#1575#1586' '#1605#1705#1575#1606'             :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 35
      Top = 115
      Width = 180
      Height = 18
      Alignment = taCenter
      DataField = 'anbarname'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -15
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 178
    Width = 393
    Height = 81
    BiDiMode = bdRightToLeft
    Caption = '  '#1578#1593#1583#1575#1583' '#1580#1583#1610#1583' '#1590#1575#1610#1593#1575#1578'  '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object Label7: TLabel
      Left = 235
      Top = 27
      Width = 108
      Height = 13
      Caption = #1578#1593#1583#1575#1583' '#1705#1604#1610' '#1580#1583#1610#1583'           :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 235
      Top = 55
      Width = 108
      Height = 13
      Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610' '#1580#1583#1610#1583'         :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit_t_koli_jadid_: TEdit
      Left = 49
      Top = 22
      Width = 143
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
      OnChange = Edit_t_koli_jadid_Change
      OnKeyPress = Edit_t_koli_jadid_KeyPress
    end
    object Edit_t_jozi_jadid: TEdit
      Left = 49
      Top = 50
      Width = 143
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 1
      OnChange = Edit_t_jozi_jadidChange
      OnKeyPress = Edit_t_jozi_jadidKeyPress
    end
    object GroupBox2: TGroupBox
      Left = 12
      Top = 161
      Width = 331
      Height = 87
      Caption = '  '#1605#1588#1582#1589#1575#1578' '#1605#1575#1604#1610' '#1580#1583#1610#1583' '#1601#1585#1608#1588'  '
      TabOrder = 2
      object Label11: TLabel
        Left = 199
        Top = 52
        Width = 119
        Height = 13
        Caption = #1602#1610#1605#1578' '#1705#1604' '#1601#1585#1608#1588'              :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 199
        Top = 27
        Width = 119
        Height = 13
        Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583' '#1580#1586#1574#1610'            :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 40
        Top = 26
        Width = 137
        Height = 14
        Alignment = taRightJustify
        DataField = 'geymat_vahed'
        DataSource = frm_eslah_forosh.Dskharidha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 37
        Top = 52
        Width = 140
        Height = 14
        Caption = #1602#1610#1605#1578' '#1705#1604' '#1601#1585#1608#1588'              :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Button1: TButton
    Left = 163
    Top = 304
    Width = 75
    Height = 24
    Caption = #1578#1575#1610#1610#1583' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = Dm_zayeat_marjoei.ADOQ_zayeat
    Left = 184
    Top = 64
  end
end
