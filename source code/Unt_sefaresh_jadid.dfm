object Frm_sefaresh_jadid: TFrm_sefaresh_jadid
  Left = 135
  Top = 134
  BorderStyle = bsDialog
  Caption = #1587#1601#1575#1585#1588' '#1580#1583#1610#1583
  ClientHeight = 448
  ClientWidth = 569
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 1
    Top = 6
    Width = 566
    Height = 440
    Align = alCustom
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1588#1582#1589#1575#1578' '#1587#1601#1575#1585#1588'   '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      566
      440)
    object GroupBox3: TGroupBox
      Left = 6
      Top = 18
      Width = 284
      Height = 333
      Caption = ' * '#1575#1606#1578#1582#1575#1576' '#1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607'  '
      TabOrder = 4
      DesignSize = (
        284
        333)
      object Label3: TLabel
        Left = 219
        Top = 23
        Width = 51
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = #1606#1575#1605' '#1588#1582#1589':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label10: TLabel
        Left = 75
        Top = 23
        Width = 49
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583' '#1588#1582#1589':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object suiDBGrid1: TsuiDBGrid
        Left = 4
        Top = 53
        Width = 276
        Height = 276
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = True
        DataSource = DataSource3
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
        TabOrder = 2
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
            FieldName = 'shahrforoshande'
            Title.Alignment = taCenter
            Title.Caption = #1605#1588#1582#1589#1575#1578' '#1588#1582#1589
            Width = 210
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'code'
            Title.Alignment = taCenter
            Title.Caption = #1705#1583
            Width = 30
            Visible = True
          end>
      end
      object E_name: TEdit
        Left = 133
        Top = 19
        Width = 80
        Height = 21
        MaxLength = 10
        TabOrder = 0
        OnChange = E_nameChange
      end
      object e_cod: TEdit
        Left = 21
        Top = 18
        Width = 52
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 30
        ParentFont = False
        TabOrder = 1
        OnChange = e_codChange
        OnKeyPress = e_codKeyPress
      end
    end
    object GroupBox2: TGroupBox
      Left = 6
      Top = 354
      Width = 284
      Height = 55
      Caption = '  '#1578#1575#1585#1610#1582' '#1610#1575#1583#1570#1608#1585#1610' '#1587#1601#1575#1585#1588' '
      TabOrder = 5
      object suiButton4: TsuiButton
        Left = 169
        Top = 24
        Width = 60
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = #1578#1575#1585#1610#1582' *'
        AutoSize = False
        ParentFont = False
        FileTheme = frm_main.suiFileTheme1
        UIStyle = WinXP
        TabOrder = 0
        Transparent = False
        ModalResult = 0
        FocusedRectMargin = 2
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        OnClick = suiButton4Click
        ResHandle = 0
      end
      object MaskEditrooz: TMaskEdit
        Left = 95
        Top = 24
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
        Left = 69
        Top = 24
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
        Left = 33
        Top = 24
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
    object GroupBox_s_jens: TGroupBox
      Left = 293
      Top = 61
      Width = 269
      Height = 167
      Caption = '  '#1587#1601#1575#1585#1588' '#1580#1606#1587'  '
      TabOrder = 2
      DesignSize = (
        269
        167)
      object Label6: TLabel
        Left = 155
        Top = 143
        Width = 76
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = '*'#1578#1593#1583#1575#1583' '#1587#1601#1575#1585#1588' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object RadioGroup_s_type: TRadioGroup
        Left = 9
        Top = 14
        Width = 251
        Height = 51
        Anchors = [akTop]
        BiDiMode = bdRightToLeft
        ItemIndex = 0
        Items.Strings = (
          #1580#1606#1587' '#1605#1608#1580#1608#1583' '#1583#1585#1605#1705#1575#1606#1607#1575
          #1580#1606#1587' '#1580#1583#1610#1583)
        ParentBiDiMode = False
        TabOrder = 0
        TabStop = True
        OnClick = RadioGroup_s_typeClick
      end
      object GroupBox_s_jadid: TGroupBox
        Left = 9
        Top = 65
        Width = 251
        Height = 65
        TabOrder = 2
        object Label2: TLabel
          Left = 180
          Top = 29
          Width = 63
          Height = 13
          BiDiMode = bdRightToLeft
          Caption = '*'#1580#1606#1587' '#1580#1583#1610#1583' :'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Edit_jens_jadid: TEdit
          Left = 6
          Top = 24
          Width = 171
          Height = 22
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 30
          ParentFont = False
          TabOrder = 0
          OnChange = Edit_jens_jadidChange
        end
      end
      object Edit_tedad: TEdit
        Left = 38
        Top = 139
        Width = 111
        Height = 21
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 3
        OnKeyPress = Edit_tedadKeyPress
      end
      object GroupBox_s_anbar: TGroupBox
        Left = 9
        Top = 65
        Width = 251
        Height = 65
        TabOrder = 1
        object l_jans_name: TLabel
          Left = 4
          Top = 37
          Width = 242
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Caption = 'l_jans_name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Button1: TButton
          Left = 69
          Top = 12
          Width = 114
          Height = 21
          Caption = #1604#1610#1587#1578' '#1575#1580#1606#1575#1587'  '#1605#1705#1575#1606#1607#1575
          TabOrder = 0
          OnClick = Button1Click
        end
      end
    end
    object GroupBox5: TGroupBox
      Left = 294
      Top = 230
      Width = 269
      Height = 207
      Caption = ' * '#1605#1578#1606' '#1587#1601#1575#1585#1588' '
      TabOrder = 3
      DesignSize = (
        269
        207)
      object TeMemo_matn: TTeMemo
        Left = 6
        Top = 20
        Width = 258
        Height = 156
        BiDiMode = bdRightToLeft
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 250
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        ThemeObject = 'default'
      end
      object suiButton1: TsuiButton
        Left = 108
        Top = 181
        Width = 52
        Height = 21
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = #1662#1575#1705' '#1705#1585#1583#1606
        AutoSize = False
        ParentFont = False
        FileTheme = frm_main.suiFileTheme1
        UIStyle = WinXP
        TabOrder = 1
        Transparent = False
        ModalResult = 0
        FocusedRectMargin = 2
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        OnClick = suiButton1Click
        ResHandle = 0
      end
    end
    object suiButton8: TsuiButton
      Left = 53
      Top = 412
      Width = 45
      Height = 25
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1582#1585#1608#1580
      AutoSize = False
      ParentFont = False
      FileTheme = frm_main.suiFileTheme1
      UIStyle = WinXP
      TabOrder = 7
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton8Click
      ResHandle = 0
    end
    object suiButton2: TsuiButton
      Left = 6
      Top = 412
      Width = 45
      Height = 25
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1578#1575#1610#1610#1583
      AutoSize = False
      ParentFont = False
      FileTheme = frm_main.suiFileTheme1
      UIStyle = WinXP
      TabOrder = 6
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton2Click
      ResHandle = 0
    end
    object GroupBox_s_geyre: TGroupBox
      Left = 293
      Top = 61
      Width = 269
      Height = 167
      Caption = '  '#1593#1606#1608#1575#1606' '#1587#1601#1575#1585#1588' '#1594#1610#1585#1607'  '
      TabOrder = 1
      object Label4: TLabel
        Left = 91
        Top = 56
        Width = 82
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = '*'#1593#1606#1608#1575#1606' '#1587#1601#1575#1585#1588'  :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Edit_onvan: TEdit
        Left = 28
        Top = 88
        Width = 213
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 20
        ParentFont = False
        TabOrder = 0
      end
    end
    object RadioGroup_noe_sefaresh: TRadioGroup
      Left = 293
      Top = 18
      Width = 269
      Height = 37
      Anchors = [akTop]
      BiDiMode = bdRightToLeft
      Caption = '  '#1575#1606#1578#1582#1575#1576' '#1606#1608#1593' '#1587#1601#1575#1585#1588' '
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        #1587#1601#1575#1585#1588' '#1580#1606#1587
        #1594#1610#1585#1607)
      ParentBiDiMode = False
      TabOrder = 0
      TabStop = True
      OnClick = RadioGroup_noe_sefareshClick
    end
  end
  object DataSource1: TDataSource
    DataSet = Dmanbar.ADOeditgeymat
    Left = 296
    Top = 176
  end
  object DataSource3: TDataSource
    DataSet = DataModule1.ADOQuery3
    Left = 77
    Top = 114
  end
end
