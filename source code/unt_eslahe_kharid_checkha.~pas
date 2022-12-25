unit unt_eslahe_kharid_checkha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, SUIDBCtrls, SUIButton, DBCtrls, DB;

type
  Tfrm_eslahe_kharid_checkha = class(TForm)
    DataSource5: TDataSource;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    L_id_check: TLabel;
    E_shomare_hesab: TEdit;
    Edit_shomare: TEdit;
    Edit_mablagh: TEdit;
    bb: TsuiButton;
    E_roz: TEdit;
    E_mah: TEdit;
    E_sal: TEdit;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    a: TsuiButton;
    suiDBGrid3: TsuiDBGrid;
    b: TsuiButton;
    Label2: TLabel;
    Button1: TButton;
    L_bestankar: TLabel;
    L_bedehkae: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DataSource3: TDataSource;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    DBText_t_jam: TDBText;
    Label10: TLabel;
    DBT_mab_gabl: TDBText;
    Label1: TLabel;
    DBT_m_check: TDBText;
    DBText2: TDBText;
    Label13: TLabel;
    DataSource4: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure bClick(Sender: TObject);
    procedure aClick(Sender: TObject);
    procedure bede_talab_temp_check_forosh_eslah;
    procedure bbClick(Sender: TObject);
    function check_eslah_check:boolean;
    procedure sabt_eslah_check;
    procedure Button1Click(Sender: TObject);
    procedure taeeid_va_sabt_nahaei;

    procedure E_salExit(Sender: TObject);
    procedure E_mahKeyPress(Sender: TObject; var Key: Char);
    procedure E_salKeyPress(Sender: TObject; var Key: Char);
    procedure E_rozKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_mablaghKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_shomareKeyPress(Sender: TObject; var Key: Char);
    procedure E_rozExit(Sender: TObject);
    procedure E_mahExit(Sender: TObject);
    procedure execute_eslahe_check_kharid(mab_gabl,t_jam:string);
    procedure execute_hazfe_check(mab_gabl,t_jam:string);

  private
    { Private declarations }
  public
    { Public declarations }
    tarikh_vase_eslah:string;
    tagir:array[1..30]of real;
    andis:integer;
  end;

var
  frm_eslahe_kharid_checkha: Tfrm_eslahe_kharid_checkha;

implementation

uses untjens_kharid, unt_entekhab_check, unt_DataM_final,
  unt_eslahe_forosh_checkha, unt_entekhab_check_baraye_forosh,
  unt_forosh_property, unt_datamodule1, Untdmlistha, unt_main,
  unt_datam_sp_eslahe_forosh, unt_eslah_kharid, unt_Dm_zayeat_marjoei,
  unt_DataM_forosh, unt_frm_eslah_bank, unt_DataM_final1, Unt_add_bank1;

{$R *.dfm}

/////////////////////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_eslahe_kharid_checkha.execute_hazfe_check(mab_gabl,t_jam:string);
var kol_pardkht_ghabl,check,check_gabl,bedeh_eslah,par,talab_eslah,temp:real;
    nagd,kol_pardakht:string;
begin

    t_jam:=FloatToStr(StrToFloat(t_jam)-Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat);
    if (mab_gabl='0') or (mab_gabl='') then
             check_gabl:=0
         else
          check_gabl:=StrToFloat(mab_gabl);

    if (DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol.AsString='') or(DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol.AsString='0')then
      check:=0
    else
    begin
      check:=StrToFloat(DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol.AsString);
      check:=check-DataM_final.ADOQ_t_Temp_pardakht_check_kharidmablagh_check.AsFloat;
    end;

    if (DBT_mab_gabl.Caption='0') or (DBT_mab_gabl.Caption='') then
             nagd:='0'
         else
          nagd:=DBT_mab_gabl.Caption;

          kol_pardakht:=FloatToStr(StrToFloat(nagd)+DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol.Value-DataM_final.ADOQ_t_Temp_pardakht_check_kharidmablagh_check.AsFloat);

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

if DataM_final.ADOQ_t_Temp_pardakht_check_kharidpass.AsString='»·Ì' then
begin

 frm_eslah_bank.type_es:='hazf_az_eslahe_check';

 frm_eslah_bank.e_bedehkar.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidmablagh_check.AsString;

 frm_eslah_bank.shomare_hesab:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_hesab.AsString;

 frm_eslah_bank.e_sh_fish.Text:= DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_check.AsString;

 frm_eslah_bank.E_bestankar.Text:='0';


 //frm_eslah_bank.tarikh:=DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString;

    DataM_final1.ADOQ_bank3.SQL.Text:='select * from t_bank1  where moshakhasat_kol='+
            QuotedStr(DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_hesab.AsString)+
            ' and sh_fish='+DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_check.AsString+
            ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString);
    DataM_final1.ADOQ_bank3.Open;

     frm_eslah_bank.L_cod.Caption:=DataM_final1.ADOQ_bank3cod.AsString;

     frm_eslah_bank.Button6.Click;
end;

/////////////////////////////////////////////////////////
  frm_main.l_last_op.Caption:=' «’·«Õ çòÂ«Ì Å—œ«Œ Ì »Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString+' »—«Ì ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;

///////////////////////////////////////////////
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[0].Value:=bedeh_eslah;//@bedeh_eslah float,
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[1].Value:=talab_eslah;//@talab_eslah float,

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[2].Value:=L_bedehkae.Caption;//@bedehkar float,
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[3].Value:=L_bestankar.Caption;//@bestankar float,

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[4].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;//@code_kharidar float,

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[5].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;//@sh_factor float,
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[6].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString;//@tatikh_forosh nvarchar(12),

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[7].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@shahrforoshande nvarchar(50),

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[8].Value:=par;//@par float,

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[9].Value:=temp;//@temp float,

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[10].Value:=frm_main.l_last_op.Caption+' «“ '+Dmlistha.ADOmohasebe_kharidkol_.AsString+' »Â '+DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol.AsString;//@amaliat nvarchar(1000),
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[11].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[12].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[13].Value:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_hesab.AsString;//@bank_shobe_sh_hesab nvarchar(70),
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[14].Value:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_check.AsString;//@sh_check float,
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.Parameters[15].Value:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidmablagh_check.AsString;//@mablagh_check float
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_hazf.ExecProc;


////////////////////////////////////////////////
MessageBox(Handle,pchar('⁄„·Ì«  Õ–› çò «‰Ã«„ ‘œ'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
////////////////////////////////////////////////
end;

procedure Tfrm_eslahe_kharid_checkha.execute_eslahe_check_kharid(mab_gabl,t_jam:string);
var check_gabl,kol_pardakht,talab_eslah,bedeh_eslah,check,par,par2,temp,tagire_nagdi:real;
 i:integer;
begin
    t_jam:=FloatToStr(StrToFloat(t_jam)-Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat);
    
    if (mab_gabl='0') or (mab_gabl='') then
             check_gabl:=0
         else
          check_gabl:=StrToFloat(mab_gabl);

    if (DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol.AsString='') or(DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol.AsString='0')then
      check:=0
    else
      check:=StrToFloat(DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol.AsString);
      
/////////////////////////////////////////////////////////
par:=0;

/////////////////////////////////////////////////////////

 //frm_add_bank1.execute_morede_banki_backup_stored_procedure;


{for i:=1 to andis do
begin
  if tagir[i]<>-1 then
  begin
    DataM_final.ADOQ_t_Temp_pardakht_check_kharid.Locate('id',FloatToStr(tagir[i]),[]);

    DataM_final1.ADOQ_bank3.SQL.Text:='select * from t_bank1  where moshakhasat_kol='+
            QuotedStr(DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_hesab.AsString)+
            ' and sh_fish='+DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_check.AsString+
            ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString);
    DataM_final1.ADOQ_bank3.Open;

     frm_eslah_bank.L_cod.Caption:=DataM_final1.ADOQ_bank3cod.AsString;
     

    frm_eslah_bank.shomare_hesab:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_hesab.AsString;
    frm_eslah_bank.type_es:='eslah_az_eslahe_check_kharid';

    frm_eslah_bank.e_sh_fish.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_check.AsString;
    frm_eslah_bank.e_bedehkar.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidmablagh_check.AsString;
    frm_eslah_bank.E_bestankar.Text:='0';
    frm_eslah_bank.Memo1.Text:=' Å—œ«Œ  çò »—«Ì Œ—Ìœ ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' «“ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;

    frm_eslah_bank.sandog:='';
    tarikh_vase_eslah:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString;

    frm_eslah_bank.Button1.Click;
  end;
end;}


/////////////////////////////////////////////////////////
  frm_main.l_last_op.Caption:=' «’·«Õ çòÂ«Ì Å—œ«Œ Ì »Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString+' »—«Ì ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;

  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.Parameters[0].Value:=bedeh_eslah;//@bedeh_eslah float,
  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.Parameters[1].Value:=talab_eslah;//@talab_eslah float,

  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.Parameters[2].Value:=L_bedehkae.Caption;//@bedehkar float,
  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.Parameters[3].Value:=L_bestankar.Caption;//@bestankar float,

  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.Parameters[4].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;//@code_kharidar float,

  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.Parameters[5].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;//@sh_factor float,
  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.Parameters[6].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString;//@tatikh_forosh nvarchar(12),

  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.Parameters[7].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@shahrforoshande nvarchar(50),

  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.Parameters[8].Value:=par;//@par float,

  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.Parameters[9].Value:=temp;//@temp float,

  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.Parameters[10].Value:=frm_main.l_last_op.Caption+' «“ '+DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsString+' »Â '+DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol.AsString;//@amaliat nvarchar(1000),
  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.Parameters[11].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.Parameters[12].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)
  datam_sp_eslahe_forosh.ADOStoredProc_check_kharid.ExecProc;



  MessageBox(Handle,pchar('⁄„·Ì«  «’·«Õ çòÂ«Ì Å—œ«Œ Ì »—«Ì ‘„«—Â ›«ò Ê— «‰ Œ«»Ì «‰Ã«„ ‘œ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);

/////////////////////////////////////////////////////////

  
end;
////////////////////////////





procedure Tfrm_eslahe_kharid_checkha.taeeid_va_sabt_nahaei;
begin
   if DataM_final.ADOQ_t_Temp_pardakht_check_forosh.RecordCount >0 then
   begin
     // update_temp_check_eslah;
   end;
end;

procedure Tfrm_eslahe_kharid_checkha.sabt_eslah_check;
var i:integer;
    tekrari:boolean;
begin

if andis<=30 then
begin
  tekrari:=false;

  for i:=1 to 30 do
  begin
   if tagir[i]=DataM_final.ADOQ_t_Temp_pardakht_check_kharidid.AsInteger then
   begin
    tekrari:=true;
    Break;
   end;
  end;

  if not tekrari then
  begin
    tagir[andis]:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidid.AsInteger;
    andis:=andis+1;
  end;


  DataM_final.ADOQ_t_Temp_pardakht_check_kharid.sql.Text:='begin tran update T_temp_pardakht_check_kharid set mablagh_check='+
  Edit_mablagh.Text+' ,sh_check='+Edit_shomare.Text+' ,sh_hesab='+QuotedStr(E_shomare_hesab.Text)+' ,tarikh='+
  QuotedStr(E_sal.Text+'/'+E_mah.Text+'/'+E_roz.Text)+' where id='+L_id_check.Caption+' commit tran';
  DataM_final.ADOQ_t_Temp_pardakht_check_kharid.ExecSQL;
end
else
begin
  MessageBox(Handle,pchar('œ— Â— »«— ›ﬁÿ „Ì  Ê«‰Ìœ 30 çò —« «’·«Õ ‰„«ÌÌœ »—«Ì  ⁄œ«œ »Ì‘ — «“ 30 çò œÊ»«—Â Ê«—œ ‘ÊÌœ(30  « çò «’·«Õ „Ì ê—œœ).'),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
  close;
end;


end;


function Tfrm_eslahe_kharid_checkha.check_eslah_check:boolean;
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



procedure Tfrm_eslahe_kharid_checkha.bede_talab_temp_check_forosh_eslah;
var nagd,kol_pardakht:string;
begin
    if (DBT_mab_gabl.Caption='0') or (DBT_mab_gabl.Caption='') then
             nagd:='0'
         else
          nagd:=DBT_mab_gabl.Caption;

          frm_entekhab_check.jame_temp_check_kharid;

          kol_pardakht:=FloatToStr(StrToFloat(nagd)+DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol.Value+Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat);

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

procedure Tfrm_eslahe_kharid_checkha.FormShow(Sender: TObject);
var i:integer;
begin

  bede_talab_temp_check_forosh_eslah;
  for i:=1 to 30 do
    tagir[i]:=-1;

  andis:=1;

  if  DataM_final.ADOQ_t_Temp_pardakht_check_kharid.RecordCount=0 then
  begin
    frm_eslahe_kharid_checkha.L_id_check.Caption:='';
    frm_eslahe_kharid_checkha.E_shomare_hesab.Text:='';
    frm_eslahe_kharid_checkha.Edit_shomare.Text:='';
    frm_eslahe_kharid_checkha.Edit_mablagh.Text:='';

    frm_eslahe_kharid_checkha.E_roz.Text:='';
    frm_eslahe_kharid_checkha.E_mah.Text:='';
    frm_eslahe_kharid_checkha.E_sal.Text:='';
  end
  else
  begin
     frm_eslahe_kharid_checkha.L_id_check.Caption:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidid.AsString;
     frm_eslahe_kharid_checkha.E_shomare_hesab.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_hesab.AsString;
     frm_eslahe_kharid_checkha.Edit_shomare.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_check.AsString;
     frm_eslahe_kharid_checkha.Edit_mablagh.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidmablagh_check.AsString;

     frm_eslahe_kharid_checkha.E_roz.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[9]+DataM_final.ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[10];
     frm_eslahe_kharid_checkha.E_mah.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[6]+DataM_final.ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[7];
     frm_eslahe_kharid_checkha.E_sal.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[1]+DataM_final.ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[2]+DataM_final.ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[3]+DataM_final.ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[4];
  end;
end;

procedure Tfrm_eslahe_kharid_checkha.bClick(Sender: TObject);
var kol_pardkht_ghabl,nagd,check:real;
begin
  frm_entekhab_check.l_type.Caption:='eslah';
  frm_entekhab_check.ShowModal;
  close;
end;

procedure Tfrm_eslahe_kharid_checkha.aClick(Sender: TObject);
var kol_pardkht_ghabl,nagd,check:real;
begin
  if DataM_final.ADOQ_t_Temp_pardakht_check_kharid.RecordCount =0 then
    MessageBox(Handle,pchar('çòÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin

  if DBT_mab_gabl.Caption='' then
    nagd:=0
  else
    nagd:=StrToFloat(DBT_mab_gabl.Caption);

  if DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsString='' then
    check:=0
  else
    check:=DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsFloat;

   kol_pardkht_ghabl:=nagd+check;


   execute_hazfe_check(FloatToStr(kol_pardkht_ghabl),Dmlistha.ADOmohasebe_kharidkol_.AsString);

    //sleep(300);
    frm_eslah_kharid.aghlame_factor;
    frm_eslah_kharid.mablagh_nagd_check_ghabli_sh_faktor;

    Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
    ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
    Dmlistha.ADOmohasebe_keraye_kharid.open;
    
    //sleep(3000);


  close;
  end;
end;

procedure Tfrm_eslahe_kharid_checkha.bbClick(Sender: TObject);
var mojodi_heasb_tarikh,mojodi_heasb_kol:real;
begin
  mojodi_heasb_kol:=0;

  DataM_forosh.ADOQ_mande_bank.SQL.Text:='select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
  QuotedStr(trim(DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_hesab.AsString));
  DataM_forosh.ADOQ_mande_bank.Open;

  mojodi_heasb_kol:=DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat;

  {DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
  QuotedStr(DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_hesab.AsString)+
  ' and tarikh<='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString)+' commit tran';
  DataM_forosh.ADOQ_mande_bank.Open;

  mojodi_heasb_tarikh:=DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat; }

      if check_eslah_check then
      begin
         frm_entekhab_check.jame_temp_check_kharid;

         {if (mojodi_heasb_tarikh<StrToFloat(Edit_mablagh.Text))and(StrToFloat(Edit_mablagh.Text)>DataM_final.ADOQ_t_Temp_pardakht_check_kharidmablagh_check.AsFloat) then
         begin
          MessageBox(Handle,pchar(' „»·€ Ê«—œ ‘œÂ »—«Ì çò° «“ „ÊÃÊœÌ ‘„«—Â Õ”«» «‰ Œ«»Ì =  '+FloatToStr(mojodi_heasb_tarikh)+' œ—  «—ÌŒ Œ—Ìœ(’œÊ— çòÂ«) ° »Ì‘ — „Ì »«‘œ.'),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
          exit;
         end;  }



         if (DataM_final.ADOQ_t_Temp_pardakht_check_kharidpass.AsString='»·Ì')and(StrToFloat(Edit_mablagh.Text)>DataM_final.ADOQ_t_Temp_pardakht_check_kharidmablagh_check.AsFloat)and(mojodi_heasb_kol+DataM_final.ADOQ_t_Temp_pardakht_check_kharidmablagh_check.AsFloat < StrToFloat(Edit_mablagh.Text)) then
         begin
          MessageBox(Handle,pchar('  „»·€ Ê«—œ ‘œÂ »—«Ì çò «“ „ÊÃÊœÌ Õ”«» »«‰òÌ = '+FloatToStr(mojodi_heasb_kol+DataM_final.ADOQ_t_Temp_pardakht_check_kharidmablagh_check.AsFloat)+'»Ì‘ — „Ì »«‘œ(çò Å«” ‘œÂ «”  Ê »⁄‰Ê«‰ „Ê—œ »«‰òÌ À»  ê—œÌœÂ «” )'),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
          exit;
         end;



        { if (mojodi_heasb_kol<StrToFloat(Edit_mablagh.Text))and(StrToFloat(Edit_mablagh.Text)>DataM_final.ADOQ_t_Temp_pardakht_check_kharidmablagh_check.AsFloat) then
         begin
          MessageBox(Handle,pchar(' „»·€ Ê«—œ ‘œÂ »—«Ì çò° «“ „ÊÃÊœÌ ‘„«—Â Õ”«» «‰ Œ«»Ì =  '+FloatToStr(mojodi_heasb_kol)+' »Ì‘ — „Ì »«‘œ. '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
          exit;
         end; }



        sabt_eslah_check;
        //sleep(300);
        frm_entekhab_check.jame_temp_check_kharid;
        frm_entekhab_check.show_temp_check_kharid;

        //sleep(3000);
        bede_talab_temp_check_forosh_eslah;
        MessageBox(Handle,pchar('çò «‰ Œ«»Ì «’·«Õ ‘œ'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
      end;
end;

procedure Tfrm_eslahe_kharid_checkha.Button1Click(Sender: TObject);
var kol_pardkht_ghabl,nagd,check:real;
begin

  if DBT_mab_gabl.Caption='' then
    nagd:=0
  else
    nagd:=StrToFloat(DBT_mab_gabl.Caption);

  if DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsString='' then
    check:=0
  else
    check:=DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsFloat;

  kol_pardkht_ghabl:=nagd+check;

  execute_eslahe_check_kharid(FloatToStr(kol_pardkht_ghabl),Dmlistha.ADOmohasebe_kharidkol_.AsString);



  close;
end;

procedure Tfrm_eslahe_kharid_checkha.E_salExit(Sender: TObject);
begin
  IF e_sal.Text='' then
    e_sal.Text:='0';
  IF StrToInt(e_sal.Text)<1000 then
  begin
    MessageBox(Handle,'”«· »«Ìœ çÂ«— —ﬁ„Ì »«‘œ','Œÿ« !',MB_OK + MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
    e_sal.SetFocus;
  end;
end;

procedure Tfrm_eslahe_kharid_checkha.E_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_kharid_checkha.E_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_kharid_checkha.E_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_kharid_checkha.Edit_mablaghKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_kharid_checkha.Edit_shomareKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_kharid_checkha.E_rozExit(Sender: TObject);
begin
  if strlen(pchar(E_roz.Text))=1 then
    E_roz.Text:='0'+E_roz.Text;
end;

procedure Tfrm_eslahe_kharid_checkha.E_mahExit(Sender: TObject);
begin
  if strlen(pchar(E_mah.Text))=1 then
    E_mah.Text:='0'+E_mah.Text;
end;

end.
