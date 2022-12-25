object DataM_hazineha: TDataM_hazineha
  OldCreateOrder = False
  Left = 218
  Top = 199
  Height = 304
  Width = 364
  object ADOQ_onvane_hazineha1: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_onvane_hazineha1AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_onvane_hazineha')
    Left = 64
    Top = 8
    object ADOQ_onvane_hazineha1id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOQ_onvane_hazineha1onvane_hazine: TWideStringField
      FieldName = 'onvane_hazine'
      Size = 50
    end
  end
  object ADOQ_onvane_hazineha2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_onvane_hazineha')
    Left = 64
    Top = 64
    object ADOQ_onvane_hazineha2id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOQ_onvane_hazineha2onvane_hazine: TWideStringField
      FieldName = 'onvane_hazine'
      Size = 50
    end
  end
  object ADOQ_jame_kole_hazineha: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(geymatforosh_koli) as kole_hazineha from T_Hazine_Anj' +
        'irestan')
    Left = 248
    Top = 8
    object ADOQ_jame_kole_hazinehakole_hazineha: TFloatField
      FieldName = 'kole_hazineha'
      ReadOnly = True
    end
  end
  object ADOQ_show_hame_hazine_ha: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_Hazine_Anjirestan')
    Left = 72
    Top = 136
    object ADOQ_show_hame_hazine_hatedadanbar: TFloatField
      FieldName = 'tedadanbar'
    end
    object ADOQ_show_hame_hazine_hasandog: TWideStringField
      FieldName = 'sandog'
      Size = 30
    end
    object ADOQ_show_hame_hazine_hageymatkharid: TFloatField
      FieldName = 'geymatkharid'
    end
    object ADOQ_show_hame_hazine_hageymatforosh: TFloatField
      FieldName = 'geymatforosh'
    end
    object ADOQ_show_hame_hazine_hatime_: TWideStringField
      FieldName = 'time_'
      Size = 250
    end
    object ADOQ_show_hame_hazine_hacalacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOQ_show_hame_hazine_hatarikhedit: TWideStringField
      FieldName = 'tarikhedit'
      Size = 12
    end
    object ADOQ_show_hame_hazine_hamolahezatforosh: TWideStringField
      FieldName = 'molahezatforosh'
      Size = 250
    end
    object ADOQ_show_hame_hazine_haid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_show_hame_hazine_hatedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOQ_show_hame_hazine_havahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOQ_show_hame_hazine_hageymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOQ_show_hame_hazine_hatedad_jozi_da_koli: TFloatField
      FieldName = 'tedad_jozi_da_koli'
    end
    object ADOQ_show_hame_hazine_havahed_jozi: TWideStringField
      FieldName = 'vahed_jozi'
      Size = 30
    end
    object ADOQ_show_hame_hazine_hageymat_forosh_koli: TFloatField
      FieldName = 'geymat_forosh_koli'
    end
    object ADOQ_show_hame_hazine_hashakhs_sherkat: TWideStringField
      FieldName = 'shakhs_sherkat'
      Size = 50
    end
    object ADOQ_show_hame_hazine_hash_kharid_zayeat: TFloatField
      FieldName = 'sh_kharid_zayeat'
    end
    object ADOQ_show_hame_hazine_hageymatforosh_koli: TFloatField
      FieldName = 'geymatforosh_koli'
    end
    object ADOQ_show_hame_hazine_hacalaname: TWideStringField
      FieldName = 'calaname'
      Size = 100
    end
    object ADOQ_show_hame_hazine_hacode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 100
    end
    object ADOQ_show_hame_hazine_habarcod: TMemoField
      FieldName = 'barcod'
      BlobType = ftMemo
    end
  end
  object ADOQ_jame_noe_hazine: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      'select calaname,sum(geymatforosh_koli) as kol'
      ''
      ' from T_Hazine_Anjirestan'
      'group by calaname')
    Left = 248
    Top = 144
    object ADOQ_jame_noe_hazinecalaname: TWideStringField
      FieldName = 'calaname'
      Size = 100
    end
    object ADOQ_jame_noe_hazinekol: TFloatField
      FieldName = 'kol'
      ReadOnly = True
    end
  end
  object ADOQ_jame_kole_hazineha2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(geymatforosh_koli) as kole_hazineha from T_Hazine_Anj' +
        'irestan')
    Left = 248
    Top = 72
    object ADOQ_jame_kole_hazineha2kole_hazineha: TFloatField
      FieldName = 'kole_hazineha'
      ReadOnly = True
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQuery1AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from T_Hazine_Anjirestan')
    Left = 64
    Top = 200
    object ADOQuery1tedadanbar: TFloatField
      FieldName = 'tedadanbar'
    end
    object ADOQuery1sandog: TWideStringField
      FieldName = 'sandog'
      Size = 30
    end
    object ADOQuery1geymatkharid: TFloatField
      FieldName = 'geymatkharid'
    end
    object ADOQuery1geymatforosh: TFloatField
      FieldName = 'geymatforosh'
    end
    object ADOQuery1time_: TWideStringField
      FieldName = 'time_'
      Size = 250
    end
    object ADOQuery1calacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOQuery1tarikhedit: TWideStringField
      FieldName = 'tarikhedit'
      Size = 12
    end
    object ADOQuery1molahezatforosh: TWideStringField
      FieldName = 'molahezatforosh'
      Size = 250
    end
    object ADOQuery1id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQuery1tedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOQuery1vahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOQuery1geymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOQuery1tedad_jozi_da_koli: TFloatField
      FieldName = 'tedad_jozi_da_koli'
    end
    object ADOQuery1vahed_jozi: TWideStringField
      FieldName = 'vahed_jozi'
      Size = 30
    end
    object ADOQuery1geymat_forosh_koli: TFloatField
      FieldName = 'geymat_forosh_koli'
    end
    object ADOQuery1shakhs_sherkat: TWideStringField
      FieldName = 'shakhs_sherkat'
      Size = 50
    end
    object ADOQuery1sh_kharid_zayeat: TFloatField
      FieldName = 'sh_kharid_zayeat'
    end
    object ADOQuery1geymatforosh_koli: TFloatField
      FieldName = 'geymatforosh_koli'
    end
    object ADOQuery1calaname: TWideStringField
      FieldName = 'calaname'
      Size = 100
    end
    object ADOQuery1code_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 100
    end
    object ADOQuery1barcod: TMemoField
      FieldName = 'barcod'
      BlobType = ftMemo
    end
  end
end
