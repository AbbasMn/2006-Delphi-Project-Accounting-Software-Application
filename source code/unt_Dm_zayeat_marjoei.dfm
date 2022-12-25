object Dm_zayeat_marjoei: TDm_zayeat_marjoei
  OldCreateOrder = False
  Left = 241
  Top = 300
  Height = 245
  Width = 390
  object ADOQ_marjoei: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_marjoei')
    Left = 48
    Top = 8
    object ADOQ_marjoeicalaname: TWideStringField
      FieldName = 'calaname'
      Size = 40
    end
    object ADOQ_marjoeitedadanbar: TFloatField
      FieldName = 'tedadanbar'
    end
    object ADOQ_marjoeianbarname: TWideStringField
      FieldName = 'anbarname'
      Size = 30
    end
    object ADOQ_marjoeigeymatkharid: TFloatField
      FieldName = 'geymatkharid'
    end
    object ADOQ_marjoeicalacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOQ_marjoeiid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_marjoeitedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOQ_marjoeivahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOQ_marjoeigeymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOQ_marjoeitedad_jozi_da_koli: TFloatField
      FieldName = 'tedad_jozi_da_koli'
    end
    object ADOQ_marjoeivahed_jozi: TWideStringField
      FieldName = 'vahed_jozi'
      Size = 30
    end
    object ADOQ_marjoeibarcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOQ_marjoeishakhs_sherkat: TWideStringField
      FieldName = 'shakhs_sherkat'
      Size = 50
    end
    object ADOQ_marjoeicode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
    object ADOQ_marjoeish_kharid_marjoei: TFloatField
      FieldName = 'sh_kharid_marjoei'
    end
    object ADOQ_marjoeigeymat_kol: TFloatField
      FieldName = 'geymat_kol'
    end
    object ADOQ_marjoeiid_dar_anbare_koli: TFloatField
      FieldName = 'id_dar_anbare_koli'
    end
  end
  object ADOQ_anbarhaye_havie_jens: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_anbarhaye_havie_jensAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select anbarname from Tanbar_jens_kolli')
    Left = 192
    Top = 16
    object ADOQ_anbarhaye_havie_jensanbarname: TWideStringField
      FieldName = 'anbarname'
      Size = 30
    end
  end
  object ADOQ_zayeat: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_zayeat')
    Left = 48
    Top = 80
    object ADOQ_zayeatcalaname: TWideStringField
      FieldName = 'calaname'
      Size = 40
    end
    object ADOQ_zayeattedadanbar: TFloatField
      FieldName = 'tedadanbar'
    end
    object ADOQ_zayeatanbarname: TWideStringField
      FieldName = 'anbarname'
      Size = 30
    end
    object ADOQ_zayeatgeymatkharid: TFloatField
      FieldName = 'geymatkharid'
    end
    object ADOQ_zayeatcalacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOQ_zayeatid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_zayeattedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOQ_zayeatvahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOQ_zayeatgeymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOQ_zayeattedad_jozi_da_koli: TFloatField
      FieldName = 'tedad_jozi_da_koli'
    end
    object ADOQ_zayeatvahed_jozi: TWideStringField
      FieldName = 'vahed_jozi'
      Size = 30
    end
    object ADOQ_zayeatbarcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOQ_zayeatshakhs_sherkat: TWideStringField
      FieldName = 'shakhs_sherkat'
      Size = 50
    end
    object ADOQ_zayeatcode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
    object ADOQ_zayeatsh_kharid_zayeat: TFloatField
      FieldName = 'sh_kharid_zayeat'
    end
    object ADOQ_zayeatgeymat_kol: TFloatField
      FieldName = 'geymat_kol'
    end
    object ADOQ_zayeatid_dar_anbare_koli: TFloatField
      FieldName = 'id_dar_anbare_koli'
    end
  end
  object ADOQ_jame_arzeshe_marjoei: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(geymat_kol) as kol_ from  t_marjoei')
    Left = 256
    Top = 104
    object ADOQ_jame_arzeshe_marjoeikol_: TFloatField
      FieldName = 'kol_'
      ReadOnly = True
    end
  end
end
