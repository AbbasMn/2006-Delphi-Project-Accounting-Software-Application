object DataModule_gozaresh_tarkibi: TDataModule_gozaresh_tarkibi
  OldCreateOrder = False
  Left = 268
  Top = 164
  Height = 491
  Width = 511
  object ADOQuery_khridaran: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(geymat_jens) as kol_ '
      ' from  forosh_jens')
    Left = 64
    Top = 104
    object ADOQuery_khridarankol_: TFloatField
      FieldName = 'kol_'
      ReadOnly = True
    end
  end
  object ADO_fac_roz_show: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from forosh_jens')
    Left = 184
    Top = 88
    object ADO_fac_roz_showjens: TWideStringField
      FieldName = 'jens'
      Size = 40
    end
    object ADO_fac_roz_showgeymat_vahed: TFloatField
      FieldName = 'geymat_vahed'
    end
    object ADO_fac_roz_showtedad: TFloatField
      FieldName = 'tedad'
    end
    object ADO_fac_roz_showgeymat_jens: TFloatField
      FieldName = 'geymat_jens'
    end
    object ADO_fac_roz_showcalacod: TFloatField
      FieldName = 'calacod'
    end
    object ADO_fac_roz_showid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADO_fac_roz_showvahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADO_fac_roz_showvahed_jozei: TWideStringField
      FieldName = 'vahed_jozei'
      Size = 30
    end
    object ADO_fac_roz_showtedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADO_fac_roz_showtedad_jozi_dar_koli: TFloatField
      FieldName = 'tedad_jozi_dar_koli'
    end
    object ADO_fac_roz_showgeymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADO_fac_roz_showsh_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADO_fac_roz_showtedad_kol: TFloatField
      FieldName = 'tedad_kol'
    end
    object ADO_fac_roz_showshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADO_fac_roz_showtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
    object ADO_fac_roz_showbarcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADO_fac_roz_showgeymate_kharid: TFloatField
      FieldName = 'geymate_kharid'
    end
    object ADO_fac_roz_showcode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
    object ADO_fac_roz_showanbarname: TWideStringField
      FieldName = 'anbarname'
      Size = 30
    end
  end
  object ADOQuery_yaddasht: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQuery_yaddashtAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from T_yaddasht')
    Left = 192
    Top = 16
    object ADOQuery_yaddashtmatn: TMemoField
      FieldName = 'matn'
      BlobType = ftMemo
    end
    object ADOQuery_yaddashtshakhs: TWideStringField
      FieldName = 'shakhs'
      Size = 50
    end
    object ADOQuery_yaddashttarikh_yadavary: TWideStringField
      FieldName = 'tarikh_yadavary'
    end
    object ADOQuery_yaddashttarikh_zakhire: TWideStringField
      FieldName = 'tarikh_zakhire'
    end
    object ADOQuery_yaddashttype: TWideStringField
      FieldName = 'type'
      Size = 10
    end
    object ADOQuery_yaddashtmozo: TWideStringField
      FieldName = 'mozo'
    end
    object ADOQuery_yaddashtanjam: TWideStringField
      FieldName = 'anjam'
      Size = 15
    end
    object ADOQuery_yaddashtid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
  end
  object ADOQuery_sefaresh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQuery_sefareshAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_sefaresh')
    Left = 312
    Top = 24
    object ADOQuery_sefareshmatn: TMemoField
      FieldName = 'matn'
      BlobType = ftMemo
    end
    object ADOQuery_sefareshtarikh_sefaresh: TWideStringField
      FieldName = 'tarikh_sefaresh'
    end
    object ADOQuery_sefareshshakhs: TWideStringField
      FieldName = 'shakhs'
      Size = 50
    end
    object ADOQuery_sefareshanjam: TWideStringField
      FieldName = 'anjam'
      Size = 10
    end
    object ADOQuery_sefareshtarikh_residegi: TWideStringField
      FieldName = 'tarikh_residegi'
    end
    object ADOQuery_sefareshonvan: TWideStringField
      FieldName = 'onvan'
      Size = 30
    end
    object ADOQuery_sefareshjens: TWideStringField
      FieldName = 'jens'
      Size = 41
    end
    object ADOQuery_sefareshtedad: TFloatField
      FieldName = 'tedad'
    end
    object ADOQuery_sefareshtype: TWideStringField
      FieldName = 'type'
      Size = 1
    end
    object ADOQuery_sefareshid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object ADOQuery_show_pish_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from forosh_temp')
    Left = 160
    Top = 160
    object ADOQuery_show_pish_foroshjens: TWideStringField
      FieldName = 'jens'
      Size = 40
    end
    object ADOQuery_show_pish_foroshgeymat_vahed: TFloatField
      FieldName = 'geymat_vahed'
    end
    object ADOQuery_show_pish_foroshtedad: TFloatField
      FieldName = 'tedad'
    end
    object ADOQuery_show_pish_foroshgeymat_jens: TFloatField
      FieldName = 'geymat_jens'
    end
    object ADOQuery_show_pish_foroshcalacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOQuery_show_pish_foroshid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQuery_show_pish_foroshvahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOQuery_show_pish_foroshvahed_jozei: TWideStringField
      FieldName = 'vahed_jozei'
      Size = 30
    end
    object ADOQuery_show_pish_foroshtedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOQuery_show_pish_foroshtedad_jozi_dar_koli: TFloatField
      FieldName = 'tedad_jozi_dar_koli'
    end
    object ADOQuery_show_pish_foroshgeymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOQuery_show_pish_foroshsh_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADOQuery_show_pish_foroshtedad_kol: TFloatField
      FieldName = 'tedad_kol'
    end
    object ADOQuery_show_pish_foroshshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQuery_show_pish_foroshtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQuery_show_pish_foroshbarcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOQuery_show_pish_foroshgeymate_kharid: TFloatField
      FieldName = 'geymate_kharid'
    end
    object ADOQuery_show_pish_foroshcode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
    object ADOQuery_show_pish_foroshanbarname: TWideStringField
      FieldName = 'anbarname'
      Size = 30
    end
  end
  object ADOQuery_mohasebe_geymat: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(geymat_jens) as kol_ ,count(*) as galam_  from forosh' +
        '_temp')
    Left = 376
    Top = 104
    object ADOQuery_mohasebe_geymatkol_: TFloatField
      FieldName = 'kol_'
      ReadOnly = True
    end
    object ADOQuery_mohasebe_geymatgalam_: TIntegerField
      FieldName = 'galam_'
      ReadOnly = True
    end
  end
  object ADOQuery_update_forosh_temp: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from forosh_temp')
    Left = 376
    Top = 200
  end
  object ADOQuery_sandog: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQuery_sandogAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from T_sandog_name')
    Left = 200
    Top = 224
    object ADOQuery_sandogsandog: TWideStringField
      FieldName = 'sandog'
      Size = 30
    end
  end
  object ADOQuery_daryaft_be_sandog: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_vorod_khoroj_sandogha')
    Left = 80
    Top = 259
    object ADOQuery_daryaft_be_sandogmablag: TFloatField
      FieldName = 'mablag'
    end
    object ADOQuery_daryaft_be_sandogsandog: TWideStringField
      FieldName = 'sandog'
      Size = 30
    end
    object ADOQuery_daryaft_be_sandogtarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQuery_daryaft_be_sandogtype: TWideStringField
      FieldName = 'type'
      Size = 6
    end
    object ADOQuery_daryaft_be_sandogtozih: TWideStringField
      FieldName = 'tozih'
      Size = 150
    end
    object ADOQuery_daryaft_be_sandogid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQuery_daryaft_be_sandogtime_: TWideStringField
      FieldName = 'time_'
      Size = 10
    end
    object ADOQuery_daryaft_be_sandogcod_kharidar: TFloatField
      FieldName = 'cod_kharidar'
    end
    object ADOQuery_daryaft_be_sandogsh_factor: TFloatField
      FieldName = 'sh_factor'
    end
  end
  object ADOQuery_jame_vorod_sandog: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(mablag) as vorod  '
      'from T_vorod_khoroj_sandogha'
      ''
      '')
    Left = 112
    Top = 328
    object ADOQuery_jame_vorod_sandogvorod: TFloatField
      FieldName = 'vorod'
    end
  end
  object ADOQuery_kh_sandog: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(mablag) as khoroj'
      'from T_vorod_khoroj_sandogha')
    Left = 280
    Top = 320
    object ADOQuery_kh_sandogkhoroj: TFloatField
      FieldName = 'khoroj'
      ReadOnly = True
    end
  end
  object ADOQ_temp_factore_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '
      'T_temp_forosh_factor')
    Left = 304
    Top = 392
    object ADOQ_temp_factore_foroshjens: TWideStringField
      FieldName = 'jens'
      Size = 40
    end
    object ADOQ_temp_factore_foroshgeymat_vahed: TFloatField
      FieldName = 'geymat_vahed'
    end
    object ADOQ_temp_factore_foroshtedad: TFloatField
      FieldName = 'tedad'
    end
    object ADOQ_temp_factore_foroshgeymat_jens: TFloatField
      FieldName = 'geymat_jens'
    end
    object ADOQ_temp_factore_foroshcalacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOQ_temp_factore_foroshid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_temp_factore_foroshvahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOQ_temp_factore_foroshvahed_jozei: TWideStringField
      FieldName = 'vahed_jozei'
      Size = 30
    end
    object ADOQ_temp_factore_foroshtedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOQ_temp_factore_foroshtedad_jozi_dar_koli: TFloatField
      FieldName = 'tedad_jozi_dar_koli'
    end
    object ADOQ_temp_factore_foroshgeymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOQ_temp_factore_foroshsh_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADOQ_temp_factore_foroshtedad_kol: TFloatField
      FieldName = 'tedad_kol'
    end
    object ADOQ_temp_factore_foroshshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_temp_factore_foroshtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
    object ADOQ_temp_factore_foroshbarcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOQ_temp_factore_foroshcode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
  end
  object ADOQuery_sandog2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQuery_sandogAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from T_sandog_name')
    Left = 272
    Top = 248
    object WideStringField1: TWideStringField
      FieldName = 'sandog'
      Size = 30
    end
  end
end
