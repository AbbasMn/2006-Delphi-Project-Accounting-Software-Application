object frm_factor: Tfrm_factor
  Left = 181
  Top = 126
  Width = 886
  Height = 776
  Caption = #1601#1575#1705#1578#1608#1585
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 15
  object QuickRep1: TQuickRep
    Tag = 1
    Left = 16
    Top = 32
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Dmlistha.adolistforosh
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4Small
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      20.000000000000000000
      2100.000000000000000000
      20.000000000000000000
      20.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object TitleBand1: TQRBand
      Left = 8
      Top = 8
      Width = 779
      Height = 190
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        502.708333333333400000
        2061.104166666667000000)
      BandType = rbPageHeader
      object QRLabel15: TQRLabel
        Left = 708
        Top = 106
        Width = 43
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1873.250000000000000000
          280.458333333333400000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1582#1585#1610#1583#1607#1575#1610
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object type_: TQRLabel
        Left = 197
        Top = 142
        Width = 393
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          521.229166666666800000
          375.708333333333400000
          1039.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'type_'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape18: TQRShape
        Left = 4
        Top = 40
        Width = 767
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          10.583333333333330000
          105.833333333333300000
          2029.354166666667000000)
        Shape = qrsHorLine
      end
      object QRShape14: TQRShape
        Left = 770
        Top = 41
        Width = 1
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          325.437500000000000000
          2037.291666666667000000
          108.479166666666700000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRSysData1: TQRSysData
        Left = 24
        Top = 55
        Width = 43
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          63.500000000000000000
          145.520833333333300000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRShape13: TQRShape
        Left = 1
        Top = 41
        Width = 7
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          325.437500000000000000
          2.645833333333333000
          108.479166666666700000
          18.520833333333330000)
        Shape = qrsVertLine
      end
      object QRLabel19: TQRLabel
        Left = 86
        Top = 106
        Width = 84
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          227.541666666666700000
          280.458333333333400000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585#1711#1586#1575#1585#1588
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLtarikh: TQRLabel
        Left = 8
        Top = 106
        Width = 69
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          21.166666666666670000
          280.458333333333400000
          182.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = '65'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 705
        Top = 142
        Width = 47
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1865.312500000000000000
          375.708333333333400000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = #1705#1583' '#1582#1585#1610#1583#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 597
        Top = 142
        Width = 101
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1579.562500000000000000
          375.708333333333400000
          267.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataModule1.ADOQuery3
        DataField = 'code'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_name_register: TQRLabel
        Left = 136
        Top = 47
        Width = 514
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          359.833333333333400000
          124.354166666666700000
          1359.958333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1601#1585#1608#1588#1711#1575#1607' '#1601#1585#1607#1606#1711#1610#1575#1606' '#1575#1587#1578#1607#1576#1575#1606
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRL_adress1: TQRLabel
        Left = 179
        Top = 68
        Width = 419
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          473.604166666666700000
          179.916666666666700000
          1108.604166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1570#1583#1585#1587
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 4
        Top = 161
        Width = 767
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          10.583333333333330000
          425.979166666666700000
          2029.354166666667000000)
        Shape = qrsHorLine
      end
      object QRShape3: TQRShape
        Left = 4
        Top = 187
        Width = 767
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          10.583333333333330000
          494.770833333333400000
          2029.354166666667000000)
        Shape = qrsHorLine
      end
      object QRShape4: TQRShape
        Left = 1
        Top = 164
        Width = 7
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          2.645833333333333000
          433.916666666666800000
          18.520833333333330000)
        Shape = qrsVertLine
      end
      object QRShape15: TQRShape
        Left = 770
        Top = 164
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          2037.291666666667000000
          433.916666666666800000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRL_telefhon: TQRLabel
        Left = 280
        Top = 82
        Width = 226
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          740.833333333333400000
          216.958333333333400000
          597.958333333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = #1578#1604#1601#1606
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText15: TQRDBText
        Left = 376
        Top = 106
        Width = 324
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          994.833333333333400000
          280.458333333333400000
          857.250000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DataModule1.ADOQuery3
        DataField = 'shahrforoshande'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 741
        Top = 166
        Width = 26
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1960.562500000000000000
          439.208333333333400000
          68.791666666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1585#1583#1610#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 739
        Top = 162
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          1955.270833333333000000
          428.625000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel3: TQRLabel
        Left = 630
        Top = 166
        Width = 61
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1666.875000000000000000
          439.208333333333400000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1705#1583' '#1608#1606#1575#1605' '#1580#1606#1587
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 578
        Top = 162
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          1529.291666666667000000
          428.625000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel5: TQRLabel
        Left = 506
        Top = 166
        Width = 43
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1338.791666666667000000
          439.208333333333400000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1593#1583#1575#1583#1705#1604#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape5: TQRShape
        Left = 475
        Top = 162
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          1256.770833333333000000
          428.625000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel7: TQRLabel
        Left = 414
        Top = 166
        Width = 49
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1095.375000000000000000
          439.208333333333400000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1593#1583#1575#1583#1580#1586#1574#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape8: TQRShape
        Left = 399
        Top = 162
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          1055.687500000000000000
          428.625000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel6: TQRLabel
        Left = 343
        Top = 166
        Width = 22
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          907.520833333333400000
          439.208333333333400000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1580#1605#1593
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 304
        Top = 162
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          804.333333333333200000
          428.625000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel8: TQRLabel
        Left = 229
        Top = 166
        Width = 54
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          605.895833333333400000
          439.208333333333400000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1602#1610#1605#1578' '#1580#1586#1574#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape16: TQRShape
        Left = 204
        Top = 162
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          539.750000000000000000
          428.625000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape29: TQRShape
        Left = 77
        Top = 162
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          203.729166666666700000
          428.625000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel12: TQRLabel
        Left = 5
        Top = 166
        Width = 72
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          13.229166666666670000
          439.208333333333400000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588' '#1601#1575#1705#1578#1608#1585#1548#1578#1575#1585#1610#1582
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 119
        Top = 166
        Width = 44
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          314.854166666666700000
          439.208333333333400000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1602#1610#1605#1578' '#1705#1604
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 699
        Top = 49
        Width = 57
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1849.437500000000000000
          129.645833333333300000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1585#1605' '#1575#1601#1586#1575#1585' '#1581#1587#1575#1576#1583#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'B Titr'
        Font.Pitch = fpVariable
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    object QRBand1: TQRBand
      Left = 8
      Top = 235
      Width = 779
      Height = 178
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        470.958333333333400000
        2061.104166666667000000)
      BandType = rbSummary
      object QRShape24: TQRShape
        Left = 279
        Top = 14
        Width = 484
        Height = 157
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          415.395833333333400000
          738.187500000000000000
          37.041666666666670000
          1280.583333333333000000)
        Shape = qrsRectangle
      end
      object QRLabel14: TQRLabel
        Left = 552
        Top = 25
        Width = 172
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1460.500000000000000000
          66.145833333333340000
          455.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':                             '#1575#1585#1586#1588' '#1705#1604' '#1582#1585#1610#1583' '#1607#1575
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 286
        Top = 24
        Width = 241
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          756.708333333333400000
          63.500000000000000000
          637.645833333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_final.ADOQ_g_kol_foroshha
        DataField = 'g_kol_foroshha'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 552
        Top = 67
        Width = 196
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1460.500000000000000000
          177.270833333333300000
          518.583333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':               '#1580#1605#1593' '#1662#1585#1583#1575#1582#1578#1607#1575#1610' '#1606#1602#1583' '#1607#1606#1711#1575#1605' '#1582#1585#1610#1583
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 286
        Top = 66
        Width = 241
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          756.708333333333400000
          174.625000000000000000
          637.645833333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_final.ADOQ_jame_t_pardakht_nagd_forosh
        DataField = 'nagd_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape25: TQRShape
        Left = 1
        Top = -4
        Width = 7
        Height = 179
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          473.604166666666700000
          2.645833333333333000
          -10.583333333333330000
          18.520833333333330000)
        Shape = qrsVertLine
      end
      object QRShape26: TQRShape
        Left = 770
        Top = -6
        Width = 1
        Height = 181
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          478.895833333333400000
          2037.291666666667000000
          -15.875000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape27: TQRShape
        Left = 5
        Top = 173
        Width = 767
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          13.229166666666670000
          457.729166666666600000
          2029.354166666667000000)
        Shape = qrsHorLine
      end
      object QRLabel2: TQRLabel
        Left = 552
        Top = 88
        Width = 196
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1460.500000000000000000
          232.833333333333400000
          518.583333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':             '#1580#1605#1593' '#1662#1585#1583#1575#1582#1578#1607#1575#1610' '#1670#1705' '#1607#1606#1711#1575#1605' '#1582#1585#1610#1583
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 286
        Top = 87
        Width = 241
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          756.708333333333400000
          230.187500000000000000
          637.645833333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_final.ADOQ_T_jame_pardakht_check_forosh
        DataField = 'check_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 552
        Top = 109
        Width = 203
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1460.500000000000000000
          288.395833333333400000
          537.104166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':      '#1580#1605#1593' '#1605#1576#1575#1604#1594#1610' '#1705#1607' '#1607#1606#1711#1575#1605' '#1582#1585#1610#1583' '#1576#1583#1607#1705#1575#1585' '#1588#1583#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 286
        Top = 108
        Width = 241
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          756.708333333333400000
          285.750000000000000000
          637.645833333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_final.ADOQ_jame_bede_talab_dar_forosh
        DataField = 'bedeh_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 552
        Top = 149
        Width = 188
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1460.500000000000000000
          394.229166666666700000
          497.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':                   '#1580#1605#1593' '#1662#1585#1583#1575#1582#1578#1607#1575#1610' '#1576#1593#1583' '#1575#1586' '#1582#1585#1610#1583
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 286
        Top = 148
        Width = 241
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          756.708333333333400000
          391.583333333333400000
          637.645833333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataModule1.ADOQuery_jame_pardakht_kharidar
        DataField = 'kol_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel_type2: TQRLabel
        Left = 654
        Top = 6
        Width = 100
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1730.375000000000000000
          15.875000000000000000
          264.583333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '  '#1582#1585#1610#1583' '#1607#1575#1610' '#1582#1585#1610#1583#1575#1585'  '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape28: TQRShape
        Left = 11
        Top = 14
        Width = 261
        Height = 157
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          415.395833333333400000
          29.104166666666670000
          37.041666666666670000
          690.562500000000000000)
        Shape = qrsRectangle
      end
      object QRDBText9: TQRDBText
        Left = 13
        Top = 70
        Width = 256
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          34.395833333333340000
          185.208333333333300000
          677.333333333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_final.ADOQ_bedeh_be_kharidar
        DataField = 'bedeh'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 109
        Top = 45
        Width = 73
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          288.395833333333400000
          119.062500000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'#1605#1576#1604#1594' '#1576#1583#1607#1610' '#1705#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 176
        Top = 6
        Width = 83
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          465.666666666666800000
          15.875000000000000000
          219.604166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '  '#1576#1583#1607#1610' '#1608' '#1591#1604#1576' '#1705#1604'  '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 552
        Top = 130
        Width = 203
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1460.500000000000000000
          343.958333333333400000
          537.104166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':      '#1580#1605#1593' '#1605#1576#1575#1604#1594#1610' '#1705#1607' '#1607#1606#1711#1575#1605' '#1582#1585#1610#1583' '#1591#1604#1576#1705#1575#1585' '#1588#1583#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 286
        Top = 129
        Width = 241
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          756.708333333333400000
          341.312500000000000000
          637.645833333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_final.ADOQ_jame_bede_talab_dar_forosh
        DataField = 'talab_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 552
        Top = 45
        Width = 176
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1460.500000000000000000
          119.062500000000000000
          465.666666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':                              '#1580#1605#1593' '#1605#1576#1575#1604#1594' '#1578#1582#1601#1610#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 286
        Top = 45
        Width = 241
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          756.708333333333400000
          119.062500000000000000
          637.645833333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_final.ADOQ_jame_takhfife
        DataField = 'takhfife_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 109
        Top = 102
        Width = 68
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          288.395833333333400000
          269.875000000000000000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'#1605#1576#1604#1594' '#1591#1604#1576' '#1705#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 13
        Top = 127
        Width = 256
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          34.395833333333340000
          336.020833333333400000
          677.333333333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_final.ADOQ_bedeh_be_kharidar
        DataField = 'talab'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 8
      Top = 198
      Width = 779
      Height = 37
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        97.895833333333340000
        2061.104166666667000000)
      BandType = rbDetail
      object QRDBText3: TQRDBText
        Left = 580
        Top = 1
        Width = 130
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1534.583333333333000000
          2.645833333333333000
          343.958333333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.adolistforosh
        DataField = 'jens'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 476
        Top = 1
        Width = 58
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1259.416666666667000000
          2.645833333333333000
          153.458333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.adolistforosh
        DataField = 'tedad_koli'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 208
        Top = 1
        Width = 93
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          550.333333333333400000
          2.645833333333333000
          246.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.adolistforosh
        DataField = 'geymat_vahed'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 6
        Top = 17
        Width = 69
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          15.875000000000000000
          44.979166666666670000
          182.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.adolistforosh
        DataField = 'tarikh'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 740
        Top = 1
        Width = 27
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1957.916666666667000000
          2.645833333333333000
          71.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        FontSize = 10
      end
      object QRShape12: TQRShape
        Left = 739
        Top = -4
        Width = 1
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          1955.270833333333000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape10: TQRShape
        Left = 578
        Top = -4
        Width = 1
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          1529.291666666667000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape20: TQRShape
        Left = 77
        Top = -4
        Width = 1
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          203.729166666666700000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape6: TQRShape
        Left = 4
        Top = -3
        Width = 1
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          10.583333333333330000
          -7.937500000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape11: TQRShape
        Left = 770
        Top = -3
        Width = 1
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          2037.291666666667000000
          -7.937500000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape17: TQRShape
        Left = 6
        Top = 35
        Width = 765
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          15.875000000000000000
          92.604166666666680000
          2024.062500000000000000)
        Shape = qrsHorLine
      end
      object QRShape19: TQRShape
        Left = 304
        Top = -4
        Width = 1
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          804.333333333333200000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText6: TQRDBText
        Left = 306
        Top = 1
        Width = 92
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          809.625000000000000000
          2.645833333333333000
          243.416666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.adolistforosh
        DataField = 'tedad_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape21: TQRShape
        Left = 204
        Top = -4
        Width = 1
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          539.750000000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText7: TQRDBText
        Left = 79
        Top = 0
        Width = 123
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          209.020833333333300000
          0.000000000000000000
          325.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.adolistforosh
        DataField = 'geymat_jens'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 10
        Top = 1
        Width = 61
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          26.458333333333330000
          2.645833333333333000
          161.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.adolistforosh
        DataField = 'sh_factor'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 544
        Top = 1
        Width = 34
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1439.333333333333000000
          2.645833333333333000
          89.958333333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.adolistforosh
        DataField = 'tedad_jozi_dar_koli'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape22: TQRShape
        Left = 475
        Top = -4
        Width = 1
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          1256.770833333333000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel4: TQRLabel
        Left = 535
        Top = 2
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1415.520833333333000000
          5.291666666666667000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'x'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 477
        Top = 14
        Width = 99
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1262.062500000000000000
          37.041666666666670000
          261.937500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.adolistforosh
        DataField = 'vahed_koli'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 306
        Top = 14
        Width = 92
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          809.625000000000000000
          37.041666666666670000
          243.416666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.adolistforosh
        DataField = 'vahed_jozei'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape23: TQRShape
        Left = 399
        Top = -4
        Width = 1
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          1055.687500000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText19: TQRDBText
        Left = 401
        Top = 1
        Width = 72
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1060.979166666667000000
          2.645833333333333000
          190.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.adolistforosh
        DataField = 'tedad'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 712
        Top = 1
        Width = 25
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1883.833333333333000000
          2.645833333333333000
          66.145833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.adolistforosh
        DataField = 'calacod'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
end
