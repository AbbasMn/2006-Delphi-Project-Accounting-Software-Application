object Dm_sp_backup: TDm_sp_backup
  OldCreateOrder = False
  Left = 215
  Top = 2
  Height = 712
  Width = 1022
  object ADOStoredProc_from_morede_banki_to_temp_morede_banki: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_morede_banki_to_temp_morede_banki_TRANSACTION;1'
    Parameters = <>
    Left = 120
    Top = 72
  end
  object ADOStoredProc_delete_from_temp_morede_banki: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'delete_from_temp_morede_banki_TRANSACTION;1'
    Parameters = <>
    Left = 120
    Top = 16
  end
  object ADOStoredProc_from_temp_morede_banki_to_morede_benki: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_temp_morede_banki_to_morede_banki_TRANSACTION;1'
    Parameters = <>
    Left = 120
    Top = 128
  end
  object ADOQuery_temp_mored_banki: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_bank1_temp')
    Left = 120
    Top = 192
  end
  object ADOStoredProc_delete_from_Tanbar_jens_kolli_temp: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'delete_from_Tanbar_jens_kolli_temp_TRANSACTION;1'
    Parameters = <>
    Left = 464
    Top = 16
  end
  object ADOStoredProc_from_temp_Tanbar_jens_kolli_to_Tanbar_jens_kolli: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_temp_Tanbar_jens_kolli_to_Tanbar_jens_kolli_TRANSACTION;1'
    Parameters = <>
    Left = 456
    Top = 128
  end
  object ADOStoredProc_from_Tanbar_jens_kolli_to_temp_Tanbar_jens_kolli: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_Tanbar_jens_kolli_to_temp_Tanbar_jens_kolli_TRANSACTION;1'
    Parameters = <>
    Left = 456
    Top = 72
  end
  object ADOQuery_temp_anbare_koli: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tanbar_jens_kolli_temp')
    Left = 456
    Top = 200
  end
  object ADOStoredProc_delete_from_temp_daste_check: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'delete_from_temp_daste_check_TRANSACTION;1'
    Parameters = <>
    Left = 112
    Top = 264
  end
  object ADOStoredProc_from_daste_check_to_temp_daste_check: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_daste_check_to_temp_daste_check_TRANSACTION;1'
    Parameters = <>
    Left = 112
    Top = 328
  end
  object ADOStoredProc_from_temp_daste_check_to_daste_check: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_daste_check_temp_to_daste_check_TRANSACTION;1'
    Parameters = <>
    Left = 112
    Top = 384
  end
  object ADOQuery_temp_daste_check: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_daste_check_temp')
    Left = 88
    Top = 448
    object ADOQuery_temp_daste_checkbank_shobe_sh_hesab: TWideStringField
      FieldName = 'bank_shobe_sh_hesab'
      Size = 70
    end
    object ADOQuery_temp_daste_checkdown: TWideStringField
      FieldName = 'down'
      Size = 15
    end
    object ADOQuery_temp_daste_checkup: TWideStringField
      FieldName = 'up'
      Size = 15
    end
    object ADOQuery_temp_daste_checktedad_barg: TFloatField
      FieldName = 'tedad_barg'
    end
    object ADOQuery_temp_daste_checkbarg_mande: TFloatField
      FieldName = 'barg_mande'
    end
    object ADOQuery_temp_daste_checkbarg_keshide: TFloatField
      FieldName = 'barg_keshide'
    end
    object ADOQuery_temp_daste_checkid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object ADOStoredProc_delete_from_gozaresh_vorod_va_khoroje_anbar_backu: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'delete_from_gozaresh_vorod_va_khoroje_anbar_backup_TRANSACTION;1'
    Parameters = <>
    Left = 472
    Top = 280
  end
  object ADOStoredProc_from_gozaresh_vorod_va_khoroje_anbar_to_gozaresh_: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 
      'from_gozaresh_vorod_va_khoroje_anbar_to_gozaresh_vorod_va_khoroj' +
      'e_anbar_backup_TRANSACTION;1'
    Parameters = <>
    Left = 480
    Top = 336
  end
  object ADOStoredProc_from_gozaresh_vorod_va_khoroje_anbar_backup_to_go: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 
      'from_gozaresh_vorod_va_khoroje_anbar_backup_to_gozaresh_vorod_va' +
      '_khoroje_anbar_TRANSACTION;1'
    Parameters = <>
    Left = 472
    Top = 392
  end
  object ADOQuery_gozaresh_vorod_va_khoroje_anbar_backup: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_gozaresh_vorod_va_khoroje_anbar_backup')
    Left = 464
    Top = 440
  end
  object ADOQuery_temp_bank: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_bank_temp')
    Left = 720
    Top = 208
  end
  object ADOQuery_temp_sh_hesab_banki: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_shomare_hesabe_banki_temp')
    Left = 704
    Top = 600
  end
  object ADOQuery_temp_check_kharid: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_temp_pardakht_check_kharid')
    Left = 944
    Top = 192
  end
  object ADOQuery_temp_check_forosh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_temp_pardakht_check_forosh')
    Left = 920
    Top = 448
  end
  object ADOStoredProc_delete_from_temp_bank: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'delete_from_temp_bank_TRANSACTION;1'
    Parameters = <>
    Left = 728
    Top = 40
  end
  object ADOStoredProc_from_temp_bank_to_bank: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_temp_bank_to_bank_TRANSACTION;1'
    Parameters = <>
    Left = 720
    Top = 152
  end
  object ADOStoredProc_from_bank_to_temp_bank: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_bank_to_temp_bank_TRANSACTION;1'
    Parameters = <>
    Left = 720
    Top = 96
  end
  object ADOStoredProc_delete_from_temp_check_kharid: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'delete_from_temp_check_kharid_TRANSACTION;1'
    Parameters = <>
    Left = 936
    Top = 32
  end
  object ADOStoredProc_from_temp_check_kharid_to_check_kharid: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_temp_check_kharid_to_check_kharid_TRANSACTION;1'
    Parameters = <>
    Left = 928
    Top = 144
  end
  object ADOStoredProc_from_check_kharid_to_temp_check_kharid: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_check_kharid_to_temp_check_kharid_TRANSACTION;1'
    Parameters = <>
    Left = 928
    Top = 88
  end
  object ADOStoredProc_delete_from_temp_sh_banki: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'delete_from_temp_sh_banki_TRANSACTION;1'
    Parameters = <>
    Left = 704
    Top = 424
  end
  object ADOStoredProc_from_temp_sh_banki_to_sh_banki: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_temp_sh_banki_to_sh_banki_TRANSACTION;1'
    Parameters = <>
    Left = 696
    Top = 544
  end
  object ADOStoredProc_from_sh_banki_to_temp_sh_banki: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_sh_banki_to_temp_sh_banki_TRANSACTION;1'
    Parameters = <>
    Left = 696
    Top = 488
  end
  object ADOStoredProc_delete_from_temp_check_forosh: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'delete_from_temp_check_forosh_TRANSACTION;1'
    Parameters = <>
    Left = 920
    Top = 280
  end
  object ADOStoredProc_from_temp_check_forosh_to_check_forosh: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_temp_check_forosh_to_check_forosh_TRANSACTION;1'
    Parameters = <>
    Left = 912
    Top = 392
  end
  object ADOStoredProc_from_check_forosh_to_temp_check_forosh: TADOStoredProc
    Connection = frm_main.ADOConnection1
    ProcedureName = 'from_check_forosh_to_temp_check_forosh_TRANSACTION;1'
    Parameters = <>
    Left = 912
    Top = 336
  end
end
