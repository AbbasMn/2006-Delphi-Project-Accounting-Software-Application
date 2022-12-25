object DataM_final: TDataM_final
  OldCreateOrder = False
  Left = 408
  Top = 28
  Height = 553
  Width = 755
  object ADOQ_t_pardakht_nagd_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_pardakht_nagd_kharid')
    Left = 80
    Top = 8
    object ADOQ_t_pardakht_nagd_kharidcode: TFloatField
      FieldName = 'code'
    end
    object ADOQ_t_pardakht_nagd_kharidshomare_factor: TFloatField
      FieldName = 'shomare_factor'
    end
    object ADOQ_t_pardakht_nagd_kharidnagd: TFloatField
      FieldName = 'nagd'
    end
    object ADOQ_t_pardakht_nagd_kharidid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_t_pardakht_nagd_kharidtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
  end
  object ADOQ_t_pardakht_nagd_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_pardakht_nagd_forosh')
    Left = 376
    object ADOQ_t_pardakht_nagd_foroshcode: TFloatField
      FieldName = 'code'
    end
    object ADOQ_t_pardakht_nagd_foroshshomare_factor: TFloatField
      FieldName = 'shomare_factor'
    end
    object ADOQ_t_pardakht_nagd_foroshnagd: TFloatField
      FieldName = 'nagd'
    end
    object ADOQ_t_pardakht_nagd_foroshid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_t_pardakht_nagd_foroshtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
  end
  object ADOQ_T_pardakht_check_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_pardakht_check_forosh')
    Left = 80
    Top = 48
    object ADOQ_T_pardakht_check_foroshcode: TFloatField
      FieldName = 'code'
    end
    object ADOQ_T_pardakht_check_foroshshomare_factor: TFloatField
      FieldName = 'shomare_factor'
    end
    object ADOQ_T_pardakht_check_foroshmablagh_check: TFloatField
      FieldName = 'mablagh_check'
    end
    object ADOQ_T_pardakht_check_foroshsh_check: TFloatField
      FieldName = 'sh_check'
    end
    object ADOQ_T_pardakht_check_foroshsh_hesab: TWideStringField
      FieldName = 'sh_hesab'
      Size = 70
    end
    object ADOQ_T_pardakht_check_foroshtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
    object ADOQ_T_pardakht_check_foroshid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_T_pardakht_check_foroshshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_T_pardakht_check_foroshtarikh_kharid: TWideStringField
      FieldName = 'tarikh_kharid'
      Size = 25
    end
    object ADOQ_T_pardakht_check_foroshpass: TWideStringField
      FieldName = 'pass'
      Size = 5
    end
  end
  object ADOQ_T_pardakht_check_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_pardakht_check_kharid')
    Left = 376
    Top = 48
    object ADOQ_T_pardakht_check_kharidcode: TFloatField
      FieldName = 'code'
    end
    object ADOQ_T_pardakht_check_kharidshomare_factor: TFloatField
      FieldName = 'shomare_factor'
    end
    object ADOQ_T_pardakht_check_kharidmablagh_check: TFloatField
      FieldName = 'mablagh_check'
    end
    object ADOQ_T_pardakht_check_kharidsh_check: TFloatField
      FieldName = 'sh_check'
    end
    object ADOQ_T_pardakht_check_kharidsh_hesab: TWideStringField
      FieldName = 'sh_hesab'
      Size = 70
    end
    object ADOQ_T_pardakht_check_kharidtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_T_pardakht_check_kharidid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_T_pardakht_check_kharidshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_T_pardakht_check_kharidtarikh_kharid: TWideStringField
      FieldName = 'tarikh_kharid'
      Size = 25
    end
    object ADOQ_T_pardakht_check_kharidpass: TWideStringField
      FieldName = 'pass'
      Size = 5
    end
  end
  object ADOQ_t_Temp_pardakht_check_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_t_Temp_pardakht_check_foroshAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from  t_Temp_pardakht_check_forosh')
    Left = 88
    Top = 96
    object ADOQ_t_Temp_pardakht_check_foroshcode: TFloatField
      FieldName = 'code'
    end
    object ADOQ_t_Temp_pardakht_check_foroshshomare_factor: TFloatField
      FieldName = 'shomare_factor'
    end
    object ADOQ_t_Temp_pardakht_check_foroshmablagh_check: TFloatField
      FieldName = 'mablagh_check'
    end
    object ADOQ_t_Temp_pardakht_check_foroshsh_check: TFloatField
      FieldName = 'sh_check'
    end
    object ADOQ_t_Temp_pardakht_check_foroshsh_hesab: TWideStringField
      FieldName = 'sh_hesab'
      Size = 70
    end
    object ADOQ_t_Temp_pardakht_check_foroshtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
    object ADOQ_t_Temp_pardakht_check_foroshid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_t_Temp_pardakht_check_foroshshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_t_Temp_pardakht_check_foroshtarikh_kharid: TWideStringField
      FieldName = 'tarikh_kharid'
      Size = 25
    end
    object ADOQ_t_Temp_pardakht_check_foroshpass: TWideStringField
      FieldName = 'pass'
      Size = 5
    end
  end
  object ADOQ_t_Temp_pardakht_check_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_t_Temp_pardakht_check_kharidAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from  t_Temp_pardakht_check_kharid')
    Left = 376
    Top = 88
    object ADOQ_t_Temp_pardakht_check_kharidcode: TFloatField
      FieldName = 'code'
    end
    object ADOQ_t_Temp_pardakht_check_kharidshomare_factor: TFloatField
      FieldName = 'shomare_factor'
    end
    object ADOQ_t_Temp_pardakht_check_kharidmablagh_check: TFloatField
      FieldName = 'mablagh_check'
    end
    object ADOQ_t_Temp_pardakht_check_kharidsh_check: TFloatField
      FieldName = 'sh_check'
    end
    object ADOQ_t_Temp_pardakht_check_kharidsh_hesab: TWideStringField
      FieldName = 'sh_hesab'
      Size = 70
    end
    object ADOQ_t_Temp_pardakht_check_kharidtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_t_Temp_pardakht_check_kharidid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_t_Temp_pardakht_check_kharidshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_t_Temp_pardakht_check_kharidtarikh_kharid: TWideStringField
      FieldName = 'tarikh_kharid'
      Size = 12
    end
    object ADOQ_t_Temp_pardakht_check_kharidpass: TWideStringField
      FieldName = 'pass'
      Size = 5
    end
  end
  object ADOQ_jame_t_Temp_pardakht_check_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  sum(mablagh_check) as jame_kol'
      'from  t_Temp_pardakht_check_kharid')
    Left = 368
    Top = 136
    object ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol: TFloatField
      FieldName = 'jame_kol'
    end
  end
  object ADOQ_jame_t_Temp_pardakht_check_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  sum(mablagh_check) as jame_kol'
      'from  t_Temp_pardakht_check_forosh')
    Left = 104
    Top = 136
    object ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol: TFloatField
      FieldName = 'jame_kol'
      ReadOnly = True
    end
  end
  object ADOQ_jame_bedehi_be_foroshande: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(talab) as talab_kol,'
      'sum(bedeh) as bedeh_kol '
      'from T_bedehi')
    Left = 368
    Top = 184
    object ADOQ_jame_bedehi_be_foroshandetalab_kol: TFloatField
      FieldName = 'talab_kol'
    end
    object ADOQ_jame_bedehi_be_foroshandebedeh_kol: TFloatField
      FieldName = 'bedeh_kol'
    end
  end
  object ADOQ_bedeh_be_foroshnse: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_bedeh_be_foroshnseAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select code_shakhs,shahrforoshande,'
      'sum(bedehkar) as bedeh,sum(bestankar) as talab from'
      'T_bestankar_bedehkar_foroshande'
      'group by code_shakhs,shahrforoshande')
    Left = 368
    Top = 240
    object ADOQ_bedeh_be_foroshnsecode_shakhs: TFloatField
      FieldName = 'code_shakhs'
    end
    object ADOQ_bedeh_be_foroshnseshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_bedeh_be_foroshnsebedeh: TFloatField
      FieldName = 'bedeh'
      ReadOnly = True
    end
    object ADOQ_bedeh_be_foroshnsetalab: TFloatField
      FieldName = 'talab'
      ReadOnly = True
    end
  end
  object ADOQ_T_jame_pardakht_check_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(mablagh_check)as check_kol'
      ' from T_pardakht_check_kharid')
    Left = 88
    Top = 296
    object ADOQ_T_jame_pardakht_check_kharidcheck_kol: TFloatField
      FieldName = 'check_kol'
    end
  end
  object ADOQ_jame_t_pardakht_nagd_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(nagd) as nagd_kol '
      'from t_pardakht_nagd_kharid')
    Left = 96
    Top = 352
    object ADOQ_jame_t_pardakht_nagd_kharidnagd_kol: TFloatField
      FieldName = 'nagd_kol'
    end
  end
  object ADOQ_jame_bede_talab_dar_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol'
      'from T_bedehi')
    Left = 96
    Top = 416
    object ADOQ_jame_bede_talab_dar_kharidbedeh_kol: TFloatField
      FieldName = 'bedeh_kol'
    end
    object ADOQ_jame_bede_talab_dar_kharidtalab_kol: TFloatField
      FieldName = 'talab_kol'
    end
  end
  object ADOQ_jame_bedehi_be_kharidar: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(talab) as talab_kol,'
      'sum(bedeh) as bedeh_kol '
      'from bedeh_bestan')
    Left = 96
    Top = 184
    object ADOQ_jame_bedehi_be_kharidartalab_kol: TFloatField
      FieldName = 'talab_kol'
    end
    object ADOQ_jame_bedehi_be_kharidarbedeh_kol: TFloatField
      FieldName = 'bedeh_kol'
    end
  end
  object ADOQ_bedeh_be_kharidar: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_bedeh_be_kharidarAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select code_shakhs,shahrforoshande,'
      'sum(bedehkar) as bedeh,sum(bestankar) as talab from'
      'T_bestankar_bedehkar_kharidar'
      'group by code_shakhs,shahrforoshande')
    Left = 72
    Top = 240
    object ADOQ_bedeh_be_kharidarcode_shakhs: TFloatField
      FieldName = 'code_shakhs'
    end
    object ADOQ_bedeh_be_kharidarshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_bedeh_be_kharidarbedeh: TFloatField
      FieldName = 'bedeh'
      ReadOnly = True
    end
    object ADOQ_bedeh_be_kharidartalab: TFloatField
      FieldName = 'talab'
      ReadOnly = True
    end
  end
  object ADOQ_pass_kardan: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_pardakht_check_forosh')
    Left = 104
    Top = 512
  end
  object ADOQ_T_jame_pardakht_check_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(mablagh_check)as check_kol'
      ' from T_pardakht_check_forosh')
    Left = 384
    Top = 296
    object ADOQ_T_jame_pardakht_check_foroshcheck_kol: TFloatField
      FieldName = 'check_kol'
    end
  end
  object ADOQ_jame_t_pardakht_nagd_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(nagd) as nagd_kol '
      'from t_pardakht_nagd_forosh')
    Left = 376
    Top = 360
    object ADOQ_jame_t_pardakht_nagd_foroshnagd_kol: TFloatField
      FieldName = 'nagd_kol'
      ReadOnly = True
    end
  end
  object ADOQ_jame_bede_talab_dar_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol'
      'from bedeh_bestan')
    Left = 376
    Top = 424
    object ADOQ_jame_bede_talab_dar_foroshbedeh_kol: TFloatField
      FieldName = 'bedeh_kol'
    end
    object ADOQ_jame_bede_talab_dar_foroshtalab_kol: TFloatField
      FieldName = 'talab_kol'
    end
  end
  object ADOQuery_pish_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_kharid_temp')
    Left = 224
    Top = 504
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
  object ADOQ_g_kol_foroshha: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(geymat_jens) as g_kol_foroshha'
      'from forosh_jens'#10)
    Left = 656
    Top = 40
    object ADOQ_g_kol_foroshhag_kol_foroshha: TFloatField
      FieldName = 'g_kol_foroshha'
    end
  end
  object ADOQ_t_sh_facrorhaye_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_t_sh_facrorhaye_foroshAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_sh_facrorhaye_forosh'#10
      '')
    Left = 696
    Top = 312
    object ADOQ_t_sh_facrorhaye_foroshshomare: TFloatField
      FieldName = 'shomare'
    end
    object ADOQ_t_sh_facrorhaye_foroshshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_t_sh_facrorhaye_foroshtarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQ_t_sh_facrorhaye_foroshcode: TFloatField
      FieldName = 'code'
    end
    object ADOQ_t_sh_facrorhaye_foroshtime: TWideStringField
      FieldName = 'time'
      Size = 10
    end
  end
  object ADOQ_bedeh_talabe_factor_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from bedeh_bestan')
    Left = 664
    Top = 152
    object ADOQ_bedeh_talabe_factor_foroshbedeh: TFloatField
      FieldName = 'bedeh'
    end
    object ADOQ_bedeh_talabe_factor_foroshcode: TFloatField
      FieldName = 'code'
    end
    object ADOQ_bedeh_talabe_factor_foroshtalab: TFloatField
      FieldName = 'talab'
    end
    object ADOQ_bedeh_talabe_factor_foroshsh_khaid: TFloatField
      FieldName = 'sh_khaid'
    end
    object ADOQ_bedeh_talabe_factor_foroshtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
  end
  object ADOQ_T_pardakht_check_forosh2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_pardakht_check_forosh')
    Left = 208
    Top = 80
    object ADOQ_T_pardakht_check_forosh2code: TFloatField
      FieldName = 'code'
    end
    object ADOQ_T_pardakht_check_forosh2shomare_factor: TFloatField
      FieldName = 'shomare_factor'
    end
    object ADOQ_T_pardakht_check_forosh2mablagh_check: TFloatField
      FieldName = 'mablagh_check'
    end
    object ADOQ_T_pardakht_check_forosh2sh_check: TFloatField
      FieldName = 'sh_check'
    end
    object ADOQ_T_pardakht_check_forosh2sh_hesab: TWideStringField
      FieldName = 'sh_hesab'
      Size = 70
    end
    object ADOQ_T_pardakht_check_forosh2tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_T_pardakht_check_forosh2id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_T_pardakht_check_forosh2shahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_T_pardakht_check_forosh2tarikh_kharid: TWideStringField
      FieldName = 'tarikh_kharid'
      Size = 25
    end
    object ADOQ_T_pardakht_check_forosh2pass: TWideStringField
      FieldName = 'pass'
      Size = 5
    end
  end
  object ADOQ_t_sh_facrorhaye_forosh2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_t_sh_facrorhaye_forosh2AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_sh_facrorhaye_forosh'#10
      ''
      '')
    Left = 688
    Top = 368
    object ADOQ_t_sh_facrorhaye_forosh2shomare: TFloatField
      FieldName = 'shomare'
    end
    object ADOQ_t_sh_facrorhaye_forosh2shahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_t_sh_facrorhaye_forosh2tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_t_sh_facrorhaye_forosh2code: TFloatField
      FieldName = 'code'
    end
    object ADOQ_t_sh_facrorhaye_forosh2time: TWideStringField
      FieldName = 'time'
      Size = 10
    end
  end
  object ADOQ_t_sh_facrorhaye_forosh3: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_sh_facrorhaye_forosh'#10
      ''
      '')
    Left = 696
    Top = 424
  end
  object ADOQ_bedeh_be_kharidar2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_bedeh_be_kharidarAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select code_shakhs,shahrforoshande,'
      'sum(bedehkar) as bedeh,sum(bestankar) as talab from'
      'T_bestankar_bedehkar_kharidar'
      'group by code_shakhs,shahrforoshande')
    Left = 208
    Top = 248
    object ADOQ_bedeh_be_kharidar2code_shakhs: TFloatField
      FieldName = 'code_shakhs'
    end
    object ADOQ_bedeh_be_kharidar2shahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_bedeh_be_kharidar2bedeh: TFloatField
      FieldName = 'bedeh'
      ReadOnly = True
    end
    object ADOQ_bedeh_be_kharidar2talab: TFloatField
      FieldName = 'talab'
      ReadOnly = True
    end
  end
  object ADOQ_bedeh_be_foroshnse2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_bedeh_be_foroshnseAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select code_shakhs,shahrforoshande,'
      'sum(bedehkar) as bedeh,sum(bestankar) as talab from'
      'T_bestankar_bedehkar_foroshande'
      'group by code_shakhs,shahrforoshande')
    Left = 520
    Top = 240
    object ADOQ_bedeh_be_foroshnse2code_shakhs: TFloatField
      FieldName = 'code_shakhs'
    end
    object ADOQ_bedeh_be_foroshnse2shahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_bedeh_be_foroshnse2bedeh: TFloatField
      FieldName = 'bedeh'
      ReadOnly = True
    end
    object ADOQ_bedeh_be_foroshnse2talab: TFloatField
      FieldName = 'talab'
      ReadOnly = True
    end
  end
  object ADOQ_t_sh_facrorhaye_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_t_sh_facrorhaye_kharidAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_sh_facrorhaye_kharid')
    Left = 864
    Top = 336
    object ADOQ_t_sh_facrorhaye_kharidshomare: TFloatField
      FieldName = 'shomare'
    end
    object ADOQ_t_sh_facrorhaye_kharidshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_t_sh_facrorhaye_kharidtarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQ_t_sh_facrorhaye_kharidcode: TFloatField
      FieldName = 'code'
    end
    object ADOQ_t_sh_facrorhaye_kharidtime: TWideStringField
      FieldName = 'time'
      Size = 10
    end
  end
  object ADOQuery_pish_kharid2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_kharid_temp')
    Left = 344
    Top = 512
    object ADOQuery_pish_kharid2jens: TWideStringField
      FieldName = 'jens'
      Size = 40
    end
    object ADOQuery_pish_kharid2tedad: TFloatField
      FieldName = 'tedad'
    end
    object ADOQuery_pish_kharid2gheymat: TFloatField
      FieldName = 'gheymat'
    end
    object ADOQuery_pish_kharid2kol: TFloatField
      FieldName = 'kol'
    end
    object ADOQuery_pish_kharid2id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQuery_pish_kharid2vahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOQuery_pish_kharid2vahed_jozei: TWideStringField
      FieldName = 'vahed_jozei'
      Size = 30
    end
    object ADOQuery_pish_kharid2tedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOQuery_pish_kharid2geymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOQuery_pish_kharid2tedad_jozi_dar_koli: TFloatField
      FieldName = 'tedad_jozi_dar_koli'
    end
    object ADOQuery_pish_kharid2shahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQuery_pish_kharid2sh_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADOQuery_pish_kharid2tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
    object ADOQuery_pish_kharid2code: TFloatField
      FieldName = 'code'
    end
    object ADOQuery_pish_kharid2teded_jozi: TFloatField
      FieldName = 'teded_jozi'
    end
    object ADOQuery_pish_kharid2geymat_jadid: TFloatField
      FieldName = 'geymat_jadid'
    end
    object ADOQuery_pish_kharid2keraye: TFloatField
      FieldName = 'keraye'
    end
    object ADOQuery_pish_kharid2barcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOQuery_pish_kharid2code_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
  end
  object ADOQ_takhfife_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_takhfife_forosh')
    Left = 480
    Top = 488
    object ADOQ_takhfife_foroshsh_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADOQ_takhfife_foroshcod_kharidar: TFloatField
      FieldName = 'cod_kharidar'
    end
    object ADOQ_takhfife_foroshdarsade_takhfif: TSmallintField
      FieldName = 'darsade_takhfif'
    end
    object ADOQ_takhfife_foroshmablagh_takhfif: TFloatField
      FieldName = 'mablagh_takhfif'
    end
    object ADOQ_takhfife_foroshbedehi_az_gabl: TFloatField
      FieldName = 'bedehi_az_gabl'
    end
    object ADOQ_takhfife_foroshtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 10
    end
    object ADOQ_takhfife_foroshtime_: TWideStringField
      FieldName = 'time_'
      Size = 10
    end
    object ADOQ_takhfife_foroshid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
  end
  object ADOQuery_pish_kharid3: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_kharid_temp')
    Left = 312
    Top = 568
    object ADOQuery_pish_kharid3jens: TWideStringField
      FieldName = 'jens'
      Size = 40
    end
    object ADOQuery_pish_kharid3tedad: TFloatField
      FieldName = 'tedad'
    end
    object ADOQuery_pish_kharid3gheymat: TFloatField
      FieldName = 'gheymat'
    end
    object ADOQuery_pish_kharid3kol: TFloatField
      FieldName = 'kol'
    end
    object ADOQuery_pish_kharid3id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQuery_pish_kharid3vahed_koli: TWideStringField
      FieldName = 'vahed_koli'
      Size = 30
    end
    object ADOQuery_pish_kharid3vahed_jozei: TWideStringField
      FieldName = 'vahed_jozei'
      Size = 30
    end
    object ADOQuery_pish_kharid3tedad_koli: TFloatField
      FieldName = 'tedad_koli'
    end
    object ADOQuery_pish_kharid3geymat_koli: TFloatField
      FieldName = 'geymat_koli'
    end
    object ADOQuery_pish_kharid3tedad_jozi_dar_koli: TFloatField
      FieldName = 'tedad_jozi_dar_koli'
    end
    object ADOQuery_pish_kharid3shahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQuery_pish_kharid3sh_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADOQuery_pish_kharid3tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
    object ADOQuery_pish_kharid3code: TFloatField
      FieldName = 'code'
    end
    object ADOQuery_pish_kharid3teded_jozi: TFloatField
      FieldName = 'teded_jozi'
    end
    object ADOQuery_pish_kharid3geymat_jadid: TFloatField
      FieldName = 'geymat_jadid'
    end
    object ADOQuery_pish_kharid3keraye: TFloatField
      FieldName = 'keraye'
    end
    object ADOQuery_pish_kharid3barcod: TWideStringField
      FieldName = 'barcod'
      Size = 15
    end
    object ADOQuery_pish_kharid3code_sherkati: TWideStringField
      FieldName = 'code_sherkati'
      Size = 10
    end
  end
  object ADOQ_g_kol_temp_foroshha: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(geymat_jens) as g_kol_foroshha'
      'from '
      'T_temp_forosh_factor'#10
      '')
    Left = 848
    Top = 64
    object ADOQ_g_kol_temp_foroshhag_kol_foroshha: TFloatField
      FieldName = 'g_kol_foroshha'
      ReadOnly = True
    end
  end
  object ADOQ_eslahe_bedehe_tozihe_kharidar: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  t_tozihe_eslahe_bedehi_kharidar'#10
      ''
      ''
      '')
    Left = 696
    Top = 480
    object ADOQ_eslahe_bedehe_tozihe_kharidartarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
    object ADOQ_eslahe_bedehe_tozihe_kharidartozih: TWideStringField
      FieldName = 'tozih'
      Size = 250
    end
    object ADOQ_eslahe_bedehe_tozihe_kharidarid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOQ_eslahe_bedehe_tozihe_kharidartype: TWideStringField
      FieldName = 'type'
    end
    object ADOQ_eslahe_bedehe_tozihe_kharidarshakhs: TWideStringField
      FieldName = 'shakhs'
      Size = 50
    end
  end
  object ADOQ_eslahe_bedehe_tozihe_foroshande: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  t_tozihe_eslahe_bedehi_foroshande'#10
      ''
      ''
      ''
      '')
    Left = 696
    Top = 536
    object ADOQ_eslahe_bedehe_tozihe_foroshandetarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 25
    end
    object ADOQ_eslahe_bedehe_tozihe_foroshandetozih: TWideStringField
      FieldName = 'tozih'
      Size = 250
    end
    object ADOQ_eslahe_bedehe_tozihe_foroshandeid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOQ_eslahe_bedehe_tozihe_foroshandetype: TWideStringField
      FieldName = 'type'
    end
    object ADOQ_eslahe_bedehe_tozihe_foroshandeshakhs: TWideStringField
      FieldName = 'shakhs'
      Size = 50
    end
  end
  object ADOQ_jame_takhfife: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(mablagh_takhfif) as takhfife_kol'
      ' from T_takhfife_forosh')
    Left = 880
    Top = 440
    object ADOQ_jame_takhfifetakhfife_kol: TFloatField
      FieldName = 'takhfife_kol'
      ReadOnly = True
    end
  end
  object ADOQ_takhfife_forosh2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_takhfife_forosh')
    Left = 480
    Top = 552
    object ADOQ_takhfife_forosh2sh_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADOQ_takhfife_forosh2cod_kharidar: TFloatField
      FieldName = 'cod_kharidar'
    end
    object ADOQ_takhfife_forosh2darsade_takhfif: TSmallintField
      FieldName = 'darsade_takhfif'
    end
    object ADOQ_takhfife_forosh2mablagh_takhfif: TFloatField
      FieldName = 'mablagh_takhfif'
    end
    object ADOQ_takhfife_forosh2bedehi_az_gabl: TFloatField
      FieldName = 'bedehi_az_gabl'
    end
    object ADOQ_takhfife_forosh2tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 10
    end
    object ADOQ_takhfife_forosh2time_: TWideStringField
      FieldName = 'time_'
      Size = 10
    end
    object ADOQ_takhfife_forosh2id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
  end
  object ADOQ_tozihate_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_tozihe_forosh')
    Left = 848
    Top = 152
    object ADOQ_tozihate_foroshcode: TFloatField
      FieldName = 'code'
    end
    object ADOQ_tozihate_foroshshomare_factor: TFloatField
      FieldName = 'shomare_factor'
    end
    object ADOQ_tozihate_foroshid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_tozihate_foroshtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_tozihate_foroshtozih: TWideStringField
      FieldName = 'tozih'
      Size = 1000
    end
  end
  object ADOQ_tozihate_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_tozihe_kharid')
    Left = 840
    Top = 232
    object ADOQ_tozihate_kharidcode: TFloatField
      FieldName = 'code'
    end
    object ADOQ_tozihate_kharidshomare_factor: TFloatField
      FieldName = 'shomare_factor'
    end
    object ADOQ_tozihate_kharidid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_tozihate_kharidtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_tozihate_kharidtozih: TWideStringField
      FieldName = 'tozih'
      Size = 1000
    end
  end
  object ADOQ_bestankar_bedehkae_kharidar: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_bestankar_bedehkar_kharidar')
    Left = 896
    Top = 560
    object ADOQ_bestankar_bedehkae_kharidarbedehkar: TFloatField
      FieldName = 'bedehkar'
    end
    object ADOQ_bestankar_bedehkae_kharidarbestankar: TFloatField
      FieldName = 'bestankar'
    end
    object ADOQ_bestankar_bedehkae_kharidarshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_bestankar_bedehkae_kharidartype_: TWideStringField
      FieldName = 'type_'
      Size = 30
    end
    object ADOQ_bestankar_bedehkae_kharidarcode_shakhs: TFloatField
      FieldName = 'code_shakhs'
    end
    object ADOQ_bestankar_bedehkae_kharidarid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_bestankar_bedehkae_kharidarsh_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADOQ_bestankar_bedehkae_kharidartarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_bestankar_bedehkae_kharidartime_: TWideStringField
      FieldName = 'time_'
      Size = 50
    end
  end
  object ADOQ_bestankar_bedehkae_foroshande: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_bestankar_bedehkar_foroshande')
    Left = 888
    Top = 616
    object ADOQ_bestankar_bedehkae_foroshandebedehkar: TFloatField
      FieldName = 'bedehkar'
    end
    object ADOQ_bestankar_bedehkae_foroshandebestankar: TFloatField
      FieldName = 'bestankar'
    end
    object ADOQ_bestankar_bedehkae_foroshandeshahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_bestankar_bedehkae_foroshandetype_: TWideStringField
      FieldName = 'type_'
      Size = 30
    end
    object ADOQ_bestankar_bedehkae_foroshandecode_shakhs: TFloatField
      FieldName = 'code_shakhs'
    end
    object ADOQ_bestankar_bedehkae_foroshandeid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_bestankar_bedehkae_foroshandesh_factor: TFloatField
      FieldName = 'sh_factor'
    end
    object ADOQ_bestankar_bedehkae_foroshandetarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_bestankar_bedehkae_foroshandetime_: TWideStringField
      FieldName = 'time_'
      Size = 10
    end
  end
  object ADOQ_t_Temp_pardakht_check_forosh2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_t_Temp_pardakht_check_foroshAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from  t_Temp_pardakht_check_forosh')
    Left = 208
    Top = 160
    object ADOQ_t_Temp_pardakht_check_forosh2code: TFloatField
      FieldName = 'code'
    end
    object ADOQ_t_Temp_pardakht_check_forosh2shomare_factor: TFloatField
      FieldName = 'shomare_factor'
    end
    object ADOQ_t_Temp_pardakht_check_forosh2mablagh_check: TFloatField
      FieldName = 'mablagh_check'
    end
    object ADOQ_t_Temp_pardakht_check_forosh2sh_check: TFloatField
      FieldName = 'sh_check'
    end
    object ADOQ_t_Temp_pardakht_check_forosh2sh_hesab: TWideStringField
      FieldName = 'sh_hesab'
      Size = 70
    end
    object ADOQ_t_Temp_pardakht_check_forosh2tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_t_Temp_pardakht_check_forosh2id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_t_Temp_pardakht_check_forosh2shahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_t_Temp_pardakht_check_forosh2tarikh_kharid: TWideStringField
      FieldName = 'tarikh_kharid'
      Size = 12
    end
    object ADOQ_t_Temp_pardakht_check_forosh2pass: TWideStringField
      FieldName = 'pass'
      Size = 5
    end
  end
  object ADOQ_t_Temp_pardakht_check_kharid2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_t_Temp_pardakht_check_kharidAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from  t_Temp_pardakht_check_kharid')
    Left = 480
    Top = 120
    object ADOQ_t_Temp_pardakht_check_kharid2code: TFloatField
      FieldName = 'code'
    end
    object ADOQ_t_Temp_pardakht_check_kharid2shomare_factor: TFloatField
      FieldName = 'shomare_factor'
    end
    object ADOQ_t_Temp_pardakht_check_kharid2mablagh_check: TFloatField
      FieldName = 'mablagh_check'
    end
    object ADOQ_t_Temp_pardakht_check_kharid2sh_check: TFloatField
      FieldName = 'sh_check'
    end
    object ADOQ_t_Temp_pardakht_check_kharid2sh_hesab: TWideStringField
      FieldName = 'sh_hesab'
      Size = 70
    end
    object ADOQ_t_Temp_pardakht_check_kharid2tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_t_Temp_pardakht_check_kharid2id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_t_Temp_pardakht_check_kharid2shahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_t_Temp_pardakht_check_kharid2tarikh_kharid: TWideStringField
      FieldName = 'tarikh_kharid'
      Size = 12
    end
    object ADOQ_t_Temp_pardakht_check_kharid2pass: TWideStringField
      FieldName = 'pass'
      Size = 5
    end
  end
  object ADOQ_T_pardakht_check_kharid2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_pardakht_check_kharid')
    Left = 480
    Top = 32
    object ADOQ_T_pardakht_check_kharid2code: TFloatField
      FieldName = 'code'
    end
    object ADOQ_T_pardakht_check_kharid2shomare_factor: TFloatField
      FieldName = 'shomare_factor'
    end
    object ADOQ_T_pardakht_check_kharid2mablagh_check: TFloatField
      FieldName = 'mablagh_check'
    end
    object ADOQ_T_pardakht_check_kharid2sh_check: TFloatField
      FieldName = 'sh_check'
    end
    object ADOQ_T_pardakht_check_kharid2sh_hesab: TWideStringField
      FieldName = 'sh_hesab'
      Size = 70
    end
    object ADOQ_T_pardakht_check_kharid2tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_T_pardakht_check_kharid2id: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object ADOQ_T_pardakht_check_kharid2shahrforoshande: TWideStringField
      FieldName = 'shahrforoshande'
      Size = 50
    end
    object ADOQ_T_pardakht_check_kharid2tarikh_kharid: TWideStringField
      FieldName = 'tarikh_kharid'
      Size = 25
    end
    object ADOQ_T_pardakht_check_kharid2pass: TWideStringField
      FieldName = 'pass'
      Size = 5
    end
  end
end
