unit Unt_DataModule_gozaresh_tarkibi;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule_gozaresh_tarkibi = class(TDataModule)
    ADOQuery_khridaran: TADOQuery;
    ADO_fac_roz_show: TADOQuery;
    ADOQuery_yaddasht: TADOQuery;
    ADOQuery_sefaresh: TADOQuery;
    ADOQuery_show_pish_forosh: TADOQuery;
    ADOQuery_mohasebe_geymat: TADOQuery;
    ADOQuery_update_forosh_temp: TADOQuery;
    ADOQuery_sandog: TADOQuery;
    ADOQuery_sandogsandog: TWideStringField;
    ADOQuery_daryaft_be_sandog: TADOQuery;
    ADOQuery_jame_vorod_sandog: TADOQuery;
    ADOQuery_jame_vorod_sandogvorod: TFloatField;
    ADOQuery_kh_sandog: TADOQuery;
    ADOQuery_yaddashtmatn: TMemoField;
    ADOQuery_yaddashtshakhs: TWideStringField;
    ADOQuery_yaddashttarikh_yadavary: TWideStringField;
    ADOQuery_yaddashttarikh_zakhire: TWideStringField;
    ADOQuery_yaddashttype: TWideStringField;
    ADOQuery_yaddashtmozo: TWideStringField;
    ADOQuery_yaddashtanjam: TWideStringField;
    ADOQuery_yaddashtid: TBCDField;
    ADOQuery_khridarankol_: TFloatField;
    ADOQuery_mohasebe_geymatkol_: TFloatField;
    ADOQuery_mohasebe_geymatgalam_: TIntegerField;
    ADOQ_temp_factore_forosh: TADOQuery;
    ADOQuery_sefareshmatn: TMemoField;
    ADOQuery_sefareshtarikh_sefaresh: TWideStringField;
    ADOQuery_sefareshshakhs: TWideStringField;
    ADOQuery_sefareshanjam: TWideStringField;
    ADOQuery_sefareshtarikh_residegi: TWideStringField;
    ADOQuery_sefareshonvan: TWideStringField;
    ADOQuery_sefareshjens: TWideStringField;
    ADOQuery_sefareshtedad: TFloatField;
    ADOQuery_sefareshtype: TWideStringField;
    ADOQuery_sefareshid: TBCDField;
    ADO_fac_roz_showjens: TWideStringField;
    ADO_fac_roz_showgeymat_vahed: TFloatField;
    ADO_fac_roz_showtedad: TFloatField;
    ADO_fac_roz_showgeymat_jens: TFloatField;
    ADO_fac_roz_showcalacod: TFloatField;
    ADO_fac_roz_showid: TBCDField;
    ADO_fac_roz_showvahed_koli: TWideStringField;
    ADO_fac_roz_showvahed_jozei: TWideStringField;
    ADO_fac_roz_showtedad_koli: TFloatField;
    ADO_fac_roz_showtedad_jozi_dar_koli: TFloatField;
    ADO_fac_roz_showgeymat_koli: TFloatField;
    ADO_fac_roz_showsh_factor: TFloatField;
    ADO_fac_roz_showtedad_kol: TFloatField;
    ADO_fac_roz_showshahrforoshande: TWideStringField;
    ADO_fac_roz_showtarikh: TWideStringField;
    ADO_fac_roz_showbarcod: TWideStringField;
    ADO_fac_roz_showgeymate_kharid: TFloatField;
    ADO_fac_roz_showcode_sherkati: TWideStringField;
    ADO_fac_roz_showanbarname: TWideStringField;
    ADOQuery_daryaft_be_sandogmablag: TFloatField;
    ADOQuery_daryaft_be_sandogsandog: TWideStringField;
    ADOQuery_daryaft_be_sandogtarikh: TWideStringField;
    ADOQuery_daryaft_be_sandogtype: TWideStringField;
    ADOQuery_daryaft_be_sandogtozih: TWideStringField;
    ADOQuery_daryaft_be_sandogid: TBCDField;
    ADOQuery_daryaft_be_sandogtime_: TWideStringField;
    ADOQuery_daryaft_be_sandogcod_kharidar: TFloatField;
    ADOQuery_daryaft_be_sandogsh_factor: TFloatField;
    ADOQ_temp_factore_foroshjens: TWideStringField;
    ADOQ_temp_factore_foroshgeymat_vahed: TFloatField;
    ADOQ_temp_factore_foroshtedad: TFloatField;
    ADOQ_temp_factore_foroshgeymat_jens: TFloatField;
    ADOQ_temp_factore_foroshcalacod: TFloatField;
    ADOQ_temp_factore_foroshid: TBCDField;
    ADOQ_temp_factore_foroshvahed_koli: TWideStringField;
    ADOQ_temp_factore_foroshvahed_jozei: TWideStringField;
    ADOQ_temp_factore_foroshtedad_koli: TFloatField;
    ADOQ_temp_factore_foroshtedad_jozi_dar_koli: TFloatField;
    ADOQ_temp_factore_foroshgeymat_koli: TFloatField;
    ADOQ_temp_factore_foroshsh_factor: TFloatField;
    ADOQ_temp_factore_foroshtedad_kol: TFloatField;
    ADOQ_temp_factore_foroshshahrforoshande: TWideStringField;
    ADOQ_temp_factore_foroshtarikh: TWideStringField;
    ADOQ_temp_factore_foroshbarcod: TWideStringField;
    ADOQ_temp_factore_foroshcode_sherkati: TWideStringField;
    ADOQuery_show_pish_foroshjens: TWideStringField;
    ADOQuery_show_pish_foroshgeymat_vahed: TFloatField;
    ADOQuery_show_pish_foroshtedad: TFloatField;
    ADOQuery_show_pish_foroshgeymat_jens: TFloatField;
    ADOQuery_show_pish_foroshcalacod: TFloatField;
    ADOQuery_show_pish_foroshid: TBCDField;
    ADOQuery_show_pish_foroshvahed_koli: TWideStringField;
    ADOQuery_show_pish_foroshvahed_jozei: TWideStringField;
    ADOQuery_show_pish_foroshtedad_koli: TFloatField;
    ADOQuery_show_pish_foroshtedad_jozi_dar_koli: TFloatField;
    ADOQuery_show_pish_foroshgeymat_koli: TFloatField;
    ADOQuery_show_pish_foroshsh_factor: TFloatField;
    ADOQuery_show_pish_foroshtedad_kol: TFloatField;
    ADOQuery_show_pish_foroshshahrforoshande: TWideStringField;
    ADOQuery_show_pish_foroshtarikh: TWideStringField;
    ADOQuery_show_pish_foroshbarcod: TWideStringField;
    ADOQuery_show_pish_foroshgeymate_kharid: TFloatField;
    ADOQuery_show_pish_foroshcode_sherkati: TWideStringField;
    ADOQuery_show_pish_foroshanbarname: TWideStringField;
    ADOQuery_kh_sandogkhoroj: TFloatField;
    ADOQuery_sandog2: TADOQuery;
    WideStringField1: TWideStringField;
    procedure ADOQuery_sefareshAfterScroll(DataSet: TDataSet);
    procedure ADOQuery_yaddashtAfterScroll(DataSet: TDataSet);
    procedure ADOQuery_sandogAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule_gozaresh_tarkibi: TDataModule_gozaresh_tarkibi;

implementation

uses Unt_show_sefaresh, unt_show_yaddasht, unt_gozaresh_az_sandog,
  unt_khoroj_az_sandog, unt_main;

{$R *.dfm}

procedure TDataModule_gozaresh_tarkibi.ADOQuery_sefareshAfterScroll(
  DataSet: TDataSet);
begin
 if (frm_show_sefaresh<>nil)and(frm_show_sefaresh.Showing) then
 begin
    frm_show_sefaresh.type_;
 end;
end;

procedure TDataModule_gozaresh_tarkibi.ADOQuery_yaddashtAfterScroll(
  DataSet: TDataSet);
begin
  if (frm_show_yaddasht<>nil)and(frm_show_yaddasht.Showing) then
  begin
    frm_show_yaddasht.typ_yaddasht;
  end;

end;

procedure TDataModule_gozaresh_tarkibi.ADOQuery_sandogAfterScroll(
  DataSet: TDataSet);
begin
  if (Frm_gozaresh_az_sandog<>nil)and(Frm_gozaresh_az_sandog.Showing) then
  begin
    Frm_gozaresh_az_sandog.Label_mojodi_kol.Caption:=FloatToStr(Frm_gozaresh_az_sandog.mojodi_kol(Frm_gozaresh_az_sandog.DBText1.Caption));
    if Frm_gozaresh_az_sandog.RadioGroup2.ItemIndex=0 then
       Frm_gozaresh_az_sandog.show_sandog_tarikh;
    if Frm_gozaresh_az_sandog.RadioGroup2.ItemIndex=1 then
       Frm_gozaresh_az_sandog.show_sandog_sal;
    if Frm_gozaresh_az_sandog.RadioGroup2.ItemIndex=2 then
       Frm_gozaresh_az_sandog.show_sandog_month;
    If Frm_gozaresh_az_sandog.RadioGroup2.ItemIndex=3 then
       Frm_gozaresh_az_sandog.show_hamesalha;
  end;

end;

end.
