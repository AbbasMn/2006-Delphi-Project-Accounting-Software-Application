unit unt_DataM_dastrasi;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataM_dastrasi = class(TDataModule)
    ADOQ_gozinehaye_dastrasi: TADOQuery;
    ADOQ_dastrasi: TADOQuery;
    ADOQ_gozinehaye_dastrasidastrasi: TWideStringField;
    ADOQ_gozinehaye_dastrasiid: TBCDField;
    ADOQ_dastrasikarbar: TWideStringField;
    ADOQ_dastrasidastresi: TWideStringField;
    ADOQ_dastrasipermit: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataM_dastrasi: TDataM_dastrasi;

implementation

uses unt_main;

{$R *.dfm}

end.
