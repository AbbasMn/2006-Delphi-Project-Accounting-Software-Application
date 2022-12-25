unit Untdmlistha;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDmlistha = class(TDataModule)
    ADOlistanbarforosh: TADOQuery;
    adolistforosh: TADOQuery;
    ADOkharidha: TADOQuery;
    ADO_mohasebe_kol_dar_kharid: TADOQuery;
    ADOdistinctcalaname: TADOQuery;
    ADOlogin: TADOQuery;
    ADOQuery_factor_roz: TADOQuery;
    ADOQuery_bank: TADOQuery;
    ADOQuery_bank2: TADOQuery;
    ADOQuery_shomare_hesabe_banki: TADOQuery;
    ADOQuery_tedad_pishkharid: TADOQuery;
    ADOQuery_tedad_pishkharidkol_: TFloatField;
    ADOQuery_tedad_pishkharidtedad: TIntegerField;
    ADOQuery_update_temp_kharid: TADOQuery;
    ADOQuery_anbar_majazi: TADOQuery;
    ADOQuery_vahed: TADOQuery;
    ADOQuery_show_for_eslah: TADOQuery;
    ADOQ_tedad_kharidha_baraye_eslah: TADOQuery;
    ADOQuery_bank2name: TWideStringField;
    ADOQuery_bank2telephon: TWideStringField;
    ADOQuery_bank2fax: TWideStringField;
    ADOQuery_bank2address: TWideStringField;
    ADOdistinctcalanamecalaname: TWideStringField;
    ADOlistcheckha: TADOQuery;
    ADOQuery_factor_rozkol_: TFloatField;
    ADOmohasebe_keraye_kharid: TADOQuery;
    ADOQ_arzesh_tedad_forosh_jens: TADOQuery;
    ADOlistanbarforosh2: TADOQuery;
    ADOQuery_vahedvahed: TWideStringField;
    ADOQuery_shomare_hesabe_banki_temp: TADOQuery;
    ADOQuery_shomare_hesabe_banki2: TADOQuery;
    ADOmohasebe_forosh: TADOQuery;
    ADOmohasebe_foroshkol_: TFloatField;
    ADOQuery_shomare_hesabe_bankibank: TWideStringField;
    ADOQuery_shomare_hesabe_bankishobe: TWideStringField;
    ADOQuery_shomare_hesabe_bankish_hesab: TWideStringField;
    ADOQuery_shomare_hesabe_bankiid: TBCDField;
    ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab: TWideStringField;
    ADOQuery_shomare_hesabe_banki2bank: TWideStringField;
    ADOQuery_shomare_hesabe_banki2shobe: TWideStringField;
    ADOQuery_shomare_hesabe_banki2sh_hesab: TWideStringField;
    ADOQuery_shomare_hesabe_banki2id: TBCDField;
    ADOQuery_shomare_hesabe_banki2bank_shobe_sh_hesab: TWideStringField;
    ADOQuery_shomare_hesabe_banki_tempbank: TWideStringField;
    ADOQuery_shomare_hesabe_banki_tempshobe: TWideStringField;
    ADOQuery_shomare_hesabe_banki_tempsh_hesab: TWideStringField;
    ADOQuery_shomare_hesabe_banki_tempid: TBCDField;
    ADOQuery_shomare_hesabe_banki_tempbank_shobe_sh_hesab: TWideStringField;
    ADOQuery_daste_check: TADOQuery;
    ADOQuery_daste_check_temp: TADOQuery;
    ADOQuery_daste_check2: TADOQuery;
    ADOmohasebe_kharid: TADOQuery;
    ADOmohasebe_kharidkol_: TFloatField;
    ADOQ_tedad_kharidha_baraye_eslahshahrforoshande: TWideStringField;
    ADOQ_tedad_kharidha_baraye_eslahsh_factor: TFloatField;
    adolistforoshjens: TWideStringField;
    adolistforoshgeymat_vahed: TFloatField;
    adolistforoshtedad: TFloatField;
    adolistforoshgeymat_jens: TFloatField;
    adolistforoshcalacod: TFloatField;
    adolistforoshid: TBCDField;
    adolistforoshvahed_koli: TWideStringField;
    adolistforoshvahed_jozei: TWideStringField;
    adolistforoshtedad_koli: TFloatField;
    adolistforoshtedad_jozi_dar_koli: TFloatField;
    adolistforoshgeymat_koli: TFloatField;
    adolistforoshsh_factor: TFloatField;
    adolistforoshtedad_kol: TFloatField;
    adolistforoshshahrforoshande: TWideStringField;
    adolistforoshtarikh: TWideStringField;
    adolistforoshbarcod: TWideStringField;
    adolistforoshgeymate_kharid: TFloatField;
    adolistforoshcode_sherkati: TWideStringField;
    adolistforoshanbarname: TWideStringField;
    ADOQuery_show_for_eslahjens: TWideStringField;
    ADOQuery_show_for_eslahgeymat_vahed: TFloatField;
    ADOQuery_show_for_eslahtedad: TFloatField;
    ADOQuery_show_for_eslahgeymat_jens: TFloatField;
    ADOQuery_show_for_eslahcalacod: TFloatField;
    ADOQuery_show_for_eslahid: TBCDField;
    ADOQuery_show_for_eslahvahed_koli: TWideStringField;
    ADOQuery_show_for_eslahvahed_jozei: TWideStringField;
    ADOQuery_show_for_eslahtedad_koli: TFloatField;
    ADOQuery_show_for_eslahtedad_jozi_dar_koli: TFloatField;
    ADOQuery_show_for_eslahgeymat_koli: TFloatField;
    ADOQuery_show_for_eslahsh_factor: TFloatField;
    ADOQuery_show_for_eslahtedad_kol: TFloatField;
    ADOQuery_show_for_eslahshahrforoshande: TWideStringField;
    ADOQuery_show_for_eslahtarikh: TWideStringField;
    ADOQuery_show_for_eslahbarcod: TWideStringField;
    ADOQuery_show_for_eslahgeymate_kharid: TFloatField;
    ADOQuery_show_for_eslahcode_sherkati: TWideStringField;
    ADOQuery_show_for_eslahanbarname: TWideStringField;
    ADO_mohasebe_kol_dar_kharidkol_: TFloatField;
    ADO_mohasebe_kol_dar_kharidtedade_koli: TFloatField;
    ADO_mohasebe_kol_dar_kharidtedae_kole_jozi: TFloatField;
    ADO_mohasebe_kol_dar_kharidtedede_kol: TFloatField;
    ADOQ_arzesh_tedad_forosh_jenskol_: TFloatField;
    ADOQ_arzesh_tedad_forosh_jenst_v_kol: TFloatField;
    ADOQ_arzesh_tedad_forosh_jenst_v_joz: TFloatField;
    ADOQ_arzesh_tedad_forosh_jenstedad_koll: TFloatField;
    ADOQuery_daste_checkbank_shobe_sh_hesab: TWideStringField;
    ADOQuery_daste_checkdown: TWideStringField;
    ADOQuery_daste_checkup: TWideStringField;
    ADOQuery_daste_checktedad_barg: TFloatField;
    ADOQuery_daste_checkbarg_mande: TFloatField;
    ADOQuery_daste_checkbarg_keshide: TFloatField;
    ADOQuery_daste_checkid: TBCDField;
    ADOQuery_daste_check2bank_shobe_sh_hesab: TWideStringField;
    ADOQuery_daste_check2down: TWideStringField;
    ADOQuery_daste_check2up: TWideStringField;
    ADOQuery_daste_check2tedad_barg: TFloatField;
    ADOQuery_daste_check2barg_mande: TFloatField;
    ADOQuery_daste_check2barg_keshide: TFloatField;
    ADOQuery_daste_check2id: TBCDField;
    ADOQuery_daste_check_tempbank_shobe_sh_hesab: TWideStringField;
    ADOQuery_daste_check_tempdown: TWideStringField;
    ADOQuery_daste_check_tempup: TWideStringField;
    ADOQuery_daste_check_temptedad_barg: TFloatField;
    ADOQuery_daste_check_tempbarg_mande: TFloatField;
    ADOQuery_daste_check_tempbarg_keshide: TFloatField;
    ADOQuery_daste_check_tempid: TBCDField;
    ADOQuery_anbar_majazicalaname: TWideStringField;
    ADOQuery_anbar_majazitedadanbar: TFloatField;
    ADOQuery_anbar_majazianbarname: TWideStringField;
    ADOQuery_anbar_majazigeymatkharid: TFloatField;
    ADOQuery_anbar_majazigeymatforosh: TFloatField;
    ADOQuery_anbar_majazimolahezatgeymat: TWideStringField;
    ADOQuery_anbar_majazicalacod: TFloatField;
    ADOQuery_anbar_majazitarikhedit: TWideStringField;
    ADOQuery_anbar_majazimolahezatforosh: TWideStringField;
    ADOQuery_anbar_majaziid: TBCDField;
    ADOQuery_anbar_majazitedad_koli: TFloatField;
    ADOQuery_anbar_majazivahed_koli: TWideStringField;
    ADOQuery_anbar_majazigeymat_koli: TFloatField;
    ADOQuery_anbar_majazitedad_jozi_da_koli: TFloatField;
    ADOQuery_anbar_majazivahed_jozi: TWideStringField;
    ADOQuery_anbar_majazigeymat_forosh_koli: TFloatField;
    ADOQuery_anbar_majazibarcod: TWideStringField;
    ADOQuery_anbar_majazishakhs_sherkat: TWideStringField;
    ADOQuery_anbar_majazicode_sherkati: TWideStringField;
    ADOQuery_anbar_majazish_factor: TFloatField;
    ADOQuery_anbar_majazitarikh: TWideStringField;
    ADOkharidhajens: TWideStringField;
    ADOkharidhatedad: TFloatField;
    ADOkharidhagheymat: TFloatField;
    ADOkharidhakol: TFloatField;
    ADOkharidhaid: TBCDField;
    ADOkharidhavahed_koli: TWideStringField;
    ADOkharidhavahed_jozei: TWideStringField;
    ADOkharidhatedad_koli: TFloatField;
    ADOkharidhageymat_koli: TFloatField;
    ADOkharidhatedad_jozi_dar_koli: TFloatField;
    ADOkharidhashahrforoshande: TWideStringField;
    ADOkharidhash_factor: TFloatField;
    ADOkharidhatarikh: TWideStringField;
    ADOkharidhacode: TFloatField;
    ADOkharidhateded_jozi: TFloatField;
    ADOkharidhageymat_jadid: TFloatField;
    ADOkharidhakeraye: TFloatField;
    ADOkharidhabarcod: TWideStringField;
    ADOkharidhacode_sherkati: TWideStringField;
    ADOlistanbarforoshcalaname: TWideStringField;
    ADOlistanbarforoshtedadanbar: TFloatField;
    ADOlistanbarforoshanbarname: TWideStringField;
    ADOlistanbarforoshgeymatkharid: TFloatField;
    ADOlistanbarforoshgeymatforosh: TFloatField;
    ADOlistanbarforoshmolahezatgeymat: TWideStringField;
    ADOlistanbarforoshcalacod: TFloatField;
    ADOlistanbarforoshtarikhedit: TWideStringField;
    ADOlistanbarforoshmolahezatforosh: TWideStringField;
    ADOlistanbarforoshid: TBCDField;
    ADOlistanbarforoshtedad_koli: TFloatField;
    ADOlistanbarforoshvahed_koli: TWideStringField;
    ADOlistanbarforoshgeymat_koli: TFloatField;
    ADOlistanbarforoshtedad_jozi_da_koli: TFloatField;
    ADOlistanbarforoshvahed_jozi: TWideStringField;
    ADOlistanbarforoshgeymat_forosh_koli: TFloatField;
    ADOlistanbarforoshbarcod: TWideStringField;
    ADOlistanbarforoshshakhs_sherkat: TWideStringField;
    ADOlistanbarforoshcode_sherkati: TWideStringField;
    ADOdistinctcalanamecalacod: TFloatField;
    ADOdistinctcalanamecode_sherkati: TWideStringField;
    ADOdistinctcalaname2: TADOQuery;
    ADOdistinctcalaname2calaname: TWideStringField;
    ADOdistinctcalaname2code_sherkati: TWideStringField;
    ADOkharidha2: TADOQuery;
    ADOkharidha2jens: TWideStringField;
    ADOkharidha2tedad: TFloatField;
    ADOkharidha2gheymat: TFloatField;
    ADOkharidha2kol: TFloatField;
    ADOkharidha2id: TBCDField;
    ADOkharidha2vahed_koli: TWideStringField;
    ADOkharidha2vahed_jozei: TWideStringField;
    ADOkharidha2tedad_koli: TFloatField;
    ADOkharidha2geymat_koli: TFloatField;
    ADOkharidha2tedad_jozi_dar_koli: TFloatField;
    ADOkharidha2shahrforoshande: TWideStringField;
    ADOkharidha2sh_factor: TFloatField;
    ADOkharidha2tarikh: TWideStringField;
    ADOkharidha2code: TFloatField;
    ADOkharidha2teded_jozi: TFloatField;
    ADOkharidha2geymat_jadid: TFloatField;
    ADOkharidha2keraye: TFloatField;
    ADOkharidha2barcod: TWideStringField;
    ADOkharidha2code_sherkati: TWideStringField;
    ADOlistanbarforosh2calaname: TWideStringField;
    ADOlistanbarforosh2tedadanbar: TFloatField;
    ADOlistanbarforosh2anbarname: TWideStringField;
    ADOlistanbarforosh2geymatkharid: TFloatField;
    ADOlistanbarforosh2geymatforosh: TFloatField;
    ADOlistanbarforosh2molahezatgeymat: TWideStringField;
    ADOlistanbarforosh2calacod: TFloatField;
    ADOlistanbarforosh2tarikhedit: TWideStringField;
    ADOlistanbarforosh2molahezatforosh: TWideStringField;
    ADOlistanbarforosh2id: TBCDField;
    ADOlistanbarforosh2tedad_koli: TFloatField;
    ADOlistanbarforosh2vahed_koli: TWideStringField;
    ADOlistanbarforosh2geymat_koli: TFloatField;
    ADOlistanbarforosh2tedad_jozi_da_koli: TFloatField;
    ADOlistanbarforosh2vahed_jozi: TWideStringField;
    ADOlistanbarforosh2geymat_forosh_koli: TFloatField;
    ADOlistanbarforosh2barcod: TWideStringField;
    ADOlistanbarforosh2shakhs_sherkat: TWideStringField;
    ADOlistanbarforosh2code_sherkati: TWideStringField;
    ADOmohasebe_keraye_kharidcode: TFloatField;
    ADOmohasebe_keraye_kharidshomare_factor: TFloatField;
    ADOmohasebe_keraye_kharidkeraye: TFloatField;
    ADOmohasebe_keraye_kharidid: TBCDField;
    ADOmohasebe_keraye_kharidtarikh: TWideStringField;
    ADOmohasebe_jame_keraye_kharidha: TADOQuery;
    ADOmohasebe_jame_keraye_kharidhakeray_kol: TFloatField;
    ADOQ_jame_keraye_har_jens: TADOQuery;
    ADOQ_jame_keraye_har_jenskeray_kol: TFloatField;
    ADOQuery_show_jens_gr_by_cod: TADOQuery;
    ADOQuery_show_jens_gr_by_codcalaname: TWideStringField;
    ADOQuery_show_jens_gr_by_codshakhs_sherkat: TWideStringField;
    ADOQuery_show_jens_gr_by_codcalacod: TFloatField;
    ADOloginlogin: TWideStringField;
    ADOloginusername: TWideStringField;
    ADOloginid: TBCDField;
    ADOloginkarbar: TWideStringField;
    ADOlogin2: TADOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    BCDField1: TBCDField;
    WideStringField3: TWideStringField;
    ADOlistanbarforoshsh_kharid_zayeat: TFloatField;
    ADOlistanbarforoshgeymatforosh_koli: TFloatField;
    ADOlistanbarforosh2sh_kharid_zayeat: TFloatField;
    ADOlistanbarforosh2geymatforosh_koli: TFloatField;
    procedure ADOlistanbarforoshAfterScroll(DataSet: TDataSet);
    procedure ADOlistcheckhaAfterScroll(DataSet: TDataSet);
    procedure ADOdistinctcalanameAfterScroll(DataSet: TDataSet);
    procedure ADOQuery_bank2AfterScroll(DataSet: TDataSet);
    procedure ADOQ_tedad_kharidha_baraye_factor1AfterScroll(
      DataSet: TDataSet);
    procedure ADOQuery_vahedAfterScroll(DataSet: TDataSet);
    procedure ADOQuery_shomare_hesabe_bankiAfterScroll(DataSet: TDataSet);
    procedure ADOkharidhaAfterScroll(DataSet: TDataSet);
    procedure ADOQuery_show_jens_gr_by_codAfterScroll(DataSet: TDataSet);
    procedure ADOloginAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dmlistha: TDmlistha;

implementation

uses Untjens_kharidar, Unt_foroshandegan_jens, Unt_paskardancheck,
  Unt_print_jens_kharidar, unt_moshkhasat_bank, unt_factor_roz, unt_elsah,
  unt_eslah_forosh, unt_entekhab_check, unt_eslah_vahed,
  unt_eslahe_daste_checkha, unt_search_bank, unt_frm_eslah_bank,
  unt_eslahe_jens, unt_anbarhaye_havie_jens, unt_DataM_final1,
  unt_eslah_kharid, unt_karbar,unt_main;

{$R *.dfm}
procedure TDmlistha.ADOQ_tedad_kharidha_baraye_factor1AfterScroll(
  DataSet: TDataSet);
begin
     if (frm_factor_roz <> nil)and(frm_factor_roz.Showing) then
     begin
        frm_factor_roz.CheckBox1.Checked:=false;
        frm_factor_roz.facor('taki');
        frm_factor_roz.show_ba_sh_factor2('taki');
     end;

end;

procedure TDmlistha.ADOlistanbarforoshAfterScroll(DataSet: TDataSet);
begin

  if (Frm_foroshandegan_jens<>nil)and(Frm_foroshandegan_jens.Showing) then
    begin
      Dmlistha.ADOkharidha.SQL.Text:='select * from jens_ where jens='+QuotedStr(Dmlistha.ADOlistanbarforoshcalaname.AsString);
      Dmlistha.ADOkharidha.Open;
    end;

    if (Frm_jens_kharidar<>nil)and(Frm_jens_kharidar.Showing) then
    begin
      //Dmlistha.ADOlistforosh.SQL.Text:='select *  from forosh_jens where calaname='+Dmlistha.ADOdistinctcalanamecalaname.AsString;
      //Dmlistha.ADOlistforosh.Open;
    end;
end;

procedure TDmlistha.ADOlistcheckhaAfterScroll(DataSet: TDataSet);
begin
  if (Frm_paskardancheck<>nil)and(Frm_paskardancheck.Showing) then
    begin
      Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens where chek_number='+QuotedStr('abc')+'order by shahr,kharidar';
      //Dmlistha.ADOlistcheckhachek_number.AsString
      Dmlistha.adolistforosh.Open;
    end;
end;

procedure TDmlistha.ADOdistinctcalanameAfterScroll(DataSet: TDataSet);
begin
  if (Frm_foroshandegan_jens<>nil)and(Frm_foroshandegan_jens.Showing) then
    begin
      Frm_foroshandegan_jens.RadioGroup1.ItemIndex:=1;
      Frm_foroshandegan_jens.showajnas_sal;
    end;
     if (Frm_jens_kharidar<>nil)and(Frm_jens_kharidar.Showing) then
    begin
       Frm_jens_kharidar.type_;
    end;
end;
procedure TDmlistha.ADOQuery_bank2AfterScroll(DataSet: TDataSet);
begin

  if (frm_moshkhasat_bank <> nil)and(frm_moshkhasat_bank.Showing) then
  begin
     Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='select * from T_shomare_hesabe_banki where bank_shobe_sh_hesab like'+QuotedStr(Dmlistha.ADOQuery_bank2name.AsString+'%');
     Dmlistha.ADOQuery_shomare_hesabe_banki.Open;
     frm_moshkhasat_bank.show;
  end;

  if (frm_eslahe_daste_checkha<>nil)and(frm_eslahe_daste_checkha.Showing) then
  begin

     Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='select * from T_shomare_hesabe_banki where bank_shobe_sh_hesab like'+QuotedStr(Dmlistha.ADOQuery_bank2name.AsString+'%');
     Dmlistha.ADOQuery_shomare_hesabe_banki.Open;
     
    if Dmlistha.ADOQuery_shomare_hesabe_banki.RecordCount >0 then
    begin
      frm_eslahe_daste_checkha.E_bank_sh_hesab.Text:=ADOQuery_shomare_hesabe_bankibank.AsString;
      frm_eslahe_daste_checkha.E_shobe_sh_hesab.Text:=ADOQuery_shomare_hesabe_bankishobe.AsString;
      frm_eslahe_daste_checkha.E_shomare_hesab_sh_hesab.Text:=ADOQuery_shomare_hesabe_bankish_hesab.AsString;
    end
    else
    begin
      frm_eslahe_daste_checkha.E_bank_sh_hesab.Text:='';
      frm_eslahe_daste_checkha.E_shobe_sh_hesab.Text:='';
      frm_eslahe_daste_checkha.E_shomare_hesab_sh_hesab.Text:='';
    end;
  end;


 if (frm_entekhab_check<>nil)and(frm_entekhab_check.Showing) then
 begin
  {Dmlistha.ADOQuery_daste_check.SQL.Text:='select * from t_daste_check where bank_shobe_sh_hesab like '+QuotedStr(Dmlistha.ADOQuery_bank2name.AsString+'%');
  Dmlistha.ADOQuery_daste_check.Open;}
 end;  
end;





procedure TDmlistha.ADOQuery_vahedAfterScroll(DataSet: TDataSet);
begin
  if (frm_eslah_vahed<>nil)and(frm_eslah_vahed.Showing) then
  begin
    frm_eslah_vahed.Enewsal.Text:=ADOQuery_vahedvahed.AsString;
    frm_eslah_vahed.L_name.Caption:=ADOQuery_vahedvahed.AsString;
  end;
end;



procedure TDmlistha.ADOQuery_shomare_hesabe_bankiAfterScroll(
  DataSet: TDataSet);
begin
if (frm_eslah_bank<>nil)and(frm_eslah_bank.Showing) then
  begin
      frm_eslah_bank.shomare_hesab:=ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString;
      frm_eslah_bank.type_;
      
      if frm_eslah_bank.CheckBox1.Checked then
      begin
        frm_eslah_bank.Label1.Visible:=true;
        frm_eslah_bank.scsal.Visible:=true;
      end
      else
      begin
        frm_eslah_bank.Label1.Visible:=false;
        frm_eslah_bank.scsal.Visible:=false;
      end;

  if DataM_final1.ADOQ_bank4.RecordCount>0 then
  begin
    frm_eslah_bank.e_sh_fish.Visible:=true;
    frm_eslah_bank.e_bedehkar.Visible:=true;
    frm_eslah_bank.E_bestankar.Visible:=true;
    frm_eslah_bank.Memo1.Visible:=true;
    frm_eslah_bank.E_roz.Visible:=true;
    frm_eslah_bank.E_mah.Visible:=true;
    frm_eslah_bank.E_sal.Visible:=true;
    frm_eslah_bank.Button1.Visible:=true;
  end;
  {if DataM_final1.ADOQ_bank4.RecordCount=0 then
  begin
    frm_eslah_bank.e_sh_fish.Visible:=false;
    frm_eslah_bank.e_bedehkar.Visible:=false;
    frm_eslah_bank.E_bestankar.Visible:=false;
    frm_eslah_bank.Memo1.Visible:=false;
    frm_eslah_bank.E_roz.Visible:=false;
    frm_eslah_bank.E_mah.Visible:=false;
    frm_eslah_bank.E_sal.Visible:=false;
    frm_eslah_bank.Button1.Visible:=false;
  end;}
  end;

////////////////////
  if (frm_eslahe_daste_checkha<>nil)and(frm_eslahe_daste_checkha.Showing) then
  begin
    frm_eslahe_daste_checkha.lanbarname.Caption:=ADOQuery_shomare_hesabe_bankibank.AsString;
    frm_eslahe_daste_checkha.L_shobe.Caption:=ADOQuery_shomare_hesabe_bankishobe.AsString;
    frm_eslahe_daste_checkha.L_sh_hesab.Caption:=ADOQuery_shomare_hesabe_bankish_hesab.AsString;
    frm_eslahe_daste_checkha.L_check_nam.Caption:=ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString;
    
    if ADOQuery_shomare_hesabe_banki.RecordCount >0 then
    begin
      frm_eslahe_daste_checkha.E_bank_sh_hesab.Text:=ADOQuery_shomare_hesabe_bankibank.AsString;
      frm_eslahe_daste_checkha.E_shobe_sh_hesab.Text:=ADOQuery_shomare_hesabe_bankishobe.AsString;
      frm_eslahe_daste_checkha.E_shomare_hesab_sh_hesab.Text:=ADOQuery_shomare_hesabe_bankish_hesab.AsString;
    end
    else
    begin
      frm_eslahe_daste_checkha.E_bank_sh_hesab.Text:='';
      frm_eslahe_daste_checkha.E_shobe_sh_hesab.Text:='';
      frm_eslahe_daste_checkha.E_shomare_hesab_sh_hesab.Text:='';
    end;
  end;
  if (Frm_search_bank<> nil)and(Frm_search_bank.Showing) then
  begin
    Frm_search_bank.type_;
  end;
end;

procedure TDmlistha.ADOkharidhaAfterScroll(DataSet: TDataSet);
begin
 if (frm_eslah_kharid<>nil) and(frm_eslah_kharid.Showing) then
 begin
  if Dmlistha.ADOkharidha.RecordCount>0 then
  begin
    frm_anbarhaye_havie_jens.cala_name:=Dmlistha.ADOkharidhajens.AsString;
    frm_anbarhaye_havie_jens.code_sherkati:=Dmlistha.ADOkharidhacode_sherkati.AsString;
    frm_anbarhaye_havie_jens.barcod:=Dmlistha.ADOkharidhabarcod.AsString;
    frm_anbarhaye_havie_jens.shakhs_sherkat:=Dmlistha.ADOkharidhashahrforoshande.AsString;

    frm_anbarhaye_havie_jens.geymat_kharid:=Dmlistha.ADOkharidhagheymat.AsFloat;
    frm_anbarhaye_havie_jens.sh_factor:=Dmlistha.ADOkharidhash_factor.AsFloat;
  end
  else
  begin
    frm_anbarhaye_havie_jens.cala_name:=Dmlistha.ADOkharidhajens.AsString;
    frm_anbarhaye_havie_jens.code_sherkati:=Dmlistha.ADOkharidhacode_sherkati.AsString;
    frm_anbarhaye_havie_jens.barcod:=Dmlistha.ADOkharidhabarcod.AsString;
    frm_anbarhaye_havie_jens.shakhs_sherkat:=Dmlistha.ADOkharidhashahrforoshande.AsString;
    frm_anbarhaye_havie_jens.geymat_kharid:=0;
    frm_anbarhaye_havie_jens.sh_factor:=0;
  end;
 end;

end;

procedure TDmlistha.ADOQuery_show_jens_gr_by_codAfterScroll(
  DataSet: TDataSet);
begin
   if(frm_eslahe_jens<>nil)and(frm_eslahe_jens.Showing) then
   begin
    Dmlistha.ADOlistanbarforosh2.SQL.Text:='select * from Tanbar_jens_kolli where calaname='+
    QuotedStr(ADOQuery_show_jens_gr_by_codcalaname.AsString)+' and calacod='+
    ADOQuery_show_jens_gr_by_codcalacod.AsString+' and shakhs_sherkat='+
    QuotedStr(ADOQuery_show_jens_gr_by_codshakhs_sherkat.AsString);
    Dmlistha.ADOlistanbarforosh2.Open;

    frm_eslahe_jens.E_name.Text:=ADOQuery_show_jens_gr_by_codcalaname.AsString;
    frm_eslahe_jens.e_cod_tolidi.Text:=Dmlistha.ADOlistanbarforosh2code_sherkati.AsString;
    frm_eslahe_jens.e_barcod.Text:=Dmlistha.ADOlistanbarforosh2barcod.AsString;
   end;
end;

procedure TDmlistha.ADOloginAfterScroll(DataSet: TDataSet);
begin
  if (frm_karbar<>nil)and(frm_karbar.showing) then
  begin
    if frm_karbar.l_type_.Caption='edite' then
    begin
      frm_karbar.e_karbar.Text:=ADOloginkarbar.AsString;
      frm_karbar.e_username.Text:=ADOloginusername.AsString;
      frm_karbar.Elogin.Text:=ADOloginlogin.AsString;
    end;
  end;
end;

end.
