object frm_vorode_geymate_foroshe_dasi: Tfrm_vorode_geymate_foroshe_dasi
  Left = 420
  Top = 432
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1608#1585#1608#1583' '#1602#1610#1605#1578' '#1601#1585#1608#1588' '#1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610
  ClientHeight = 101
  ClientWidth = 315
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
    315
    101)
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 2
    Top = 7
    Width = 172
    Height = 21
    Alignment = taCenter
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    DataField = 'geymat_vahed'
    DataSource = DataSource1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -17
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 175
    Top = 11
    Width = 138
    Height = 13
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1602#1610#1605#1578' '#1578#1593#1610#1610#1606' '#1588#1583#1607' '#1576#1585#1575#1610' '#1601#1585#1608#1588':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 178
    Top = 51
    Width = 134
    Height = 13
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1602#1610#1605#1578' '#1580#1583#1610#1583' '#1576#1585#1575#1610' '#1601#1585#1608#1588'        :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object LMDSpeedButton1123: TLMDSpeedButton
    Left = 21
    Top = 76
    Width = 56
    Height = 22
    Caption = #1578#1575#1610#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LMDSpeedButton1123Click
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
  end
  object l_cod: TLabel
    Left = 152
    Top = 80
    Width = 26
    Height = 13
    Caption = 'l_cod'
    Visible = False
  end
  object e_geymate_jadid: TEdit
    Left = 19
    Top = 46
    Width = 143
    Height = 22
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 8
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnKeyPress = e_geymate_jadidKeyPress
  end
  object DataSource1: TDataSource
    DataSet = DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh
    Left = 152
  end
end
