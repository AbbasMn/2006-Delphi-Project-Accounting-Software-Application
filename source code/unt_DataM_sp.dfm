object DataM_sp: TDataM_sp
  OldCreateOrder = False
  Left = 262
  Top = 100
  Height = 688
  Width = 888
  object ADOStoredProc_kharid: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'KHARID_TRANSACTION;1'
    Parameters = <
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@code'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@talab'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@bedeh'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@nagd'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@type_sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@keraye'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozihat_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@sandog'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@tozih'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 150
        Value = Null
      end
      item
        Name = '@type_sandog'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end>
    Left = 104
    Top = 8
  end
  object ADOStoredProc_forosh: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'FOROSH_TRANSACTION;1'
    Parameters = <
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@code'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@talab'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@bedeh'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@nagd'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@darsade_takhfif'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@mablagh_takhfif'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@bedehi_az_gabl'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozih'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 150
        Value = Null
      end
      item
        Name = '@type_sandog'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end
      item
        Name = '@mablag'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@sandog'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@tozihat_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 368
    Top = 8
  end
  object ADOStoredProc_pardakht_bedehi_kharidar: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'pardakhte_bedehitavasote_moshtari_TRANSACTION;1'
    Parameters = <
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@code'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozih'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 150
        Value = Null
      end
      item
        Name = '@type'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end
      item
        Name = '@mablag'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@sandog'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@b_j'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@t_j'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@noe_pardakht'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 368
    Top = 64
  end
  object ADOStoredProc_pardakhte_bedehi_be_foroshande: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'pardakhte_bedehi_be_foroshande_SP_TRANSACTION;1'
    Parameters = <
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@code'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@mablag'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@b_j'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@t_j'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@tozih'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 150
        Value = Null
      end
      item
        Name = '@type'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end
      item
        Name = '@sandog'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end>
    Left = 104
    Top = 56
  end
  object ADOStoredProc_entegale_vajh_az_sandog_be_sandog: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'entegale_vajh_az_sandog_be_sandog_SP_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@tozih1'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 150
        Value = Null
      end
      item
        Name = '@type1'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end
      item
        Name = '@sandog1'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@tozih2'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 150
        Value = Null
      end
      item
        Name = '@type2'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end
      item
        Name = '@sandog2'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@mablag'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 376
    Top = 120
  end
  object ADOStoredProc_pas_kardane_check: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'pas_kardane_check_SP_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@pass'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 104
    Top = 112
  end
  object ADOStoredProc_shakhse_jadid: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'shakhse_jadid_TRANSACTION;1'
    Parameters = <
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@adress'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@telephon'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@telephonhamrah'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@email'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@type'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@code'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 376
    Top = 168
  end
  object ADOStoredProc_vorode_motefarege: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'vorode_motefarege_SP_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@geymat_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymat'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@barcod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
        Value = Null
      end
      item
        Name = '@shakhs_sherkat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@jens'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 40
        Value = Null
      end
      item
        Name = '@tedad'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@calacod'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_koli'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@vahed_jozei'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@tedad_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_jozi_dar_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_kol'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozih'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@anbarname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@type'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 104
    Top = 168
  end
  object ADOStoredProc_eslahe_shakhs: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_shakhs_TRANSACTION;1'
    Parameters = <
      item
        Name = '@shahrforoshande_old'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@shahrforoshande_new'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@code'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@adress'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@telephon'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@telephonhamrah'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@email'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@type'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@code_jadid'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 368
    Top = 216
  end
  object ADOStoredProc_eslehe_vahed: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_vahed_TRANSACTION;1'
    Parameters = <
      item
        Name = '@vahede_gadim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@vahede_jadid'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 112
    Top = 224
  end
  object ADOStoredProc_eslahe_vahed_jense_anbar: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_vahed_jense_anbar_TRANSACTION;1'
    Parameters = <
      item
        Name = '@vahede_koli_gadim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@vahede_koli_jadid'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@vahede_jozei_gadim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@vahede_jozei_jadid'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@calaname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 40
        Value = Null
      end
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@t_j_dar_k'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 104
    Top = 304
  end
  object ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 
      'ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_code_feli_SP_TRA' +
      'NSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@calacod'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@anbarname_mgsad'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@anbarname_mabda'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@tedad_koli_magsad'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_koli_mabda'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozihe'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 250
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@calaname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 41
        Value = Null
      end
      item
        Name = '@geymatkharid'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymatforosh'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@molahezatgeymat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 251
        Value = Null
      end
      item
        Name = '@tarikhedit'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@vahed_koli'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@geymat_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_jozi_da_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_jozi'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@geymat_forosh_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@barcod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
        Value = Null
      end
      item
        Name = '@shakhs_sherkat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 51
        Value = Null
      end
      item
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
        Value = Null
      end
      item
        Name = '@tozihe_kho_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@tozihe_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@type_kh_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@type_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@tedade_jozi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedade_kol'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 400
    Top = 304
  end
  object ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 
      'ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_code_jadid_SP_TRAN' +
      'SACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
      end
      item
        Name = '@anbarname_mgsad'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
      end
      item
        Name = '@anbarname_mabda'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
      end
      item
        Name = '@tedad_koli_magsad'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@tedad_koli_mabda'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@tozihe'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 250
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = '@calaname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 41
      end
      item
        Name = '@geymatkharid'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@geymatforosh'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@molahezatgeymat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 251
      end
      item
        Name = '@calacod'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@calacod_jadid'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@tarikhedit'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
      end
      item
        Name = '@vahed_koli'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
      end
      item
        Name = '@geymat_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@tedad_jozi_da_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@vahed_jozi'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
      end
      item
        Name = '@geymat_forosh_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@barcod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = '@shakhs_sherkat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 51
      end
      item
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
      end
      item
        Name = '@tozihe_kho_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
      end
      item
        Name = '@tozihe_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
      end
      item
        Name = '@type_kh_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
      end
      item
        Name = '@type_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
      end
      item
        Name = '@tedade_jozi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@tedade_kol'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@geymatforosh_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end>
    Left = 640
    Top = 248
  end
  object ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'ja_be_jaeie_jens_ba_code_jadid_SP_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@anbarname_mgsad'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@anbarname_mabda'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@tedad_koli_magsad'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_koli_mabda'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozihe'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 250
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@calaname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 41
        Value = Null
      end
      item
        Name = '@geymatkharid'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymatforosh'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@molahezatgeymat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 251
        Value = Null
      end
      item
        Name = '@calacod'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@calacod_jadid'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tarikhedit'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@vahed_koli'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@geymat_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_jozi_da_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_jozi'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@geymat_forosh_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@barcod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
        Value = Null
      end
      item
        Name = '@shakhs_sherkat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 51
        Value = Null
      end
      item
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
        Value = Null
      end
      item
        Name = '@tozihe_kho_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@tozihe_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@type_kh_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@type_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@tedade_jozi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedade_kol'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymatforosh_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 80
    Top = 392
  end
  object ADOStoredProc_ja_be_jaeie_jens_ba_code_feli: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'ja_be_jaeie_jens_ba_code_feli_SP_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@calacod'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@anbarname_mgsad'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@anbarname_mabda'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@tedad_koli_magsad'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_koli_mabda'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozihe'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 250
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@calaname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 41
        Value = Null
      end
      item
        Name = '@geymatkharid'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymatforosh'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@molahezatgeymat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 251
        Value = Null
      end
      item
        Name = '@tarikhedit'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@vahed_koli'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@geymat_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_jozi_da_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_jozi'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@geymat_forosh_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@barcod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
        Value = Null
      end
      item
        Name = '@shakhs_sherkat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 51
        Value = Null
      end
      item
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
        Value = Null
      end
      item
        Name = '@tozihe_kho_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@tozihe_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@type_kh_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@type_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@tedade_jozi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedade_kol'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymatforosh_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 344
    Top = 400
  end
  object ADOStoredProc_az_majazi_be_anbar_jense_jadid: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'az_majazi_be_anbar_jense_jadid_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@id_dar_majazi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@calacode'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@molaheze_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 250
        Value = Null
      end
      item
        Name = '@anbarname_mgsad'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@tedad_koli_magsad'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedade_jozie'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@calaname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 41
        Value = Null
      end
      item
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_koli'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@tedad_jozi_da_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_jozi'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@barcod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
        Value = Null
      end
      item
        Name = '@shakhs_sherkat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 51
        Value = Null
      end
      item
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
        Value = Null
      end
      item
        Name = '@tozihe_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@type_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end>
    Left = 96
    Top = 472
  end
  object ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@id_dar_majazi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@calacode'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@molahezatgeymat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 250
        Value = Null
      end
      item
        Name = '@anbarname_mgsad'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@tedad_koli_magsad'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedade_jozie'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@calaname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 41
        Value = Null
      end
      item
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_koli'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@tedad_jozi_da_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_jozi'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@barcod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
        Value = Null
      end
      item
        Name = '@shakhs_sherkat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 51
        Value = Null
      end
      item
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
        Value = Null
      end
      item
        Name = '@tozihe_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@type_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@geymat_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymatkharid'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymatforosh'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymat_forosh_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 328
    Top = 496
  end
  object ADOStoredProc_az_majazi_be_anbar_jense_mojod_ba_code_jadid: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'az_majazi_be_anbar_jense_mojod_ba_code_jadid_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@id_dar_majazi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@calacode'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@molaheze_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 250
        Value = Null
      end
      item
        Name = '@anbarname_mgsad'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@tedad_koli_magsad'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedade_jozie'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@calaname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 41
        Value = Null
      end
      item
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_koli'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@tedad_jozi_da_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_jozi'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@barcod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
        Value = Null
      end
      item
        Name = '@shakhs_sherkat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 51
        Value = Null
      end
      item
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
        Value = Null
      end
      item
        Name = '@tozihe_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@type_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end>
    Left = 576
    Top = 472
  end
  object ADOStoredProc_afzayesh_geymat_darsadi_vase_hameye_ajnas: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'afzayesh_geymat_darsadi_vase_hameye_ajnas_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@darsad_sod'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@molahezatgeymat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 250
        Value = Null
      end
      item
        Name = '@type_darsad'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 88
    Top = 568
  end
  object ADOStoredProc_afzayesh_geymat_darsadi_vase_ajnas_sherkat: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'afzayesh_geymat_darsadi_vase_ajnas_sherkat_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@darsad_sod'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@molahezatgeymat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 250
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@type_darsad'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1
        Value = Null
      end
      item
        Name = '@shakhs_sherkat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Left = 400
    Top = 576
  end
  object ADOStoredProc_zayeat: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'zayeat_SP_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@calacod'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@anbarname_mgsad'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@anbarname_mabda'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@tedad_koli_magsad'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_koli_mabda'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozihe'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 250
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@calaname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 41
        Value = Null
      end
      item
        Name = '@geymatkharid'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymatforosh'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@molahezatgeymat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 251
        Value = Null
      end
      item
        Name = '@tarikhedit'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@vahed_koli'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@geymat_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_jozi_da_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_jozi'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@geymat_forosh_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@barcod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
        Value = Null
      end
      item
        Name = '@shakhs_sherkat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 51
        Value = Null
      end
      item
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
        Value = Null
      end
      item
        Name = '@tozihe_kho_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@tozihe_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@type_kh_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@type_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@tedade_jozi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedade_kol'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@sh_kharid_zayeat'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 632
    Top = 16
  end
  object ADOStoredProc_eslahe_zayeat: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_zayeat_SP_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@calacod'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@anbarname_mgsad'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@anbarname_mabda'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@tedad_koli_magsad'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_koli_mabda'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@calaname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 41
        Value = Null
      end
      item
        Name = '@vahed_koli'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@tedad_jozi_da_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_jozi'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@barcod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
        Value = Null
      end
      item
        Name = '@shakhs_sherkat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 51
        Value = Null
      end
      item
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
        Value = Null
      end
      item
        Name = '@tozihe_kho_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@tozihe_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@type_kh_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@type_vo_be_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@tedade_jozi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedade_kol'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id_magsad_dar_anbar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id_mabda_dar_anbar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@par'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id_dar_zayeat'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 616
    Top = 88
  end
  object ADOStoredProc_marjoei: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'marjoei_SP_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@calacod'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@anbarname_mabda'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@tedad_koli_mabda'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@calaname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 41
        Value = Null
      end
      item
        Name = '@geymatkharid'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_koli'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@geymat_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_jozi_da_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_jozi'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@barcod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
        Value = Null
      end
      item
        Name = '@shakhs_sherkat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 51
        Value = Null
      end
      item
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
        Value = Null
      end
      item
        Name = '@tozihe_kho_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@type_kh_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@tedade_jozi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedade_kol'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@sh_kharid_mrajoei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@bedehkar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@bestankar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@code_kharidar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@bedeh_eslah'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@talab_eslah'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@par'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 768
    Top = 32
  end
  object ADOStoredProc_eslahe_marjoei: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_marjoei_SP_TRANSACTION;1'
    Parameters = <
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@calacod'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@anbarname_mabda'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@tedad_koli_mabda'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@calaname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 41
        Value = Null
      end
      item
        Name = '@vahed_koli'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@tedad_jozi_da_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@vahed_jozi'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
        Value = Null
      end
      item
        Name = '@barcod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
        Value = Null
      end
      item
        Name = '@shakhs_sherkat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 51
        Value = Null
      end
      item
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
        Value = Null
      end
      item
        Name = '@tozihe_kho_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@type_kh_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@tedade_jozi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedade_kol'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id_mabda_dar_anbar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@par'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id_dar_marjoei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_koli_magsad'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@bedehkar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@bestankar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@bedeh_eslah'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@talab_eslah'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@code_kharidar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Par2'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 760
    Top = 88
  end
  object ADOStoredProc_tagire_bestankar_bedehkar: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'tagire_bestankar_bedehkar_TRANSACTION;1'
    Parameters = <
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@time'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@tarikh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@code'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@type'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@par'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@bedeh'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@talab'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozih'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@type2'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Left = 696
    Top = 544
  end
end
