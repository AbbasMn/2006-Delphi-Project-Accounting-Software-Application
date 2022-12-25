object DataManbarexit: TDataManbarexit
  OldCreateOrder = False
  Left = 192
  Top = 114
  Height = 214
  Width = 247
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
    Left = 24
    Top = 8
  end
  object ADOQnameanbar: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select name from tanbar_names')
    Left = 88
    Top = 8
    object ADOQnameanbarname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
  end
end
