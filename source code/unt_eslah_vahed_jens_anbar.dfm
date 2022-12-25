object frm_eslah_vahed_jens_anbar: Tfrm_eslah_vahed_jens_anbar
  Left = 239
  Top = 116
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1589#1604#1575#1581' '#1608#1575#1581#1583' '#1580#1606#1587' '
  ClientHeight = 546
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    528
    546)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 3
    Top = 4
    Width = 523
    Height = 542
    Anchors = [akLeft, akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1580#1606#1575#1587' '#1608' '#1608#1575#1581#1583#1607#1575#1610' '#1570#1606#1607#1575'  '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      523
      542)
    object L_name: TLabel
      Left = 26
      Top = 24
      Width = 37
      Height = 13
      Caption = 'L_name'
      Visible = False
    end
    object Label6: TLabel
      Left = 382
      Top = 88
      Width = 115
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1705#1583' '#1580#1606#1587'                        :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText_cod: TDBText
      Left = 164
      Top = 84
      Width = 189
      Height = 22
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      DataField = 'calacod'
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
    object DBText_jens: TDBText
      Left = 9
      Top = 50
      Width = 344
      Height = 23
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'calaname'
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
    object Label8: TLabel
      Left = 382
      Top = 23
      Width = 116
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608#1610' '#1580#1606#1587'             :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 382
      Top = 55
      Width = 114
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1606#1587' '#1575#1606#1578#1582#1575#1576#1610'                :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 382
      Top = 116
      Width = 116
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1608#1575#1581#1583' '#1705#1604#1610' '#1580#1583#1610#1583' '#1580#1606#1587'     :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 382
      Top = 148
      Width = 119
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '*'#1608#1575#1581#1583' '#1580#1586#1574#1610' '#1580#1583#1610#1583' '#1580#1606#1587'  :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object L_v_k: TLabel
      Left = 66
      Top = 8
      Width = 37
      Height = 13
      Caption = 'L_name'
      Visible = False
    end
    object L_v_j: TLabel
      Left = 98
      Top = 8
      Width = 37
      Height = 13
      Caption = 'L_name'
      Visible = False
    end
    object l_t_j_dar_k: TLabel
      Left = 17
      Top = 56
      Width = 54
      Height = 13
      Caption = 'l_t_j_dar_k'
      Visible = False
    end
    object l_review: TLabel
      Left = 127
      Top = 64
      Width = 40
      Height = 13
      Caption = 'l_review'
      Visible = False
    end
    object suiDBGrid1: TsuiDBGrid
      Left = 5
      Top = 171
      Width = 512
      Height = 364
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
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
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      UIStyle = DeepBlue
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
          FieldName = 'calaname'
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605' '#1580#1606#1587
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'calacod'
          Title.Alignment = taCenter
          Title.Caption = #1705#1583' '#1580#1606#1587
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vahed_koli'
          Title.Alignment = taCenter
          Title.Caption = #1608#1575#1581#1583' '#1705#1604#1610
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vahed_jozi'
          Title.Alignment = taCenter
          Title.Caption = #1608#1575#1581#1583' '#1580#1586#1574#1610
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tedad_jozi_da_koli'
          Title.Alignment = taCenter
          Title.Caption = #1578#1593#1583#1575#1583' '#1580#1586#1574#1610' '#1583#1585' '#1705#1604#1610
          Width = 90
          Visible = True
        end>
    end
    object esearch: TEdit
      Left = 208
      Top = 18
      Width = 145
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      TabOrder = 0
      OnChange = esearchChange
    end
    object e_v_koli: TEdit
      Left = 208
      Top = 111
      Width = 145
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 1
    end
    object e_v_jozi: TEdit
      Left = 208
      Top = 143
      Width = 145
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 2
    end
    object suibtaeed: TsuiButton
      Left = 52
      Top = 126
      Width = 107
      Height = 27
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1575#1589#1604#1575#1581' '#1608#1575#1581#1583#1607#1575#1610' '#1580#1606#1587
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suibtaeedClick
      ResHandle = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = Dmanbarexite.ADOQ_vahedhaye_jens
    Left = 192
    Top = 224
  end
end
