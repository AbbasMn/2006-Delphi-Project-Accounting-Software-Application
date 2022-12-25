unit Untdmanbarexit;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDmanbarexite = class(TDataModule)
    ADOanbarname: TADOQuery;
    ADOanbarnamename: TWideStringField;
    ADOanbarcala: TADOQuery;
    ADOQuery_shomare_factor: TADOQuery;
    ADOanbarnameadress: TWideStringField;
    ADOanbarnametelephon: TWideStringField;
    ADOanbarnamemasool: TWideStringField;
    ADOanbarname2: TADOQuery;
    ADOanbarname2name: TWideStringField;
    ADOanbarname2adress: TWideStringField;
    ADOanbarname2telephon: TWideStringField;
    ADOanbarname2masool: TWideStringField;
    ADOQ_vahedhaye_jens: TADOQuery;
    ADOQ_vahedhaye_jenscalaname: TWideStringField;
    ADOQ_vahedhaye_jenscalacod: TFloatField;
    ADOQ_vahedhaye_jensvahed_koli: TWideStringField;
    ADOQ_vahedhaye_jensvahed_jozi: TWideStringField;
    ADOQ_vahedhaye_jenstedad_jozi_da_koli: TFloatField;
    ADOanbarcalacalaname: TWideStringField;
    ADOanbarcalatedadanbar: TFloatField;
    ADOanbarcalaanbarname: TWideStringField;
    ADOanbarcalageymatkharid: TFloatField;
    ADOanbarcalageymatforosh: TFloatField;
    ADOanbarcalamolahezatgeymat: TWideStringField;
    ADOanbarcalacalacod: TFloatField;
    ADOanbarcalatarikhedit: TWideStringField;
    ADOanbarcalamolahezatforosh: TWideStringField;
    ADOanbarcalaid: TBCDField;
    ADOanbarcalatedad_koli: TFloatField;
    ADOanbarcalavahed_koli: TWideStringField;
    ADOanbarcalageymat_koli: TFloatField;
    ADOanbarcalatedad_jozi_da_koli: TFloatField;
    ADOanbarcalavahed_jozi: TWideStringField;
    ADOanbarcalageymat_forosh_koli: TFloatField;
    ADOanbarcalabarcod: TWideStringField;
    ADOanbarcalashakhs_sherkat: TWideStringField;
    ADOanbarcalacode_sherkati: TWideStringField;
    ADOanbarcalash_kharid_zayeat: TFloatField;
    ADOanbarcala2: TADOQuery;
    ADOanbarcala2calaname: TWideStringField;
    ADOanbarcala2tedadanbar: TFloatField;
    ADOanbarcala2anbarname: TWideStringField;
    ADOanbarcala2geymatkharid: TFloatField;
    ADOanbarcala2geymatforosh: TFloatField;
    ADOanbarcala2molahezatgeymat: TWideStringField;
    ADOanbarcala2calacod: TFloatField;
    ADOanbarcala2tarikhedit: TWideStringField;
    ADOanbarcala2molahezatforosh: TWideStringField;
    ADOanbarcala2id: TBCDField;
    ADOanbarcala2tedad_koli: TFloatField;
    ADOanbarcala2vahed_koli: TWideStringField;
    ADOanbarcala2geymat_koli: TFloatField;
    ADOanbarcala2tedad_jozi_da_koli: TFloatField;
    ADOanbarcala2vahed_jozi: TWideStringField;
    ADOanbarcala2geymat_forosh_koli: TFloatField;
    ADOanbarcala2barcod: TWideStringField;
    ADOanbarcala2shakhs_sherkat: TWideStringField;
    ADOanbarcala2code_sherkati: TWideStringField;
    ADOanbarcala2sh_kharid_zayeat: TFloatField;
    ADOanbarcalageymatforosh_koli: TFloatField;
    ADOanbarcala2geymatforosh_koli: TFloatField;
    procedure ADOanbarnameAfterScroll(DataSet: TDataSet);
    procedure ADOanbarname2AfterScroll(DataSet: TDataSet);
    procedure ADOQ_vahedhaye_jensAfterScroll(DataSet: TDataSet);
    procedure ADOanbarcalaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dmanbarexite: TDmanbarexite;

implementation

uses Unteditgeymatjenspas, Untviewanbar, Unt_jadval_jensin_anbar,
  Untdmlistha, Unt_moshakhasat_anbarha, Unt_dmanbar,
  unt_eslah_vahed_jens_anbar, unt_jabejaei_first, unt_jabejaei_second,
  unt_gozaresh_az_vorodi_khoroji_anbar, unt_anbarhaye_havie_jens,
  unt_forosh_fishi, unt_main;

{$R *.dfm}




procedure TDmanbarexite.ADOanbarnameAfterScroll(DataSet: TDataSet);
begin

if (frm_gozaresh_az_vorodi_khoroji_anbar<>nil)and(frm_gozaresh_az_vorodi_khoroji_anbar.Showing) then
begin
  frm_gozaresh_az_vorodi_khoroji_anbar.type_;
end;

if (frm_viewanbar <> nil)and(frm_viewanbar.Showing) then
    begin
      Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+QuotedStr(ADOanbarnamename.AsString)+'order by calacod';
      Dmanbarexite.ADOanbarcala.Open;

    end;
  if (Frm_jadval_jensin_anbar<>nil)and(Frm_jadval_jensin_anbar.Showing) then
    begin
      Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+QuotedStr(ADOanbarnamename.AsString)+'order by calacod';
      Dmlistha.ADOlistanbarforosh.Open;
    end;

  if (frm_jabejaei_first<>nil)and(frm_jabejaei_first.Showing) then
    begin
      Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+QuotedStr(ADOanbarnamename.AsString)+'order by calaname,calacod';
      Dmlistha.ADOlistanbarforosh.Open;
    end;
  if (Frm_moshakhasat_anbarha <> nil)and(Frm_moshakhasat_anbarha.Showing) then
    begin
      Frm_moshakhasat_anbarha.lanbarname.Caption:=dmanbarexite.ADOanbarnamename.AsString;
      Frm_moshakhasat_anbarha.Etelephon.Text:=dmanbarexite.ADOanbarnametelephon.AsString;
      Frm_moshakhasat_anbarha.Eadress.Text:=dmanbarexite.ADOanbarnameadress.AsString;
      Frm_moshakhasat_anbarha.Emasool.Text:=dmanbarexite.ADOanbarnamemasool.AsString;
      Frm_moshakhasat_anbarha.E_name.Text:=dmanbarexite.ADOanbarnamename.AsString;
    end;
end;

procedure TDmanbarexite.ADOanbarname2AfterScroll(DataSet: TDataSet);
begin
  if (frm_jabejaei_second<>nil)and(frm_jabejaei_second.Showing)then
    begin
      Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+QuotedStr(ADOanbarname2name.AsString)+'order by calacod';
      Dmanbarexite.ADOanbarcala.Open;
    end;
end;

procedure TDmanbarexite.ADOQ_vahedhaye_jensAfterScroll(DataSet: TDataSet);
begin
  if (frm_eslah_vahed_jens_anbar<>nil)and(frm_eslah_vahed_jens_anbar.Showing) then
  begin
    frm_eslah_vahed_jens_anbar.e_v_koli.Text:=Dmanbarexite.ADOQ_vahedhaye_jensvahed_koli.AsString;
    frm_eslah_vahed_jens_anbar.e_v_jozi.Text:=Dmanbarexite.ADOQ_vahedhaye_jensvahed_jozi.AsString;
    frm_eslah_vahed_jens_anbar.L_name.Caption:=Dmanbarexite.ADOQ_vahedhaye_jenscalaname.AsString;
    frm_eslah_vahed_jens_anbar.L_v_k.Caption:=Dmanbarexite.ADOQ_vahedhaye_jensvahed_koli.AsString;
    frm_eslah_vahed_jens_anbar.L_v_j.Caption:=Dmanbarexite.ADOQ_vahedhaye_jensvahed_jozi.AsString;
    frm_eslah_vahed_jens_anbar.l_t_j_dar_k.Caption:=Dmanbarexite.ADOQ_vahedhaye_jenstedad_jozi_da_koli.AsString;
  end;
end;

procedure TDmanbarexite.ADOanbarcalaAfterScroll(DataSet: TDataSet);
begin
 if (frm_forosh_fishi<>nil)and(frm_forosh_fishi.Showing)then
 begin
   frm_forosh_fishi.suiDBGrid2.Hint:='';
   frm_forosh_fishi.suiDBGrid2.Hint:=ADOanbarcalamolahezatforosh.AsString;
   if ADOanbarcalamolahezatgeymat.AsString<>'' then
    frm_forosh_fishi.suiDBGrid2.Hint:=frm_forosh_fishi.suiDBGrid2.Hint+' --- '+ADOanbarcalamolahezatgeymat.AsString+'';

   frm_forosh_fishi.suiDBGrid2.ShowHint:=true;
 end;
end;

end.
