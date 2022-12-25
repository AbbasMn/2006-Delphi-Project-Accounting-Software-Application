unit unt_eslah_forosh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, te_controls, te_db_controls, DBCtrls, LMDControl,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, ExtCtrls, SUIForm, SUIButton, Grids, DBGrids, SUIDBCtrls,
  DB, Mask;

type
  Tfrm_eslah_forosh = class(TForm)
    dsshakhs: TDataSource;
    Dskharidha: TDataSource;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    DBText_shakhs: TDBText;
    DBText_geymat: TDBText;
    DBText_calacod: TDBText;
    DBText_id: TDBText;
    suiDbjens: TsuiDBGrid;
    GroupBox7: TGroupBox;
    L_sh_factor: TLabel;
    L_shakhs: TLabel;
    suiDBGrid2: TsuiDBGrid;
    suiDBGrid1: TsuiDBGrid;
    GroupBox6: TGroupBox;
    LMDSpeedButton_add1534354: TLMDSpeedButton;
    LMDSpeedButton_111: TLMDSpeedButton;
    LMDSpeedButton_add2: TLMDSpeedButton;
    LMDSpeedButton_add: TLMDSpeedButton;
    LMDSpeedButton_add22: TLMDSpeedButton;
    GroupBox5: TGroupBox;
    MaskEditrooz: TMaskEdit;
    MaskEditmah: TMaskEdit;
    MaskEditsal: TMaskEdit;
    RadioGroup2: TRadioGroup;
    Label2: TLabel;
    esearch: TEdit;
    Label10: TLabel;
    e_cod: TEdit;
    LMDSpeedButton_add1: TLMDSpeedButton;
    l_review: TLabel;
    LMDSpeedButton_1: TLMDSpeedButton;
    CheckBox1: TCheckBox;
    suiButton2: TsuiButton;
    procedure suiButton4Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Edit_sh_factorKeyPress(Sender: TObject; var Key: Char);
    procedure LMDSpeedButton_add1534354Click(Sender: TObject);
    procedure aghlame_factor;
    procedure delete_forosh;
    procedure LMDSpeedButton_111Click(Sender: TObject);
    function  tedad_check_number:integer;
    procedure hazf_tak_check;
    procedure update_anbar;
    procedure update_bedehi;
    procedure show_factorha;
    procedure LMDSpeedButton_add2Click(Sender: TObject);
    procedure LMDSpeedButton_addClick(Sender: TObject);
    procedure LMDSpeedButton_Click(Sender: TObject);
    procedure mablagh_nagd_check_ghabli_sh_faktor;
    procedure enteghal_checkha_az_t_forosh_be_emp_check_forosh;
    procedure LMDSpeedButton_add22Click(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure e_codChange(Sender: TObject);
    procedure LMDSpeedButton_add1Click(Sender: TObject);
    procedure LMDSpeedButton_1Click(Sender: TObject);

    procedure show_hame_factorha;
    procedure CheckBox1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);

    procedure waiting(payam:string;time_:integer);

  
  private
    { Private declarations }
  public
    { Public declarations }
    g_id:integer;
  end;

var
  frm_eslah_forosh: Tfrm_eslah_forosh;

implementation

uses Untdmlistha, unt_datamodule1, Taghvim, unt_pint_factor_roz, unt_login,
  Unt_DataModule_gozaresh_tarkibi, unt_elsah, unt_datamodule2,
  Untdmanbarexit, Unt_mmoshakhasat_shakhs, unt_DataM_final,
  unt_eslahe_forosh_checkha, unt_eslahe_forosh_naghd,
  unt_entekhab_check_baraye_forosh, unt_eslahe_forosh_hazf, Untviewanbar,
  unt_eslah_forosh_add_jens, Unt_dmanbar, unt_main,
  unt_eslahe_forosh_takhif, unt_tozihat, unt_sleep;

{$R *.dfm}
procedure Tfrm_eslah_forosh.waiting(payam:string;time_:integer);
begin
  frm_sleep.payam_:=payam;
  frm_sleep.time_:=time_;
  frm_sleep.ShowModal;
end;


procedure Tfrm_eslah_forosh.show_hame_factorha;
begin

  DataM_final.ADOQ_t_sh_facrorhaye_forosh.SQL.Text:='select * from  t_sh_facrorhaye_forosh where shahrforoshande='+
  QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' order by shomare';
  DataM_final.ADOQ_t_sh_facrorhaye_forosh.open;

  if  DataM_final.ADOQ_t_sh_facrorhaye_forosh.RecordCount =0 then
  begin
    DataModule_gozaresh_tarkibi.ADO_fac_roz_show.sql.Text:='select * from forosh_jens where sh_factor < 0';
    DataModule_gozaresh_tarkibi.ADO_fac_roz_show.Open;
  end
  else
  begin
    L_sh_factor.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    L_shakhs.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;
    aghlame_factor;
  end;

end;


/////////////
procedure Tfrm_eslah_forosh.enteghal_checkha_az_t_forosh_be_emp_check_forosh;
begin
   DataM_final.ADOQ_t_Temp_pardakht_check_forosh.SQL.Text:='insert into t_Temp_pardakht_check_forosh select '+
   'code,shomare_factor,mablagh_check,sh_check,sh_hesab,tarikh,shahrforoshande,tarikh_kharid,pass'+
   ' from T_pardakht_check_forosh '+
   '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
  DataM_final.ADOQ_t_Temp_pardakht_check_forosh.ExecSQL;
end;

procedure Tfrm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;
begin
  DataM_final.ADOQ_t_pardakht_nagd_forosh.SQL.Text:='select * from t_pardakht_nagd_forosh'+
  '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
  DataM_final.ADOQ_t_pardakht_nagd_forosh.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh'+
  '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

  Dmlistha.ADOmohasebe_forosh.SQL.Text:='select sum(geymat_jens)as kol_ from forosh_jens '+
   '  where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString)+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
  Dmlistha.ADOmohasebe_forosh.Open;
end;

procedure Tfrm_eslah_forosh.show_factorha;
begin

  DataM_final.ADOQ_t_sh_facrorhaye_forosh.SQL.Text:='select * from  t_sh_facrorhaye_forosh where shahrforoshande='+
  QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and tarikh='+QuotedStr(trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text))+' order by shomare';
  DataM_final.ADOQ_t_sh_facrorhaye_forosh.open;

  if  DataM_final.ADOQ_t_sh_facrorhaye_forosh.RecordCount =0 then
  begin
    DataModule_gozaresh_tarkibi.ADO_fac_roz_show.sql.Text:='select * from forosh_jens where sh_factor < 0';
    DataModule_gozaresh_tarkibi.ADO_fac_roz_show.Open;
    CheckBox1.Checked:=false;
  end
  else
  begin
    L_sh_factor.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    L_shakhs.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;
    CheckBox1.Checked:=false;
    aghlame_factor;
  end;

end;
procedure Tfrm_eslah_forosh.update_bedehi;
var talab,t:real;
     x,id:integer;
     stype,onvan,s:string;
begin
  x:=tedad_check_number;
  DataModule_gozaresh_tarkibi.ADO_fac_roz_show.SQL.Text:='select * from forosh_jens where id='+DBText_id.Caption;
  DataModule_gozaresh_tarkibi.ADO_fac_roz_show.Open;
  //talab:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showbedehi.AsFloat;
  t:=0;
  //DataModule_gozaresh_tarkibi.ADO_fac_roz_showdaryaft_nagd.AsFloat;
  id:=StrToInt(DBText_id.Caption);
  g_id:=id;
  if x=1 then
  begin
    s:='Ìò ›ﬁ—Â çò »Â „»·€ '+ 'abc'+' Ê »Â ‘„«—Â '+
    //DataModule_gozaresh_tarkibi.ADO_fac_roz_showdaryaft_chek.AsString
    'abc'+'œ— ‰ ÌÃÂ Õ–› ›—Ê‘ Ã‰” '+DataModule_gozaresh_tarkibi.ADO_fac_roz_showjens.AsString+'»«Ìœ »Â '+DataModule1.ADOQuery3shahrforoshande.AsString+' Å” œ«œÂ ‘Êœ';
    //DataModule_gozaresh_tarkibi.ADO_fac_roz_showchek_number.AsString

    stype:='shakhs';
    onvan:='œ—»«—Â Õ–› ›—Ê‘ Ã‰”';
    DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.SQL.Text:='insert into T_yaddasht(matn,shahrforoshande,tarikh_yadavary,'+
                                                                                  'tarikh_zakhire,type,mozo)'+
                                                                                   ' values('+QuotedStr(s)+','+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)
                                                                                   +','+QuotedStr(frm_login.Egettarikh.Text)+
                                                                                   ','+QuotedStr(Frm_login.Egettarikh.Text)+','+QuotedStr(stype)+','+QuotedStr(onvan)+')';
    DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.ExecSQL;

    DataModule_gozaresh_tarkibi.ADO_fac_roz_show.SQL.Text:='update  forosh_jens set chek_number='+QuotedStr('Å” ')+'+chek_number' +' where id='+IntToStr(id);
    DataModule_gozaresh_tarkibi.ADO_fac_roz_show.ExecSQL;
     aghlame_factor;
  end
  else
  begin
    if x>1 then
      begin
       // talab:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showbedehi.AsFloat+0+0;
        //DataModule_gozaresh_tarkibi.ADO_fac_roz_showdaryaft_chek.AsFloat
        //DataModule_gozaresh_tarkibi.ADO_fac_roz_showdaryaft_nagd.AsFloat
        t:=0+0;
        //DataModule_gozaresh_tarkibi.ADO_fac_roz_showdaryaft_chek.AsFloat
        //DataModule_gozaresh_tarkibi.ADO_fac_roz_showdaryaft_nagd.AsFloat
      end
    else
       if x=0 then
       begin
         t:=0;
         //DataModule_gozaresh_tarkibi.ADO_fac_roz_showdaryaft_nagd.AsFloat
         //talab:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showbedehi.AsFloat+t;
       end;
  end;
    DataModule2.adotasfie.SQL.Text:='update bedeh_bestan  set bedeh_kol=bedeh_kol-'+floatToStr(talab)+' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
    DataModule2.adotasfie.ExecSQL;
    MessageBox(Handle,pchar('Œ—Ìœ«— << '+DataModule1.ADOQuery3shahrforoshande.AsString+' >> „»·€ <<'+FloatToStr(t)+' >> «“ ‘„« ÿ·»ò«— „Ì‘Êœ „»·€ ÿ·» œ— ‰ ÌÃÂ Õ–› ›—Ê‘ Ã‰” << '+DataModule_gozaresh_tarkibi.ADO_fac_roz_showjens.AsString+' >> «“ ò· »œÂÌ ‘Œ’ ò„ ‘œ.'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    
end;

procedure Tfrm_eslah_forosh.update_anbar;
var temp,tedadkli_pas_az_tafazol,t_kol_anbar,t_j_anbar:real;
begin
    Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli  where calacod='+DataModule_gozaresh_tarkibi.ADO_fac_roz_showcalacod.AsString+
    ' and anbarname='+QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showanbarname.AsString);
    Dmanbarexite.ADOanbarcala.Open;

    t_kol_anbar:=Dmanbarexite.ADOanbarcala.Fields[10].AsFloat;

    t_j_anbar:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;

    temp:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_kol.AsFloat;

    if DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat <>0 then
    begin
      tedadkli_pas_az_tafazol:=int((t_j_anbar+temp)/DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat);
      Dmanbarexite.ADOanbarcala.SQL.Text:='update Tanbar_jens_kolli set tedad_koli='+floattostr(tedadkli_pas_az_tafazol)+' , tedadanbar=tedadanbar+'+FloatToStr(temp)+
      ' where calacod='+DataModule_gozaresh_tarkibi.ADO_fac_roz_showcalacod.AsString+
    ' and anbarname='+QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showanbarname.AsString);
      Dmanbarexite.ADOanbarcala.ExecSQL;
    end
      else
        begin
          Dmanbarexite.ADOanbarcala.SQL.Text:='update Tanbar_jens_kolli set  tedadanbar=tedadanbar+'+FloatToStr(temp)+
          ' where calacod='+DataModule_gozaresh_tarkibi.ADO_fac_roz_showcalacod.AsString+
          ' and anbarname='+QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showanbarname.AsString);
          Dmanbarexite.ADOanbarcala.ExecSQL;
        end;
end;

procedure Tfrm_eslah_forosh.hazf_tak_check;
begin
  if tedad_check_number=1 then
  begin
    {kl}
  end;
end;
function Tfrm_eslah_forosh.tedad_check_number:integer;
begin
  tedad_check_number:=0;
//DataModule_gozaresh_tarkibi.ADO_fac_roz_showchek_number.AsString
  if 'abc' <>'' then
  begin
    Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens where chek_number='+QuotedStr('abc');
    //DataModule_gozaresh_tarkibi.ADO_fac_roz_showchek_number.AsString
    Dmlistha.adolistforosh.Open;
    if Dmlistha.adolistforosh.RecordCount=1 then
      tedad_check_number:=1;
    if Dmlistha.adolistforosh.RecordCount>1 then
      tedad_check_number:=2;
  end;
end;
procedure Tfrm_eslah_forosh.delete_forosh;
begin
  update_anbar;
  Dmlistha.adolistforosh.SQL.Text:='delete from  forosh_jens  where id='+DataModule_gozaresh_tarkibi.ADO_fac_roz_showid.AsString;
  Dmlistha.adolistforosh.ExecSQL;
end;
procedure Tfrm_eslah_forosh.aghlame_factor;
begin
    DataModule_gozaresh_tarkibi.ADO_fac_roz_show.SQL.Text:='select * from forosh_jens where shahrforoshande='+
    QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString)+
    ' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;

    //if L_sh_factor.Caption<>'' then
    if DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString<>'' then
      DataModule_gozaresh_tarkibi.ADO_fac_roz_show.Open;
end;

procedure Tfrm_eslah_forosh.suiButton4Click(Sender: TObject);
begin
  _Taghvim.ShowModal;
if _taghvim._str_date<>'' then
 begin
  MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
  MaskEditMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
  MaskEditRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
 end;
end;

procedure Tfrm_eslah_forosh.esearchChange(Sender: TObject);
begin
   DataModule1.ADOQuery3.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;



procedure Tfrm_eslah_forosh.FormShow(Sender: TObject);
begin

  RadioGroup2.ItemIndex:=0;
  MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
  MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
  MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
  esearch.Text:='';
  
  Frm_mmoshakhasat_shakhs.show_kharidaran;

  CheckBox1.Checked:=false;

  if CheckBox1.Checked then
    show_hame_factorha
  else
    show_factorha;

  DataM_final.ADOQ_t_sh_facrorhaye_forosh.Last;

  frm_eslah_forosh.WindowState:=wsMaximized;

end;

procedure Tfrm_eslah_forosh.RadioGroup2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex=0 then
  begin
      MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
      MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
      MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
      show_factorha;
  end
  else
  begin
      _taghvim.ShowModal;
       if _taghvim._str_date<>'' then
        begin
              MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
              MaskEditMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
              MaskEditRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
              show_factorha;
        end;
  end;
end;

procedure Tfrm_eslah_forosh.Edit_sh_factorKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;



procedure Tfrm_eslah_forosh.LMDSpeedButton_add1534354Click(Sender: TObject);
begin
  if DataM_final.ADOQ_t_sh_facrorhaye_forosh.RecordCount <=0 then
    MessageBox(Handle,pchar('›—Ê‘Ì »—«Ì «’·«Õ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
   if DataModule_gozaresh_tarkibi.ADO_fac_roz_show.RecordCount>0 then
   begin
    frm_elsah.l_taeed_eslah.Caption:='no';

    frm_elsah.DBText_g_vahed.Text:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showgeymat_vahed.AsString;

   l_review.Caption:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showid.AsString;

    frm_elsah.ShowModal;

    waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',6000);
    frm_eslah_forosh.aghlame_factor;
    frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
    ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    DataM_final.ADOQ_takhfife_forosh.Open;


    DataModule_gozaresh_tarkibi.ADO_fac_roz_show.Locate('id',l_review.Caption,[loPartialKey]);

    {if(frm_elsah.l_taeed_eslah.Caption='yes') then
    begin
      MessageBox(Handle,pchar(' ⁄œ«œ ÃœÌœ Ã‰” «‰ Œ«»Ì –ŒÌ—Â ‘œ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
      frm_eslah_forosh.aghlame_factor;
    end; }
   end
   else
    MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;
end;


procedure Tfrm_eslah_forosh.LMDSpeedButton_111Click(Sender: TObject);
begin
 if DataM_final.ADOQ_t_sh_facrorhaye_forosh.RecordCount <=0  then
  MessageBox(Handle,pchar('›—Ê‘Ì »—«Ì Õ–› «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
   begin
   if DataModule_gozaresh_tarkibi.ADO_fac_roz_show.RecordCount>0 then
   begin
      frm_eslahe_forosh_hazf.l_taeed_eslah.Caption:='no';
      frm_eslahe_forosh_hazf.ShowModal;

    waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',6000);
    frm_eslah_forosh.aghlame_factor;
    frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
    ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    DataM_final.ADOQ_takhfife_forosh.Open;
          
      {if (frm_eslahe_forosh_hazf.l_taeed_eslah.Caption='yes')then
      begin
        MessageBox(Handle,pchar('Ã‰” «‰ Œ«»Ì «“ ›«ò Ê— ›—Ê‘ Õ–› ê—œÌœ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
        aghlame_factor;
      end;}
   end
   else
    MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   end;
end;

procedure Tfrm_eslah_forosh.LMDSpeedButton_add2Click(Sender: TObject);
begin
  if DataM_final.ADOQ_t_sh_facrorhaye_forosh.RecordCount<=0 then
    MessageBox(Handle,pchar('›—Ê‘Ì »—«Ì «’·«Õ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
   if DataModule_gozaresh_tarkibi.ADO_fac_roz_show.RecordCount>0 then
   begin

    l_review.Caption:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showid.AsString;

    frm_eslahe_forosh_naghd.ShowModal;

    waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',6000);
    frm_eslah_forosh.aghlame_factor;
    frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
    ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    DataM_final.ADOQ_takhfife_forosh.Open;


    DataModule_gozaresh_tarkibi.ADO_fac_roz_show.Locate('id',l_review.Caption,[loPartialKey]);
    
   end
   else
    MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;
end;

procedure Tfrm_eslah_forosh.LMDSpeedButton_addClick(Sender: TObject);
begin
  if DataM_final.ADOQ_t_sh_facrorhaye_forosh.RecordCount<=0 then
    MessageBox(Handle,pchar('›—Ê‘Ì »—«Ì «’·«Õ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
  begin
   if DataModule_gozaresh_tarkibi.ADO_fac_roz_show.RecordCount>0 then
   begin
    enteghal_checkha_az_t_forosh_be_emp_check_forosh;
    waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);
    Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
    Frm_entekhab_check_baraye_forosh.jame_temp_check_forosh;

    l_review.Caption:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showid.AsString;

    frm_eslahe_forosh_checkha.ShowModal;

    waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',6000);
    frm_eslah_forosh.aghlame_factor;
    frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
    ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    DataM_final.ADOQ_takhfife_forosh.Open;

    DataModule_gozaresh_tarkibi.ADO_fac_roz_show.Locate('id',l_review.Caption,[loPartialKey]);

   end
   else
    MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;

end;

procedure Tfrm_eslah_forosh.LMDSpeedButton_Click(Sender: TObject);
begin
 if DataModule_gozaresh_tarkibi.ADO_fac_roz_show.RecordCount<=0 then
  MessageBox(Handle,pchar('›—Ê‘Ì »—«Ì Õ–› «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
end;

procedure Tfrm_eslah_forosh.LMDSpeedButton_add22Click(Sender: TObject);
begin
if DataM_final.ADOQ_t_sh_facrorhaye_forosh.RecordCount<=0 then
  MessageBox(Handle,pchar('›«ò Ê—Ì »—«Ì «÷«›Â ò—œ‰ Ã‰” »Â ¬‰ ÊÃÊœ ‰œ«—œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
  frm_eslah_forosh_add_jens.L_kol_gabl.Caption:=Dmlistha.ADOmohasebe_foroshkol_.AsString;
  frm_viewanbar.L_type.Caption:='eslah';
  frm_eslah_forosh_add_jens.ShowModal;
  
    waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',6000);
    frm_eslah_forosh.aghlame_factor;
    frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
    ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    DataM_final.ADOQ_takhfife_forosh.Open;


 end;
end;

procedure Tfrm_eslah_forosh.e_codKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_forosh.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure Tfrm_eslah_forosh.LMDSpeedButton_add1Click(Sender: TObject);
begin
  if DataM_final.ADOQ_t_sh_facrorhaye_forosh.RecordCount<=0 then
    MessageBox(Handle,pchar('›—Ê‘Ì »—«Ì «’·«Õ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
  begin
   if DataModule_gozaresh_tarkibi.ADO_fac_roz_show.RecordCount>0 then
   begin

    l_review.Caption:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showid.AsString;

    frm_eslahe_forosh_takhif.ShowModal;
    waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',6000);
    frm_eslah_forosh.aghlame_factor;
    frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
    ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    DataM_final.ADOQ_takhfife_forosh.Open;

    DataModule_gozaresh_tarkibi.ADO_fac_roz_show.Locate('id',l_review.Caption,[loPartialKey]);


   end
   else
    MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;
end;

procedure Tfrm_eslah_forosh.LMDSpeedButton_1Click(Sender: TObject);
begin
 if DataM_final.ADOQ_t_sh_facrorhaye_forosh.RecordCount <=0  then
  MessageBox(Handle,pchar('›—Ê‘Ì «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
  frm_tozihat.l_type_tozih.Caption:='edit';
  frm_tozihat.l_type_factor.Caption:='forosh';
  frm_tozihat.Memo1.Text:=DataM_final.ADOQ_tozihate_foroshtozih.AsString;
  frm_tozihat.ShowModal;
 end;
end;

procedure Tfrm_eslah_forosh.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    show_hame_factorha
  else
    show_factorha;
end;

procedure Tfrm_eslah_forosh.suiButton2Click(Sender: TObject);
begin
  DataM_final.ADOQ_t_sh_facrorhaye_forosh.Last;
end;

end.
