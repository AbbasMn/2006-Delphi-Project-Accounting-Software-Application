object Frm_edit_kharid_jens: TFrm_edit_kharid_jens
  Left = 174
  Top = 193
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #1608#1585#1583' '#1576#1607' '#1575#1606#1576#1575#1585
  ClientHeight = 510
  ClientWidth = 742
  Color = clBtnFace
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
  OnActivate = FormActivate
  OnShow = FormShow
  DesignSize = (
    742
    510)
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 137
    Top = 30
    Width = 3
    Height = 13
  end
  object GroupBox3: TGroupBox
    Left = 480
    Top = 7
    Width = 262
    Height = 339
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1575#1606#1578#1582#1575#1576' '#1580#1606#1587#1610' '#1705#1607' '#1578#1593#1583#1575#1583' '#1582#1585#1610#1583' '#1580#1583#1610#1583' '#1576#1607' '#1570#1606' '#1575#1590#1575#1601' '#1605#1610#1588#1608#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object suiBok: TsuiButton
      Left = 5
      Top = 307
      Width = 45
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1584#1582#1610#1585#1607
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiBokClick
      ResHandle = 0
    end
    object suiBno: TsuiButton
      Left = 52
      Top = 307
      Width = 45
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1575#1606#1589#1585#1575#1601
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiBnoClick
      ResHandle = 0
    end
    object GroupBox4: TGroupBox
      Left = 3
      Top = 184
      Width = 256
      Height = 118
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1576#1585#1575#1610' '#1601#1585#1608#1588
      TabOrder = 2
      object pmolaforforosh: TPDJXPMemo
        Left = 26
        Top = 18
        Width = 200
        Height = 89
        Lines.Strings = (
          #1580#1606#1587' '#1570#1605#1575#1583#1607' '#1601#1585#1608#1588' '#1605#1610' '#1576#1575#1588#1583)
        MaxLength = 30
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object GroupBox1: TGroupBox
      Left = 3
      Top = 19
      Width = 256
      Height = 94
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 3
      object Lcodjens: TLabel
        Left = 2
        Top = 68
        Width = 249
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
      end
      object Ljensname: TLabel
        Left = 2
        Top = 29
        Width = 248
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 95
        Top = 10
        Width = 66
        Height = 13
        Caption = #1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 107
        Top = 48
        Width = 43
        Height = 13
        Caption = #1705#1583' '#1580#1606#1587':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 114
      Width = 257
      Height = 53
      Caption = ' '#1578#1575#1585#1610#1582' '#1576#1607' '#1585#1608#1586' '#1585#1587#1575#1606#1610'  '
      TabOrder = 4
      object suiButton4: TsuiButton
        Left = 97
        Top = 21
        Width = 57
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = #1578#1575#1585#1610#1582' *'
        AutoSize = False
        ParentFont = False
        UIStyle = WinXP
        TabOrder = 1
        Transparent = False
        ModalResult = 0
        FocusedRectMargin = 2
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        OnClick = suiButton4Click
        ResHandle = 0
      end
      object RadioGroup1: TRadioGroup
        Left = 155
        Top = 14
        Width = 99
        Height = 33
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          #1575#1605#1585#1608#1586
          #1594#1610#1585#1607)
        TabOrder = 0
        TabStop = True
        OnClick = RadioGroup1Click
      end
      object MaskEditchrooz: TMaskEdit
        Left = 68
        Top = 23
        Width = 29
        Height = 22
        TabStop = False
        Enabled = False
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
      object MaskEditchmah: TMaskEdit
        Left = 40
        Top = 23
        Width = 28
        Height = 22
        TabStop = False
        Enabled = False
        EditMask = '99;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '  '
      end
      object MaskEditchsal: TMaskEdit
        Left = 2
        Top = 23
        Width = 37
        Height = 22
        TabStop = False
        Enabled = False
        EditMask = '9999;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = '    '
      end
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 0
    Top = 8
    Width = 479
    Height = 502
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = Dscalaedit
    FixedColor = clMenu
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UIStyle = Protein
    BorderColor = clBlack
    FocusedColor = clMaroon
    SelectedColor = clYellow
    FontColor = clBlack
    TitleFontColor = clBlack
    FixedBGColor = clMenu
    BGColor = clBtnFace
    Columns = <
      item
        Expanded = False
        FieldName = 'anbarname'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1575#1606#1576#1575#1585
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calaname'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1580#1606#1587
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tedadanbar'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calacod'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1705#1575#1604#1575
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'geymatkharid'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1582#1585#1610#1583
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'geymatforosh'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tedadanbar'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1605#1608#1580#1608#1583' '#1583#1585' '#1575#1606#1576#1575#1585
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tarikhedit'
        Title.Caption = #1578#1575#1585#1610#1582' '#1570#1582#1585#1610#1606' '#1576#1607' '#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1580#1606#1587
        Width = 120
        Visible = True
      end>
  end
  object Dscalaedit: TDataSource
    DataSet = Dmanbar.ADocalaforedit
    Left = 336
    Top = 168
  end
end
