unit unt_eslahe_kharid_hazf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB;

type
  Tfrm_eslahe_kharid_hazf = class(TForm)
    GroupBox1: TGroupBox;
    Label9: TLabel;
    DBText_t_jam: TDBText;
    Label10: TLabel;
    DBT_mab_gabl: TDBText;
    Label4: TLabel;
    DBT_m_check: TDBText;
    DBt_g_jens: TDBText;
    l_taeed_eslah: TLabel;
    Label2: TLabel;
    L_bestankar: TLabel;
    L_bedehkae: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DataSource3: TDataSource;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource4: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DataSource5: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure bedeh_talab_after_eslah;
    procedure Button1Click(Sender: TObject);
    procedure update_bedeh_talab_va_bedehi_kol_foroshande;
    procedure update_bedehi_kharidar_pas_az_bedekar_shodan(kol_p,g_gabl,g_jadid,g_j:string);
    procedure update_bedeh_talab_va_bedehi_kol_kharidar;
    procedure insert_gozaresh_az_hazfe_jens_az_factor;

    procedure execute_eslahe_kharid_hazf(kol_p,g_gabl,g_jadid,g_j:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_kharid_hazf: Tfrm_eslahe_kharid_hazf;

implementation

uses unt_eslah_kharid, Unt_DataModule_gozaresh_tarkibi, unt_DataM_final,
  unt_datamodule2, unt_datamodule1, Untdmlistha, Unt_dmanbar, unt_main,
  unt_datam_sp_eslahe_forosh, unt_Dm_zayeat_marjoei;

{$R *.dfm}
procedure Tfrm_eslahe_kharid_hazf.execute_eslahe_kharid_hazf(kol_p,g_gabl,g_jadid,g_j:string);
var anbar,s,type_:string;
    nagd_gabl,kol_pardakht,nagd,talab_eslah,bedeh_eslah,par:real;
begin
     anbar:='????? ?????';

      s:=' ???? ??? ?? ???? '+anbar+' ?? ??? ??? ???? ??? ?? ?ǘ??? ????? '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' ??????? '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;
      type_:='????? - ??? ??? ???? ??? ?? ?ǘ??? ????';

///////////////////////
  
   
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

if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)=StrToFloat(g_jadid)) then
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
//////////////////////////////////////////////////////////////////////////////////
    frm_main.l_last_op.Caption:=' ??? ??? '+Dmlistha.ADOkharidhajens.AsString+' ?? ?ǘ??? ????? '+
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' ??????? '+
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[0].Value:=L_bedehkae.Caption;//@bedehkar float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[1].Value:=L_bestankar.Caption;//@bestankar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[2].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;//@code_kharidar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[3].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;//@sh_factor float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[4].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString;//@tatikh_forosh nvarchar(12),

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[5].Value:=Dmlistha.ADOkharidhajens.AsString;//@calaname nvarchar(41),

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[6].Value:=Dmlistha.ADOkharidhatedad.AsString;//@tedade_jozi float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[7].Value:=Dmlistha.ADOkharidhacode.AsString;//@calacod float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[8].Value:=Dmlistha.ADOkharidhavahed_koli.AsString;//@vahed_koli nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[9].Value:=Dmlistha.ADOkharidhavahed_jozei.AsString;//@vahed_jozi nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[10].Value:=Dmlistha.ADOkharidhatedad_koli.AsString;//@tedade_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[11].Value:=Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString;//@tedad_jozi_da_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[12].Value:=Dmlistha.ADOkharidhatedad.AsString;//@tedad_kole_jabejaei float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[13].Value:=s;//@tozihe_anbar nvarchar(200),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[14].Value:=Dmlistha.ADOkharidhabarcod.AsString;//@barcod nvarchar(15),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[15].Value:=Dmlistha.ADOkharidhacode_sherkati.AsString;//@code_sherkati nvarchar(11),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[16].Value:=anbar;//@anbarname nvarchar(30),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[17].Value:=type_;//@type_kh_az_anbar nvarchar(100),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[18].Value:=Dmlistha.ADOkharidhagheymat.AsString;//@geymatkharid float,


   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[19].Value:=Dmlistha.ADOkharidhaid.AsString;//@id float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[20].Value:=frm_main.l_last_op.Caption;//@amaliat nvarchar(1000),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[21].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[22].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[23].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@shahrforoshande nvarchar(100),

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[24].Value:=bedeh_eslah;//@bedeh_eslah float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[25].Value:=talab_eslah;//@talab_eslah float
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.Parameters[26].Value:=par;//@par float
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_hazf.ExecProc;

   frm_eslah_kharid.aghlame_factor;
   MessageBox(Handle,pchar('??? ??????? ?? ?ǘ??? ???? ??? ?????.'),'????!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;

////////////////////////////////////////////////

procedure Tfrm_eslahe_kharid_hazf.insert_gozaresh_az_hazfe_jens_az_factor;
var anbar,s,type_:string;
begin
     anbar:='????? ?????';

      s:=' ???? ??? ?? ???? '+anbar+' ?? ??? ??? ???? ??? ?? ?ǘ??? ????? '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' ??????? '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;
      type_:='????? - ??? ??? ???? ??? ?? ?ǘ??? ????';



    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(Dmlistha.ADOkharidhajens.AsString)+','+
    Dmlistha.ADOkharidhatedad.AsString+','+
    Dmlistha.ADOkharidhacode.AsString+','+
    QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+','+
    QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+','+

    Dmlistha.ADOkharidhatedad_koli.AsString+','+
    Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+','+
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+','+

    Dmlistha.ADOkharidhatedad.AsString+','+


    QuotedStr(s)+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(Dmlistha.ADOkharidhabarcod.AsString)+','+
    QuotedStr(Dmlistha.ADOkharidhacode_sherkati.AsString)+','+

    QuotedStr(anbar)+','+
    QuotedStr(frm_main.LMDClock1.Digital.Caption)+','+
    QuotedStr(type_)+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;
end;
/////////////////
procedure Tfrm_eslahe_kharid_hazf.update_bedeh_talab_va_bedehi_kol_kharidar;
begin
  DataModule1.ADObedehi.SQL.Text:='update T_bedehi set bedeh='+L_bedehkae.Caption+
  ',talab='+L_bestankar.Caption+
  '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString+
  ' and sh_khaid='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
  ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString);

  DataModule1.ADObedehi.ExecSQL;

end;
///////////////////////////////
procedure Tfrm_eslahe_kharid_hazf.update_bedehi_kharidar_pas_az_bedekar_shodan(kol_p,g_gabl,g_jadid,g_j:string);
var nagd_gabl,kol_pardakht,nagd,talab_eslah,bedeh_eslah:real;
begin

/////////////////////////////////////////////////////////
if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)<StrToFloat(g_jadid)) then //1
   begin
        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(g_jadid);

       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+' where shahrforoshande='+
       QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;

 if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)>StrToFloat(g_jadid))and(StrToFloat(kol_p)<StrToFloat(g_gabl))and(StrToFloat(g_jadid)<>0) then  //2
   begin
        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(kol_p);

        talab_eslah:=StrToFloat(kol_p)-StrToFloat(g_jadid);

       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+
       ',talab=talab+'+FloatToStr(talab_eslah)+' where shahrforoshande='+
       QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;


 if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)>StrToFloat(g_jadid))and(StrToFloat(kol_p)=StrToFloat(g_gabl))and(StrToFloat(g_jadid)<>0)then //7
 //and(StrToFloat(g_jadid)<>0) then  //7
   begin

        talab_eslah:=StrToFloat(kol_p)-StrToFloat(g_jadid);

       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set talab=talab+'+
       FloatToStr(talab_eslah)+' where shahrforoshande='+
       QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;

if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)=StrToFloat(g_jadid)) then
//and(StrToFloat(g_jadid)<>0) then //3
   begin
        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(g_jadid);

       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;


if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)>StrToFloat(g_gabl))and(StrToFloat(g_jadid)<>0) then//4
   begin

        talab_eslah:=StrToFloat(g_j);

       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set talab=talab+'+FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;

if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(kol_p)<=StrToFloat(g_gabl))and(StrToFloat(g_jadid)=0)and(StrToFloat(kol_p)<>0) then//5
   begin
        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(kol_p);

        talab_eslah:=StrToFloat(kol_p);

       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+
       ',talab=talab+'+FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;


 if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(g_jadid)=0)and(StrToFloat(kol_p)>StrToFloat(g_gabl)) then  //6
   begin

        talab_eslah:=StrToFloat(g_gabl);

       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set talab=talab+'+
       FloatToStr(talab_eslah)+' where shahrforoshande='+
       QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;
 {if (StrToFloat(g_jadid)<StrToFloat(g_gabl))and(StrToFloat(g_jadid)=0)and(StrToFloat(kol_p)<StrToFloat(g_gabl)) then  //6 prim
   begin

        talab_eslah:=StrToFloat(kol_p);

        bedeh_eslah:=StrToFloat(g_gabl)-StrToFloat(kol_p);

       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set talab=talab+'+
       FloatToStr(talab_eslah)+',bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+' where shahrforoshande='+
       QuotedStr(DataM_final..ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end; }
end;
///////////////////////
procedure Tfrm_eslahe_kharid_hazf.update_bedeh_talab_va_bedehi_kol_foroshande;
begin
  DataModule2.adotasfie.SQL.Text:='update T_bedehi set bedeh='+L_bedehkae.Caption+
  ',talab='+L_bestankar.Caption+
  '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString+
  ' and sh_khaid='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
  ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString);

  DataModule2.adotasfie.ExecSQL;

end;
///////////////////
procedure Tfrm_eslahe_kharid_hazf.bedeh_talab_after_eslah;
var check,kol_pardakht,nagd:string;
begin
if Dmlistha.ADOkharidha.RecordCount>0 then
begin
    if (DBT_m_check.Caption='0') or (DBT_m_check.Caption='') then
             check:='0'
         else
          check:=DBT_m_check.Caption;

    if (DBT_mab_gabl.Caption='') or(DBT_mab_gabl.Caption='0')then
      nagd:='0'
    else
      nagd:=DBT_mab_gabl.Caption;

          kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat);
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
  MessageBox(Handle,pchar('????? ???? ??? ?????? ???? ???.'),'??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;
end;

procedure Tfrm_eslahe_kharid_hazf.FormShow(Sender: TObject);
begin
  bedeh_talab_after_eslah;
end;

procedure Tfrm_eslahe_kharid_hazf.Button1Click(Sender: TObject);
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

   g_k:=FloatToStr(StrToFloat(g_k)-Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat);

   g_jadid:=FloatToStr(StrToFloat(g_k)-StrToFloat(g_j));

   p_gabl:=FloatToStr(StrToFloat(p_n)+StrToFloat(p_c));

   execute_eslahe_kharid_hazf(p_gabl,g_k,g_jadid,g_j);

   {insert_gozaresh_az_hazfe_jens_az_factor;

   frm_eslahe_kharid_hazf.l_taeed_eslah.Caption:='yes';
   update_bedeh_talab_va_bedehi_kol_kharidar;
   update_bedehi_kharidar_pas_az_bedekar_shodan(p_gabl,g_k,g_jadid,g_j);

   frm_eslah_kharid.delete_forosh; }
   close;
end;

end.

