object datam_sp_eslahe_forosh: Tdatam_sp_eslahe_forosh
  OldCreateOrder = False
  Left = 183
  Top = 78
  Height = 604
  Width = 744
  object ADOStoredProc_nagdi: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_forosh_nagd_TRANSACTION;1'
    Parameters = <
      item
        Name = '@nagd'
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
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
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
        Name = '@par2'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tagire_nagdi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@temp'
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
      end>
    Left = 88
    Top = 8
  end
  object ADOStoredProc_nagdi_kharid: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_kharid_nagd_TRANSACTION;1'
    Parameters = <
      item
        Name = '@nagd'
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
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
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
      end>
    Left = 272
    Top = 8
  end
  object ADOStoredProc_check_forosh: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_forosh_check_TRANSACTION;1'
    Parameters = <
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
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
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
        Name = '@par2'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tagire_nagdi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@temp'
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
      end>
    Left = 96
    Top = 72
  end
  object ADOStoredProc_check_kharid: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_kharid_check_TRANSACTION;1'
    Parameters = <
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
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
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
        Name = '@temp'
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
      end>
    Left = 272
    Top = 72
  end
  object ADOStoredProc_kharid_check_hazf: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_kharid_check_hazf_TRANSACTION;1'
    Parameters = <
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
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
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
        Name = '@temp'
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
        Name = '@bank_shobe_sh_hesab'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 70
        Value = Null
      end
      item
        Name = '@sh_check'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@mablagh_check'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 272
    Top = 136
  end
  object ADOStoredProc_kharid_check_ezafe: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_kharid_check_ezafe_TRANSACTION;1'
    Parameters = <
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
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
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
        Name = '@temp'
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
        Name = '@bank_shobe_sh_hesab'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 70
        Value = Null
      end
      item
        Name = '@sh_check'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@mablagh_check'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tarikh_check'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end>
    Left = 264
    Top = 200
  end
  object ADOStoredProc_eslahe_forosh_tedad: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_forosh_tedad_TRANSACTION;1'
    Parameters = <
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
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
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
        Name = '@tedade_jozi'
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
        Size = 31
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
        Name = '@tedade_koli'
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
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozihe_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
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
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
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
        Name = '@type_kh_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@sabte_gozaresh_anbar'
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
        Name = '@jam_jadid'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@type_forosh_jens'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymat_vahed'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymat_jens'
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
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@tedadkli_pas_az_tafazol'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedadkli_pas_az_tafazol1'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@temp'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@type_update_anbar_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@typ_bedeh'
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
      end>
    Left = 80
    Top = 264
  end
  object ADOStoredProc_eslahe_forosh_hazf: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_forosh_hazf_TRANSACTION;1'
    Parameters = <
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
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
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
        Name = '@tedade_jozi'
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
        Size = 31
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
        Name = '@tedade_koli'
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
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozihe_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
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
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
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
        Name = '@type_kh_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
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
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@tedadkli_pas_az_tafazol'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@temp'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@type_update_anbar_koli'
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
      end
      item
        Name = '@par_takhfif'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 96
    Top = 344
  end
  object ADOStoredProc_eslahe_forosh_ezafe_jens: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_forosh_ezafe_kardane_jens_TRANSACTION;1'
    Parameters = <
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
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
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
        Name = '@tedade_jozi'
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
        Size = 31
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
        Name = '@tedade_koli_forosh'
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
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozihe_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
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
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
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
        Name = '@type_kh_az_anbar'
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
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
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
      end
      item
        Name = '@geymat_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymat_vahed'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymat_jens'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@geymate_kharid'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedade_koli_anbar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 96
    Top = 432
  end
  object ADOStoredProc_eslahe_kharid_tedad: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_kharid_tedad_TRANSACTION;1'
    Parameters = <
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
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
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
        Name = '@tedade_jozi'
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
        Size = 31
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
        Name = '@tedade_koli'
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
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozihe_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
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
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
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
        Name = '@type_kh_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@sabte_gozaresh_anbar'
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
        Name = '@jam_jadid'
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
        Name = '@geymatkoli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@arzesh_kol_bade_elah'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id_dar_anbare_majazi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id_dar_jens_'
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
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@tedadkli_pas_az_tafazol'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@temp'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@type_update_anbar_majazi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@typ_bedeh'
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
        Name = '@tedad_jozi_jadid_goz_anbar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tedad_koli_jadid_goz_anbar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@type_update_jens'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 264
    Top = 256
  end
  object ADOStoredProc_eslahe_kharid_hazf: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_kharid_hazf_TRANSACTION;1'
    Parameters = <
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
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
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
        Name = '@tedade_jozi'
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
        Size = 31
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
        Name = '@tedade_koli'
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
        Name = '@tedad_kole_jabejaei'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozihe_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
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
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
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
        Name = '@type_kh_az_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
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
        Name = '@id'
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
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
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
    Left = 256
    Top = 344
  end
  object ADOStoredProc_eslahe_kharid_ezafe_jens: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_kharid_ezafe_kardane_jens_TRANSACTION;1'
    Parameters = <
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
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
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
        Name = '@tedad_jozi'
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
        Size = 31
        Value = Null
      end
      item
        Name = '@vahed_jozei'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 31
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
        Name = '@tedad_j_dar_kol'
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
        Name = '@tozihe_anbar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
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
        Name = '@code_sherkati'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
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
        Name = '@type_kh_az_anbar'
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
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
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
      end
      item
        Name = '@tozihe_anbare_majazi'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@type_exist'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@type_jozi_koli'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@temp2'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
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
        Name = '@geymate_jozi'
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
        Name = '@x'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 248
    Top = 424
  end
  object ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_pardakhte_bedehi_tavasote_moshtari_TRANSACTION;1'
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
        Name = '@tarikh_gadim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@tarikh_jadid'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@mablagh_jadid'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@mablagh_gadim'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@time_gadim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
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
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@type'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozih_sandog'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 150
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
        Name = '@bedehi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 544
    Top = 32
  end
  object ADOStoredProc_eslahe_pardakhte_bedehi_be_foroshande: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_pardakhte_bedehi_be_foroshande_TRANSACTION;1'
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
        Name = '@tarikh_jadid'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@mablagh_jadid'
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
        Name = '@type'
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
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@mablagh_gadim'
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
        Name = '@tarikh_gadim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@time_gadim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
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
        Name = '@bedehi'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tozih_sandog'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 150
        Value = Null
      end>
    Left = 536
    Top = 96
  end
  object ADOStoredProc_eslahe_forosh_takhfif: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_forosh_takhfif_TRANSACTION;1'
    Parameters = <
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
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
        Value = Null
      end
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
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
        Name = '@mablagh_takhfif'
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
      end>
    Left = 64
    Top = 496
  end
  object ADOStoredProc_eslahe_jens: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_jens_TRANSACTION;1'
    Parameters = <
      item
        Name = '@name_gadim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@name_jadid'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@barcod_jadid'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@code_sherkati_jadid'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
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
        Name = '@shakhs_sherkat'
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
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 536
    Top = 176
  end
  object ADOStoredProc_eslahe_geymat_geymat: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_geymat_geymat_TRANSACTION;1'
    Parameters = <
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@tarikh_eslah'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
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
        Name = '@molahezat_geymat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 250
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
    Left = 520
    Top = 240
  end
  object ADOStoredProc_eslahe_kharid_keraye: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_kharid_keraye_TRANSACTION;1'
    Parameters = <
      item
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@shahrforoshande'
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
        Name = '@keraye_jadid'
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
        Name = '@ker_per'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 248
    Top = 488
  end
  object ADOStoredProc_forosh_check_hazf: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'eslahe_forosh_check_hazf_TRANSACTION;1'
    Parameters = <
      item
        Name = '@bedeh_eslah'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@talab_eslah'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@bedehkar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@bestankar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@code_kharidar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@sh_factor'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@tatikh_forosh'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 12
      end
      item
        Name = '@shahrforoshande'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = '@par'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@temp'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@amaliat'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
      end
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
        Name = '@bank_shobe_sh_hesab'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 70
      end
      item
        Name = '@sh_check'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@mablagh_check'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end>
    Left = 80
    Top = 144
  end
end
