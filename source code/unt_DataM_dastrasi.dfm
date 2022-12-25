object DataM_dastrasi: TDataM_dastrasi
  OldCreateOrder = False
  Left = 195
  Top = 171
  Height = 150
  Width = 215
  object ADOQ_gozinehaye_dastrasi: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_gozineye_dastresi')
    Left = 72
    object ADOQ_gozinehaye_dastrasidastrasi: TWideStringField
      FieldName = 'dastrasi'
      Size = 50
    end
    object ADOQ_gozinehaye_dastrasiid: TBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
  end
  object ADOQ_dastrasi: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_dastresi')
    Left = 64
    Top = 64
    object ADOQ_dastrasikarbar: TWideStringField
      FieldName = 'karbar'
      Size = 50
    end
    object ADOQ_dastrasidastresi: TWideStringField
      FieldName = 'dastresi'
      Size = 50
    end
    object ADOQ_dastrasipermit: TBooleanField
      FieldName = 'permit'
    end
  end
end
