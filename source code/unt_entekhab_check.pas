unit unt_entekhab_check;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, SUIButton, DBCtrls, StdCtrls, SUIForm, DB,
  Grids, DBGrids;

type
  Tfrm_entekhab_check = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    GroupBox4: TGroupBox;
    Label11: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    l_type: TLabel;
    suib: TsuiButton;
    suiButton6: TsuiButton;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    DBText2: TDBText;
    Label7: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    DBText6: TDBText;
    DBText_id: TDBText;
    GroupBox7: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Edit_shomare: TEdit;
    Edit_mablagh: TEdit;
    suiButton3: TsuiButton;
    Edit_tarikh: TEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    DBGarshivforosh: TDBGrid;
    l_taeed_check_jadid: TLabel;
    procedure FormShow(Sender: TObject);
    procedure show_daste_checkhaye_bank(x:integer;s:string);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure Edit_shomareKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_mablaghKeyPress(Sender: TObject; var Key: Char);
    function check:boolean;
    procedure suiButton6Click(Sender: TObject);
    function check_keshide_shodan_ghabl:boolean;
    procedure clear;
    procedure suibClick(Sender: TObject);
    function mahdode_shomare:boolean;
    procedure suiButton5Click(Sender: TObject);
    procedure insert_check_to_temp_check_kharid;
    procedure show_temp_check_kharid;
    procedure jame_temp_check_kharid;
    procedure bede_talab_temp_check_kharid;
    function check_keshide_shodan_ghabl_temp:boolean;
    procedure execute_ezafe_check(mab_gabl,t_jam:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_entekhab_check: Tfrm_entekhab_check;

implementation

uses Untdmlistha, unt_moshkhasat_bank, Taghvim, untjens_kharid,
  unt_DataM_final, unt_datamodule1, unt_eslahe_kharid_checkha, unt_main,
  unt_datam_sp_eslahe_forosh, unt_Dm_zayeat_marjoei, unt_DataM_forosh,
  Unt_add_bank1, unt_eslah_kharid, unt_Dm_sp_backup, unt_DataM_final1;

{$R *.dfm}
procedure Tfrm_entekhab_check.execute_ezafe_check(mab_gabl,t_jam:string);
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
    end;

      check:=check+StrToFloat(Edit_mablagh.Text);    

    if (frm_eslahe_kharid_checkha.DBT_mab_gabl.Caption='0') or (frm_eslahe_kharid_checkha.DBT_mab_gabl.Caption='') then
             nagd:='0'
         else
            nagd:=frm_eslahe_kharid_checkha.DBT_mab_gabl.Caption;

          kol_pardakht:=FloatToStr(StrToFloat(nagd)+check);

         if StrToFloat(kol_pardakht)>StrToFloat(t_jam) then
         begin
          frm_eslahe_kharid_checkha.L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(t_jam));
          frm_eslahe_kharid_checkha.L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<StrToFloat(t_jam) then
         begin
           frm_eslahe_kharid_checkha.L_bedehkae.Caption:=FloatToStr(StrToFloat(t_jam)-StrToFloat(kol_pardakht));
           frm_eslahe_kharid_checkha.L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=StrToFloat(t_jam) then
         begin
          frm_eslahe_kharid_checkha.L_bestankar.Caption:='0';
          frm_eslahe_kharid_checkha.L_bedehkae.Caption:='0';
         end;
///////////////////////////////////////////////
par:=0;



 Dm_sp_backup.ADOStoredProc_from_daste_check_to_temp_daste_check.ExecProc;
 //frm_add_bank1.execute_morede_banki_backup_stored_procedure;
///////////////////////////////////////////////////////////////////////

   { frm_add_bank1.sandog:='';

    frm_add_bank1.e_bedehkar.Text:=Edit_mablagh.Text;

    frm_add_bank1.RadioGroup1.ItemIndex:=1;

    frm_add_bank1.sharh:=' Å—œ«Œ  çò »—«Ì Œ—Ìœ ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' «“ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;

    frm_add_bank1.L_variz_az_sandog.Caption:='no';

    //frm_add_bank1.l_sh_hesab.Caption:=DataM_final.ADOQ_t_Temp_pardakht_check_kharidsh_hesab.AsString;
    
    frm_add_bank1.e_sh_fish.Text:=Edit_shomare.Text;

    frm_add_bank1.tarikh:=DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString;

    frm_add_bank1.bank_shobe_sh_hesab:=Dmlistha.ADOQuery_daste_checkbank_shobe_sh_hesab.AsString;

    frm_add_bank1.time_:=DataM_final.ADOQ_t_sh_facrorhaye_kharidtime.AsString;
    
    frm_add_bank1.L_type2.Caption:='pardakhte_check_kharid';

    frm_add_bank1.bank_sh:=Dmlistha.ADOQuery_daste_checkbank_shobe_sh_hesab.AsString;

    frm_add_bank1.Button1.Click; }
       

/////////////////////////////////////////////////////////
    frm_main.l_last_op.Caption:=' «’·«Õ çòÂ«Ì Å—œ«Œ Ì »Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString+' »—«Ì ›«ò Ê— ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;

///////////////////////////////////////////////
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[0].Value:=bedeh_eslah;//@bedeh_eslah float,
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[1].Value:=talab_eslah;//@talab_eslah float,

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[2].Value:=frm_eslahe_kharid_checkha.L_bedehkae.Caption;//@bedehkar float,
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[3].Value:=frm_eslahe_kharid_checkha.L_bestankar.Caption;//@bestankar float,

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[4].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;//@code_kharidar float,

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[5].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;//@sh_factor float,
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[6].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString;//@tatikh_forosh nvarchar(12),

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[7].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@shahrforoshande nvarchar(50),

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[8].Value:=par;//@par float,

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[9].Value:=temp;//@temp float,

  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[10].Value:=frm_main.l_last_op.Caption+' «“ '+DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsString+' »Â '+DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol.AsString;//@amaliat nvarchar(1000),
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[11].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[12].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[13].Value:=Dmlistha.ADOQuery_daste_checkbank_shobe_sh_hesab.AsString;//@bank_shobe_sh_hesab nvarchar(70),
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[14].Value:=Edit_shomare.Text;//@sh_check float,
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[15].Value:=Edit_mablagh.Text;//@mablagh_check float
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.Parameters[16].Value:=Edit_tarikh.Text;//@tarikh_check nvarchar(12)
  datam_sp_eslahe_forosh.ADOStoredProc_kharid_check_ezafe.ExecProc;

  Dm_sp_backup.ADOStoredProc_delete_from_temp_daste_check.ExecProc;
  //frm_add_bank1.execute_delet_from_morede_banki_backup_stored_procedure;  

////////////////////////////////////////////////
  MessageBox(Handle,pchar('çò ÃœÌœ –ŒÌ—Â ‘œ'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING)
////////////////////////////////////////////////
end;
///////////////////////////////////////////////////////////////////////////////
function Tfrm_entekhab_check.check_keshide_shodan_ghabl_temp:boolean;
var s:string;
    st:pchar;
begin
  s:=trim(Edit_shomare.Text);
  DataM_final.ADOQ_t_Temp_pardakht_check_kharid2.SQL.Text:='select * from t_Temp_pardakht_check_kharid   where sh_check='+s+' and sh_hesab='+QuotedStr(DBText2.Caption);
  DataM_final.ADOQ_t_Temp_pardakht_check_kharid2.Open;
  if DataM_final.ADOQ_t_Temp_pardakht_check_kharid2.RecordCount >0 then
  begin
      check_keshide_shodan_ghabl_temp:=true;
      st:=pchar('»—êÂ çò «“ ‘„«—Â Õ”«»  << '+DBText2.Caption+' »« ‘„«—Â  '+Edit_shomare.Text+' >> »—«Ì ›«ò Ê— Œ—Ìœ Ã«—Ì Å—œ«Œ  ê—œÌœÂ «” .');
      MessageBox(Handle,st,'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
  end
  else
    check_keshide_shodan_ghabl_temp:=false;
end;

procedure Tfrm_entekhab_check.bede_talab_temp_check_kharid;
var nagd,kol_pardakht:string;
begin
 if frmjens_kharid.Lkolgeymat.Caption='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' then
 begin
  frmjens_kharid.hazf_hame_check;
  frmjens_kharid.Edit4.Text:='';
  show_temp_check_kharid;
  frmjens_kharid.L_bestankar.Caption:='0';
  frmjens_kharid.L_bedehkae.Caption:='0';

 end
 else
 begin
         if frmjens_kharid.Edit4.Text='' then
             nagd:='0'
         else
          nagd:=frmjens_kharid.Edit4.Text;
          jame_temp_check_kharid;
          kol_pardakht:=FloatToStr(StrToFloat(nagd)+DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol.AsFloat);

         if StrToFloat(kol_pardakht)>StrToFloat(frmjens_kharid.Lkolgeymat.Caption) then
         begin
          frmjens_kharid.L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(frmjens_kharid.Lkolgeymat.Caption));
          frmjens_kharid.L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<StrToFloat(frmjens_kharid.Lkolgeymat.Caption) then
         begin
           frmjens_kharid.L_bedehkae.Caption:=FloatToStr(StrToFloat(frmjens_kharid.Lkolgeymat.Caption)-StrToFloat(kol_pardakht));
           frmjens_kharid.L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=StrToFloat(frmjens_kharid.Lkolgeymat.Caption) then
         begin
          frmjens_kharid.L_bestankar.Caption:='0';
          frmjens_kharid.L_bedehkae.Caption:='0';

         end;
 end;
end;
procedure Tfrm_entekhab_check.jame_temp_check_kharid;
begin
  DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharid.SQL.Text:='begin tran select  sum(mablagh_check) as jame_kol from  t_Temp_pardakht_check_kharid'+' commit tran';
  DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharid.Open;
end;
procedure Tfrm_entekhab_check.show_temp_check_kharid;
begin
  DataM_final.ADOQ_t_Temp_pardakht_check_kharid.SQL.Text:='select * from t_Temp_pardakht_check_kharid';
  DataM_final.ADOQ_t_Temp_pardakht_check_kharid.Open;
end;
procedure Tfrm_entekhab_check.insert_check_to_temp_check_kharid;
begin

 DataM_final.ADOQ_t_Temp_pardakht_check_kharid.SQL.Text:='begin tran insert into t_Temp_pardakht_check_kharid(sh_hesab,tarikh'+
  ',sh_check,mablagh_check,shahrforoshande,tarikh_kharid)values('+
  QuotedStr(DBText2.Caption)+','+QuotedStr(Edit_tarikh.Text)+','+
  QuotedStr(trim(Edit_shomare.Text))+','+
  trim(Edit_mablagh.Text)+','+QuotedStr('')+','+QuotedStr('')+') '+ ' commit tran';

  DataM_final.ADOQ_t_Temp_pardakht_check_kharid.ExecSQL;


end;
function Tfrm_entekhab_check.mahdode_shomare:boolean;
var down,up:integer;
    st:pchar;
begin
  down:=Dmlistha.ADOQuery_daste_checkdown.AsInteger;
  up:=Dmlistha.ADOQuery_daste_checkup.AsInteger; 
  if  (StrToInt(Edit_shomare.Text)< down) or (StrToInt(Edit_shomare.Text)>up)then
  begin
    mahdode_shomare:=true;
    st:=pchar('‘„«—Â »—êÂ çò  =  '+Edit_shomare.Text+ ' œ— „ÕœÊœÂ „Ã«“ << «“ ‘„«—Â '+ DBText3.Caption+'  « ‘„«—Â '+ DBText4.Caption+' >> ‰„Ì »«‘œ');
    MessageBox(Handle,st,'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
  end
  else
    mahdode_shomare:=false;

end;
procedure Tfrm_entekhab_check.clear;
begin
  Edit_shomare.Text:='';
  Edit_mablagh.Text:='';
  Edit_tarikh.Text:='';
end;
function Tfrm_entekhab_check.check_keshide_shodan_ghabl:boolean;
var s:string;
    st:pchar;
begin
  s:=trim(Edit_shomare.Text);
  DataM_final.ADOQ_T_pardakht_check_kharid2.SQL.Text:='select * from T_pardakht_check_kharid   where sh_check='+s+' and sh_hesab='+QuotedStr(DBText2.Caption);
  DataM_final.ADOQ_T_pardakht_check_kharid2.Open;
  if DataM_final.ADOQ_T_pardakht_check_kharid2.RecordCount >0 then
  begin
      check_keshide_shodan_ghabl:=true;
      st:=pchar('»—êÂ çò «“ ‘„«—Â Õ”«»  << '+DBText2.Caption+' »« ‘„«—Â  '+Edit_shomare.Text+' >> ﬁ»·¬ »Â ›—Ê‘‰œÂ << '+DataM_final.ADOQ_T_pardakht_check_kharid2shahrforoshande.AsString+' >> œ—  «—ÌŒ << '+DataM_final.ADOQ_T_pardakht_check_kharid2tarikh.AsString+' >> Å—œ«Œ  ê—œÌœÂ «” .');
      MessageBox(Handle,st,'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
  end
  else
    check_keshide_shodan_ghabl:=false;
end;
function Tfrm_entekhab_check.check;
begin
if Edit_mablagh.Text='' then
  Edit_mablagh.Text:='0';

   if (DBLookupComboBox1.Text='') or (Edit_shomare.Text='')or
      (StrToFloat(Edit_mablagh.Text)=0) or (Edit_tarikh.Text='')or(Dmlistha.ADOQuery_daste_check.RecordCount=0)then
      begin
        check:=false;
        MessageBox(Handle,'›Ì·œÂ«Ì ” «—Â œ«— Õ „¬»«Ìœ Å—‘Ê‰œ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
      end
      else
        check:=true;
end;
procedure Tfrm_entekhab_check.show_daste_checkhaye_bank(x:integer;s:string);
begin

  if trim(s)<>'' then
   Dmlistha.ADOQuery_daste_check.SQL.Text:='select * from t_daste_check where bank_shobe_sh_hesab like '+QuotedStr(s+'%')
  else
   Dmlistha.ADOQuery_daste_check.SQL.Text:='select * from t_daste_check where bank_shobe_sh_hesab like '+QuotedStr('-----------------------1'+'%');
  Dmlistha.ADOQuery_daste_check.Open;

 
end;

procedure Tfrm_entekhab_check.FormShow(Sender: TObject);
begin
  l_taeed_check_jadid.Caption:='no';
  frm_moshkhasat_bank.showbank;
  frm_entekhab_check.show_daste_checkhaye_bank(0,DBLookupComboBox1.Text);
end;

procedure Tfrm_entekhab_check.DBLookupComboBox1Click(Sender: TObject);
begin
 frm_entekhab_check.show_daste_checkhaye_bank(0,DBLookupComboBox1.Text);
end;

procedure Tfrm_entekhab_check.suiButton3Click(Sender: TObject);
begin
  _taghvim.ShowModal;
  Edit_tarikh.Text:=_taghvim._str_date;
  _taghvim.Close;
end;

procedure Tfrm_entekhab_check.Edit_shomareKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_entekhab_check.Edit_mablaghKeyPress(Sender: TObject;
  var Key: Char);
begin
       if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_entekhab_check.suiButton6Click(Sender: TObject);
var nagd,check_,kol_pardkht_ghabl,mojodi_heasb:real;
begin
   if not check then
    exit;

  DataM_final1.ADOQ_bank2.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
  QuotedStr(Dmlistha.ADOQuery_daste_checkbank_shobe_sh_hesab.AsString)+' and sh_fish='+
  Edit_shomare.Text;
  DataM_final1.ADOQ_bank2.Open;

  if DataM_final1.ADOQ_bank2.RecordCount>0 then
  begin
    MessageBox(Handle,pchar('›Ì‘ / çò »« ‘„«—Â Ê«—œ ‘œÂ œ— „Ê«—œ »«‰òÌ ÊÃÊœ œ«—œ'),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
    exit;
  end;


 { mojodi_heasb:=0;

  DataM_forosh.ADOQ_mande_bank.SQL.Text:='select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
  QuotedStr(Dmlistha.ADOQuery_daste_checkbank_shobe_sh_hesab.AsString);
  DataM_forosh.ADOQ_mande_bank.Open;

  mojodi_heasb:=DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat;  }

  jame_temp_check_kharid;

      if not mahdode_shomare then
      begin
       if l_type.Caption='kharid' then
       begin//3
        if frmjens_kharid.Lkolgeymat.Caption<>'«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ' then
        begin //2
        if not check_keshide_shodan_ghabl_temp then
        begin//4
          if not check_keshide_shodan_ghabl then
          begin //1
             {if mojodi_heasb<(StrToFloat(Edit_mablagh.Text)+DataM_final.ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol.AsFloat) then
             begin
              MessageBox(Handle,pchar(' „»·€ Ê«—œ ‘œÂ »—«Ì çò° «“ „ÊÃÊœÌ ‘„«—Â Õ”«» «‰ Œ«»Ì =  '+FloatToStr(mojodi_heasb)+' »Ì‘ — „Ì »«‘œ. Êﬁ Ì òÂ „ÊÃÊœÌ Õ”«» «›“«Ì‘ Ì«»œ »ÿÊ—Ì òÂ » Ê«‰ „»·€ «Ì‰ çò —« «“ ¬‰ ò„ ò—œ° „Ì  Ê«‰Ìœ «“ ﬁ”„  " «’·«Õ Œ—Ìœ - «’·«Õ çòÂ« " çò —« À»  ‰„«ÌÌœ'),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
              exit;
             end; }
            insert_check_to_temp_check_kharid;
            //sleep(3000);
            jame_temp_check_kharid;
            show_temp_check_kharid;

            //sleep(3000);
            bede_talab_temp_check_kharid;
            clear;
            Close;
          end;//1
        end;//4
        end//2
        else
          MessageBox(Handle,'Â‰Ê“ Ã‰” Œ—Ìœ«—Ì ‘œÂ Ê«—œ ‰‘œÂ «”  !','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
       end//3
       else
       begin//11
        if not check_keshide_shodan_ghabl_temp then
        begin //10
         if not check_keshide_shodan_ghabl then
         begin//9

         {if mojodi_heasb<StrToFloat(Edit_mablagh.Text) then
         begin
          MessageBox(Handle,pchar(' „»·€ Ê«—œ ‘œÂ »—«Ì çò° «“ „ÊÃÊœÌ ‘„«—Â Õ”«» «‰ Œ«»Ì =  '+FloatToStr(mojodi_heasb)+' »Ì‘ — „Ì »«‘œ. Êﬁ Ì òÂ „ÊÃÊœÌ Õ”«» «›“«Ì‘ Ì«»œ »ÿÊ—Ì òÂ » Ê«‰ „»·€ «Ì‰ çò —« «“ ¬‰ ò„ ò—œ° „Ì  Ê«‰Ìœ «“ ﬁ”„  " «’·«Õ Œ—Ìœ - «’·«Õ çòÂ« " çò —« À»  ‰„«ÌÌœ'),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
          exit;
         end; }

          if frm_eslahe_kharid_checkha.DBT_mab_gabl.Caption='' then
            nagd:=0
          else
            nagd:=StrToFloat(frm_eslahe_kharid_checkha.DBT_mab_gabl.Caption);

          if DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsString='' then
            check_:=0
          else
            check_:=DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsFloat;

          kol_pardkht_ghabl:=nagd+check_;


          execute_ezafe_check(FloatToStr(kol_pardkht_ghabl),Dmlistha.ADOmohasebe_kharidkol_.AsString);

          //l_taeed_check_jadid.Caption:='yes';

          clear;
          Close;
         end//9
         else
          begin
              {show_temp_check_kharid;
              frm_eslahe_kharid_checkha.bede_talab_temp_check_forosh_eslah;}
          end;
        end//10
        else
          begin
              {show_temp_check_kharid;
              frm_eslahe_kharid_checkha.bede_talab_temp_check_forosh_eslah; }
          end;
       end;//11
      end;
end;

procedure Tfrm_entekhab_check.suibClick(Sender: TObject);
begin
  clear;
  close;
end;

procedure Tfrm_entekhab_check.suiButton5Click(Sender: TObject);
begin
 clear;
end;

end.
