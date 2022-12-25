object DataM_joziate_taraz: TDataM_joziate_taraz
  OldCreateOrder = False
  Left = 245
  Top = 235
  Height = 302
  Width = 342
  object ADOQ_joziate_sandogha: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_joziate_sandog'
      '')
    Left = 48
    Top = 8
    object ADOQ_joziate_sandoghasandog: TWideStringField
      FieldName = 'sandog'
      Size = 30
    end
    object ADOQ_joziate_sandoghamablag: TFloatField
      FieldName = 'mablag'
    end
  end
  object ADOQ_joziate_bank: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_joziate_bank')
    Left = 48
    Top = 64
    object ADOQ_joziate_bankbank: TWideStringField
      FieldName = 'bank'
      Size = 100
    end
    object ADOQ_joziate_bankmojodi: TFloatField
      FieldName = 'mojodi'
    end
  end
  object ADOQ_joziate_hazineha: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_joziate_hazine')
    Left = 56
    Top = 128
    object ADOQ_joziate_hazinehahazine: TWideStringField
      FieldName = 'hazine'
      Size = 50
    end
    object ADOQ_joziate_hazinehamablag: TFloatField
      FieldName = 'mablag'
    end
  end
  object ADOQ_joziate_makan: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_joziate_makan')
    Left = 56
    Top = 184
    object ADOQ_joziate_makanmakan: TWideStringField
      FieldName = 'makan'
      Size = 30
    end
    object ADOQ_joziate_makanarzesh: TFloatField
      FieldName = 'arzesh'
    end
  end
  object ADOQ_ajnase_vorodi_be_eftetahie: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_aezeshe_ajnase_vorodi_be_anbare_eftetahie'
      '')
    Left = 208
    Top = 8
    object ADOQ_ajnase_vorodi_be_eftetahiecalaname: TWideStringField
      FieldName = 'calaname'
      Size = 40
    end
    object ADOQ_ajnase_vorodi_be_eftetahietedadanbar: TFloatField
      FieldName = 'tedadanbar'
    end
    object ADOQ_ajnase_vorodi_be_eftetahiegeymatkharid: TFloatField
      FieldName = 'geymatkharid'
    end
  end
  object ADOQ_jame_arzeshe_vorodi_be_etetahie: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(tedadanbar*geymatkharid) as arzeshe_kol'
      'from T_aezeshe_ajnase_vorodi_be_anbare_eftetahie'
      '')
    Left = 216
    Top = 72
    object ADOQ_jame_arzeshe_vorodi_be_etetahiearzeshe_kol: TFloatField
      FieldName = 'arzeshe_kol'
      ReadOnly = True
    end
  end
end
