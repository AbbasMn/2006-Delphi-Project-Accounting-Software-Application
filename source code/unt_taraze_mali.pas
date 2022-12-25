unit unt_taraze_mali;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask,StrUtils, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton,math;

type
  Tfrm_taraze_mali = class(TForm)
    GroupBox1: TGroupBox;
    Label_bedehi_be_foroshande_salmah: TLabel;
    Label_kol_salmah: TLabel;
    Label_pardakht_nagd_be_foroshande_sal: TLabel;
    Label_pardakht_check_be_foroshande_sal: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label3: TLabel;
    l_arzeshe_sandogha: TLabel;
    L_arzeshe_mojodie_bankha: TLabel;
    l_arzesh_bedehi_bedehkaran: TLabel;
    l_arzesh_check_pas_nashode: TLabel;
    l_arzesh_ajnase_anbarha: TLabel;
    l_arzesh_eftetahie: TLabel;
    l_arzesh_bedehi_be_foroshandegan: TLabel;
    l_arzesh_sod: TLabel;
    Label2: TLabel;
    L_jame_kole_bestankar: TLabel;
    Label7: TLabel;
    L_jame_kole_bedehkar: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    l_arzesh_takhfif: TLabel;
    Label19: TLabel;
    L_arzesh_bedehi_be_kharidar: TLabel;
    Label20: TLabel;
    l_arzesh_talab_az_foroshande: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label8: TLabel;
    l_arzesh_bardash_hazineha: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    CheckBox_takhfif: TCheckBox;
    LMDSpeedButton11321: TLMDSpeedButton;
    LMDSpeedButton2451: TLMDSpeedButton;
    LMDSpeedButton3: TLMDSpeedButton;
    LMDSpeedButton23251: TLMDSpeedButton;
    Label36: TLabel;
    Label37: TLabel;
    l_arzesh_vorodi_be_eftetahie: TLabel;
    LMDSpeedButton222: TLMDSpeedButton;
    Label4: TLabel;
    L_arzeshe_sarmaye: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    l_arzeshe_bardsht_az_sarmaye: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label25: TLabel;
    Label35: TLabel;
    L_arzeshe_bardasht_az_bank: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    l_arzeshe_varize_motefarege_be_bank: TLabel;
    Label42: TLabel;
    LMDSpeedButton1132: TLMDSpeedButton;
    LMDSpeedButton2: TLMDSpeedButton;
    function set_mask_edit(s:string):string;
    procedure taraze_mali;
    procedure FormShow(Sender: TObject);
    procedure CheckBox_takhfifClick(Sender: TObject);
    procedure LMDSpeedButton2451Click(Sender: TObject);
    procedure LMDSpeedButton11321Click(Sender: TObject);
    procedure LMDSpeedButton3Click(Sender: TObject);
    procedure LMDSpeedButton23251Click(Sender: TObject);
    procedure LMDSpeedButton222Click(Sender: TObject);
    procedure LMDSpeedButton1132Click(Sender: TObject);
    procedure LMDSpeedButton1Click(Sender: TObject);
    procedure LMDSpeedButton2Click(Sender: TObject);
    procedure LMDSpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     bestankar,bedehkar,aezeshe_kole_anbarha:real;
  end;

var
  frm_taraze_mali: Tfrm_taraze_mali;

implementation

uses Unt_DataModule_gozaresh_tarkibi, unt_DataM_forosh, unt_datamodule1,
  unt_DataM_final, unt_DataModule_sod, Untdmlistha, unt_DataM_hazineha,
  unt_DataM_joziate_taraz, unt_joziate_bank, unt_joziate_sandog,
  unt_joziate_hazine, unt_joziate_makan, unt_ajnase_vorodi_be_eftetahie,
  DB, Unt_jadval_bedehkarha, Unt_jadvalbedehi;

{$R *.dfm}
procedure Tfrm_taraze_mali.taraze_mali;
var hazineha:real;
begin

 bestankar:=0;
 bedehkar:=0;

 ////////////

  DataModule1.ADOQuery_jame_bedeh_foroshandeha.SQL.Text:='begin tran select  sum(bestankar)as talab_kol  from T_bestankar_bedehkar_foroshande'+' commit tran';
  DataModule1.ADOQuery_jame_bedeh_foroshandeha.Open;

  l_arzesh_talab_az_foroshande.Caption:=set_mask_edit(FloatToStr(DataModule1.ADOQuery_jame_bedeh_foroshandehatalab_kol.AsFloat));

  bestankar:=bestankar+DataModule1.ADOQuery_jame_bedeh_foroshandehatalab_kol.AsFloat;

  ///////////////////


  //////////////////

  DataM_final.ADOQ_jame_takhfife.SQL.Text:='begin tran select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh'+' commit tran';
  DataM_final.ADOQ_jame_takhfife.Open;

  l_arzesh_takhfif.Caption:=set_mask_edit(FloatToStr(DataM_final.ADOQ_jame_takhfifetakhfife_kol.AsFloat));

  if CheckBox_takhfif.Checked then
    bestankar:=bestankar+DataM_final.ADOQ_jame_takhfifetakhfife_kol.AsFloat;

  //////////////////

  {Dmlistha.ADOmohasebe_jame_keraye_kharidha.SQL.Text:='begin tran select sum(keraye) as keray_kol from t_keraye' +' commit tran';
  Dmlistha.ADOmohasebe_jame_keraye_kharidha.Open;

  l_arzesh_keraye.Caption:=set_mask_edit(FloatToStr(Dmlistha.ADOmohasebe_jame_keraye_kharidhakeray_kol.AsFloat));

  bedehkar:=bedehkar+Dmlistha.ADOmohasebe_jame_keraye_kharidhakeray_kol.AsFloat;
  bestankar:=bestankar+Dmlistha.ADOmohasebe_jame_keraye_kharidhakeray_kol.AsFloat; }

  /////////////////// 

 DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.SQL.Text:='begin tran select sum(mablag) as vorod from T_vorod_khoroj_sandogha'+
 ' where  type='+QuotedStr('Ê—ÊœÌ')+
 ' and sandog<>'+QuotedStr('»—œ«‘  „ ›—ﬁÂ')+' commit tran';
 DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.Open;

 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.SQL.Text:='begin tran select sum(mablag) as khoroj from T_vorod_khoroj_sandogha'+
 ' where  type='+QuotedStr('Œ—ÊÃÌ')+
 ' and sandog<>'+QuotedStr('»—œ«‘  „ ›—ﬁÂ')+' commit tran';
 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.Open;

 l_arzeshe_sandogha.Caption:=set_mask_edit(FloatToStr(DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat-DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat));

  bestankar:=bestankar+DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat-DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat;
 //////////////////////

  DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 '+' commit tran';
  DataM_forosh.ADOQ_mande_bank.Open;

  L_arzeshe_mojodie_bankha.Caption:=set_mask_edit(FloatToStr(DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat));

  bestankar:=bestankar+DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat;

  /////////////////////

  DataModule1.ADOQuery_jame_bedehi_be_kharidaran.SQL.Text:='begin tran select  sum(bedehkar)as bedeh_kol from T_bestankar_bedehkar_kharidar'+' commit tran';
  DataModule1.ADOQuery_jame_bedehi_be_kharidaran.Open;

  l_arzesh_bedehi_bedehkaran.Caption:=set_mask_edit(FloatToStr(DataModule1.ADOQuery_jame_bedehi_be_kharidaranbedeh_kol.AsFloat));

  bestankar:=bestankar+DataModule1.ADOQuery_jame_bedehi_be_kharidaranbedeh_kol.AsFloat;

  /////////////////////



 //////////////////////
  aezeshe_kole_anbarha:=0;

  /////////////////////

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='begin tran select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where pass='+QuotedStr('ŒÌ—')+' commit tran';
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

  l_arzesh_check_pas_nashode.Caption:=set_mask_edit(FloatToStr(DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat));

  bestankar:=bestankar+DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat;

  ////////// other places ///////////

  DataModule_sod.ADOQuery_arzesh_ajnase_anbarha.SQL.Text:='begin tran select  sum (tedadanbar*geymatkharid) as arzeshe_kol from Tanbar_jens_kolli'+
  ' where anbarname<>'+QuotedStr('«‰»«— „Ã«“Ì')+
  ' and anbarname<>'+QuotedStr('«‰»«— «›  «ÕÌÂ')+
  ' and anbarname<>'+QuotedStr('«‰»«— ÷«Ì⁄« ')+
  ' commit tran';
  DataModule_sod.ADOQuery_arzesh_ajnase_anbarha.Open;

  bestankar:=bestankar+DataModule_sod.ADOQuery_arzesh_ajnase_anbarhaarzeshe_kol.AsFloat;

  aezeshe_kole_anbarha:=aezeshe_kole_anbarha+DataModule_sod.ADOQuery_arzesh_ajnase_anbarhaarzeshe_kol.AsFloat;

  DataM_joziate_taraz.ADOQ_joziate_makan.SQL.Text:='begin tran insert into t_joziate_makan(makan,arzesh) '+
  ' values('+QuotedStr('»ﬁÌÂ „ò«‰Â«')+','+FloatToStr(DataModule_sod.ADOQuery_arzesh_ajnase_anbarhaarzeshe_kol.AsFloat)+
  ')'+' commit tran';
  DataM_joziate_taraz.ADOQ_joziate_makan.ExecSQL;

  /////////////////// zayeat ////////////////

  DataModule_sod.ADOQuery_arzesh_ajnase_anbarha.SQL.Text:='begin tran select  sum (tedadanbar*geymatkharid) as arzeshe_kol from Tanbar_jens_kolli'+
  ' where anbarname='+QuotedStr('«‰»«— ÷«Ì⁄« ')+
  ' commit tran';
  DataModule_sod.ADOQuery_arzesh_ajnase_anbarha.Open;

  bestankar:=bestankar+DataModule_sod.ADOQuery_arzesh_ajnase_anbarhaarzeshe_kol.AsFloat;

  aezeshe_kole_anbarha:=aezeshe_kole_anbarha+DataModule_sod.ADOQuery_arzesh_ajnase_anbarhaarzeshe_kol.AsFloat;

  DataM_joziate_taraz.ADOQ_joziate_makan.SQL.Text:='begin tran insert into t_joziate_makan(makan,arzesh) '+
  ' values('+QuotedStr('«‰»«— ÷«Ì⁄« ')+','+FloatToStr(DataModule_sod.ADOQuery_arzesh_ajnase_anbarhaarzeshe_kol.AsFloat)+
  ')'+' commit tran';
  DataM_joziate_taraz.ADOQ_joziate_makan.ExecSQL;

  ///////////////////// majazi ///////////////

  DataModule_sod.ADOQuery_arzesh_ajnase_anbare_majazi.SQL.Text:='begin tran select  sum (tedadanbar*geymatkharid) as arzeshe_kol from t_anbar_majazi'+' commit tran';

  DataModule_sod.ADOQuery_arzesh_ajnase_anbare_majazi.Open;

  bestankar:=bestankar+DataModule_sod.ADOQuery_arzesh_ajnase_anbare_majaziarzeshe_kol.AsFloat;

  aezeshe_kole_anbarha:=aezeshe_kole_anbarha+DataModule_sod.ADOQuery_arzesh_ajnase_anbare_majaziarzeshe_kol.AsFloat;

  l_arzesh_ajnase_anbarha.Caption:=set_mask_edit(FloatToStr(aezeshe_kole_anbarha));

  DataM_joziate_taraz.ADOQ_joziate_makan.SQL.Text:='begin tran insert into t_joziate_makan(makan,arzesh) '+
  ' values('+QuotedStr('«‰»«— „Ã«“Ì')+','+FloatToStr(DataModule_sod.ADOQuery_arzesh_ajnase_anbare_majaziarzeshe_kol.AsFloat)+
  ')'+' commit tran';
  DataM_joziate_taraz.ADOQ_joziate_makan.ExecSQL;

  ////////////////////

  DataModule_sod.ADOQuery_arzesh_ajnase_anbar_zayeat.SQL.Text:='begin tran select  sum (tedadanbar*geymatkharid) as arzeshe_kol from Tanbar_jens_kolli'+
  ' where anbarname='+QuotedStr('«‰»«— «›  «ÕÌÂ')+' commit tran';
  DataModule_sod.ADOQuery_arzesh_ajnase_anbar_zayeat.Open;

  l_arzesh_eftetahie.Caption:=set_mask_edit(FloatToStr(DataModule_sod.ADOQuery_arzesh_ajnase_anbar_zayeatarzeshe_kol.AsFloat));

  bestankar:=bestankar+DataModule_sod.ADOQuery_arzesh_ajnase_anbar_zayeatarzeshe_kol.AsFloat;


  DataM_joziate_taraz.ADOQ_joziate_makan.SQL.Text:='begin tran insert into t_joziate_makan(makan,arzesh) '+
  ' values('+QuotedStr('«‰»«— «›  «ÕÌÂ')+','+FloatToStr(DataModule_sod.ADOQuery_arzesh_ajnase_anbar_zayeatarzeshe_kol.AsFloat)+
  ')'+' commit tran';
  DataM_joziate_taraz.ADOQ_joziate_makan.ExecSQL;

  ////////////////////

 L_jame_kole_bestankar.Caption:=set_mask_edit(FloatToStr(bestankar));






   ////////////////////////////////
  //////// bedeh kar //////////////

    DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 '+
    ' where sharh like '+QuotedStr('Ê«—Ì“ „ ›—ﬁÂ'+'%')+
    ' commit tran';
    DataM_forosh.ADOQ_mande_bank.Open;

    l_arzeshe_varize_motefarege_be_bank.Caption:=set_mask_edit(FloatToStr(DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat));

    bedehkar:=bedehkar+DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat;

 /////////////////////////////////


    DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 '+
    ' where sharh like '+QuotedStr('»—œ«‘ '+'%')+
    ' commit tran';
    DataM_forosh.ADOQ_mande_bank.Open;

    L_arzeshe_bardasht_az_bank.Caption:=set_mask_edit(FloatToStr(-DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat));

    bedehkar:=bedehkar+DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat;


  ///////////////////////////////////////


 DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.SQL.Text:='begin tran select sum(mablag) as vorod from T_vorod_khoroj_sandogha'+
 ' where  type='+QuotedStr('Ê—ÊœÌ')+
 ' and sandog='+QuotedStr('”—„«ÌÂ')+
 ' and tozih not like '+QuotedStr('Ê—Êœ «“'+'%')+' and tozih not like '+QuotedStr(' Ê«—Ì“ «“'+'%')+
 ' commit tran';
 DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.Open;

 L_arzeshe_sarmaye.Caption:=set_mask_edit(FloatToStr(DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat));
 bedehkar:=bedehkar+DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat;

 /////////////////////////////////////////

  DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.SQL.Text:='begin tran select sum(mablag) as khoroj from T_vorod_khoroj_sandogha'+
 ' where  type='+QuotedStr('Œ—ÊÃÌ')+
 ' and sandog='+QuotedStr('”—„«ÌÂ')+
 ' and tozih like '+QuotedStr('»—œ«‘  ”—„«ÌÂ'+'%')+
 ' commit tran';
 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.Open;

 l_arzeshe_bardsht_az_sarmaye.Caption:=set_mask_edit(FloatToStr(DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat));
 bedehkar:=bedehkar-DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat;


  /////////////////////
  DataM_joziate_taraz.ADOQ_jame_arzeshe_vorodi_be_etetahie.SQL.Text:='select sum(tedadanbar*geymatkharid) as arzeshe_kol '+
  ' from T_aezeshe_ajnase_vorodi_be_anbare_eftetahie ';
  DataM_joziate_taraz.ADOQ_jame_arzeshe_vorodi_be_etetahie.Open;

  l_arzesh_vorodi_be_eftetahie.Caption:=set_mask_edit(FloatToStr(DataM_joziate_taraz.ADOQ_jame_arzeshe_vorodi_be_etetahiearzeshe_kol.AsFloat));

  bedehkar:=bedehkar+DataM_joziate_taraz.ADOQ_jame_arzeshe_vorodi_be_etetahiearzeshe_kol.AsFloat;


  DataModule1.ADOQuery_jame_talab_kharidaran.SQL.Text:='begin tran select  sum(bestankar)as bestankar_kol from T_bestankar_bedehkar_kharidar'+' commit tran';
  DataModule1.ADOQuery_jame_talab_kharidaran.Open;

  L_arzesh_bedehi_be_kharidar.Caption:=set_mask_edit(FloatToStr(DataModule1.ADOQuery_jame_talab_kharidaranbestankar_kol.AsFloat));

  bedehkar:=bedehkar+DataModule1.ADOQuery_jame_talab_kharidaranbestankar_kol.AsFloat;

  ///////////////////

  DataModule1.ADOQuery_jame_bedehi_be_foroshandeha.SQL.Text:='begin tran select  sum(bedehkar)as bedeh_kol from T_bestankar_bedehkar_foroshande'+' commit tran';
  DataModule1.ADOQuery_jame_bedehi_be_foroshandeha.Open;

  l_arzesh_bedehi_be_foroshandegan.Caption:=set_mask_edit(FloatToStr(DataModule1.ADOQuery_jame_bedehi_be_foroshandehabedeh_kol.AsFloat));

  bedehkar:=bedehkar+DataModule1.ADOQuery_jame_bedehi_be_foroshandehabedeh_kol.AsFloat;

  ///////////////////

 { DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='begin tran select sum(mablagh_check)as check_kol from T_pardakht_check_kharid'+' commit tran';
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  l_arzesh_check_pardakhti.Caption:=set_mask_edit(FloatToStr(DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsFloat));

  bedehkar:=bedehkar+DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsFloat; }

  //////////////////

  DataModule_sod.ADOQuery_sode_kol.SQL.Text:='begin tran select  sum(tedad_kol*(geymat_vahed-geymate_kharid)) as sode_kol'+
  ' from forosh_jens'+' commit tran';
  DataModule_sod.ADOQuery_sode_kol.Open;

  l_arzesh_sod.Caption:=set_mask_edit(FloatToStr(DataModule_sod.ADOQuery_sode_kolsode_kol.AsFloat));

  bedehkar:=bedehkar+DataModule_sod.ADOQuery_sode_kolsode_kol.AsFloat;

  /////////////////

 { DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Text:='begin tran select sum(nagd)as nagd_kol from t_pardakht_nagd_kharid'+' commit tran';
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.Open;

  l_arzesh_pardakhte_nagd_be_foroshande.Caption:=set_mask_edit(FloatToStr(DataM_final.ADOQ_jame_t_pardakht_nagd_kharidnagd_kol.AsFloat));

  bedehkar:=bedehkar+DataM_final.ADOQ_jame_t_pardakht_nagd_kharidnagd_kol.AsFloat;}

  /////////////////// 

{ DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.SQL.Text:='begin tran select sum(mablag) as vorod from T_vorod_khoroj_sandogha'+
 ' where  type='+QuotedStr('Ê—ÊœÌ')+' and sandog='+QuotedStr('»—œ«‘ ');
 DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.Open;

 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.SQL.Text:='begin tran select sum(mablag) as khoroj from T_vorod_khoroj_sandogha'+
 ' where  type='+QuotedStr('Œ—ÊÃÌ')+' and sandog='+QuotedStr('»—œ«‘ ');
 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.Open;

 l_arzesh_bardash_az_sandog.Caption:=set_mask_edit(FloatToStr(DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat-DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat));

  bedehkar:=bedehkar+DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat-DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat;}

  //////////////////

  

  ///////////////////  hazine ha /////////////////

  hazineha:=0;

  {DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bedehkar) as mande_kol from t_bank1 '+
  ' where sharh like '+QuotedStr('»—œ«‘  - „ ›—ﬁÂ '+'%');
  DataM_forosh.ADOQ_mande_bank.Open;

  bedehkar:=bedehkar+DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat;

  hazineha:=hazineha+DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat; }


 DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.SQL.Text:='begin tran select sum(mablag) as vorod from T_vorod_khoroj_sandogha'+
 ' where  type='+QuotedStr('Ê—ÊœÌ')+
 ' and sandog='+QuotedStr('»—œ«‘  „ ›—ﬁÂ')+
 ' and tozih not like '+QuotedStr('»—œ«‘  ”—„«ÌÂ'+'%')+
 ' and tozih not like '+QuotedStr(' Ê«—Ì“ «“'+'%')+
 ' commit tran';
 DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.Open;

 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.SQL.Text:='begin tran select sum(mablag) as khoroj from T_vorod_khoroj_sandogha'+
 ' where  type='+QuotedStr('Œ—ÊÃÌ')+
 ' and sandog='+QuotedStr('»—œ«‘  „ ›—ﬁÂ')+
 ' and tozih not like '+QuotedStr('»—œ«‘  ”—„«ÌÂ'+'%')+
 ' and tozih not like '+QuotedStr(' Ê«—Ì“ «“'+'%')+
 ' commit tran';
 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.Open;

 hazineha:=hazineha+DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat-DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat;

     ////////////


  DataM_hazineha.ADOQ_jame_kole_hazineha.SQL.Text:='select sum(geymatforosh_koli) as kole_hazineha from T_Hazine_Anjirestan ';
  DataM_hazineha.ADOQ_jame_kole_hazineha.Open;

  //DataM_hazineha.ADOQ_jame_kole_hazineha.SQL.Text:='begin tran select sum(mablag) as kole_hazineha from t_hazineha '+' commit tran';
  //DataM_hazineha.ADOQ_jame_kole_hazineha.Open;

  hazineha:=hazineha+DataM_hazineha.ADOQ_jame_kole_hazinehakole_hazineha.AsFloat;

  ///////////////////////////////////////////////

  l_arzesh_bardash_hazineha.Caption:=set_mask_edit(FloatToStr(hazineha));


  bedehkar:=bedehkar-hazineha;
  L_jame_kole_bedehkar.Caption:=set_mask_edit(FloatToStr(bedehkar));
  

end;


function Tfrm_taraze_mali.set_mask_edit(s:string):string;
var i,j:integer;
    s2:string;
    val:real;
    flag:boolean;
    ashar:real;
begin
  s2:=s;
 { val:=StrToFloat(s);

  if Floor(val)=val then
  begin
    flag:=false;
  end
  else
  begin
    flag:=true;
    ashar:=val-Floor(val);
    val:=Floor(val);
    ashar:=RoundTo(ashar,-3)
  end;


  s:=FloatToStr(val);

  for i:=1 to (15-strlen(pchar(s)))do
    s:='0'+s;

  i:=1;
  j:=1;
  while i<=5 do
  begin
    if i<>5 then
      s2:=s2+s[j]+s[j+1]+s[j+2]+'.'
    else
      s2:=s2+s[j]+s[j+1]+s[j+2];

   j:=j+3;
   i:=i+1;
  end;

  if flag then
  begin
    s:=FloatToStr(ashar);
    s2:=s2+'.'+s[3]+s[4];
  end
  else
    s2:=s2+'.00'; }

  set_mask_edit:=s2;
end;

procedure Tfrm_taraze_mali.FormShow(Sender: TObject);
begin
  DataM_joziate_taraz.ADOQ_joziate_makan.SQL.Text:='begin tran delete from t_joziate_makan  commit tran';
  DataM_joziate_taraz.ADOQ_joziate_makan.ExecSQL;

  CheckBox_takhfif.Checked:=true;
  taraze_mali;
  //frm_taraze_mali.Print;
end;

procedure Tfrm_taraze_mali.CheckBox_takhfifClick(Sender: TObject);
begin
  if not CheckBox_takhfif.Checked then
  begin
      bestankar:=bestankar-DataM_final.ADOQ_jame_takhfifetakhfife_kol.AsFloat;
      L_jame_kole_bestankar.Caption:=set_mask_edit(FloatToStr(bestankar));
  end
  else
  begin
      bestankar:=bestankar+DataM_final.ADOQ_jame_takhfifetakhfife_kol.AsFloat;
      L_jame_kole_bestankar.Caption:=set_mask_edit(FloatToStr(bestankar));
  end;


end;

procedure Tfrm_taraze_mali.LMDSpeedButton2451Click(Sender: TObject);
var mojodi_kol:real ;
begin

    DataM_joziate_taraz.ADOQ_joziate_sandogha.SQL.Text:='delete from T_joziate_sandog ';
    DataM_joziate_taraz.ADOQ_joziate_sandogha.ExecSQL;

    DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='begin tran select * from T_sandog_name where sandog<>'+
    QuotedStr('»—œ«‘  „ ›—ﬁÂ')+
    ' order by sandog';
    DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;

    DataModule_gozaresh_tarkibi.ADOQuery_sandog.First;
    while not DataModule_gozaresh_tarkibi.ADOQuery_sandog.Eof do
    begin
      mojodi_kol:=0;
      DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.SQL.Text:='begin tran begin tran select sum(mablag) as vorod from T_vorod_khoroj_sandogha'+
      ' where sandog='+QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_sandogsandog.AsString)+' and type='+QuotedStr('Ê—ÊœÌ')+' commit tran';
      DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.Open;


      DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.SQL.Text:='begin tran begin tran select sum(mablag) as khoroj from T_vorod_khoroj_sandogha'+
      ' where sandog='+QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_sandogsandog.AsString)+' and type='+QuotedStr('Œ—ÊÃÌ')+' commit tran';
      DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.Open;

      mojodi_kol:=DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat-DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat;

      DataM_joziate_taraz.ADOQ_joziate_sandogha.SQL.Text:='begin tran insert into T_joziate_sandog(sandog,mablag)values('+
      QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_sandogsandog.AsString)+','+FloatToStr(mojodi_kol)+')'+' commit tran';
      DataM_joziate_taraz.ADOQ_joziate_sandogha.ExecSQL;

      DataModule_gozaresh_tarkibi.ADOQuery_sandog.Next;
    end;

    DataM_joziate_taraz.ADOQ_joziate_sandogha.SQL.Text:='begin tran select * from T_joziate_sandog order by sandog';
    DataM_joziate_taraz.ADOQ_joziate_sandogha.Open;

    frm_joziate_sandog.ShowModal;
end;

procedure Tfrm_taraze_mali.LMDSpeedButton11321Click(Sender: TObject);
var   mande_bank:real;
begin

  DataM_joziate_taraz.ADOQ_joziate_bank.SQL.Text:='delete from t_joziate_bank  ';
  DataM_joziate_taraz.ADOQ_joziate_bank.ExecSQL;

  Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='begin tran select * from T_shomare_hesabe_banki order by bank_shobe_sh_hesab';
  Dmlistha.ADOQuery_shomare_hesabe_banki.Open;

  Dmlistha.ADOQuery_shomare_hesabe_banki.First;
  while not Dmlistha.ADOQuery_shomare_hesabe_banki.Eof do
  begin
          mande_bank:=0;
          DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
          QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString)+' commit tran';
          DataM_forosh.ADOQ_mande_bank.Open;
          
          mande_bank:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;

          DataM_joziate_taraz.ADOQ_joziate_bank.SQL.Text:='begin tran insert into t_joziate_bank(bank,mojodi)'+
          ' values('+QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString)+
          ','+FloatToStr(mande_bank)+')'+' commit tran';
          DataM_joziate_taraz.ADOQ_joziate_bank.ExecSQL;

          Dmlistha.ADOQuery_shomare_hesabe_banki.Next;
  end;

  DataM_joziate_taraz.ADOQ_joziate_bank.SQL.Text:='begin tran select * from t_joziate_bank order by bank ';
  DataM_joziate_taraz.ADOQ_joziate_bank.Open;

  frm_joziate_bank.ShowModal;

end;

procedure Tfrm_taraze_mali.LMDSpeedButton3Click(Sender: TObject);
var hazine,mojodi_kol:real;
begin

  DataM_joziate_taraz.ADOQ_joziate_hazineha.SQL.Text:='delete from t_joziate_hazine ';
  DataM_joziate_taraz.ADOQ_joziate_hazineha.ExecSQL;


      mojodi_kol:=0;
      DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.SQL.Text:='begin tran begin tran select sum(mablag) as vorod from T_vorod_khoroj_sandogha'+
      ' where sandog='+QuotedStr('»—œ«‘  „ ›—ﬁÂ')+' and type='+QuotedStr('Ê—ÊœÌ')+
      ' and tozih not like '+QuotedStr('»—œ«‘  ”—„«ÌÂ'+'%')+
      ' commit tran';
      DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.Open;


      DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.SQL.Text:='begin tran select sum(mablag) as khoroj from T_vorod_khoroj_sandogha'+
      ' where sandog='+QuotedStr('»—œ«‘  „ ›—ﬁÂ')+' and type='+QuotedStr('Œ—ÊÃÌ')+
      ' and tozih not like '+QuotedStr('»—œ«‘  ”—„«ÌÂ'+'%')+
      ' commit tran';
      DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.Open;

      mojodi_kol:=DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat-DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat;

    DataM_joziate_taraz.ADOQ_joziate_hazineha.SQL.Text:='begin tran insert into t_joziate_hazine(hazine,mablag) values'+
    '('+QuotedStr('»—œ«‘  „ ›—ﬁÂ «“ ’‰œÊﬁÂ«(»Ã“ ”—„«ÌÂ)')+','+FloatToStr(mojodi_kol)+')'+' commit tran';
    DataM_joziate_taraz.ADOQ_joziate_hazineha.ExecSQL; 

      

  DataM_hazineha.ADOQ_onvane_hazineha1.SQL.Text:='begin tran select * from t_onvane_hazineha order by onvane_hazine  commit tran';
  DataM_hazineha.ADOQ_onvane_hazineha1.Open;
  DataM_hazineha.ADOQ_onvane_hazineha1.First;

  while not DataM_hazineha.ADOQ_onvane_hazineha1.Eof do
  begin
    DataM_hazineha.ADOQ_jame_kole_hazineha.SQL.Text:='begin tran  select sum(geymatforosh_koli) as kole_hazineha from T_Hazine_Anjirestan '+
    ' where calaname='+QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString)+
    ' commit tran';
    DataM_hazineha.ADOQ_jame_kole_hazineha.Open;

    hazine:=DataM_hazineha.ADOQ_jame_kole_hazinehakole_hazineha.AsFloat;

    DataM_joziate_taraz.ADOQ_joziate_hazineha.SQL.Text:='begin tran insert into t_joziate_hazine(hazine,mablag) values'+
    '('+QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString)+','+FloatToStr(hazine)+')'+' commit tran';
    DataM_joziate_taraz.ADOQ_joziate_hazineha.ExecSQL;

    DataM_hazineha.ADOQ_onvane_hazineha1.Next;
  end;

   DataM_joziate_taraz.ADOQ_joziate_hazineha.SQL.Text:='begin tran select * from t_joziate_hazine';
   DataM_joziate_taraz.ADOQ_joziate_hazineha.Open;
   frm_joziate_hazine.ShowModal;


end;

procedure Tfrm_taraze_mali.LMDSpeedButton23251Click(Sender: TObject);
begin
  frm_joziate_makan.ShowModal;
end;

procedure Tfrm_taraze_mali.LMDSpeedButton222Click(Sender: TObject);
begin
  frm_ajnase_vorodi_be_eftetahie.ShowModal;
end;

procedure Tfrm_taraze_mali.LMDSpeedButton1132Click(Sender: TObject);
begin
  Frm_jadval_bedehkarha.ShowModal;
end;

procedure Tfrm_taraze_mali.LMDSpeedButton1Click(Sender: TObject);
begin
   Frm_jedvalbedeh.ShowModal;
end;

procedure Tfrm_taraze_mali.LMDSpeedButton2Click(Sender: TObject);
begin
   Frm_jedvalbedeh.ShowModal;
end;

procedure Tfrm_taraze_mali.LMDSpeedButton4Click(Sender: TObject);
begin
  Frm_jadval_bedehkarha.ShowModal;
end;

end.
