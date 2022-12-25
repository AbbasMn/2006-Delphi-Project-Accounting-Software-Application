unit unt_eslahe_forosh_hazf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB;

type
  Tfrm_eslahe_forosh_hazf = class(TForm)
    GroupBox1: TGroupBox;
    Label9: TLabel;
    DBText_t_jam: TDBText;
    Label10: TLabel;
    DBT_mab_gabl: TDBText;
    Label4: TLabel;
    DBT_m_check: TDBText;
    Button1: TButton;
    Label5: TLabel;
    L_bestankar: TLabel;
    L_bedehkae: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DataSource3: TDataSource;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBt_g_jens: TDBText;
    DataSource4: TDataSource;
    l_taeed_eslah: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DataSource5: TDataSource;
    procedure bedeh_talab_after_eslah;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure update_bedeh_talab_va_bedehi_kol_kharidar;
    procedure update_bedehi_kharidar_pas_az_bedekar_shodan(kol_p,g_gabl,g_jadid,g_j:string);

    procedure insert_gozaresh_az_hazfe_jens_az_factor;
    procedure execute_hazfe_jens_az_forosh_stored_procedure(kol_p,g_gabl,g_jadid,g_j:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_forosh_hazf: Tfrm_eslahe_forosh_hazf;

implementation

uses Unt_DataModule_gozaresh_tarkibi, unt_eslah_forosh, unt_datamodule2,
  unt_DataM_final, unt_main, Unt_dmanbar, Untdmanbarexit,
  unt_datam_sp_eslahe_forosh;

{$R *.dfm}
procedure Tfrm_eslahe_forosh_hazf.execute_hazfe_jens_az_forosh_stored_procedure(kol_p,g_gabl,g_jadid,g_j:string);
var anbar,s,type_:string;
    nagd_gabl,kol_pardakht,nagd,talab_eslah,bedeh_eslah,par,par_takhfif:real;
    temp,tedadkli_pas_az_tafazol,t_kol_anbar,t_j_anbar,type_update_anbar_koli:real;
begin
      anbar:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showanbarname.AsString;

      s:=' Ê—Êœ Ã‰” »Â „ò«‰ '+anbar+' »Â ⁄·  Õ–› ò«„· Ã‰” «“ ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' Œ—Ìœ«— '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;
      type_:='Ê—ÊœÌ - Õ–› ‘œ‰ ò«„· Ã‰” «“ ›«ò Ê— ›—Ê‘';


/////////////////////////////////////////////////////////
par_takhfif:=0;
if DataModule_gozaresh_tarkibi.ADO_fac_roz_show.RecordCount>1 then

  kol_p:=FloatToStr(StrToFloat(kol_p)+DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat);

if DataModule_gozaresh_tarkibi.ADO_fac_roz_show.RecordCount=1 then
begin
  g_gabl:=FloatToStr(StrToFloat(g_gabl)-DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat);
  par_takhfif:=1;

  {DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh'+
  ' set mablagh_takhfif='+FloatToStr(0)+',darsade_takhfif='+FloatToStr(0)+
  ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
  DataM_final.ADOQ_takhfife_forosh.ExecSQL;  }
end;

if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)<StrToFloat(g_jadid)) then //1
   begin
        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(g_jadid);
        par:=1;
   end;


 if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)>StrToFloat(g_jadid))and(StrToFloat(kol_p)<StrToFloat(g_gabl))and(StrToFloat(g_jadid)<>0) then  //2
   begin
        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(kol_p);

        talab_eslah:=StrToFloat(kol_p)-StrToFloat(g_jadid);

        par:=2;

   end;


 if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)>StrToFloat(g_jadid))and(StrToFloat(kol_p)=StrToFloat(g_gabl))and(StrToFloat(g_jadid)<>0)then //7
 //and(StrToFloat(g_jadid)<>0) then  //7
   begin

        talab_eslah:=StrToFloat(kol_p)-StrToFloat(g_jadid);
        par:=7;
   end;

if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)=StrToFloat(g_jadid)) then //3
//and(StrToFloat(g_jadid)<>0) then //3
   begin
        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(g_jadid);
        par:=3;
   end;


if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)>StrToFloat(g_gabl))and(StrToFloat(g_jadid)<>0) then//4
   begin

        talab_eslah:=StrToFloat(g_j);
        par:=4;
   end;

if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)<=StrToFloat(g_gabl))and(StrToFloat(g_jadid)=0)and(StrToFloat(kol_p)<>0) then//5
   begin
        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(kol_p);

        talab_eslah:=StrToFloat(kol_p);
        par:=5;
   end;


 if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(g_jadid)=0)and(StrToFloat(kol_p)>StrToFloat(g_gabl)) then  //6
   begin

        talab_eslah:=StrToFloat(g_gabl);
        par:=6;
   end;



    Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli  where calacod='+DataModule_gozaresh_tarkibi.ADO_fac_roz_showcalacod.AsString+
    ' and anbarname='+QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showanbarname.AsString);
    Dmanbarexite.ADOanbarcala.Open;

    t_kol_anbar:=Dmanbarexite.ADOanbarcala.Fields[10].AsFloat;

    t_j_anbar:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;

    temp:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_kol.AsFloat;

    if DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat <>0 then
    begin
      tedadkli_pas_az_tafazol:=int((t_j_anbar+temp)/DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat);
      type_update_anbar_koli:=1;
    end
      else
        begin
          type_update_anbar_koli:=2;
        end;

//////////////////////////////////////////////
    frm_main.l_last_op.Caption:=' Õ–› Ã‰” '+DataModule_gozaresh_tarkibi.ADO_fac_roz_showjens.AsString+' «“ ›«ò Ê— ‘„«—Â '+
    DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' Œ—Ìœ«— '+
    DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[0].Value:=L_bedehkae.Caption;//@bedehkar float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[1].Value:=L_bestankar.Caption;//@bestankar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[2].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString;//@code_kharidar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[3].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;//@sh_factor float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[4].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString;//@tatikh_forosh nvarchar(12),

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[5].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showjens.AsString;//@calaname nvarchar(41),




   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[6].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad.AsString;//@tedade_jozi float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[7].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showcalacod.AsString;//@calacod float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[8].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showvahed_koli.AsString;//@vahed_koli nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[9].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showvahed_jozei.AsString;//@vahed_jozi nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[10].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_koli.AsString;//@tedade_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[11].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsString;//@tedad_jozi_da_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[12].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_kol.AsString;//@tedad_kole_jabejaei float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[13].Value:=s;//@tozihe_anbar nvarchar(200),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[14].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showbarcod.AsString;//@barcod nvarchar(15),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[15].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showcode_sherkati.AsString;//@code_sherkati nvarchar(11),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[16].Value:=anbar;//@anbarname nvarchar(30),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[17].Value:=type_;//@type_kh_az_anbar nvarchar(100),



   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[18].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showid.AsString;//@id float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[19].Value:=frm_main.l_last_op.Caption;//@amaliat nvarchar(1000),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[20].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[21].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[22].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;//@shahrforoshande nvarchar(100),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[23].Value:=tedadkli_pas_az_tafazol;//@tedadkli_pas_az_tafazol float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[24].Value:=temp;//@temp float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[25].Value:=type_update_anbar_koli;//@type_update_anbar_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[26].Value:=bedeh_eslah;//@bedeh_eslah float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[27].Value:=talab_eslah;//@talab_eslah float
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[28].Value:=par;//@par float
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.Parameters[29].Value:=par_takhfif;//@par_takhfif float
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_hazf.ExecProc;

   frm_eslah_forosh.aghlame_factor;
   MessageBox(Handle,pchar('Ã‰” «‰ Œ«»Ì «“ ›«ò Ê— ›—Ê‘ Õ–› ê—œÌœ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;


procedure Tfrm_eslahe_forosh_hazf.insert_gozaresh_az_hazfe_jens_az_factor;
var anbar,s,type_:string;
begin
    anbar:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showanbarname.AsString;

      s:=' Ê—Êœ Ã‰” »Â „ò«‰ '+anbar+' »Â ⁄·  Õ–› ò«„· Ã‰” «“ ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' Œ—Ìœ«— '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;
      type_:='Ê—ÊœÌ - Õ–› ‘œ‰ ò«„· Ã‰” «“ ›«ò Ê— ›—Ê‘';



    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showjens.AsString)+','+
    DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad.AsString+','+
    DataModule_gozaresh_tarkibi.ADO_fac_roz_showcalacod.AsString+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showvahed_koli.AsString)+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showvahed_jozei.AsString)+','+

    DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_koli.AsString+','+
    DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsString+','+
    DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+','+

    DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_kol.AsString+','+


    QuotedStr(s)+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showbarcod.AsString)+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showcode_sherkati.AsString)+','+

    QuotedStr(anbar)+','+
    QuotedStr(frm_main.LMDClock1.Digital.Caption)+','+
    QuotedStr(type_)+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;
end;
///////////
procedure Tfrm_eslahe_forosh_hazf.update_bedehi_kharidar_pas_az_bedekar_shodan(kol_p,g_gabl,g_jadid,g_j:string);
var nagd_gabl,kol_pardakht,nagd,talab_eslah,bedeh_eslah:real;
begin

/////////////////////////////////////////////////////////
if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)<StrToFloat(g_jadid)) then //1
   begin
        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(g_jadid);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+' where shahrforoshande='+
       QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;

       DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+
       FloatToStr(bedeh_eslah)+' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+
       FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
       DataM_final.ADOQ_takhfife_forosh.ExecSQL;
   end;

 if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)>StrToFloat(g_jadid))and(StrToFloat(kol_p)<StrToFloat(g_gabl))and(StrToFloat(g_jadid)<>0) then  //2
   begin
        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(kol_p);

        talab_eslah:=StrToFloat(kol_p)-StrToFloat(g_jadid);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+
       ',talab=talab+'+FloatToStr(talab_eslah)+' where shahrforoshande='+
       QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;

       DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+
       FloatToStr(bedeh_eslah)+' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+
       FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
       DataM_final.ADOQ_takhfife_forosh.ExecSQL;
   end;


 if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)>StrToFloat(g_jadid))and(StrToFloat(kol_p)=StrToFloat(g_gabl))and(StrToFloat(g_jadid)<>0)then //7
 //and(StrToFloat(g_jadid)<>0) then  //7
   begin

        talab_eslah:=StrToFloat(kol_p)-StrToFloat(g_jadid);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab+'+
       FloatToStr(talab_eslah)+' where shahrforoshande='+
       QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
   end;

if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)=StrToFloat(g_jadid)) then
//and(StrToFloat(g_jadid)<>0) then //3
   begin
        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(g_jadid);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;

       DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+
       FloatToStr(bedeh_eslah)+' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+
       FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
       DataM_final.ADOQ_takhfife_forosh.ExecSQL;
   end;


if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)>StrToFloat(g_gabl))and(StrToFloat(g_jadid)<>0) then//4
   begin

        talab_eslah:=StrToFloat(g_j);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab+'+FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
   end;

if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)<=StrToFloat(g_gabl))and(StrToFloat(g_jadid)=0)and(StrToFloat(kol_p)<>0) then//5
   begin
        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(kol_p);

        talab_eslah:=StrToFloat(kol_p);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+
       ',talab=talab+'+FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;

       DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+
       FloatToStr(bedeh_eslah)+' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+
       FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
       DataM_final.ADOQ_takhfife_forosh.ExecSQL;       
   end;


 if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(g_jadid)=0)and(StrToFloat(kol_p)>StrToFloat(g_gabl)) then  //6
   begin

        talab_eslah:=StrToFloat(g_gabl);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab+'+
       FloatToStr(talab_eslah)+' where shahrforoshande='+
       QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
   end;
 {if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(g_jadid)=0)and(StrToFloat(kol_p)<StrToFloat(g_gabl)) then  //6 prim
   begin

        talab_eslah:=StrToFloat(kol_p);

        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(kol_p);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab+'+
       FloatToStr(talab_eslah)+',bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+' where shahrforoshande='+
       QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
   end; }
end;

/////////////////////////////////////////////////////////////////
procedure Tfrm_eslahe_forosh_hazf.update_bedeh_talab_va_bedehi_kol_kharidar;
begin
  DataModule2.adotasfie.SQL.Text:='update bedeh_bestan set bedeh='+L_bedehkae.Caption+
  ',talab='+L_bestankar.Caption+
  '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+
  ' and sh_khaid='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+
  ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString);

  DataModule2.adotasfie.ExecSQL;

end;

procedure Tfrm_eslahe_forosh_hazf.bedeh_talab_after_eslah;
var check,kol_pardakht,nagd:string;
begin
if DataModule_gozaresh_tarkibi.ADO_fac_roz_show.RecordCount>0 then
begin
    if (DBT_m_check.Caption='0') or (DBT_m_check.Caption='') then
             check:='0'
         else
          check:=DBT_m_check.Caption;

    if (DBT_mab_gabl.Caption='') or(DBT_mab_gabl.Caption='0')then
      nagd:='0'
    else
      nagd:=DBT_mab_gabl.Caption;


  if DataModule_gozaresh_tarkibi.ADO_fac_roz_show.RecordCount>1 then
      kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat)
  else
       kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd));

      sleep(100);

         if StrToFloat(kol_pardakht)>(StrToFloat(DBText_t_jam.Caption)-StrToFloat(DBt_g_jens.Caption)) then
         begin
          L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-(StrToFloat(DBText_t_jam.Caption)-StrToFloat(DBt_g_jens.Caption)));
          L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<(StrToFloat(DBText_t_jam.Caption)-StrToFloat(DBt_g_jens.Caption)) then
         begin
           L_bedehkae.Caption:=FloatToStr((StrToFloat(DBText_t_jam.Caption)-StrToFloat(DBt_g_jens.Caption))-StrToFloat(kol_pardakht));
           L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=(StrToFloat(DBText_t_jam.Caption)-StrToFloat(DBt_g_jens.Caption)) then
         begin
          L_bestankar.Caption:='0';
          L_bedehkae.Caption:='0';

         end;
end
else
begin
  MessageBox(Handle,pchar('›—Ê‘Ì »—«Ì Õ–› «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;
end;

procedure Tfrm_eslahe_forosh_hazf.FormShow(Sender: TObject);
begin
//  frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;
  bedeh_talab_after_eslah;
end;

procedure Tfrm_eslahe_forosh_hazf.Button1Click(Sender: TObject);
var p_gabl,g_jadid,p_n,p_c,g_j,g_k:string;
begin
    if(DBText_t_jam.Caption='')or(DBText_t_jam.Caption='0') then
      g_k:='0'
    else
      g_k:=DBText_t_jam.Caption;
    ///////////////////////////////

    if(DBt_g_jens.Caption='')or(DBt_g_jens.Caption='0') then
      g_j:='0'
    else
      g_j:=DBt_g_jens.Caption;
    //////////////////////////////
    if(DBT_mab_gabl.Caption='')or(DBT_mab_gabl.Caption='0') then
      p_n:='0'
    else
      p_n:=DBT_mab_gabl.Caption;
    //////////////////////////////
    if(DBT_m_check.Caption='')or(DBT_m_check.Caption='0') then
      p_c:='0'
    else
      p_c:=DBT_m_check.Caption;
   //////////////////////////////
    g_jadid:=FloatToStr(StrToFloat(g_k)-StrToFloat(g_j));

    p_gabl:=FloatToStr(StrToFloat(p_n)+StrToFloat(p_c));

    frm_eslahe_forosh_hazf.l_taeed_eslah.Caption:='yes';


    execute_hazfe_jens_az_forosh_stored_procedure(p_gabl,g_k,g_jadid,g_j);

    frm_eslah_forosh.aghlame_factor;
    frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
    ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    DataM_final.ADOQ_takhfife_forosh.Open;    

    {insert_gozaresh_az_hazfe_jens_az_factor;
    update_bedeh_talab_va_bedehi_kol_kharidar;
    update_bedehi_kharidar_pas_az_bedekar_shodan(p_gabl,g_k,g_jadid,g_j);


    frm_main.l_last_op.Caption:=' Õ–› Ã‰” '+DataModule_gozaresh_tarkibi.ADO_fac_roz_showjens.AsString+' «“ ›«ò Ê— ‘„«—Â '+
    DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' Œ—Ìœ«— '+
    DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;

    frm_eslah_forosh.delete_forosh;
    
    frm_main.sabte_amaliat(frm_main.l_last_op.Caption); }
    close;
end;

end.
