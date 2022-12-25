unit untjens_kharid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIPageControl, SUITabControl, ExtCtrls, SUIForm,
  SUIEdit, SUIButton, DBCtrls, SUIDBCtrls, XPMan,taghvim,unt_datamodule1,
  DB, SUIMgr, SUIDlg,Mask, PDJ_XPB, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton, Grids,
  DBGrids;

type
  Tfrmjens_kharid = class(TForm)
    DataSource2: TDataSource;
    Label1: TLabel;
    L_bedehkae: TLabel;
    L_bestankar: TLabel;
    Label3: TLabel;
    suiButton5: TsuiButton;
    suiButton6: TsuiButton;
    GroupBox2: TGroupBox;
    suiButton4: TsuiButton;
    MaskEditrooz: TMaskEdit;
    MaskEditmah: TMaskEdit;
    MaskEditsal: TMaskEdit;
    RadioGroup1: TRadioGroup;
    GroupBox4: TGroupBox;
    Label10: TLabel;
    GroupBox5: TGroupBox;
    DBText1: TDBText;
    suiDBGrid2: TsuiDBGrid;
    b: TsuiButton;
    Edit5: TEdit;
    suiButton1: TsuiButton;
    Edit4: TEdit;
    suiButton2: TsuiButton;
    L_foroshande_name: TLabel;
    RadioGroup2: TRadioGroup;
    E_sh_darj_factor: TEdit;
    L_sh_darj_factor: TLabel;
    L_g_text: TLabel;
    Lkolgeymat: TLabel;
    suiButton_: TsuiButton;
    suiButton3: TsuiButton;
    Label2: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DataSource3: TDataSource;
    procedure clear1;
    procedure Button4Click(Sender: TObject);
    procedure suiForm1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton8Click(Sender: TObject);
    procedure updatebedehi;
    procedure RadioGroup1Click(Sender: TObject);
    function  equal:boolean;
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure suiButton_Click(Sender: TObject);
    procedure add_to_virtual_anbar;
    function  check:boolean;
    procedure bClick(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure hazf_check;
    procedure hazf_hame_check;
    procedure temp_check_to_check;
    procedure naghd_t_naghd_kharid;
    procedure sabt_bedeh_talab;
    procedure show_temp1;
    procedure sabt_bedeh_kharidar;
    procedure E_sh_darj_factorKeyPress(Sender: TObject; var Key: Char);
    procedure typ_darj_sh_factor;
    procedure RadioGroup2Click(Sender: TObject);
    function check_sh_fac:boolean;
    procedure Edit4Change(Sender: TObject);
    procedure insert_kharid_ba_sh_factore_autamatic;
    procedure insert_kharid_ba_sh_factore_vorodi;
    procedure suiButton6Click(Sender: TObject);
    function taeed_update_tempe_kharid:boolean;
    procedure suiButton5Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure MaskEditroozChange(Sender: TObject);
    procedure E_sh_darj_factorExit(Sender: TObject);
    procedure suiButton6Enter(Sender: TObject);
    procedure execute_kharid_store_procedure;
    function updatet_daste_check:boolean;
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    tarikh,sh_fac,shahrforoshande,code,ker_kol:string;
  end;

var
  frmjens_kharid: Tfrmjens_kharid;

implementation

uses  Unt_dmanbar,unt_datamodule2,Untaddanbar, unt_main, unt_login,
  Unt_mmoshakhasat_shakhs, Unt_shakhs_jadid, unt_entekhab_check,
  Unteditgeymatjenspas, unt_pish_kharid, unt_pish_forosh, Untdmlistha,
  unt_DataM_final, unt_entekhab_foroshande, unt_DataM_sp,SqlExpr,
  unt_Dm_sp_backup, unt_tozihat, unt_gozaresh_az_sandog,
  Unt_DataModule_gozaresh_tarkibi, Unt_add_bank1;


{$R *.dfm}


 function Tfrmjens_kharid.equal:boolean;
var p1,p2,p3 :real;
begin
  if Trim(Edit4.Text)='' then
    p1:=0
  else
    p1:=StrTofloat(Edit4.Text);

  if Trim(Edit5.Text)='' then
    p2:=0
  else
    p2:=StrTofloat(Edit5.Text);

  if Lkolgeymat.Caption='' then
    p3:=0
  else
    p3:=StrTofloat(Lkolgeymat.Caption);

 if (p1+p2)>(p3) then
    begin
     {if Label_taeed_forosh.Caption<>'a' then}
       equal:=false;
       //Label_taeed_forosh.Caption:='';
    end
 else
   begin
     equal:=true;
     //Label_taeed_forosh.Caption:='a'
   end;
end;





///////////////
function Tfrmjens_kharid.updatet_daste_check:boolean;
begin
  updatet_daste_check:=false;

  frm_entekhab_check.show_temp_check_kharid;
  if (DataM_final.ADOQ_t_Temp_pardakht_check_kharid.RecordCount>0)then
  DataM_final.ADOQ_t_Temp_pardakht_check_kharid.First;
  while not(DataM_final.ADOQ_t_Temp_pardakht_check_kharid.Eof)do
  begin
      Dmlistha.ADOQuery_daste_check.SQL.Text:='update t_daste_check set barg_mande=barg_mande-1,barg_keshide=barg_keshide+1 where bank_shobe_sh_hesab='+
      QuotedStr(DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_hesab.AsString);
      Dmlistha.ADOQuery_daste_check.ExecSQL;
      DataM_final.ADOQ_t_Temp_pardakht_check_kharid.Next;
  end;
  updatet_daste_check:=true;
end;

procedure Tfrmjens_kharid.execute_kharid_store_procedure;
var time_,nagd:string;
begin
 time_:=frm_main.LMDClock1.Digital.Caption;

  if Edit4.Text='' then
    Edit4.Text:='0';

  if StrToFloat(Edit4.Text)=0 then
    nagd:='0'
  else
   nagd:=Edit4.Text;
 
 if RadioGroup2.ItemIndex=0 then
 begin
  sh_fac:=frmjens_kharid.E_sh_darj_factor.Text;
  DataM_sp.ADOStoredProc_kharid.Parameters[8].Value:=0;  //@type_sh_factor
 end
 else
   DataM_sp.ADOStoredProc_kharid.Parameters[8].Value:=1;  //@type_sh_factor

 // try except

 Dm_sp_backup.ADOStoredProc_from_daste_check_to_temp_daste_check.ExecProc;
 //frm_add_bank1.execute_morede_banki_backup_stored_procedure;

 if updatet_daste_check then
 begin
/////////////////////////////////////
  {DataM_final.ADOQ_t_Temp_pardakht_check_kharid.SQL.Text:='select * from t_Temp_pardakht_check_kharid';
  DataM_final.ADOQ_t_Temp_pardakht_check_kharid.Open;

  if DataM_final.ADOQ_t_Temp_pardakht_check_kharid.RecordCount>0 then
  begin

  DataM_final.ADOQ_t_Temp_pardakht_check_kharid.First;

  while not DataM_final.ADOQ_t_Temp_pardakht_check_kharid.eof do
  begin
    frm_add_bank1.sandog:='';

    frm_add_bank1.e_bedehkar.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidmablagh_check.AsString;

    frm_add_bank1.RadioGroup1.ItemIndex:=1;

    frm_add_bank1.sharh:=' Å—œ«Œ  çò »—«Ì Œ—Ìœ ‘„«—Â '+sh_fac+' «“ '+shahrforoshande;

    frm_add_bank1.L_variz_az_sandog.Caption:='no';

    //frm_add_bank1.l_sh_hesab.Caption:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_hesab.AsString;
    
    frm_add_bank1.e_sh_fish.Text:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_check.AsString;

    frm_add_bank1.tarikh:=tarikh;

    frm_add_bank1.bank_shobe_sh_hesab:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_hesab.AsString;

    frm_add_bank1.time_:=time_;
    
    frm_add_bank1.L_type2.Caption:='pardakhte_check_kharid';

    frm_add_bank1.Button1.Click;

    DataM_final.ADOQ_t_Temp_pardakht_check_kharid.Next;
  end;
  end;}
/////////////////////////////////////////////////////////
  if trim(ker_kol)='' then
    ker_kol:='0';

  frm_main.l_last_op.Caption:='Œ—Ìœ Ã‰” «“ '+shahrforoshande;

  DataM_sp.ADOStoredProc_kharid.Parameters[0].Value:=shahrforoshande;  //@shahrforoshande
  DataM_sp.ADOStoredProc_kharid.Parameters[1].Value:=time_;  //@time
  DataM_sp.ADOStoredProc_kharid.Parameters[2].Value:=tarikh;  //@tarikh
  DataM_sp.ADOStoredProc_kharid.Parameters[3].Value:=sh_fac;  //@sh_factor
  DataM_sp.ADOStoredProc_kharid.Parameters[4].Value:=code; //@code
  DataM_sp.ADOStoredProc_kharid.Parameters[5].Value:=L_bestankar.Caption;  //@talab
  DataM_sp.ADOStoredProc_kharid.Parameters[6].Value:=L_bedehkae.Caption;  //@bedeh


  DataM_sp.ADOStoredProc_kharid.Parameters[7].Value:=nagd;  //@nagd

  DataM_sp.ADOStoredProc_kharid.Parameters[9].Value:=frm_main.l_last_op.Caption+' »« ‘„«—Â ›«ò Ê— '+sh_fac;//@amaliat nvarchar(1000)
  DataM_sp.ADOStoredProc_kharid.Parameters[10].Value:=ker_kol;  //@keraye
  DataM_sp.ADOStoredProc_kharid.Parameters[11].Value:=trim(frm_tozihat.Memo1.Text);//@tozihat_forosh  nvarchar
  DataM_sp.ADOStoredProc_kharid.Parameters[12].Value:=DBLookupComboBox3.Text;//@sandog nvarchar(30)
  DataM_sp.ADOStoredProc_kharid.Parameters[13].Value:='Å—œ«Œ  ‰ﬁœÌ Â‰ê«„ Œ—Ìœ Ã‰” «“'+L_foroshande_name.Caption+' ‘„«—Â ›«ò Ê— '+sh_fac;//@tozih nvarchar(150),
  DataM_sp.ADOStoredProc_kharid.Parameters[14].Value:='Œ—ÊÃÌ';//@type_sandog nvarchar(6),
  DataM_sp.ADOStoredProc_kharid.ExecProc;

  Dm_sp_backup.ADOStoredProc_delete_from_temp_daste_check.ExecProc;
  //frm_add_bank1.execute_delet_from_morede_banki_backup_stored_procedure;

  //frm_main.backup;
  
  MessageBox(Handle,'⁄„·Ì«  À»  Œ—Ìœ Ã‰” «‰Ã«„ ‘œ',' ÊÃÂ !',MB_ok or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );

            clear1;
            frm_entekhab_check.show_temp_check_kharid;
            frm_pish_kharid.delete_hame_ajnas('ok');
            frm_pish_kharid.geymat_kol;
            L_bedehkae.Caption:='0';
            L_bestankar.Caption:='0';
            E_sh_darj_factor.Text:='';
            frmaddanbar.ShowModal;
 end;
end;

////////////////////
function Tfrmjens_kharid.taeed_update_tempe_kharid:boolean;
begin
              taeed_update_tempe_kharid:=false;
              DataM_final.ADOQuery_pish_kharid3.SQL.Text:='select * from t_kharid_temp ';
              DataM_final.ADOQuery_pish_kharid3.Open;
              DataM_final.ADOQuery_pish_kharid3.Last;

              if DataM_final.ADOQuery_pish_kharid3sh_factor.Value>0 then
                taeed_update_tempe_kharid:=true;
end;


procedure Tfrmjens_kharid.insert_kharid_ba_sh_factore_vorodi;
var
    st:pchar;
begin
  if Frm_shakhs_jadid.check_exsist_shakhs(L_foroshande_name.Caption) then
  begin{5}
    if check then
       begin {1}
        if (check_sh_fac) then
          begin{4}

          st:=pchar('Œ—Ìœ Ã‰” «“  << '+L_foroshande_name.Caption+' >> —«  «ÌÌœ „Ì‰„«ÌÌœø');
          if  MessageBox(Handle,st,' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
            begin {2}
           {tr 1} frm_entekhab_check.show_temp_check_kharid;
            frm_main.l_last_op.Caption:='Œ—Ìœ Ã‰” «“ '+L_foroshande_name.Caption;
            frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' »« ‘„«—Â ›«ò Ê— '+sh_fac);

              Dmlistha.ADOmohasebe_kharid.SQL.Text:='insert into jens_ select jens,tedad,gheymat,kol,vahed_koli,vahed_jozei,tedad_koli,geymat_koli,tedad_jozi_dar_koli,shahrforoshande,sh_factor,tarikh,code,teded_jozi,geymat_jadid,code_sherkati from t_kharid_temp';
              Dmlistha.ADOmohasebe_kharid.ExecSQL;

            add_to_virtual_anbar; 


            if (DataM_final.ADOQ_t_Temp_pardakht_check_kharid.RecordCount>0)then
            begin
              temp_check_to_check;  
            end;
            sh_fac:=frmjens_kharid.E_sh_darj_factor.Text;

            DataM_final.ADOQ_t_sh_facrorhaye_kharid.SQL.Text:='insert into t_sh_facrorhaye_kharid values('+
            sh_fac+','+QuotedStr(L_foroshande_name.Caption)+','+QuotedStr(tarikh)+
            ','+DataModule1.ADOQuery3code.AsString+','+QuotedStr(frm_main.LMDClock1.Digital.Caption)+')' ;
            DataM_final.ADOQ_t_sh_facrorhaye_kharid.ExecSQL;

            naghd_t_naghd_kharid;
            sabt_bedeh_talab;
            sabt_bedeh_kharidar;
            hazf_hame_check;
            clear1;
            frm_pish_kharid.delete_hame_ajnas('ok');
            frm_pish_kharid.geymat_kol;
            L_bedehkae.Caption:='0';
            L_bestankar.Caption:='0';
            E_sh_darj_factor.Text:='';
            frmaddanbar.ShowModal;
          end{2};
         end{4}
       end{1};
    end{5};
end;
//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&777
procedure Tfrmjens_kharid.insert_kharid_ba_sh_factore_autamatic;
var
    st:pchar;
begin
if Frm_shakhs_jadid.check_exsist_shakhs(L_foroshande_name.Caption) then
 begin{5}
 st:=pchar('Œ—Ìœ Ã‰” «“  << '+L_foroshande_name.Caption+' >> —«  «ÌÌœ „Ì‰„«ÌÌœø');
 if   MessageBox(Handle,st,' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
 begin {2}

         add_to_virtual_anbar;

        frm_main.l_last_op.Caption:='Œ—Ìœ Ã‰” «“ '+L_foroshande_name.Caption;
        frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' »« ‘„«—Â ›«ò Ê— '+sh_fac);
         //sleep(3000);
         Dmlistha.ADOmohasebe_kharid.SQL.Text:='insert into jens_ select jens,tedad,gheymat,kol,vahed_koli,vahed_jozei,tedad_koli,geymat_koli,tedad_jozi_dar_koli,shahrforoshande,sh_factor,tarikh,code,teded_jozi,geymat_jadid,keraye,barcod,code_sherkati from t_kharid_temp';
         Dmlistha.ADOmohasebe_kharid.ExecSQL;
        ///////////////////////////////////////////////



          DataM_final.ADOQ_t_sh_facrorhaye_kharid.SQL.Text:='insert into t_sh_facrorhaye_kharid values('+
          sh_fac+','+QuotedStr(L_foroshande_name.Caption)+','+QuotedStr(tarikh)+
          ','+DataModule1.ADOQuery3code.AsString+','+QuotedStr(frm_main.LMDClock1.Digital.Caption)+')' ;
          DataM_final.ADOQ_t_sh_facrorhaye_kharid.ExecSQL;

          naghd_t_naghd_kharid;
          sabt_bedeh_talab;
          sabt_bedeh_kharidar;

          DataModule1.ADOQ_sh_factor_kharid.SQL.Text:='update T_shomare_factor_kharid set shomare=shomare+1  where shahrforoshande='+QuotedStr(L_foroshande_name.Caption);
          DataModule1.ADOQ_sh_factor_kharid.ExecSQL;
          frm_entekhab_check.clear;

          hazf_hame_check;
          clear1;
          frm_pish_kharid.delete_hame_ajnas('ok');
          frm_pish_kharid.geymat_kol;
          L_bedehkae.Caption:='0';
          L_bestankar.Caption:='0';
          E_sh_darj_factor.Text:='';
          frmaddanbar.ShowModal;
 end{2}
    else
     begin{3}
        MessageBox(Handle,'À»  Œ—Ìœ «Ã‰«” «‰Ã«„ ‰‘œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
        clear1;
     end;{3}


end{5}
else
  begin{6}
    st:=pchar(' ‘Œ’ »« „‘Œ’«   <<  '+L_foroshande_name.Caption+' >> ÊÃÊœ ‰œ«—œ');
    MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end;{6}
end;

function Tfrmjens_kharid.check_sh_fac:boolean;
begin
  check_sh_fac:=true;;
  DataM_final.ADOQ_t_sh_facrorhaye_kharid.SQL.Text:='select * from t_sh_facrorhaye_kharid where shomare='+
  E_sh_darj_factor.Text+' and shahrforoshande='+QuotedStr(L_foroshande_name.Caption);
  DataM_final.ADOQ_t_sh_facrorhaye_kharid.open;
  if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount>0 then
   begin
     check_sh_fac:=false;
     MessageBox(Handle,'‘„«—Â ›«ò Ê— Ê«—œ ‘œÂ ›«ò Ê— ›—Ê‘‰œÂ °  ﬁ»·¬ Ê«—œ ‘œÂ «” .','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
   end;
end;
////////////////////////////////////////////////
procedure Tfrmjens_kharid.typ_darj_sh_factor;
begin
  if RadioGroup2.ItemIndex=0 then
  begin
    L_sh_darj_factor.Visible:=true;
    E_sh_darj_factor.Visible:=true;
  end
  else
  begin
    L_sh_darj_factor.Visible:=false;
    E_sh_darj_factor.Visible:=false;
  end;
end;
procedure Tfrmjens_kharid.show_temp1;
begin
   DataM_final.ADOQuery_pish_kharid.SQL.Text:='select * from t_kharid_temp order by id';
   DataM_final.ADOQuery_pish_kharid.Open;
end;



procedure Tfrmjens_kharid.sabt_bedeh_kharidar;
begin
    DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh+'+
    L_bedehkae.Caption+',talab=+'+L_bestankar.Caption+' where shahrforoshande='+QuotedStr(L_foroshande_name.Caption);
    DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
end;

procedure Tfrmjens_kharid.sabt_bedeh_talab;
var tarikh,sh_factor:string;
    bede,talab:real;
begin
  tarikh:=frmjens_kharid.MaskEditsal.Text+'/'+frmjens_kharid.MaskEditmah.Text+'/'+frmjens_kharid.MaskEditrooz.Text;

   if frmjens_kharid.RadioGroup2.ItemIndex=1 then
   begin
    DataModule1.ADOQ_sh_factor_kharid.SQL.Text:='select * from T_shomare_factor_kharid where shahrforoshande='+QuotedStr(L_foroshande_name.Caption);
    DataModule1.ADOQ_sh_factor_kharid.Open;
    sh_factor:=DataModule1.ADOQ_sh_factor_kharidshomare.AsString;
   end
   else
    sh_factor:=frmjens_kharid.E_sh_darj_factor.Text;

  DataModule1.ADObedehi.SQL.Text:='insert into t_bedehi(bedeh,talab,sh_khaid,code,tarikh)values('+
  L_bedehkae.Caption+','+
  L_bestankar.Caption+','+
  sh_factor+','+
  DataModule1.ADOQuery3code.AsString+','+QuotedStr(tarikh)+')';

  DataModule1.ADObedehi.ExecSQL;
   //sleep(2000);
end;

procedure Tfrmjens_kharid.naghd_t_naghd_kharid;
var tarikh,sh_factor:string;
begin
      tarikh:=frmjens_kharid.MaskEditsal.Text+'/'+frmjens_kharid.MaskEditmah.Text+'/'+frmjens_kharid.MaskEditrooz.Text;


   if frmjens_kharid.RadioGroup2.ItemIndex=1 then
   begin
    DataModule1.ADOQ_sh_factor_kharid.SQL.Text:='select * from T_shomare_factor_kharid where shahrforoshande='+QuotedStr(L_foroshande_name.Caption);
    DataModule1.ADOQ_sh_factor_kharid.Open;
    sh_factor:=DataModule1.ADOQ_sh_factor_kharidshomare.AsString;
   end
   else
    sh_factor:=frmjens_kharid.E_sh_darj_factor.Text;

  if Edit4.Text='' then
    Edit4.Text:='0';


  DataM_final.ADOQ_t_pardakht_nagd_kharid.SQL.Text:='insert into t_pardakht_nagd_kharid(code,shomare_factor,nagd,tarikh)'+
  ' values('+DataModule1.ADOQuery3code.AsString+','+sh_factor+','+
  Edit4.Text+','+QuotedStr(tarikh)+
  ')';
  DataM_final.ADOQ_t_pardakht_nagd_kharid.ExecSQL;
end;

procedure Tfrmjens_kharid.temp_check_to_check;
var sh_fac:string;
begin
   if RadioGroup2.ItemIndex=1 then
   begin
    DataModule1.ADOQ_sh_factor_kharid.SQL.Text:='select * from T_shomare_factor_kharid where shahrforoshande='+QuotedStr(L_foroshande_name.Caption);
    DataModule1.ADOQ_sh_factor_kharid.Open;
    sh_fac:=DataModule1.ADOQ_sh_factor_kharidshomare.AsString;
   end
   else
    sh_fac:=E_sh_darj_factor.Text;

    DataM_final.ADOQ_T_temp_pardakht_check_kharid.SQL.Text:='update T_temp_pardakht_check_kharid set shomare_factor='+
    sh_fac+' ,code='+DataModule1.ADOQuery3code.AsString;

    DataM_final.ADOQ_T_temp_pardakht_check_kharid.ExecSQL;

  DataM_final.ADOQ_T_pardakht_check_kharid.SQL.Text:='insert into T_pardakht_check_kharid select '+
    'code,shomare_factor,mablagh_check,sh_check,sh_hesab,tarikh,shahrforoshande,tarikh_kharid'+
  ' from T_temp_pardakht_check_kharid';
  DataM_final.ADOQ_T_pardakht_check_kharid.ExecSQL;

  hazf_hame_check;
end;
procedure Tfrmjens_kharid.hazf_hame_check;
begin
    DataM_final.ADOQ_t_Temp_pardakht_check_kharid.SQL.Text:='delete from t_Temp_pardakht_check_kharid';
    DataM_final.ADOQ_t_Temp_pardakht_check_kharid.ExecSQL;
end;

procedure Tfrmjens_kharid.hazf_check;
begin
  if DBText1.Caption='' then
     MessageBox(Handle,'çòÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ .','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT )

  else
  begin
    DataM_final.ADOQ_t_Temp_pardakht_check_kharid.Delete;
    if frmjens_kharid.Lkolgeymat.Caption='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' then
    begin
      frmjens_kharid.hazf_hame_check;
      frmjens_kharid.Edit4.Text:='';
      frm_entekhab_check.show_temp_check_kharid;
      frmjens_kharid.L_bestankar.Caption:='0';
      frmjens_kharid.L_bedehkae.Caption:='0';
    end
    else
    begin
      frm_entekhab_check.jame_temp_check_kharid;
      frm_entekhab_check.bede_talab_temp_check_kharid;
    end;
  end;
end;
function Tfrmjens_kharid.check:boolean;
var mojodi,nagd:real;
begin

 if trim(Edit4.Text)='' then
  nagd:=0
 else
  nagd:=StrToFloat(Edit4.Text);
  
if   E_sh_darj_factor.Text='' then
  E_sh_darj_factor.Text:='0';
  check:=true;
  if ((RadioGroup2.ItemIndex=0) and (E_sh_darj_factor.Text='0'))or(Lkolgeymat.Caption='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ') or(L_foroshande_name.Caption='') or(trim(MaskEditrooz.Text)='') then
   begin
     check:=false;
     MessageBox(Handle,'„Ê«—œ ” «—Â œ«— »«Ìœ Ê«—œ ‘Ê‰œ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
     Exit;
   end;
   if (DBLookupComboBox3.Text='') then
   begin
     check:=false;
     MessageBox(Handle,'’‰œÊﬁ »—«Ì Œ—ÊÃ „»·€ ‰ﬁœ —« «‰ Œ«» ‰„«ÌÌœ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
     Exit;
   end
   else
   begin
    mojodi:=Frm_gozaresh_az_sandog.mojodi_kol(DBLookupComboBox3.Text);
    if mojodi<nagd then
    begin
     check:=false;
     MessageBox(Handle,pchar('„»·€ ‰ﬁœ Ê«—œ ‘œÂ «“ „ÊÃÊœÌ ›⁄·Ì ’‰œÊﬁ «‰ Œ«»Ì << '+FloatToStr(mojodi)+' >> »Ì‘ — „Ì »«‘œ'),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
     Exit;
    end;
   end;
end;
procedure Tfrmjens_kharid.add_to_virtual_anbar;
var   cala,g_kharid,g_forosh,molahezat,
      g_kharid_koli,g_forosh_koli,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_da_koli,barcod,shakhs_sherkat,code_sherkati:string;
      i,j,tedad:integer;
begin
  show_temp1;
 shakhs_sherkat:=L_foroshande_name.Caption;  
 DataM_final.ADOQuery_pish_kharid.First;

   while not(DataM_final.ADOQuery_pish_kharid.Eof) do
   begin
      tedad:=DataM_final.ADOQuery_pish_kharidtedad.AsInteger;
      cala:=DataM_final.ADOQuery_pish_kharidjens.AsString;
      g_kharid:=DataM_final.ADOQuery_pish_kharidgheymat.AsString;
      g_forosh:=DataM_final.ADOQuery_pish_kharidgeymat_jadid.AsString;
      g_kharid_koli:=DataM_final.ADOQuery_pish_kharidgeymat_koli.AsString;
      g_forosh_koli:=g_kharid_koli;
      tedad_koli:=DataM_final.ADOQuery_pish_kharidtedad_koli.AsString;
      tedad_jozi_da_koli:=DataM_final.ADOQuery_pish_kharidtedad_jozi_dar_koli.AsString;
      vahed_koli:=DataM_final.ADOQuery_pish_kharidvahed_koli.AsString;
      vahed_jozei:=DataM_final.ADOQuery_pish_kharidvahed_jozei.AsString;
      barcod:=DataM_final.ADOQuery_pish_kharidbarcod.AsString;
      code_sherkati:=DataM_final.ADOQuery_pish_kharidcode_sherkati.AsString;
      molahezat:='Ã‰” œ— «‰»«— „Ã«“Ì ﬁ—«— œ«—œ';


     Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='insert into T_anbar_majazi(tarikh,sh_factor,tedad_koli,vahed_koli,geymat_koli,tedad_jozi_da_koli,vahed_jozi,geymat_forosh_koli'+
     ',calaname,tedadanbar,anbarname,geymatkharid,geymatforosh,molahezatforosh,barcod,shakhs_sherkat,code_sherkati)' +

     'values('+QuotedStr(DataM_final.ADOQuery_pish_kharidtarikh.AsString)+','+DataM_final.ADOQuery_pish_kharidsh_factor.AsString+','+
     QuotedStr(tedad_koli)+','+QuotedStr(vahed_koli)+','+QuotedStr(g_kharid_koli)+','+QuotedStr(tedad_jozi_da_koli)+','+QuotedStr(vahed_jozei)+','+QuotedStr(g_forosh_koli)+
     ','+QuotedStr(cala)+','+IntToStr(tedad)+','+QuotedStr('«‰»«— „Ã«“Ì')+
     ','+QuotedStr(g_kharid)+','+QuotedStr(g_forosh)+','+QuotedStr(molahezat)+','+QuotedStr(barcod)+','+QuotedStr(shakhs_sherkat)+','+QuotedStr(code_sherkati)+')';
     Dmlistha.ADOQuery_anbar_majazi.ExecSQL;
     DataM_final.ADOQuery_pish_kharid.Next;
  end;
end;

 {************************************************************************************8}

{******************************************************************************8}



procedure Tfrmjens_kharid.updatebedehi;
var
  bedehi,geymatkol:real;
begin
  if Trim(Edit4.Text)='' then
    Edit4.Text:='0';
  if Trim(Edit5.Text)='' then
    Edit5.Text:='0';
  geymatkol:=StrToFloat(trim(Lkolgeymat.Caption));
  bedehi:=geymatkol-(StrToFloat(trim(Edit4.Text))+ StrToFloat(trim(Edit5.Text)));

  DataModule1.ADObedehi.SQL.Text:='update t_bedehi set kol=kol+'+FloatToStr(bedehi)+
  ' where shahrforoshande='+QuotedStr(L_foroshande_name.Caption);
  DataModule1.ADObedehi.ExecSQL;
end;

/////////////////////


//////////////////
procedure Tfrmjens_kharid.clear1;
begin
    Edit4.Text:='';
    Edit5.Text:='';
    RadioGroup1.ItemIndex:=0;
    Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ';
    L_foroshande_name.Caption:='';
end;

procedure Tfrmjens_kharid.Button4Click(Sender: TObject);
begin

end;
/////////////

procedure Tfrmjens_kharid.suiForm1Click(Sender: TObject);
begin
 clear1;
end;

procedure Tfrmjens_kharid.FormActivate(Sender: TObject);
begin
suiButton4.Enabled :=false;
MaskEditrooz.Enabled :=false;
MaskEditmah.Enabled :=false;
MaskEditsal.Enabled :=false;
MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];

end;



procedure Tfrmjens_kharid.suiButton4Click(Sender: TObject);
begin

_Taghvim.ShowModal;
if _taghvim._str_date<>'' then
begin
  MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
  MaskEditMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
  MaskEditRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
end;


end;



procedure Tfrmjens_kharid.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#8]) then
   key:=#0;
end;







procedure Tfrmjens_kharid.suiButton8Click(Sender: TObject);
begin
  close;
end;




procedure Tfrmjens_kharid.RadioGroup1Click(Sender: TObject);
begin
    if RadioGroup1.ItemIndex =0  then
    begin
      suiButton4.Enabled :=false;
      MaskEditrooz.Enabled :=false;
      MaskEditmah.Enabled :=false;
      MaskEditsal.Enabled :=false;
      MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
      MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
      MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
    end
  else
    begin
      suiButton4.Enabled :=true;
      MaskEditrooz.Enabled :=true;
      MaskEditmah.Enabled :=true;
      MaskEditsal.Enabled :=true;
      suiButton4.Click;
    end;
end;

procedure Tfrmjens_kharid.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrmjens_kharid.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrmjens_kharid.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrmjens_kharid.FormShow(Sender: TObject);
begin
    DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name where sandog<>'+
    QuotedStr('»—œ«‘  „ ›—ﬁÂ')+' order by sandog';
    DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;

   clear1;
   Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ';
   hazf_hame_check;
   frm_entekhab_check.show_temp_check_kharid;
   L_bedehkae.Caption:='0';
   L_bestankar.Caption:='0';
   RadioGroup2.ItemIndex:=0;
   typ_darj_sh_factor;

   frm_entekhab_check.bede_talab_temp_check_kharid;
end;


procedure Tfrmjens_kharid.suiButton_Click(Sender: TObject);
var st:pchar;
begin
if Frm_shakhs_jadid.check_exsist_shakhs(L_foroshande_name.Caption) then
begin
     frm_pish_kharid.Label_shahr.Caption:=L_foroshande_name.Caption;
       if Lkolgeymat.Caption<>'«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' then
         begin
           if MessageBox(Handle,'·Ì”  «Ã‰«” «‰ Œ«» ‘œÂ «‰œ° „Ì ŒÊ«ÂÌœ Ã‰” œÌê—Ì »Â ¬‰Â« «÷«›Â ò‰Ìœø. ',' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
             begin
               frm_pish_kharid.ShowModal;
             end;
         end
       else
          frm_pish_kharid.ShowModal;
end
    else
     begin
      st:=pchar('›—Ê‘‰œÂ «‰ Œ«» ‰‘œÂ «” ');

      MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
     end;

end;

procedure Tfrmjens_kharid.bClick(Sender: TObject);
begin
    frm_entekhab_check.l_type.Caption:='kharid';
    frm_entekhab_check.ShowModal;
end;

procedure Tfrmjens_kharid.Edit4Exit(Sender: TObject);
begin
  if Lkolgeymat.Caption='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' then
  begin
    frmjens_kharid.hazf_hame_check;
    frmjens_kharid.Edit4.Text:='';
    frm_entekhab_check.show_temp_check_kharid;
    frmjens_kharid.L_bestankar.Caption:='0';
    frmjens_kharid.L_bedehkae.Caption:='0';
  end
  else
    frm_entekhab_check.bede_talab_temp_check_kharid;
end;



procedure Tfrmjens_kharid.E_sh_darj_factorKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrmjens_kharid.RadioGroup2Click(Sender: TObject);
begin
  typ_darj_sh_factor;
end;

procedure Tfrmjens_kharid.Edit4Change(Sender: TObject);
begin
  if Lkolgeymat.Caption='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' then
  begin
    frmjens_kharid.hazf_hame_check;
    frmjens_kharid.Edit4.Text:='';
    frm_entekhab_check.show_temp_check_kharid;
    frmjens_kharid.L_bestankar.Caption:='0';
    frmjens_kharid.L_bedehkae.Caption:='0';
  end
  else
    frm_entekhab_check.bede_talab_temp_check_kharid;
end;

procedure Tfrmjens_kharid.suiButton6Click(Sender: TObject);
var
    st:pchar;
begin
if check then
begin
if Frm_shakhs_jadid.check_exsist_shakhs(L_foroshande_name.Caption) then
  begin{5}
    if check then
       begin {1}
        if (check_sh_fac) then
          begin{4}

            st:=pchar('Œ—Ìœ Ã‰” «“  << '+L_foroshande_name.Caption+' >> —«  «ÌÌœ „Ì‰„«ÌÌœø');
            if  MessageBox(Handle,st,' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
            begin
              if not equal then
              begin
                if MessageBox(Handle,'„»·€ Å—œ«Œ Ì »Â ’Ê—  ‰ﬁœ Ê çò «“ ﬁÌ„  ò· Œ—Ìœ »Ì‘ — „Ì»«‘œ ° „»«·€ —«  «ÌÌœ „Ìò‰Ìœ ø',' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
                  execute_kharid_store_procedure;
              end
              else
                execute_kharid_store_procedure;
            end
            else
          end;{4}
       end{1}
  end{5};
end;
end;



procedure Tfrmjens_kharid.suiButton5Click(Sender: TObject);
begin
  clear1;
  Close;
end;

procedure Tfrmjens_kharid.suiButton2Click(Sender: TObject);
begin
 frm_entekhab_foroshande.ShowModal;
end;

procedure Tfrmjens_kharid.MaskEditroozChange(Sender: TObject);
begin
  tarikh:=MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text;
  
  DataM_final.ADOQuery_pish_kharid3.SQL.Text:='update t_kharid_temp set tarikh='+QuotedStr(tarikh);
  DataM_final.ADOQuery_pish_kharid3.ExecSQL;

  DataM_final.ADOQ_T_temp_pardakht_check_kharid.SQL.Text:='update T_temp_pardakht_check_kharid set tarikh_kharid='+QuotedStr(tarikh);
  DataM_final.ADOQ_T_temp_pardakht_check_kharid.ExecSQL;  


end;

procedure Tfrmjens_kharid.E_sh_darj_factorExit(Sender: TObject);
begin
if (RadioGroup2.ItemIndex=0)and((E_sh_darj_factor.Text='')or(E_sh_darj_factor.Text='0')) then
begin

end
else
 begin
  DataM_final.ADOQuery_pish_kharid3.SQL.Text:='update t_kharid_temp set sh_factor='+
  E_sh_darj_factor.Text;
  DataM_final.ADOQuery_pish_kharid3.ExecSQL;
 end;
end;

procedure Tfrmjens_kharid.suiButton6Enter(Sender: TObject);
begin
if (RadioGroup2.ItemIndex=0)and((E_sh_darj_factor.Text='')or(E_sh_darj_factor.Text='0')) then
begin
  E_sh_darj_factor.SetFocus;
  MessageBox(Handle,'‘„«—Â ›«ò Ê— —ÊÌ ›«ò Ê— Œ—Ìœ —« Ê«—œ ‰„«ÌÌœ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
end;
end;

procedure Tfrmjens_kharid.suiButton1Click(Sender: TObject);
begin
  if DBText1.Caption='' then
     MessageBox(Handle,'çòÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ .','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT )
  else
  hazf_check;
end;

procedure Tfrmjens_kharid.suiButton3Click(Sender: TObject);
begin
  frm_tozihat.l_type_tozih.Caption:='no edit';
  frm_tozihat.l_type_factor.Caption:='kharid';
  frm_tozihat.ShowModal;
end;

end.

