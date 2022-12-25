object Frm_hazf_yaddasht: TFrm_hazf_yaddasht
  Left = 310
  Top = 213
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1581#1584#1601' '#1610#1575#1583#1583#1575#1588#1578
  ClientHeight = 343
  ClientWidth = 427
  Color = clBtnFace
  Constraints.MinHeight = 50
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LMDSpeedButton3: TLMDSpeedButton
    Left = 173
    Top = 319
    Width = 81
    Height = 22
    Caption = #1581#1584#1601' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LMDSpeedButton3Click
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object GroupBox5: TGroupBox
    Left = 1
    Top = 183
    Width = 426
    Height = 135
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1578#1606' '#1610#1575#1583#1583#1575#1588#1578'  '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      426
      135)
    object TeDBMemo2: TTeDBMemo
      Left = 5
      Top = 25
      Width = 415
      Height = 99
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      ThemeObject = 'default'
      DataField = 'matn'
      DataSource = DataSource1
    end
  end
  object GroupBox_s_jens: TGroupBox
    Left = 1
    Top = 2
    Width = 426
    Height = 182
    BiDiMode = bdRightToLeft
    Caption = ' '#1605#1588#1582#1589#1575#1578' '#1587#1601#1575#1585#1588' '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object DBText5: TDBText
      Left = 2
      Top = 15
      Width = 271
      Height = 19
      DataField = 'mozo'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 308
      Top = 18
      Width = 106
      Height = 13
      Caption = #1593#1606#1608#1575#1606' '#1610#1575#1583#1583#1575#1588#1578'           :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 308
      Top = 45
      Width = 106
      Height = 13
      Caption = #1585#1587#1610#1583#1711#1610' '#1576#1607' '#1610#1575#1583#1583#1575#1588#1578'  :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText9: TDBText
      Left = 208
      Top = 40
      Width = 65
      Height = 22
      DataField = 'anjam'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 308
      Top = 99
      Width = 106
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1576#1607' '#1610#1575#1583#1570#1608#1585#1610'           :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 308
      Top = 72
      Width = 106
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578' '#1610#1575#1583#1583#1575#1588#1578'      :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText10: TDBText
      Left = 195
      Top = 67
      Width = 78
      Height = 22
      DataField = 'tarikh_zakhire'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText11: TDBText
      Left = 195
      Top = 94
      Width = 78
      Height = 22
      DataField = 'tarikh_yadavary'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -16
      Font.Name = 'Nazanin'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox_geyre: TGroupBox
      Left = 16
      Top = 118
      Width = 393
      Height = 53
      BiDiMode = bdRightToLeft
      Caption = ' '#1610#1575#1583#1583#1575#1588#1578' '#1601#1585#1593#1610' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      object Label7: TLabel
        Left = 297
        Top = 26
        Width = 85
        Height = 13
        Caption = #1593#1606#1608#1575#1606' '#1610#1575#1583#1583#1575#1588#1578'    :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 4
        Top = 23
        Width = 286
        Height = 22
        Alignment = taCenter
        DataField = 'mozo'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox_shakhs: TGroupBox
      Left = 16
      Top = 118
      Width = 393
      Height = 53
      Caption = ' '#1610#1575#1583#1583#1575#1588#1578' '#1583#1585' '#1576#1575#1585#1607' '#1588#1582#1589' '
      TabOrder = 0
      object Label3: TLabel
        Left = 324
        Top = 25
        Width = 53
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = #1588#1582#1589'      :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 5
        Top = 23
        Width = 312
        Height = 20
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        DataField = 'shakhs'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule_gozaresh_tarkibi.ADOQuery_yaddasht
    Left = 96
    Top = 144
  end
end
