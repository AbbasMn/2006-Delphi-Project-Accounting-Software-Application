unit Untdmanbarexit;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataManbarexit = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQnameanbar: TADOQuery;
    ADOQnameanbarname: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataManbarexit: TDataManbarexit;

implementation

{$R *.dfm}

end.
