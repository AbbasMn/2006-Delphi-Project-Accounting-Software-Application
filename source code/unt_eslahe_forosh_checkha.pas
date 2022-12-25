unit unt_eslahe_forosh_checkha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, SUIButton, StdCtrls, DBCtrls, DB,
  LMDControl, LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton;

type
  Tfrm_eslahe_forosh_checkha = class(TForm)
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    a: TsuiButton;
    suiDBGrid3: TsuiDBGrid;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    DBText_t_jam: TDBText;
    Label10: TLabel;
    DBT_mab_gabl: TDBText;
    DataSource2: TDataSource;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    L_bedehkae: TLabel;
    L_bestankar: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    DBT_ch_ghabl: TDBText;
    DataSource3: TDataSource;
    b: TsuiButton;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    E_shomare_hesab: TEdit;
    Label11: TLabel;
    Edit_shomare: TEdit;
    Label8: TLabel;
    Edit_mablagh: TEdit;
    bb: TsuiButton;
    DataSource5: TDataSource;
    Label4: TLabel;
    E_roz: TEdit;
    Label7: TLabel;
    E_mah: TEdit;
    Label12: TLabel;
    E_sal: TEdit;
    L_id_check: TLabel;
    Button1: TButton;
    DBText2: TDBText;
    Label13: TLabel;
    DataSource4: TDataSource;
    procedure bClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function check_eslah_check:boolean;
    procedure bbClick(Sender: TObject);
    procedure sabt_eslah_check;
    procedure bede_talab_temp_check_forosh_eslah;
    function check_keshide_shodan_ghabl:boolean;
    procedure taeeid_va_sabt_nahaei;
    procedure update_temp_check_eslah;
    procedure enteghal_checkha_az_temp_check_forosh_be_forosh;
    procedure update_bedeh_talab_va_bedehi_kol_kharidar;
    procedure Button1Click(Sender: TObject);
    procedure Edit_shomareKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_mablaghKeyPress(Sender: TObject; var Key: Char);
    procedure E_rozKeyPress(Sender: TObject; var Key: Char);
    procedure E_mahKeyPress(Sender: TObject; var Key: Char);
    procedure E_rozExit(Sender: TObject);
    procedure E_mahExit(Sender: TObject);
    procedure E_salExit(Sender: TObject);
    procedure execute_eslahe_check_forosh(mab_gabl,t_jam:string);
    procedure execute_hazfe_check(mab_gabl,t_jam:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_forosh_checkha: Tfrm_eslahe_forosh_checkha;

implementation

uses unt_entekhab_check_baraye_forosh, unt_datamodule1,
  unt_forosh_property, unt_DataM_final, unt_datamodule2, unt_main,
  unt_datam_sp_eslahe_forosh, Untdmlistha, unt_eslah_forosh, Unt_add_bank1,
  unt_frm_eslah_bank, unt_DataM_final1, Unt_DataModule_gozaresh_tarkibi;

{$R *.dfm}
procedure Tfrm_eslahe_forosh_checkha.execute_hazfe_check(mab_gabl,t_jam:string);
var kol_pardkht_ghabl,check,check_gabl,bedeh_eslah,par,talab_eslah,temp:real;
    nagd,kol_pardakht:string;
begin

    if (mab_gabl='0') or (mab_gabl='') then
             check_gabl:=0
         else
          check_gabl:=StrToFloat(mab_gabl);

    if (DataM_final.ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol.AsString='') or(DataM_final.ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol.AsString='0')then
      check:=0
    else
    begin
      check:=StrToFloat(DataM_final.ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol.AsString);
      check:=check-DataM_final.ADOQ_t_Temp_pardakht_check_foroshmablagh_check.AsFloat;
    end;

    if (DBT_mab_gabl.Caption='0') or (DBT_mab_gabl.Caption='') then
             nagd:='0'
         else
          nagd:=DBT_mab_gabl.Caption;

          kol_pardakht:=FloatToStr(StrToFloat(nagd)+DataM_final.ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol.Value-DataM_final.ADOQ_t_Temp_pardakht_check_foroshmablagh_check.AsFloat);

         if StrToFloat(kol_pardakht)>StrToFloat(t_jam) then
         begin
          L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(t_jam));
          L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<StrToFloat(t_jam) then
         begin
           L_bedehkae.Caption:=FloatToStr(StrToFloat(t_jam)-StrToFloat(kol_pardakht));
           L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=StrToFloat(t_jam) then
         begin
          L_bestankar.Caption:='0';
          L_bedehkae.Caption:='0';
         end;
///////////////////////////////////////////////
  par:=0;
///////////////////////////////////////////////////////

frm_add_bank1.execute_morede_banki_backup_stored_procedure;

if DataM_final.ADOQ_t_Temp_pardakht_check_foroshpass.AsString='»·Ì' then
begin

    DataM_final1.ADOQ_bank3.SQL.Text:='select * from t_bank1  where '+
    
    //' moshakhasat_kol='+QuotedStr(DataM_final.ADOQ_t_Temp_pardakht_check_foroshsh_hesab.AsString)+

    ' bestankar='+DataM_final.ADOQ_t_Temp_pardakht_check_foroshmablagh_check.AsString+
    //' and sh_fish='+DataM_final.ADOQ_t_Temp_pardakht_check_foroshsh_check.AsString+
    ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString)+
    ' and sharh like'+QuotedStr('%'+DataM_final.ADOQ_t_Temp_pardakht_check_foroshshahrforoshande.AsString+'%')+
    ' and sharh like'+QuotedStr('%'+'‘„«—Â Œ—Ìœ '+DataM_final.ADOQ_t_Temp_pardakht_check_foroshshomare_factor.AsString+'%')+
    ' and sharh like'+QuotedStr('%'+'‘„«—Â Õ”«» '+DataM_final.ADOQ_t_Temp_pardakht_check_foroshsh_hesab.AsString+'%')+
    ' and sharh like'+QuotedStr('%'+'‘„«—Â çò '+DataM_final.ADOQ_t_Temp_pardakht_check_foroshsh_check.AsString+'%');
    DataM_final1.ADOQ_bank3.Open;

    if DataM_final1.ADOQ_bank3.RecordCount>0 then
    begin

      frm_eslah_bank.type_es:='hazf_az_eslahe_check_forosh';

      frm_eslah_bank.E_bestankar.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_foroshmablagh_check.AsString;

      frm_eslah_bank.shomare_hesab:=DataM_final.ADOQ_t_Temp_pardakht_check_foroshsh_hesab.AsString;

      frm_eslah_bank.e_sh_fish.Text:= DataM_final.ADOQ_t_Temp_pardakht_check_foroshsh_check.AsString;

      frm_eslah_bank.e_bedehkar.Text:='0';

      frm_eslah_bank.L_cod.Caption:=DataM_final1.ADOQ_bank3cod.AsString;
      frm_eslah_bank.Button6.Click;
    end
    else
    begin
      DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.sql.Text:='begin tran delete from T_vorod_khoroj_sandogha '+
      ' where cod_kharidar='+DataM_final.ADOQ_t_Temp_pardakht_check_foroshcode.AsString+
      ' and sh_factor='+DataM_final.ADOQ_t_Temp_pardakht_check_foroshshomare_factor.AsString+
      ' and mablag='+DataM_final.ADOQ_t_Temp_pardakht_check_foroshmablagh_check.AsString+
      ' and tozih like '+QuotedStr('%'+'‘„«—Â çò '+DataM_final.ADOQ_t_Temp_pardakht_check_foroshsh_check.AsString+'%')+
      ' and tozih like '+QuotedStr('%'+'‘„«—Â Õ”«» '+DataM_final.ADOQ_t_Temp_pardakht_check_foroshsh_hesab.AsString+'%')+      
      ' commit tran';
      DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.ExecSQL;
    end;
end;

/////////////////////////////////////////////////////////
  frm_main.l_last_op.Caption:=' «’·«Õ çòÂ«Ì œ—Ì«› Ì «“ '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString+' »—«Ì ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;

///////////////////////////////////////////////
  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[0].Value:=bedeh_eslah;//@bedeh_eslah float,
  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[1].Value:=talab_eslah;//@talab_eslah float,

  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[2].Value:=L_bedehkae.Caption;//@bedehkar float,
  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[3].Value:=L_bestankar.Caption;//@bestankar float,

  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[4].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString;//@code_kharidar float,

  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[5].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;//@sh_factor float,
  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[6].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString;//@tatikh_forosh nvarchar(12),

  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[7].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;//@shahrforoshande nvarchar(50),

  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[8].Value:=par;//@par float,

  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[9].Value:=temp;//@temp float,

  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[10].Value:=frm_main.l_last_op.Caption+' «“ '+Dmlistha.ADOmohasebe_foroshkol_.AsString+' »Â '+DataM_final.ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol.AsString;//@amaliat nvarchar(1000),
  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[11].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[12].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)
  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[13].Value:=DataM_final.ADOQ_t_Temp_pardakht_check_foroshsh_hesab.AsString;//@bank_shobe_sh_hesab nvarchar(70),
  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[14].Value:=DataM_final.ADOQ_t_Temp_pardakht_check_foroshsh_check.AsString;//@sh_check float,
  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.Parameters[15].Value:=DataM_final.ADOQ_t_Temp_pardakht_check_foroshmablagh_check.AsString;//@mablagh_check float

  datam_sp_eslahe_forosh.ADOStoredProc_forosh_check_hazf.ExecProc;


////////////////////////////////////////////////
  MessageBox(Handle,pchar('⁄„·Ì«  Õ–› çò «‰Ã«„ ‘œ'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
  close;
////////////////////////////////////////////////


end;



procedure Tfrm_eslahe_forosh_checkha.execute_eslahe_check_forosh(mab_gabl,t_jam:string);
var check_gabl,kol_pardakht,talab_eslah,bedeh_eslah,check,par,par2,temp,tagire_nagdi:real;
begin

  t_jam:=FloatToStr(StrToFloat(t_jam)-DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat);
  
    if (mab_gabl='0') or (mab_gabl='') then
             check_gabl:=0
         else
          check_gabl:=StrToFloat(mab_gabl);

    if (DataM_final.ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol.AsString='') or(DataM_final.ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol.AsString='0')then
      check:=0
    else
      check:=StrToFloat(DataM_final.ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol.AsString);
      
/////////////////////////////////////////////////////////


if (check_gabl<(check+StrToFloat(DBT_mab_gabl.Caption)))and(StrToFloat(t_jam) >= (check+StrToFloat(DBT_mab_gabl.Caption))) then //1
   begin
        bedeh_eslah:=(check+StrToFloat(DBT_mab_gabl.Caption))-check_gabl;
        par:=1;
   end;


if (check_gabl<(check+StrToFloat(DBT_mab_gabl.Caption)))and(StrToFloat(t_jam) < (check+StrToFloat(DBT_mab_gabl.Caption)))and(check_gabl<=StrToFloat(t_jam)) then //5
   begin
        bedeh_eslah:=StrToFloat(t_jam)-check_gabl;

        talab_eslah:=(check+StrToFloat(DBT_mab_gabl.Caption))-StrToFloat(t_jam);
        par:=5;
   end;

if (check_gabl<(check+StrToFloat(DBT_mab_gabl.Caption)))and(StrToFloat(t_jam) < (check+StrToFloat(DBT_mab_gabl.Caption)))and(check_gabl>StrToFloat(t_jam)) then //4
   begin
        talab_eslah:=(check+StrToFloat(DBT_mab_gabl.Caption))-check_gabl;
        par:=4;
   end;

if (check_gabl>(check+StrToFloat(DBT_mab_gabl.Caption)))and(StrToFloat(t_jam) > (check+StrToFloat(DBT_mab_gabl.Caption)))and(StrToFloat(t_jam)<check_gabl) then//2
   begin
        bedeh_eslah:=StrToFloat(t_jam)-(check+StrToFloat(DBT_mab_gabl.Caption));
        talab_eslah:=check_gabl-StrToFloat(t_jam);
        par:=2;
   end;

if (check_gabl>(check+StrToFloat(DBT_mab_gabl.Caption)))and(StrToFloat(t_jam) > (check+StrToFloat(DBT_mab_gabl.Caption)))and(StrToFloat(t_jam)>=check_gabl) then//3
   begin
        bedeh_eslah:=check_gabl-(check+StrToFloat(DBT_mab_gabl.Caption));
        par:=3;
   end;

   if (check_gabl>(check+StrToFloat(DBT_mab_gabl.Caption)))and(StrToFloat(t_jam) < (check+StrToFloat(DBT_mab_gabl.Caption))) then //6
   begin
        talab_eslah:=check_gabl-(check+StrToFloat(DBT_mab_gabl.Caption));
        par:=6;
   end;

   if (check_gabl>StrToFloat(t_jam))and(StrToFloat(t_jam) = (check+StrToFloat(DBT_mab_gabl.Caption))) then//7
   begin
      talab_eslah:=check_gabl-StrToFloat(t_jam);
      par:=7;
   end;

/////////////////////////////////////////////////////////

  tagire_nagdi:=0;
if check <> DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat then
begin
  tagire_nagdi:=1;
  if DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat<check then //
  begin
    temp:=check-DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat;
    par2:=1;
  end
  else
  begin
       temp:=DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat-check;
       par2:=2;
  end;
end;

/////////////////////////////////////////////////////////

  frm_main.l_last_op.Caption:=' «’·«Õ çòÂ«Ì Å—œ«Œ Ì '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString+' »—«Ì ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;

  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[0].Value:=bedeh_eslah;//@bedeh_eslah float,
  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[1].Value:=talab_eslah;//@talab_eslah float,

  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[2].Value:=L_bedehkae.Caption;//@bedehkar float,
  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[3].Value:=L_bestankar.Caption;//@bestankar float,

  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[4].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString;//@code_kharidar float,

  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[5].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;//@sh_factor float,
  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[6].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString;//@tatikh_forosh nvarchar(12),

  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[7].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;//@shahrforoshande nvarchar(50),

  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[8].Value:=par;//@par float,
  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[9].Value:=par2;//@par2 float,

  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[10].Value:=tagire_nagdi;//@tagire_nagdi float,

  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[11].Value:=temp;//@temp float,

  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[12].Value:=  frm_main.l_last_op.Caption+' «“ '+DBT_ch_ghabl.Caption+' »Â '+DataM_final.ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol.AsString;//@amaliat nvarchar(1000),;//@amaliat nvarchar(1000),
  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[13].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.Parameters[14].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)
  datam_sp_eslahe_forosh.ADOStoredProc_check_forosh.ExecProc;

  MessageBox(Handle,pchar('⁄„·Ì«  «’·«Õ çòÂ«Ì œ—Ì«› Ì »—«Ì ‘„«—Â ›«ò Ê— «‰ Œ«»Ì «‰Ã«„ ‘œ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);

/////////////////////////////////////////////////////////

  
end;
////////////////////////////


//////////////////////////////////////////////////////////////////

procedure Tfrm_eslahe_forosh_checkha.update_bedeh_talab_va_bedehi_kol_kharidar;
var  bede,talab:real;
begin
  DataModule2.adotasfie.SQL.Text:='update bedeh_bestan set bedeh='+L_bedehkae.Caption+
  ',talab='+L_bestankar.Caption+
  '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+
  ' and sh_khaid='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+
  ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString);

  DataModule2.adotasfie.ExecSQL;

end;

procedure Tfrm_eslahe_forosh_checkha.enteghal_checkha_az_temp_check_forosh_be_forosh;
begin
   DataM_final.ADOQ_t_pardakht_check_forosh.SQL.Text:='delete from t_pardakht_check_forosh  '+
   '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
   DataM_final.ADOQ_t_pardakht_check_forosh.ExecSQL;

   DataM_final.ADOQ_t_pardakht_check_forosh.SQL.Text:='insert into t_pardakht_check_forosh select '+
   'code,shomare_factor,mablagh_check,sh_check,sh_hesab,tarikh,shahrforoshande,tarikh_kharid,pass'+
   ' from t_temp_pardakht_check_forosh ';
    DataM_final.ADOQ_t_pardakht_check_forosh.ExecSQL;
end;

procedure Tfrm_eslahe_forosh_checkha.update_temp_check_eslah;
begin
  DataM_final.ADOQ_T_temp_pardakht_check_forosh.SQL.Text:='update T_temp_pardakht_check_forosh set shahrforoshande='+
  QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString)+',tarikh_kharid='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString)+
  ',code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+',shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;

  DataM_final.ADOQ_T_temp_pardakht_check_forosh.ExecSQL;
end;

procedure Tfrm_eslahe_forosh_checkha.taeeid_va_sabt_nahaei;
begin
   if DataM_final.ADOQ_t_Temp_pardakht_check_forosh.RecordCount >0 then
   begin
      update_temp_check_eslah;
   end;
end;
function Tfrm_eslahe_forosh_checkha.check_keshide_shodan_ghabl:boolean;
var s:string;
    st:pchar;
begin
  check_keshide_shodan_ghabl:=false;
  DataM_final.ADOQ_T_pardakht_check_forosh.SQL.Text:='select * from T_pardakht_check_forosh   where sh_check='+trim(Edit_shomare.Text)+' and sh_hesab='+QuotedStr(trim(E_shomare_hesab.Text));
  DataM_final.ADOQ_T_pardakht_check_forosh.Open;
  if DataM_final.ADOQ_T_pardakht_check_forosh.RecordCount >0 then
  begin
      check_keshide_shodan_ghabl:=true;
      MessageBox(Handle,'çò »« ‘„«—Â Õ”«» Ê ‘„«—Â çò Ê«—œ ‘œÂ ° ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );      
  end;
end;
procedure Tfrm_eslahe_forosh_checkha.bede_talab_temp_check_forosh_eslah;
var nagd,kol_pardakht:string;
begin
    if (DBT_mab_gabl.Caption='0') or (DBT_mab_gabl.Caption='') then
             nagd:='0'
         else
          nagd:=DBT_mab_gabl.Caption;

          Frm_entekhab_check_baraye_forosh.jame_temp_check_forosh;

          kol_pardakht:=FloatToStr(+DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat+StrToFloat(nagd)+DataM_final.ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol.Value);


         if StrToFloat(kol_pardakht)>StrToFloat(DBText_t_jam.Caption) then
         begin
          L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(DBText_t_jam.Caption));
          L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<StrToFloat(DBText_t_jam.Caption) then
         begin
           L_bedehkae.Caption:=FloatToStr(StrToFloat(DBText_t_jam.Caption)-StrToFloat(kol_pardakht));
           L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=StrToFloat(DBText_t_jam.Caption) then
         begin
          L_bestankar.Caption:='0';
          L_bedehkae.Caption:='0';

         end;

end;
procedure Tfrm_eslahe_forosh_checkha.sabt_eslah_check;
begin
  DataM_final.ADOQ_t_Temp_pardakht_check_forosh.sql.Text:='update T_temp_pardakht_check_forosh set mablagh_check='+
  Edit_mablagh.Text+' ,sh_check='+Edit_shomare.Text+' ,sh_hesab='+QuotedStr(E_shomare_hesab.Text)+' ,tarikh='+
  QuotedStr(E_sal.Text+'/'+E_mah.Text+'/'+E_roz.Text)+' where id='+L_id_check.Caption;
  DataM_final.ADOQ_t_Temp_pardakht_check_forosh.ExecSQL;
end;

function Tfrm_eslahe_forosh_checkha.check_eslah_check:boolean;
begin
  check_eslah_check:=true;

if Edit_mablagh.Text='' then
  Edit_mablagh.Text:='0';

  if(E_shomare_hesab.Text='')or (Edit_shomare.Text='')or (StrToFloat(Edit_mablagh.Text)=0)or (E_roz.Text='')or (E_sal.Text='')or(E_mah.Text='') then
  begin
    check_eslah_check:=false;
    MessageBox(Handle,'Â„Â ›Ì·œÂ«Ì ” «—Â œ«— »«Ìœ Ê«—œ ‘Ê‰œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
    
  end;
end;

procedure Tfrm_eslahe_forosh_checkha.bClick(Sender: TObject);
begin
  Frm_entekhab_check_baraye_forosh.L_type.Caption:='eslah';
  Frm_entekhab_check_baraye_forosh.ShowModal;


end;

procedure Tfrm_eslahe_forosh_checkha.FormShow(Sender: TObject);
begin

  bede_talab_temp_check_forosh_eslah;
  if  DataM_final.ADOQ_t_Temp_pardakht_check_forosh.RecordCount =0 then
  begin
    frm_eslahe_forosh_checkha.L_id_check.Caption:='';
    frm_eslahe_forosh_checkha.E_shomare_hesab.Text:='';
    frm_eslahe_forosh_checkha.Edit_shomare.Text:='';
    frm_eslahe_forosh_checkha.Edit_mablagh.Text:='';

    frm_eslahe_forosh_checkha.E_roz.Text:='';
    frm_eslahe_forosh_checkha.E_mah.Text:='';
    frm_eslahe_forosh_checkha.E_sal.Text:='';
  end
  else
    begin
     frm_eslahe_forosh_checkha.L_id_check.Caption:=DataM_final.ADOQ_t_Temp_pardakht_check_foroshid.AsString;
     frm_eslahe_forosh_checkha.E_shomare_hesab.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_foroshsh_hesab.AsString;
     frm_eslahe_forosh_checkha.Edit_shomare.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_foroshsh_check.AsString;
     frm_eslahe_forosh_checkha.Edit_mablagh.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_foroshmablagh_check.AsString;

     frm_eslahe_forosh_checkha.E_roz.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[9]+DataM_final.ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[10];
     frm_eslahe_forosh_checkha.E_mah.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[6]+DataM_final.ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[7];
     frm_eslahe_forosh_checkha.E_sal.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[1]+DataM_final.ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[2]+DataM_final.ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[3]+DataM_final.ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[4];
    end;  
end;

procedure Tfrm_eslahe_forosh_checkha.aClick(Sender: TObject);
var kol_pardkht_ghabl,nagd,check:real;
begin
  if DataM_final.ADOQ_t_Temp_pardakht_check_forosh.RecordCount =0 then
    MessageBox(Handle,pchar('çòÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin

  if DBT_mab_gabl.Caption='' then
    nagd:=0
  else
    nagd:=StrToFloat(DBT_mab_gabl.Caption);

  if DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsString='' then
    check:=0
  else
    check:=DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat;

   kol_pardkht_ghabl:=nagd+check;



    execute_hazfe_check(FloatToStr(kol_pardkht_ghabl),Dmlistha.ADOmohasebe_foroshkol_.AsString);
    
    Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;

    if  DataM_final.ADOQ_t_Temp_pardakht_check_forosh.RecordCount =0 then
    begin
      frm_eslahe_forosh_checkha.L_id_check.Caption:='';
      frm_eslahe_forosh_checkha.E_shomare_hesab.Text:='';
      frm_eslahe_forosh_checkha.Edit_shomare.Text:='';
      frm_eslahe_forosh_checkha.Edit_mablagh.Text:='';

      frm_eslahe_forosh_checkha.E_roz.Text:='';
      frm_eslahe_forosh_checkha.E_mah.Text:='';
      frm_eslahe_forosh_checkha.E_sal.Text:='';
    end;
    
    Frm_entekhab_check_baraye_forosh.jame_temp_check_forosh;
    frm_eslahe_forosh_checkha.bede_talab_temp_check_forosh_eslah;

  Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;

  end;
end;

procedure Tfrm_eslahe_forosh_checkha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frm_forosh_property.hazf_hame_check;
end;

procedure Tfrm_eslahe_forosh_checkha.bbClick(Sender: TObject);
begin
 if  DataM_final.ADOQ_t_Temp_pardakht_check_forosh.RecordCount >0 then
 begin
    //if (not check_keshide_shodan_ghabl) then
   // begin
      if check_eslah_check then
      begin
        sabt_eslah_check;
        sleep(300);
        Frm_entekhab_check_baraye_forosh.jame_temp_check_forosh;
        Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
        sleep(300);
        bede_talab_temp_check_forosh_eslah;
        MessageBox(Handle,pchar('çò «‰ Œ«»Ì «’·«Õ ‘œ'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
      end;
    //end;
 end
 else
  MessageBox(Handle,pchar('çòÌ »—«Ì «’·«Õ ÊÃÊœ ‰œ«—œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);

end;

procedure Tfrm_eslahe_forosh_checkha.Button1Click(Sender: TObject);
var kol_pardkht_ghabl,nagd,check:real;
begin
  {taeeid_va_sabt_nahaei;}

  {enteghal_checkha_az_temp_check_forosh_be_forosh;}

  {frm_forosh_property.hazf_hame_check;}
  if DBT_mab_gabl.Caption='' then
    nagd:=0
  else
    nagd:=StrToFloat(DBT_mab_gabl.Caption);

  if DBT_ch_ghabl.Caption='' then
    check:=0
  else
    check:=StrToFloat(DBT_ch_ghabl.Caption);

  kol_pardkht_ghabl:=nagd+check;

  execute_eslahe_check_forosh(FloatToStr(kol_pardkht_ghabl),Dmlistha.ADOmohasebe_foroshkol_.AsString);

    frm_eslah_forosh.aghlame_factor;
    frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
    ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    DataM_final.ADOQ_takhfife_forosh.Open;  

  {update_bedehi_kharidar_pas_az_bedekar_shodan(FloatToStr(kol_pardkht_ghabl),DBText_t_jam.Caption); }

  {update_bedeh_talab_va_bedehi_kol_kharidar; }


  close;
end;

procedure Tfrm_eslahe_forosh_checkha.Edit_shomareKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh_checkha.Edit_mablaghKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh_checkha.E_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh_checkha.E_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh_checkha.E_rozExit(Sender: TObject);
begin
  if strlen(pchar(E_roz.Text))=1 then
    E_roz.Text:='0'+E_roz.Text;
end;

procedure Tfrm_eslahe_forosh_checkha.E_mahExit(Sender: TObject);
begin
  if strlen(pchar(E_mah.Text))=1 then
    E_mah.Text:='0'+E_mah.Text;
end;

procedure Tfrm_eslahe_forosh_checkha.E_salExit(Sender: TObject);
begin
  IF e_sal.Text='' then
    e_sal.Text:='0';
  IF StrToInt(e_sal.Text)<1000 then
  begin
    MessageBox(Handle,'”«· »«Ìœ çÂ«— —ﬁ„Ì »«‘œ','Œÿ« !',MB_OK + MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
    e_sal.SetFocus;
  end;
end;

end.
