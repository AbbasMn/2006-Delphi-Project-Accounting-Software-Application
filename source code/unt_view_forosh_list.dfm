object frm_veiw_forosh_list: Tfrm_veiw_forosh_list
  Left = 56
  Top = 144
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1604#1610#1587#1578' '#1601#1585#1608#1588#1607#1575#1610' '#1588#1605#1575
  ClientHeight = 478
  ClientWidth = 792
  Color = clBtnFace
  Constraints.MaxHeight = 776
  Constraints.MaxWidth = 1032
  Constraints.MinHeight = 50
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    792
    478)
  PixelsPerInch = 96
  TextHeight = 13
  object suiDBGrid1: TsuiDBGrid
    Left = -2
    Top = 8
    Width = 794
    Height = 470
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = DataSource1
    FixedColor = clMenu
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UIStyle = FromThemeFile
    BorderColor = clBlack
    FocusedColor = clNavy
    SelectedColor = clYellow
    FontColor = clBlack
    TitleFontColor = clBlack
    FixedBGColor = clMenu
    BGColor = clBtnFace
    Columns = <
      item
        Expanded = False
        FieldName = 'shahr'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1588#1607#1585
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kharidar'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1582#1585#1610#1583#1575#1585
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jens'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1580#1606#1587
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'geymat_vahed'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583' '#1580#1606#1587
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tedad'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583#1580#1606#1587
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'geymat_jens'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1705#1604
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'daryaft_nagd'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1662#1585#1583#1575#1582#1578' '#1606#1602#1583#1610
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'daryaft_chek'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1662#1585#1583#1575#1582#1578' '#1576#1607' '#1589#1608#1585#1578' '#1670#1705
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bedehi'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1576#1583#1607#1610' '#1582#1585#1610#1583
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chek_number'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1670#1705
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chek_tarikh'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1670#1705
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'forosh_tarikh'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1601#1585#1608#1588
        Width = 60
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Dmlistha.adolistforosh
    Left = 440
    Top = 64
  end
end
