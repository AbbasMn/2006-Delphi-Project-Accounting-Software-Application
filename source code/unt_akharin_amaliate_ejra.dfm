object frm_akharin_amaliate_ejra: Tfrm_akharin_amaliate_ejra
  Left = 274
  Top = 283
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1570#1582#1585#1610#1606' '#1593#1605#1604#1610#1575#1578' '#1575#1606#1580#1575#1605' '#1711#1585#1601#1578#1607' '#1583#1585' '#1570#1582#1585#1610#1606' '#1575#1580#1585#1575#1610' '#1581#1587#1575#1576#1583#1575#1585
  ClientHeight = 227
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    395
    227)
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 35
    Top = 8
    Width = 142
    Height = 20
    Alignment = taCenter
    BiDiMode = bdRightToLeftReadingOnly
    DataField = 'tarikh'
    DataSource = DataSource1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label9: TLabel
    Left = 196
    Top = 12
    Width = 137
    Height = 14
    Caption = ':'#1578#1575#1585#1610#1582' '#1570#1582#1585#1610#1606' '#1575#1580#1585#1575#1610' '#1581#1587#1575#1576#1583#1575#1585
    Font.Charset = ARABIC_CHARSET
    Font.Color = clHotLight
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 196
    Top = 36
    Width = 196
    Height = 14
    Caption = ':'#1586#1605#1575#1606' '#1575#1606#1580#1575#1605' '#1570#1582#1585#1610#1606' '#1593#1605#1604#1610#1575#1578' '#1583#1585' '#1570#1582#1585#1610#1606' '#1575#1580#1585#1575
    Font.Charset = ARABIC_CHARSET
    Font.Color = clHotLight
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 35
    Top = 32
    Width = 142
    Height = 20
    Alignment = taCenter
    BiDiMode = bdRightToLeftReadingOnly
    DataField = 'time_'
    DataSource = DataSource1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 196
    Top = 57
    Width = 141
    Height = 14
    Caption = ':'#1570#1582#1585#1610#1606' '#1593#1605#1604#1610#1575#1578' '#1583#1585' '#1570#1582#1585#1610#1606' '#1575#1580#1585#1575
    Font.Charset = ARABIC_CHARSET
    Font.Color = clHotLight
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TeDBMemo2: TTeDBMemo
    Left = 0
    Top = 77
    Width = 394
    Height = 148
    TabStop = False
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'TeDBMemo2')
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    ThemeObject = 'default'
    DataField = 'amaliat'
    DataSource = DataSource1
  end
  object DataSource1: TDataSource
    DataSet = frm_main.ADOQ_amaliat
    Left = 112
    Top = 24
  end
end
