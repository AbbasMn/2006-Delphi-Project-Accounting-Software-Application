object Dmlistha: TDmlistha
  OldCreateOrder = False
  Left = 307
  Top = 161
  Height = 150
  Width = 215
  object ADOlistanbarforosh: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tanbar_jens_kolli'
      ' ')
    Left = 16
    Top = 56
    object ADOlistanbarforoshcalaname: TWideStringField
      FieldName = 'calaname'
      Size = 50
    end
    object ADOlistanbarforoshtedadanbar: TIntegerField
      FieldName = 'tedadanbar'
    end
    object ADOlistanbarforoshanbarname: TWideStringField
      FieldName = 'anbarname'
      Size = 50
    end
    object ADOlistanbarforoshgeymatkharid: TFloatField
      FieldName = 'geymatkharid'
    end
    object ADOlistanbarforoshgeymatforosh: TFloatField
      FieldName = 'geymatforosh'
    end
    object ADOlistanbarforoshmolahezatgeymat: TWideStringField
      FieldName = 'molahezatgeymat'
      Size = 100
    end
    object ADOlistanbarforoshcalacod: TIntegerField
      FieldName = 'calacod'
    end
    object ADOlistanbarforoshtarikhedit: TWideStringField
      FieldName = 'tarikhedit'
    end
    object ADOlistanbarforoshmolahezatforosh: TWideStringField
      FieldName = 'molahezatforosh'
      Size = 220
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=khari' +
      'd_jens.mdb;Mode=Share Deny None;Extended Properties="";Jet OLEDB' +
      ':System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Databas' +
      'e Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking' +
      ' Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bul' +
      'k Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Cr' +
      'eate System Database=False;Jet OLEDB:Encrypt Database=False;Jet ' +
      'OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Witho' +
      'ut Replica Repair=False;Jet OLEDB:SFP=False'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
  end
end
