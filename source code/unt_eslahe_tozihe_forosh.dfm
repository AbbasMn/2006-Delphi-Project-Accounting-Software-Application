object frm_eslahe_tozihe_forosh: Tfrm_eslahe_tozihe_forosh
  Left = 303
  Top = 272
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 267
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    412
    267)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 47
    Top = 46
    Width = 319
    Height = 16
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1581#1583' '#1575#1705#1579#1585' '#1578#1593#1583#1575#1583' '#1705#1575#1585#1575#1705#1578#1585#1607#1575' '#1576#1585#1575#1610' '#1578#1608#1590#1610#1581#1575#1578' 250 '#1705#1575#1585#1575#1705#1578#1585' '#1605#1610' '#1576#1575#1588#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 52
    Top = 14
    Width = 309
    Height = 16
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1578#1608#1590#1610#1581#1575#1578' '#1605#1585#1576#1608#1591' '#1576#1607' '#1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1605#1610' '#1576#1575#1588#1606#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
  end
  object DBMemo1: TDBMemo
    Left = 2
    Top = 72
    Width = 408
    Height = 193
    BiDiMode = bdRightToLeft
    DataField = 'molahezatforosh'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 249
    ParentBiDiMode = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object DataSource1: TDataSource
    DataSet = Dmanbarexite.ADOanbarcala
    Left = 40
    Top = 32
  end
end
