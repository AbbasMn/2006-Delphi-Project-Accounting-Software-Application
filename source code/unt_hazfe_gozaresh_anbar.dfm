object frm_hazfe_gozaresh_anbar: Tfrm_hazfe_gozaresh_anbar
  Left = 350
  Top = 199
  Width = 472
  Height = 302
  BorderIcons = [biSystemMenu]
  Caption = #1581#1584#1601' '#1711#1586#1575#1585#1588' '#1608#1585#1608#1583#1610' / '#1582#1585#1608#1580#1610' '#1605#1705#1575#1606' '#1580#1606#1587' '
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
    464
    268)
  PixelsPerInch = 96
  TextHeight = 13
  object DBText4: TDBText
    Left = 65
    Top = 27
    Width = 335
    Height = 27
    Alignment = taCenter
    BiDiMode = bdRightToLeftReadingOnly
    DataField = 'name'
    DataSource = Datasanbarname
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 27
    Top = 9
    Width = 410
    Height = 14
    Anchors = [akTop]
    Caption = 
      #1605#1705#1575#1606' '#1575#1606#1578#1582#1575#1576#1610' '#1576#1585#1575#1610' '#1575#1606#1580#1575#1605' '#1593#1605#1604#1610#1575#1578' '#1581#1584#1601' '#1711#1586#1575#1585#1588#1607#1575#1610'  '#1608#1585#1608#1583'/'#1582#1585#1608#1580'/'#1581#1584#1601' '#1579#1576#1578' '#1588 +
      #1583#1607' '#1605#1705#1575#1606
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lmdb_avali: TLMDSpeedButton
    Left = 176
    Top = 240
    Width = 113
    Height = 25
    Caption = #1578#1575#1610#1610#1583' '#1581#1584#1601
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = lmdb_avaliClick
    Anchors = [akTop]
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object GroupBox2: TGroupBox
    Left = 2
    Top = 64
    Width = 459
    Height = 170
    BiDiMode = bdRightToLeft
    Caption = 
      '  '#1575#1606#1578#1582#1575#1576' '#1670#1711#1608#1606#1711#1610' '#1581#1584#1601' '#1711#1586#1575#1585#1588' '#1607#1575#1610' '#1608#1585#1608#1583#1610' /'#1582#1585#1608#1580#1610'/'#1582#1584#1601' '#1575#1586' '#1605#1705#1575#1606' '#1575#1580#1606#1575#1587'  '#1576#1585 +
      #1575#1610' '#1605#1705#1575#1606' '#1575#1606#1578#1582#1575#1576#1610'  '
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      459
      170)
    object RadioGroup1: TRadioGroup
      Left = 14
      Top = 26
      Width = 432
      Height = 71
      Anchors = [akTop, akRight]
      ItemIndex = 0
      Items.Strings = (
        #1581#1584#1601' '#1705#1604#1610#1607' '#1608#1585#1608#1583#1610' '#1607#1575'/'#1582#1585#1608#1580#1610' '#1607#1575'/'#1581#1584#1601' '#1575#1586' '#1605#1705#1575#1606#1607#1575#1610' '#1575#1606#1580#1575#1605' '#1588#1583#1607' '#1583#1585' '#1578#1575#1585#1610#1582
        #1581#1584#1601' '#1705#1604#1610#1607' '#1608#1585#1608#1583#1610' '#1607#1575'/'#1582#1585#1608#1580#1610' '#1607#1575'/'#1581#1584#1601' '#1575#1586' '#1605#1705#1575#1606#1607#1575#1610' '#1575#1606#1580#1575#1605' '#1588#1583#1607' '#1583#1585' '#1587#1575#1604)
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object g_sal: TGroupBox
      Left = 119
      Top = 102
      Width = 221
      Height = 58
      Caption = ' '#1576#1585' '#1575#1587#1575#1587' '#1587#1575#1604'  '
      TabOrder = 1
      object Label1: TLabel
        Left = 170
        Top = 25
        Width = 31
        Height = 13
        Caption = ' '#1587#1575#1604' :'
      end
      object scsal: TDBLookupComboBox
        Left = 36
        Top = 21
        Width = 88
        Height = 21
        BiDiMode = bdRightToLeft
        Ctl3D = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'sal'
        ListField = 'sal'
        ListSource = DataSource1
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object g_tarikh: TGroupBox
      Left = 119
      Top = 102
      Width = 221
      Height = 58
      Caption = #1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582' '
      TabOrder = 2
      object RadioGroup2: TRadioGroup
        Left = 113
        Top = 16
        Width = 100
        Height = 31
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          #1575#1605#1585#1608#1586
          #1594#1610#1585#1607)
        TabOrder = 0
        TabStop = True
        OnClick = RadioGroup2Click
      end
      object MaskEditrooz: TMaskEdit
        Left = 67
        Top = 23
        Width = 29
        Height = 22
        TabStop = False
        EditMask = '99;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '  '
      end
      object MaskEditmah: TMaskEdit
        Left = 41
        Top = 23
        Width = 27
        Height = 22
        TabStop = False
        EditMask = '99;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '  '
      end
      object MaskEditsal: TMaskEdit
        Left = 5
        Top = 23
        Width = 35
        Height = 22
        TabStop = False
        EditMask = '9999;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '    '
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOQsaljadid
    Left = 56
    Top = 88
  end
  object Datasanbarname: TDataSource
    DataSet = Dmanbarexite.ADOanbarname
    Left = 752
    Top = 64
  end
end
