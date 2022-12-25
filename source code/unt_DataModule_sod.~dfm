object DataModule_sod: TDataModule_sod
  OldCreateOrder = False
  Left = 406
  Top = 408
  Height = 213
  Width = 401
  object ADOQuery_sod_har_jens: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  jens,geymate_kharid,geymat_vahed,calacod,'
      'sum(tedad_kol*(geymat_vahed-geymate_kharid)) as sode_forosh,'
      '          sum(tedad_kol) as tedde_forosh'
      ''
      'from forosh_jens'
      ''
      'group by  jens,calacod,geymate_kharid,geymat_vahed'
      ''
      '')
    Left = 56
    Top = 8
    object ADOQuery_sod_har_jensjens: TWideStringField
      FieldName = 'jens'
      Size = 40
    end
    object ADOQuery_sod_har_jensgeymate_kharid: TFloatField
      FieldName = 'geymate_kharid'
    end
    object ADOQuery_sod_har_jensgeymat_vahed: TFloatField
      FieldName = 'geymat_vahed'
    end
    object ADOQuery_sod_har_jenscalacod: TFloatField
      FieldName = 'calacod'
    end
    object ADOQuery_sod_har_jenssode_forosh: TFloatField
      FieldName = 'sode_forosh'
      ReadOnly = True
    end
    object ADOQuery_sod_har_jenstedde_forosh: TFloatField
      FieldName = 'tedde_forosh'
      ReadOnly = True
    end
  end
  object ADOQuery_sode_kol: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  sum(tedad_kol*(geymat_vahed-geymate_kharid)) as sode_kol'
      ''
      ''
      'from forosh_jens'
      ''
      ''
      ''
      '')
    Left = 240
    Top = 16
    object ADOQuery_sode_kolsode_kol: TFloatField
      FieldName = 'sode_kol'
      ReadOnly = True
    end
  end
  object ADOQuery_arzesh_ajnase_anbarha: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  sum (tedadanbar*geymatkharid) as arzeshe_kol'
      ''
      'from Tanbar_jens_kolli'
      ''
      ''
      ''
      '')
    Left = 72
    Top = 80
    object ADOQuery_arzesh_ajnase_anbarhaarzeshe_kol: TFloatField
      FieldName = 'arzeshe_kol'
      ReadOnly = True
    end
  end
  object ADOQuery_arzesh_ajnase_anbar_zayeat: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  sum (tedadanbar*geymatkharid) as arzeshe_kol'
      ''
      'from Tanbar_jens_kolli'
      ''
      ''
      ''
      '')
    Left = 272
    Top = 72
    object ADOQuery_arzesh_ajnase_anbar_zayeatarzeshe_kol: TFloatField
      FieldName = 'arzeshe_kol'
      ReadOnly = True
    end
  end
  object ADOQuery_arzesh_ajnase_anbare_majazi: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  sum (tedadanbar*geymatkharid) as arzeshe_kol'
      ''
      'from t_anbar_majazi'
      ''
      ''
      ''
      '')
    Left = 208
    Top = 128
    object ADOQuery_arzesh_ajnase_anbare_majaziarzeshe_kol: TFloatField
      FieldName = 'arzeshe_kol'
      ReadOnly = True
    end
  end
end
