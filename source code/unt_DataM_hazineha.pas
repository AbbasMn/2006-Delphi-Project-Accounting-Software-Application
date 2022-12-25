unit unt_DataM_hazineha;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataM_hazineha = class(TDataModule)
    ADOQ_onvane_hazineha1: TADOQuery;
    ADOQ_onvane_hazineha2: TADOQuery;
    ADOQ_onvane_hazineha1id: TBCDField;
    ADOQ_onvane_hazineha1onvane_hazine: TWideStringField;
    ADOQ_onvane_hazineha2id: TBCDField;
    ADOQ_onvane_hazineha2onvane_hazine: TWideStringField;
    ADOQ_jame_kole_hazineha: TADOQuery;
    ADOQ_show_hame_hazine_ha: TADOQuery;
    ADOQ_jame_noe_hazine: TADOQuery;
    ADOQ_jame_kole_hazineha2: TADOQuery;
    ADOQuery1: TADOQuery;
    ADOQuery1tedadanbar: TFloatField;
    ADOQuery1sandog: TWideStringField;
    ADOQuery1geymatkharid: TFloatField;
    ADOQuery1geymatforosh: TFloatField;
    ADOQuery1time_: TWideStringField;
    ADOQuery1calacod: TFloatField;
    ADOQuery1tarikhedit: TWideStringField;
    ADOQuery1molahezatforosh: TWideStringField;
    ADOQuery1id: TBCDField;
    ADOQuery1tedad_koli: TFloatField;
    ADOQuery1vahed_koli: TWideStringField;
    ADOQuery1geymat_koli: TFloatField;
    ADOQuery1tedad_jozi_da_koli: TFloatField;
    ADOQuery1vahed_jozi: TWideStringField;
    ADOQuery1geymat_forosh_koli: TFloatField;
    ADOQuery1shakhs_sherkat: TWideStringField;
    ADOQuery1sh_kharid_zayeat: TFloatField;
    ADOQuery1geymatforosh_koli: TFloatField;
    ADOQuery1calaname: TWideStringField;
    ADOQuery1code_sherkati: TWideStringField;
    ADOQuery1barcod: TMemoField;
    ADOQ_jame_noe_hazinecalaname: TWideStringField;
    ADOQ_jame_noe_hazinekol: TFloatField;
    ADOQ_jame_kole_hazineha2kole_hazineha: TFloatField;
    ADOQ_jame_kole_hazinehakole_hazineha: TFloatField;
    ADOQ_show_hame_hazine_hatedadanbar: TFloatField;
    ADOQ_show_hame_hazine_hasandog: TWideStringField;
    ADOQ_show_hame_hazine_hageymatkharid: TFloatField;
    ADOQ_show_hame_hazine_hageymatforosh: TFloatField;
    ADOQ_show_hame_hazine_hatime_: TWideStringField;
    ADOQ_show_hame_hazine_hacalacod: TFloatField;
    ADOQ_show_hame_hazine_hatarikhedit: TWideStringField;
    ADOQ_show_hame_hazine_hamolahezatforosh: TWideStringField;
    ADOQ_show_hame_hazine_haid: TBCDField;
    ADOQ_show_hame_hazine_hatedad_koli: TFloatField;
    ADOQ_show_hame_hazine_havahed_koli: TWideStringField;
    ADOQ_show_hame_hazine_hageymat_koli: TFloatField;
    ADOQ_show_hame_hazine_hatedad_jozi_da_koli: TFloatField;
    ADOQ_show_hame_hazine_havahed_jozi: TWideStringField;
    ADOQ_show_hame_hazine_hageymat_forosh_koli: TFloatField;
    ADOQ_show_hame_hazine_hashakhs_sherkat: TWideStringField;
    ADOQ_show_hame_hazine_hash_kharid_zayeat: TFloatField;
    ADOQ_show_hame_hazine_hageymatforosh_koli: TFloatField;
    ADOQ_show_hame_hazine_hacalaname: TWideStringField;
    ADOQ_show_hame_hazine_hacode_sherkati: TWideStringField;
    ADOQ_show_hame_hazine_habarcod: TMemoField;
    procedure ADOQ_onvane_hazineha1AfterScroll(DataSet: TDataSet);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataM_hazineha: TDataM_hazineha;

implementation

uses unt_main, unt_show_hazineha, unt_sabte_hazine,
  unt_show_hazine_anjirestan;

{$R *.dfm}

procedure TDataM_hazineha.ADOQ_onvane_hazineha1AfterScroll(
  DataSet: TDataSet);
begin
begin
  if (frm_show_hazineha<>nil)and(frm_show_hazineha.Showing) then
    frm_show_hazineha.type_;


  if (frm_sabte_hazine<>nil)and(frm_sabte_hazine.Showing) then
    frm_sabte_hazine.lbl_hazine.Caption:=ADOQ_onvane_hazineha1onvane_hazine.AsString;
end;
end;

procedure TDataM_hazineha.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
  if (frm_show_hazineha<>nil)and(frm_show_hazineha.Showing) then
  begin
    frm_show_hazineha.lbl_geymat.Caption:=ADOQuery1geymatforosh_koli.AsString;
    frm_show_hazineha.Memo1.Text:=ADOQuery1barcod.AsString;

    frm_show_hazineha.lbl_tarikh.Caption:=ADOQuery1tarikhedit.AsString;
    frm_show_hazineha.lbl_vahed.Caption:=ADOQuery1vahed_jozi.AsString;

    frm_show_hazineha.lbl_time.Caption:=ADOQuery1time_.AsString;

    frm_show_hazineha.lbl_sandog.Caption:=ADOQuery1sandog.AsString;
  end;


  if (frm_show_hazine_anjirestan<>nil)and(frm_show_hazine_anjirestan.Showing) then
  begin
    frm_show_hazine_anjirestan.lbl_geymat.Caption:=ADOQuery1geymatforosh_koli.AsString;
    frm_show_hazine_anjirestan.Memo1.Text:=ADOQuery1barcod.AsString;

    frm_show_hazine_anjirestan.lbl_tarikh.Caption:=ADOQuery1tarikhedit.AsString;
    frm_show_hazine_anjirestan.lbl_vahed.Caption:=ADOQuery1vahed_jozi.AsString;

    frm_show_hazine_anjirestan.lbl_time.Caption:=ADOQuery1time_.AsString;

    frm_show_hazine_anjirestan.lbl_sandog.Caption:=ADOQuery1sandog.AsString;
  end;
end;

end.
