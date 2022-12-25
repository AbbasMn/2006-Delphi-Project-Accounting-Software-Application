unit unt_pish_kharid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, SUIDBCtrls, LMDControl,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, DBCtrls, SUIImagePanel, SUIGroupBox, ExtCtrls, SUIForm,
  DB;

type
  Tfrm_pish_kharid = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    suiGroupBox2: TsuiGroupBox;
    Label8: TLabel;
    Label_shahr: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    LMDSpeedButton11: TLMDSpeedButton;
    GroupBox3: TGroupBox;
    LMDSpeedButton_add: TLMDSpeedButton;
    LMDSpeedButton_22: TLMDSpeedButton;
    LMDSpeedButton3: TLMDSpeedButton;
    suiDBGrid1: TsuiDBGrid;
    DBText_arzesh_kol: TDBText;
    CheckBox1: TCheckBox;
    G_darsad: TGroupBox;
    L_ker_mablaghi: TLabel;
    L_geymat_kharid: TLabel;
    e_keraye: TEdit;
    Timer1: TTimer;
    RadioGroup1: TRadioGroup;
    L_ker_drsadi: TLabel;
    e_keraye_darsadi: TEdit;
    Button12: TButton;
    G_sod: TGroupBox;
    Label4: TLabel;
    E_darsad_sod: TEdit;
    Button1: TButton;
    CheckBox2: TCheckBox;
    LMDSpeedButton_: TLMDSpeedButton;
    procedure insert_kharid_to_temp(shakhs,jens,tedad_jozei,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_koli,geymat_koli,
                                    tedad_j_dar_kol,type_,tarikh,sh_factor,code,barcod,code_sherkati:string);

    procedure geymat_kol;
    procedure LMDSpeedButton11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure delete_jens;
    procedure delete_hame_ajnas(s:string);
    procedure LMDSpeedButton_22Click(Sender: TObject);
    procedure LMDSpeedButton3Click(Sender: TObject);
    procedure insert_type;
    procedure LMDSpeedButton_addClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure insert_kharid_to_main(shakhs,jens,tedad_jozei,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_koli,geymat_koli,
                                    tedad_j_dar_kol,type_,tarikh,sh_factor,code,barcod,code_sherkati:string);
    procedure change_foroshande;
    procedure CheckBox1Click(Sender: TObject);
    procedure darsadi;
    procedure Button12Click(Sender: TObject);
    procedure e_kerayeKeyPress(Sender: TObject; var Key: Char);
    procedure E_darsad_sodKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure e_keraye_darsadiKeyPress(Sender: TObject; var Key: Char);
    procedure type_keray;
    procedure RadioGroup1Click(Sender: TObject);

    function check_exists_jens_in_pishkarid(jens,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati:string; var id:string):boolean;

   procedure update_tedade_jens_dar_pish_kharid(id,tedad_jozi,tedad_koli,geymate_jozi:string);

  procedure update_tedade_jens_dar_ezafe_kardane_jens_be_kharid_dar_eslahe_kharid(id,tedad_jozi,tedad_koli,geymate_jozi:string);

  function check_exists_jens_in_ajnase_kharid(sh_factor,shakhs,jens,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati:string; var id:string;var tedade_kol:string):boolean;

  procedure execute_eslahe_kharid_ezafe(shakhs,jens,tedad_jozei,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_koli,geymat_koli,
                                    tedad_j_dar_kol,type_,tarikh,sh_factor,code,barcod,code_sherkati:string);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure LMDSpeedButton_Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    keraye_har_jens,sode_har_jens:real;
  end;

var
  frm_pish_kharid: Tfrm_pish_kharid;

implementation

uses Untdmlistha, unt_datamodule1, untjens_kharid,
  unt_add_jens_to_pishkharid, Math, unt_entekhab_check, unt_DataM_final,
  unt_eslah_kharid, unt_eslah_forosh_add_jens, unt_eslah_kharid_add_jens,
  unt_main, unt_eslah_forosh, Unt_dmanbar, unt_datam_sp_eslahe_forosh,
  Untdmanbarexit, unt_Dm_zayeat_marjoei, unt_eslahe_pish_kharid;

{$R *.dfm}

procedure Tfrm_pish_kharid.execute_eslahe_kharid_ezafe(shakhs,jens,tedad_jozei,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_koli,geymat_koli,
                                    tedad_j_dar_kol,type_,tarikh,sh_factor,code,barcod,code_sherkati:string);
var check,kol_pardakht,nagd,g_kol:string;
    kol_gabl:string;
    bedeh_eslah,talab_eslah,par,temp:real;
    x,type_jozi_koli,type_exist:Real;
    temp2,t,id,tedade_kol:String;
begin

    id:='-1';
   { Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from  jens_ '+
    '  where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
    Dmlistha.ADOmohasebe_kharid.Open;
    sleep(2000);}
    

    if (frm_eslah_kharid_add_jens.DBT_m_check.Caption='0') or (frm_eslah_kharid_add_jens.DBT_m_check.Caption='') then
             check:='0'
         else
          check:=frm_eslah_kharid_add_jens.DBT_m_check.Caption;

    if (frm_eslah_kharid_add_jens.DBT_mab_gabl.Caption='') or(frm_eslah_kharid_add_jens.DBT_mab_gabl.Caption='0')then
      nagd:='0'
    else
      nagd:=frm_eslah_kharid_add_jens.DBT_mab_gabl.Caption;

    if (frm_eslah_kharid_add_jens.DBText_t_jam.Caption='0') or(frm_eslah_kharid_add_jens.DBText_t_jam.Caption='') then
      g_kol:='0'
    else
      g_kol:=frm_eslah_kharid_add_jens.DBText_t_jam.Caption;

          kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat);


   if geymat_jozi='' then
     geymat_jozi:='0';

  if tedad_koli='' then
     tedad_koli:='0';

  if tedad_jozei='' then
     tedad_jozei:='0';

  if geymat_koli='' then
     geymat_koli:='0';

  if geymat_jozi='' then
     geymat_jozi:='0';

  if tedad_j_dar_kol='' then
     tedad_j_dar_kol:='0';

     temp:=(StrToFloat(tedad_j_dar_kol)*StrToFloat(tedad_koli)+StrToFloat(tedad_jozei))*StrToFloat(geymat_jozi);
       //////////////
       g_kol:=FloatToStr(StrToFloat(g_kol)+temp);
       //////////////

         if StrToFloat(kol_pardakht)>StrToFloat(g_kol) then
         begin
          frm_eslah_kharid_add_jens.L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(g_kol));
          frm_eslah_kharid_add_jens.L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<StrToFloat(g_kol) then
         begin
           frm_eslah_kharid_add_jens.L_bedehkae.Caption:=FloatToStr(StrToFloat(g_kol)-StrToFloat(kol_pardakht));
           frm_eslah_kharid_add_jens.L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=StrToFloat(g_kol) then
         begin
          frm_eslah_kharid_add_jens.L_bestankar.Caption:='0';
          frm_eslah_kharid_add_jens.L_bedehkae.Caption:='0';
         end;

    {if (frm_eslah_kharid_add_jens.DBText_t_jam.Caption='0') or(frm_eslah_kharid_add_jens.DBText_t_jam.Caption='') then
      g_kol:='0'
    else
      g_kol:=frm_eslah_kharid_add_jens.DBText_t_jam.Caption; }

    if (frm_eslah_kharid_add_jens.L_kol_gabl.Caption='0') or(frm_eslah_kharid_add_jens.L_kol_gabl.Caption='') then
      kol_gabl:='0'
    else
      kol_gabl:=frm_eslah_kharid_add_jens.L_kol_gabl.Caption;

      ///////////////////////////////////////////////////////////
    if (frm_eslah_kharid_add_jens.DBT_m_check.Caption='0') or (frm_eslah_kharid_add_jens.DBT_m_check.Caption='') then
             check:='0'
         else
          check:=frm_eslah_kharid_add_jens.DBT_m_check.Caption;

    if (frm_eslah_kharid_add_jens.DBT_mab_gabl.Caption='') or(frm_eslah_kharid_add_jens.DBT_mab_gabl.Caption='0')then
      nagd:='0'
    else
      nagd:=frm_eslah_kharid_add_jens.DBT_mab_gabl.Caption;

      kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat);
      


      /////////////////////////////////////////////////////////////
      if(StrToFloat(kol_pardakht)<=StrToFloat(kol_gabl))then //1
      begin
       bedeh_eslah:=StrToFloat(g_kol)-StrToFloat(kol_gabl);
       par:=1;
      end;

      if(StrToFloat(kol_pardakht)>StrToFloat(kol_gabl))and(StrToFloat(kol_pardakht)>=StrToFloat(g_kol))then//2
      begin
       talab_eslah:=StrToFloat(g_kol)-StrToFloat(kol_gabl);
       par:=2;
      end;

      if(StrToFloat(kol_pardakht)>StrToFloat(kol_gabl))and(StrToFloat(kol_pardakht)<StrToFloat(g_kol))then//3
      begin
       talab_eslah:=StrToFloat(kol_pardakht)-StrToFloat(kol_gabl);

       bedeh_eslah:=StrToFloat(g_kol)-(StrToFloat(kol_pardakht));

       par:=3;
      end;

//////////////////////////////////////////////////////////


  code_sherkati:=UpperCase(code_sherkati);

  temp2:='0';

if not check_exists_jens_in_ajnase_kharid(sh_factor,shakhs,jens,geymat_jozi,vahed_koli,vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati,id,tedade_kol) then
begin
   type_exist:=1;
  if type_='jozi' then
  begin
     type_jozi_koli:=1;
     temp:=  StrToFloat(geymat_jozi);
     temp2:=FloatToStr(temp);
     x:=StrToFloat(tedad_jozei)* StrToFloat(geymat_jozi);
        {Dmlistha.ADOkharidha.SQL.Text:='INSERT INTO jens_(code_sherkati,SHAHRFOROSHANDE,'+
                                                       'JENS,'+
                                                       'TeDAD,'+
                                                       'GhEYMAT,'+
                                                       'KOL,'+
                                                       'vahed_koli,vahed_jozei,tedad_koli,geymat_koli,tedad_jozi_dar_koli,tarikh,sh_factor,code,teded_jozi,barcod)'+
                                                       'values('+QuotedStr(code_sherkati)+','+QuotedStr(shakhs)+
                                                       ','+QuotedStr(jens)+
                                                       ','+QuotedStr(tedad_jozei)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(FloatToStr(x))+
                                                       ','+QuotedStr(vahed_koli)+
                                                       ','+QuotedStr(vahed_jozei)+
                                                       ','+QuotedStr(tedad_koli)+
                                                       ','+QuotedStr(geymat_koli)+
                                                       ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(tarikh)+','+sh_factor+
                                                       ','+code+','+tedad_jozei+','+QuotedStr(barcod)+')';
                                                       Dmlistha.ADOkharidha.ExecSQL; }

  end;

  if type_='koli' then
     begin
      type_jozi_koli:=2;
          t:=tedad_j_dar_kol;
       if tedad_j_dar_kol='0' then
           t:='1';
       temp:= RoundTo(StrToFloat(geymat_koli) / StrToFloat(t),-1);

       tedad_jozei:=FloatToStr(StrToFloat(tedad_koli)*StrToFloat(t));
       
       x:=StrToFloat(tedad_koli)* StrToFloat(geymat_koli);

       temp2:=FloatToStr(temp);
       {Dmlistha.ADOkharidha.SQL.Text:='INSERT INTO jens_(code_sherkati,SHAHRFOROSHANDE,'+
                                                       'JENS,'+
                                                       'TeDAD,'+
                                                       'GhEYMAT,'+
                                                       'KOL,'+
                                                       'vahed_koli,vahed_jozei,tedad_koli,geymat_koli,tedad_jozi_dar_koli,tarikh,sh_factor,code,teded_jozi,barcod)'+
                                                       'values('+QuotedStr(code_sherkati)+','+ QuotedStr(shakhs)+
                                                       ','+QuotedStr(jens)+
                                                       ','+QuotedStr(tedad_jozei)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(FloatToStr(x))+
                                                       ','+QuotedStr(vahed_koli)+
                                                       ','+QuotedStr(vahed_jozei)+
                                                       ','+QuotedStr(tedad_koli)+
                                                       ','+QuotedStr(geymat_koli)+
                                                       ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(tarikh)+','+sh_factor+','+code+','+QuotedStr('0')+','+QuotedStr(barcod)+')';
                                                       Dmlistha.ADOkharidha.ExecSQL; }
     end;

   { Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='insert into T_anbar_majazi(tedad_koli,vahed_koli,geymat_koli,tedad_jozi_da_koli,vahed_jozi,geymat_forosh_koli'+
     ',calaname,tedadanbar,anbarname,geymatkharid,geymatforosh,molahezatforosh,barcod,code_sherkati,shakhs_sherkat,sh_factor,tarikh)' +

     'values('+QuotedStr(tedad_koli)+','+QuotedStr(vahed_koli)+','+QuotedStr(geymat_koli)+
     ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(vahed_jozei)+','+QuotedStr(geymat_koli)+
     ','+QuotedStr(jens)+','+QuotedStr(tedad_jozei)+','+QuotedStr('«‰»«— „Ã«“Ì')+
     ','+QuotedStr(geymat_jozi)+','+QuotedStr(geymat_jozi)+','+QuotedStr('Ã‰” œ— «‰»«— „Ã«“Ì ﬁ—«— œ«—œ')+','+
     QuotedStr(barcod)+','+QuotedStr(code_sherkati)+','+QuotedStr(shakhs)+','+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+','+QuotedStr(frm_main.L_tarikh.Caption)+')';
     Dmlistha.ADOQuery_anbar_majazi.ExecSQL;}

end
else
begin
    type_exist:=2;

    {update_tedade_jens_dar_ezafe_kardane_jens_be_kharid_dar_eslahe_kharid(id,tedad_jozei,tedad_koli,geymat_jozi);

     Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update T_anbar_majazi set tedadanbar=tedadanbar+'+tedad_jozei+
     ',tedad_koli=tedad_koli+'+tedad_koli+
     ' where calaname='+

    QuotedStr(jens)+' and vahed_koli='+QuotedStr(vahed_koli)+
    ' and  vahed_jozi='+QuotedStr(vahed_jozei)+' and tedad_jozi_da_koli='+
    tedad_j_dar_kol+' and geymatkharid='+geymat_jozi+
    ' and sh_factor='+sh_factor+
    ' and shakhs_sherkat='+QuotedStr(shakhs)+
    ' and tedad_koli='+tedad_koli+
    ' and tedadanbar='+tedade_kol;
    Dmlistha.ADOQuery_anbar_majazi.ExecSQL; }



end;
   //////////// khoroji //////////////
   { Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(jens)+','+
    tedad_jozei+','+
    inttostr(0)+','+
    QuotedStr(vahed_koli)+','+
    QuotedStr(vahed_jozei)+','+

    tedad_koli+','+
    tedad_j_dar_kol+','+
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+','+

    tedad_jozei+','+


    QuotedStr(' «÷«›Â ‰„Êœ‰ Ã‰” »Â ›«ò Ê— Œ—Ìœ ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' ›—Ê‘‰œÂ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(barcod)+','+
    QuotedStr(code_sherkati)+','+

    QuotedStr('«‰»«— „Ã«“Ì')+','+
    QuotedStr(frm_main.LMDClock1.Digital.Caption)+','+
    QuotedStr('Ê—ÊœÌ - «÷«›Â ò—œ‰ Ã‰” »Â ›«ò Ê— Œ—Ìœ')+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;  }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////
      frm_main.l_last_op.Caption:=' «÷«›Â ò—œ‰ Ã‰” '+jens+' »Â Œ—Ìœ »« ‘„«—Â ›«ò Ê— '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
      ' «“ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;



   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[0].Value:=frm_eslah_kharid_add_jens.L_bedehkae.Caption;//@bedehkar float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[1].Value:=frm_eslah_kharid_add_jens.L_bestankar.Caption;//@bestankar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[2].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;//@code_kharidar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[3].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;//@sh_factor float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[4].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString;//@tatikh_forosh nvarchar(12),

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[5].Value:=jens;//@calaname nvarchar(41),




   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[6].Value:=StrTofloat(tedad_jozei);//@tedade_jozi float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[7].Value:='0';//@calacod float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[8].Value:=vahed_koli;//@vahed_koli nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[9].Value:=vahed_jozei;//@vahed_jozi nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[10].Value:=StrToFloat(tedad_koli);//@tedade_koli_forosh float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[11].Value:=tedad_j_dar_kol;//@tedad_jozi_da_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[12].Value:=StrToFloat(tedad_jozei);//@tedad_kole_jabejaei float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[13].Value:=' «÷«›Â ‰„Êœ‰ Ã‰” »Â ›«ò Ê— Œ—Ìœ ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' ›—Ê‘‰œÂ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@tozihe_anbar nvarchar(200),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[14].Value:=barcod;//@barcod nvarchar(15),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[15].Value:=code_sherkati;//@code_sherkati nvarchar(11),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[16].Value:='«‰»«— „Ã«“Ì';//@anbarname nvarchar(30),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[17].Value:='Ê—ÊœÌ - «÷«›Â ò—œ‰ Ã‰” »Â ›«ò Ê— Œ—Ìœ';//@type_kh_az_anbar nvarchar(100),



   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[18].Value:=frm_main.l_last_op.Caption;//@amaliat nvarchar(1000),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[19].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[20].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[21].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@shahrforoshande nvarchar(100),


   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[22].Value:=bedeh_eslah;//@bedeh_eslah float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[23].Value:=talab_eslah;//@talab_eslah float
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[24].Value:=par;//@par float

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[25].Value:='Ã‰” œ— «‰»«— „Ã«“Ì ﬁ—«— œ«—œ';//@tozihe_anbare_majazi nvarchar(200),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[26].Value:=type_exist;//@type_exist float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[27].Value:=type_exist;//@type_jozi_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[28].Value:=temp2;//@temp2 float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[29].Value:=geymat_koli;//@geymat_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[30].Value:=geymat_jozi;//@geymate_jozi float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[31].Value:=StrToFloat(id);//@id float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[32].Value:=x;//@x float
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.ExecProc;

   Frm_add_jens_to_pishkharid.clear;

   if type_exist=2 then
     MessageBox(Handle,'»«  ÊÃÂ »Â „‘Œ’«  Ê«—œ ‘œÂ »—«Ì Ã‰”° Ã‰” Ìò »«— »Â ›«ò Ê— Œ—Ìœ Ê«—œ ‘œÂ «”  . ⁄œ«œ Ê«—œ ‘œÂ Ã‰” »Â  ⁄œ«œ ﬁ»·Ì «÷«›Â ‘œ.','???',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);

   MessageBox(Handle,pchar('Ã‰” «‰ Œ«»Ì »Â ‘„«—Â ›«ò Ê— «÷«›Â ‘œ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);

end;
////////////////////////////////////////////////

function Tfrm_pish_kharid.check_exists_jens_in_ajnase_kharid(sh_factor,shakhs,jens,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati:string; var id:string;var tedade_kol:string):boolean;
begin
  check_exists_jens_in_ajnase_kharid:=false;
  
  Dmlistha.ADOkharidha.SQL.Text:='select * from jens_  where jens='+
  QuotedStr(jens)+
  ' and vahed_koli='+QuotedStr(vahed_koli)+
  ' and  vahed_jozei='+QuotedStr(vahed_jozei)+' and tedad_jozi_dar_koli='+
  tedad_j_dar_kol+' and gheymat='+geymat_jozi+
  ' and barcod='+QuotedStr(barcod)+
  ' and code_sherkati='+QuotedStr(code_sherkati)+
  ' and sh_factor='+sh_factor+
  ' and shahrforoshande='+QuotedStr(shakhs);


  Dmlistha.ADOkharidha.Open;

  if Dmlistha.ADOkharidha.RecordCount >0 then
  begin
    check_exists_jens_in_ajnase_kharid:=true;
    id:=Dmlistha.ADOkharidhaid.AsString;
    tedade_kol:=Dmlistha.ADOkharidhatedad.AsString;
  end;

end;

/////////
procedure Tfrm_pish_kharid.update_tedade_jens_dar_ezafe_kardane_jens_be_kharid_dar_eslahe_kharid(id,tedad_jozi,tedad_koli,geymate_jozi:string);
begin
  Dmlistha.ADOkharidha.SQL.Text:='update jens_ set TeDAD=TeDAD+'+tedad_jozi+
  ',tedad_koli=tedad_koli+'+tedad_koli+
  ',teded_jozi=teded_jozi+'+tedad_jozi+',kol=kol+'+FloatToStr(StrToFloat(tedad_jozi)*StrToFloat(geymate_jozi))+
  ' where id='+id;
  Dmlistha.ADOkharidha.ExecSQL;
end;


///////////
procedure Tfrm_pish_kharid.update_tedade_jens_dar_pish_kharid(id,tedad_jozi,tedad_koli,geymate_jozi:string);
begin
  DataM_final.ADOQuery_pish_kharid.SQL.Text:='update t_kharid_temp set TeDAD=TeDAD+'+tedad_jozi+
  ',tedad_koli=tedad_koli+'+tedad_koli+
  ',teded_jozi=teded_jozi+'+tedad_jozi+',kol=kol+'+FloatToStr(StrToFloat(tedad_jozi)*StrToFloat(geymate_jozi))+
  ' where id='+id;
  DataM_final.ADOQuery_pish_kharid.ExecSQL;

  suiDBGrid1.Visible:=false;
  suiDBGrid1.Visible:=true;
end;

function Tfrm_pish_kharid.check_exists_jens_in_pishkarid(jens,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati:string; var id:string):boolean;
begin
  check_exists_jens_in_pishkarid:=false;
  DataM_final.ADOQuery_pish_kharid2.SQL.Text:='select * from t_kharid_temp where jens='+
  QuotedStr(jens)+
  ' and vahed_koli='+QuotedStr(vahed_koli)+
  ' and  vahed_jozei='+QuotedStr(vahed_jozei)+' and tedad_jozi_dar_koli='+
  tedad_j_dar_kol+' and gheymat='+geymat_jozi+
  ' and barcod='+QuotedStr(barcod)+
  ' and code_sherkati='+QuotedStr(code_sherkati);


  DataM_final.ADOQuery_pish_kharid2.Open;

  if DataM_final.ADOQuery_pish_kharid2.RecordCount >0 then
  begin
    check_exists_jens_in_pishkarid:=true;
    id:=DataM_final.ADOQuery_pish_kharid2id.AsString;
  end;

end;
//////////////
procedure Tfrm_pish_kharid.type_keray;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    L_ker_drsadi.Visible:=true;
    L_ker_mablaghi.Visible:=false;
    e_keraye.Visible:=false;
    e_keraye_darsadi.Visible:=true;
    e_keraye_darsadi.Text:='';
  end
  else
  begin
    L_ker_drsadi.Visible:=false;
    L_ker_mablaghi.Visible:=true;
    e_keraye.Visible:=true;
    e_keraye.Text:='';
    e_keraye_darsadi.Visible:=false;
    e_keraye_darsadi.Text:='';
  end;
end;
procedure Tfrm_pish_kharid.darsadi;
var id,sum_tedad:real;
ker_kol,darsad,tedad,g_kharid,g_jadid:real;
begin
        DataM_final.ADOQuery_pish_kharid2.SQL.Text:='select * from t_kharid_temp';
        DataM_final.ADOQuery_pish_kharid2.Open;
        DataM_final.ADOQuery_pish_kharid2.First;

        if RadioGroup1.ItemIndex=0 then
        begin
          if trim(e_keraye_darsadi.Text)='' then
          begin
            MessageBox(Handle,'œ—’œ «—“‘ ò· «Ã‰«” —« Ê«—œ ‰„«ÌÌœ','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
            e_keraye_darsadi.SetFocus;
          end
          else
            begin
              if DBText_arzesh_kol.Caption='' then
              begin
                ker_kol:=0;
                frmjens_kharid.ker_kol:='0';
              end
              else
              begin
                ker_kol:=roundto(StrToFloat(Dmlistha.ADOQuery_tedad_pishkharidkol_.AsString)*StrToFloat(e_keraye_darsadi.Text)/100,0);
                frmjens_kharid.ker_kol:=FloatToStr(ker_kol);
              end;
            end;
        end
        else
        begin
          if trim(e_keraye.Text)='' then
          begin
            MessageBox(Handle,'„»·€ ò—«ÌÂ —« Ê«—œ ‰„«ÌÌœ','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
            e_keraye.SetFocus;
          end
          else
          begin
            ker_kol:=StrToFloat(e_keraye.Text);
            frmjens_kharid.ker_kol:=e_keraye.Text;
          end;
        end;

        sum_tedad:=0;

        while not DataM_final.ADOQuery_pish_kharid2.Eof do
        begin
          sum_tedad:=sum_tedad+DataM_final.ADOQuery_pish_kharid2tedad.AsFloat;
          DataM_final.ADOQuery_pish_kharid2.Next;
        end;

        DataM_final.ADOQuery_pish_kharid2.First;
        while not DataM_final.ADOQuery_pish_kharid2.Eof do
        begin
          id:=DataM_final.ADOQuery_pish_kharid2id.asfloat;
          g_kharid:=DataM_final.ADOQuery_pish_kharid2gheymat.AsFloat;
          tedad:=DataM_final.ADOQuery_pish_kharid2tedad.AsFloat;

          keraye_har_jens:=roundto(ker_kol/sum_tedad,0);

          if (trim(E_darsad_sod.Text)='')or(StrToFloat(E_darsad_sod.Text)=0) then
            darsad:=0
          else
            darsad:=StrToFloat(E_darsad_sod.Text);

          sode_har_jens:=roundto((g_kharid*darsad)/100,0);

          g_jadid:=(g_kharid+roundto(ker_kol/sum_tedad,0))+sode_har_jens;

          DataM_final.ADOQuery_pish_kharid.SQL.Text:='update t_kharid_temp set geymat_jadid='+

          FloatToStr(g_jadid)+',keraye='+FloatToStr((tedad*(roundto((ker_kol/sum_tedad),0))))+

          ' where id='+FloatToStr(id);

          DataM_final.ADOQuery_pish_kharid.ExecSQL;

          DataM_final.ADOQuery_pish_kharid2.Next;
        end;
        frm_pish_kharid.geymat_kol;

end;

procedure Tfrm_pish_kharid.change_foroshande;
begin
    DataModule1.ADOQuery_pish_kharid.SQL.Text:='select * from t_kharid_temp';
    DataModule1.ADOQuery_pish_kharid.Open;
   if DataModule1.ADOQuery_pish_kharid.RecordCount >0 then
   begin
    frm_pish_kharid.delete_hame_ajnas('ok');
    frm_pish_kharid.geymat_kol;

     frmjens_kharid.Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ';
    if frmjens_kharid.Lkolgeymat.Caption='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' then
    begin
    frmjens_kharid.hazf_hame_check;
    frmjens_kharid.Edit4.Text:='';
    frm_entekhab_check.show_temp_check_kharid;
    frmjens_kharid.L_bestankar.Caption:='0';
    frmjens_kharid.L_bedehkae.Caption:='0';
    end
    else
    frm_entekhab_check.bede_talab_temp_check_kharid;

    DataModule1.ADOQuery_pish_kharid.SQL.Text:='select * from t_kharid_temp';
    DataModule1.ADOQuery_pish_kharid.Open;
    MessageBox(Handle,'»œ·Ì·  €ÌÌ— „‘Œ’«  ›—Ê‘‰œÂ°Œ—ÌœÂ«Ì Ê«—œ ‘œÂ Õ–› ê—œÌœ. ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   end;
end;

procedure Tfrm_pish_kharid.insert_kharid_to_main(shakhs,jens,tedad_jozei,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_koli,geymat_koli,
                                    tedad_j_dar_kol,type_,tarikh,sh_factor,code,barcod,code_sherkati:string);
var temp,x:Real;
    temp2,t,id,tedade_kol:String;
begin
  code_sherkati:=UpperCase(code_sherkati);

  if tedad_koli='' then
     tedad_koli:='0';

  if tedad_jozei='' then
     tedad_jozei:='0';

  if geymat_koli='' then
     geymat_koli:='0';

  if geymat_jozi='' then
     geymat_jozi:='0';

  if tedad_j_dar_kol='' then
     tedad_j_dar_kol:='0';

if not check_exists_jens_in_ajnase_kharid(sh_factor,shakhs,jens,geymat_jozi,vahed_koli,vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati,id,tedade_kol) then
begin

  if type_='jozi' then
  begin
     temp:=  StrToFloat(geymat_jozi);
     temp2:=FloatToStr(temp);
     x:=StrToFloat(tedad_jozei)* StrToFloat(geymat_jozi);
        Dmlistha.ADOkharidha.SQL.Text:='INSERT INTO jens_(code_sherkati,SHAHRFOROSHANDE,'+
                                                       'JENS,'+
                                                       'TeDAD,'+
                                                       'GhEYMAT,'+
                                                       'KOL,'+
                                                       'vahed_koli,vahed_jozei,tedad_koli,geymat_koli,tedad_jozi_dar_koli,tarikh,sh_factor,code,teded_jozi,barcod)'+
                                                       'values('+QuotedStr(code_sherkati)+','+QuotedStr(shakhs)+
                                                       ','+QuotedStr(jens)+
                                                       ','+QuotedStr(tedad_jozei)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(FloatToStr(x))+
                                                       ','+QuotedStr(vahed_koli)+
                                                       ','+QuotedStr(vahed_jozei)+
                                                       ','+QuotedStr(tedad_koli)+
                                                       ','+QuotedStr(geymat_koli)+
                                                       ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(tarikh)+','+sh_factor+
                                                       ','+code+','+tedad_jozei+','+QuotedStr(barcod)+')';
                                                       Dmlistha.ADOkharidha.ExecSQL;

  end;

  if type_='koli' then
     begin
          t:=tedad_j_dar_kol;
       if tedad_j_dar_kol='0' then
           t:='1';
       temp:= RoundTo(StrToFloat(geymat_koli) / StrToFloat(t),-1);

       tedad_jozei:=FloatToStr(StrToFloat(tedad_koli)*StrToFloat(t));
       
       x:=StrToFloat(tedad_koli)* StrToFloat(geymat_koli);
       temp2:=FloatToStr(temp);
       Dmlistha.ADOkharidha.SQL.Text:='INSERT INTO jens_(code_sherkati,SHAHRFOROSHANDE,'+
                                                       'JENS,'+
                                                       'TeDAD,'+
                                                       'GhEYMAT,'+
                                                       'KOL,'+
                                                       'vahed_koli,vahed_jozei,tedad_koli,geymat_koli,tedad_jozi_dar_koli,tarikh,sh_factor,code,teded_jozi,barcod)'+
                                                       'values('+QuotedStr(code_sherkati)+','+ QuotedStr(shakhs)+
                                                       ','+QuotedStr(jens)+
                                                       ','+QuotedStr(tedad_jozei)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(FloatToStr(x))+
                                                       ','+QuotedStr(vahed_koli)+
                                                       ','+QuotedStr(vahed_jozei)+
                                                       ','+QuotedStr(tedad_koli)+
                                                       ','+QuotedStr(geymat_koli)+
                                                       ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(tarikh)+','+sh_factor+','+code+','+QuotedStr('0')+','+QuotedStr(barcod)+')';
                                                       Dmlistha.ADOkharidha.ExecSQL;
     end;

  Frm_add_jens_to_pishkharid.clear;


     Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='insert into T_anbar_majazi(tedad_koli,vahed_koli,geymat_koli,tedad_jozi_da_koli,vahed_jozi,geymat_forosh_koli'+
     ',calaname,tedadanbar,anbarname,geymatkharid,geymatforosh,molahezatforosh,barcod,code_sherkati,shakhs_sherkat,sh_factor,tarikh)' +

     'values('+QuotedStr(tedad_koli)+','+QuotedStr(vahed_koli)+','+QuotedStr(geymat_koli)+
     ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(vahed_jozei)+','+QuotedStr(geymat_koli)+
     ','+QuotedStr(jens)+','+QuotedStr(tedad_jozei)+','+QuotedStr('«‰»«— „Ã«“Ì')+
     ','+QuotedStr(geymat_jozi)+','+QuotedStr(geymat_jozi)+','+QuotedStr('Ã‰” œ— «‰»«— „Ã«“Ì ﬁ—«— œ«—œ')+','+
     QuotedStr(barcod)+','+QuotedStr(code_sherkati)+','+QuotedStr(shakhs)+','+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+','+QuotedStr(frm_main.L_tarikh.Caption)+')';
     Dmlistha.ADOQuery_anbar_majazi.ExecSQL;

end
else
begin
    update_tedade_jens_dar_ezafe_kardane_jens_be_kharid_dar_eslahe_kharid(id,tedad_jozei,tedad_koli,geymat_jozi);

     Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update T_anbar_majazi set tedadanbar=tedadanbar+'+tedad_jozei+
     ',tedad_koli=tedad_koli+'+tedad_koli+
     ' where calaname='+

    QuotedStr(jens)+' and vahed_koli='+QuotedStr(vahed_koli)+
    ' and  vahed_jozi='+QuotedStr(vahed_jozei)+' and tedad_jozi_da_koli='+
    tedad_j_dar_kol+' and geymatkharid='+geymat_jozi+
    ' and sh_factor='+sh_factor+
    ' and shakhs_sherkat='+QuotedStr(shakhs)+
    ' and tedad_koli='+tedad_koli+
    ' and tedadanbar='+tedade_kol;
    Dmlistha.ADOQuery_anbar_majazi.ExecSQL;

 MessageBox(Handle,'»«  ÊÃÂ »Â „‘Œ’«  Ê«—œ ‘œÂ »—«Ì Ã‰”° Ã‰” Ìò »«— »Â ›«ò Ê— Œ—Ìœ Ê«—œ ‘œÂ «”  . ⁄œ«œ Ê«—œ ‘œÂ Ã‰” »Â  ⁄œ«œ ﬁ»·Ì «÷«›Â ‘œ.','???',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);    

end;
   //////////// khoroji //////////////
    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(jens)+','+
    tedad_jozei+','+
    inttostr(0)+','+
    QuotedStr(vahed_koli)+','+
    QuotedStr(vahed_jozei)+','+

    tedad_koli+','+
    tedad_j_dar_kol+','+
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+','+

    tedad_jozei+','+


    QuotedStr(' «÷«›Â ‰„Êœ‰ Ã‰” »Â ›«ò Ê— Œ—Ìœ ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' ›—Ê‘‰œÂ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(barcod)+','+
    QuotedStr(code_sherkati)+','+

    QuotedStr('«‰»«— „Ã«“Ì')+','+
    QuotedStr(frm_main.LMDClock1.Digital.Caption)+','+
    QuotedStr('Ê—ÊœÌ - «÷«›Â ò—œ‰ Ã‰” »Â ›«ò Ê— Œ—Ìœ')+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;

  end;

//////////////////////////////////////


procedure Tfrm_pish_kharid.insert_type;
var  tedad_koli,tedad_jozei,
     geymat_koli,vahed_koli,vahed_jozei,tarikh,sh_factor:string;
begin
if  Frm_add_jens_to_pishkharid.l_type.Caption='kharid' then
  begin
    sh_factor:=frmjens_kharid.sh_fac;
    tarikh:=frmjens_kharid.tarikh;
    insert_kharid_to_temp(
    DataModule1.ADOQuery3shahrforoshande.AsString,

    Frm_add_jens_to_pishkharid.jens,

    Frm_add_jens_to_pishkharid.tedad_jozei,

    Frm_add_jens_to_pishkharid.geymat_jozei,

    Frm_add_jens_to_pishkharid.vahed_koli,
    
    Frm_add_jens_to_pishkharid.vahed_jozei,

    Frm_add_jens_to_pishkharid.tedad_koli,

    Frm_add_jens_to_pishkharid.geymat_koli,

    Frm_add_jens_to_pishkharid.t_j_dar_koli,Frm_add_jens_to_pishkharid.type_,
    tarikh,sh_factor,DataModule1.ADOQuery3code.AsString,Frm_add_jens_to_pishkharid.L_barcod.Caption,Frm_add_jens_to_pishkharid.e_code_sherkati.Text);
    frmjens_kharid.show_temp1;
    geymat_kol;
    frmjens_kharid.Lkolgeymat.Caption:=Dmlistha.ADOQuery_tedad_pishkharidkol_.AsString;
  end
  else
  begin
    sh_factor:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
    tarikh:=DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString;

    execute_eslahe_kharid_ezafe(
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString,

    Frm_add_jens_to_pishkharid.jens,

    Frm_add_jens_to_pishkharid.tedad_jozei,

    Frm_add_jens_to_pishkharid.geymat_jozei,

    Frm_add_jens_to_pishkharid.vahed_koli,

    Frm_add_jens_to_pishkharid.vahed_jozei,

    Frm_add_jens_to_pishkharid.tedad_koli,

    Frm_add_jens_to_pishkharid.geymat_koli,

    Frm_add_jens_to_pishkharid.t_j_dar_koli,Frm_add_jens_to_pishkharid.type_,

    tarikh,sh_factor,DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString,Frm_add_jens_to_pishkharid.L_barcod.Caption,Frm_add_jens_to_pishkharid.e_code_sherkati.Text);

    
       { insert_kharid_to_main(
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString,

    Frm_add_jens_to_pishkharid.jens,

    Frm_add_jens_to_pishkharid.tedad_jozei,

    Frm_add_jens_to_pishkharid.geymat_jozei,

    Frm_add_jens_to_pishkharid.vahed_koli,

    Frm_add_jens_to_pishkharid.vahed_jozei,

    Frm_add_jens_to_pishkharid.tedad_koli,

    Frm_add_jens_to_pishkharid.geymat_koli,

    Frm_add_jens_to_pishkharid.t_j_dar_koli,Frm_add_jens_to_pishkharid.type_,

    tarikh,sh_factor,DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString,Frm_add_jens_to_pishkharid.L_barcod.Caption,Frm_add_jens_to_pishkharid.e_code_sherkati.Text);

    //////////////////////

    Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from  jens_ '+
    '  where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
    Dmlistha.ADOmohasebe_kharid.Open;
    sleep(2000);
    frm_eslah_kharid_add_jens.bedeh_talab_after_eslah;

    frm_eslah_kharid_add_jens.update_bedeh_talab_va_bedehi_kol_kharidar;

    frm_eslah_kharid_add_jens.update_bedehi_kharidar_pas_az_bedekar_shodan; }

    frm_eslah_kharid.aghlame_factor;

  end;
end;
procedure Tfrm_pish_kharid.delete_hame_ajnas(s:string);
begin
   frmjens_kharid.show_temp1;
   if  DataM_final.ADOQuery_pish_kharid.RecordCount <=0 then
   MessageBox(Handle,'—òÊ—œÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
   while  DataM_final.ADOQuery_pish_kharid.RecordCount >0 do
     begin
      DataM_final.ADOQuery_pish_kharid.First;
      DataM_final.ADOQuery_pish_kharid.Delete;
    end;
   frmjens_kharid.Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ';
   frmjens_kharid.show_temp1;
   if s='no' then
     MessageBox(Handle,'»Â œ·Ì·  €ÌÌ— „‘Œ’«  ›—Ê‘‰œÂ  «Ã‰«” «‰ Œ«» ‘œÂ Õ–› ê—œÌœ !',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;
end;
procedure Tfrm_pish_kharid.delete_jens;
begin
 if  DataM_final.ADOQuery_pish_kharid.RecordCount <=0 then
 begin
   MessageBox(Handle,'—òÊ—œÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   frmjens_kharid.Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ';
 end
 else
 begin
   DataM_final.ADOQuery_pish_kharid.Delete;
   frmjens_kharid.show_temp1;
   if  DataM_final.ADOQuery_pish_kharid.RecordCount <=0 then
    frmjens_kharid.Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ';
 end;
end;
procedure Tfrm_pish_kharid.geymat_kol;
begin
   Dmlistha.ADOQuery_tedad_pishkharid.SQL.Text:='select sum(kol) as kol_,count(*) as tedad from t_kharid_temp';
   Dmlistha.ADOQuery_tedad_pishkharid.Open;
end;


procedure Tfrm_pish_kharid.insert_kharid_to_temp(shakhs,jens,tedad_jozei,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_koli,geymat_koli,
                                    tedad_j_dar_kol,type_,tarikh,sh_factor,code,barcod,code_sherkati:string);
var temp,x:Real;
    temp2,t,id:String;
begin

  code_sherkati:='';

     tedad_koli:='0';

     tedad_jozei:='99999999';

     geymat_koli:='0';

     geymat_jozi:='0';

  if tedad_j_dar_kol='' then
     tedad_j_dar_kol:='0';
 id:='0';
if not check_exists_jens_in_pishkarid(jens,geymat_jozi,vahed_koli,vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati,id) then
begin /////// new jens

  if type_='jozi' then
  begin
     temp:=StrToFloat(geymat_jozi);
     temp2:=FloatToStr(temp);
     x:=StrToFloat(tedad_jozei)* StrToFloat(geymat_jozi);



        DataM_final.ADOQuery_pish_kharid.SQL.Text:='INSERT INTO t_kharid_temp(code_sherkati,SHAHRFOROSHANDE,'+
                                                       'JENS,'+
                                                       'TeDAD,'+
                                                       'GhEYMAT,'+
                                                       'geymat_jadid,'+
                                                       'KOL,'+
                                                       'vahed_koli,vahed_jozei,tedad_koli,geymat_koli,'+
                                                       'tedad_jozi_dar_koli,tarikh,sh_factor,code,teded_jozi,barcod,geymatforosh_koli)'+
                                                       'values('+QuotedStr(code_sherkati)+','+QuotedStr(shakhs)+
                                                       ','+QuotedStr(jens)+
                                                       ','+QuotedStr(tedad_jozei)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(FloatToStr(x))+
                                                       ','+QuotedStr(vahed_koli)+
                                                       ','+QuotedStr(vahed_jozei)+
                                                       ','+QuotedStr(tedad_koli)+
                                                       ','+QuotedStr(geymat_koli)+
                                                       ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(tarikh)+','+sh_factor+
                                                       ','+code+','+tedad_jozei+','+QuotedStr(barcod)+','+QuotedStr(temp2)+')';
                                                       DataM_final.ADOQuery_pish_kharid.ExecSQL;

  end;

  if type_='koli' then
     begin
          t:=tedad_j_dar_kol;
       if tedad_j_dar_kol='0' then
           t:='1';
       temp:= RoundTo(StrToFloat(geymat_koli) / StrToFloat(t),-1);

       tedad_jozei:=FloatToStr(StrToFloat(tedad_koli)*StrToFloat(t));

       //x:=StrToFloat(tedad_jozei)* temp;

       x:=StrToFloat(geymat_koli)*StrToFloat(tedad_koli);

       temp2:=FloatToStr(temp);
       DataM_final.ADOQuery_pish_kharid.SQL.Text:='INSERT INTO t_kharid_temp(code_sherkati,SHAHRFOROSHANDE,'+
                                                       'JENS,'+
                                                       'TeDAD,'+
                                                       'GhEYMAT,'+
                                                       'geymat_jadid,'+
                                                       'KOL,'+
                                                       'vahed_koli,vahed_jozei,tedad_koli,geymat_koli,tedad_jozi_dar_koli,tarikh,sh_factor,code,teded_jozi,barcod,geymatforosh_koli)'+
                                                       'values('+QuotedStr(code_sherkati)+','+ QuotedStr(shakhs)+
                                                       ','+QuotedStr(jens)+
                                                       ','+QuotedStr(tedad_jozei)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(FloatToStr(x))+
                                                       ','+QuotedStr(vahed_koli)+
                                                       ','+QuotedStr(vahed_jozei)+
                                                       ','+QuotedStr(tedad_koli)+
                                                       ','+QuotedStr(geymat_koli)+
                                                       ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(tarikh)+','+sh_factor+','+code+','+QuotedStr('0')+','+QuotedStr(barcod)+','+QuotedStr(temp2)+')';
                                                       DataM_final.ADOQuery_pish_kharid.ExecSQL;
     end;
  Frm_add_jens_to_pishkharid.clear;
end /////// new jens
else

begin /////// exsits jens
  if MessageBox(Handle,'»«  ÊÃÂ »Â „‘Œ’«  Ê«—œ ‘œÂ »—«Ì Ã‰”° Ã‰” Ìò »«— »Â ›«ò Ê— Œ—Ìœ Ê«—œ ‘œÂ «”  . ⁄œ«œ Ê«—œ ‘œÂ Ã‰” »Â  ⁄œ«œ ﬁ»·Ì «÷«›Â ê—œœø','???',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING)=id_yes then
  begin
    update_tedade_jens_dar_pish_kharid(id,tedad_jozei,tedad_koli,geymat_jozi);
    Frm_add_jens_to_pishkharid.clear;
  end;
 
end; /////// exsits jens

end;
////////////////////

procedure Tfrm_pish_kharid.LMDSpeedButton11Click(Sender: TObject);
begin
//sleep(1000);
if DBText_arzesh_kol.Caption='' then
  frmjens_kharid.Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ'
else
  frmjens_kharid.Lkolgeymat.Caption:=DBText_arzesh_kol.Caption;

    if (frmjens_kharid.Lkolgeymat.Caption<>'«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ') then
    begin
      frm_entekhab_check.jame_temp_check_kharid;
      frm_entekhab_check.bede_talab_temp_check_kharid;
    end
    else
    begin
    frmjens_kharid.hazf_hame_check;
    frmjens_kharid.Edit4.Text:='';
    frm_entekhab_check.show_temp_check_kharid;
    frmjens_kharid.L_bestankar.Caption:='0';
    frmjens_kharid.L_bedehkae.Caption:='0';
    end;
  close;
end;

procedure Tfrm_pish_kharid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //sleep(500);
  if DBText_arzesh_kol.Caption='' then
    frmjens_kharid.Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ'
  else
    frmjens_kharid.Lkolgeymat.Caption:=DBText_arzesh_kol.Caption;

  if (frmjens_kharid.Lkolgeymat.Caption<>'«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ') then
    begin
      frm_entekhab_check.jame_temp_check_kharid;
      frm_entekhab_check.bede_talab_temp_check_kharid;
    end;

    if (frmjens_kharid.Lkolgeymat.Caption<>'«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ') then
    begin
      frm_entekhab_check.jame_temp_check_kharid;
      frm_entekhab_check.bede_talab_temp_check_kharid;
    end
    else
    begin
    frmjens_kharid.hazf_hame_check;
    frmjens_kharid.Edit4.Text:='';
    frm_entekhab_check.show_temp_check_kharid;
    frmjens_kharid.L_bestankar.Caption:='0';
    frmjens_kharid.L_bedehkae.Caption:='0';
    end;
end;

procedure Tfrm_pish_kharid.LMDSpeedButton_22Click(Sender: TObject);
begin
  delete_jens;
  geymat_kol;
  //sleep(500);

end;

procedure Tfrm_pish_kharid.LMDSpeedButton3Click(Sender: TObject);
begin
 delete_hame_ajnas('ok');
 geymat_kol;
 frmjens_kharid.show_temp1;
 if  DataM_final.ADOQuery_pish_kharid.RecordCount <=0 then
    frmjens_kharid.Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ';
 //sleep(500);
end;

procedure Tfrm_pish_kharid.LMDSpeedButton_addClick(Sender: TObject);
begin
  frmjens_kharid.show_temp1;

  if DataM_final.ADOQuery_pish_kharid.RecordCount >50 then
          MessageBox(Handle,' œ— Â— »«—Œ—Ìœ  Õœ «òÀ—  Å‰Ã«Â ( 50 ) ﬁ·„ Ã‰” ﬁ«»· Œ—Ìœ „Ì»«‘œ .',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
    Frm_add_jens_to_pishkharid.L_type.Caption:='kharid';
    Frm_add_jens_to_pishkharid.ShowModal;

  if DataM_final.ADOQuery_pish_kharid.RecordCount>0 then
  begin

    if (trim(E_darsad_sod.Text)='') then
      E_darsad_sod.Text:='0';

    if keraye_har_jens>0 then
      Button12.Click;

    if sode_har_jens>0 then
      Button1.Click;
  end;
    geymat_kol;
  end;
end;

procedure Tfrm_pish_kharid.FormShow(Sender: TObject);
begin
  geymat_kol;

  keraye_har_jens:=0;
  sode_har_jens:=0;

  frmjens_kharid.ker_kol:='0';

  if DataM_final.ADOQuery_pish_kharid.RecordCount>0 then
  begin
    Button12.Click;
    Button1.Click;
  end;

  frm_pish_kharid.WindowState:=wsMaximized;

  CheckBox1.Checked:=false;
  CheckBox2.Checked:=false;

  G_darsad.Visible:=false;
  G_sod.Visible:=false;

  E_darsad_sod.Clear;


  RadioGroup1.ItemIndex:=0;
  type_keray;



end;

procedure Tfrm_pish_kharid.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    type_keray;
    G_darsad.Visible:=true;
  end
  else
    G_darsad.Visible:=false;
end;

procedure Tfrm_pish_kharid.Button12Click(Sender: TObject);
begin
  if  DataM_final.ADOQuery_pish_kharid.RecordCount <=0 then
 begin
   MessageBox(Handle,'«Ã‰«” Œ—Ìœ Ê«—œ ‰‘œÂ «‰œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end
 else
 begin
  if Frm_add_jens_to_pishkharid.check(e_keraye_darsadi.Text)then
  begin
    darsadi;
    frm_pish_kharid.geymat_kol;
    frmjens_kharid.show_temp1;
  end;
 end;
end;

procedure Tfrm_pish_kharid.e_kerayeKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_pish_kharid.E_darsad_sodKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_pish_kharid.Timer1Timer(Sender: TObject);
begin
 if frm_pish_kharid<>nil then
 begin
   if DataM_final.ADOQuery_pish_kharid.RecordCount>0 then
   begin
    Dmlistha.ADOQuery_tedad_pishkharid.SQL.Text:='select sum(kol) as kol_,count(*) as tedad from t_kharid_temp';
    Dmlistha.ADOQuery_tedad_pishkharid.Open;
    //sleep(100);
    frmjens_kharid.Lkolgeymat.Caption:=DBText_arzesh_kol.Caption;
   end
   else
   begin
    Dmlistha.ADOQuery_tedad_pishkharid.SQL.Text:='select sum(kol) as kol_,count(*) as tedad from t_kharid_temp';
    Dmlistha.ADOQuery_tedad_pishkharid.Open;
    //sleep(100);
    frmjens_kharid.Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ';
   end;
 end;
end;

procedure Tfrm_pish_kharid.e_keraye_darsadiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_pish_kharid.RadioGroup1Click(Sender: TObject);
begin
  type_keray;
end;

procedure Tfrm_pish_kharid.Button1Click(Sender: TObject);
var darsad,id:real;
ker_kol,tedad,g_kharid,g_jadid,sum_tedad:real;
begin
  if  DataM_final.ADOQuery_pish_kharid.RecordCount <=0 then
 begin
   MessageBox(Handle,'«Ã‰«” Œ—Ìœ Ê«—œ ‰‘œÂ «‰œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   exit;
 end;


  if Frm_add_jens_to_pishkharid.check(E_darsad_sod.Text) then
  begin
    if (trim(E_darsad_sod.Text)='') then
    begin
        MessageBox(Handle,' œ—’œ ”Êœ —« Ê«—œ ‰„«ÌÌœ','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
        E_darsad_sod.SetFocus;

        E_darsad_sod.Text:='0';
    end
    else
    begin
              DataM_final.ADOQuery_pish_kharid2.SQL.Text:='select * from t_kharid_temp order by id';
              DataM_final.ADOQuery_pish_kharid2.Open;

          if (RadioGroup1.ItemIndex=0)then
          begin
            if (trim(e_keraye_darsadi.Text)='')or(e_keraye_darsadi.Text='0') then
              keraye_har_jens:=0
            else
            begin

              sum_tedad:=0;

              ker_kol:=roundto(StrToFloat(Dmlistha.ADOQuery_tedad_pishkharidkol_.AsString)*StrToFloat(e_keraye_darsadi.Text)/100,0);

              DataM_final.ADOQuery_pish_kharid2.First;
               while not DataM_final.ADOQuery_pish_kharid2.Eof do
              begin
                sum_tedad:=sum_tedad+DataM_final.ADOQuery_pish_kharid2tedad.AsFloat;
                DataM_final.ADOQuery_pish_kharid2.Next;
              end;
              keraye_har_jens:=roundto(ker_kol/sum_tedad,0);
            end;

          end;

          if (RadioGroup1.ItemIndex=1)then
          begin
            if (trim(e_keraye.Text)='')or(e_keraye.Text='0') then
              keraye_har_jens:=0
            else
            begin
              sum_tedad:=0;

              ker_kol:=StrToFloat(e_keraye.Text);

              DataM_final.ADOQuery_pish_kharid2.First;
               while not DataM_final.ADOQuery_pish_kharid2.Eof do
              begin
                sum_tedad:=sum_tedad+DataM_final.ADOQuery_pish_kharid2tedad.AsFloat;
                DataM_final.ADOQuery_pish_kharid2.Next;
              end;
              keraye_har_jens:=roundto(ker_kol/sum_tedad,0);
            end;

          end;



        darsad:=StrToFloat(E_darsad_sod.Text);

        DataM_final.ADOQuery_pish_kharid2.First;
        while not DataM_final.ADOQuery_pish_kharid2.Eof do
        begin
          id:=DataM_final.ADOQuery_pish_kharid2id.asfloat;
          g_kharid:=DataM_final.ADOQuery_pish_kharid2gheymat.AsFloat;

          sode_har_jens:=roundto((g_kharid*darsad)/100,0);

          g_jadid:=g_kharid+sode_har_jens+keraye_har_jens;

          DataM_final.ADOQuery_pish_kharid.SQL.Text:='update t_kharid_temp set geymat_jadid='+

          FloatToStr(g_jadid)+

          ' where id='+FloatToStr(id);

          DataM_final.ADOQuery_pish_kharid.ExecSQL;

          DataM_final.ADOQuery_pish_kharid2.Next;
        end;

      frm_pish_kharid.geymat_kol;
      frmjens_kharid.show_temp1;
    end;
  end;
end;

procedure Tfrm_pish_kharid.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
  begin
    G_sod.Visible:=true;
  end
  else
    G_sod.Visible:=false;
end;

procedure Tfrm_pish_kharid.LMDSpeedButton_Click(Sender: TObject);
begin
  if DataM_final.ADOQuery_pish_kharid.RecordCount=0 then
  begin
   MessageBox(Handle,'—òÊ—œÌ »—«Ì ÊÌ—«Ì‘ ÊÃÊœ ‰œ«—œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   Exit;
  end;

  {if CheckBox1.Checked or CheckBox2.Checked  then
  begin
   MessageBox(Handle,'»Â œ·Ì· «⁄„«· ò—«ÌÂ Ê ”Êœ »— —ÊÌ ›«ò Ê—° ÊÌ—«Ì‘ „‘Œ’«  Ã‰” «„ò«‰Å–Ì— ‰„Ì »«‘œ. ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   Exit;
  end;}

  if DataM_final.ADOQuery_pish_kharidgeymat_jadid.AsFloat<>DataM_final.ADOQuery_pish_kharidgheymat.AsFloat then
  begin
   MessageBox(Handle,'»Â œ·Ì· «⁄„«· ò—«ÌÂ Ê ”Êœ »— —ÊÌ ›«ò Ê—° ÊÌ—«Ì‘ „‘Œ’«  Ã‰” «„ò«‰Å–Ì— ‰„Ì »«‘œ. ò—«ÌÂ Ì« ”Êœ À»  ‘œÂ —« ’›— ò—œÂ° ”Å” Ã‰” —« ÊÌ—«Ì‘ ‰„«ÌÌœ ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   Exit;
  end;

  frm_eslahe_pish_kharid.E_barcod.Text:=DataM_final.ADOQuery_pish_kharidbarcod.AsString;
  frm_eslahe_pish_kharid.Edit1.Text:=DataM_final.ADOQuery_pish_kharidjens.AsString;
  frm_eslahe_pish_kharid.e_code_sherkati.Text:=DataM_final.ADOQuery_pish_kharidcode_sherkati.AsString;

  frm_eslahe_pish_kharid.l_id.Caption:=DataM_final.ADOQuery_pish_kharidid.AsString;

  if DataM_final.ADOQuery_pish_kharidtedad_jozi_dar_koli.AsFloat=0 then
  begin
    frm_eslahe_pish_kharid.Edit3.Text:=DataM_final.ADOQuery_pish_kharidgheymat.AsString;
    frm_eslahe_pish_kharid.Edit2.Text:=DataM_final.ADOQuery_pish_kharidteded_jozi.AsString;
    frm_eslahe_pish_kharid.CheckBox1.checked:=false;
    frm_eslahe_pish_kharid.DBLookupComboBox2.visible:=false;
    frm_eslahe_pish_kharid.L_vahed_joji_jozi.Caption:=DataM_final.ADOQuery_pish_kharidvahed_jozei.AsString;
    frm_eslahe_pish_kharid.GroupBox_jozei.Visible:=true;
    frm_eslahe_pish_kharid.GroupBox_koli.Visible:=false;
  end
  else
  begin
    frm_eslahe_pish_kharid.Edit_g_vahed_koli.Text:=DataM_final.ADOQuery_pish_kharidgeymat_koli.AsString;
    frm_eslahe_pish_kharid.Edit_tedad_vahed_koli.Text:=DataM_final.ADOQuery_pish_kharidtedad_koli.AsString;
    frm_eslahe_pish_kharid.Edit_tedad_jozei_dar_koli.Text:=DataM_final.ADOQuery_pish_kharidtedad_jozi_dar_koli.AsString;
    frm_eslahe_pish_kharid.CheckBox2.checked:=false;

    frm_eslahe_pish_kharid.DBLookupComboBox3.visible:=false;
    frm_eslahe_pish_kharid.DBLookupComboBox4.visible:=false;
    frm_eslahe_pish_kharid.l_vahed_koli.Caption:=DataM_final.ADOQuery_pish_kharidvahed_koli.AsString;
    frm_eslahe_pish_kharid.L_vahed_jozi.Caption:=DataM_final.ADOQuery_pish_kharidvahed_jozei.AsString;

    frm_eslahe_pish_kharid.GroupBox_jozei.Visible:=false;
    frm_eslahe_pish_kharid.GroupBox_koli.Visible:=true;
  end;

  frm_eslahe_pish_kharid.l_type.Caption:='kharid';
  frm_eslahe_pish_kharid.ShowModal;
end;

end.
