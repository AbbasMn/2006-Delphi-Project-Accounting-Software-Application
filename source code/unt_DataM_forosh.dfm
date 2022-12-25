object DataM_forosh: TDataM_forosh
  OldCreateOrder = False
  Left = 204
  Top = 184
  Height = 522
  Width = 641
  object ADOQ_jame_bank: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(bedehkar) as bedehkar_kol,sum(bestankar) as bestankar' +
        '_kol'
      ''
      'from t_bank1')
    Left = 205
    Top = 320
    object ADOQ_jame_bankbedehkar_kol: TFloatField
      FieldName = 'bedehkar_kol'
    end
    object ADOQ_jame_bankbestankar_kol: TFloatField
      FieldName = 'bestankar_kol'
    end
  end
  object ADOQ_mande_bank: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(bestankar-bedehkar) as mande_kol'
      ' from t_bank1 ')
    Left = 224
    Top = 168
    object ADOQ_mande_bankmande_kol: TFloatField
      FieldName = 'mande_kol'
    end
  end
  object ADOQ_bank2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_bank1')
    Left = 344
    Top = 144
    object ADOQ_bank2moshakhasat_kol: TWideStringField
      FieldName = 'moshakhasat_kol'
      Size = 100
    end
    object ADOQ_bank2tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 15
    end
    object ADOQ_bank2sh_fish: TFloatField
      FieldName = 'sh_fish'
    end
    object ADOQ_bank2sharh: TWideStringField
      FieldName = 'sharh'
      Size = 61
    end
    object ADOQ_bank2bedehkar: TFloatField
      FieldName = 'bedehkar'
    end
    object ADOQ_bank2bestankar: TFloatField
      FieldName = 'bestankar'
    end
    object ADOQ_bank2mande: TFloatField
      FieldName = 'mande'
    end
    object ADOQ_bank2cod: TBCDField
      FieldName = 'cod'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
  end
end
