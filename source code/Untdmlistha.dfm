object Dmlistha: TDmlistha
  OldCreateOrder = False
  Left = 223
  Top = 125
  Height = 607
  Width = 808
  object ADOlistanbarforosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOlistanbarforoshAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from Tanbar_jens_kolli')
    Left = 288
    Top = 120
    object ADOlistanbarforoshcalaname: TWideStringField
      FieldName = 'calaname'
      Size = 40
    end
    object ADOlistanbarforoshtedadanbar: TFloatField
      FieldName = 'tedadanbar'
    end
    object ADOlistanbarforoshanbarname: TWideStringField
      FieldName = 'anbarname'
      Size = 30
    end
    object ADOlistanbarforoshgeymatkharid: TFloatField
      FieldName = 'geymatkharid'
    end
    object ADOlistanbarforoshgeymatforosh: TFloatField
      FieldName = 'geymatforosh'
    end
    object ADOlistanbarforoshmolahezatgeymat: TWideStringField
      FieldName = 'molahezatgeymat'
      Size = 250
    end
    object ADOlistanbarforoshcalacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOlistanbarforoshtarikhedit: TWideStringField
      FieldName = 'tarikhedit'
    end
    object ADOlistanbarforoshmolahezatforosh: TWideStringField
      FieldName = 'molahezatforosh'
      Size = 250
    end
    object ADOlistanbarforoshid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOlistanbarforoshtedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOlistanbarforoshvahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOlistanbarforoshgeymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOlistanbarforoshtedad_jozi_da_koli: TFloatField
      FieldName = 'tedad_jozi_da_koli'
    end
    object ADOlistanbarforoshvahed_jozi: TWideStringField
      FieldName = 'vahed_jozi'
      Size = 30
    end
    object ADOlistanbarforoshgeymat_forosh_koli: TFloatField
      FieldName = 'geymat_forosh_koli'
    end
    object ADOlistanbarforoshbarcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOlistanbarforoshshakhs_sherkat: TWideStringField
      FieldName = 'shakhs_sherkat'
      Size = 50
    end
    object ADOlistanbarforoshcode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
    object ADOlistanbarforoshsh_kharid_zayeat: TFloatField
      FieldName = 'sh_kharid_zayeat'
    end
    object ADOlistanbarforoshgeymatforosh_koli: TFloatField
      FieldName = 'geymatforosh_koli'
    end
  end
  object adolistforosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from forosh_jens')
    Left = 416
    Top = 16
    object adolistforoshjens: TWideStringField
      FieldName = 'jens'
      Size = 40
    end
    object adolistforoshgeymat_vahed: TFloatField
      FieldName = 'geymat_vahed'
    end
    object adolistforoshtedad: TFloatField
      FieldName = 'tedad'
    end
    object adolistforoshgeymat_jens: TFloatField
      FieldName = 'geymat_jens'
    end
    object adolistforoshcalacod: TFloatField
      FieldName = 'calacod'
    end
    object adolistforoshid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object adolistforoshvahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object adolistforoshvahed_jozei: TWideStringField
      FieldName = 'vahed_jozei'
      Size = 30
    end
    object adolistforoshtedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object adolistforoshtedad_jozi_dar_koli: TFloatField
      FieldName = 'tedad_jozi_dar_koli'
    end
    object adolistforoshgeymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object adolistforoshsh_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object adolistforoshtedad_kol: TFloatField
      FieldName = 'tedad_kol'
    end
    object adolistforoshshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object adolistforoshtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
    object adolistforoshbarcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object adolistforoshgeymate_kharid: TFloatField
      FieldName = 'geymate_kharid'
    end
    object adolistforoshcode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
    object adolistforoshanbarname: TWideStringField
      FieldName = 'anbarname'
      Size = 30
    end
  end
  object ADOkharidha: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOkharidhaAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from jens_')
    Left = 56
    Top = 296
    object ADOkharidhajens: TWideStringField
      FieldName = 'jens'
      Size = 40
    end
    object ADOkharidhatedad: TFloatField
      FieldName = 'tedad'
    end
    object ADOkharidhagheymat: TFloatField
      FieldName = 'gheymat'
    end
    object ADOkharidhakol: TFloatField
      FieldName = 'kol'
    end
    object ADOkharidhaid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOkharidhavahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOkharidhavahed_jozei: TWideStringField
      FieldName = 'vahed_jozei'
      Size = 30
    end
    object ADOkharidhatedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOkharidhageymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOkharidhatedad_jozi_dar_koli: TFloatField
      FieldName = 'tedad_jozi_dar_koli'
    end
    object ADOkharidhashahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOkharidhash_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADOkharidhatarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
    object ADOkharidhacode: TFloatField
      FieldName = 'code'
    end
    object ADOkharidhateded_jozi: TFloatField
      FieldName = 'teded_jozi'
    end
    object ADOkharidhageymat_jadid: TFloatField
      FieldName = 'geymat_jadid'
    end
    object ADOkharidhakeraye: TFloatField
      FieldName = 'keraye'
    end
    object ADOkharidhabarcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOkharidhacode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
  end
  object ADO_mohasebe_kol_dar_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(kol) as kol_'
      ',sum(tedad_koli) as tedade_koli'
      ',sum(teded_jozi) as tedae_kole_jozi,'
      'sum(tedad) as tedede_kol'
      ' from jens_')
    Left = 616
    Top = 128
    object ADO_mohasebe_kol_dar_kharidkol_: TFloatField
      FieldName = 'kol_'
      ReadOnly = True
    end
    object ADO_mohasebe_kol_dar_kharidtedade_koli: TFloatField
      FieldName = 'tedade_koli'
      ReadOnly = True
    end
    object ADO_mohasebe_kol_dar_kharidtedae_kole_jozi: TFloatField
      FieldName = 'tedae_kole_jozi'
      ReadOnly = True
    end
    object ADO_mohasebe_kol_dar_kharidtedede_kol: TFloatField
      FieldName = 'tedede_kol'
      ReadOnly = True
    end
  end
  object ADOdistinctcalaname: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOdistinctcalanameAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select distinct calaname,calacod,code_sherkati'
      ' from Tanbar_jens_kolli ')
    Left = 296
    Top = 208
    object ADOdistinctcalanamecalaname: TWideStringField
      FieldName = 'calaname'
      Size = 40
    end
    object ADOdistinctcalanamecalacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOdistinctcalanamecode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
  end
  object ADOlogin: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOloginAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select *  from t_login')
    Left = 112
    Top = 8
    object ADOloginlogin: TWideStringField
      FieldName = 'login'
      Size = 10
    end
    object ADOloginusername: TWideStringField
      FieldName = 'username'
      Size = 40
    end
    object ADOloginid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOloginkarbar: TWideStringField
      FieldName = 'karbar'
      Size = 50
    end
  end
  object ADOQuery_factor_roz: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(geymat_jens) as kol_  from forosh_jens')
    Left = 640
    Top = 16
    object ADOQuery_factor_rozkol_: TFloatField
      FieldName = 'kol_'
    end
  end
  object ADOQuery_bank: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_bank')
    Left = 64
    Top = 240
  end
  object ADOQuery_bank2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQuery_bank2AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_bank')
    Left = 240
    Top = 7
    object ADOQuery_bank2name: TWideStringField
      FieldName = 'name'
    end
    object ADOQuery_bank2telephon: TWideStringField
      FieldName = 'telephon'
    end
    object ADOQuery_bank2fax: TWideStringField
      FieldName = 'fax'
    end
    object ADOQuery_bank2address: TWideStringField
      FieldName = 'address'
      Size = 50
    end
  end
  object ADOQuery_shomare_hesabe_banki: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQuery_shomare_hesabe_bankiAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from  T_shomare_hesabe_banki')
    Left = 327
    Top = 303
    object ADOQuery_shomare_hesabe_bankibank: TWideStringField
      FieldName = 'bank'
    end
    object ADOQuery_shomare_hesabe_bankishobe: TWideStringField
      FieldName = 'shobe'
      Size = 15
    end
    object ADOQuery_shomare_hesabe_bankish_hesab: TWideStringField
      FieldName = 'sh_hesab'
      Size = 15
    end
    object ADOQuery_shomare_hesabe_bankiid: TBCDField
      FieldName = 'id'
      Precision = 10
      Size = 0
    end
    object ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab: TWideStringField
      FieldName = 'bank_shobe_sh_hesab'
      Size = 70
    end
  end
  object ADOQuery_tedad_pishkharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(kol) as kol_,count(*) as tedad from t_kharid_temp')
    Left = 88
    Top = 184
    object ADOQuery_tedad_pishkharidkol_: TFloatField
      FieldName = 'kol_'
    end
    object ADOQuery_tedad_pishkharidtedad: TIntegerField
      FieldName = 'tedad'
    end
  end
  object ADOQuery_update_temp_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_kharid_temp')
    Left = 184
    Top = 256
  end
  object ADOQuery_anbar_majazi: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_anbar_majazi')
    Left = 64
    Top = 424
    object ADOQuery_anbar_majazicalaname: TWideStringField
      FieldName = 'calaname'
      Size = 40
    end
    object ADOQuery_anbar_majazitedadanbar: TFloatField
      FieldName = 'tedadanbar'
    end
    object ADOQuery_anbar_majazianbarname: TWideStringField
      FieldName = 'anbarname'
      Size = 30
    end
    object ADOQuery_anbar_majazigeymatkharid: TFloatField
      FieldName = 'geymatkharid'
    end
    object ADOQuery_anbar_majazigeymatforosh: TFloatField
      FieldName = 'geymatforosh'
    end
    object ADOQuery_anbar_majazimolahezatgeymat: TWideStringField
      FieldName = 'molahezatgeymat'
      Size = 250
    end
    object ADOQuery_anbar_majazicalacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOQuery_anbar_majazitarikhedit: TWideStringField
      FieldName = 'tarikhedit'
    end
    object ADOQuery_anbar_majazimolahezatforosh: TWideStringField
      FieldName = 'molahezatforosh'
      Size = 250
    end
    object ADOQuery_anbar_majaziid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQuery_anbar_majazitedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOQuery_anbar_majazivahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOQuery_anbar_majazigeymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOQuery_anbar_majazitedad_jozi_da_koli: TFloatField
      FieldName = 'tedad_jozi_da_koli'
    end
    object ADOQuery_anbar_majazivahed_jozi: TWideStringField
      FieldName = 'vahed_jozi'
      Size = 30
    end
    object ADOQuery_anbar_majazigeymat_forosh_koli: TFloatField
      FieldName = 'geymat_forosh_koli'
    end
    object ADOQuery_anbar_majazibarcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOQuery_anbar_majazishakhs_sherkat: TWideStringField
      FieldName = 'shakhs_sherkat'
      Size = 50
    end
    object ADOQuery_anbar_majazicode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
    object ADOQuery_anbar_majazish_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADOQuery_anbar_majazitarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 10
    end
  end
  object ADOQuery_vahed: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQuery_vahedAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_vahed')
    Left = 184
    Top = 360
    object ADOQuery_vahedvahed: TWideStringField
      FieldName = 'vahed'
      Size = 30
    end
  end
  object ADOQuery_show_for_eslah: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from forosh_jens')
    Left = 653
    Top = 72
    object ADOQuery_show_for_eslahjens: TWideStringField
      FieldName = 'jens'
      Size = 40
    end
    object ADOQuery_show_for_eslahgeymat_vahed: TFloatField
      FieldName = 'geymat_vahed'
    end
    object ADOQuery_show_for_eslahtedad: TFloatField
      FieldName = 'tedad'
    end
    object ADOQuery_show_for_eslahgeymat_jens: TFloatField
      FieldName = 'geymat_jens'
    end
    object ADOQuery_show_for_eslahcalacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOQuery_show_for_eslahid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQuery_show_for_eslahvahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOQuery_show_for_eslahvahed_jozei: TWideStringField
      FieldName = 'vahed_jozei'
      Size = 30
    end
    object ADOQuery_show_for_eslahtedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOQuery_show_for_eslahtedad_jozi_dar_koli: TFloatField
      FieldName = 'tedad_jozi_dar_koli'
    end
    object ADOQuery_show_for_eslahgeymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOQuery_show_for_eslahsh_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADOQuery_show_for_eslahtedad_kol: TFloatField
      FieldName = 'tedad_kol'
    end
    object ADOQuery_show_for_eslahshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQuery_show_for_eslahtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
    object ADOQuery_show_for_eslahbarcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOQuery_show_for_eslahgeymate_kharid: TFloatField
      FieldName = 'geymate_kharid'
    end
    object ADOQuery_show_for_eslahcode_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
    object ADOQuery_show_for_eslahanbarname: TWideStringField
      FieldName = 'anbarname'
      Size = 30
    end
  end
  object ADOQ_tedad_kharidha_baraye_eslah: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  shahrforoshande ,sh_factor'
      'from forosh_jens'
      'group by sh_factor,shahrforoshande ')
    Left = 104
    Top = 80
    object ADOQ_tedad_kharidha_baraye_eslahshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_tedad_kharidha_baraye_eslahsh_factor: TFloatField
      FieldName = 'sh_factor'
    end
  end
  object ADOlistcheckha: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOlistcheckhaAfterScroll
    Parameters = <>
    SQL.Strings = (
      ' select * from forosh_jens ')
    Left = 296
    Top = 64
  end
  object ADOmohasebe_keraye_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      ' from t_keraye'
      '')
    Left = 656
    Top = 264
    object ADOmohasebe_keraye_kharidcode: TFloatField
      FieldName = 'code'
    end
    object ADOmohasebe_keraye_kharidshomare_factor: TFloatField
      FieldName = 'shomare_factor'
    end
    object ADOmohasebe_keraye_kharidkeraye: TFloatField
      FieldName = 'keraye'
    end
    object ADOmohasebe_keraye_kharidid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOmohasebe_keraye_kharidtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
  end
  object ADOQ_arzesh_tedad_forosh_jens: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(geymat_jens) as kol_ , sum(tedad_koli) as t_v_kol,'
      'sum(tedad) as t_v_joz,'
      'sum(tedad_kol) as tedad_koll'
      ''
      ''
      ' from  forosh_jens')
    Left = 664
    Top = 440
    object ADOQ_arzesh_tedad_forosh_jenskol_: TFloatField
      FieldName = 'kol_'
      ReadOnly = True
    end
    object ADOQ_arzesh_tedad_forosh_jenst_v_kol: TFloatField
      FieldName = 't_v_kol'
      ReadOnly = True
    end
    object ADOQ_arzesh_tedad_forosh_jenst_v_joz: TFloatField
      FieldName = 't_v_joz'
      ReadOnly = True
    end
    object ADOQ_arzesh_tedad_forosh_jenstedad_koll: TFloatField
      FieldName = 'tedad_koll'
      ReadOnly = True
    end
  end
  object ADOlistanbarforosh2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOlistanbarforoshAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from Tanbar_jens_kolli')
    Left = 392
    Top = 128
    object ADOlistanbarforosh2calaname: TWideStringField
      FieldName = 'calaname'
      Size = 40
    end
    object ADOlistanbarforosh2tedadanbar: TFloatField
      FieldName = 'tedadanbar'
    end
    object ADOlistanbarforosh2anbarname: TWideStringField
      FieldName = 'anbarname'
      Size = 30
    end
    object ADOlistanbarforosh2geymatkharid: TFloatField
      FieldName = 'geymatkharid'
    end
    object ADOlistanbarforosh2geymatforosh: TFloatField
      FieldName = 'geymatforosh'
    end
    object ADOlistanbarforosh2molahezatgeymat: TWideStringField
      FieldName = 'molahezatgeymat'
      Size = 250
    end
    object ADOlistanbarforosh2calacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOlistanbarforosh2tarikhedit: TWideStringField
      FieldName = 'tarikhedit'
      Size = 12
    end
    object ADOlistanbarforosh2molahezatforosh: TWideStringField
      FieldName = 'molahezatforosh'
      Size = 250
    end
    object ADOlistanbarforosh2id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOlistanbarforosh2tedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOlistanbarforosh2vahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOlistanbarforosh2geymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOlistanbarforosh2tedad_jozi_da_koli: TFloatField
      FieldName = 'tedad_jozi_da_koli'
    end
    object ADOlistanbarforosh2vahed_jozi: TWideStringField
      FieldName = 'vahed_jozi'
      Size = 30
    end
    object ADOlistanbarforosh2geymat_forosh_koli: TFloatField
      FieldName = 'geymat_forosh_koli'
    end
    object ADOlistanbarforosh2barcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOlistanbarforosh2shakhs_sherkat: TWideStringField
      FieldName = 'shakhs_sherkat'
      Size = 50
    end
    object ADOlistanbarforosh2code_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
    object ADOlistanbarforosh2sh_kharid_zayeat: TFloatField
      FieldName = 'sh_kharid_zayeat'
    end
    object ADOlistanbarforosh2geymatforosh_koli: TFloatField
      FieldName = 'geymatforosh_koli'
    end
  end
  object ADOQuery_shomare_hesabe_banki_temp: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  T_shomare_hesabe_banki')
    Left = 327
    Top = 407
    object ADOQuery_shomare_hesabe_banki_tempbank: TWideStringField
      FieldName = 'bank'
    end
    object ADOQuery_shomare_hesabe_banki_tempshobe: TWideStringField
      FieldName = 'shobe'
      Size = 15
    end
    object ADOQuery_shomare_hesabe_banki_tempsh_hesab: TWideStringField
      FieldName = 'sh_hesab'
      Size = 15
    end
    object ADOQuery_shomare_hesabe_banki_tempid: TBCDField
      FieldName = 'id'
      Precision = 10
      Size = 0
    end
    object ADOQuery_shomare_hesabe_banki_tempbank_shobe_sh_hesab: TWideStringField
      FieldName = 'bank_shobe_sh_hesab'
      Size = 70
    end
  end
  object ADOQuery_shomare_hesabe_banki2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  T_shomare_hesabe_banki')
    Left = 327
    Top = 359
    object ADOQuery_shomare_hesabe_banki2bank: TWideStringField
      FieldName = 'bank'
    end
    object ADOQuery_shomare_hesabe_banki2shobe: TWideStringField
      FieldName = 'shobe'
      Size = 15
    end
    object ADOQuery_shomare_hesabe_banki2sh_hesab: TWideStringField
      FieldName = 'sh_hesab'
      Size = 15
    end
    object ADOQuery_shomare_hesabe_banki2id: TBCDField
      FieldName = 'id'
      Precision = 10
      Size = 0
    end
    object ADOQuery_shomare_hesabe_banki2bank_shobe_sh_hesab: TWideStringField
      FieldName = 'bank_shobe_sh_hesab'
      Size = 70
    end
  end
  object ADOmohasebe_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(geymat_jens)as kol_ from forosh_jens')
    Left = 648
    Top = 216
    object ADOmohasebe_foroshkol_: TFloatField
      FieldName = 'kol_'
    end
  end
  object ADOQuery_daste_check: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  T_daste_check')
    Left = 487
    Top = 287
    object ADOQuery_daste_checkbank_shobe_sh_hesab: TWideStringField
      FieldName = 'bank_shobe_sh_hesab'
      Size = 70
    end
    object ADOQuery_daste_checkdown: TWideStringField
      FieldName = 'down'
      Size = 15
    end
    object ADOQuery_daste_checkup: TWideStringField
      FieldName = 'up'
      Size = 15
    end
    object ADOQuery_daste_checktedad_barg: TFloatField
      FieldName = 'tedad_barg'
    end
    object ADOQuery_daste_checkbarg_mande: TFloatField
      FieldName = 'barg_mande'
    end
    object ADOQuery_daste_checkbarg_keshide: TFloatField
      FieldName = 'barg_keshide'
    end
    object ADOQuery_daste_checkid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object ADOQuery_daste_check_temp: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  T_daste_check')
    Left = 511
    Top = 391
    object ADOQuery_daste_check_tempbank_shobe_sh_hesab: TWideStringField
      FieldName = 'bank_shobe_sh_hesab'
      Size = 70
    end
    object ADOQuery_daste_check_tempdown: TWideStringField
      FieldName = 'down'
      Size = 15
    end
    object ADOQuery_daste_check_tempup: TWideStringField
      FieldName = 'up'
      Size = 15
    end
    object ADOQuery_daste_check_temptedad_barg: TFloatField
      FieldName = 'tedad_barg'
    end
    object ADOQuery_daste_check_tempbarg_mande: TFloatField
      FieldName = 'barg_mande'
    end
    object ADOQuery_daste_check_tempbarg_keshide: TFloatField
      FieldName = 'barg_keshide'
    end
    object ADOQuery_daste_check_tempid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object ADOQuery_daste_check2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  T_daste_check')
    Left = 495
    Top = 343
    object ADOQuery_daste_check2bank_shobe_sh_hesab: TWideStringField
      FieldName = 'bank_shobe_sh_hesab'
      Size = 70
    end
    object ADOQuery_daste_check2down: TWideStringField
      FieldName = 'down'
      Size = 15
    end
    object ADOQuery_daste_check2up: TWideStringField
      FieldName = 'up'
      Size = 15
    end
    object ADOQuery_daste_check2tedad_barg: TFloatField
      FieldName = 'tedad_barg'
    end
    object ADOQuery_daste_check2barg_mande: TFloatField
      FieldName = 'barg_mande'
    end
    object ADOQuery_daste_check2barg_keshide: TFloatField
      FieldName = 'barg_keshide'
    end
    object ADOQuery_daste_check2id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object ADOmohasebe_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(kol) as kol_'
      ''
      ' from jens_')
    Left = 560
    Top = 192
    object ADOmohasebe_kharidkol_: TFloatField
      FieldName = 'kol_'
      ReadOnly = True
    end
  end
  object ADOdistinctcalaname2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOdistinctcalanameAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select distinct calaname,code_sherkati'
      ' from Tanbar_jens_kolli ')
    Left = 424
    Top = 208
    object ADOdistinctcalaname2calaname: TWideStringField
      FieldName = 'calaname'
      Size = 40
    end
    object ADOdistinctcalaname2code_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
  end
  object ADOkharidha2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jens_')
    Left = 56
    Top = 352
    object ADOkharidha2jens: TWideStringField
      FieldName = 'jens'
      Size = 40
    end
    object ADOkharidha2tedad: TFloatField
      FieldName = 'tedad'
    end
    object ADOkharidha2gheymat: TFloatField
      FieldName = 'gheymat'
    end
    object ADOkharidha2kol: TFloatField
      FieldName = 'kol'
    end
    object ADOkharidha2id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOkharidha2vahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOkharidha2vahed_jozei: TWideStringField
      FieldName = 'vahed_jozei'
      Size = 30
    end
    object ADOkharidha2tedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOkharidha2geymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOkharidha2tedad_jozi_dar_koli: TFloatField
      FieldName = 'tedad_jozi_dar_koli'
    end
    object ADOkharidha2shahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOkharidha2sh_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADOkharidha2tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOkharidha2code: TFloatField
      FieldName = 'code'
    end
    object ADOkharidha2teded_jozi: TFloatField
      FieldName = 'teded_jozi'
    end
    object ADOkharidha2geymat_jadid: TFloatField
      FieldName = 'geymat_jadid'
    end
    object ADOkharidha2keraye: TFloatField
      FieldName = 'keraye'
    end
    object ADOkharidha2barcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOkharidha2code_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
  end
  object ADOmohasebe_jame_keraye_kharidha: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(keraye) as keray_kol'
      ' from t_keraye'
      '')
    Left = 648
    Top = 312
    object ADOmohasebe_jame_keraye_kharidhakeray_kol: TFloatField
      FieldName = 'keray_kol'
      ReadOnly = True
    end
  end
  object ADOQ_jame_keraye_har_jens: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(keraye) as keray_kol from jens_'
      '')
    Left = 640
    Top = 376
    object ADOQ_jame_keraye_har_jenskeray_kol: TFloatField
      FieldName = 'keray_kol'
      ReadOnly = True
    end
  end
  object ADOQuery_show_jens_gr_by_cod: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQuery_show_jens_gr_by_codAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select calaname,shakhs_sherkat,calacod'
      'from Tanbar_jens_kolli'
      'group by calacod,calaname,shakhs_sherkat')
    Left = 256
    Top = 496
    object ADOQuery_show_jens_gr_by_codcalaname: TWideStringField
      FieldName = 'calaname'
      Size = 40
    end
    object ADOQuery_show_jens_gr_by_codshakhs_sherkat: TWideStringField
      FieldName = 'shakhs_sherkat'
      Size = 50
    end
    object ADOQuery_show_jens_gr_by_codcalacod: TFloatField
      FieldName = 'calacod'
    end
  end
  object ADOlogin2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from t_login')
    Left = 144
    Top = 24
    object WideStringField1: TWideStringField
      FieldName = 'login'
      Size = 10
    end
    object WideStringField2: TWideStringField
      FieldName = 'username'
      Size = 40
    end
    object BCDField1: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object WideStringField3: TWideStringField
      FieldName = 'karbar'
      Size = 50
    end
  end
end
