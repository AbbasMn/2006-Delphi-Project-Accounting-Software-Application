unit unt_elsah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton, ExtCtrls,
  SUIForm, DB;

type
  Tfrm_elsah = class(TForm)
    DataSource3: TDataSource;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Dskharidha: TDataSource;
    DataSource4: TDataSource;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    DBT_arzesh: TDBText;
    Label18: TLabel;
    DBT_mab_gabl: TDBText;
    Label19: TLabel;
    DBT_m_check: TDBText;
    l_taeed_eslah: TLabel;
    Label20: TLabel;
    DBText2: TDBText;
    GroupBox_jens: TGroupBox;
    Label2: TLabel;
    Label13: TLabel;
    DBText_t_koli: TDBText;
    DBText_t_jozi: TDBText;
    Label5: TLabel;
    DBText_t_jozi_dar_koli: TDBText;
    Label10: TLabel;
    DBText_calacod: TDBText;
    DBText_forosh_id: TDBText;
    DBText_t_jam: TDBText;
    DBText_jens: TDBText;
    DBText1_g_kol_gadim: TDBText;
    Label3: TLabel;
    Label16: TLabel;
    DBText_g_vahed: TEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Edit_t_koli_jadid_: TEdit;
    Edit_t_jozi_jadid: TEdit;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label14: TLabel;
    DBText8: TDBText;
    Label15: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    L_jam_jadid: TLabel;
    Label_g_kol_jadid: TLabel;
    L_bedehkar: TLabel;
    L_bestankar: TLabel;
    Button1: TButton;
    Label12: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure update_anbar;
    procedure update_bedehi_kharidar_pas_az_bedekar_shodan;
    procedure update_forosh(t_jozi_dar_koli,jam_jadid,g_vahed,forosh_id:string);
    function check:boolean;
    procedure cllear;
    function tedad_jadid_va_magadir_anbar:boolean;
    procedure Edit_t_koli_jadid_KeyPress(Sender: TObject; var Key: Char);
    procedure Edit_t_jozi_jadidKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_t_jozi_jadidChange(Sender: TObject);
    procedure Edit_t_koli_jadid_Change(Sender: TObject);
    procedure bedeh_talab_after_eslah;
    procedure Edit_t_koli_jadid_Exit(Sender: TObject);
    procedure Edit_t_jozi_jadidExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure mohasebe_tafazol_forosh;
    procedure update_bedehkar_bestankar;
    procedure DBText_g_vahedKeyPress(Sender: TObject; var Key: Char);
    procedure DBText_g_vahedChange(Sender: TObject);

    procedure insert_gozaresh_az_eslhe_tedade_jens;
    procedure execute_eslahe_tedade_forosh_stored_procedure(t_jozi_dar_koli,jam_jadid,g_vahed,forosh_id:string);
  private
    { Private declarations }
  public
   bedehi_for_dasti:real;
    { Public declarations }
  end;

var
  frm_elsah: Tfrm_elsah;

implementation

uses Unt_DataModule_gozaresh_tarkibi, unt_eslah_forosh,
  unt_eslah_new_value, unt_datamodule2, unt_bedeh_bestan, unt_login,
  Untdmanbarexit,unt_datamodule1, unt_DataM_final, Untdmlistha, unt_main,
  Unt_dmanbar, unt_datam_sp_eslahe_forosh;

{$R *.dfm}
procedure Tfrm_elsah.execute_eslahe_tedade_forosh_stored_procedure(t_jozi_dar_koli,jam_jadid,g_vahed,forosh_id:string);
var tedad_koli_jadid,tedad_jozi_jadid,tedad_kol_jadid:real;
    tedad_koli_gadim,tedad_jozi_gadim,tedad_kol_gadim,temp:real;
    s,type_,anbar:string;

    arzesh_kol_bade_elah,tedadkli_pas_az_tafazol,tedadkli_pas_az_tafazol1,t_j,sabte_gozaresh_anbar:real;

    t_kol_anbar,t_j_anbar,type_update_anbar_koli,typ_bedeh,type_forosh_jens:real;
    check,kol_pardakht,nagd,talab_eslah,bedeh_eslah,t_jam:string;

begin

    t_jam:=FloatToStr(Dmlistha.ADOmohasebe_foroshkol_.AsFloat-DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat);

    sabte_gozaresh_anbar:=0;
    if StrToFloat(L_jam_jadid.Caption)<>DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_kol.AsFloat then
    begin

      sabte_gozaresh_anbar:=1;
      anbar:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showanbarname.AsString;

      tedad_koli_gadim:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_koli.AsFloat;
      tedad_jozi_gadim:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad.AsFloat;
      tedad_kol_gadim:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_kol.AsFloat;

      tedad_kol_jadid:=StrToFloat(L_jam_jadid.Caption);

      if StrToFloat(L_jam_jadid.Caption)>tedad_kol_gadim  then
      begin
        temp:=StrToFloat(L_jam_jadid.Caption)-tedad_kol_gadim;

        if DataModule_gozaresh_tarkibi.ADO_fac_roz_showvahed_koli.AsString<>'' then
        begin
          tedad_koli_jadid:=int(temp/DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat );
          tedad_jozi_jadid:=temp-(DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat*(int(temp/DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat)));
        end
        else
        begin
          tedad_koli_jadid:=0;
          tedad_jozi_jadid:=temp;
        end
      end
      else
      begin
        temp:=tedad_kol_gadim-StrToFloat(L_jam_jadid.Caption);

        if DataModule_gozaresh_tarkibi.ADO_fac_roz_showvahed_koli.AsString<>'' then
        begin
          tedad_koli_jadid:=int(temp/DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat );
          tedad_jozi_jadid:=temp-(DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat*(int(temp/DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat)));
        end
        else
        begin
          tedad_koli_jadid:=0;
          tedad_jozi_jadid:=temp;
        end
      end;


      if tedad_kol_jadid > tedad_kol_gadim then
      begin
        tedad_kol_jadid:=tedad_kol_jadid-tedad_kol_gadim ;
        s:=' Œ—ÊÃ Ã‰” «“ „ò«‰ '+anbar+' »Â ⁄·  ÊÌ—«Ì‘  ⁄œ«œ Ã‰” Ê «›“«Ì‘  ⁄œ«œ ¬‰ œ— ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' Œ—Ìœ«— '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;
        type_:='Œ—ÊÃÌ - «÷«›Â ‘œ‰ »Â  ⁄œ«œ Ã‰” œ— ›«ò Ê— ›—Ê‘ œ— ÊÌ—«Ì‘ ›«ò Ê— ›—Ê‘';
      end
      else
      begin
        tedad_kol_jadid:=tedad_kol_gadim-tedad_kol_jadid;
        s:=' Ê—Êœ Ã‰” «“ „ò«‰  '+anbar+' »Â ⁄·  ÊÌ—«Ì‘  ⁄œ«œ Ã‰” Ê ò«Â‘  ⁄œ«œ ¬‰ œ— ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' Œ—Ìœ«— '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;
        type_:='Ê—ÊœÌ - ò„ ‘œ‰ «“  ⁄œ«œ Ã‰” œ— ›«ò Ê— ›—Ê‘ œ— ÊÌ—«Ì‘ ›«ò Ê— ›—Ê‘';
      end;


    end;

    //////// update anbar ///////
    Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli  where calacod='+DataModule_gozaresh_tarkibi.ADO_fac_roz_showcalacod.AsString+
    ' and anbarname='+QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showanbarname.AsString);
    Dmanbarexite.ADOanbarcala.Open;
    
    t_kol_anbar:=Dmanbarexite.ADOanbarcala.Fields[10].AsFloat;

    t_j_anbar:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;

    temp:=StrToFloat(L_jam_jadid.Caption)-StrToFloat(DBText_t_jam.Caption);

    if temp > 0 then
    begin
      if StrToFloat(DBText_t_jozi_dar_koli.Caption)<>0 then
      begin
        tedadkli_pas_az_tafazol:=int((t_j_anbar-temp)/StrToFloat(DBText_t_jozi_dar_koli.Caption) );
        type_update_anbar_koli:=1;
      end
      else
        begin
          type_update_anbar_koli:=2;
        end;
    end
    else
      begin
      temp:=-temp;
      if StrToFloat(DBText_t_jozi_dar_koli.Caption)<>0 then
      begin
          type_update_anbar_koli:=3;
          tedadkli_pas_az_tafazol:=int((t_j_anbar+temp)/StrToFloat(DBText_t_jozi_dar_koli.Caption) );
      end
      else
        begin
          type_update_anbar_koli:=4;
        end;
      end;
    //////// update anbar ///////


      if (DBT_m_check.Caption='0') or (DBT_m_check.Caption='') then
             check:='0'
         else
          check:=DBT_m_check.Caption;

    if (DBT_mab_gabl.Caption='0') or (DBT_mab_gabl.Caption='') then
             nagd:='0'
         else
          nagd:=DBT_mab_gabl.Caption;

   kol_pardakht:=FloatToStr(StrToFloat(nagd)+StrToFloat(check));

  talab_eslah:='0';
  bedeh_eslah:='0';

   if StrToFloat(t_jam) > StrToFloat(kol_pardakht) then
   begin
    bedeh_eslah:=FloatToStr(StrToFloat(t_jam) - StrToFloat(kol_pardakht));
    typ_bedeh:=1;
    talab_eslah:='0';

   end;

   if StrToFloat(t_jam) < StrToFloat(kol_pardakht) then
   begin
        talab_eslah:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(t_jam));
        typ_bedeh:=2;
        bedeh_eslah:='0';
   end;



     if t_jozi_dar_koli<>'0' then
    begin

      tedadkli_pas_az_tafazol1:=int(StrToFloat(jam_jadid)/StrToFloat(t_jozi_dar_koli));

      t_j:=StrToFloat(jam_jadid)-(tedadkli_pas_az_tafazol1*StrToFloat(t_jozi_dar_koli));

      arzesh_kol_bade_elah:=StrToFloat(jam_jadid)*StrToFloat(g_vahed);

      type_forosh_jens:=1;
    end
    else
      begin

        t_j:=StrToFloat(jam_jadid);

        arzesh_kol_bade_elah:=StrToFloat(jam_jadid)*StrToFloat(g_vahed);

        type_forosh_jens:=2;
      end;


///////////////////////////////////////////////////////////
    frm_main.l_last_op.Caption:=' «’·«Õ  ⁄œ«œ Ã‰” '+DBText_jens.Caption+' œ— ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+
    ' ‘Œ’ '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;


///////////////////////////////////////////////////////////


   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[0].Value:=L_bedehkar.Caption;//@bedehkar float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[1].Value:=L_bestankar.Caption;//@bestankar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[2].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString;//@code_kharidar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[3].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;//@sh_factor float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[4].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString;//@tatikh_forosh nvarchar(12),

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[5].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showjens.AsString;//@calaname nvarchar(41),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[6].Value:=tedad_jozi_jadid;//@tedade_jozi float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[7].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showcalacod.AsString;//@calacod float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[8].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showvahed_koli.AsString;//@vahed_koli nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[9].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showvahed_jozei.AsString;//@vahed_jozi nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[10].Value:=tedad_koli_jadid;//@tedade_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[11].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsString;//@tedad_jozi_da_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[12].Value:=tedad_kol_jadid;//@tedad_kole_jabejaei float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[13].Value:=s;//@tozihe_anbar nvarchar(200),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[14].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showbarcod.AsString;//@barcod nvarchar(15),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[15].Value:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showcode_sherkati.AsString;//@code_sherkati nvarchar(11),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[16].Value:=anbar;//@anbarname nvarchar(30),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[17].Value:=type_;//@type_kh_az_anbar nvarchar(100),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[18].Value:=sabte_gozaresh_anbar;//@sabte_gozaresh_anbar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[19].Value:=t_j;//@t_j float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[20].Value:=jam_jadid;//@jam_jadid float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[21].Value:=type_forosh_jens;//@type_forosh_jens float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[22].Value:=g_vahed;//@geymat_vahed float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[23].Value:=arzesh_kol_bade_elah;//@geymat_jens float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[24].Value:=forosh_id;//@id float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[25].Value:=frm_main.l_last_op.Caption+' «“  ⁄œ«œ ò· '+FloatToStr((StrToFloat(DBText_t_koli.Caption)*StrToFloat(DBText_t_jozi_dar_koli.Caption)+StrToFloat(DBText_t_jozi.Caption)))+
    ' »Â '+L_jam_jadid.Caption;//@amaliat nvarchar(1000),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[26].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[27].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)


   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[28].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;//@shahrforoshande nvarchar(100),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[29].Value:=tedadkli_pas_az_tafazol;//@tedadkli_pas_az_tafazol float,


   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[30].Value:=tedadkli_pas_az_tafazol1;//@tedadkli_pas_az_tafazol1 float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[31].Value:=temp;//@temp float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[32].Value:=type_update_anbar_koli;//@type_update_anbar_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[33].Value:=typ_bedeh;//@typ_bedeh float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[34].Value:=StrToFloat(bedeh_eslah);//@bedeh_eslah float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.Parameters[35].Value:=StrToFloat(talab_eslah);//@talab_eslah float
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_tedad.ExecProc;

   frm_eslah_forosh.aghlame_factor;
   MessageBox(Handle,pchar(' ⁄œ«œ ÃœÌœ Ã‰” «‰ Œ«»Ì –ŒÌ—Â ‘œ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);

end;
///////////////////
procedure Tfrm_elsah.insert_gozaresh_az_eslhe_tedade_jens;
var tedad_koli_jadid,tedad_jozi_jadid,tedad_kol_jadid:real;
    tedad_koli_gadim,tedad_jozi_gadim,tedad_kol_gadim,temp:real;
    s,type_,anbar:string;
begin
  anbar:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showanbarname.AsString;

    tedad_koli_gadim:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_koli.AsFloat;
    tedad_jozi_gadim:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad.AsFloat;
    tedad_kol_gadim:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_kol.AsFloat;

    tedad_kol_jadid:=StrToFloat(L_jam_jadid.Caption);

    if StrToFloat(L_jam_jadid.Caption)>tedad_kol_gadim  then
    begin
      temp:=StrToFloat(L_jam_jadid.Caption)-tedad_kol_gadim;

      if DataModule_gozaresh_tarkibi.ADO_fac_roz_showvahed_koli.AsString<>'' then
      begin
        tedad_koli_jadid:=int(temp/DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat );
        tedad_jozi_jadid:=temp-(DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat*(int(temp/DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat)));
      end
      else
      begin
        tedad_koli_jadid:=0;
        tedad_jozi_jadid:=temp;
      end
    end
    else
    begin
      temp:=tedad_kol_gadim-StrToFloat(L_jam_jadid.Caption);

      if DataModule_gozaresh_tarkibi.ADO_fac_roz_showvahed_koli.AsString<>'' then
      begin
        tedad_koli_jadid:=int(temp/DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat );
        tedad_jozi_jadid:=temp-(DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat*(int(temp/DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat)));
      end
      else
      begin
        tedad_koli_jadid:=0;
        tedad_jozi_jadid:=temp;        
      end
    end;


    if tedad_kol_jadid > tedad_kol_gadim then
    begin
      tedad_kol_jadid:=tedad_kol_jadid-tedad_kol_gadim ;
      s:=' Œ—ÊÃ Ã‰” «“ „ò«‰ '+anbar+' »Â ⁄·  ÊÌ—«Ì‘  ⁄œ«œ Ã‰” Ê «›“«Ì‘  ⁄œ«œ ¬‰ œ— ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' Œ—Ìœ«— '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;
      type_:='Œ—ÊÃÌ - «÷«›Â ‘œ‰ »Â  ⁄œ«œ Ã‰” œ— ›«ò Ê— ›—Ê‘ œ— ÊÌ—«Ì‘ ›«ò Ê— ›—Ê‘';
    end
    else
    begin
      tedad_kol_jadid:=tedad_kol_gadim-tedad_kol_jadid;
      s:=' Ê—Êœ Ã‰” «“ „ò«‰  '+anbar+' »Â ⁄·  ÊÌ—«Ì‘  ⁄œ«œ Ã‰” Ê ò«Â‘  ⁄œ«œ ¬‰ œ— ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' Œ—Ìœ«— '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;
      type_:='Ê—ÊœÌ - ò„ ‘œ‰ «“  ⁄œ«œ Ã‰” œ— ›«ò Ê— ›—Ê‘ œ— ÊÌ—«Ì‘ ›«ò Ê— ›—Ê‘';
    end;


    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showjens.AsString)+','+
    FloatToStr(tedad_jozi_jadid)+','+
    DataModule_gozaresh_tarkibi.ADO_fac_roz_showcalacod.AsString+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showvahed_koli.AsString)+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showvahed_jozei.AsString)+','+

    FloatToStr(tedad_koli_jadid)+','+
    DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsString+','+
    DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+','+

    FloatToStr(tedad_kol_jadid)+','+


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

////////////////////////
procedure Tfrm_elsah.update_bedehkar_bestankar;
begin
    DataModule2.adotasfie.SQL.Text:='update bedeh_bestan set bedeh='+L_bedehkar.Caption+
    ',talab='+L_bestankar.Caption+
    '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+
    ' and sh_khaid='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+
    ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString);
    DataModule2.adotasfie.ExecSQL;
end;

procedure Tfrm_elsah.update_forosh(t_jozi_dar_koli,jam_jadid,g_vahed,forosh_id:string);
var arzesh_kol_bade_elah,tedadkli_pas_az_tafazol,t_j:real;
begin
     if t_jozi_dar_koli<>'0' then
    begin

      tedadkli_pas_az_tafazol:=int(StrToFloat(jam_jadid)/StrToFloat(t_jozi_dar_koli));

      t_j:=StrToFloat(jam_jadid)-(tedadkli_pas_az_tafazol*StrToFloat(t_jozi_dar_koli));

      arzesh_kol_bade_elah:=StrToFloat(jam_jadid)*StrToFloat(g_vahed);

      Dmlistha.adolistforosh.SQL.Text:='update forosh_jens set tedad='+FloatToStr(t_j)+
      ' ,tedad_koli='+
      FloatToStr(tedadkli_pas_az_tafazol)+' ,tedad_kol='+jam_jadid+',geymat_vahed='+g_vahed+
      ' ,geymat_jens='+FloatToStr(arzesh_kol_bade_elah)+' where id='+forosh_id;
    Dmlistha.adolistforosh.ExecSQL;
    end
    else
      begin

        t_j:=StrToFloat(jam_jadid);

        arzesh_kol_bade_elah:=StrToFloat(jam_jadid)*StrToFloat(g_vahed);
        Dmlistha.adolistforosh.SQL.Text:='update forosh_jens set tedad='+FloatToStr(t_j)+
         ' ,tedad_kol='+FloatToStr(t_j)+',geymat_vahed='+g_vahed+
         ' ,geymat_jens='+FloatToStr(arzesh_kol_bade_elah)+' where id='+forosh_id;
         Dmlistha.adolistforosh.ExecSQL;

      end;
end;



/////////////////////////////////////////////////
procedure Tfrm_elsah.bedeh_talab_after_eslah;
var check,kol_pardakht,nagd,arzesh_fa_bede_eslah,talab_eslah,bedeh_eslah:string;
begin
    if (DBT_m_check.Caption='0') or (DBT_m_check.Caption='') then
             check:='0'
         else
          check:=DBT_m_check.Caption;

    if (DBT_mab_gabl.Caption='0') or (DBT_mab_gabl.Caption='') then
             nagd:='0'
         else
          nagd:=DBT_mab_gabl.Caption;

      kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat);


      arzesh_fa_bede_eslah:=Label_g_kol_jadid.Caption;

   if StrToFloat(DBText1_g_kol_gadim.Caption)= StrToFloat(Label_g_kol_jadid.Caption) then
    begin
      talab_eslah:='0';
      bedeh_eslah:='0';

      arzesh_fa_bede_eslah:=Dmlistha.ADOmohasebe_foroshkol_.AsString;

      if StrToFloat(kol_pardakht)> StrToFloat(arzesh_fa_bede_eslah) then
      begin
        L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(arzesh_fa_bede_eslah));
        L_bedehkar.Caption:='0';
      end;

      if StrToFloat(kol_pardakht)< StrToFloat(arzesh_fa_bede_eslah) then
      begin
        L_bestankar.Caption:='0';
        L_bedehkar.Caption:=FloatToStr(StrToFloat(arzesh_fa_bede_eslah)-StrToFloat(kol_pardakht));
      end;

    if StrToFloat(kol_pardakht)= StrToFloat(arzesh_fa_bede_eslah) then
    begin
      L_bestankar.Caption:='0';
      L_bedehkar.Caption:='0';
    end;
   end;



    if StrToFloat(DBText1_g_kol_gadim.Caption)< StrToFloat(Label_g_kol_jadid.Caption) then
    begin
      bedeh_eslah:=FloatToStr(StrToFloat(Label_g_kol_jadid.Caption)-StrToFloat(DBText1_g_kol_gadim.Caption));
      talab_eslah:='0';

      arzesh_fa_bede_eslah:=FloatToStr(Dmlistha.ADOmohasebe_foroshkol_.AsFloat+StrToFloat(bedeh_eslah));

      if StrToFloat(kol_pardakht)> StrToFloat(arzesh_fa_bede_eslah) then
      begin
        L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(arzesh_fa_bede_eslah));
        L_bedehkar.Caption:='0';
      end;
      if StrToFloat(kol_pardakht)< StrToFloat(arzesh_fa_bede_eslah) then
      begin
        L_bestankar.Caption:='0';
        L_bedehkar.Caption:=FloatToStr(StrToFloat(arzesh_fa_bede_eslah)-StrToFloat(kol_pardakht));
      end;
    end;



    if StrToFloat(DBText1_g_kol_gadim.Caption)> StrToFloat(Label_g_kol_jadid.Caption) then
    begin
      talab_eslah:=FloatToStr(StrToFloat(DBText1_g_kol_gadim.Caption)-StrToFloat(Label_g_kol_jadid.Caption));
      bedeh_eslah:='0';

      arzesh_fa_bede_eslah:=FloatToStr(Dmlistha.ADOmohasebe_foroshkol_.AsFloat-StrToFloat(talab_eslah));

      if StrToFloat(kol_pardakht)> StrToFloat(arzesh_fa_bede_eslah) then
      begin
        L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(arzesh_fa_bede_eslah));
        L_bedehkar.Caption:='0';
      end;
      if StrToFloat(kol_pardakht)< StrToFloat(arzesh_fa_bede_eslah) then
      begin
        L_bestankar.Caption:='0';
        L_bedehkar.Caption:=FloatToStr(StrToFloat(arzesh_fa_bede_eslah)-StrToFloat(kol_pardakht));
      end;
    end;

    if StrToFloat(kol_pardakht)= StrToFloat(arzesh_fa_bede_eslah) then
    begin
      L_bestankar.Caption:='0';
      L_bedehkar.Caption:='0';
    end;

end;


//////////////////////////////////////////////////////////////////////////
function Tfrm_elsah.tedad_jadid_va_magadir_anbar:boolean;
var t_jozi_dar_anbar,t_koli_dar_anbar,tedad_koli_jadid,tedad_jozi_jadid:real;
begin
  tedad_jadid_va_magadir_anbar:=true;
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+DataModule_gozaresh_tarkibi.ADO_fac_roz_showcalacod.AsString+
  ' and anbarname='+QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showanbarname.AsString);
  Dmanbarexite.ADOanbarcala.Open;

  t_jozi_dar_anbar:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;
  t_koli_dar_anbar:=Dmanbarexite.ADOanbarcala.Fields[10].AsFloat;

  if Edit_t_koli_jadid_.Text='' then
        tedad_koli_jadid:=0
    else
        tedad_koli_jadid:=StrToFloat(Edit_t_koli_jadid_.Text);

  if Edit_t_jozi_jadid.Text='' then
        tedad_jozi_jadid:=0
     else
        tedad_jozi_jadid:=StrToFloat(Edit_t_jozi_jadid.Text);

   if (tedad_jozi_jadid+(tedad_koli_jadid* StrToFloat(frm_elsah.DBText_t_jozi_dar_koli.Caption))>t_jozi_dar_anbar+StrToFloat(frm_elsah.DBText_t_jam.Caption) ) then
 begin
     tedad_jadid_va_magadir_anbar:=false;
     MessageBox(Handle,pchar('Ã„⁄  ⁄œ«œ «‰ Œ«»Ì »Â ’Ê—  ò·Ì Ê Ã“∆Ì «“ Ã‰” <<'+frm_elsah.DBText_jens.Caption+' >> »«Ìœ ò„ — Ì« „”«ÊÌ << '+FloatToStr(t_jozi_dar_anbar+StrToFloat(frm_elsah.DBText_t_jam.Caption))+' >> »«‘œ.'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
     //Edit_t_jozi_jadid.Text:='';
     //Edit_t_koli_jadid_.Text:='';
     Edit_t_koli_jadid_.SetFocus;
 end
 else
begin
  if tedad_koli_jadid > t_koli_dar_anbar+StrToFloat(frm_elsah.DBText_t_koli.Caption) then
  begin
     tedad_jadid_va_magadir_anbar:=false;
     MessageBox(Handle,pchar(' ⁄œ«œ ò·Ì Ê«—œ ‘œÂ «“ Ã‰” << '+frm_elsah.DBText_jens.Caption+' >> »«Ìœ ò„ — Ì« „”«ÊÌ << ' +FloatToStr(t_koli_dar_anbar+StrToFloat(frm_elsah.DBText_t_koli.Caption))+' >> »«‘œ.'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    // Edit_t_koli_jadid_.Text:='';
     Edit_t_koli_jadid_.SetFocus;
  end;
  if tedad_jozi_jadid > t_jozi_dar_anbar+StrToFloat(frm_elsah.DBText_t_jam.Caption) then
  begin
      tedad_jadid_va_magadir_anbar:=false;
     MessageBox(Handle,pchar(' ⁄œ«œ Ã“∆Ì Ê«—œ ‘œÂ «“ Ã‰” << '+frm_elsah.DBText_jens.Caption+' >> »«Ìœ ò„ — Ì« „”«ÊÌ <<  ='+FloatToStr(t_jozi_dar_anbar+StrToFloat(frm_elsah.DBText_t_jam.Caption))+' >> »«‘œ.'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
     //Edit_t_jozi_jadid.Text:='';
     Edit_t_jozi_jadid.SetFocus;
  end;
end;
end;
procedure Tfrm_elsah.cllear;
begin
    Edit_t_koli_jadid_.Text:='';
    Edit_t_jozi_jadid.Text:='';
    Label_g_kol_jadid.Caption:='';
end;


function Tfrm_elsah.check:boolean;
var i,j:integer;
     s:string;
begin
    check:=true;
    j:=0;
    s:=Edit_t_jozi_jadid.Text;
   for i:=1 to StrLen(PChar(s)) do
     begin
        if s[i]='.' then
          j:=j+1;
     end;
   if j>1 then
     begin
       MessageBox(Handle,'⁄·«„  ‰ﬁÿÂ «⁄‘«—Ì ›ﬁÿ Ìò »«— »«Ìœ Ê«—œ ‘Êœ.',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
       check:=false;
       Edit_t_jozi_jadid.Text:='';
     end;
end;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////

procedure Tfrm_elsah.update_bedehi_kharidar_pas_az_bedekar_shodan;
var check,kol_pardakht,nagd,talab_eslah,bedeh_eslah:string;
begin
    if (DBT_m_check.Caption='0') or (DBT_m_check.Caption='') then
             check:='0'
         else
          check:=DBT_m_check.Caption;

    if (DBT_mab_gabl.Caption='0') or (DBT_mab_gabl.Caption='') then
             nagd:='0'
         else
          nagd:=DBT_mab_gabl.Caption;

   kol_pardakht:=FloatToStr(StrToFloat(nagd)+StrToFloat(check));

   if StrToFloat(DBT_arzesh.Caption) > StrToFloat(kol_pardakht) then
   begin
    bedeh_eslah:=FloatToStr(StrToFloat(DBT_arzesh.Caption) - StrToFloat(kol_pardakht));

    DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+
    bedeh_eslah+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
    DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+
    bedeh_eslah+' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+
    FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
    DataM_final.ADOQ_takhfife_forosh.ExecSQL;
   end;

   if StrToFloat(DBT_arzesh.Caption) < StrToFloat(kol_pardakht) then
   begin
        talab_eslah:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(DBT_arzesh.Caption));
        DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab-'+talab_eslah+
        ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
        DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
   end;

     DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+
     L_bedehkar.Caption+',talab=talab+'+L_bestankar.Caption+' where shahrforoshande='+
     QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
     DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+
    L_bedehkar.Caption+' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+
    FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
    DataM_final.ADOQ_takhfife_forosh.ExecSQL;
end;

procedure Tfrm_elsah.update_anbar;
var temp,tedadkli_pas_az_tafazol,t_kol_anbar,t_j_anbar:real;
begin
    Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli  where calacod='+DataModule_gozaresh_tarkibi.ADO_fac_roz_showcalacod.AsString+
    ' and anbarname='+QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showanbarname.AsString);
    Dmanbarexite.ADOanbarcala.Open;
    
    t_kol_anbar:=Dmanbarexite.ADOanbarcala.Fields[10].AsFloat;

    t_j_anbar:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;

    temp:=StrToFloat(L_jam_jadid.Caption)-StrToFloat(DBText_t_jam.Caption);

if temp > 0 then
begin
    if StrToFloat(DBText_t_jozi_dar_koli.Caption)<>0 then
    begin
      tedadkli_pas_az_tafazol:=int((t_j_anbar-temp)/StrToFloat(DBText_t_jozi_dar_koli.Caption) );
      Dmanbarexite.ADOanbarcala.SQL.Text:='update Tanbar_jens_kolli set tedad_koli='+floattostr(tedadkli_pas_az_tafazol)+' , tedadanbar=tedadanbar-'+FloatToStr(temp)+
      ' where calacod='+DataModule_gozaresh_tarkibi.ADO_fac_roz_showcalacod.AsString+
      ' and anbarname='+QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showanbarname.AsString);
      Dmanbarexite.ADOanbarcala.ExecSQL;
    end
      else
        begin
          Dmanbarexite.ADOanbarcala.SQL.Text:='update Tanbar_jens_kolli set  tedadanbar=tedadanbar-'+FloatToStr(temp)+
          ' where calacod='+DataModule_gozaresh_tarkibi.ADO_fac_roz_showcalacod.AsString+
          ' and anbarname='+QuotedStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showanbarname.AsString);
          Dmanbarexite.ADOanbarcala.ExecSQL;
        end;
end
else
      begin
      temp:=-temp;
      if StrToFloat(DBText_t_jozi_dar_koli.Caption)<>0 then
      begin
          tedadkli_pas_az_tafazol:=int((t_j_anbar+temp)/StrToFloat(DBText_t_jozi_dar_koli.Caption) );
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
          Dmanbarexite.ADOanbarcala.ExecSQL
        end;
      end;


end;

procedure Tfrm_elsah.mohasebe_tafazol_forosh;
var geymat_vahed,geymat_gadim,jame_gadim,
       geymatjadid_,jam_,tedadjozi_,tedadkoli_,tedad_koli_jadid,tedad_jozi_jadid,tedadjozi_dar_koli:real;
begin

   tedadjozi_dar_koli:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_jozi_dar_koli.AsFloat;

   jame_gadim:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_kol.AsFloat;

   if trim(DBText_g_vahed.Text)<>'' then
    geymat_vahed:=StrToFloat(DBText_g_vahed.Text)
   else
    geymat_vahed:=0;


    if (Edit_t_koli_jadid_.Text='0')or(trim(Edit_t_koli_jadid_.Text)='') then
        tedad_koli_jadid:=0
    else
        tedad_koli_jadid:=StrToFloat(Edit_t_koli_jadid_.Text);

     if (Edit_t_jozi_jadid.Text='0')or(trim(Edit_t_jozi_jadid.Text)='') then
        tedad_jozi_jadid:=0
     else
        tedad_jozi_jadid:=StrToFloat(Edit_t_jozi_jadid.Text);



   tedadkoli_:=tedad_koli_jadid;
   tedadjozi_:=tedad_jozi_jadid;
   jam_:=(tedadkoli_ *tedadjozi_dar_koli)+tedadjozi_;
   geymatjadid_:=jam_* geymat_vahed;

  L_jam_jadid.Caption:=FloatToStr(jam_);

  Label_g_kol_jadid.Caption:=FloatToStr(geymatjadid_);

end;


procedure Tfrm_elsah.FormShow(Sender: TObject);
begin
    Edit_t_koli_jadid_.Text:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_koli.AsString;
    Edit_t_jozi_jadid.Text:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad.AsString;

    L_jam_jadid.Caption:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_kol.AsString;

    Label_g_kol_jadid.Caption:=FloatToStr(DataModule_gozaresh_tarkibi.ADO_fac_roz_showgeymat_vahed.AsFloat*StrToFloat(L_jam_jadid.Caption));

    DBText_g_vahed.Text:=DataModule_gozaresh_tarkibi.ADO_fac_roz_showgeymat_vahed.AsString;

    bedeh_talab_after_eslah;
end;

procedure Tfrm_elsah.Edit_t_koli_jadid_KeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_elsah.Edit_t_jozi_jadidKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_elsah.Edit_t_jozi_jadidChange(Sender: TObject);
begin
   if check then
   begin
     if tedad_jadid_va_magadir_anbar then
     begin
      if trim(DBText_g_vahed.Text)<>'' then
      begin
        mohasebe_tafazol_forosh;
        bedeh_talab_after_eslah;
      end;
     end;
   end;
end;

procedure Tfrm_elsah.Edit_t_koli_jadid_Change(Sender: TObject);
begin
   if check then
   begin
     if tedad_jadid_va_magadir_anbar then
     begin
      if trim(DBText_g_vahed.Text)<>'' then
      begin
        mohasebe_tafazol_forosh;
        bedeh_talab_after_eslah;
      end;
     end;
   end;
end;

procedure Tfrm_elsah.Edit_t_koli_jadid_Exit(Sender: TObject);
begin
   if check then
   begin
     if tedad_jadid_va_magadir_anbar then
     begin
      if trim(DBText_g_vahed.Text)<>'' then
      begin
        mohasebe_tafazol_forosh;
        bedeh_talab_after_eslah;
      end;
     end;
   end;
end;

procedure Tfrm_elsah.Edit_t_jozi_jadidExit(Sender: TObject);
begin
  if Edit_t_koli_jadid_.Text='' then
        Edit_t_koli_jadid_.Text:='0';

  if Edit_t_jozi_jadid.Text='' then
        Edit_t_jozi_jadid.Text:='0';
   if check then
   begin
     if tedad_jadid_va_magadir_anbar then
     begin
      if trim(DBText_g_vahed.Text)<>'' then
      begin
        mohasebe_tafazol_forosh;
        bedeh_talab_after_eslah;
      end;
     end;
   end;
end;

procedure Tfrm_elsah.Button1Click(Sender: TObject);
begin

if tedad_jadid_va_magadir_anbar then
begin////
if (DBText_g_vahed.Text='')then
    DBText_g_vahed.Text:='0';
if StrToFloat(DBText_g_vahed.Text)=0 then
     MessageBox(Handle,pchar('ﬁÌ„  Ê«Õœ Ã“∆Ì Ê«—œ ‰‘œÂ «” '),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin
   if Edit_t_jozi_jadid.Text='' then
     Edit_t_jozi_jadid.Text:='0';

   if Edit_t_koli_jadid_.Text='' then
     Edit_t_koli_jadid_.Text:='0';
     
  if (StrToFloat(Edit_t_jozi_jadid.Text)+(StrToFloat(Edit_t_koli_jadid_.Text)* StrToFloat(frm_elsah.DBText_t_jozi_dar_koli.Caption)))=0 then
  begin
    MessageBox(Handle,pchar(' ⁄œ«œ ÃœÌœ ’›— ( 0 ) »—«Ì Ã‰” << '+frm_elsah.DBText_jens.Caption+' >> »Â „⁄‰«Ì Õ–› ›—Ê‘ „Ì »«‘œ.›—Ê‘ —« Õ–› ‰„«ÌÌœ.'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    frm_elsah.Close;
    Close;
  end
  else
  begin
    {if StrToFloat(L_jam_jadid.Caption)=StrToFloat(DBText_t_jam.Caption) then
        MessageBox(Handle,pchar(' ⁄œ«œ ÃœÌœ Ã‰” »—«»— »« Â„«‰  ⁄œ«œ ﬁ»·Ì ›—Ê‘ „Ì »«‘œ .'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
    else
    begin }
    frm_elsah.l_taeed_eslah.Caption:='yes';

    execute_eslahe_tedade_forosh_stored_procedure(DBText_t_jozi_dar_koli.Caption,L_jam_jadid.Caption,DBText_g_vahed.Text,DBText_forosh_id.Caption);

    frm_eslah_forosh.aghlame_factor;
    frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
    ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    DataM_final.ADOQ_takhfife_forosh.Open;    

    {update_bedehkar_bestankar;
    if StrToFloat(L_jam_jadid.Caption)<>DataModule_gozaresh_tarkibi.ADO_fac_roz_showtedad_kol.AsFloat then
      insert_gozaresh_az_eslhe_tedade_jens;
    update_forosh(DBText_t_jozi_dar_koli.Caption,L_jam_jadid.Caption,DBText_g_vahed.Text,DBText_forosh_id.Caption);
    update_anbar;
    update_bedehi_kharidar_pas_az_bedekar_shodan;

    frm_main.l_last_op.Caption:=' «’·«Õ  ⁄œ«œ Ã‰” '+DBText_jens.Caption+' œ— ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+
    ' ‘Œ’ '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;
    
    frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' «“  ⁄œ«œ ò· '+FloatToStr((StrToFloat(DBText_t_koli.Caption)*StrToFloat(DBText_t_jozi_dar_koli.Caption)+StrToFloat(DBText_t_jozi.Caption)))+
    ' »Â '+L_jam_jadid.Caption); }

    close;
    {end;}
  end;
end;
end;///
end;

procedure Tfrm_elsah.DBText_g_vahedKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_elsah.DBText_g_vahedChange(Sender: TObject);
begin

     mohasebe_tafazol_forosh;
     bedeh_talab_after_eslah;

end;

end.

