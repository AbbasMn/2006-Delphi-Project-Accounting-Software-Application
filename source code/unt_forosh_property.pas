unit unt_forosh_property;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, DBCtrls, SUIPageControl, SUITabControl,
  ExtCtrls, SUIForm, DB, SUIDlg, ADODB, Mask, SUIImagePanel, SUIGroupBox,
  Grids, DBGrids, SUIDBCtrls;

type
  Tfrm_forosh_property = class(TForm)
    DataSource3: TDataSource;
    DataSource2: TDataSource;
    GroupBox2: TGroupBox;
    suiButton4: TsuiButton;
    MaskEditforooz: TMaskEdit;
    MaskEditfomah: TMaskEdit;
    MaskEditfosal: TMaskEdit;
    RadioGroup1: TRadioGroup;
    GroupBox4: TGroupBox;
    Label10: TLabel;
    Label_taeed_forosh: TLabel;
    Label1: TLabel;
    Edit4: TEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    DBText1: TDBText;
    suiDBGrid2: TsuiDBGrid;
    b: TsuiButton;
    Edit5: TEdit;
    suiButton12323: TsuiButton;
    Label2: TLabel;
    Lkolgeymat: TLabel;
    suiButton6: TsuiButton;
    suiButton5222: TsuiButton;
    L_bestankar: TLabel;
    L_bedehkae: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    suiButton2: TsuiButton;
    suiButton5: TsuiButton;
    L_kharidar_name: TLabel;
    suiButton1: TsuiButton;
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton5222Click(Sender: TObject);
    procedure clear2;
    procedure insert_forosh;
    function updatetedadjensforoshi:boolean;
    procedure updatetedadjensforoshi_ghabl_az_taeed;
    procedure updatetedadjensforoshi_bad_az_enseraf;
    function check_:boolean;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    function equal:boolean;
    procedure daryaftha_va_pishforosh;
    procedure complete_pish_forosh;
    procedure go;
    procedure temp_to_main_forosh;
    procedure suiButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure insert_nagd_to_sandog;
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure show_factor(x:integer);
    procedure show_jame_factor(x:integer);
    procedure bClick(Sender: TObject);
    procedure suiButton12323Click(Sender: TObject);
    procedure hazf_check;
    procedure hazf_hame_check;
    procedure update_temp_check;
    procedure naghd_t_naghd_forosh;
    procedure temp_check_to_check;
    procedure Edit4Exit(Sender: TObject);
    procedure sabt_bedeh_talab;
    procedure sabt_bedeh_kharidar;
    procedure takhfife_forosh;
    procedure show_facrore_forosh;
    procedure suiButton5Click(Sender: TObject);
    procedure MaskEditforoozChange(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure execute_forosh_stored_procedure;

    function insert_gozaresh_anbar:boolean;
    procedure suiButton1Click(Sender: TObject);
     private
    { Private declarations }
  public
    { Public declarations }
    styear:String;
    stmonth:string;
    stdate:string;

    shahrforoshande,code:string;

    tarikh,sh_fctor,bedehi_az_gabl,time_:string;
 
  end;

var
  frm_forosh_property: Tfrm_forosh_property;

implementation



uses unt_datamodule1, Taghvim, unt_datamodule2, Math, Untviewanbar,
  Unt_dmanbar, Untdmanbarexit, unt_main, unt_login,
  Unt_mmoshakhasat_shakhs, Unt_shakhs_jadid, unt_pish_forosh,
  Unt_DataModule_gozaresh_tarkibi, unt_factor_roz, unt_pint_factor_roz,
  unt_sandog_jadid, Untdmlistha, unt_entekhab_check_baraye_forosh,
  unt_DataM_final, untjens_kharid, unt_entekhab_check, unt_pish_kharid,
  LMDClock, unt_print_temp_factore_forosh, unt_entekhabe_kharidar,
  unt_DataM_sp, unt_Dm_sp_backup, unt_tozihat;

{$R *.dfm}
procedure Tfrm_forosh_property.execute_forosh_stored_procedure;
var nagd:string;
    st:pchar;
begin

  if Edit4.Text='' then
    Edit4.Text:='0';

  if StrToFloat(Edit4.Text)=0 then
    nagd:='0'
  else
   nagd:=Edit4.Text;

   st:=pchar('›—Ê‘ Ã‰” »Â  << '+L_kharidar_name.Caption+' >> —«  «ÌÌœ „Ì‰„«ÌÌœ ø');
  if   MessageBox(Handle,st,' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
  begin{1}

  Dm_sp_backup.ADOStoredProc_from_gozaresh_vorod_va_khoroje_anbar_to_gozaresh_.ExecProc;
  Dm_sp_backup.ADOStoredProc_from_Tanbar_jens_kolli_to_temp_Tanbar_jens_kolli.ExecProc;


  if insert_gozaresh_anbar and updatetedadjensforoshi then

  begin{2}

    frm_main.l_last_op.Caption:=' ›—Ê‘ Ã‰” »Â '+shahrforoshande;

  DataM_sp.ADOStoredProc_forosh.Parameters[0].Value:=shahrforoshande;//@shahrforoshande nvarchar(50),
  DataM_sp.ADOStoredProc_forosh.Parameters[1].Value:=time_;//@time nvarchar(10),
  DataM_sp.ADOStoredProc_forosh.Parameters[2].Value:=frm_forosh_property.tarikh;//@tarikh nvarchar(12),

  DataM_sp.ADOStoredProc_forosh.Parameters[3].Value:=sh_fctor;//@sh_factor float,
  DataM_sp.ADOStoredProc_forosh.Parameters[4].Value:=code;//@code float,
  DataM_sp.ADOStoredProc_forosh.Parameters[5].Value:=L_bestankar.caption;//@talab float,
  DataM_sp.ADOStoredProc_forosh.Parameters[6].Value:=L_bedehkae.Caption;//@bedeh float,
  DataM_sp.ADOStoredProc_forosh.Parameters[7].Value:=nagd;//@nagd float,

  DataM_sp.ADOStoredProc_forosh.Parameters[8].Value:=Frm_pish_forosh.l_darsad_takhfif.Caption;//@darsade_takhfif float,
  DataM_sp.ADOStoredProc_forosh.Parameters[9].Value:=Frm_pish_forosh.l_mablagh_takhfif.Caption;//@mablagh_takhfif float,
  DataM_sp.ADOStoredProc_forosh.Parameters[10].Value:=bedehi_az_gabl;//@bedehi_az_gabl float,

  DataM_sp.ADOStoredProc_forosh.Parameters[11].Value:='œ—Ì«›  ‰ﬁœÌ Â‰ê«„ ›—Ê‘ Ã‰” »Â '+L_kharidar_name.Caption+' ‘„«—Â ›«ò Ê— '+sh_fctor;//@tozih nvarchar(150),
  DataM_sp.ADOStoredProc_forosh.Parameters[12].Value:='Ê—ÊœÌ';//@type_sandog nvarchar(6),
  DataM_sp.ADOStoredProc_forosh.Parameters[13].Value:=nagd;//@mablag float,
  DataM_sp.ADOStoredProc_forosh.Parameters[14].Value:=DBLookupComboBox3.Text;//@sandog nvarchar(30)
  DataM_sp.ADOStoredProc_forosh.Parameters[15].Value:=frm_main.l_last_op.Caption+' »« ‘„«—Â ›«ò Ê— '+sh_fctor;//@amaliat nvarchar(1000)
  DataM_sp.ADOStoredProc_forosh.Parameters[16].Value:=trim(frm_tozihat.Memo1.Text);//@tozihat_forosh  nvarchar(1000) 
  DataM_sp.ADOStoredProc_forosh.ExecProc;

  //frm_main.backup;  

 { Dm_sp_backup.ADOStoredProc_delete_from_Tanbar_jens_kolli_temp.ExecProc;
  Dm_sp_backup.ADOStoredProc_delete_from_gozaresh_vorod_va_khoroje_anbar_backu.ExecProc; }

       MessageBox(Handle,'⁄„·Ì«  ›—Ê‘ «Ã‰«” À»  ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
       show_facrore_forosh;

       DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.SQL.Text:='delete from T_temp_forosh_factor';
       DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.ExecSQL;

       Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;

       clear2;
       L_bedehkae.Caption:='0';
       L_bestankar.Caption:='0';
  end;{2}
  end{1}
  else
    begin{1}
        Label_taeed_forosh.Caption:='a';
        Frm_entekhab_check_baraye_forosh.clear;
        hazf_hame_check;
        L_bedehkae.Caption:=Lkolgeymat.Caption;
        L_bestankar.Caption:='0';
        Edit4.Text:='';
        Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
    end;{1}



end;

/////////////////////
function Tfrm_forosh_property.insert_gozaresh_anbar:boolean;
begin
  insert_gozaresh_anbar:=false;

  Frm_pish_forosh.show_pish_forosh;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.First;
  while not DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Eof do
  begin
    Dmanbar.ADOQ_gozaresh_anbar_temp.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar_temp'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshjens.AsString)+','+
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad.AsString+','+
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshcalacod.AsString+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshvahed_koli.AsString)+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshvahed_jozei.AsString)+','+

    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_koli.AsString+','+
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_jozi_dar_koli.AsString+','+
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshsh_factor.AsString+','+

    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_kol.AsString+','+
    QuotedStr(' Œ—ÊÃ «“ «‰»«— Ê ›—Ê‘ »Â '+L_kharidar_name.Caption+' »« ‘„«—Â ›«ò Ê— '+DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshsh_factor.AsString)+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtarikh.AsString)+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshbarcod.AsString)+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshcode_sherkati.AsString)+','+

    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshanbarname.AsString)+','+
    QuotedStr(time_)+','+
    QuotedStr('Œ—ÊÃÌ - ›—Ê‘')+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar_temp.ExecSQL;
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Next;
  end;
  insert_gozaresh_anbar:=true;
end;
////////////////////////
procedure Tfrm_forosh_property.show_facrore_forosh;
var po:string;
    zzz:real;
begin
      po:='select * from bedeh_bestan where code='+code+
      ' and sh_khaid='+sh_fctor;

      DataM_final.ADOQ_bedeh_talabe_factor_forosh.SQL.Text:=po;
      DataM_final.ADOQ_bedeh_talabe_factor_forosh.Open;

      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='select code_shakhs,shahrforoshande,'+
      'sum(bedehkar) as bedeh,sum(bestankar) as talab from '+
      ' T_bestankar_bedehkar_kharidar where shahrforoshande='+QuotedStr(shahrforoshande)+
      ' and code_shakhs='+code+
      '  group by code_shakhs,shahrforoshande ';
      DataM_final.ADOQ_bedeh_be_kharidar.Open;


        DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd) as nagd_kol from t_pardakht_nagd_forosh '+
        ' where code='+code+' and shomare_factor='+sh_fctor;
        DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

        DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol  from T_pardakht_check_forosh '+
        ' where code='+code+' and shomare_factor='+sh_fctor;
        DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

        DataM_final.ADOQ_g_kol_temp_foroshha.SQL.Text:='select sum(geymat_jens) as g_kol_foroshha from T_temp_forosh_factor '+
        ' where shahrforoshande='+QuotedStr(shahrforoshande)+' and sh_factor='+sh_fctor;
        DataM_final.ADOQ_g_kol_temp_foroshha.Open;


        DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
        ' where cod_kharidar='+code+' and sh_factor='+sh_fctor;
        DataM_final.ADOQ_takhfife_forosh.Open;

        DataM_final.ADOQ_tozihate_forosh.SQL.Text:='select * from T_tozihe_forosh where code='+code+
        ' and shomare_factor='+sh_fctor;
        DataM_final.ADOQ_tozihate_forosh.open;

        DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.SQL.Text:='select * from T_temp_forosh_factor ';
        DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.Open;

        frm_print_temp_factore_forosh.QRL_kol_bad_az_takhfif.Caption:=FloatToStr(DataM_final.ADOQ_g_kol_temp_foroshhag_kol_foroshha.AsFloat-DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat);

       frm_print_temp_factore_forosh.QRLabel_tedad.Caption:=IntToStr(DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.RecordCount);



      frm_print_temp_factore_forosh.QRL_sh_factor.Caption:=sh_fctor;

      frm_print_temp_factore_forosh.QRL_tarikhe_forosh.Caption:=Frm_login.Egettarikh.Text;
      frm_print_temp_factore_forosh.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;

      {zzz:=DataM_final.ADOQ_g_kol_temp_foroshhag_kol_foroshha.AsFloat-DataM_final.ADOQ_jame_t_pardakht_nagd_foroshnagd_kol.AsFloat-DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat;

      if (DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsFloat-zzz) >0 then
        frm_print_temp_factore_forosh.QRLabel_bedehi_az_gabl.Caption:=FloatToStr(DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsFloat+DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat+DataM_final.ADOQ_jame_t_pardakht_nagd_foroshnagd_kol.AsFloat-DataM_final.ADOQ_g_kol_temp_foroshhag_kol_foroshha.AsFloat)
      else
        frm_print_temp_factore_forosh.QRLabel_bedehi_az_gabl.Caption:='0';}

      frm_print_temp_factore_forosh.QuickRep1.Preview;
end;

procedure Tfrm_forosh_property.takhfife_forosh;
begin
  {  DataModule1.ADOQ_sh_factor.SQL.Text:='select * from T_shomare_factor where shahrforoshande='+QuotedStr(L_kharidar_name.Caption);
    DataModule1.ADOQ_sh_factor.Open;}

  DataM_final.ADOQ_takhfife_forosh.SQL.Text:='insert into T_takhfife_forosh(time_,tarikh,cod_kharidar,sh_factor,darsade_takhfif,mablagh_takhfif,bedehi_az_gabl)'+
  ' values('+QuotedStr(time_)+','+
  QuotedStr(tarikh)+','+
  DataModule1.ADOQuery3code.AsString+','+sh_fctor+','+
  Frm_pish_forosh.l_darsad_takhfif.Caption+','+Frm_pish_forosh.l_mablagh_takhfif.Caption+
  ','+bedehi_az_gabl+')';
  DataM_final.ADOQ_takhfife_forosh.ExecSQL;
end;

///////////////////////////////////////////////////////
procedure Tfrm_forosh_property.sabt_bedeh_kharidar;
begin
  DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+
  L_bedehkae.Caption+',talab=talab+'+L_bestankar.Caption+' where shahrforoshande='+QuotedStr(L_kharidar_name.Caption);
  DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
end;


procedure Tfrm_forosh_property.sabt_bedeh_talab;
var tarikh:string;
    bede,talab:real;
begin
  tarikh:=MaskEditfosal.Text+'/'+MaskEditfomah.Text+'/'+MaskEditforooz.Text;
  DataModule1.ADOQ_sh_factor.SQL.Text:='select * from T_shomare_factor where shahrforoshande='+QuotedStr(L_kharidar_name.Caption);
  DataModule1.ADOQ_sh_factor.Open;

  DataModule2.adotasfie.SQL.Text:='insert into bedeh_bestan(bedeh,talab,sh_khaid,code,tarikh)values('+
  L_bedehkae.Caption+','+
  L_bestankar.Caption+','+
  DataModule1.ADOQ_sh_factorshomare.AsString+','+
  DataModule1.ADOQuery3code.AsString+','+QuotedStr(tarikh)+')';

  DataModule2.adotasfie.ExecSQL;
  //sleep(2000);
end;


procedure Tfrm_forosh_property.temp_check_to_check;
begin
    DataModule1.ADOQ_sh_factor.SQL.Text:='select * from T_shomare_factor where shahrforoshande='+QuotedStr(L_kharidar_name.Caption);
    DataModule1.ADOQ_sh_factor.Open;

    DataM_final.ADOQ_T_temp_pardakht_check_forosh.SQL.Text:='update T_temp_pardakht_check_forosh set shomare_factor='+
    DataModule1.ADOQ_sh_factorshomare.AsString+' ,code='+DataModule1.ADOQuery3code.AsString;

    DataM_final.ADOQ_T_temp_pardakht_check_forosh.ExecSQL;

  DataM_final.ADOQ_T_pardakht_check_forosh2.SQL.Text:='insert into T_pardakht_check_forosh select '+
  ' code,shomare_factor,mablagh_check,sh_check,sh_hesab,tarikh,shahrforoshande,tarikh_kharid,pass'+
  ' from T_temp_pardakht_check_forosh';
  DataM_final.ADOQ_T_pardakht_check_forosh2.ExecSQL;

  hazf_hame_check;
end;
procedure Tfrm_forosh_property.naghd_t_naghd_forosh;
var tarikh:string;
begin
      tarikh:=MaskEditfosal.Text+'/'+MaskEditfomah.Text+'/'+MaskEditforooz.Text;
  if Edit4.Text='' then
    Edit4.Text:='0';

    DataModule1.ADOQ_sh_factor.SQL.Text:='select * from T_shomare_factor where shahrforoshande='+QuotedStr(L_kharidar_name.Caption);
    DataModule1.ADOQ_sh_factor.Open;

  DataM_final.ADOQ_t_pardakht_nagd_forosh.SQL.Text:='insert into t_pardakht_nagd_forosh(code,shomare_factor,nagd,tarikh)'+
  ' values('+DataModule1.ADOQuery3code.AsString+','+DataModule1.ADOQ_sh_factorshomare.AsString+','+
  Edit4.Text+','+QuotedStr(tarikh)+
  ')';
  DataM_final.ADOQ_t_pardakht_nagd_forosh.ExecSQL;
end;



procedure Tfrm_forosh_property.update_temp_check;
var tarikh:string;
begin
  tarikh:=MaskEditfosal.Text+'/'+MaskEditfomah.Text+'/'+MaskEditforooz.Text;
  DataM_final.ADOQ_T_temp_pardakht_check_forosh.SQL.Text:='update T_temp_pardakht_check_forosh set shahrforoshande='+
  QuotedStr(L_kharidar_name.Caption)+',tarikh_kharid='+QuotedStr(tarikh);
  DataM_final.ADOQ_T_temp_pardakht_check_forosh.ExecSQL;
end;
procedure Tfrm_forosh_property.hazf_hame_check;
begin

    DataM_final.ADOQ_t_Temp_pardakht_check_forosh.SQL.Text:='delete from t_Temp_pardakht_check_forosh';
    DataM_final.ADOQ_t_Temp_pardakht_check_forosh.ExecSQL;
end;

procedure Tfrm_forosh_property.hazf_check;
begin
  if DBText1.Caption='' then
     MessageBox(Handle,'çòÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ .','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT )

  else
  begin
    DataM_final.ADOQ_t_Temp_pardakht_check_forosh.Delete;
    if frm_forosh_property.Lkolgeymat.Caption='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' then
    begin
      frm_forosh_property.hazf_hame_check;
     frm_forosh_property.Edit4.Text:='';
      Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
      L_bestankar.Caption:='0';
      L_bedehkae.Caption:='0';
    end
    else
    begin
      Frm_entekhab_check_baraye_forosh.jame_temp_check_forosh;
      Frm_entekhab_check_baraye_forosh.bede_talab_temp_check_forosh;
    end;
  end;
end;


procedure Tfrm_forosh_property.show_factor(x:integer);
var s:string;
begin
      s:=trim(MaskEditfosal.Text)+'/'+trim(MaskEditfomah.Text)+'/'+trim(MaskEditforooz.Text);
      Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens where sh_factor ='+
      IntToStr(x)+ 'and shahrforoshande='+QuotedStr(L_kharidar_name.caption);
      Dmlistha.adolistforosh.Open;
      frm_pint_factor_roz.QRLtarikh.Caption:=frm_login.Egettarikh.Text;
      frm_pint_factor_roz.QRLabel_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.RecordCount);
end;
procedure Tfrm_forosh_property.show_jame_factor(x:integer);
begin
      Dmlistha.ADOQuery_factor_roz.SQL.Text:='select sum(geymat_jens)as kol_,sum(daryaft_nagd)as nagd_'+
      ',sum(daryaft_chek)as check_,sum(bedehi)as bede_ from forosh_jens'+
      ' where sh_factor ='+IntToStr(x)+ 'and shahrforoshande='+QuotedStr(L_kharidar_name.caption);
      Dmlistha.ADOQuery_factor_roz.Open;
end;

procedure Tfrm_forosh_property.insert_nagd_to_sandog;
var x:string;
begin
   x:=MaskEditfosal.Text+'/'+MaskEditfomah.Text+'/'+MaskEditforooz.Text;
   DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='insert into T_vorod_khoroj_sandogha(cod_kharidar,sh_factor,time_,tozih,type,tarikh,mablag,sandog)'+
   'values('+DataModule1.ADOQuery3code.AsString+','+sh_fctor+','+
   QuotedStr(time_)+','+QuotedStr('œ—Ì«›  ‰ﬁœÌ Â‰ê«„ ›—Ê‘ Ã‰” »Â '+L_kharidar_name.Caption+' ‘„«—Â ›«ò Ê— '+sh_fctor)+
   ','+QuotedStr('Ê—ÊœÌ')+','+QuotedStr(x)+
   ','+Edit4.Text+
   ','+QuotedStr(DBLookupComboBox3.Text)+')';
   DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.ExecSQL;
end;

procedure Tfrm_forosh_property.updatetedadjensforoshi_bad_az_enseraf;
var i,j,cod_,tedad_:Integer;
    a:array[1..100] of integer;
begin
  Frm_pish_forosh.show_pish_forosh;
  i:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.First;
  for j:=1 to  i  do
  begin
      a[j]:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[21].Value;
      DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Next;
  end;

    for j:=1 to  i  do
  begin
       DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp where id='+IntToStr(a[j]);
       DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open;

       cod_:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[19].AsInteger;
       tedad_:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[4].AsInteger;

       Dmanbar.ADOinserttoanbar.SQL.Text:='update Tanbar_jens_kolli set tedadanbar=tedadanbar+'+IntToStr(tedad_)+' where calacod='+IntToStr(cod_);
       Dmanbar.ADOinserttoanbar.ExecSQL;
  end;

end;
procedure Tfrm_forosh_property.updatetedadjensforoshi_ghabl_az_taeed;
var i,j,cod_,tedad_:Integer;
    a:array[1..100] of integer;
begin

  Frm_pish_forosh.show_pish_forosh;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.last;
  a[1]:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[21].Value;

       DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp where id='+IntToStr(a[1]);
       DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open;

       cod_:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[19].AsInteger;
       tedad_:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[4].AsInteger;

       Dmanbarexite.ADOanbarcala.SQL.Text:='update Tanbar_jens_kolli set tedadanbar=tedadanbar-'+IntToStr(tedad_)+' where calacod='+IntToStr(cod_);
       Dmanbarexite.ADOanbarcala.ExecSQL;
end;
function Tfrm_forosh_property.updatetedadjensforoshi:boolean;
var temp,tedad_jozi,teddad_jozi_dar_koli,tedad_koli,x,z,y,cod_:real;
    a:array[1..100] of integer;
    frorsh_type,anbar_name:string;
    i,j,p:integer;
begin

  updatetedadjensforoshi:=false;
  Frm_pish_forosh.show_pish_forosh;
  i:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.First;
  for j:=1 to  i  do
  begin
      a[j]:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[5].Value;
      DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Next;
  end;

    for j:=1 to  i  do
  begin
       {DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp where id='+IntToStr(a[j]);
       DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open; }

       DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Locate('id',a[j],[loPartialKey]);

       cod_:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[4].AsInteger;

       anbar_name:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshanbarname.AsString;

       tedad_jozi:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[2].AsFloat;

       tedad_koli:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[8].AsFloat;

       p:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[8].AsInteger;

       teddad_jozi_dar_koli:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[9].AsFloat;


       if (tedad_koli >0) and (tedad_jozi=0)and(teddad_jozi_dar_koli=0)then
          frorsh_type:='koli-bedon-jozei';

       if (tedad_koli >0) and (tedad_jozi=0)and(teddad_jozi_dar_koli>0)then
          frorsh_type:='koli-ba-jozei';

       if (tedad_koli=0) and (tedad_jozi>0)and(teddad_jozi_dar_koli=0)then
          frorsh_type:='jozei-bedon-jozei';

       if (tedad_koli =0) and (tedad_jozi>0)and(teddad_jozi_dar_koli>0)then
          frorsh_type:='jozei-ba-jozei';

       if (tedad_koli >0) and (tedad_jozi>0)then
          frorsh_type:='kolijozei';

      if  frorsh_type='koli-ba-jozei' then
      begin
         Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+floatToStr(cod_)+
         ' and anbarname='+QuotedStr(anbar_name);
          Dmanbarexite.ADOanbarcala.Open;

          temp:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;;
           if (temp-(tedad_koli*teddad_jozi_dar_koli)>=0) then
           begin
             for i:=1 to p do
               tedad_jozi:=tedad_jozi+teddad_jozi_dar_koli;
           end
           else
            begin
             for i:=1 to (p-1) do
               tedad_jozi:=tedad_jozi+teddad_jozi_dar_koli;
            end;
      end;




     if frorsh_type='jozei-ba-jozei'then
     begin
          Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+floatToStr(cod_)+
          ' and anbarname='+QuotedStr(anbar_name);
          Dmanbarexite.ADOanbarcala.Open;
          temp:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;
          if tedad_jozi=teddad_jozi_dar_koli then
            teddad_jozi_dar_koli:=tedad_koli+1;

          if tedad_jozi>teddad_jozi_dar_koli then
          begin
              x:=int(tedad_jozi/teddad_jozi_dar_koli)*teddad_jozi_dar_koli;
              y:=tedad_jozi-x;
              tedad_koli:=tedad_koli+int(tedad_jozi/teddad_jozi_dar_koli);
              z:=(int(temp/teddad_jozi_dar_koli)-int((temp-y)/teddad_jozi_dar_koli));
              if z>0 then
                tedad_koli:=tedad_koli+z;
          end;

          if tedad_jozi<teddad_jozi_dar_koli then
          begin
             if int((temp-tedad_jozi)/teddad_jozi_dar_koli) < int(temp/teddad_jozi_dar_koli)then
                tedad_koli:=tedad_koli+1;
          end;


    end;

     if frorsh_type='kolijozei'then
     begin
          Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+floatToStr(cod_)+
          ' and anbarname='+QuotedStr(anbar_name);
          Dmanbarexite.ADOanbarcala.Open;


          temp:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;

          if tedad_jozi>teddad_jozi_dar_koli then
          begin
              x:=int(tedad_jozi/teddad_jozi_dar_koli)*teddad_jozi_dar_koli;
              y:=tedad_jozi-x;
              tedad_koli:=tedad_koli+int(tedad_jozi/teddad_jozi_dar_koli);
              z:=(int(temp/teddad_jozi_dar_koli)-int((temp-y)/teddad_jozi_dar_koli));
              if z>0 then
                tedad_koli:=tedad_koli+z;
          end;

          if tedad_jozi<teddad_jozi_dar_koli then
          begin
             if int((temp-tedad_jozi)/teddad_jozi_dar_koli) < int(temp/teddad_jozi_dar_koli)then
                tedad_koli:=tedad_koli+1;
          end;

         for i:=1 to p do

               tedad_jozi:=tedad_jozi+teddad_jozi_dar_koli;
     end;

       Dmanbarexite.ADOanbarcala.SQL.Text:='update Tanbar_jens_kolli set tedad_koli=tedad_koli-'+FloatToStr(tedad_koli)+' ,tedadanbar=tedadanbar-'+FloatToStr(tedad_jozi)+
       ' where calacod='+floatToStr(cod_)+' and anbarname='+QuotedStr(anbar_name);
       Dmanbarexite.ADOanbarcala.ExecSQL;
  end;
  updatetedadjensforoshi:=true;
end;


procedure Tfrm_forosh_property.temp_to_main_forosh;
begin

  frm_main.l_last_op.Caption:=' ›—Ê‘ Ã‰” »Â '+L_kharidar_name.Caption;
  frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' »Â ‘„«—Â ›«ò Ê— '+sh_fctor);

  {DataM_final.ADOQ_t_sh_facrorhaye_forosh3.SQL.Text:='insert into t_sh_facrorhaye_forosh(shomare,time,shahrforoshande,tarikh,code) '+
  'values('+sh_fctor+','+QuotedStr(time)+','+QuotedStr(L_kharidar_name.Caption)+','+QuotedStr(tarikh)+
  ','+DataModule1.ADOQuery3code.AsString+')';
  DataM_final.ADOQ_t_sh_facrorhaye_forosh3.ExecSQL;}

   DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.SQL.Text:='insert into T_temp_forosh_factor  select '+
  'jens,geymat_vahed,tedad,geymat_jens,calacod,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_dar_koli,geymat_koli,sh_factor,tedad_kol,shahrforoshande,tarikh,barcod,code_sherkati'+
  ' from forosh_temp ';
  DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.ExecSQL;

  DataM_final.ADOQ_t_sh_facrorhaye_forosh.SQL.Text:='insert into t_sh_facrorhaye_forosh values('+
  sh_fctor+','+QuotedStr(L_kharidar_name.Caption)+','+QuotedStr(tarikh)+
  ','+DataModule1.ADOQuery3code.AsString+','+QuotedStr(time_)+')' ;
  DataM_final.ADOQ_t_sh_facrorhaye_forosh.ExecSQL;


  DataModule_gozaresh_tarkibi.ADO_fac_roz_show.SQL.Text:='insert into forosh_jens  select '+
  'jens,geymat_vahed,tedad,geymat_jens,calacod,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_dar_koli,geymat_koli,sh_factor,tedad_kol,shahrforoshande,tarikh,barcod,geymate_kharid,code_sherkati,anbarname'+
  ' from forosh_temp ';
  DataModule_gozaresh_tarkibi.ADO_fac_roz_show.ExecSQL;




end;
procedure Tfrm_forosh_property.go;
var st:pchar;
    sh:integer;
    sfo:string;
begin
   st:=pchar('›—Ê‘ Ã‰” »Â  << '+L_kharidar_name.Caption+' >> —«  «ÌÌœ „Ì‰„«ÌÌœ ø');
  if   MessageBox(Handle,st,' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
    begin
         temp_to_main_forosh;
         Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
         update_temp_check;
         temp_check_to_check;
         naghd_t_naghd_forosh;
         takhfife_forosh;
         sabt_bedeh_talab;
         sabt_bedeh_kharidar;

         updatetedadjensforoshi;

         if (Edit4.Text='')or(Edit4.Text='0') then
            Edit4.Text:='0';
         if Edit4.Text<>'0' then
          insert_nagd_to_sandog;
       DataModule1.ADOQ_sh_factor.SQL.Text:='update T_shomare_factor set shomare=shomare+1  where shahrforoshande='+QuotedStr(L_kharidar_name.Caption);
       DataModule1.ADOQ_sh_factor.ExecSQL;
       Frm_entekhab_check_baraye_forosh.clear;

       MessageBox(Handle,'⁄„·Ì«  ›—Ê‘ «Ã‰«” À»  ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
       show_facrore_forosh;

       insert_gozaresh_anbar;//////////////////////////////////
       Frm_pish_forosh.delete_hame_ajnas('ok');

       //Frm_mmoshakhasat_shakhs.show_kharidaran;
    DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.SQL.Text:='delete from T_temp_forosh_factor ';
    DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.ExecSQL;
    clear2;
       L_bedehkae.Caption:='0';
       L_bestankar.Caption:='0';
    end
    else
    begin
        Label_taeed_forosh.Caption:='a';
        Frm_entekhab_check_baraye_forosh.clear;
        hazf_hame_check;
        //Frm_pish_forosh.delete_hame_ajnas('ok');
        L_bedehkae.Caption:=Lkolgeymat.Caption;
        L_bestankar.Caption:='0';
        Edit4.Text:='';
        Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
    end;

end;
procedure Tfrm_forosh_property.complete_pish_forosh;
var i,j,sh:Integer;
    a:array[1..100] of integer;
    s:string;
begin
  s:=L_kharidar_name.caption;
  Frm_pish_forosh.show_pish_forosh;
  i:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.First;
  for j:=1 to  i  do
  begin
      a[j]:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[21].Value;
      DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Next;
  end;

   Dmanbarexite.ADOQuery_shomare_factor.SQL.Text:='select * from T_shomare_factor where shahrforoshande='+QuotedStr(s);       /////////////////////////////////////
   Dmanbarexite.ADOQuery_shomare_factor.Open;
   
   sh:=Dmanbarexite.ADOQuery_shomare_factor.Fields[0].AsInteger+1;
   
   Dmanbarexite.ADOQuery_shomare_factor.SQL.Text:='update T_shomare_factor set shomare=shomare+1 where shahrforoshande='+QuotedStr(s);
   Dmanbarexite.ADOQuery_shomare_factor.ExecSQL;
  for j:=1 to i do
    begin
          DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp where id='+IntToStr(a[j]);
          DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open;
          if  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[7].AsInteger <> 0 then
          begin
              {DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.SQL.text:='update forosh_temp '+
              'set chek_tarikh='+QuotedStr(trim(MaskEditchsal.Text)+'/'+trim(MaskEditchmah.Text)+'/'+trim(MaskEditchrooz.Text))+
              ',chek_tarikhdate='+QuotedStr(trim(MaskEditchrooz.Text))+
              ',chek_tarikhmonth='+QuotedStr(trim(MaskEditchmah.Text))+
              ',chek_tarikhyear='+QuotedStr(trim(MaskEditchsal.Text))+
              ',chek_number='+QuotedStr(trim(Edit7.Text))+
              'where id='+IntToStr(a[j]);
              DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.ExecSQL; }
          end;

          DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.SQL.text:='update forosh_temp '+
              'set forosh_tarikhyear='+QuotedStr(trim(MaskEditfosal.Text))+
              ',forosh_tarikhmonth='+QuotedStr(trim(MaskEditfomah.Text))+
              ',forosh_tarikhdate='+QuotedStr(trim(MaskEditforooz.Text))+
              ',sh_factor='+IntToStr(sh)+
              ',forosh_tarikh='+QuotedStr(trim(MaskEditfosal.Text)+'/'+trim(MaskEditfomah.Text)+'/'+trim(MaskEditforooz.Text))+
              ' where id='+IntToStr(a[j]);
              DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.ExecSQL;
    end;
end;




procedure Tfrm_forosh_property.daryaftha_va_pishforosh;
var kol_,nagd_,check_,pardakht,temp,tafazol:real;
    i,j:Integer;
    x1:Double;
    ch_number:String;
    a:array[1..100] of integer;
begin
  kol_:=StrTofloat(Lkolgeymat.Caption);
    if (Edit4.Text='') then
        nagd_:=0
       else
      nagd_:=StrTofloat(Edit4.Text);

    if (Edit5.Text='') then
        check_:=0
     else
      check_:=StrTofloat(Edit5.Text);
  pardakht:=nagd_;
  Frm_pish_forosh.show_pish_forosh;
  i:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.First;
  for j:=1 to  i  do
  begin
      a[j]:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[21].Value;
      DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Next;
  end;
  j:=1;
  while (j<=i)and (pardakht > 0)  do
    begin
       DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymat.SQL.Text:='select sum(geymat_jens)as kol_,count(*) as galam_ from forosh_temp where id='+IntToStr(a[j]);
       DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymat.Open;
       temp:=DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat;
          if temp <= pardakht then
              begin
                DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.SQL.text:='update forosh_temp set daryaft_nagd='+floatToStr(temp)+ ' where id='+IntToStr(a[j]);
                DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.ExecSQL;
                pardakht:=pardakht-temp;
              end
           else
              begin
                  DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.SQL.text:='update forosh_temp set daryaft_nagd='+floatToStr(pardakht)+ ' where id='+IntToStr(a[j]);
                  DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.ExecSQL;
                  pardakht:=0;
              end;

       j:=j+1;
    end;

{************** for check *******************}
  pardakht:=check_;
  j:=1;
  while (j<=i) and (pardakht > 0)  do
    begin
       DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymat.SQL.Text:='select sum(geymat_jens)as kol_,count(*) as galam_ from forosh_temp where id='+IntToStr(a[j]);
       DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymat.Open;

       temp:=DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat;

       DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp where id='+IntToStr(a[j]);
       DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open;

       tafazol:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[5].AsFloat - DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[6].AsFloat;
       if tafazol > 0  then
         begin
           if  tafazol<= pardakht then
             begin
               DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.SQL.text:='update forosh_temp set daryaft_chek='+floatToStr(tafazol)+ ' where id='+IntToStr(a[j]);
               DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.ExecSQL;                                         {floatToStr(pardakht)}
               pardakht:=pardakht-tafazol;
              end
             else
              begin
               DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.SQL.text:='update forosh_temp set daryaft_chek='+floatToStr(pardakht)+ ' where id='+IntToStr(a[j]);
               DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.ExecSQL;                         
               pardakht:=0;
              end;
         end;
       j:=j+1;
end;


    { ////////////////////////////// update bedehi temp ////////////////////////////}
  Frm_pish_forosh.show_pish_forosh;
  for j:=1 to  i  do
  begin
     DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp where id='+IntToStr(a[j]);
     DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open;
     kol_:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[5].AsFloat;
     nagd_:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[6].AsFloat;
     check_:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[7].AsFloat;

    DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.SQL.text:='update forosh_temp set bedehi='+floatToStr(kol_ -(nagd_ + check_))+ ' where id='+IntToStr(a[j]);
    DataModule_gozaresh_tarkibi.ADOQuery_update_forosh_temp.ExecSQL;
  end;
   { ////////////////////////////// update bedehi temp ////////////////////////////}
end;




{**********************************88}

 function Tfrm_forosh_property.equal:boolean;
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
       Label_taeed_forosh.Caption:='';
    end
 else
   begin
     equal:=true;
     Label_taeed_forosh.Caption:='a'
   end;
end;
///////////


/////////////////
function Tfrm_forosh_property.check_;
begin
Frm_pish_forosh.show_pish_forosh;
  If (L_kharidar_name.Caption='') or
      (DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount <=0) or(trim(MaskEditforooz.Text)='')or(Lkolgeymat.Caption='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ')  then
       begin
          check_:=false;
          MessageBox(Handle,'„Ê«—œ ” «—Â œ«— »«Ìœ Ê«—œ ‘Ê‰œ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
          Label_taeed_forosh.Caption:=''
       end
  else
      begin
        check_:=true;
        Label_taeed_forosh.Caption:='a'
      end;
  if Edit5.Text<>'' then
     begin
       { if (trim(MaskEditchrooz.Text)='') or (trim(Edit7.Text)='') then
        begin
           check_:=false;
           MessageBox(Handle,'‘„«—Â çò Ê  «—ÌŒ çò —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
        end; }
     end;
     if Edit4.Text='' then
        Edit4.Text:='0';
   if (DBLookupComboBox3.Text='') then
  begin
      check_:=false;
      MessageBox(Handle,'œ—Ì«›  ‰ﬁœÌ »«Ìœ »Â Ìò ’‰œÊﬁ œ—Ì«›  Ê«—œ ‘Êœ.',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
  end;
end;
//////////////////
procedure Tfrm_forosh_property.insert_forosh;
var stcommand_insert,update_tasfie:String;
x2,x3,x4,x5:Integer;
x1:Double;
y1:String;
begin
  stcommand_insert:='insert into forosh_jens (shahr,kharidar,jens,'+
     'geymat_vahed,tedad,geymat_jens,daryaft_nagd,daryaft_chek,chek_number,chek_tarikhyear,'+
     'chek_tarikhmonth,chek_tarikhdate,BEDEHI,forosh_tarikhyear,forosh_tarikhmonth,forosh_tarikhdate,forosh_tarikh,chek_tarikh,calacod) values (:shahr,:kharidar,:jens,:geymat_vahed,:tedad,:geymat_jens,:daryaft_nagd,'+
     ':daryaft_chek,:chek_number,:chek_tarikhyear,:chek_tarikhmonth,:chek_tarikhdate,:bedehi,:forosh_tarikhyear,:forosh_tarikhmonth,:forosh_tarikhdate,:forosh_tarikh,:chek_tarikh,:calacod)';
  DataModule2.ADOQuery1.SQL.Text:=stcommand_insert;
    {if  trim(MaskEditchrooz.Text)='' then
          begin
            styear:='****';
            stmonth:='*';
            stdate:='*';
          end
    else
         begin
            styear:=MaskEditchsal.Text;
            stmonth:=MaskEditchmah.Text;
            stdate:=MaskEditchrooz.Text;
         end; }

    if (Edit4.Text='') then
        x2:=0
       else
      x2:=StrToInt(Edit4.Text);
    if (Edit5.Text='') then
        x3:=0
     else
      x3:=StrToInt(Edit5.Text);
    {if (Edit7.Text='') then
                y1:='*************';}

  DataModule2.ADOQuery1.Parameters.ParamByName('shahrforoshande').Value:=L_kharidar_name.Caption;
  {DataModule2.ADOQuery3.Parameters.ParamByName('jens').Value:=Edit1.Text;}
  DataModule2.ADOQuery1.Parameters.ParamByName('geymat_vahed').Value:=StrToInt64({frm_viewanbar.lgeymatforosh.Caption}'');
  DataModule2.ADOQuery1.Parameters.ParamByName('tedad').Value:=StrToInt('1');
  DataModule2.ADOQuery1.Parameters.ParamByName('geymat_jens').Value:=StrToInt64({frm_viewanbar.lgeymatkol.Caption}'');
  DataModule2.ADOQuery1.Parameters.ParamByName('daryaft_nagd').Value:=x2;
  DataModule2.ADOQuery1.Parameters.ParamByName('daryaft_chek').Value:=x3;
  {if (Edit7.Text<>'') then
     DataModule2.ADOQuery1.Parameters.ParamByName('chek_number').Value:=Edit7.Text
     else
        DataModule2.ADOQuery1.Parameters.ParamByName('chek_number').Value:=y1;}

  DataModule2.ADOQuery1.Parameters.ParamByName('chek_tarikhyear').Value:=styear;
    DataModule2.ADOQuery1.Parameters.ParamByName('chek_tarikhmonth').Value:=stmonth;
      DataModule2.ADOQuery1.Parameters.ParamByName('chek_tarikhdate').Value:=stdate;
  DataModule2.ADOQuery1.Parameters.ParamByName('bedehi').Value:=StrToInt64({frm_viewanbar.lgeymatkol.Caption}'')-(x2+x3);
  DataModule2.ADOQuery1.Parameters.ParamByName('forosh_tarikhyear').Value:=MaskEditfosal.Text;
  DataModule2.ADOQuery1.Parameters.ParamByName('forosh_tarikhmonth').Value:=MaskEditfomah.Text;
  DataModule2.ADOQuery1.Parameters.ParamByName('forosh_tarikhdate').Value:=MaskEditforooz.Text;
  //////////////
  DataModule2.ADOQuery1.Parameters.ParamByName('forosh_tarikh').Value:=trim(MaskEditfosal.Text)+'/'+trim(MaskEditfomah.Text)+'/'+trim(MaskEditforooz.Text);
  {DataModule2.ADOQuery1.Parameters.ParamByName('chek_tarikh').Value:=trim(MaskEditchsal.Text)+'/'+trim(MaskEditchmah.Text)+'/'+trim(MaskEditchrooz.Text);
  DataModule2.ADOQuery1.Parameters.ParamByName('calacod').Value:=trim(frm_viewanbar.DBText_cod.Caption);}
  //////////////

  DataModule2.ADOQuery1.ExecSQL;
 
 end;
/////////////////

procedure Tfrm_forosh_property.clear2;
begin
    Edit4.Text:='';
    Edit5.Text:='';
    {MaskEditchrooz.Text:='';
    MaskEditchmah.Text:='';
    MaskEditchsal.Text:='';
    Edit7.Text:=''; }
    Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ';
    styear:='';
    stmonth:='';
    stdate:='';
    L_kharidar_name.Caption:='';
    L_bedehkae.Caption:='0';
    L_bestankar.Caption:='0';
end;
////////////////
procedure Tfrm_forosh_property.suiButton3Click(Sender: TObject);
begin
_Taghvim.ShowModal;
  if _taghvim._str_date<>'' then
     begin
         {MaskEditchsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
         MaskEditchMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
         MaskEditchRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];}
      end
end;

procedure Tfrm_forosh_property.suiButton4Click(Sender: TObject);
begin
_Taghvim.ShowModal;
  if _taghvim._str_date<>'' then
     begin
         MaskEditfosal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
         MaskEditfoMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
         MaskEditfoRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
      end
  
end;

procedure Tfrm_forosh_property.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['0'..'9',#8])and not(key in['.']) then
   key:=#0;
end;

procedure Tfrm_forosh_property.Edit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_forosh_property.Edit5KeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_forosh_property.suiButton5222Click(Sender: TObject);
begin
 if Label_taeed_forosh.Caption<>'yes' then
  Label_taeed_forosh.Caption:='';
  clear2;
  close;
end;

procedure Tfrm_forosh_property.DBLookupComboBox1Click(Sender: TObject);
begin
  if Lkolgeymat.Caption<>'«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' then
          Frm_pish_forosh.delete_hame_ajnas_tedad
          else
          begin
           if DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount > 0 then
             Frm_pish_forosh.delete_hame_ajnas('ok');
          end;
  Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' ;
  {DataModule1.ADOQuery2.SQL.Text:='select distinct foroshande from t_shahr_foroshande where shahr='+QuotedStr(L_kh_shahr.caption);
  DataModule1.ADOQuery2.Open; }
end;

procedure Tfrm_forosh_property.suiButton2Click(Sender: TObject);
var st:pchar;
begin
    Dmanbarexite.ADOanbarcala.Close;
    Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli';
   Dmanbarexite.ADOanbarcala.Open;
    if Frm_shakhs_jadid.check_exsist_shakhs(L_kharidar_name.Caption) then
    begin
       Frm_pish_forosh.Label_name.Caption:=L_kharidar_name.Caption;
       if Lkolgeymat.Caption<>'«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' then
         begin
           if MessageBox(Handle,'·Ì”  «Ã‰«” «‰ Œ«» ‘œÂ «‰œ° „Ì ŒÊ«ÂÌœ Ã‰” œÌê—Ì »Â ¬‰Â« «÷«›Â ò‰Ìœø. ',' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
             begin
               Frm_pish_forosh.ShowModal;
             end;
         end
       else
          Frm_pish_forosh.ShowModal;

    end
    else
     begin
      st:=pchar('Œ—Ìœ«— «‰ Œ«» ‰‘œÂ «” ');
      MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
     end;
end;

procedure Tfrm_forosh_property.FormShow(Sender: TObject);
begin

RadioGroup1.ItemIndex :=0;
suiButton4.Enabled :=false;
MaskEditforooz.Enabled :=false;
MaskEditfomah.Enabled :=false;
MaskEditfosal.Enabled :=false;
MaskEditforooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
MaskEditfomah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
MaskEditfosal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];

frm_forosh_property.tarikh:=frm_forosh_property.MaskEditfosal.Text+'/'+frm_forosh_property.MaskEditfomah.Text+'/'+frm_forosh_property.MaskEditforooz.Text;

  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='update forosh_temp set tarikh='+
  QuotedStr(frm_forosh_property.tarikh);
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;

  DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.SQL.Text:='delete from T_temp_forosh_factor '; 
  DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.ExecSQL;

  Dmanbar.ADOQ_gozaresh_anbar_temp.SQL.Text:='delete from T_gozaresh_vorod_va_khoroje_anbar_temp';
  Dmanbar.ADOQ_gozaresh_anbar_temp.ExecSQL;

  Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ';
  Label_taeed_forosh.Caption:='a';
  clear2;

  DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name where sandog<>'+
  QuotedStr('»—œ«‘  „ ›—ﬁÂ')+' and  sandog<>'+
  QuotedStr('”—„«ÌÂ')+' order by sandog';
  DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;

  Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
  L_bedehkae.Caption:='0';
  L_bestankar.Caption:='0';
end;

procedure Tfrm_forosh_property.RadioGroup1Click(Sender: TObject);
begin
   if RadioGroup1.ItemIndex =0  then
    begin
      suiButton4.Enabled :=false;
      MaskEditforooz.Enabled :=false;
      MaskEditfomah.Enabled :=false;
      MaskEditfosal.Enabled :=false;
      MaskEditforooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
      MaskEditfomah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
      MaskEditfosal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
    end
  else
    begin
      suiButton4.Enabled :=true;
      MaskEditforooz.Enabled :=true;
      MaskEditfomah.Enabled :=true;
      MaskEditfosal.Enabled :=true;
      suiButton4.Click;
    end;
end;
procedure Tfrm_forosh_property.suiButton6Click(Sender: TObject);
var st:pchar;
begin
  time_:=frm_main.LMDClock1.Digital.Caption;
if check_ then
  begin
     if L_kharidar_name.Caption<>'' then
     begin
      if not equal then
      begin
          if MessageBox(Handle,'„»·€ Å—œ«Œ Ì »Â ’Ê—  ‰ﬁœ Ê çò «“ ﬁÌ„  ò· Œ—Ìœ »Ì‘ — „Ì»«‘œ ° „»«·€ —«  «ÌÌœ „Ìò‰Ìœ ø',' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
             //go;
             execute_forosh_stored_procedure;
      end
      else
           //go;
           execute_forosh_stored_procedure;
     end
     else
      begin
        st:=pchar('„‘Œ’«  Œ—Ìœ«— »«Ìœ Ê«—œ ‘Êœ');
        MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
      end;
   end;
end;

procedure Tfrm_forosh_property.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (Label_taeed_forosh.Caption='') or (Label_taeed_forosh.Caption='a') then
    begin
       Frm_pish_forosh.delete_hame_ajnas_tedad;
    end;
end;



procedure Tfrm_forosh_property.DBLookupComboBox2Click(Sender: TObject);
begin
   if Lkolgeymat.Caption<>'«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' then
          Frm_pish_forosh.delete_hame_ajnas_tedad
   else
   begin
      if DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount > 0 then
        Frm_pish_forosh.delete_hame_ajnas('ok');
   end;
  Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' ;
end;

procedure Tfrm_forosh_property.bClick(Sender: TObject);
begin
  Frm_entekhab_check_baraye_forosh.L_type.Caption:='forosh';
  Frm_entekhab_check_baraye_forosh.ShowModal;
end;

procedure Tfrm_forosh_property.suiButton12323Click(Sender: TObject);
begin
  if DBText1.Caption='' then
     MessageBox(Handle,'çòÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ .','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT )
  else
  hazf_check;
end;

procedure Tfrm_forosh_property.Edit4Exit(Sender: TObject);
begin
if Lkolgeymat.Caption='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' then
  begin
    hazf_hame_check;
    Edit4.Text:='';
    Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
    L_bestankar.Caption:='0';
    L_bedehkae.Caption:='0';
  end
  else
    Frm_entekhab_check_baraye_forosh.bede_talab_temp_check_forosh;
end;

procedure Tfrm_forosh_property.suiButton5Click(Sender: TObject);
begin
  frm_entekhabe_kharidar.ShowModal;
end;

procedure Tfrm_forosh_property.MaskEditforoozChange(Sender: TObject);
begin
  frm_forosh_property.tarikh:=frm_forosh_property.MaskEditfosal.Text+'/'+frm_forosh_property.MaskEditfomah.Text+'/'+frm_forosh_property.MaskEditforooz.Text;

  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='update forosh_temp set tarikh='+
  QuotedStr(frm_forosh_property.tarikh);
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;

  DataM_final.ADOQ_T_temp_pardakht_check_forosh.SQL.Text:='update T_temp_pardakht_check_forosh set tarikh_kharid='+
  QuotedStr(frm_forosh_property.tarikh);
  DataM_final.ADOQ_T_temp_pardakht_check_forosh.ExecSQL;
end;

procedure Tfrm_forosh_property.Edit4Change(Sender: TObject);
begin
if Lkolgeymat.Caption='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' then
  begin
    hazf_hame_check;
    Edit4.Text:='';
    Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
    L_bestankar.Caption:='0';
    L_bedehkae.Caption:='0';
  end
  else
    Frm_entekhab_check_baraye_forosh.bede_talab_temp_check_forosh;
end;

procedure Tfrm_forosh_property.suiButton1Click(Sender: TObject);
begin
  frm_tozihat.l_type_tozih.Caption:='no edit';
  frm_tozihat.l_type_factor.Caption:='forosh';
  frm_tozihat.ShowModal;
end;

end.
