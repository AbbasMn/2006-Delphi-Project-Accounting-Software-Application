unit unt_DataM_joziate_taraz;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataM_joziate_taraz = class(TDataModule)
    ADOQ_joziate_sandogha: TADOQuery;
    ADOQ_joziate_bank: TADOQuery;
    ADOQ_joziate_hazineha: TADOQuery;
    ADOQ_joziate_sandoghasandog: TWideStringField;
    ADOQ_joziate_sandoghamablag: TFloatField;
    ADOQ_joziate_bankbank: TWideStringField;
    ADOQ_joziate_bankmojodi: TFloatField;
    ADOQ_joziate_hazinehahazine: TWideStringField;
    ADOQ_joziate_hazinehamablag: TFloatField;
    ADOQ_joziate_makan: TADOQuery;
    ADOQ_joziate_makanmakan: TWideStringField;
    ADOQ_joziate_makanarzesh: TFloatField;
    ADOQ_ajnase_vorodi_be_eftetahie: TADOQuery;
    ADOQ_ajnase_vorodi_be_eftetahiecalaname: TWideStringField;
    ADOQ_ajnase_vorodi_be_eftetahietedadanbar: TFloatField;
    ADOQ_ajnase_vorodi_be_eftetahiegeymatkharid: TFloatField;
    ADOQ_jame_arzeshe_vorodi_be_etetahie: TADOQuery;
    ADOQ_jame_arzeshe_vorodi_be_etetahiearzeshe_kol: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataM_joziate_taraz: TDataM_joziate_taraz;

implementation

uses unt_main;

{$R *.dfm}

end.
