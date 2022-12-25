object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 175
  Top = 152
  Height = 600
  Width = 595
  object ADOQuery3: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQuery3AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from  t_shahr_foroshande')
    Left = 24
    Top = 72
    object ADOQuery3adress: TWideStringField
      FieldName = 'adress'
      Size = 200
    end
    object ADOQuery3telephon: TWideStringField
      FieldName = 'telephon'
      Size = 12
    end
    object ADOQuery3email: TWideStringField
      FieldName = 'email'
      Size = 30
    end
    object ADOQuery3telephonhamrah: TWideStringField
      FieldName = 'telephonhamrah'
      Size = 12
    end
    object ADOQuery3code: TBCDField
      FieldName = 'code'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object ADOQuery3shahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQuery3type_: TWideStringField
      FieldName = 'type_'
      Size = 30
    end
  end
  object ADOQ_sh_factor: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_shomare_factor')
    Left = 144
    Top = 8
    object ADOQ_sh_factorshomare: TFloatField
      FieldName = 'shomare'
    end
    object ADOQ_sh_factorshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_sh_factortype_: TWideStringField
      FieldName = 'type_'
      Size = 30
    end
  end
  object ADObedehi: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_bedehi')
    Left = 120
    Top = 152
    object ADObedehibedeh: TFloatField
      FieldName = 'bedeh'
    end
    object ADObedehicode: TFloatField
      FieldName = 'code'
    end
    object ADObedehitalab: TFloatField
      FieldName = 'talab'
    end
    object ADObedehish_khaid: TFloatField
      FieldName = 'sh_khaid'
    end
    object ADObedehitarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
  end
  object ADOpardakhtbedehi: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOpardakhtbedehiAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_pardakht_bedehi')
    Left = 264
    Top = 128
    object ADOpardakhtbedehitarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOpardakhtbedehimablagh: TFloatField
      FieldName = 'mablagh'
    end
    object ADOpardakhtbedehishahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOpardakhtbedehiid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object ADOpardakhtbedehitime_: TWideStringField
      FieldName = 'time_'
      Size = 10
    end
  end
  object ADOeditshakhs: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  t_shahr_foroshande')
    Left = 320
    Top = 24
    object ADOeditshakhsadress: TWideStringField
      FieldName = 'adress'
      Size = 200
    end
    object ADOeditshakhstelephon: TWideStringField
      FieldName = 'telephon'
      Size = 12
    end
    object ADOeditshakhsemail: TWideStringField
      FieldName = 'email'
      Size = 30
    end
    object ADOeditshakhstelephonhamrah: TWideStringField
      FieldName = 'telephonhamrah'
      Size = 12
    end
    object ADOeditshakhscode: TBCDField
      FieldName = 'code'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object ADOeditshakhsshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOeditshakhstype_: TWideStringField
      FieldName = 'type_'
      Size = 30
    end
  end
  object ADOQsaljadid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQsaljadidAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_salha')
    Left = 352
    Top = 88
    object ADOQsaljadidsal: TWideStringField
      FieldName = 'sal'
      Size = 6
    end
  end
  object ADOQuery_jame_pardakht_shhoma: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(mablagh) as kol_ from T_pardakht_bedehi')
    Left = 272
    Top = 488
    object ADOQuery_jame_pardakht_shhomakol_: TFloatField
      FieldName = 'kol_'
    end
  end
  object ADOQuery_jame_bedehi_be_foroshandeha: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  sum(bedehkar)as bedeh_kol from T_bestankar_bedehkar_foro' +
        'shande')
    Left = 104
    Top = 240
    object ADOQuery_jame_bedehi_be_foroshandehabedeh_kol: TFloatField
      FieldName = 'bedeh_kol'
      ReadOnly = True
    end
  end
  object ADOQ_sh_factor_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_shomare_factor_kharid')
    Left = 176
    Top = 72
    object ADOQ_sh_factor_kharidshomare: TFloatField
      FieldName = 'shomare'
    end
    object ADOQ_sh_factor_kharidshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_sh_factor_kharidtarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQ_sh_factor_kharidcode: TFloatField
      FieldName = 'code'
    end
    object ADOQ_sh_factor_kharidtime: TWideStringField
      FieldName = 'time'
      Size = 10
    end
    object ADOQ_sh_factor_kharidtype_: TWideStringField
      FieldName = 'type_'
      Size = 30
    end
  end
  object ADOQuery_jame_pardakht_kharidar: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(mablagh) as kol_ from T_pardakht_bedehi_kharidar')
    Left = 120
    Top = 472
    object ADOQuery_jame_pardakht_kharidarkol_: TFloatField
      FieldName = 'kol_'
    end
  end
  object ADOQuery_jame_bedehi_be_kharidaran: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  sum(bedehkar)as bedeh_kol from T_bestankar_bedehkar_khar' +
        'idar')
    Left = 104
    Top = 336
    object ADOQuery_jame_bedehi_be_kharidaranbedeh_kol: TFloatField
      FieldName = 'bedeh_kol'
      ReadOnly = True
    end
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQuery4AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from  t_shahr_foroshande')
    Left = 24
    Top = 144
    object ADOQuery4adress: TWideStringField
      FieldName = 'adress'
      Size = 200
    end
    object ADOQuery4telephon: TWideStringField
      FieldName = 'telephon'
      Size = 12
    end
    object ADOQuery4email: TWideStringField
      FieldName = 'email'
      Size = 30
    end
    object ADOQuery4telephonhamrah: TWideStringField
      FieldName = 'telephonhamrah'
      Size = 12
    end
    object ADOQuery4code: TBCDField
      FieldName = 'code'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object ADOQuery4shahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQuery4type_: TWideStringField
      FieldName = 'type_'
      Size = 30
    end
  end
  object ADOpardakhtbedehi_kharidar: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOpardakhtbedehi_kharidarAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from T_pardakht_bedehi_kharidar')
    Left = 248
    Top = 184
    object ADOpardakhtbedehi_kharidarshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOpardakhtbedehi_kharidartarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOpardakhtbedehi_kharidarmablagh: TFloatField
      FieldName = 'mablagh'
    end
    object ADOpardakhtbedehi_kharidartime_: TWideStringField
      FieldName = 'time_'
      Size = 10
    end
    object ADOpardakhtbedehi_kharidarid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object ADOpardakhtbedehi_kharidarnoe: TWideStringField
      FieldName = 'noe'
      Size = 10
    end
  end
  object ADOQuery_pish_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_kharid_temp')
    Left = 464
    Top = 256
    object ADOQuery_pish_kharidjens: TWideStringField
      FieldName = 'jens'
      Size = 40
    end
    object ADOQuery_pish_kharidtedad: TFloatField
      FieldName = 'tedad'
    end
    object ADOQuery_pish_kharidgheymat: TFloatField
      FieldName = 'gheymat'
    end
    object ADOQuery_pish_kharidkol: TFloatField
      FieldName = 'kol'
    end
    object ADOQuery_pish_kharidid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQuery_pish_kharidvahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOQuery_pish_kharidvahed_jozei: TWideStringField
      FieldName = 'vahed_jozei'
      Size = 30
    end
    object ADOQuery_pish_kharidtedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOQuery_pish_kharidgeymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOQuery_pish_kharidtedad_jozi_dar_koli: TFloatField
      FieldName = 'tedad_jozi_dar_koli'
    end
    object ADOQuery_pish_kharidshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQuery_pish_kharidsh_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADOQuery_pish_kharidtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
    object ADOQuery_pish_kharidcode: TFloatField
      FieldName = 'code'
    end
    object ADOQuery_pish_kharidteded_jozi: TFloatField
      FieldName = 'teded_jozi'
    end
    object ADOQuery_pish_kharidgeymat_jadid: TFloatField
      FieldName = 'geymat_jadid'
    end
    object ADOQuery_pish_kharidkeraye: TFloatField
      FieldName = 'keraye'
    end
    object ADOQuery_pish_kharidbarcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOQuery_pish_kharidcode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
  end
  object ADOQuery_jame_talab_kharidaran: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  sum(bestankar)as bestankar_kol from T_bestankar_bedehkar' +
        '_kharidar')
    Left = 288
    Top = 344
    object ADOQuery_jame_talab_kharidaranbestankar_kol: TFloatField
      FieldName = 'bestankar_kol'
      ReadOnly = True
    end
  end
  object ADOQuery_jame_bedeh_foroshandeha: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  sum(bestankar)as talab_kol  from T_bestankar_bedehkar_fo' +
        'roshande')
    Left = 280
    Top = 272
    object ADOQuery_jame_bedeh_foroshandehatalab_kol: TFloatField
      FieldName = 'talab_kol'
      ReadOnly = True
    end
  end
end
