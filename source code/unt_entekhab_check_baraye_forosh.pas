unit unt_entekhab_check_baraye_forosh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, SUIButton, ExtCtrls, SUIForm,
  DB;

type
  TFrm_entekhab_check_baraye_forosh = class(TForm)
    DataSource1: TDataSource;
    GroupBox4: TGroupBox;
    Label11: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    L_type: TLabel;
    suib: TsuiButton;
    suiButton6: TsuiButton;
    Edit_shomare: TEdit;
    Edit_mablagh: TEdit;
    suiButton3: TsuiButton;
    Edit_tarikh: TEdit;
    E_shomare_hesab: TEdit;
    E_shobe: TEdit;
    dbanbar: TDBLookupComboBox;
    l_sh_factore_fish: TLabel;
    procedure FormShow(Sender: TObject);
    procedure E_shomare_hesabKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_shomareKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_mablaghKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton3Click(Sender: TObject);
    function check:boolean;
    procedure suiButton6Click(Sender: TObject);
    procedure clear;
    procedure insert_check_to_temp_check_forosh;
    procedure show_temp_check_forosh;
    procedure bede_talab_temp_check_forosh;
    procedure jame_temp_check_forosh;
    procedure suibClick(Sender: TObject);
    function check_keshide_shodan_ghabl:boolean;
    procedure insert_check_to_temp_check_forosh_eslah;
    procedure bede_talab_temp_check_forosh_fishi;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_entekhab_check_baraye_forosh: TFrm_entekhab_check_baraye_forosh;

implementation

uses unt_moshkhasat_bank, unt_login, Taghvim, unt_DataM_final,
  untjens_kharid, unt_forosh_property, unt_datamodule1,
  unt_eslahe_forosh_checkha, unt_forosh_fishi,
  Unt_DataModule_gozaresh_tarkibi;

{$R *.dfm}

procedure TFrm_entekhab_check_baraye_forosh.bede_talab_temp_check_forosh_fishi;
var nagd,kol_pardakht:string;
begin
 if DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat>0 then
 begin
         if frm_forosh_fishi.Edit4.Text='' then
             nagd:='0'
         else
          nagd:=frm_forosh_fishi.Edit4.Text;
          jame_temp_check_forosh;
          kol_pardakht:=FloatToStr(StrToFloat(nagd)+DataM_final.ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol.Value);

         if StrToFloat(kol_pardakht)>DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat then
         begin
          frm_forosh_fishi.L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat);
          frm_forosh_fishi.L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat then
         begin
           frm_forosh_fishi.L_bedehkae.Caption:=FloatToStr(DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat-StrToFloat(kol_pardakht));
           frm_forosh_fishi.L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat then
         begin
          frm_forosh_fishi.L_bestankar.Caption:='0';
          frm_forosh_fishi.L_bedehkae.Caption:='0';

         end;
 end;
end;
/////////////////////

procedure TFrm_entekhab_check_baraye_forosh.insert_check_to_temp_check_forosh_eslah;
var s:string;
begin
 DataM_final.ADOQ_t_Temp_pardakht_check_forosh.SQL.Text:=' begin tran insert into t_Temp_pardakht_check_forosh(sh_hesab,tarikh'+
  ',sh_check,mablagh_check,shahrforoshande,tarikh_kharid,pass,code,shomare_factor)values('+
  QuotedStr(trim(dbanbar.Text)+' '+trim(E_shobe.Text)+' '+trim(E_shomare_hesab.Text))+','+QuotedStr(Edit_tarikh.Text)+','+
  QuotedStr(trim(Edit_shomare.Text))+','+
  trim(Edit_mablagh.Text)+','+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString)+','+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString)+','+QuotedStr('???')+','+
  DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+','+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+')'+' commit tran';
  DataM_final.ADOQ_t_Temp_pardakht_check_forosh.ExecSQL;

end;
///////////////////
function TFrm_entekhab_check_baraye_forosh.check_keshide_shodan_ghabl:boolean;
var s:string;
    st:pchar;
begin
  check_keshide_shodan_ghabl:=false;
  DataM_final.ADOQ_T_pardakht_check_forosh2.SQL.Text:='select * from T_pardakht_check_forosh   where sh_check='+trim(Edit_shomare.Text)+
  ' and sh_hesab='+QuotedStr(trim(dbanbar.Text+' '+E_shobe.Text+' '+E_shomare_hesab.Text));
  DataM_final.ADOQ_T_pardakht_check_forosh2.Open;

  if DataM_final.ADOQ_T_pardakht_check_forosh2.RecordCount >0 then
  begin
      check_keshide_shodan_ghabl:=true;
      MessageBox(Handle,'?? ?? ????? ???? ? ????? ?? ???? ??? ????? ??????? ????? ??? ??? ???','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end
  /////////////// search temp check //////////////
  else
  begin
    check_keshide_shodan_ghabl:=false;
    DataM_final.ADOQ_t_Temp_pardakht_check_forosh2.SQL.Text:='select * from t_Temp_pardakht_check_forosh   where sh_check='+trim(Edit_shomare.Text)+
    ' and sh_hesab='+QuotedStr(trim(dbanbar.Text+' '+E_shobe.Text+' '+E_shomare_hesab.Text));
    DataM_final.ADOQ_t_Temp_pardakht_check_forosh2.Open;

    if DataM_final.ADOQ_t_Temp_pardakht_check_forosh2.RecordCount >0 then
    begin
      check_keshide_shodan_ghabl:=true;
      MessageBox(Handle,'?? ?? ????? ???? ? ????? ?? ???? ??? ? ???? ???? ????? ???? ???? ??? ???','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
    end;
  end;

end;



procedure TFrm_entekhab_check_baraye_forosh.bede_talab_temp_check_forosh;
var nagd,kol_pardakht:string;
begin
 if frm_forosh_property.Lkolgeymat.Caption='????? ?????? ???? ???' then
 begin
  frm_forosh_property.hazf_hame_check;
  frm_forosh_property.Edit4.Text:='';
  show_temp_check_forosh;
  frm_forosh_property.L_bestankar.Caption:='0';
  frm_forosh_property.L_bedehkae.Caption:='0';

 end
 else
 begin
         if frm_forosh_property.Edit4.Text='' then
             nagd:='0'
         else
          nagd:=frm_forosh_property.Edit4.Text;
          jame_temp_check_forosh;
          kol_pardakht:=FloatToStr(StrToFloat(nagd)+DataM_final.ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol.Value);

         if StrToFloat(kol_pardakht)>StrToFloat(frm_forosh_property.Lkolgeymat.Caption) then
         begin
          frm_forosh_property.L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(frm_forosh_property.Lkolgeymat.Caption));
          frm_forosh_property.L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<StrToFloat(frm_forosh_property.Lkolgeymat.Caption) then
         begin
           frm_forosh_property.L_bedehkae.Caption:=FloatToStr(StrToFloat(frm_forosh_property.Lkolgeymat.Caption)-StrToFloat(kol_pardakht));
           frm_forosh_property.L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=StrToFloat(frm_forosh_property.Lkolgeymat.Caption) then
         begin
          frm_forosh_property.L_bestankar.Caption:='0';
          frm_forosh_property.L_bedehkae.Caption:='0';

         end;
 end;
end;
procedure TFrm_entekhab_check_baraye_forosh.jame_temp_check_forosh;
begin
  DataM_final.ADOQ_jame_t_Temp_pardakht_check_forosh.SQL.Text:='begin tran select  sum(mablagh_check) as jame_kol from  t_Temp_pardakht_check_forosh'+
  ' commit tran';
  DataM_final.ADOQ_jame_t_Temp_pardakht_check_forosh.Open;
end;

procedure TFrm_entekhab_check_baraye_forosh.show_temp_check_forosh;
begin
  DataM_final.ADOQ_t_Temp_pardakht_check_forosh.SQL.Text:='select * from t_Temp_pardakht_check_forosh';
  DataM_final.ADOQ_t_Temp_pardakht_check_forosh.Open;
end;

procedure TFrm_entekhab_check_baraye_forosh.insert_check_to_temp_check_forosh;
var s,code:string;
begin
 if L_type.Caption='forosh'then
 begin
  s:=frm_forosh_property.sh_fctor;
  code:=frm_forosh_property.code;
 end
 else
 begin
  s:=frm_forosh_fishi.sh_fctor;
  code:=frm_forosh_fishi.code;  
 end;

 DataM_final.ADOQ_t_Temp_pardakht_check_forosh.SQL.Text:='begin tran insert into t_Temp_pardakht_check_forosh(sh_hesab,tarikh'+
  ',sh_check,mablagh_check,shahrforoshande,tarikh_kharid,pass,code,shomare_factor)values('+
  QuotedStr(trim(dbanbar.Text)+' '+trim(E_shobe.Text)+' '+trim(E_shomare_hesab.Text))+','+QuotedStr(Edit_tarikh.Text)+','+
  QuotedStr(trim(Edit_shomare.Text))+','+
  trim(Edit_mablagh.Text)+','+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+','+QuotedStr(frm_forosh_property.tarikh)+','+QuotedStr('???')+','+
  code+','+s+')'+' commit tran';

  DataM_final.ADOQ_t_Temp_pardakht_check_forosh.ExecSQL;

end;

procedure TFrm_entekhab_check_baraye_forosh.clear;
begin
  E_shomare_hesab.Text:='';
  E_shobe.Text:='';
  Edit_shomare.Text:='';
  Edit_mablagh.Text:='';
end;

function TFrm_entekhab_check_baraye_forosh.check:boolean;
begin
  check:=true;
if Edit_mablagh.Text='' then
  Edit_mablagh.Text:='0';

  if(dbanbar.Text='')or(E_shomare_hesab.Text='')or(E_shobe.Text='')or(Edit_shomare.Text='')or(StrToFloat(Edit_mablagh.Text)=0)or(Edit_tarikh.Text='')then
  begin
    check:=false;
    MessageBox(Handle,'??? ??????? ????? ??? ???? ???? ????','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end;
end;

procedure TFrm_entekhab_check_baraye_forosh.FormShow(Sender: TObject);
begin
  frm_moshkhasat_bank.showbank;
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;  
  Edit_tarikh.Text:=Frm_login.Egettarikh.Text;
  clear;
end;

procedure TFrm_entekhab_check_baraye_forosh.E_shomare_hesabKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_entekhab_check_baraye_forosh.Edit_shomareKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_entekhab_check_baraye_forosh.Edit_mablaghKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_entekhab_check_baraye_forosh.suiButton3Click(
  Sender: TObject);
begin
  _taghvim.ShowModal;
  Edit_tarikh.Text:=_taghvim._str_date;
  _taghvim.Close;
end;

procedure TFrm_entekhab_check_baraye_forosh.suiButton6Click(
  Sender: TObject);
begin
  if check then
  begin
    if (Frm_entekhab_check_baraye_forosh.L_type.Caption='forosh') or (Frm_entekhab_check_baraye_forosh.L_type.Caption='forosh fishi') then
    begin
    if (L_type.Caption='forosh') then
     if (frm_forosh_property.Lkolgeymat.Caption<>'????? ?????? ???? ???') then
      begin
        if not check_keshide_shodan_ghabl then
        begin
          insert_check_to_temp_check_forosh;
          //sleep(3000);
          jame_temp_check_forosh;
          show_temp_check_forosh;

          //sleep(3000);
          bede_talab_temp_check_forosh;
          close;
        end;
      end
      else
      begin
        MessageBox(Handle,'???? ???? ???? ???? ???? ???? ??? !','???! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        clear;
        close;
      end;

     if (L_type.Caption='forosh fishi')  then
     if (frm_forosh_fishi.Caption<>'????? ?????? ???? ???')then
      begin
        if not check_keshide_shodan_ghabl then
        begin
          insert_check_to_temp_check_forosh;
          //sleep(3000);
          jame_temp_check_forosh;
          show_temp_check_forosh;

          //sleep(3000);
          bede_talab_temp_check_forosh_fishi;
          close;
        end;
      end
      else
      begin
        MessageBox(Handle,'???? ???? ???? ???? ???? ???? ??? !','???! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        clear;
        close;
      end;
     end
     else
     begin
     if not check_keshide_shodan_ghabl then
      begin
        insert_check_to_temp_check_forosh_eslah;
        //sleep(3000);
        show_temp_check_forosh;
        jame_temp_check_forosh;
        //sleep(3000);
        frm_eslahe_forosh_checkha.bede_talab_temp_check_forosh_eslah;
        clear;
        close;
      end;
     end;
  end;
  
end;

procedure TFrm_entekhab_check_baraye_forosh.suibClick(Sender: TObject);
begin
  close;
end;

end.
