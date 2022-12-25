object frm_eslah_pardakhtha_be_foroshnde: Tfrm_eslah_pardakhtha_be_foroshnde
  Left = 242
  Top = 175
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1608#1610#1585#1575#1610#1588' '#1662#1585#1583#1575#1582#1578#1607#1575' '#1576#1607' '#1601#1585#1608#1588#1606#1583#1607
  ClientHeight = 509
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    573
    509)
  PixelsPerInch = 96
  TextHeight = 13
  object L_id: TLabel
    Left = 328
    Top = 4
    Width = 19
    Height = 13
    Caption = 'L_id'
    Visible = False
  end
  object L_mablagh: TLabel
    Left = 177
    Top = 240
    Width = 51
    Height = 13
    Caption = 'L_mablagh'
    Visible = False
  end
  object l_time: TLabel
    Left = 169
    Top = 223
    Width = 51
    Height = 13
    Caption = 'L_mablagh'
    Visible = False
  end
  object l_review: TLabel
    Left = 8
    Top = 240
    Width = 40
    Height = 13
    Caption = 'l_review'
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 232
    Top = 4
    Width = 337
    Height = 252
    BiDiMode = bdRightToLeft
    Caption = #1605#1588#1582#1589#1575#1578' '#1588#1582#1589
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      337
      252)
    object Label4: TLabel
      Left = 256
      Top = 22
      Width = 51
      Height = 13
      Caption = #1606#1575#1605' '#1588#1582#1589':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 81
      Top = 22
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
      Top = 45
      Width = 328
      Height = 202
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
          FieldName = 'code'
          Title.Alignment = taCenter
          Title.Caption = #1705#1583
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'shahrforoshande'
          Title.Alignment = taCenter
          Title.Caption = #1605#1588#1582#1589#1575#1578
          Width = 251
          Visible = True
        end>
    end
    object E_name: TEdit
      Left = 137
      Top = 18
      Width = 115
      Height = 21
      MaxLength = 10
      TabOrder = 0
      OnChange = E_nameChange
    end
    object e_cod: TEdit
      Left = 26
      Top = 17
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
  object suiDBGrid2: TsuiDBGrid
    Left = 2
    Top = 258
    Width = 570
    Height = 248
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
    TabOrder = 6
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
        Title.Caption = #1605#1588#1582#1589#1575#1578' '#1601#1585#1608#1588#1606#1583#1607
        Width = 192
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'mablagh'
        Title.Alignment = taCenter
        Title.Caption = #1605#1576#1604#1594' '#1662#1585#1583#1575#1582#1578#1610
        Width = 132
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'time_'
        Title.Alignment = taCenter
        Title.Caption = #1587#1575#1593#1578' '#1662#1585#1583#1575#1582#1578
        Width = 102
        Visible = True
      end>
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 155
    Width = 225
    Height = 75
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1588#1582#1589#1575#1578' '#1580#1583#1610#1583' '#1662#1585#1583#1575#1582#1578' '#1575#1606#1578#1582#1575#1576#1610'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    object Label3: TLabel
      Left = 150
      Top = 25
      Width = 68
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = #1605#1576#1604#1594' '#1662#1585#1583#1575#1582#1578#1610' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 150
      Top = 53
      Width = 67
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578'  :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object E_mablagh: TEdit
      Left = 3
      Top = 20
      Width = 132
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 0
      OnKeyPress = E_mablaghKeyPress
    end
    object e_t_roz: TMaskEdit
      Left = 109
      Top = 47
      Width = 26
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
      OnExit = e_t_rozExit
      OnKeyPress = e_t_rozKeyPress
    end
    object e_t_mah: TMaskEdit
      Left = 76
      Top = 47
      Width = 28
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 2
      OnExit = e_t_mahExit
      OnKeyPress = e_t_mahKeyPress
    end
    object e_t_sal: TMaskEdit
      Left = 30
      Top = 47
      Width = 41
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 3
      OnExit = e_t_salExit
      OnKeyPress = e_t_salKeyPress
    end
  end
  object suiButton7: TsuiButton
    Left = 116
    Top = 230
    Width = 52
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1582#1585#1608#1580
    AutoSize = False
    ParentFont = False
    UIStyle = WinXP
    TabOrder = 5
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton7Click
    ResHandle = 0
  end
  object suiButton6: TsuiButton
    Left = 58
    Top = 230
    Width = 52
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = #1578#1575#1610#1610#1583
    AutoSize = False
    ParentFont = False
    UIStyle = WinXP
    TabOrder = 4
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton6Click
    ResHandle = 0
  end
  object G_mah: TGroupBox
    Left = 3
    Top = 87
    Width = 225
    Height = 68
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1608' '#1605#1575#1607' '#1662#1585#1583#1575#1582#1578'   '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 7
    object Label2: TLabel
      Left = 165
      Top = 45
      Width = 33
      Height = 13
      Caption = ' '#1605#1575#1607'    :'
    end
    object Label1: TLabel
      Left = 165
      Top = 19
      Width = 34
      Height = 13
      Caption = ' '#1587#1575#1604'  :'
    end
    object dbsal: TDBLookupComboBox
      Left = 33
      Top = 17
      Width = 111
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
      ListSource = DataSource2
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = dbsalClick
    end
    object scmah: TComboBox
      Left = 33
      Top = 42
      Width = 111
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = scmahChange
      Items.Strings = (
        #1601#1585#1608#1585#1583#1610#1606
        #1575#1585#1583#1610#1576#1607#1588#1578
        #1582#1585#1583#1575#1583
        #1578#1610#1585
        #1605#1585#1583#1575#1583
        #1588#1607#1585#1610#1608#1585
        #1605#1607#1585
        #1570#1576#1575#1606
        #1570#1584#1585
        #1583#1610' '
        #1576#1607#1605#1606
        #1575#1587#1601#1606#1583
        '')
    end
  end
  object GroupBox4: TGroupBox
    Left = 3
    Top = 4
    Width = 225
    Height = 83
    BiDiMode = bdRightToLeft
    Caption = '  '#1580#1587#1578#1580#1608#1610' '#1662#1585#1583#1575#1582#1578' '#1576#1585#1575#1610' '#1575#1589#1604#1575#1581'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object RadioGroup1: TRadioGroup
      Left = 11
      Top = 15
      Width = 208
      Height = 63
      BiDiMode = bdRightToLeft
      ItemIndex = 0
      Items.Strings = (
        #1580#1587#1578#1580#1608' '#1583#1585' '#1662#1585#1583#1575#1582#1578#1607#1575#1610' '#1605#1575#1607
        #1580#1587#1578#1580#1608' '#1583#1585#1662#1585#1583#1575#1582#1578#1607#1575#1610' '#1585#1608#1586
        #1607#1605#1607' '#1662#1585#1583#1575#1582#1578#1607#1575)
      ParentBiDiMode = False
      TabOrder = 0
      TabStop = True
      OnClick = RadioGroup1Click
    end
  end
  object G_tarikh: TGroupBox
    Left = 3
    Top = 87
    Width = 225
    Height = 68
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    object RadioGroup2: TRadioGroup
      Left = 110
      Top = 18
      Width = 103
      Height = 33
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
      Left = 72
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
      Left = 46
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
      Left = 10
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
  object DataSource2: TDataSource
    DataSet = DataModule1.ADOQsaljadid
    Left = 178
    Top = 134
  end
  object DataSource3: TDataSource
    DataSet = DataModule1.ADOQuery3
    Left = 365
    Top = 170
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ADOpardakhtbedehi
    Left = 352
    Top = 320
  end
end
