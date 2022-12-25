unit unt_eslah_kharid_tedad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Mask;

type
  Tfrm_eslah_kharid_tedad = class(TForm)
    DataSource2: TDataSource;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    Dskharidha: TDataSource;
    DataSource4: TDataSource;
    Label9: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label_g_kol_jadid: TLabel;
    l_taeed_eslah: TLabel;
    L_jam_jadid: TLabel;
    L_bestankar: TLabel;
    L_bedehkar: TLabel;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    DBText2: TDBText;
    Label18: TLabel;
    DBT_mab_gabl: TDBText;
    Label19: TLabel;
    DBT_m_check: TDBText;
    DBText3: TDBText;
    Label20: TLabel;
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
    GroupBox_jens: TGroupBox;
    Label13: TLabel;
    DBText_t_koli: TDBText;
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
    DBText_t_jozi: TDBText;
    Label2: TLabel;
    DBText1: TDBText;
    DBText_g_vahed: TEdit;
    Button1: TButton;
    procedure Edit_t_koli_jadid_Exit(Sender: TObject);
    procedure Edit_t_jozi_jadidKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_t_jozi_jadidChange(Sender: TObject);
    procedure Edit_t_jozi_jadidExit(Sender: TObject);
    function check:boolean;
    function tedad_jadid_va_magadir_anbar:boolean;
    procedure mohasebe_tafazol_forosh;
    procedure bedeh_talab_after_eslah;
    procedure Button1Click(Sender: TObject);
    procedure update_bedehkar_bestankar;
    procedure update_forosh(t_jozi_dar_koli,jam_jadid,g_vahed,forosh_id:string);
    procedure update_anbar_majazi(s:string);
    procedure update_bedehi_kharidar_pas_az_bedekar_shodan;
    procedure DBText_g_vahedKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_t_koli_jadid_KeyPress(Sender: TObject; var Key: Char);
    procedure DBText_g_vahedChange(Sender: TObject);
    procedure Edit_t_koli_jadid_Change(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure insert_gozaresh_az_eslhe_tedade_jens;
    procedure execute_eslahe_kharid_tedad(t_jozi_dar_koli,jam_jadid,g_vahed,forosh_id:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah_kharid_tedad: Tfrm_eslah_kharid_tedad;

implementation

uses Untdmanbarexit, unt_elsah, unt_datamodule2, unt_DataM_final,
  Untdmlistha, unt_datamodule1, unt_eslah_kharid, unt_main, Unt_dmanbar,
  unt_datam_sp_eslahe_forosh, unt_Dm_zayeat_marjoei;
{$R *.dfm}
procedure Tfrm_eslah_kharid_tedad.execute_eslahe_kharid_tedad(t_jozi_dar_koli,jam_jadid,g_vahed,forosh_id:string);
var  
     tedad_kol_jadid,tedad_jozi_jadid_goz_anbar,tedad_koli_jadid_goz_anbar:real;
     tedad_koli_gadim,tedad_jozi_gadim,tedad_kol_gadim,temp,sabte_gozaresh_anbar:real;
     s,type_,anbar:string;

     tedadkli_pas_az_tafazol,t_kol_anbar,t_j_anbar,id:real;
     arzesh_kol_bade_elah,t_j,arzesh_kol:real;

     check,kol_pardakht,nagd,talab_eslah,bedeh_eslah:string;

     type_update_anbar_majazi,type_bedeh,type_update_jens:real;
begin

  ///////////////// gozareshe anbar ////////////////
    tedad_kol_gadim:=Dmlistha.ADOkharidhatedad.AsFloat;

    tedad_kol_jadid:=StrToFloat(L_jam_jadid.Caption);

  sabte_gozaresh_anbar:=0;
  if tedad_kol_jadid<>tedad_kol_gadim then
  begin
    sabte_gozaresh_anbar:=1;
    anbar:='«‰»«— „Ã«“Ì';

    tedad_koli_gadim:=Dmlistha.ADOkharidhatedad_koli.AsFloat;
    tedad_jozi_gadim:=Dmlistha.ADOkharidhatedad.AsFloat;


    if tedad_kol_jadid>tedad_kol_gadim  then
    begin
      temp:=StrToFloat(L_jam_jadid.Caption)-tedad_kol_gadim;

      if Dmlistha.ADOkharidhavahed_koli.AsString<>'' then
      begin
        tedad_koli_jadid_goz_anbar:=int(temp/Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsFloat );
        tedad_jozi_jadid_goz_anbar:=temp-(Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsFloat*(int(temp/Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsFloat)));
      end
      else
      begin
        tedad_koli_jadid_goz_anbar:=0;
        tedad_jozi_jadid_goz_anbar:=temp;
      end;
    end
    else
    begin
      temp:=tedad_kol_gadim-StrToFloat(L_jam_jadid.Caption);

      if Dmlistha.ADOkharidhavahed_koli.AsString<>'' then
      begin
        tedad_koli_jadid_goz_anbar:=int(temp/Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsFloat );
        tedad_jozi_jadid_goz_anbar:=temp-(Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsFloat*(int(temp/Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsFloat)));
      end
      else
      begin
        tedad_koli_jadid_goz_anbar:=0;
        tedad_jozi_jadid_goz_anbar:=temp;
      end;
    end;

    if tedad_kol_jadid  > tedad_kol_gadim then
    begin
      tedad_kol_jadid:=tedad_kol_jadid-tedad_kol_gadim ;
      s:='Ê—Êœ Ã‰” »Â „ò«‰ '+anbar+' »Â ⁄·  ÊÌ—«Ì‘  ⁄œ«œ Ã‰” Ê «›“«Ì‘  ⁄œ«œ ¬‰ œ— ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' ›—Ê‘‰œÂ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;
      type_:='Ê—ÊœÌ - «÷«›Â ‘œ‰ »Â  ⁄œ«œ Ã‰” œ— ›«ò Ê— Œ—Ìœ œ— ÊÌ—«Ì‘ ›«ò Ê— Œ—Ìœ';
    end
    else
    begin
      tedad_kol_jadid:=tedad_kol_gadim-tedad_kol_jadid;
      s:=' Œ—ÊÃ Ã‰” «“ „ò«‰ '+anbar+' »Â ⁄·  ÊÌ—«Ì‘  ⁄œ«œ Ã‰” Ê ò«Â‘  ⁄œ«œ ¬‰ œ— ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' Œ—Ìœ«— '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;
      type_:='Œ—ÊÃÌ - ò„ ‘œ‰ «“  ⁄œ«œ Ã‰” œ— ›«ò Ê— Œ—Ìœ œ— ÊÌ—«Ì‘ ›«ò Ê— Œ—Ìœ';
    end;
  end;




 

  ///////////////// gozareshe anbar ////////////////
   
  /////////////////  update anbare majazi ////////////////

  Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='select * from t_anbar_majazi where calaname='+
  QuotedStr(Dmlistha.ADOkharidhajens.AsString)+' and vahed_koli='+QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+
  ' and  vahed_jozi='+QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+' and tedad_jozi_da_koli='+
  Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+' and geymatkharid='+Dmlistha.ADOkharidhagheymat.AsString+
  ' and sh_factor='+Dmlistha.ADOkharidhash_factor.AsString+
  ' and shakhs_sherkat='+QuotedStr(Dmlistha.ADOkharidhashahrforoshande.AsString)+
  ' and tedad_koli='+Dmlistha.ADOkharidhatedad_koli.AsString+
  ' and tedadanbar='+Dmlistha.ADOkharidhatedad.AsString;
  Dmlistha.ADOQuery_anbar_majazi.Open;

  Dmlistha.ADOQuery_anbar_majazi.First;

  id:=Dmlistha.ADOQuery_anbar_majaziid.Value;

  if Dmlistha.ADOQuery_anbar_majazivahed_koli.AsString='' then
  begin
    t_kol_anbar:=0;
    t_j_anbar:=Dmlistha.ADOQuery_anbar_majazitedadanbar.Value;
  end
  else
  begin
   t_kol_anbar:=(Dmlistha.ADOQuery_anbar_majazitedad_koli.Value);
   t_j_anbar:=Dmlistha.ADOQuery_anbar_majazitedadanbar.Value;
  end;
    temp:=StrToFloat(L_jam_jadid.Caption)-StrToFloat(DBText_t_jam.Caption);
if temp > 0 then
begin
    if Dmlistha.ADOQuery_anbar_majazivahed_koli.AsString<>'' then
    begin
      tedadkli_pas_az_tafazol:=int((t_j_anbar+temp)/StrToFloat(DBText_t_jozi_dar_koli.Caption) );
      type_update_anbar_majazi:=1;

      {Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update t_anbar_majazi set tedad_koli='+floattostr(tedadkli_pas_az_tafazol)+
      ' , tedadanbar=tedadanbar+'+FloatToStr(temp)+',geymatkharid='+DBText_g_vahed.Text+',geymatforosh='+DBText_g_vahed.Text+
      ',geymat_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
      ',geymat_forosh_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
      ' where id='+floattostr(id);
      Dmlistha.ADOQuery_anbar_majazi.ExecSQL; }
    end
      else
        begin
          type_update_anbar_majazi:=2;
          {Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update t_anbar_majazi set  tedadanbar=tedadanbar+'+FloatToStr(temp)+
          ',geymatkharid='+DBText_g_vahed.Text+',geymatforosh='+DBText_g_vahed.Text+
          ',geymat_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
          ',geymat_forosh_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
          ' where id='+floattostr(id);
          Dmlistha.ADOQuery_anbar_majazi.ExecSQL; }
        end;
end
else
      begin
      if Dmlistha.ADOQuery_anbar_majazivahed_koli.AsString<>'' then
      begin
          tedadkli_pas_az_tafazol:=int((t_j_anbar+temp)/StrToFloat(DBText_t_jozi_dar_koli.Caption) );
          type_update_anbar_majazi:=3;

          {Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update t_anbar_majazi set tedad_koli='+floattostr(tedadkli_pas_az_tafazol)+
          ' , tedadanbar=tedadanbar+'+FloatToStr(temp)+
          ',geymatkharid='+DBText_g_vahed.Text+',geymatforosh='+DBText_g_vahed.Text+
          ',geymat_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
          ',geymat_forosh_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
          ' where id='+floattostr(id);
          Dmlistha.ADOQuery_anbar_majazi.ExecSQL;}
      end
      else
        begin
          type_update_anbar_majazi:=4;
          {Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update t_anbar_majazi set  tedadanbar=tedadanbar+'+FloatToStr(temp)+
          ',geymatkharid='+DBText_g_vahed.Text+',geymatforosh='+DBText_g_vahed.Text+
          ',geymat_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
          ',geymat_forosh_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
          ' where id='+floattostr(id);
          Dmlistha.ADOQuery_anbar_majazi.ExecSQL; }
        end;
      end;  

 /////////////////  update anbare majazi ////////////////



 //////////////// update jadvale kharid //////////////

    if t_jozi_dar_koli<>'0' then
    begin
      type_update_jens:=1;

      tedadkli_pas_az_tafazol:=int(StrToFloat(jam_jadid)/StrToFloat(t_jozi_dar_koli));

      t_j:=StrToFloat(jam_jadid)-(tedadkli_pas_az_tafazol*StrToFloat(t_jozi_dar_koli));

      arzesh_kol_bade_elah:=StrToFloat(jam_jadid)*StrToFloat(g_vahed);

      {Dmlistha.ADOkharidha.SQL.Text:='update jens_ set teded_jozi='+FloatToStr(t_j)+
      ' ,tedad_koli='+
      FloatToStr(tedadkli_pas_az_tafazol)+' ,tedad='+jam_jadid+
      ' ,kol='+FloatToStr(arzesh_kol_bade_elah)+',gheymat='+g_vahed+
      ' where id='+forosh_id;
    Dmlistha.ADOkharidha.ExecSQL;}
    end
    else
      begin
        type_update_jens:=2;
        t_j:=StrToFloat(jam_jadid);

        arzesh_kol_bade_elah:=StrToFloat(jam_jadid)*StrToFloat(g_vahed);
        {Dmlistha.ADOkharidha.SQL.Text:='update jens_ set teded_jozi='+FloatToStr(t_j)+
         ' ,tedad='+FloatToStr(t_j)+
         ' ,kol='+FloatToStr(arzesh_kol_bade_elah)+',gheymat='+g_vahed+
         ' where id='+forosh_id;

         Dmlistha.ADOkharidha.ExecSQL;}

      end; 

 //////////////// update jadvale kharid //////////////

    if (DBT_m_check.Caption='0') or (DBT_m_check.Caption='') then
             check:='0'
         else
          check:=DBT_m_check.Caption;

    if (DBT_mab_gabl.Caption='0') or (DBT_mab_gabl.Caption='') then
             nagd:='0'
         else
          nagd:=DBT_mab_gabl.Caption;

   kol_pardakht:=FloatToStr(StrToFloat(nagd)+StrToFloat(check));

   arzesh_kol:=Dmlistha.ADOmohasebe_kharidkol_.AsFloat-Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat;

   bedeh_eslah:='0';
   talab_eslah:='0';
   
   if arzesh_kol > StrToFloat(kol_pardakht) then
   begin
    bedeh_eslah:=FloatToStr(arzesh_kol - StrToFloat(kol_pardakht));
    type_bedeh:=1;

    {DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh-'+
    bedeh_eslah+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
    DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;}
   end;

   if arzesh_kol < StrToFloat(kol_pardakht) then
   begin
        talab_eslah:=FloatToStr(StrToFloat(kol_pardakht)-arzesh_kol);
        type_bedeh:=2

        {DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set talab=talab-'+talab_eslah+
        ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
        DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL; }
   end;

     {DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh+'+
     L_bedehkar.Caption+',talab=talab+'+L_bestankar.Caption+' where shahrforoshande='+
     QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
     DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL; }
 ///////////////////////////////////////////////////////////////////////////

   frm_main.l_last_op.Caption:=' «’·«Õ  ⁄œ«œ Ã‰” Œ—Ìœ«—Ì ‘œÂ '+DBText_jens.Caption+' œ— ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
  ' «“ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;


   //////////////////////////////////////////////////////////////////

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[0].Value:=L_bedehkar.Caption;//@bedehkar float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[1].Value:=L_bestankar.Caption;//@bestankar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[2].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;//@code_kharidar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[3].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;//@sh_factor float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[4].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString;//@tatikh_forosh nvarchar(12),

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[5].Value:=Dmlistha.ADOkharidhajens.AsString;//@calaname nvarchar(41),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[6].Value:=tedad_jozi_jadid_goz_anbar;//@tedade_jozi float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[7].Value:=Dmlistha.ADOkharidhacode.AsString;//@calacod float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[8].Value:=Dmlistha.ADOkharidhavahed_koli.AsString;//@vahed_koli nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[9].Value:=Dmlistha.ADOkharidhavahed_jozei.AsString;//@vahed_jozi nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[10].Value:=tedad_koli_jadid_goz_anbar;//@tedade_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[11].Value:=Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString;//@tedad_jozi_da_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[12].Value:=tedad_kol_jadid;//@tedad_kole_jabejaei float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[13].Value:=s;//@tozihe_anbar nvarchar(200),

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[14].Value:=Dmlistha.ADOkharidhabarcod.AsString;//@barcod nvarchar(15),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[15].Value:=Dmlistha.ADOkharidhacode_sherkati.AsString;//@code_sherkati nvarchar(11),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[16].Value:=anbar;//@anbarname nvarchar(30),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[17].Value:=type_;//@type_kh_az_anbar nvarchar(100),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[18].Value:=sabte_gozaresh_anbar;//@sabte_gozaresh_anbar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[19].Value:=t_j;//@t_j float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[20].Value:=jam_jadid;//@jam_jadid float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[21].Value:=g_vahed;//@geymatkharid float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[22].Value:=0;//@geymatkoli float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[23].Value:=arzesh_kol_bade_elah;//@arzesh_kol_bade_elah float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[24].Value:=id;//@id_dar_anbare_majazi float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[25].Value:=forosh_id;//@id_dar_jens_ float,


   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[26].Value:=frm_main.l_last_op.Caption+' «“  ⁄œ«œ ò· '+FloatToStr(tedad_kol_gadim)+
  ' »Â '+L_jam_jadid.Caption;//@amaliat nvarchar(1000),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[27].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[28].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[29].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@shahrforoshande nvarchar(100),

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[30].Value:=tedadkli_pas_az_tafazol;//@tedadkli_pas_az_tafazol1 float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[31].Value:=temp;//@temp float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[32].Value:=type_update_anbar_majazi;//@type_update_anbar_majazi float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[33].Value:=type_bedeh;//@typ_bedeh float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[34].Value:=StrToFloat(bedeh_eslah);//@bedeh_eslah float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[35].Value:=StrToFloat(talab_eslah);//@talab_eslah float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[36].Value:=tedad_jozi_jadid_goz_anbar;//@tedad_jozi_jadid_goz_anbar float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[37].Value:=tedad_koli_jadid_goz_anbar;//@tedad_koli_jadid_goz_anbar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.Parameters[38].Value:=type_update_jens;//@type_update_jens float

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_tedad.ExecProc;

  MessageBox(Handle,pchar(' ⁄œ«œ ÃœÌœ Ã‰” «‰ Œ«»Ì –ŒÌ—Â ‘œ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;
//////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_eslah_kharid_tedad.insert_gozaresh_az_eslhe_tedade_jens;
var tedad_koli_jadid,tedad_jozi_jadid,tedad_kol_jadid:real;
    tedad_koli_gadim,tedad_jozi_gadim,tedad_kol_gadim,temp:real;
    s,type_,anbar:string;
begin
    anbar:='«‰»«— „Ã«“Ì';

    tedad_koli_gadim:=Dmlistha.ADOkharidhatedad_koli.AsFloat;
    tedad_jozi_gadim:=Dmlistha.ADOkharidhatedad.AsFloat;
    tedad_kol_gadim:=Dmlistha.ADOkharidhatedad.AsFloat;

    tedad_kol_jadid:=StrToFloat(L_jam_jadid.Caption);    

    if StrToFloat(L_jam_jadid.Caption)>tedad_kol_gadim  then
    begin
      temp:=StrToFloat(L_jam_jadid.Caption)-tedad_kol_gadim;

      if Dmlistha.ADOkharidhavahed_koli.AsString<>'' then
      begin
        tedad_koli_jadid:=int(temp/Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsFloat );
        tedad_jozi_jadid:=temp-(Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsFloat*(int(temp/Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsFloat)));
      end
      else
      begin
        tedad_koli_jadid:=0;
        tedad_jozi_jadid:=temp;
      end;
    end
    else
    begin
      temp:=tedad_kol_gadim-StrToFloat(L_jam_jadid.Caption);

       ////
      if Dmlistha.ADOkharidhavahed_koli.AsString<>'' then
      begin
        tedad_koli_jadid:=int(temp/Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsFloat );
        tedad_jozi_jadid:=temp-(Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsFloat*(int(temp/Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsFloat)));
      end
      else
      begin
        tedad_koli_jadid:=0;
        tedad_jozi_jadid:=temp;
      end;
    end;



    if tedad_kol_jadid > tedad_kol_gadim then
    begin
      tedad_kol_jadid:=tedad_kol_jadid-tedad_kol_gadim ;
      s:='Ê—Êœ Ã‰” »Â „ò«‰ '+anbar+' »Â ⁄·  ÊÌ—«Ì‘  ⁄œ«œ Ã‰” Ê «›“«Ì‘  ⁄œ«œ ¬‰ œ— ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' ›—Ê‘‰œÂ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;
      type_:='Ê—ÊœÌ - «÷«›Â ‘œ‰ »Â  ⁄œ«œ Ã‰” œ— ›«ò Ê— Œ—Ìœ œ— ÊÌ—«Ì‘ ›«ò Ê— Œ—Ìœ';
    end
    else
    begin
      tedad_kol_jadid:=tedad_kol_gadim-tedad_kol_jadid;
      s:=' Œ—ÊÃ Ã‰” «“ „ò«‰ '+anbar+' »Â ⁄·  ÊÌ—«Ì‘  ⁄œ«œ Ã‰” Ê ò«Â‘  ⁄œ«œ ¬‰ œ— ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' Œ—Ìœ«— '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;
      type_:='Œ—ÊÃÌ - ò„ ‘œ‰ «“  ⁄œ«œ Ã‰” œ— ›«ò Ê— Œ—Ìœ œ— ÊÌ—«Ì‘ ›«ò Ê— Œ—Ìœ';
    end;


    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(Dmlistha.ADOkharidhajens.AsString)+','+
    FloatToStr(tedad_jozi_jadid)+','+
    Dmlistha.ADOkharidhacode.AsString+','+
    QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+','+
    QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+','+

    FloatToStr(tedad_koli_jadid)+','+
    Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+','+
    DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+','+

    FloatToStr(tedad_kol_jadid)+','+


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

///////////////////////
procedure Tfrm_eslah_kharid_tedad.update_bedehi_kharidar_pas_az_bedekar_shodan;
var check,kol_pardakht,nagd,talab_eslah,bedeh_eslah:string;

   arzesh_kol:real;
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

   arzesh_kol:=Dmlistha.ADOmohasebe_kharidkol_.AsFloat;


   if arzesh_kol > StrToFloat(kol_pardakht) then
   begin
    bedeh_eslah:=FloatToStr(arzesh_kol - StrToFloat(kol_pardakht));

    DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh-'+
    bedeh_eslah+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
    DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;

   if arzesh_kol < StrToFloat(kol_pardakht) then
   begin
        talab_eslah:=FloatToStr(StrToFloat(kol_pardakht)-arzesh_kol);
        DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set talab=talab-'+talab_eslah+
        ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
        DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;

     DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh+'+
     L_bedehkar.Caption+',talab=talab+'+L_bestankar.Caption+' where shahrforoshande='+
     QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
     DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;   
end;


///////////////////////////
procedure Tfrm_eslah_kharid_tedad.update_anbar_majazi(s:string);
var temp,tedadkli_pas_az_tafazol,t_kol_anbar,t_j_anbar,id:real;
begin
  Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='select * from t_anbar_majazi where calaname='+
  QuotedStr(Dmlistha.ADOkharidhajens.AsString)+' and vahed_koli='+QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+
  ' and  vahed_jozi='+QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+' and tedad_jozi_da_koli='+
  Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+' and geymatkharid='+Dmlistha.ADOkharidhagheymat.AsString+
  ' and sh_factor='+Dmlistha.ADOkharidhash_factor.AsString+
  ' and shakhs_sherkat='+QuotedStr(Dmlistha.ADOkharidhashahrforoshande.AsString)+
  ' and tedad_koli='+Dmlistha.ADOkharidhatedad_koli.AsString+
  ' and tedadanbar='+Dmlistha.ADOkharidhatedad.AsString;
  Dmlistha.ADOQuery_anbar_majazi.Open;

  Dmlistha.ADOQuery_anbar_majazi.First;

  id:=Dmlistha.ADOQuery_anbar_majaziid.Value;

  if Dmlistha.ADOQuery_anbar_majazivahed_koli.AsString='' then
  begin
    t_kol_anbar:=0;
    t_j_anbar:=Dmlistha.ADOQuery_anbar_majazitedadanbar.Value;
  end
  else
  begin
   t_kol_anbar:=(Dmlistha.ADOQuery_anbar_majazitedad_koli.Value);
   t_j_anbar:=Dmlistha.ADOQuery_anbar_majazitedadanbar.Value;
  end;
    temp:=StrToFloat(L_jam_jadid.Caption)-StrToFloat(DBText_t_jam.Caption);
if temp > 0 then
begin
    if Dmlistha.ADOQuery_anbar_majazivahed_koli.AsString<>'' then
    begin
      tedadkli_pas_az_tafazol:=int((t_j_anbar+temp)/StrToFloat(DBText_t_jozi_dar_koli.Caption) );

      Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update t_anbar_majazi set tedad_koli='+floattostr(tedadkli_pas_az_tafazol)+
      ' , tedadanbar=tedadanbar+'+FloatToStr(temp)+',geymatkharid='+DBText_g_vahed.Text+',geymatforosh='+DBText_g_vahed.Text+
      ',geymat_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
      ',geymat_forosh_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
      ' where id='+floattostr(id);
      Dmlistha.ADOQuery_anbar_majazi.ExecSQL;
    end
      else
        begin
          Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update t_anbar_majazi set  tedadanbar=tedadanbar+'+FloatToStr(temp)+
          ',geymatkharid='+DBText_g_vahed.Text+',geymatforosh='+DBText_g_vahed.Text+
          ',geymat_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
          ',geymat_forosh_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
          ' where id='+floattostr(id);
          Dmlistha.ADOQuery_anbar_majazi.ExecSQL;
        end;
end
else
      begin
      if Dmlistha.ADOQuery_anbar_majazivahed_koli.AsString<>'' then
      begin
          tedadkli_pas_az_tafazol:=int((t_j_anbar+temp)/StrToFloat(DBText_t_jozi_dar_koli.Caption) );

          Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update t_anbar_majazi set tedad_koli='+floattostr(tedadkli_pas_az_tafazol)+
          ' , tedadanbar=tedadanbar+'+FloatToStr(temp)+
          ',geymatkharid='+DBText_g_vahed.Text+',geymatforosh='+DBText_g_vahed.Text+
          ',geymat_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
          ',geymat_forosh_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
          ' where id='+floattostr(id);
          Dmlistha.ADOQuery_anbar_majazi.ExecSQL;
      end
      else
        begin
          Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update t_anbar_majazi set  tedadanbar=tedadanbar+'+FloatToStr(temp)+
          ',geymatkharid='+DBText_g_vahed.Text+',geymatforosh='+DBText_g_vahed.Text+
          ',geymat_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
          ',geymat_forosh_koli='+FloatToStr(StrToFloat(DBText_t_jozi_dar_koli.Caption)*StrToFloat(DBText_g_vahed.Text))+
          ' where id='+floattostr(id);
          Dmlistha.ADOQuery_anbar_majazi.ExecSQL
        end;
      end;


end;


///////////////////////////////
procedure Tfrm_eslah_kharid_tedad.update_forosh(t_jozi_dar_koli,jam_jadid,g_vahed,forosh_id:string);
var arzesh_kol_bade_elah,tedadkli_pas_az_tafazol,t_j:real;
begin
     if t_jozi_dar_koli<>'0' then
    begin

      tedadkli_pas_az_tafazol:=int(StrToFloat(jam_jadid)/StrToFloat(t_jozi_dar_koli));

      t_j:=StrToFloat(jam_jadid)-(tedadkli_pas_az_tafazol*StrToFloat(t_jozi_dar_koli));

      arzesh_kol_bade_elah:=StrToFloat(jam_jadid)*StrToFloat(g_vahed);

      Dmlistha.ADOkharidha.SQL.Text:='update jens_ set teded_jozi='+FloatToStr(t_j)+
      ' ,tedad_koli='+
      FloatToStr(tedadkli_pas_az_tafazol)+' ,tedad='+jam_jadid+
      ' ,kol='+FloatToStr(arzesh_kol_bade_elah)+',gheymat='+g_vahed+
      ' where id='+forosh_id;
    Dmlistha.ADOkharidha.ExecSQL;
    end
    else
      begin
        t_j:=StrToFloat(jam_jadid);

        arzesh_kol_bade_elah:=StrToFloat(jam_jadid)*StrToFloat(g_vahed);
        Dmlistha.ADOkharidha.SQL.Text:='update jens_ set teded_jozi='+FloatToStr(t_j)+
         ' ,tedad='+FloatToStr(t_j)+
         ' ,kol='+FloatToStr(arzesh_kol_bade_elah)+',gheymat='+g_vahed+
         ' where id='+forosh_id;

         Dmlistha.ADOkharidha.ExecSQL;

      end;
end;
////////////////////////////
procedure Tfrm_eslah_kharid_tedad.update_bedehkar_bestankar;
begin
    DataModule1.ADObedehi.SQL.Text:='update T_bedehi set bedeh='+L_bedehkar.Caption+
    ',talab='+L_bestankar.Caption+
    '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString+
    ' and sh_khaid='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
    ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString);
    DataModule1.ADObedehi.ExecSQL;
end;

procedure Tfrm_eslah_kharid_tedad.bedeh_talab_after_eslah;
var check,kol_pardakht,nagd,talab_eslah,bedeh_eslah,arzesh_fa_bede_eslah:string;
begin
    if (DBT_m_check.Caption='0') or (DBT_m_check.Caption='') then
             check:='0'
         else
          check:=DBT_m_check.Caption;

    if (DBT_mab_gabl.Caption='0') or (DBT_mab_gabl.Caption='') then
             nagd:='0'
         else
          nagd:=DBT_mab_gabl.Caption;

   kol_pardakht:=FloatToStr(StrToFloat(nagd)+StrToFloat(check)+Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat);

   if StrToFloat(DBText1_g_kol_gadim.Caption)= StrToFloat(Label_g_kol_jadid.Caption) then
    begin
      talab_eslah:='0';
      bedeh_eslah:='0';

      arzesh_fa_bede_eslah:=Dmlistha.ADOmohasebe_kharidkol_.AsString;

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

      arzesh_fa_bede_eslah:=FloatToStr(Dmlistha.ADOmohasebe_kharidkol_.AsFloat+StrToFloat(bedeh_eslah));

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

      arzesh_fa_bede_eslah:=FloatToStr(Dmlistha.ADOmohasebe_kharidkol_.AsFloat-StrToFloat(talab_eslah));

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

//////////////////
procedure Tfrm_eslah_kharid_tedad.mohasebe_tafazol_forosh;
var geymat_vahed,geymat_gadim,jame_gadim,
       geymatjadid_,jam_,tedadjozi_,tedadkoli_,tedadkoli_gadim,tedadjozi_gadim,tedad_koli_jadid,tedad_jozi_jadid,tedadjozi_dar_koli:real;
begin

   tedadkoli_gadim:=StrToFloat(DBText_t_koli.Caption);

   tedadjozi_gadim:=StrToFloat(DBText_t_jozi.Caption);

   tedadjozi_dar_koli:=StrToFloat(DBText_t_jozi_dar_koli.Caption);

   jame_gadim:=StrToFloat(DBText_t_jam.Caption);

   geymat_vahed:=StrToFloat(DBText_g_vahed.Text);

   geymat_gadim:=jame_gadim *geymat_vahed;

    if (Edit_t_koli_jadid_.Text='0')or(Edit_t_koli_jadid_.Text='') then
        tedad_koli_jadid:=0
    else
        tedad_koli_jadid:=StrToFloat(Edit_t_koli_jadid_.Text);

    if (Edit_t_jozi_jadid.Text='0')or(Edit_t_jozi_jadid.Text='') then
        tedad_jozi_jadid:=0
    else
        tedad_jozi_jadid:=StrToFloat(Edit_t_jozi_jadid.Text);

    if (DBText_t_jozi_dar_koli.Caption='0')or(DBText_t_jozi_dar_koli.Caption='') then
        tedadjozi_dar_koli:=0
    else
        tedadjozi_dar_koli:=StrToFloat(DBText_t_jozi_dar_koli.Caption);


   tedadkoli_:=tedad_koli_jadid;
   tedadjozi_:=tedad_jozi_jadid;
   jam_:=(tedadkoli_ *tedadjozi_dar_koli)+tedadjozi_;
   geymatjadid_:=jam_* geymat_vahed;

   frm_elsah.L_jam_jadid.Caption:=FloatToStr(jam_);
   frm_elsah.Label_g_kol_jadid.Caption:=FloatToStr(geymatjadid_);

   L_jam_jadid.Caption:=FloatToStr(jam_);
   Label_g_kol_jadid.Caption:=FloatToStr(geymatjadid_);

end;


//////////////////////////
function Tfrm_eslah_kharid_tedad.tedad_jadid_va_magadir_anbar:boolean;
var t_jozi_dar_anbar,t_koli_dar_anbar,tedad_koli_jadid,tedad_jozi_jadid,tedad_kol,tedad_joz_dar_kol:real;
begin
  tedad_jadid_va_magadir_anbar:=true;

  Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='select * from t_anbar_majazi where calaname='+
  QuotedStr(Dmlistha.ADOkharidhajens.AsString)+' and sh_factor='+Dmlistha.ADOkharidhash_factor.AsString+
  ' and vahed_koli='+QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+
  ' and  vahed_jozi='+QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+' and tedad_jozi_da_koli='+
  Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+' and geymatkharid='+Dmlistha.ADOkharidhagheymat.AsString+
  ' and tarikh='+QuotedStr(Dmlistha.ADOkharidhatarikh.AsString)+
  ' and shakhs_sherkat='+QuotedStr(Dmlistha.ADOkharidhashahrforoshande.AsString)+
  ' and barcod='+QuotedStr(Dmlistha.ADOkharidhabarcod.AsString)+
  ' and tedad_koli='+Dmlistha.ADOkharidhatedad_koli.AsString+
  ' and tedadanbar='+Dmlistha.ADOkharidhatedad.AsString;
  Dmlistha.ADOQuery_anbar_majazi.Open;

  Dmlistha.ADOQuery_anbar_majazi.First;

  t_jozi_dar_anbar:=Dmlistha.ADOQuery_anbar_majazitedadanbar.AsFloat;
  t_koli_dar_anbar:=Dmlistha.ADOQuery_anbar_majazitedad_koli.AsFloat;

  if Edit_t_koli_jadid_.Text='' then
        tedad_koli_jadid:=0
    else
        tedad_koli_jadid:=StrToFloat(Edit_t_koli_jadid_.Text);

  if Edit_t_jozi_jadid.Text='' then
        tedad_jozi_jadid:=0
     else
        tedad_jozi_jadid:=StrToFloat(Edit_t_jozi_jadid.Text);

  if (DBText_t_jozi_dar_koli.Caption='0')or(DBText_t_jozi_dar_koli.Caption='') then
        tedad_joz_dar_kol:=0
  else
        tedad_joz_dar_kol:=StrToFloat(DBText_t_jozi_dar_koli.Caption);

  tedad_kol:=tedad_jozi_jadid+(tedad_koli_jadid* tedad_joz_dar_kol);

   if (tedad_koli_jadid<>0) and (Dmlistha.ADOQuery_anbar_majazivahed_koli.AsString='') then
   begin
     Edit_t_koli_jadid_.SetFocus;
     MessageBox(Handle,pchar('Ã‰” ›ﬁÿ œ«—«Ì Ê«Õœ Ã“∆Ì „Ì»«‘œ.'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   end;
end;
//////////////////////////
function Tfrm_eslah_kharid_tedad.check:boolean;
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

procedure Tfrm_eslah_kharid_tedad.Edit_t_koli_jadid_Exit(Sender: TObject);
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



procedure Tfrm_eslah_kharid_tedad.Edit_t_jozi_jadidKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_kharid_tedad.Edit_t_jozi_jadidChange(Sender: TObject);
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

procedure Tfrm_eslah_kharid_tedad.Edit_t_jozi_jadidExit(Sender: TObject);
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

procedure Tfrm_eslah_kharid_tedad.Button1Click(Sender: TObject);
var  tedad_koli_jadid,tedad_jozi_jadid,tedad_joz_dar_kol:real;
begin

if (DBText_g_vahed.Text='')then
    DBText_g_vahed.Text:='0';

if(StrToFloat(DBText_g_vahed.Text)=0) then
     MessageBox(Handle,pchar('ﬁÌ„  Ê«Õœ Ã“∆Ì Ê«—œ ‰‘œÂ «” '),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin

  if Edit_t_koli_jadid_.Text='' then
        tedad_koli_jadid:=0
    else
        tedad_koli_jadid:=StrToFloat(Edit_t_koli_jadid_.Text);

  if Edit_t_jozi_jadid.Text='' then
        tedad_jozi_jadid:=0
     else
        tedad_jozi_jadid:=StrToFloat(Edit_t_jozi_jadid.Text);

  if (DBText_t_jozi_dar_koli.Caption='0')or(DBText_t_jozi_dar_koli.Caption='') then
        tedad_joz_dar_kol:=0
  else
        tedad_joz_dar_kol:=StrToFloat(DBText_t_jozi_dar_koli.Caption);


    if (tedad_jozi_jadid+(tedad_koli_jadid* tedad_joz_dar_kol))=0 then
  begin
    MessageBox(Handle,pchar(' ⁄œ«œ ÃœÌœ ’›— ( 0 ) »—«Ì Ã‰” << '+DBText_jens.Caption+' >> »Â „⁄‰«Ì Õ–› Œ—Ìœ „Ì»«‘œ ° Œ—Ìœ Ã‰” —« Õ–› ‰„«ÌÌœ.'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    frm_elsah.Close;
    Close;
  end
  else
  begin

     execute_eslahe_kharid_tedad(DBText_t_jozi_dar_koli.Caption,L_jam_jadid.Caption,DBText_g_vahed.Text,DBText_forosh_id.Caption);
    //if StrToFloat(L_jam_jadid.Caption)=StrToFloat(DBText_t_jam.Caption) then
   //     MessageBox(Handle,pchar(' ⁄œ«œ ÃœÌœ Ã‰” »—«»— »« Â„«‰  ⁄œ«œ ﬁ»·Ì Œ—Ìœ „Ì»«‘œ.'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
   // else
   // begin

      {   frm_main.l_last_op.Caption:=' «’·«Õ  ⁄œ«œ Ã‰” Œ—Ìœ«—Ì ‘œÂ '+DBText_jens.Caption+' œ— ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
      ' «“ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;
    
      frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' «“  ⁄œ«œ ò· '+FloatToStr((StrToFloat(DBText_t_koli.Caption)*StrToFloat(DBText_t_jozi_dar_koli.Caption)+StrToFloat(DBText_t_jozi.Caption)))+
      ' »Â '+L_jam_jadid.Caption);

      if StrToFloat(L_jam_jadid.Caption)<>Dmlistha.ADOkharidhatedad.AsFloat then
        insert_gozaresh_az_eslhe_tedade_jens;  }

      frm_eslah_kharid_tedad.l_taeed_eslah.Caption:='yes';

      {update_anbar_majazi(DBText_calacod.Caption);

      update_bedehkar_bestankar;

      update_forosh(DBText_t_jozi_dar_koli.Caption,L_jam_jadid.Caption,DBText_g_vahed.Text,DBText_forosh_id.Caption);

      update_bedehi_kharidar_pas_az_bedekar_shodan; }

      frm_eslah_kharid.aghlame_factor;
      close;
    //end
  end;
end;
end;

procedure Tfrm_eslah_kharid_tedad.DBText_g_vahedKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_kharid_tedad.Edit_t_koli_jadid_KeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_kharid_tedad.DBText_g_vahedChange(Sender: TObject);
begin
if trim(DBText_g_vahed.Text)<>'' then
begin
  mohasebe_tafazol_forosh;
  bedeh_talab_after_eslah;
end;
end;

procedure Tfrm_eslah_kharid_tedad.Edit_t_koli_jadid_Change(
  Sender: TObject);
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

procedure Tfrm_eslah_kharid_tedad.FormShow(Sender: TObject);
begin

    if Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsFloat=0 then
    begin
      Edit_t_koli_jadid_.Text:='0';
      Edit_t_jozi_jadid.Text:=Dmlistha.ADOkharidhateded_jozi.AsString;
    end
    else
    begin
      Edit_t_koli_jadid_.Text:=Dmlistha.ADOkharidhatedad_koli.AsString;
      Edit_t_jozi_jadid.Text:='0';
    end;


    Label_g_kol_jadid.Caption:=Dmlistha.ADOkharidhakol.AsString;
    L_jam_jadid.Caption:=Dmlistha.ADOkharidhatedad.AsString;

    bedeh_talab_after_eslah;
end;

end.
