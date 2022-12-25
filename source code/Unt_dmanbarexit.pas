unit Unt_dmanbar;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDmanbar = class(TDataModule)
    ADOanbarname: TADOQuery;
    ADOConanbar: TADOConnection;
    ADOperson: TADOQuery;
    ADOpersonperson: TWideStringField;
    ADOinserttoanbar: TADOQuery;
    ADOinserttoanbarcalaname: TWideStringField;
    ADOinserttoanbartedad: TIntegerField;
    ADOinserttoanbarvorodyear: TWideStringField;
    ADOinserttoanbarvorodmonth: TWideStringField;
    ADOinserttoanbarvoroddate: TWideStringField;
    ADOinserttoanbarmolahezat: TMemoField;
    ADOinserttoanbaranbarname: TWideStringField;
    ADOinserttoanbarperson: TWideStringField;
    ADOinserttoanbarforoshande_shahr: TWideStringField;
    ADOinserttoanbarforoshande_name: TWideStringField;
    ADOanbarnamename: TWideStringField;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dmanbar: TDmanbar;

implementation

{$R *.dfm}



end.
