unit unt_eslahe_forosh_naghd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton, DB;

type
  Tfrm_eslahe_forosh_naghd = class(TForm)
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    L_bestankar: TLabel;
    L_bedehkae: TLabel;
    Edit4: TEdit;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    DBText_t_jam: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Label10: TLabel;
    DBT_mab_gabl: TDBText;
    Label4: TLabel;
    DBT_m_check: TDBText;
    DataSource3: TDataSource;
    Button1: TButton;
    Label7: TLabel;
    DBText1: TDBText;
    DataSource4: TDataSource;
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure bedeh_talab_after_eslah;
    procedure save_eslah_nagdi;
    procedure Edit4Exit(Sender: TObject);
    procedure LMDSpeedButton_addClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure update_bedeh_talab_va_bedehi_kol_kharidar;
    procedure Edit4Change(Sender: TObject);
    procedure update_bedehi_kharidar_pas_az_bedekar_shodan( mab_gabl,t_jam:string);
    procedure execute_eslahe_nagde_forosh(mab_gabl,t_jam:string);

    procedure eslshe_vorode_be_sandog;
  private
    { Private declarations }
  public
    { Public declarations }
    sandog:string;
  end;

var
  frm_eslahe_forosh_naghd: Tfrm_eslahe_forosh_naghd;

implementation

uses unt_DataM_final, unt_entekhab_check_baraye_forosh, unt_datamodule2,
  unt_eslah_forosh, unt_main, Unt_DataModule_gozaresh_tarkibi,
  unt_datam_sp_eslahe_forosh, unt_gozaresh_az_sandog, Untdmlistha;

{$R *.dfm}
procedure Tfrm_eslahe_forosh_naghd.execute_eslahe_nagde_forosh(mab_gabl,t_jam:string);
var nagd_gabl,kol_pardakht,nagd,talab_eslah,bedeh_eslah,check,par,par2,temp,tagire_nagdi:real;
begin

    t_jam:=FloatToStr(StrToFloat(t_jam)-DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat);

    if (mab_gabl='0') or (mab_gabl='') then
             nagd_gabl:=0
         else
          nagd_gabl:=StrToFloat(mab_gabl);

    if (Edit4.Text='') or(Edit4.Text='0')then
      nagd:=0
    else
      nagd:=StrToFloat(Edit4.Text);



    if DBT_m_check.Caption='' then
      check:=0
    else
      check:=StrToFloat(DBT_m_check.Caption);
/////////////////////////////////////////////////////////
if (nagd_gabl<(nagd+check))and(StrToFloat(t_jam) >= (nagd+check)) then //1
   begin
        bedeh_eslah:=(nagd+check)-nagd_gabl;
        par:=1;
   end;


if (nagd_gabl<(nagd+check))and(StrToFloat(t_jam) < (nagd+check))and(nagd_gabl<=StrToFloat(t_jam)) then //5
   begin
        bedeh_eslah:=StrToFloat(t_jam)-nagd_gabl;

        talab_eslah:=(nagd+check)-StrToFloat(t_jam);
        par:=5;
   end;

if (nagd_gabl<(nagd+check))and(StrToFloat(t_jam) < (nagd+check))and(nagd_gabl>StrToFloat(t_jam)) then //4
   begin
        talab_eslah:=(nagd+check)-nagd_gabl;
        par:=4;
   end;

if (nagd_gabl>(nagd+check))and(StrToFloat(t_jam) > (nagd+check))and(StrToFloat(t_jam)<nagd_gabl) then//2
   begin
        bedeh_eslah:=StrToFloat(t_jam)-(nagd+check);
        talab_eslah:=nagd_gabl-StrToFloat(t_jam);
        par:=2;
   end;

if (nagd_gabl>(nagd+check))and(StrToFloat(t_jam) > (nagd+check))and(StrToFloat(t_jam)>=nagd_gabl) then//3
   begin
        bedeh_eslah:=nagd_gabl-(nagd+check);
        par:=3;
   end;

   if (nagd_gabl>(nagd+check))and(StrToFloat(t_jam) < (nagd+check)) then //6
   begin
        talab_eslah:=nagd_gabl-(nagd+check);
        par:=6;
   end;

   if (nagd_gabl>StrToFloat(t_jam))and(StrToFloat(t_jam) = (nagd+check)) then//7
   begin
      talab_eslah:=nagd_gabl-StrToFloat(t_jam);
      par:=7;
   end;

/////////////////////////////////////////////////////////

  tagire_nagdi:=0;
if nagd <> StrToFloat(DBT_mab_gabl.Caption) then
begin
  tagire_nagdi:=1;
  if StrToFloat(DBT_mab_gabl.Caption)<nagd then //
  begin
    temp:=nagd-StrToFloat(DBT_mab_gabl.Caption);
    par2:=1;
  end
  else
  begin
       temp:=StrToFloat(DBT_mab_gabl.Caption)-nagd;
       par2:=2;
  end;
end;

/////////////////////////////////////////////////////////

    frm_main.l_last_op.Caption:='«’·«Õ „»·€ Å—œ«Œ Ì ‰ﬁœ '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString+' »—«Ì ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;


  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[0].Value:=nagd;//@nagd float,
  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[1].Value:=bedeh_eslah;//@bedeh_eslah float,
  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[2].Value:=talab_eslah;//@talab_eslah float,

  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[3].Value:=L_bedehkae.Caption;//@bedehkar float,
  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[4].Value:=L_bestankar.Caption;//@bestankar float,

  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[5].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString;//@code_kharidar float,

  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[6].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;//@sh_factor float,
  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[7].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString;//@tatikh_forosh nvarchar(12),

  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[8].Value:=dataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;//@shahrforoshande nvarchar(50),

  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[9].Value:=par;//@par float,
  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[10].Value:=par2;//@par2 float,

  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[11].Value:=tagire_nagdi;//@tagire_nagdi float,

  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[12].Value:=temp;//@temp float,

  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[13].Value:=frm_main.l_last_op.Caption+' «“ '+mab_gabl+' »Â '+FloatToStr(nagd);//@amaliat nvarchar(1000),
  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[14].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.Parameters[15].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)
  datam_sp_eslahe_forosh.ADOStoredProc_nagdi.ExecProc;

  MessageBox(Handle,pchar('„»·€ ‰ﬁœÌ ÃœÌœ »—«Ì ‘„«—Â ›«ò Ê— –ŒÌ—Â ‘œ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);  

/////////////////////////////////////////////////////////

  
end;
//////////////////////
procedure Tfrm_eslahe_forosh_naghd.eslshe_vorode_be_sandog;
begin
 DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='update T_vorod_khoroj_sandogha set mablag='+Edit4.Text+
 ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+
 ' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
 DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.ExecSQL;
end;

procedure Tfrm_eslahe_forosh_naghd.update_bedehi_kharidar_pas_az_bedekar_shodan( mab_gabl,t_jam:string);
var nagd_gabl,kol_pardakht,nagd,talab_eslah,bedeh_eslah,check:real;
begin
    if (mab_gabl='0') or (mab_gabl='') then
             nagd_gabl:=0
         else
          nagd_gabl:=StrToFloat(mab_gabl);

    if (Edit4.Text='') or(Edit4.Text='0')then
      nagd:=0
    else
      nagd:=StrToFloat(Edit4.Text);



    if DBT_m_check.Caption='' then
      check:=0
    else
      check:=StrToFloat(DBT_m_check.Caption);
/////////////////////////////////////////////////////////
if (nagd_gabl<(nagd+check))and(StrToFloat(t_jam) >= (nagd+check)) then //1
   begin
        bedeh_eslah:=(nagd+check)-nagd_gabl;
       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+' where shahrforoshande='+
       QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;


      { DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh  where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+
       ' and sh_factor='+FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
       DataM_final.ADOQ_takhfife_forosh.Open;

       if DataM_final.ADOQ_takhfife_foroshbedehi_az_gabl.AsFloat >= bedeh_eslah then
       begin
        DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+
        FloatToStr(bedeh_eslah)+' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+
        FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
        DataM_final.ADOQ_takhfife_forosh.ExecSQL;
       end;}
   end;

if (nagd_gabl<(nagd+check))and(StrToFloat(t_jam) < (nagd+check))and(nagd_gabl<=StrToFloat(t_jam)) then //5
   begin
        bedeh_eslah:=StrToFloat(t_jam)-nagd_gabl;

        talab_eslah:=(nagd+check)-StrToFloat(t_jam);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+
       ',talab=talab+'+FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;

       {DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+
       FloatToStr(bedeh_eslah)+' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+
       FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
       DataM_final.ADOQ_takhfife_forosh.ExecSQL; }
   end;

if (nagd_gabl<(nagd+check))and(StrToFloat(t_jam) < (nagd+check))and(nagd_gabl>StrToFloat(t_jam)) then //4
   begin

        talab_eslah:=(nagd+check)-nagd_gabl;
       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab+'+
       FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
   end;


if (nagd_gabl>(nagd+check))and(StrToFloat(t_jam) > (nagd+check))and(StrToFloat(t_jam)<nagd_gabl) then//2
   begin
        bedeh_eslah:=StrToFloat(t_jam)-(nagd+check);
        
        talab_eslah:=nagd_gabl-StrToFloat(t_jam);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+
       FloatToStr(bedeh_eslah)+
       ',talab=talab-'+FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;

       {DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+
       FloatToStr(bedeh_eslah)+' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+
       FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
       DataM_final.ADOQ_takhfife_forosh.ExecSQL;}
   end;
{if (nagd_gabl>(nagd+check))and(StrToFloat(t_jam) = (nagd+check))and(StrToFloat(t_jam)<nagd_gabl) then//2 prim =7
   begin
        talab_eslah:=nagd_gabl-StrToFloat(t_jam);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab-'+
       FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
   end; }

if (nagd_gabl>(nagd+check))and(StrToFloat(t_jam) > (nagd+check))and(StrToFloat(t_jam)>=nagd_gabl) then//3
   begin
        bedeh_eslah:=nagd_gabl-(nagd+check);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+
       FloatToStr(bedeh_eslah)+
       ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;

       {DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+
       FloatToStr(bedeh_eslah)+' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+
       FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
       DataM_final.ADOQ_takhfife_forosh.ExecSQL;}       
   end;

   if (nagd_gabl>(nagd+check))and(StrToFloat(t_jam) < (nagd+check)) then //6
   begin
        talab_eslah:=nagd_gabl-(nagd+check);
       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab-'+FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
   end;

////////////////////////////////////////////////////////  nagd jadid=geymate kol   //////////////////////////////////////
   if (nagd_gabl>StrToFloat(t_jam))and(StrToFloat(t_jam) = (nagd+check)) then//7
   begin
      talab_eslah:=nagd_gabl-StrToFloat(t_jam);

      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab-'+FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
   end;

  {if (nagd_gabl<StrToFloat(t_jam))and(StrToFloat(t_jam) = (nagd+check)) then//8=1
   begin
       bedeh_eslah:=StrToFloat(t_jam)-nagd_gabl;
       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+FloatToStr(bedeh_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;

       ////////////////////////////////////////////////////////  nagd jadid=geymate kol   //////////////////////////////////////       
   end; }
end;

//////////////////////////////////////////////////////////////////
procedure Tfrm_eslahe_forosh_naghd.update_bedeh_talab_va_bedehi_kol_kharidar;
var nagd,temp:real;
begin
    if (Edit4.Text='') or(Edit4.Text='0')then
      nagd:=0
    else
      nagd:=StrToFloat(Edit4.Text);
if nagd <> StrToFloat(DBT_mab_gabl.Caption) then
begin
  DataModule2.adotasfie.SQL.Text:='update bedeh_bestan set bedeh='+L_bedehkae.Caption+
  ',talab='+L_bestankar.Caption+
  '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+
  ' and sh_khaid='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+
  ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString);

  DataModule2.adotasfie.ExecSQL;

  ///////////////////////  oooooooooooooo  ///////////////////


  DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl='+L_bedehkae.Caption+
  ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+
  FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
  DataM_final.ADOQ_takhfife_forosh.ExecSQL;

  if StrToFloat(DBT_mab_gabl.Caption)<nagd then //
  begin
    temp:=nagd-StrToFloat(DBT_mab_gabl.Caption);

       DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(temp)+
       ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor >'+
       FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
       DataM_final.ADOQ_takhfife_forosh.ExecSQL;
  end
  else
  begin
    temp:=StrToFloat(DBT_mab_gabl.Caption)-nagd;//

       DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+FloatToStr(temp)+
       ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor >'+
       FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
       DataM_final.ADOQ_takhfife_forosh.ExecSQL;
  end;



  ///////////////////////  oooooooooooooo  ///////////////////

    DataM_final.ADOQ_T_pardakht_nagd_forosh.SQL.Text:='update T_pardakht_nagd_forosh set nagd='+
    FloatToStr(nagd)+' where shomare_factor='+
    DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+
    ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString;

  DataM_final.ADOQ_T_pardakht_nagd_forosh.ExecSQL;


end;
end;


procedure Tfrm_eslahe_forosh_naghd.save_eslah_nagdi;
begin
{}
end;
procedure Tfrm_eslahe_forosh_naghd.bedeh_talab_after_eslah;
var check,kol_pardakht,nagd:string;
begin
    if (DBT_m_check.Caption='0') or (DBT_m_check.Caption='') then
             check:='0'
         else
          check:=DBT_m_check.Caption;

    if (Edit4.Text='') or(Edit4.Text='0')then
      nagd:='0'
    else
      nagd:=Edit4.Text;

          kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat);
          sleep(100);

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

procedure Tfrm_eslahe_forosh_naghd.Edit4KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh_naghd.Edit4Exit(Sender: TObject);
begin
  bedeh_talab_after_eslah;
end;

procedure Tfrm_eslahe_forosh_naghd.LMDSpeedButton_addClick(
  Sender: TObject);
begin
  save_eslah_nagdi;
end;

procedure Tfrm_eslahe_forosh_naghd.FormShow(Sender: TObject);
begin
 DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='select * from T_vorod_khoroj_sandogha where cod_kharidar='+
 DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+
 ' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;

 DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.Open;

 sandog:=DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandogsandog.AsString;


        Edit4.Text:=DataM_final.ADOQ_t_pardakht_nagd_foroshnagd.AsString;
        bedeh_talab_after_eslah;
end;

procedure Tfrm_eslahe_forosh_naghd.Button1Click(Sender: TObject);
var kol_pardkht_ghabl,check,nagd,mojodi:real;
begin
  if (Edit4.Text='') then
    MessageBox(Handle,pchar('„»·€ ‰ﬁœ ÃœÌœ —« Ê«—œ ‰„«ÌÌœ'),' ÊÃÂ!',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin

    if Edit4.Text='' then
      Edit4.Text:='0';

    if DBT_m_check.Caption='' then
      check:=0
    else
      check:=StrToFloat(DBT_m_check.Caption);


   if DBT_mab_gabl.Caption='' then
    nagd:=0
   else
    nagd:=StrToFloat(DBT_mab_gabl.Caption);

    kol_pardkht_ghabl:=check+nagd;
    bedeh_talab_after_eslah;

     mojodi:=Frm_gozaresh_az_sandog.mojodi_kol(sandog);

     if (StrToFloat(Edit4.Text)<nagd)  then
     begin
      if ((mojodi-nagd+StrToFloat(Edit4.Text))<0)then
      begin
        MessageBox(Handle,pchar('»« ò„ ò—œ‰ „»·€ ‰ﬁœ À»  ‘œÂ „ÊÃÊœÌ ’‰œÊﬁ << '+sandog+' >> = << '+FloatToStr(mojodi)+' >> „‰›Ì „Ì ‘Êœ'),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        exit;
      end
      else
      begin
        execute_eslahe_nagde_forosh(FloatToStr(kol_pardkht_ghabl),DBText_t_jam.Caption);
      end;
     end
     else
     begin
         execute_eslahe_nagde_forosh(FloatToStr(kol_pardkht_ghabl),DBText_t_jam.Caption);
     end;

    frm_eslah_forosh.aghlame_factor;
    frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
    ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    DataM_final.ADOQ_takhfife_forosh.Open;    

    {eslshe_vorode_be_sandog;
    update_bedehi_kharidar_pas_az_bedekar_shodan(FloatToStr(kol_pardkht_ghabl),DBText_t_jam.Caption);

    update_bedeh_talab_va_bedehi_kol_kharidar;}


    close;
  end;
end;

procedure Tfrm_eslahe_forosh_naghd.Edit4Change(Sender: TObject);
begin
  bedeh_talab_after_eslah;
end;

end.
