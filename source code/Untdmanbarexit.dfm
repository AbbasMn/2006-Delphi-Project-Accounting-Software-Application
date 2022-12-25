object Dmanbarexite: TDmanbarexite
  OldCreateOrder = False
  Left = 333
  Top = 176
  Height = 344
  Width = 325
  object ADOanbarname: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOanbarnameAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from tanbar_names')
    Left = 136
    Top = 16
    object ADOanbarnamename: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object ADOanbarnameadress: TWideStringField
      FieldName = 'adress'
      Size = 50
    end
    object ADOanbarnametelephon: TWideStringField
      FieldName = 'telephon'
    end
    object ADOanbarnamemasool: TWideStringField
      FieldName = 'masool'
      Size = 30
    end
  end
  object ADOanbarcala: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOanbarcalaAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from Tanbar_jens_kolli')
    Left = 40
    Top = 56
    object ADOanbarcalacalaname: TWideStringField
      FieldName = 'calaname'
      Size = 40
    end
    object ADOanbarcalatedadanbar: TFloatField
      FieldName = 'tedadanbar'
    end
    object ADOanbarcalaanbarname: TWideStringField
      FieldName = 'anbarname'
      Size = 30
    end
    object ADOanbarcalageymatkharid: TFloatField
      FieldName = 'geymatkharid'
    end
    object ADOanbarcalageymatforosh: TFloatField
      FieldName = 'geymatforosh'
    end
    object ADOanbarcalamolahezatgeymat: TWideStringField
      FieldName = 'molahezatgeymat'
      Size = 250
    end
    object ADOanbarcalacalacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOanbarcalatarikhedit: TWideStringField
      FieldName = 'tarikhedit'
      Size = 12
    end
    object ADOanbarcalamolahezatforosh: TWideStringField
      FieldName = 'molahezatforosh'
      Size = 250
    end
    object ADOanbarcalaid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOanbarcalatedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOanbarcalavahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOanbarcalageymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOanbarcalatedad_jozi_da_koli: TFloatField
      FieldName = 'tedad_jozi_da_koli'
    end
    object ADOanbarcalavahed_jozi: TWideStringField
      FieldName = 'vahed_jozi'
      Size = 30
    end
    object ADOanbarcalageymat_forosh_koli: TFloatField
      FieldName = 'geymat_forosh_koli'
    end
    object ADOanbarcalabarcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOanbarcalashakhs_sherkat: TWideStringField
      FieldName = 'shakhs_sherkat'
      Size = 50
    end
    object ADOanbarcalacode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
    object ADOanbarcalash_kharid_zayeat: TFloatField
      FieldName = 'sh_kharid_zayeat'
    end
    object ADOanbarcalageymatforosh_koli: TFloatField
      FieldName = 'geymatforosh_koli'
    end
  end
  object ADOQuery_shomare_factor: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  T_shomare_factor')
    Left = 208
    Top = 80
  end
  object ADOanbarname2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOanbarname2AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from tanbar_names')
    Left = 80
    Top = 176
    object ADOanbarname2name: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object ADOanbarname2adress: TWideStringField
      FieldName = 'adress'
      Size = 50
    end
    object ADOanbarname2telephon: TWideStringField
      FieldName = 'telephon'
    end
    object ADOanbarname2masool: TWideStringField
      FieldName = 'masool'
      Size = 30
    end
  end
  object ADOQ_vahedhaye_jens: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_vahedhaye_jensAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select '
      'calaname,calacod,'
      'vahed_koli,vahed_jozi,'
      'tedad_jozi_da_koli'
      ''
      'from Tanbar_jens_kolli'
      ''
      'group by calaname,calacod,'
      'vahed_koli,vahed_jozi,tedad_jozi_da_koli')
    Left = 208
    Top = 152
    object ADOQ_vahedhaye_jenscalaname: TWideStringField
      FieldName = 'calaname'
      Size = 40
    end
    object ADOQ_vahedhaye_jenscalacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOQ_vahedhaye_jensvahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOQ_vahedhaye_jensvahed_jozi: TWideStringField
      FieldName = 'vahed_jozi'
      Size = 30
    end
    object ADOQ_vahedhaye_jenstedad_jozi_da_koli: TFloatField
      FieldName = 'tedad_jozi_da_koli'
    end
  end
  object ADOanbarcala2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tanbar_jens_kolli')
    Left = 32
    Top = 112
    object ADOanbarcala2calaname: TWideStringField
      FieldName = 'calaname'
      Size = 40
    end
    object ADOanbarcala2tedadanbar: TFloatField
      FieldName = 'tedadanbar'
    end
    object ADOanbarcala2anbarname: TWideStringField
      FieldName = 'anbarname'
      Size = 30
    end
    object ADOanbarcala2geymatkharid: TFloatField
      FieldName = 'geymatkharid'
    end
    object ADOanbarcala2geymatforosh: TFloatField
      FieldName = 'geymatforosh'
    end
    object ADOanbarcala2molahezatgeymat: TWideStringField
      FieldName = 'molahezatgeymat'
      Size = 250
    end
    object ADOanbarcala2calacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOanbarcala2tarikhedit: TWideStringField
      FieldName = 'tarikhedit'
      Size = 12
    end
    object ADOanbarcala2molahezatforosh: TWideStringField
      FieldName = 'molahezatforosh'
      Size = 250
    end
    object ADOanbarcala2id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOanbarcala2tedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOanbarcala2vahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOanbarcala2geymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOanbarcala2tedad_jozi_da_koli: TFloatField
      FieldName = 'tedad_jozi_da_koli'
    end
    object ADOanbarcala2vahed_jozi: TWideStringField
      FieldName = 'vahed_jozi'
      Size = 30
    end
    object ADOanbarcala2geymat_forosh_koli: TFloatField
      FieldName = 'geymat_forosh_koli'
    end
    object ADOanbarcala2barcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOanbarcala2shakhs_sherkat: TWideStringField
      FieldName = 'shakhs_sherkat'
      Size = 50
    end
    object ADOanbarcala2code_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
    object ADOanbarcala2sh_kharid_zayeat: TFloatField
      FieldName = 'sh_kharid_zayeat'
    end
    object ADOanbarcala2geymatforosh_koli: TFloatField
      FieldName = 'geymatforosh_koli'
    end
  end
end
