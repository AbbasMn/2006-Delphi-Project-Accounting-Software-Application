unit unt_sabte_marjo_zayeat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, SUIButton, Grids, DBGrids, SUIDBCtrls, StdCtrls, DBCtrls;

type
  Tfrm_sabte_marjo_zayeat = class(TForm)
    L_code_cala: TLabel;
    suibtaeed11: TsuiButton;
    DataSource2: TDataSource;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    DBT_arzesh: TDBText;
    Label18: TLabel;
    DBT_mab_gabl: TDBText;
    Label19: TLabel;
    DBT_m_check: TDBText;
    DataSource3: TDataSource;
    DataSource1: TDataSource;
    DataSource4: TDataSource;
    Label8: TLabel;
    DBText_name: TDBText;
    Label2: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    DBText_shakhs_sherkat: TDBText;
    Label3: TLabel;
    DBText_geymate_khaaid: TDBText;
    Label5: TLabel;
    l_tedad_koli_jabejaei: TLabel;
    Label9: TLabel;
    DBText_tedade_jozi_dar_koli: TDBText;
    Label6: TLabel;
    l_tedad_jozi_jabejaei: TLabel;
    Label7: TLabel;
    l_tedad_kole_jabejaei: TLabel;
    g_bede_talab_marjo: TGroupBox;
    Label12: TLabel;
    L_bestankar: TLabel;
    L_bedehkae: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    l_arzesh_ajnas: TLabel;
    g_tozih_zayeat: TGroupBox;
    Label14: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DataSource5: TDataSource;
    DBText2: TDBText;
    procedure bedeh_talab_after_eslah;
    procedure FormShow(Sender: TObject);
    procedure suibtaeed11Click(Sender: TObject);
    procedure execute_zayeate_jens_stored_procedure;
    procedure execute_jens_marjoei_stored_procedure(kol_p,g_gabl,g_jadid:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sabte_marjo_zayeat: Tfrm_sabte_marjo_zayeat;

implementation

uses unt_DataM_final, Untdmlistha, unt_anbarhaye_havie_jens, unt_main,
  unt_DataM_sp, Untdmanbarexit, unt_Dm_zayeat_marjoei;

{$R *.dfm}
procedure Tfrm_sabte_marjo_zayeat.execute_jens_marjoei_stored_procedure(kol_p,g_gabl,g_jadid:string);
var cod_jadid,tozihe_forosh,g_j:string;
    s:pchar;
    tedad_kol,tedad_jozi_dar_koli,tedad_koli_mabda,tedad_koli_magsad,tedad_jozi,t_k:real;
    nagd_gabl,kol_pardakht,nagd,talab_eslah,bedeh_eslah,par:real;
begin

     tedad_kol:=StrToFloat(l_tedad_kole_jabejaei.Caption);
     tedad_jozi_dar_koli:=Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsFloat;

              if  tedad_jozi_dar_koli<>0 then
                tedad_koli_magsad:=int(tedad_kol/tedad_jozi_dar_koli)
              else
                tedad_koli_magsad:=0;

                if  tedad_jozi_dar_koli<>0 then
                  tedad_koli_mabda:=int((Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat-tedad_kol)/ tedad_jozi_dar_koli)
                else
                  tedad_koli_mabda:=0;

                if  tedad_jozi_dar_koli<>0 then
                  tedad_jozi:=tedad_kol-(int(tedad_kol/tedad_jozi_dar_koli)*tedad_jozi_dar_koli)
                else
                  tedad_jozi:=tedad_kol;

         if tedad_jozi_dar_koli<>0 then
          t_k:=int(tedad_kol/tedad_jozi_dar_koli)
         else
          t_k:=0;
///////////////////////////////////

   g_j:=l_arzesh_ajnas.Caption;

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
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////
            frm_main.l_last_op.Caption:=' „—ÃÊ⁄ ò—œ‰ Ã‰” '+DBText_name.Caption+' »Â  ⁄œ«œ ò·Ì '+l_tedad_koli_jabejaei.Caption+' Ê  ⁄œ«œ Ã“∆Ì '+l_tedad_jozi_jabejaei.Caption+
            ' »—«»— »«  ⁄œ«œ ò· '+l_tedad_kole_jabejaei.Caption+' »Â ›—Ê‘‰œÂ ';


           DataM_sp.ADOStoredProc_marjoei.Parameters[0].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
           DataM_sp.ADOStoredProc_marjoei.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),
           DataM_sp.ADOStoredProc_marjoei.Parameters[2].Value:=Dmlistha.ADOlistanbarforoshcalacod.AsString;//@calacod float,
           DataM_sp.ADOStoredProc_marjoei.Parameters[3].Value:=Dmlistha.ADOlistanbarforoshanbarname.AsString;//@anbarname_mabda nvarchar(30),
           DataM_sp.ADOStoredProc_marjoei.Parameters[4].Value:=tedad_koli_mabda;//@tedad_koli_mabda  float,
           DataM_sp.ADOStoredProc_marjoei.Parameters[5].Value:=l_tedad_kole_jabejaei.Caption;//@tedad_kole_jabejaei float,
           DataM_sp.ADOStoredProc_marjoei.Parameters[6].Value:=frm_main.l_last_op.Caption+' «“ ›«ò Ê— Œ—Ìœ ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' «“ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@amaliat nvarchar(1000)
           DataM_sp.ADOStoredProc_marjoei.Parameters[7].Value:=Dmlistha.ADOlistanbarforoshcalaname.AsString;//@calaname	nvarchar(41),
           DataM_sp.ADOStoredProc_marjoei.Parameters[8].Value:=Dmlistha.ADOlistanbarforoshgeymatkharid.AsString;//@geymatkharid	float,
           DataM_sp.ADOStoredProc_marjoei.Parameters[9].Value:=Dmlistha.ADOlistanbarforoshvahed_koli.AsString;//@vahed_koli	nvarchar(31),
           DataM_sp.ADOStoredProc_marjoei.Parameters[10].Value:=Dmlistha.ADOlistanbarforoshgeymat_koli.AsString;//@geymat_koli 	float,
           DataM_sp.ADOStoredProc_marjoei.Parameters[11].Value:=Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString;//@tedad_jozi_da_koli	float,
           DataM_sp.ADOStoredProc_marjoei.Parameters[12].Value:=Dmlistha.ADOlistanbarforoshvahed_jozi.AsString;//@vahed_jozi	nvarchar(31),
           DataM_sp.ADOStoredProc_marjoei.Parameters[13].Value:=Dmlistha.ADOlistanbarforoshbarcod.AsString;//@barcod	nvarchar(15),
           DataM_sp.ADOStoredProc_marjoei.Parameters[14].Value:=Dmlistha.ADOlistanbarforoshshakhs_sherkat.AsString;//@shakhs_sherkat	nvarchar(51),
           DataM_sp.ADOStoredProc_marjoei.Parameters[15].Value:=Dmlistha.ADOlistanbarforoshcode_sherkati.AsString;//@code_sherkati	nvarchar(11)
           DataM_sp.ADOStoredProc_marjoei.Parameters[16].Value:='Œ—ÊÃÌ »Â ⁄·  „—ÃÊ⁄ ò—œ‰ Ã‰”'+' «“ ›«ò Ê— Œ—Ìœ ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' «“ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@tozihe_kho_az_anbar nvarchar(200),
           DataM_sp.ADOStoredProc_marjoei.Parameters[17].Value:='Œ—ÊÃÌ - „—ÃÊ⁄ ò—œ‰ Ã‰”';//@type_kh_az_anbar nvarchar(100),
           DataM_sp.ADOStoredProc_marjoei.Parameters[18].Value:=tedad_jozi;//@tedade_jozi float
           DataM_sp.ADOStoredProc_marjoei.Parameters[19].Value:=t_k;//@tedade_koli float
           DataM_sp.ADOStoredProc_marjoei.Parameters[20].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;//@sh_kharid_marjoei float,
           DataM_sp.ADOStoredProc_marjoei.Parameters[21].Value:=Dmlistha.ADOlistanbarforoshid.AsString;//@id float
           DataM_sp.ADOStoredProc_marjoei.Parameters[22].Value:=L_bedehkae.Caption;//@bedehkar float,
           DataM_sp.ADOStoredProc_marjoei.Parameters[23].Value:=L_bestankar.Caption;//@bestankar float,
           DataM_sp.ADOStoredProc_marjoei.Parameters[24].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;//@code_kharidar float,
           DataM_sp.ADOStoredProc_marjoei.Parameters[25].Value:=bedeh_eslah;//@bedeh_eslah float,
           DataM_sp.ADOStoredProc_marjoei.Parameters[26].Value:=talab_eslah;//@talab_eslah float,
           DataM_sp.ADOStoredProc_marjoei.Parameters[27].Value:=par;//@par float

           DataM_sp.ADOStoredProc_marjoei.ExecProc;

           MessageBox(Handle,pchar(' ⁄œ«œ «‰ Œ«» ‘œÂ Ã‰” »Â ’Ê—  „—ÃÊ⁄Ì À»  ê—œÌœ'),' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;
//////////////////////////////////////////////////////////////////////////////
procedure Tfrm_sabte_marjo_zayeat.execute_zayeate_jens_stored_procedure;
var cod_jadid,tozihe_forosh:string;
    s:pchar;
    tedad_kol,tedad_jozi_dar_koli,tedad_koli_mabda,tedad_koli_magsad,tedad_jozi,t_k:real;
begin

     tedad_kol:=StrToFloat(l_tedad_kole_jabejaei.Caption);
     tedad_jozi_dar_koli:=Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsFloat;

              if  tedad_jozi_dar_koli<>0 then
                tedad_koli_magsad:=int(tedad_kol/tedad_jozi_dar_koli)
              else
                tedad_koli_magsad:=0;

                if  tedad_jozi_dar_koli<>0 then
                  tedad_koli_mabda:=int((Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat-tedad_kol)/ tedad_jozi_dar_koli)
                else
                  tedad_koli_mabda:=0;

                if  tedad_jozi_dar_koli<>0 then
                  tedad_jozi:=tedad_kol-(int(tedad_kol/tedad_jozi_dar_koli)*tedad_jozi_dar_koli)
                else
                  tedad_jozi:=tedad_kol;

         if tedad_jozi_dar_koli<>0 then
          t_k:=int(tedad_kol/tedad_jozi_dar_koli)
         else
          t_k:=0;
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////
            frm_main.l_last_op.Caption:=' Ê—Êœ Ã‰” '+DBText_name.Caption+' »Â  ⁄œ«œ ò·Ì '+l_tedad_koli_jabejaei.Caption+' Ê  ⁄œ«œ Ã“∆Ì '+l_tedad_jozi_jabejaei.Caption+
            ' »—«»— »«  ⁄œ«œ ò· '+l_tedad_kole_jabejaei.Caption+' »Â «‰»«— ÷«Ì⁄«  ';


           DataM_sp.ADOStoredProc_zayeat.Parameters[0].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
           DataM_sp.ADOStoredProc_zayeat.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

           DataM_sp.ADOStoredProc_zayeat.Parameters[2].Value:=Dmlistha.ADOlistanbarforoshcalacod.AsString;//@calacod float,
           DataM_sp.ADOStoredProc_zayeat.Parameters[3].Value:='«‰»«— ÷«Ì⁄« ';//@anbarname_mgsad nvarchar(30),
           DataM_sp.ADOStoredProc_zayeat.Parameters[4].Value:=Dmlistha.ADOlistanbarforoshanbarname.AsString;//@anbarname_mabda nvarchar(30),

           DataM_sp.ADOStoredProc_zayeat.Parameters[5].Value:=tedad_koli_magsad;//@tedad_koli_magsad float,
           DataM_sp.ADOStoredProc_zayeat.Parameters[6].Value:=tedad_koli_mabda;//@tedad_koli_mabda  float,

           DataM_sp.ADOStoredProc_zayeat.Parameters[7].Value:=l_tedad_kole_jabejaei.Caption;//@tedad_kole_jabejaei float,

           DataM_sp.ADOStoredProc_zayeat.Parameters[8].Value:=tozihe_forosh;//@tozihe nvarchar(250),

           DataM_sp.ADOStoredProc_zayeat.Parameters[9].Value:=frm_main.l_last_op.Caption+' «“ ›«ò Ê— Œ—Ìœ ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' «“ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@amaliat nvarchar(1000)

           DataM_sp.ADOStoredProc_zayeat.Parameters[10].Value:=Dmlistha.ADOlistanbarforoshcalaname.AsString;//@calaname	nvarchar(41),
           DataM_sp.ADOStoredProc_zayeat.Parameters[11].Value:=Dmlistha.ADOlistanbarforoshgeymatkharid.AsString;//@geymatkharid	float,
           DataM_sp.ADOStoredProc_zayeat.Parameters[12].Value:=Dmlistha.ADOlistanbarforoshgeymatforosh.AsString;//@geymatforosh	float,
           DataM_sp.ADOStoredProc_zayeat.Parameters[13].Value:=Dmlistha.ADOlistanbarforoshmolahezatgeymat.AsString;//@molahezatgeymat	nvarchar(251),

           DataM_sp.ADOStoredProc_zayeat.Parameters[14].Value:=Dmlistha.ADOlistanbarforoshtarikhedit.AsString;//@tarikhedit	nvarchar(12),
           DataM_sp.ADOStoredProc_zayeat.Parameters[15].Value:=Dmlistha.ADOlistanbarforoshvahed_koli.AsString;//@vahed_koli	nvarchar(31),
           DataM_sp.ADOStoredProc_zayeat.Parameters[16].Value:=Dmlistha.ADOlistanbarforoshgeymat_koli.AsString;//@geymat_koli 	float,
           DataM_sp.ADOStoredProc_zayeat.Parameters[17].Value:=Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString;//@tedad_jozi_da_koli	float,
           DataM_sp.ADOStoredProc_zayeat.Parameters[18].Value:=Dmlistha.ADOlistanbarforoshvahed_jozi.AsString;//@vahed_jozi	nvarchar(31),
           DataM_sp.ADOStoredProc_zayeat.Parameters[19].Value:=Dmlistha.ADOlistanbarforoshgeymat_koli.AsString;//@geymat_forosh_koli	 float,
           DataM_sp.ADOStoredProc_zayeat.Parameters[20].Value:=Dmlistha.ADOlistanbarforoshbarcod.AsString;//@barcod	nvarchar(15),
           DataM_sp.ADOStoredProc_zayeat.Parameters[21].Value:=Dmlistha.ADOlistanbarforoshshakhs_sherkat.AsString;//@shakhs_sherkat	nvarchar(51),
           DataM_sp.ADOStoredProc_zayeat.Parameters[22].Value:=Dmlistha.ADOlistanbarforoshcode_sherkati.AsString;//@code_sherkati	nvarchar(11)

           DataM_sp.ADOStoredProc_zayeat.Parameters[23].Value:='Œ—ÊÃÌ »Â ⁄·  À»  ÷«Ì⁄«  Ã‰” '+' «“ ›«ò Ê— Œ—Ìœ ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' «“ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@tozihe_kho_az_anbar nvarchar(200),
           DataM_sp.ADOStoredProc_zayeat.Parameters[24].Value:=' Ê—Êœ ÷«Ì⁄«  À»  ‘œÂ »—«Ì Ã‰” «“ „ò«‰ '+Dmlistha.ADOlistanbarforoshanbarname.AsString+' «“ ›«ò Ê— Œ—Ìœ ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' «“ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@tozihe_vo_be_anbar nvarchar(200),

           DataM_sp.ADOStoredProc_zayeat.Parameters[25].Value:='Œ—ÊÃÌ - À»  ÷«Ì⁄«  Ã‰”';//@type_kh_az_anbar nvarchar(100),
           DataM_sp.ADOStoredProc_zayeat.Parameters[26].Value:='Ê—ÊœÌ - À»  ÷«Ì⁄«  Ã‰”';//@type_vo_be_anbar nvarchar(100),

           DataM_sp.ADOStoredProc_zayeat.Parameters[27].Value:=tedad_jozi;//@tedade_jozi float
           DataM_sp.ADOStoredProc_zayeat.Parameters[28].Value:=t_k;//@tedade_koli float
           DataM_sp.ADOStoredProc_zayeat.Parameters[29].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;//@sh_kharid_zayeat float,
           DataM_sp.ADOStoredProc_zayeat.Parameters[30].Value:=Dmlistha.ADOlistanbarforoshid.AsString;//@id float


           DataM_sp.ADOStoredProc_zayeat.ExecProc;

            MessageBox(Handle,pchar(' ⁄œ«œ «‰ Œ«» ‘œÂ Ã‰” »Â «‰»«— ÷«Ì⁄«  Ê«—œ ‘œ'),' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;

procedure Tfrm_sabte_marjo_zayeat.bedeh_talab_after_eslah;
var check,kol_pardakht,nagd:string;
begin
    if (DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsString='0') or (DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsString='') then
             check:='0'
         else
          check:=DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsString;

    if (DataM_final.ADOQ_t_pardakht_nagd_kharidnagd.AsString='') or(DataM_final.ADOQ_t_pardakht_nagd_kharidnagd.AsString='0')then
      nagd:='0'
    else
      nagd:=DataM_final.ADOQ_t_pardakht_nagd_kharidnagd.AsString;

          kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat+StrToFloat(l_arzesh_ajnas.Caption));
          sleep(100);

         if StrToFloat(kol_pardakht)>StrToFloat(Dmlistha.ADOmohasebe_kharidkol_.AsString) then
         begin
          L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(Dmlistha.ADOmohasebe_kharidkol_.AsString));
          L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<StrToFloat(Dmlistha.ADOmohasebe_kharidkol_.AsString) then
         begin
           L_bedehkae.Caption:=FloatToStr(StrToFloat(Dmlistha.ADOmohasebe_kharidkol_.AsString)-StrToFloat(kol_pardakht));
           L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=StrToFloat(Dmlistha.ADOmohasebe_kharidkol_.AsString) then
         begin
          L_bestankar.Caption:='0';
          L_bedehkae.Caption:='0';

         end;
end;

procedure Tfrm_sabte_marjo_zayeat.FormShow(Sender: TObject);
begin
  bedeh_talab_after_eslah; 
end;

procedure Tfrm_sabte_marjo_zayeat.suibtaeed11Click(Sender: TObject);
var p_gabl,g_jadid,p_n,p_c,g_j,g_k:string;
begin
  if frm_anbarhaye_havie_jens.l_type.Caption='marjoei' then
  begin
     if(Dmlistha.ADOmohasebe_kharidkol_.AsString='')or(Dmlistha.ADOmohasebe_kharidkol_.AsString='0') then
      g_k:='0'
     else
      g_k:=Dmlistha.ADOmohasebe_kharidkol_.AsString;
     ///////////////////////////////

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

    g_jadid:=FloatToStr(StrToFloat(g_k)-StrToFloat(l_arzesh_ajnas.Caption));

    p_gabl:=FloatToStr(StrToFloat(p_n)+StrToFloat(p_c));
    
    execute_jens_marjoei_stored_procedure(p_gabl,g_k,g_jadid);
  end
  else
    execute_zayeate_jens_stored_procedure;
  close;
end;

end.
