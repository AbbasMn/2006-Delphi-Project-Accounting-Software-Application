object frm_entekhab_check: Tfrm_entekhab_check
  Left = 272
  Top = 110
  BorderStyle = bsDialog
  Caption = #1575#1606#1578#1582#1575#1576' '#1670#1705
  ClientHeight = 487
  ClientWidth = 424
  Color = clBtnFace
  Constraints.MinHeight = 50
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 274
    Top = 11
    Width = 108
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = '*'#1583#1587#1578#1607' '#1670#1705' '#1575#1586' '#1576#1575#1606#1705'      :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object GroupBox4: TGroupBox
    Left = 2
    Top = 216
    Width = 421
    Height = 271
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1588#1582#1589#1575#1578'   '#1576#1585#1711#1607' '#1670#1705' '#1575#1606#1578#1582#1575#1576#1610'   '
    ParentBiDiMode = False
    TabOrder = 0
    object Label11: TLabel
      Left = 249
      Top = 139
      Width = 122
      Height = 13
      Caption = '*'#1588#1605#1575#1585#1607' '#1576#1585#1711#1607' '#1670#1705'             :'
    end
    object Label4: TLabel
      Left = 249
      Top = 177
      Width = 120
      Height = 13
      Caption = '*'#1605#1576#1604#1594' '#1670#1705'                       :'
    end
    object Label14: TLabel
      Left = 249
      Top = 215
      Width = 120
      Height = 13
      Caption = '*'#1578#1575#1585#1610#1582'  '#1608' '#1605#1608#1593#1583' '#1670#1705'          :'
    end
    object l_type: TLabel
      Left = 365
      Top = 250
      Width = 30
      Height = 13
      Caption = 'l_type'
      Visible = False
    end
    object l_taeed_check_jadid: TLabel
      Left = 213
      Top = 240
      Width = 98
      Height = 13
      Caption = 'l_taeed_check_jadid'
      Visible = False
    end
    object suib: TsuiButton
      Left = 53
      Top = 244
      Width = 42
      Height = 22
      Font.Charset = ARABIC_CHARSET
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
      OnClick = suibClick
      ResHandle = 0
    end
    object suiButton6: TsuiButton
      Left = 5
      Top = 244
      Width = 42
      Height = 22
      Font.Charset = ARABIC_CHARSET
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
    object GroupBox1: TGroupBox
      Left = 11
      Top = 21
      Width = 402
      Height = 108
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        402
        108)
      object Label10: TLabel
        Left = 255
        Top = 12
        Width = 139
        Height = 14
        Caption = ' '#1576#1575#1606#1705' '#1588#1593#1576#1607' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 10
        Top = 10
        Width = 239
        Height = 22
        Alignment = taCenter
        Anchors = [akTop, akRight]
        DataField = 'bank_shobe_sh_hesab'
        DataSource = DataSource1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 276
        Top = 86
        Width = 115
        Height = 14
        Caption = #1578#1593#1583#1575#1583' '#1576#1585#1711' '#1605#1589#1585#1601' '#1588#1583#1607':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 185
        Top = 84
        Width = 89
        Height = 17
        Alignment = taCenter
        Anchors = [akTop, akRight]
        DataField = 'barg_keshide'
        DataSource = DataSource1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 94
        Top = 86
        Width = 82
        Height = 14
        Caption = #1578#1593#1583#1575#1583' '#1576#1585#1711' '#1605#1575#1606#1583#1607':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 4
        Top = 84
        Width = 89
        Height = 17
        Alignment = taCenter
        Anchors = [akTop, akRight]
        DataField = 'barg_mande'
        DataSource = DataSource1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText_id: TDBText
        Left = 39
        Top = 11
        Width = 82
        Height = 17
        Alignment = taCenter
        Anchors = [akTop, akRight]
        DataField = 'id'
        DataSource = DataSource1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object GroupBox7: TGroupBox
        Left = 8
        Top = 32
        Width = 391
        Height = 44
        Caption = '  '#1605#1581#1583#1608#1583#1607' '#1588#1605#1575#1585#1607' '#1576#1585#1711#1607#1575'  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          391
          44)
        object Label5: TLabel
          Left = 331
          Top = 22
          Width = 48
          Height = 14
          Caption = #1575#1586' '#1588#1605#1575#1585#1607':'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 132
          Top = 22
          Width = 48
          Height = 14
          Caption = #1578#1575' '#1588#1605#1575#1585#1607':'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 207
          Top = 20
          Width = 106
          Height = 17
          Alignment = taCenter
          Anchors = [akTop, akRight]
          DataField = 'down'
          DataSource = DataSource1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clMaroon
          Font.Height = -15
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText4: TDBText
          Left = 5
          Top = 20
          Width = 114
          Height = 17
          Alignment = taCenter
          Anchors = [akTop, akRight]
          DataField = 'up'
          DataSource = DataSource1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clMaroon
          Font.Height = -15
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
    end
    object Edit_shomare: TEdit
      Left = 50
      Top = 134
      Width = 144
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Edit_shomareKeyPress
    end
    object Edit_mablagh: TEdit
      Left = 50
      Top = 172
      Width = 143
      Height = 22
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit_mablaghKeyPress
    end
    object suiButton3: TsuiButton
      Left = 153
      Top = 210
      Width = 45
      Height = 22
      Caption = #1578#1575#1585#1610#1582
      AutoSize = False
      UIStyle = WinXP
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton3Click
      ResHandle = 0
    end
    object Edit_tarikh: TEdit
      Left = 50
      Top = 210
      Width = 94
      Height = 22
      TabStop = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 70
    Top = 7
    Width = 145
    Height = 21
    BiDiMode = bdRightToLeft
    Ctl3D = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'name'
    ListField = 'name'
    ListSource = DataSource2
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnClick = DBLookupComboBox1Click
  end
  object GroupBox6: TGroupBox
    Left = 6
    Top = 34
    Width = 411
    Height = 175
    BiDiMode = bdRightToLeft
    Caption = '  '#1583#1587#1578#1607' '#1670#1705#1607#1575#1610'  '#1576#1575#1606#1705' '#1575#1606#1578#1582#1575#1576#1610'  '
    ParentBiDiMode = False
    TabOrder = 2
    object DBGarshivforosh: TDBGrid
      Left = 4
      Top = 16
      Width = 403
      Height = 148
      Color = clBtnFace
      DataSource = DataSource1
      FixedColor = clMenu
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'bank_shobe_sh_hesab'
          Title.Alignment = taCenter
          Title.Caption = ' '#1576#1575#1606#1705' '#1588#1593#1576#1607' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'down'
          Title.Alignment = taCenter
          Title.Caption = #1575#1586#1588#1605#1575#1585#1607
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'up'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575' '#1588#1605#1575#1585#1607
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tedad_barg'
          Title.Alignment = taCenter
          Title.Caption = #1578#1593#1583#1575#1583' '#1576#1585#1711
          Width = 80
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = Dmlistha.ADOQuery_daste_check
    Left = 112
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = Dmlistha.ADOQuery_bank2
    Left = 24
    Top = 8
  end
end
