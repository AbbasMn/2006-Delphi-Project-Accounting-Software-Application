unit unt_Dm_zayeat_marjoei;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDm_zayeat_marjoei = class(TDataModule)
    ADOQ_marjoei: TADOQuery;
    ADOQ_anbarhaye_havie_jens: TADOQuery;
    ADOQ_anbarhaye_havie_jensanbarname: TWideStringField;
    ADOQ_zayeat: TADOQuery;
    ADOQ_zayeatcalaname: TWideStringField;
    ADOQ_zayeattedadanbar: TFloatField;
    ADOQ_zayeatanbarname: TWideStringField;
    ADOQ_zayeatgeymatkharid: TFloatField;
    ADOQ_zayeatcalacod: TFloatField;
    ADOQ_zayeatid: TBCDField;
    ADOQ_zayeattedad_koli: TFloatField;
    ADOQ_zayeatvahed_koli: TWideStringField;
    ADOQ_zayeatgeymat_koli: TFloatField;
    ADOQ_zayeattedad_jozi_da_koli: TFloatField;
    ADOQ_zayeatvahed_jozi: TWideStringField;
    ADOQ_zayeatbarcod: TWideStringField;
    ADOQ_zayeatshakhs_sherkat: TWideStringField;
    ADOQ_zayeatcode_sherkati: TWideStringField;
    ADOQ_zayeatsh_kharid_zayeat: TFloatField;
    ADOQ_zayeatgeymat_kol: TFloatField;
    ADOQ_zayeatid_dar_anbare_koli: TFloatField;
    ADOQ_marjoeicalaname: TWideStringField;
    ADOQ_marjoeitedadanbar: TFloatField;
    ADOQ_marjoeianbarname: TWideStringField;
    ADOQ_marjoeigeymatkharid: TFloatField;
    ADOQ_marjoeicalacod: TFloatField;
    ADOQ_marjoeiid: TBCDField;
    ADOQ_marjoeitedad_koli: TFloatField;
    ADOQ_marjoeivahed_koli: TWideStringField;
    ADOQ_marjoeigeymat_koli: TFloatField;
    ADOQ_marjoeitedad_jozi_da_koli: TFloatField;
    ADOQ_marjoeivahed_jozi: TWideStringField;
    ADOQ_marjoeibarcod: TWideStringField;
    ADOQ_marjoeishakhs_sherkat: TWideStringField;
    ADOQ_marjoeicode_sherkati: TWideStringField;
    ADOQ_marjoeish_kharid_marjoei: TFloatField;
    ADOQ_marjoeigeymat_kol: TFloatField;
    ADOQ_marjoeiid_dar_anbare_koli: TFloatField;
    ADOQ_jame_arzeshe_marjoei: TADOQuery;
    ADOQ_jame_arzeshe_marjoeikol_: TFloatField;
    procedure ADOQ_anbarhaye_havie_jensAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm_zayeat_marjoei: TDm_zayeat_marjoei;

implementation

uses unt_main, unt_anbarhaye_havie_jens, Untdmlistha;

{$R *.dfm}

procedure TDm_zayeat_marjoei.ADOQ_anbarhaye_havie_jensAfterScroll(DataSet: TDataSet);
begin
  if (frm_anbarhaye_havie_jens<>nil)and(frm_anbarhaye_havie_jens.Showing) then
    begin
      Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
      QuotedStr(ADOQ_anbarhaye_havie_jensanbarname.AsString)+
      ' and calaname='+QuotedStr(frm_anbarhaye_havie_jens.cala_name)+
      ' and shakhs_sherkat='+QuotedStr(frm_anbarhaye_havie_jens.shakhs_sherkat)+
      ' and code_sherkati='+QuotedStr(frm_anbarhaye_havie_jens.code_sherkati)+
      ' and barcod='+QuotedStr(frm_anbarhaye_havie_jens.barcod)+
      ' and geymatkharid='+FloatToStr(frm_anbarhaye_havie_jens.geymat_kharid)+

      ' and tedad_jozi_da_koli='+Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+
      ' and vahed_jozi='+QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+
      ' and vahed_koli='+QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+
            
      'order by calaname,calacod';
      Dmlistha.ADOlistanbarforosh.Open;
    end;
end;

end.
