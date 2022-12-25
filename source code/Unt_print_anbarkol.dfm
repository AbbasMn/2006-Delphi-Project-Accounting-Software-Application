object Frm_print_anbarkol: TFrm_print_anbarkol
  Left = 122
  Top = 214
  Width = 896
  Height = 574
  Caption = 'Frm_print_anbarkol'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -2
    Top = 56
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Dmlistha.ADOlistanbarforosh
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      'PAGENUMBER'
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
    Units = Native
    Zoom = 100
    object TitleBand1: TQRBand
      Left = 8
      Top = 8
      Width = 779
      Height = 150
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
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        396.875000000000000000
        2061.104166666667000000)
      BandType = rbPageHeader
      object QRLabel15: TQRLabel
        Left = 650
        Top = 102
        Width = 113
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1719.791666666667000000
          269.875000000000000000
          298.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1604#1610#1587#1578' '#1575#1580#1606#1575#1587' '#1607#1605#1607' '#1605#1705#1575#1606#1607#1575
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
      object QRShape5: TQRShape
        Left = 770
        Top = 69
        Width = 2
        Height = 55
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          145.520833333333300000
          2037.291666666667000000
          182.562500000000000000
          5.291666666666667000)
        Shape = qrsVertLine
      end
      object QRShape11: TQRShape
        Left = 4
        Top = 68
        Width = 1
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666666700000
          10.583333333333330000
          179.916666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape4: TQRShape
        Left = 770
        Top = 40
        Width = 2
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          2037.291666666667000000
          105.833333333333300000
          5.291666666666667000)
        Shape = qrsVertLine
      end
      object QRShape17: TQRShape
        Left = 4
        Top = 40
        Width = 1
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          10.583333333333330000
          105.833333333333300000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape18: TQRShape
        Left = 5
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
          13.229166666666670000
          105.833333333333300000
          2029.354166666667000000)
        Shape = qrsHorLine
      end
      object QRSysData1: TQRSysData
        Left = 21
        Top = 46
        Width = 46
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          55.562500000000000000
          121.708333333333300000
          121.708333333333300000)
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
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 90
        Top = 102
        Width = 87
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          238.125000000000000000
          269.875000000000000000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585' '#1711#1586#1575#1585#1588
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
        Left = 10
        Top = 102
        Width = 73
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          26.458333333333330000
          269.875000000000000000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585' '#1601#1575#1705#1578#1608#1585' :'
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
      object QRL_name_register: TQRLabel
        Left = 136
        Top = 44
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
          116.416666666666700000
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
        Left = 203
        Top = 64
        Width = 381
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          537.104166666666800000
          169.333333333333300000
          1008.062500000000000000)
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
      object QRShape2: TQRShape
        Left = 5
        Top = 124
        Width = 767
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          13.229166666666670000
          328.083333333333400000
          2029.354166666667000000)
        Shape = qrsHorLine
      end
      object QRShape28: TQRShape
        Left = 5
        Top = 149
        Width = 767
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          13.229166666666670000
          394.229166666666700000
          2029.354166666667000000)
        Shape = qrsHorLine
      end
      object QRShape29: TQRShape
        Left = 4
        Top = 123
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          10.583333333333330000
          325.437500000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape30: TQRShape
        Left = 770
        Top = 123
        Width = 2
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          2037.291666666667000000
          325.437500000000000000
          5.291666666666667000)
        Shape = qrsVertLine
      end
      object QRL_telefhon: TQRLabel
        Left = 280
        Top = 78
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
          206.375000000000000000
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
      object QRL_type: TQRLabel
        Left = 177
        Top = 102
        Width = 467
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          468.312500000000100000
          269.875000000000000000
          1235.604166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585' '#1601#1575#1705#1578#1608#1585' :'
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
      object QRShape3: TQRShape
        Left = 90
        Top = 124
        Width = 1
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          238.125000000000000000
          328.083333333333400000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel4: TQRLabel
        Left = 6
        Top = 127
        Width = 84
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          15.875000000000000000
          336.020833333333400000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588' '#1580#1586#1574#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 91
        Top = 127
        Width = 72
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          240.770833333333300000
          336.020833333333400000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588' '#1705#1604#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape7: TQRShape
        Left = 166
        Top = 124
        Width = 1
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          439.208333333333400000
          328.083333333333400000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel9: TQRLabel
        Left = 167
        Top = 127
        Width = 71
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          441.854166666666700000
          336.020833333333400000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1602#1610#1605#1578' '#1582#1585#1610#1583#1580#1586#1574#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape8: TQRShape
        Left = 239
        Top = 124
        Width = 1
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          632.354166666666800000
          328.083333333333400000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel10: TQRLabel
        Left = 263
        Top = 127
        Width = 32
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          695.854166666666800000
          336.020833333333400000
          84.666666666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1582#1585#1610#1583#1575#1586
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 316
        Top = 124
        Width = 1
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          836.083333333333400000
          328.083333333333400000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel5: TQRLabel
        Left = 326
        Top = 127
        Width = 66
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          862.541666666666900000
          336.020833333333400000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1605#1608#1580#1608#1583#1610' '#1580#1586#1574#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape24: TQRShape
        Left = 401
        Top = 124
        Width = 1
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1060.979166666667000000
          328.083333333333400000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel8: TQRLabel
        Left = 405
        Top = 127
        Width = 54
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1071.562500000000000000
          336.020833333333400000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578' '#1580' '#1583#1585#1705#1604#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape20: TQRShape
        Left = 459
        Top = 124
        Width = 1
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1214.437500000000000000
          328.083333333333400000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel2: TQRLabel
        Left = 475
        Top = 127
        Width = 60
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1256.770833333333000000
          336.020833333333400000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1605#1608#1580#1608#1583#1610' '#1705#1604#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape10: TQRShape
        Left = 546
        Top = 125
        Width = 1
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          1444.625000000000000000
          330.729166666666700000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel11: TQRLabel
        Left = 548
        Top = 127
        Width = 69
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1449.916666666667000000
          336.020833333333400000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1705#1583#1580#1606#1587'/'#1588#1585#1705#1578#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape25: TQRShape
        Left = 617
        Top = 124
        Width = 1
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1632.479166666667000000
          328.083333333333400000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel3: TQRLabel
        Left = 658
        Top = 127
        Width = 41
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1740.958333333333000000
          336.020833333333400000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1575#1605' '#1580#1606#1587
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape26: TQRShape
        Left = 740
        Top = 124
        Width = 1
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          1957.916666666667000000
          328.083333333333400000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel1: TQRLabel
        Left = 742
        Top = 129
        Width = 26
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1963.208333333333000000
          341.312500000000000000
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
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 704
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
          1862.666666666667000000
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
    object DetailBand1: TQRBand
      Left = 8
      Top = 158
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
      Font.Pitch = fpVariable
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        97.895833333333340000
        2061.104166666667000000)
      BandType = rbDetail
      object QRDBText3: TQRDBText
        Left = 619
        Top = 2
        Width = 118
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666680000
          1637.770833333333000000
          5.291666666666667000
          312.208333333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.ADOlistanbarforosh
        DataField = 'calaname'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 318
        Top = 2
        Width = 81
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          841.375000000000000000
          5.291666666666667000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.ADOlistanbarforosh
        DataField = 'tedadanbar'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 7
        Top = 2
        Width = 82
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          18.520833333333330000
          5.291666666666667000
          216.958333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.ADOlistanbarforosh
        DataField = 'geymatforosh'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 548
        Top = 2
        Width = 66
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1449.916666666667000000
          5.291666666666667000
          174.625000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.ADOlistanbarforosh
        DataField = 'calacod'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 742
        Top = 2
        Width = 26
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1963.208333333333000000
          5.291666666666667000
          68.791666666666680000)
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
        Font.Pitch = fpVariable
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 617
        Top = -1
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333340000
          1632.479166666667000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape6: TQRShape
        Left = 546
        Top = -1
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333340000
          1444.625000000000000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape12: TQRShape
        Left = 4
        Top = -11
        Width = 1
        Height = 46
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          121.708333333333300000
          10.583333333333330000
          -29.104166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape13: TQRShape
        Left = 740
        Top = -1
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333340000
          1957.916666666667000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape14: TQRShape
        Left = 5
        Top = 34
        Width = 767
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          13.229166666666670000
          89.958333333333340000
          2029.354166666667000000)
        Shape = qrsHorLine
      end
      object QRShape15: TQRShape
        Left = 771
        Top = -1
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          2039.937500000000000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape16: TQRShape
        Left = 166
        Top = -1
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333340000
          439.208333333333400000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText2: TQRDBText
        Left = 462
        Top = 2
        Width = 83
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1222.375000000000000000
          5.291666666666667000
          219.604166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.ADOlistanbarforosh
        DataField = 'tedad_koli'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape21: TQRShape
        Left = 459
        Top = -1
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333340000
          1214.437500000000000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText7: TQRDBText
        Left = 461
        Top = 14
        Width = 83
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1219.729166666667000000
          37.041666666666670000
          219.604166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.ADOlistanbarforosh
        DataField = 'vahed_koli'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 318
        Top = 14
        Width = 83
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          841.375000000000000000
          37.041666666666670000
          219.604166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.ADOlistanbarforosh
        DataField = 'vahed_jozi'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape19: TQRShape
        Left = 401
        Top = -1
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333340000
          1060.979166666667000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText1: TQRDBText
        Left = 403
        Top = 2
        Width = 55
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1066.270833333333000000
          5.291666666666667000
          145.520833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.ADOlistanbarforosh
        DataField = 'tedad_jozi_da_koli'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 92
        Top = 2
        Width = 73
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          243.416666666666700000
          5.291666666666667000
          193.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.ADOlistanbarforosh
        DataField = 'geymat_forosh_koli'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape22: TQRShape
        Left = 90
        Top = -1
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333340000
          238.125000000000000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText10: TQRDBText
        Left = 549
        Top = 14
        Width = 66
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1452.562500000000000000
          37.041666666666670000
          174.625000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.ADOlistanbarforosh
        DataField = 'code_sherkati'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape23: TQRShape
        Left = 316
        Top = -1
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333340000
          836.083333333333400000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape27: TQRShape
        Left = 239
        Top = -1
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333340000
          632.354166666666800000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText12: TQRDBText
        Left = 168
        Top = 2
        Width = 70
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          444.500000000000000000
          5.291666666666667000
          185.208333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.ADOlistanbarforosh
        DataField = 'geymatkharid'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 240
        Top = 1
        Width = 74
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333340000
          635.000000000000000000
          2.645833333333333000
          195.791666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Dmlistha.ADOlistanbarforosh
        DataField = 'shakhs_sherkat'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
end
