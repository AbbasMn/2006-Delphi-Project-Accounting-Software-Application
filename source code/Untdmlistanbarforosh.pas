unit Untdmlistanbarforosh;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDmlistha = class(TDataModule)
    ADOlistanbarforosh: TADOQuery;
    ADOConnection1: TADOConnection;
    ADOlistanbarforoshcalaname: TWideStringField;
    ADOlistanbarforoshtedadanbar: TIntegerField;
    ADOlistanbarforoshanbarname: TWideStringField;
    ADOlistanbarforoshgeymatkharid: TFloatField;
    ADOlistanbarforoshgeymatforosh: TFloatField;
    ADOlistanbarforoshmolahezatgeymat: TWideStringField;
    ADOlistanbarforoshcalacod: TIntegerField;
    ADOlistanbarforoshtarikhedit: TWideStringField;
    ADOlistanbarforoshmolahezatforosh: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dmlistha: TDmlistha;

implementation

{$R *.dfm}

end.
