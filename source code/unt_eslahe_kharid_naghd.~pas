unit unt_eslahe_kharid_naghd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB;

type
  Tfrm_eslahe_kharid_naghd = class(TForm)
    DataSource2: TDataSource;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    DBText_t_jam: TDBText;
    Label10: TLabel;
    DBT_mab_gabl: TDBText;
    Label4: TLabel;
    DBT_m_check: TDBText;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    L_bestankar: TLabel;
    L_bedehkae: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    DBText1: TDBText;
    Label6: TLabel;
    DataSource4: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure bedeh_talab_after_eslah;
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4Change(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure update_bedehi_kharidar_pas_az_bedekar_shodan( mab_gabl,t_jam:string);
    procedure update_bedeh_talab_va_bedehi_kol_kharidar;
    procedure execute_eslahe_nagde_kharid(mab_gabl,t_jam:string);
  private
    { Private declarations }
  public
    { Public declarations }
    sandog:string;
  end;

var
  frm_eslahe_kharid_naghd: Tfrm_eslahe_kharid_naghd;

implementation

uses unt_DataM_final, Untdmlistha, unt_eslah_kharid, unt_datamodule2,
  unt_datamodule1, unt_main, unt_datam_sp_eslahe_forosh,
  unt_Dm_zayeat_marjoei, Unt_DataModule_gozaresh_tarkibi,
  unt_gozaresh_az_sandog;

{$R *.dfm}
procedure Tfrm_eslahe_kharid_naghd.execute_eslahe_nagde_kharid(mab_gabl,t_jam:string);
var nagd_gabl,kol_pardakht,nagd,talab_eslah,bedeh_eslah,check,par,par2,temp,tagire_nagdi:real;
begin
    t_jam:=FloatToStr(StrToFloat(t_jam)-Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat);

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

    frm_main.l_last_op.Caption:=' «’·«Õ „»·€ Å—œ«Œ Ì ‰ﬁœ »Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString+' »—«Ì ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;

    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.Parameters[0].Value:=nagd;//@nagd float,
    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.Parameters[1].Value:=bedeh_eslah;//@bedeh_eslah float,
    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.Parameters[2].Value:=talab_eslah;//@talab_eslah float,

    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.Parameters[3].Value:=L_bedehkae.Caption;//@bedehkar float,
    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.Parameters[4].Value:=L_bestankar.Caption;//@bestankar float,

    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.Parameters[5].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;//@code_kharidar float,

    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.Parameters[6].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;//@sh_factor float,
    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.Parameters[7].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString;//@tatikh_forosh nvarchar(12),

    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.Parameters[8].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@shahrforoshande nvarchar(50),

    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.Parameters[9].Value:=par;//@par float,

    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.Parameters[10].Value:=frm_main.l_last_op.Caption+' «“ '+mab_gabl+' »Â '+FloatToStr(nagd);//@amaliat nvarchar(1000),
    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.Parameters[11].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.Parameters[12].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)
    datam_sp_eslahe_forosh.ADOStoredProc_nagdi_kharid.ExecProc;

  MessageBox(Handle,pchar('„»·€ ‰ﬁœÌ ÃœÌœ »—«Ì ‘„«—Â ›«ò Ê— –ŒÌ—Â ‘œ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);  

/////////////////////////////////////////////////////////

  
end;
/////////////////////////////////////
procedure Tfrm_eslahe_kharid_naghd.update_bedeh_talab_va_bedehi_kol_kharidar;
var nagd:real;
begin
    if (Edit4.Text='') or(Edit4.Text='0')then
      nagd:=0
    else
      nagd:=StrToFloat(Edit4.Text);
if nagd <> StrToFloat(DBT_mab_gabl.Caption) then
begin
  DataModule1.ADObedehi.SQL.Text:='update T_bedehi set bedeh='+L_bedehkae.Caption+
  ',talab='+L_bestankar.Caption+

  '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString+
  ' and sh_khaid='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
  ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString);

  DataModule1.ADObedehi.ExecSQL;


    DataM_final.ADOQ_T_pardakht_nagd_kharid.SQL.Text:='update T_pardakht_nagd_kharid set nagd='+
    FloatToStr(nagd)+' where shomare_factor='+
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
    ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;

  DataM_final.ADOQ_T_pardakht_nagd_kharid.ExecSQL;
end;
end;
///////////////////////
procedure Tfrm_eslahe_kharid_naghd.update_bedehi_kharidar_pas_az_bedekar_shodan( mab_gabl,t_jam:string);
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

    if (DBT_m_check.Caption='') or(DBT_m_check.Caption='0')then
      check:=0
    else
      check:=StrToFloat(DBT_m_check.Caption);
/////////////////////////////////////////////////////////
if (nagd_gabl<(nagd+check))and(StrToFloat(t_jam) >= (nagd+check)) then //1
   begin
        bedeh_eslah:=(nagd+check)-nagd_gabl;
       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;

if (nagd_gabl<(nagd+check))and(StrToFloat(t_jam) < (nagd+check))and(nagd_gabl<=StrToFloat(t_jam)) then //5
   begin
        bedeh_eslah:=StrToFloat(t_jam)-nagd_gabl;

        talab_eslah:=(nagd+check)-StrToFloat(t_jam);

       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh-'+
       FloatToStr(bedeh_eslah)+
       ',talab=talab+'+FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;

if (nagd_gabl<(nagd+check))and(StrToFloat(t_jam) < (nagd+check))and(nagd_gabl>StrToFloat(t_jam)) then //4
   begin

        talab_eslah:=(nagd+check)-nagd_gabl;
       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set talab=talab+'+
       FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;


if (nagd_gabl>(nagd+check))and(StrToFloat(t_jam) > (nagd+check))and(StrToFloat(t_jam)<nagd_gabl) then//2
   begin
        bedeh_eslah:=StrToFloat(t_jam)-(nagd+check);
        
        talab_eslah:=nagd_gabl-StrToFloat(t_jam);

       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh+'+
       FloatToStr(bedeh_eslah)+
       ',talab=talab-'+FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;
{if (nagd_gabl>(nagd+check))and(StrToFloat(t_jam) = (nagd+check))and(StrToFloat(t_jam)<nagd_gabl) then//2 prim =7
   begin
        talab_eslah:=nagd_gabl-StrToFloat(t_jam);

       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set talab=talab-'+
       FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end; }

if (nagd_gabl>(nagd+check))and(StrToFloat(t_jam) > (nagd+check))and(StrToFloat(t_jam)>=nagd_gabl) then//3
   begin
        bedeh_eslah:=nagd_gabl-(nagd+check);

       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh+'+
       FloatToStr(bedeh_eslah)+
       ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;

   if (nagd_gabl>(nagd+check))and(StrToFloat(t_jam) < (nagd+check)) then //6
   begin
        talab_eslah:=nagd_gabl-(nagd+check);
       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set talab=talab-'+FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;

////////////////////////////////////////////////////////  nagd jadid=geymate kol   //////////////////////////////////////
   if (nagd_gabl>StrToFloat(t_jam))and(StrToFloat(t_jam) = (nagd+check)) then//7
   begin
      talab_eslah:=nagd_gabl-StrToFloat(t_jam);

      DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set talab=talab-'+FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
   end;

  {if (nagd_gabl<StrToFloat(t_jam))and(StrToFloat(t_jam) = (nagd+check)) then//8=1
   begin
       bedeh_eslah:=StrToFloat(t_jam)-nagd_gabl;
       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh-'+FloatToStr(bedeh_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;

       ////////////////////////////////////////////////////////  nagd jadid=geymate kol   //////////////////////////////////////       
   end; }
end;

/////////////////
procedure Tfrm_eslahe_kharid_naghd.bedeh_talab_after_eslah;
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

          kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat);
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

/////////////////////////////////

procedure Tfrm_eslahe_kharid_naghd.FormShow(Sender: TObject);
begin
 DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='select * from T_vorod_khoroj_sandogha where cod_kharidar='+
 DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString+
 ' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;

 DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.Open;

 sandog:=DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandogsandog.AsString;


        Edit4.Text:=DataM_final.ADOQ_t_pardakht_nagd_kharidnagd.AsString;
        bedeh_talab_after_eslah;
end;

procedure Tfrm_eslahe_kharid_naghd.Edit4KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_kharid_naghd.Edit4Change(Sender: TObject);
begin
  bedeh_talab_after_eslah;
end;

procedure Tfrm_eslahe_kharid_naghd.Edit4Exit(Sender: TObject);
begin
  bedeh_talab_after_eslah;
end;

procedure Tfrm_eslahe_kharid_naghd.Button1Click(Sender: TObject);
var kol_pardkht_ghabl,check,m_gabl,mojodi:real;
begin
 if (Edit4.Text='') then
    MessageBox(Handle,pchar('„»·€ ‰ﬁœ ÃœÌœ —« Ê«—œ ‰„«ÌÌœ'),' ÊÃÂ!',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
    if trim(Edit4.Text)='' then
      Edit4.Text:='0';

    if (DBT_mab_gabl.Caption='') or(DBT_mab_gabl.Caption='0') then
      m_gabl:=0
    else
      m_gabl:=strtofloat(DBT_mab_gabl.Caption);

    if (DBT_m_check.Caption='') or(DBT_m_check.Caption='0') then
      check:=0
    else
      check:=strtofloat(DBT_m_check.Caption);

    kol_pardkht_ghabl:=check+m_gabl;

    mojodi:=Frm_gozaresh_az_sandog.mojodi_kol(sandog);

     if mojodi<StrToFloat(Edit4.Text) then
      MessageBox(Handle,pchar('„»·€ ‰ﬁœ Ê«—œ ‘œÂ «“ „ÊÃÊœÌ ›⁄·Ì ’‰œÊﬁ << '+sandog+' >> = << '+FloatToStr(mojodi)+' >> »Ì‘ — „Ì »«‘œ'),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT )
     else
     begin
      execute_eslahe_nagde_kharid(FloatToStr(kol_pardkht_ghabl),Dmlistha.ADOmohasebe_kharidkol_.AsString);
      close;
     end

    {update_bedehi_kharidar_pas_az_bedekar_shodan(FloatToStr(kol_pardkht_ghabl),DBText_t_jam.Caption);
    bedeh_talab_after_eslah;
    update_bedeh_talab_va_bedehi_kol_kharidar;}


  end;

end;

end.
