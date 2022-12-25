unit unt_datamodule1;

interface

uses
  SysUtils, Classes, DB, DBTables, ADODB, ActnMan, ActnColorMaps;

type
  TDataModule1 = class(TDataModule)
    ADOQuery3: TADOQuery;
    ADOQ_sh_factor: TADOQuery;
    ADObedehi: TADOQuery;
    ADOpardakhtbedehi: TADOQuery;
    ADOeditshakhs: TADOQuery;
    ADOQsaljadid: TADOQuery;
    ADOQsaljadidsal: TWideStringField;
    ADOQuery_jame_pardakht_shhoma: TADOQuery;
    ADOQuery_jame_pardakht_shhomakol_: TFloatField;
    ADOQuery_jame_bedehi_be_foroshandeha: TADOQuery;
    ADOQ_sh_factor_kharid: TADOQuery;
    ADOQuery_jame_pardakht_kharidar: TADOQuery;
    ADOQuery_jame_bedehi_be_kharidaran: TADOQuery;
    ADOQuery_jame_pardakht_kharidarkol_: TFloatField;
    ADOQuery4: TADOQuery;
    ADOpardakhtbedehi_kharidar: TADOQuery;
    ADOQuery_pish_kharid: TADOQuery;
    ADOQuery3adress: TWideStringField;
    ADOQuery3telephon: TWideStringField;
    ADOQuery3email: TWideStringField;
    ADOQuery3telephonhamrah: TWideStringField;
    ADOQuery3code: TBCDField;
    ADOQuery3shahrforoshande: TWideStringField;
    ADOQuery3type_: TWideStringField;
    ADOQuery4adress: TWideStringField;
    ADOQuery4telephon: TWideStringField;
    ADOQuery4email: TWideStringField;
    ADOQuery4telephonhamrah: TWideStringField;
    ADOQuery4code: TBCDField;
    ADOQuery4shahrforoshande: TWideStringField;
    ADOQuery4type_: TWideStringField;
    ADOeditshakhsadress: TWideStringField;
    ADOeditshakhstelephon: TWideStringField;
    ADOeditshakhsemail: TWideStringField;
    ADOeditshakhstelephonhamrah: TWideStringField;
    ADOeditshakhscode: TBCDField;
    ADOeditshakhsshahrforoshande: TWideStringField;
    ADOeditshakhstype_: TWideStringField;
    ADOpardakhtbedehitarikh: TWideStringField;
    ADOpardakhtbedehimablagh: TFloatField;
    ADOpardakhtbedehishahrforoshande: TWideStringField;
    ADOpardakhtbedehiid: TBCDField;
    ADOpardakhtbedehitime_: TWideStringField;
    ADOpardakhtbedehi_kharidarshahrforoshande: TWideStringField;
    ADOpardakhtbedehi_kharidartarikh: TWideStringField;
    ADOpardakhtbedehi_kharidarmablagh: TFloatField;
    ADOpardakhtbedehi_kharidartime_: TWideStringField;
    ADOpardakhtbedehi_kharidarid: TBCDField;
    ADOpardakhtbedehi_kharidarnoe: TWideStringField;
    ADOQ_sh_factorshomare: TFloatField;
    ADOQ_sh_factorshahrforoshande: TWideStringField;
    ADOQ_sh_factortype_: TWideStringField;
    ADOQ_sh_factor_kharidshomare: TFloatField;
    ADOQ_sh_factor_kharidshahrforoshande: TWideStringField;
    ADOQ_sh_factor_kharidtarikh: TWideStringField;
    ADOQ_sh_factor_kharidcode: TFloatField;
    ADOQ_sh_factor_kharidtime: TWideStringField;
    ADOQ_sh_factor_kharidtype_: TWideStringField;
    ADObedehibedeh: TFloatField;
    ADObedehicode: TFloatField;
    ADObedehitalab: TFloatField;
    ADObedehish_khaid: TFloatField;
    ADObedehitarikh: TWideStringField;
    ADOQuery_pish_kharidjens: TWideStringField;
    ADOQuery_pish_kharidtedad: TFloatField;
    ADOQuery_pish_kharidgheymat: TFloatField;
    ADOQuery_pish_kharidkol: TFloatField;
    ADOQuery_pish_kharidid: TBCDField;
    ADOQuery_pish_kharidvahed_koli: TWideStringField;
    ADOQuery_pish_kharidvahed_jozei: TWideStringField;
    ADOQuery_pish_kharidtedad_koli: TFloatField;
    ADOQuery_pish_kharidgeymat_koli: TFloatField;
    ADOQuery_pish_kharidtedad_jozi_dar_koli: TFloatField;
    ADOQuery_pish_kharidshahrforoshande: TWideStringField;
    ADOQuery_pish_kharidsh_factor: TFloatField;
    ADOQuery_pish_kharidtarikh: TWideStringField;
    ADOQuery_pish_kharidcode: TFloatField;
    ADOQuery_pish_kharidteded_jozi: TFloatField;
    ADOQuery_pish_kharidgeymat_jadid: TFloatField;
    ADOQuery_pish_kharidkeraye: TFloatField;
    ADOQuery_pish_kharidbarcod: TWideStringField;
    ADOQuery_pish_kharidcode_sherkati: TWideStringField;
    ADOQuery_jame_bedehi_be_kharidaranbedeh_kol: TFloatField;
    ADOQuery_jame_bedehi_be_foroshandehabedeh_kol: TFloatField;
    ADOQuery_jame_talab_kharidaran: TADOQuery;
    ADOQuery_jame_talab_kharidaranbestankar_kol: TFloatField;
    ADOQuery_jame_bedeh_foroshandeha: TADOQuery;
    ADOQuery_jame_bedeh_foroshandehatalab_kol: TFloatField;
    procedure ADOQuery3AfterScroll(DataSet: TDataSet);
    procedure ADOQuery11AfterScroll(DataSet: TDataSet);
    procedure ADOQsaljadidAfterScroll(DataSet: TDataSet);
    procedure ADOpardakhtbedehi_kharidarAfterScroll(DataSet: TDataSet);
    procedure ADOpardakhtbedehiAfterScroll(DataSet: TDataSet);
    procedure ADOQuery4AfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses Untlistkharidhayeshakhspas, Untdmlistha, Unt_jens_foroshandeha,
  Unt_pardakht_bedehi, Unt_mmoshakhasat_shakhs, unt_factor_roz,
  unt_gozaresh_tarkibi, unt_gozaresh_tarkibi_mpshtari, unt_eslah_forosh,
  Unt_DataModule_gozaresh_tarkibi, unt_forosh_property, unt_pish_forosh,
  unt_entekhab_check_baraye_forosh, untjens_kharid, unt_pish_kharid,
  unt_entekhab_check, unt_DataM_final, unt_eslah_sal,
  unt_eslah_pardakhthaye_kharidar, unt_eslah_pardakhtha_be_foroshnde,
  unt_eslah_kharid, unt_factore_kharid, unt_entekhabe_kharidar,
  unt_entekhab_foroshande, unt_forosh_fishi, Unt_mmoshakhasat_anjirestan,
  unt_sabte_hazine, unt_show_hazine_anjirestan, unt_anjirestan_jamavari;

{$R *.dfm}



procedure TDataModule1.ADOQuery3AfterScroll(DataSet: TDataSet);
begin
  if (frm_sabte_hazine<>nil)and(frm_sabte_hazine.Showing) then
    frm_sabte_hazine.lbl_hazine_be.Caption:=ADOQuery3shahrforoshande.AsString;

  if (frm_forosh_fishi<>nil)and(frm_forosh_fishi.Showing) then
    frm_forosh_fishi.show_hesabe_moshtari;
  begin
  end;

  if (frm_entekhab_foroshande<>nil)and(frm_entekhab_foroshande.Showing) then
  begin
    DataModule1.ADOQ_sh_factor_kharid.SQL.Text:='select * from T_shomare_factor_kharid where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
    DataModule1.ADOQ_sh_factor_kharid.Open;

    frmjens_kharid.sh_fac:=DataModule1.ADOQ_sh_factor_kharidshomare.AsString;

    frmjens_kharid.shahrforoshande:=DataModule1.ADOQuery3shahrforoshande.AsString;
    frmjens_kharid.code:=DataModule1.ADOQuery3code.AsString;
  end;

  if (frm_entekhabe_kharidar<>nil)and(frm_entekhabe_kharidar.Showing) then
  begin
    DataModule1.ADOQ_sh_factor.SQL.Text:='select * from T_shomare_factor where shahrforoshande='+
    QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
    DataModule1.ADOQ_sh_factor.Open;

    DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='select * from T_bede_kol_be_kharidar where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
    DataM_final.ADOQ_bedeh_be_kharidar.Open;

    frm_forosh_property.shahrforoshande:=DataModule1.ADOQuery3shahrforoshande.AsString;
    frm_forosh_property.code:=DataModule1.ADOQuery3code.AsString;

    frm_forosh_property.sh_fctor:=DataModule1.ADOQ_sh_factorshomare.AsString;
    frm_forosh_property.bedehi_az_gabl:=DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsString;

  end;

  if (frm_eslah_pardakhtha_be_foroshnde<>nil)and(frm_eslah_pardakhtha_be_foroshnde.Showing) then
  begin
    if frm_eslah_pardakhtha_be_foroshnde.RadioGroup1.ItemIndex=0 then
      frm_eslah_pardakhtha_be_foroshnde.show_mah;
    if frm_eslah_pardakhtha_be_foroshnde.RadioGroup1.ItemIndex=1 then
      frm_eslah_pardakhtha_be_foroshnde.show_tarikh;
    if frm_eslah_pardakhtha_be_foroshnde.RadioGroup1.ItemIndex=2 then
      frm_eslah_pardakhtha_be_foroshnde.show_slaha;
  end;

  if (frm_eslah_pardakhthaye_kharidar<>nil)and(frm_eslah_pardakhthaye_kharidar.Showing) then
  begin
    if frm_eslah_pardakhthaye_kharidar.RadioGroup1.ItemIndex=0 then
      frm_eslah_pardakhthaye_kharidar.show_mah;

    if frm_eslah_pardakhthaye_kharidar.RadioGroup1.ItemIndex=1 then
      frm_eslah_pardakhthaye_kharidar.show_tarikh;

    if frm_eslah_pardakhthaye_kharidar.RadioGroup1.ItemIndex=2 then
      frm_eslah_pardakhthaye_kharidar.show_salha;
  end;
  
  if(frm_jens_foroshandeha<>nil)and(frm_jens_foroshandeha.Showing) then
    begin
       frm_jens_foroshandeha.RadioGroup1.ItemIndex:=0;
       frm_jens_foroshandeha.showajnas_tarikh;
    end;
  if (frm_forosh_property<>nil)and(frm_forosh_property.Showing) then
  begin
    frm_forosh_property.L_kharidar_name.Caption:=ADOQuery3shahrforoshande.AsString;
  end;
  if (frm_factor_roz<>nil)and(frm_factor_roz.Showing) then
  begin
     frm_factor_roz.show_kol_kharidha_dar_roz;
  end;
  if (frm_eslah_forosh <> nil)and(frm_eslah_forosh.Showing) then
  begin
    frm_eslah_forosh.show_factorha;
  end;
  if (frm_factore_kharid<>nil)and(frm_factore_kharid.Showing) then
  begin
    frm_factore_kharid.show_factorha;
  end;
  if (Frm_mmoshakhasat_shakhs <> nil)and(Frm_mmoshakhasat_shakhs.Showing) then
    begin
      Frm_mmoshakhasat_shakhs.lname.Caption:=DataModule1.ADOQuery3shahrforoshande.AsString;
      Frm_mmoshakhasat_shakhs.E_name.Text:=DataModule1.ADOQuery3shahrforoshande.AsString;
      Frm_mmoshakhasat_shakhs.L_code.Caption:=DataModule1.ADOQuery3code.AsString;
      Frm_mmoshakhasat_shakhs.Eadress.Text:=DataModule1.ADOQuery3adress.AsString;
      Frm_mmoshakhasat_shakhs.Etelephon.Text:=DataModule1.ADOQuery3telephon.AsString;
      Frm_mmoshakhasat_shakhs.Ehamrah.Text:=DataModule1.ADOQuery3telephonhamrah.AsString;
      Frm_mmoshakhasat_shakhs.Email.Text:=DataModule1.ADOQuery3email.AsString;
      Frm_mmoshakhasat_shakhs.E_code.Text:=DataModule1.ADOQuery3code.AsString;
      Frm_mmoshakhasat_shakhs.CheckBox1.Checked:=false;
      Frm_mmoshakhasat_shakhs.ComboBox1.Visible:=false;
    end;

      if (Frm_mmoshakhasat_anjirestan <> nil)and(Frm_mmoshakhasat_anjirestan.Showing) then
    begin
      Frm_mmoshakhasat_anjirestan.lname.Caption:=DataModule1.ADOQuery3shahrforoshande.AsString;
      Frm_mmoshakhasat_anjirestan.E_name.Text:=DataModule1.ADOQuery3shahrforoshande.AsString;
      Frm_mmoshakhasat_anjirestan.L_code.Caption:=DataModule1.ADOQuery3code.AsString;
      Frm_mmoshakhasat_anjirestan.Eadress.Text:=DataModule1.ADOQuery3adress.AsString;
      Frm_mmoshakhasat_anjirestan.Etelephon.Text:=DataModule1.ADOQuery3telephon.AsString;
      Frm_mmoshakhasat_anjirestan.E_code.Text:=DataModule1.ADOQuery3code.AsString;
      Frm_mmoshakhasat_anjirestan.ComboBox1.Visible:=false;
    end;





  if (Frm_gozaresh_tarkibi_mpshtari<>nil)and(Frm_gozaresh_tarkibi_mpshtari.Showing) then
  begin
    if Frm_gozaresh_tarkibi_mpshtari.RadioGroup1.ItemIndex=0 then
    begin
       Frm_gozaresh_tarkibi_mpshtari.salha;
      Frm_gozaresh_tarkibi_mpshtari.jame_pardakht_bedehi_salha;
    end;
    if Frm_gozaresh_tarkibi_mpshtari.RadioGroup1.ItemIndex=1 then
    begin
      Frm_gozaresh_tarkibi_mpshtari.sal;
      Frm_gozaresh_tarkibi_mpshtari.jame_pardakht_bedehi_sal;
    end;
    if Frm_gozaresh_tarkibi_mpshtari.RadioGroup1.ItemIndex=2 then
    begin
      Frm_gozaresh_tarkibi_mpshtari.salmah;
      Frm_gozaresh_tarkibi_mpshtari.jame_pardakht_bedehi_salmah;
    end;
   Frm_gozaresh_tarkibi_mpshtari.jame_bedehi;
  end;

  if (frm_gozaresh_tarkibi<>nil)and(frm_gozaresh_tarkibi.Showing) then
  begin
    if frm_gozaresh_tarkibi.RadioGroup1.ItemIndex=0 then
    begin
      frm_gozaresh_tarkibi.salha;
      frm_gozaresh_tarkibi.jame_pardakht_bedehi_salha;
    end;
    if frm_gozaresh_tarkibi.RadioGroup1.ItemIndex=1 then
    begin
      Frm_gozaresh_tarkibi_mpshtari.sal;
      frm_gozaresh_tarkibi.jame_pardakht_bedehi_sal;
    end;
    if frm_gozaresh_tarkibi.RadioGroup1.ItemIndex=2 then
    begin
      frm_gozaresh_tarkibi.salmah;
      frm_gozaresh_tarkibi.jame_pardakht_bedehi_salmah;
    end;
    frm_gozaresh_tarkibi.jame_bedehi;
  end;

  if (frm_kharidhaye_shakhs<>nil) and(frm_kharidhaye_shakhs.Showing) then
    begin
    if frm_kharidhaye_shakhs.RadioGroup1.ItemIndex=0 then
    begin
      frm_kharidhaye_shakhs.CheckBox1.Checked:=true;

      if  not(frm_kharidhaye_shakhs.CheckBox1.Checked) then
      begin
        frm_kharidhaye_shakhs.showhesabdarsal;
        frm_kharidhaye_shakhs.bede_talabdarsal;
        frm_kharidhaye_shakhs.jame_bedehi_kol;
        frm_kharidhaye_shakhs.jame_pardakht_bedehi_sal;
         frm_kharidhaye_shakhs.jame_takhfif_sal;
      end;
      if  frm_kharidhaye_shakhs.CheckBox1.Checked then
      begin
        frm_kharidhaye_shakhs.showhesabshakhs;
        frm_kharidhaye_shakhs.bede_talab_kolsalha;
        frm_kharidhaye_shakhs.jame_bedehi_kol;
        frm_kharidhaye_shakhs.jame_pardakht_bedehi_salha;
         frm_kharidhaye_shakhs.jame_takhfif_kol;
      end;
     end;
     if frm_kharidhaye_shakhs.RadioGroup1.ItemIndex=1 then
     begin
         
         frm_kharidhaye_shakhs.scmahall.ItemIndex:=0;
         frm_kharidhaye_shakhs.showhesabdar_salmah;
         frm_kharidhaye_shakhs.bede_talab_sal_mah;
        frm_kharidhaye_shakhs.jame_bedehi_kol;
        frm_kharidhaye_shakhs.jame_pardakht_bedehi_salmah;
         frm_kharidhaye_shakhs.jame_takhfif_salmah;        
     end;
  end;

  if (frmjens_kharid<>nil) and(frmjens_kharid.Showing)then
  begin
   //frm_pish_kharid.change_foroshande;
   frmjens_kharid.L_foroshande_name.Caption:=ADOQuery3shahrforoshande.AsString;
  end;
  if (frm_eslah_kharid<>nil) and(frm_eslah_kharid.Showing)then
  begin
    frm_eslah_kharid.show_factorha;
  end;
end;

procedure TDataModule1.ADOQuery11AfterScroll(DataSet: TDataSet);
begin
 if (frmjens_kharid <> nil)and(frmjens_kharid.Showing) then
 begin
       frm_pish_kharid.delete_hame_ajnas('no');
       frm_pish_kharid.geymat_kol;
       frmjens_kharid.hazf_hame_check;
      frmjens_kharid.Edit4.Text:='';
      frm_entekhab_check.show_temp_check_kharid;
      frmjens_kharid.Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ';
     frmjens_kharid.L_bestankar.Caption:='0';
     frmjens_kharid.L_bedehkae.Caption:='0';

  end;
end;

procedure TDataModule1.ADOQsaljadidAfterScroll(DataSet: TDataSet);
begin
  if (frm_eslah_sal<>nil)and(frm_eslah_sal.Showing) then
  begin
    //frm_eslah_sal.Enewsal.Text:=ADOQsaljadidsal.AsString;
    frm_eslah_sal.L_name.Caption:=ADOQsaljadidsal.AsString;
  end;
end;

procedure TDataModule1.ADOpardakhtbedehi_kharidarAfterScroll(
  DataSet: TDataSet);
begin
  if (frm_eslah_pardakhthaye_kharidar<>nil)and(frm_eslah_pardakhthaye_kharidar.Showing) then
  begin
    if ADOpardakhtbedehi_kharidar.RecordCount >0 then
    begin


      DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='select * from T_vorod_khoroj_sandogha where cod_kharidar='+
      DataModule1.ADOQuery3code.AsString+
      ' and sh_factor=0'+' and mablag='+DataModule1.ADOpardakhtbedehi_kharidarmablagh.AsString+
      ' and tarikh='+QuotedStr(DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString)+
      ' and time_='+QuotedStr(DataModule1.ADOpardakhtbedehi_kharidartime_.AsString);

      DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.Open;

      frm_eslah_pardakhthaye_kharidar.sandog:=DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandogsandog.AsString;

     frm_eslah_pardakhthaye_kharidar.L_id.Caption:=ADOpardakhtbedehi_kharidarid.AsString;
     frm_eslah_pardakhthaye_kharidar.L_mablagh.Caption:=ADOpardakhtbedehi_kharidarmablagh.AsString;

     frm_eslah_pardakhthaye_kharidar.l_tarikh.Caption:=ADOpardakhtbedehi_kharidartarikh.AsString;
     frm_eslah_pardakhthaye_kharidar.E_mablagh.Text:=ADOpardakhtbedehi_kharidarmablagh.AsString;
     frm_eslah_pardakhthaye_kharidar.l_time.Caption:=ADOpardakhtbedehi_kharidartime_.AsString;


     frm_eslah_pardakhthaye_kharidar.e_t_roz.Text:=ADOpardakhtbedehi_kharidartarikh.AsString[9]+ADOpardakhtbedehi_kharidartarikh.AsString[10];
     frm_eslah_pardakhthaye_kharidar.e_t_mah.Text:=ADOpardakhtbedehi_kharidartarikh.AsString[6]+ADOpardakhtbedehi_kharidartarikh.AsString[7];
     frm_eslah_pardakhthaye_kharidar.e_t_sal.Text:=ADOpardakhtbedehi_kharidartarikh.AsString[1]+ADOpardakhtbedehi_kharidartarikh.AsString[2]+ADOpardakhtbedehi_kharidartarikh.AsString[3]+ADOpardakhtbedehi_kharidartarikh.AsString[4];
    end
    else
    begin
      frm_eslah_pardakhthaye_kharidar.L_id.Caption:='-1';
      frm_eslah_pardakhthaye_kharidar.E_mablagh.Text:='';
      frm_eslah_pardakhthaye_kharidar.l_tarikh.Caption:='';
     frm_eslah_pardakhthaye_kharidar.e_t_roz.Text:='';
     frm_eslah_pardakhthaye_kharidar.e_t_mah.Text:='';
     frm_eslah_pardakhthaye_kharidar.e_t_sal.Text:='';
     frm_eslah_pardakhthaye_kharidar.l_time.Caption:='';
    end;

  end;
end;

procedure TDataModule1.ADOpardakhtbedehiAfterScroll(DataSet: TDataSet);
begin
  if (frm_eslah_pardakhtha_be_foroshnde<>nil)and(frm_eslah_pardakhtha_be_foroshnde.Showing) then
  begin
    if ADOpardakhtbedehi.RecordCount >0 then
    begin

      DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='select * from T_vorod_khoroj_sandogha where cod_kharidar='+
      DataModule1.ADOQuery3code.AsString+
      ' and sh_factor=0'+' and mablag='+DataModule1.ADOpardakhtbedehimablagh.AsString+
      ' and tarikh='+QuotedStr(DataModule1.ADOpardakhtbedehitarikh.AsString)+
      ' and time_='+QuotedStr(DataModule1.ADOpardakhtbedehitime_.AsString);

      DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.Open;

      frm_eslah_pardakhtha_be_foroshnde.sandog:=DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandogsandog.AsString;

     frm_eslah_pardakhtha_be_foroshnde.L_id.Caption:=ADOpardakhtbedehiid.AsString;
     frm_eslah_pardakhtha_be_foroshnde.L_mablagh.Caption:=ADOpardakhtbedehimablagh.AsString;
     frm_eslah_pardakhtha_be_foroshnde.E_mablagh.Text:=ADOpardakhtbedehimablagh.AsString;
     frm_eslah_pardakhtha_be_foroshnde.l_time.Caption:=ADOpardakhtbedehitime_.AsString;


     frm_eslah_pardakhtha_be_foroshnde.e_t_roz.Text:=ADOpardakhtbedehitarikh.AsString[9]+ADOpardakhtbedehitarikh.AsString[10];
     frm_eslah_pardakhtha_be_foroshnde.e_t_mah.Text:=ADOpardakhtbedehitarikh.AsString[6]+ADOpardakhtbedehitarikh.AsString[7];
     frm_eslah_pardakhtha_be_foroshnde.e_t_sal.Text:=ADOpardakhtbedehitarikh.AsString[1]+ADOpardakhtbedehitarikh.AsString[2]+ADOpardakhtbedehitarikh.AsString[3]+ADOpardakhtbedehitarikh.AsString[4];
    end
    else
    begin
      frm_eslah_pardakhtha_be_foroshnde.L_id.Caption:='-1';
     frm_eslah_pardakhtha_be_foroshnde.E_mablagh.Text:='';

     frm_eslah_pardakhtha_be_foroshnde.e_t_roz.Text:='';
     frm_eslah_pardakhtha_be_foroshnde.e_t_mah.Text:='';
     frm_eslah_pardakhtha_be_foroshnde.e_t_sal.Text:='';
     frm_eslah_pardakhtha_be_foroshnde.l_time.Caption:='';     
    end;

  end;
end;

procedure TDataModule1.ADOQuery4AfterScroll(DataSet: TDataSet);
begin
  if (frm_sabte_hazine<>nil)and(frm_sabte_hazine.Showing) then
    frm_sabte_hazine.lbl_anjirestan.Caption:=ADOQuery4shahrforoshande.AsString;

    if (frm_show_hazine_anjirestan<>nil)and(frm_show_hazine_anjirestan.Showing) then
    begin
        frm_show_hazine_anjirestan.type_;
    end;


    if(frm_anjirestan_jamavari<>nil)and(frm_anjirestan_jamavari.Showing)then
    frm_anjirestan_jamavari.Label_shahr.Caption:=ADOQuery4shahrforoshande.AsString;
end;

end.
