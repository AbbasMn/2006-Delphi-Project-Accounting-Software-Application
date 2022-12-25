object frm_sleep: Tfrm_sleep
  Left = 361
  Top = 415
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 88
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
    88)
  PixelsPerInch = 96
  TextHeight = 13
  object l_payam: TLabel
    Left = 219
    Top = 16
    Width = 81
    Height = 22
    Alignment = taRightJustify
    Anchors = [akTop]
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = 'l_payam'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -17
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object l_matne_payam: TLabel
    Left = 0
    Top = 16
    Width = 213
    Height = 22
    Anchors = [akTop]
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = 'l_payam'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -17
    Font.Name = 'Nazanin'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 4
    Top = 54
    Width = 393
    Height = 20
    BorderWidth = 1
    TabOrder = 0
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 16
    Top = 8
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 400
    OnTimer = Timer2Timer
    Left = 360
    Top = 16
  end
end
