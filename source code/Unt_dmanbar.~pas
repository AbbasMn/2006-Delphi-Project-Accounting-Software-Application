unit Unt_dmanbar;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDmanbar = class(TDataModule)
    ADOanbarname: TADOQuery;
    ADocalaforedit: TADOQuery;
    ADO_akharin_code_cala: TADOQuery;
    ADOanbarnamename: TWideStringField;
    ADOeditgeymat: TADOQuery;
    ADOnewanbar: TADOQuery;
    ADOnewanbarname: TWideStringField;
    ADOnewanbaradress: TWideStringField;
    ADOnewanbarmasool: TWideStringField;
    ADOnewanbartelephon: TWideStringField;
    ADOinserttoanbar: TADOQuery;
    ADO_akharin_code_calaakharin_code_cala: TFloatField;
    ADOQ_gozaresh_anbar: TADOQuery;
    ADOeditgeymatcalaname: TWideStringField;
    ADOeditgeymattedadanbar: TFloatField;
    ADOeditgeymatanbarname: TWideStringField;
    ADOeditgeymatgeymatkharid: TFloatField;
    ADOeditgeymatgeymatforosh: TFloatField;
    ADOeditgeymatmolahezatgeymat: TWideStringField;
    ADOeditgeymatcalacod: TFloatField;
    ADOeditgeymattarikhedit: TWideStringField;
    ADOeditgeymatmolahezatforosh: TWideStringField;
    ADOeditgeymatid: TBCDField;
    ADOeditgeymattedad_koli: TFloatField;
    ADOeditgeymatvahed_koli: TWideStringField;
    ADOeditgeymatgeymat_koli: TFloatField;
    ADOeditgeymattedad_jozi_da_koli: TFloatField;
    ADOeditgeymatvahed_jozi: TWideStringField;
    ADOeditgeymatgeymat_forosh_koli: TFloatField;
    ADOeditgeymatbarcod: TWideStringField;
    ADOeditgeymatshakhs_sherkat: TWideStringField;
    ADOeditgeymatcode_sherkati: TWideStringField;
    ADOQ_gozaresh_anbarjens: TWideStringField;
    ADOQ_gozaresh_anbartedad: TFloatField;
    ADOQ_gozaresh_anbarcalacod: TFloatField;
    ADOQ_gozaresh_anbarid: TBCDField;
    ADOQ_gozaresh_anbarvahed_koli: TWideStringField;
    ADOQ_gozaresh_anbarvahed_jozei: TWideStringField;
    ADOQ_gozaresh_anbartedad_koli: TFloatField;
    ADOQ_gozaresh_anbartedad_jozi_dar_koli: TFloatField;
    ADOQ_gozaresh_anbarsh_factor: TFloatField;
    ADOQ_gozaresh_anbartedad_kol: TFloatField;
    ADOQ_gozaresh_anbartozih: TWideStringField;
    ADOQ_gozaresh_anbartarikh: TWideStringField;
    ADOQ_gozaresh_anbarbarcod: TWideStringField;
    ADOQ_gozaresh_anbarcode_sherkati: TWideStringField;
    ADOQ_gozaresh_anbaranbarname: TWideStringField;
    ADOQ_gozaresh_anbartime_: TWideStringField;
    ADOQ_gozaresh_anbartype_: TWideStringField;
    ADOinserttoanbarcalaname: TWideStringField;
    ADOinserttoanbartedadanbar: TFloatField;
    ADOinserttoanbaranbarname: TWideStringField;
    ADOinserttoanbargeymatkharid: TFloatField;
    ADOinserttoanbargeymatforosh: TFloatField;
    ADOinserttoanbarmolahezatgeymat: TWideStringField;
    ADOinserttoanbarcalacod: TFloatField;
    ADOinserttoanbartarikhedit: TWideStringField;
    ADOinserttoanbarmolahezatforosh: TWideStringField;
    ADOinserttoanbarid: TBCDField;
    ADOinserttoanbartedad_koli: TFloatField;
    ADOinserttoanbarvahed_koli: TWideStringField;
    ADOinserttoanbargeymat_koli: TFloatField;
    ADOinserttoanbartedad_jozi_da_koli: TFloatField;
    ADOinserttoanbarvahed_jozi: TWideStringField;
    ADOinserttoanbargeymat_forosh_koli: TFloatField;
    ADOinserttoanbarbarcod: TWideStringField;
    ADOinserttoanbarshakhs_sherkat: TWideStringField;
    ADOinserttoanbarcode_sherkati: TWideStringField;
    ADocalaforeditcalaname: TWideStringField;
    ADocalaforedittedadanbar: TFloatField;
    ADocalaforeditanbarname: TWideStringField;
    ADocalaforeditgeymatkharid: TFloatField;
    ADocalaforeditgeymatforosh: TFloatField;
    ADocalaforeditmolahezatgeymat: TWideStringField;
    ADocalaforeditcalacod: TFloatField;
    ADocalaforedittarikhedit: TWideStringField;
    ADocalaforeditmolahezatforosh: TWideStringField;
    ADocalaforeditid: TBCDField;
    ADocalaforedittedad_koli: TFloatField;
    ADocalaforeditvahed_koli: TWideStringField;
    ADocalaforeditgeymat_koli: TFloatField;
    ADocalaforedittedad_jozi_da_koli: TFloatField;
    ADocalaforeditvahed_jozi: TWideStringField;
    ADocalaforeditgeymat_forosh_koli: TFloatField;
    ADocalaforeditbarcod: TWideStringField;
    ADocalaforeditshakhs_sherkat: TWideStringField;
    ADocalaforeditcode_sherkati: TWideStringField;
    ADOQ_gozaresh_anbar_temp: TADOQuery;
    ADOQ_gozaresh_anbar_tempjens: TWideStringField;
    ADOQ_gozaresh_anbar_temptedad: TFloatField;
    ADOQ_gozaresh_anbar_tempcalacod: TFloatField;
    ADOQ_gozaresh_anbar_tempid: TBCDField;
    ADOQ_gozaresh_anbar_tempvahed_koli: TWideStringField;
    ADOQ_gozaresh_anbar_tempvahed_jozei: TWideStringField;
    ADOQ_gozaresh_anbar_temptedad_koli: TFloatField;
    ADOQ_gozaresh_anbar_temptedad_jozi_dar_koli: TFloatField;
    ADOQ_gozaresh_anbar_tempsh_factor: TFloatField;
    ADOQ_gozaresh_anbar_temptedad_kol: TFloatField;
    ADOQ_gozaresh_anbar_temptozih: TWideStringField;
    ADOQ_gozaresh_anbar_temptarikh: TWideStringField;
    ADOQ_gozaresh_anbar_tempbarcod: TWideStringField;
    ADOQ_gozaresh_anbar_tempcode_sherkati: TWideStringField;
    ADOQ_gozaresh_anbar_tempanbarname: TWideStringField;
    ADOQ_gozaresh_anbar_temptime_: TWideStringField;
    ADOQ_gozaresh_anbar_temptype_: TWideStringField;
    ADOeditgeymatsh_kharid_zayeat: TFloatField;
    ADOeditgeymatgeymatforosh_koli: TFloatField;
    procedure ADocalaforeditAfterScroll(DataSet: TDataSet);
    procedure ADOeditgeymatAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dmanbar: TDmanbar;

implementation

uses Unt_edit_kharid_jens, Unteditgeymatjenspas, Untdmanbarexit,
  Untdmlistha, Untjens_kharidar, unt_vrode_geymate_jadid, unt_datamodule1,
  unt_vrode_geymate_koli_jadid;

{$R *.dfm}



procedure TDmanbar.ADocalaforeditAfterScroll(DataSet: TDataSet);
begin
 { if Assigned(Frm_edit_kharid_jens) then
  begin
       Frm_edit_kharid_jens.Ljensname.Caption:=ADocalaforeditcalaname.AsString;
       Frm_edit_kharid_jens.Lcodjens.Caption:=ADocalaforeditcalacod.AsString;
  end;}
 
end;

procedure TDmanbar.ADOeditgeymatAfterScroll(DataSet: TDataSet);
begin
  if (frm_editgeymatjens<>nil)and(frm_editgeymatjens.Showing) then
  begin

      frm_vrode_geymate_jadid.Ljensname.Caption:=Dmanbar.ADOeditgeymat.Fields[0].AsString;
      frm_vrode_geymate_jadid.Lgeymatghabli.Caption:=Dmanbar.ADOeditgeymat.Fields[4].AsString;

      frm_vrode_geymate_jadid.Lcodjens.Caption:=Dmanbar.ADOeditgeymat.Fields[6].AsString;

      frm_vrode_geymate_jadid.L_name_sherkat.Caption:=Dmanbar.ADOeditgeymatshakhs_sherkat.AsString;

      frm_vrode_geymate_jadid.L_kharid_jens.Caption:=Dmanbar.ADOeditgeymatgeymatkharid.AsString;

      frm_vrode_geymate_jadid.pmolaforforosh.Text:='';
      frm_vrode_geymate_jadid.Egeymatjadid.Text:='';

      /////////////////

      frm_vrode_geymate_koli_jadid.Ljensname.Caption:=Dmanbar.ADOeditgeymat.Fields[0].AsString;
      frm_vrode_geymate_koli_jadid.Lgeymatghabli.Caption:=Dmanbar.ADOeditgeymatgeymatforosh_koli.AsString;

      frm_vrode_geymate_koli_jadid.Lcodjens.Caption:=Dmanbar.ADOeditgeymat.Fields[6].AsString;

      frm_vrode_geymate_koli_jadid.L_name_sherkat.Caption:=Dmanbar.ADOeditgeymatshakhs_sherkat.AsString;

      frm_vrode_geymate_koli_jadid.L_kharid_jens.Caption:=Dmanbar.ADOeditgeymatgeymatkharid.AsString;

      frm_vrode_geymate_koli_jadid.pmolaforforosh.Text:='';
      frm_vrode_geymate_koli_jadid.Egeymatjadid.Text:='';
  end;
end;

end.
