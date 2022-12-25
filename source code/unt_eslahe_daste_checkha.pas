unit unt_eslahe_daste_checkha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, SUIDBCtrls, SUIButton, ExtCtrls;

type
  Tfrm_eslahe_daste_checkha = class(TForm)
    GroupBox2: TGroupBox;
    Label4: TLabel;
    suiDBGrid2: TsuiDBGrid;
    esearch: TEdit;
    DBGarshivforosh: TDBGrid;
    DataSource3: TDataSource;
    DataSource2: TDataSource;
    G_sh_hesab: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    E_shomare_hesab_sh_hesab: TEdit;
    E_shobe_sh_hesab: TEdit;
    Label1: TLabel;
    E_bank_sh_hesab: TEdit;
    suiButton7: TsuiButton;
    suiButton6: TsuiButton;
    lanbarname: TLabel;
    L_shobe: TLabel;
    L_sh_hesab: TLabel;
    L_check_nam: TLabel;
    procedure FormShow(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure update_sh_hesab;
    procedure update_checkhaye_kharid;
    procedure suiButton7Click(Sender: TObject);
    procedure update_mavared_banki;
    procedure update_checkhaye_daryafti_forosh;
    procedure updat_daste_check;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_daste_checkha: Tfrm_eslahe_daste_checkha;

implementation

uses Untdmlistha, unt_moshkhasat_bank, unt_entekhab_check, unt_DataM_final,
  unt_main, unt_DataM_final1, unt_Dm_sp_backup;

{$R *.dfm}
procedure Tfrm_eslahe_daste_checkha.updat_daste_check;
var shobe,sh_hesab,bank:string;
begin
  bank:=E_bank_sh_hesab.Text;
  shobe:=E_shobe_sh_hesab.Text;
  sh_hesab:=E_shomare_hesab_sh_hesab.Text;

 Dmlistha.ADOQuery_daste_check.SQL.Text:='update T_daste_check set bank_shobe_sh_hesab='+
  QuotedStr(trim(bank)+' '+trim(shobe)+' '+trim(sh_hesab))+' where bank_shobe_sh_hesab='+QuotedStr(L_check_nam.Caption);
  Dmlistha.ADOQuery_daste_check.ExecSQL;
end;

procedure Tfrm_eslahe_daste_checkha.update_checkhaye_daryafti_forosh;
var shobe,sh_hesab,bank:string;
begin
  bank:=E_bank_sh_hesab.Text;
  shobe:=E_shobe_sh_hesab.Text;
  sh_hesab:=E_shomare_hesab_sh_hesab.Text;

  DataM_final.ADOQ_T_pardakht_check_forosh.SQL.Text:=' update T_pardakht_check_forosh set sh_hesab='+
  QuotedStr(trim(bank)+' '+trim(shobe)+' '+trim(sh_hesab))+' where sh_hesab='+QuotedStr(L_check_nam.Caption);
  DataM_final.ADOQ_T_pardakht_check_forosh.ExecSQL;
end;

procedure Tfrm_eslahe_daste_checkha.update_mavared_banki;
var shobe,sh_hesab,bank:string;
begin
  bank:=E_bank_sh_hesab.Text;
  shobe:=E_shobe_sh_hesab.Text;
  sh_hesab:=E_shomare_hesab_sh_hesab.Text;

  DataM_final1.ADOQ_bank2.SQL.Text:='update t_bank1 set moshakhasat_kol='+
  QuotedStr(trim(bank)+' '+trim(shobe)+' '+trim(sh_hesab))+
  ' where moshakhasat_kol='+QuotedStr(L_check_nam.Caption);
  DataM_final1.ADOQ_bank2.ExecSQL;
end;
////////
procedure Tfrm_eslahe_daste_checkha.update_checkhaye_kharid;
var shobe,sh_hesab,bank:string;
begin
  bank:=E_bank_sh_hesab.Text;
  shobe:=E_shobe_sh_hesab.Text;
  sh_hesab:=E_shomare_hesab_sh_hesab.Text;

  DataM_final.ADOQ_T_pardakht_check_kharid.SQL.Text:=' update T_pardakht_check_kharid set sh_hesab='+
  QuotedStr(trim(bank)+' '+trim(shobe)+' '+trim(sh_hesab))+' where sh_hesab='+QuotedStr(L_check_nam.Caption);
  DataM_final.ADOQ_T_pardakht_check_kharid.ExecSQL;
end;

procedure Tfrm_eslahe_daste_checkha.update_sh_hesab;
var shobe,sh_hesab,bank,id:string;
begin
    Dmlistha.ADOQuery_shomare_hesabe_banki_temp.SQL.Text:='select * from T_shomare_hesabe_banki where bank='+
    QuotedStr(trim(lanbarname.Caption))+' and shobe='+QuotedStr(trim(L_shobe.Caption))+' and sh_hesab='+QuotedStr(trim(L_sh_hesab.Caption));
    Dmlistha.ADOQuery_shomare_hesabe_banki_temp.Open;

    Dmlistha.ADOQuery_shomare_hesabe_banki_temp.First;
    while not(Dmlistha.ADOQuery_shomare_hesabe_banki_temp.Eof) do
    begin
      bank:=E_bank_sh_hesab.Text;
      shobe:=E_shobe_sh_hesab.Text;
      sh_hesab:=E_shomare_hesab_sh_hesab.Text;
      id:=Dmlistha.ADOQuery_shomare_hesabe_banki_tempid.AsString;

      Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='update T_shomare_hesabe_banki set bank='+QuotedStr(trim(bank))+
      ',sh_hesab='+QuotedStr(trim(sh_hesab))+',shobe='+
      QuotedStr(trim(shobe))+
      ',bank_shobe_sh_hesab='+QuotedStr(trim(bank)+' '+trim(shobe)+' '+trim(sh_hesab))+' where id='+id;
      Dmlistha.ADOQuery_shomare_hesabe_banki.ExecSQL;

      Dmlistha.ADOQuery_shomare_hesabe_banki_temp.Next;
    end;
end;

procedure Tfrm_eslahe_daste_checkha.FormShow(Sender: TObject);
begin
  frm_moshkhasat_bank.showbank;
  esearch.SetFocus;
  esearch.Clear;    
end;

procedure Tfrm_eslahe_daste_checkha.esearchChange(Sender: TObject);
begin
  Dmlistha.ADOQuery_bank2.Locate('name',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_eslahe_daste_checkha.suiButton6Click(Sender: TObject);
begin
if Dmlistha.ADOQuery_shomare_hesabe_banki.RecordCount > 0 then
begin
  if (trim(E_shomare_hesab_sh_hesab.Text)='')or(trim(E_shobe_sh_hesab.Text)='')or(trim(E_bank_sh_hesab.Text)='') then
    MessageBox(Handle,'äÇã ÈÇä˜ ¡ ÔÚÈå æ ÔãÇÑå ÍÓÇÈ ÈÇíÏ æÇÑÏ ÔæÏ.','ÎØÇ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
  begin
   Dmlistha.ADOQuery_bank.SQL.Text:='select * from t_bank where name='+QuotedStr(trim(E_bank_sh_hesab.Text));
   Dmlistha.ADOQuery_bank.Open;

   if Dmlistha.ADOQuery_bank.RecordCount <=0 then
    MessageBox(Handle,'äÇã ÈÇä˜ æÇÑÏ ÔÏå ÏÑ áíÓÊ äÇã ÈÇä˜åÇ æÌæÏ äÏÇÑÏ.','ÎØÇ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
   else
   begin
      Dmlistha.ADOQuery_shomare_hesabe_banki_temp.SQL.Text:='select * from T_shomare_hesabe_banki where bank='+
      QuotedStr(trim(E_bank_sh_hesab.Text))+
      ' and sh_hesab='+QuotedStr(trim(E_shomare_hesab_sh_hesab.Text))+' and shobe='+QuotedStr(trim(E_shobe_sh_hesab.Text));
      Dmlistha.ADOQuery_shomare_hesabe_banki_temp.Open;

      if Dmlistha.ADOQuery_shomare_hesabe_banki_temp.RecordCount =0 then
      begin
        frm_main.l_last_op.Caption:=' ÇÕáÇÍ ãÔÎÕÇÊ ÔãÇÑå ÍÓÇÈ '+L_sh_hesab.Caption;
        frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' ÈÇä˜ '+lanbarname.Caption+' Èå '+E_bank_sh_hesab.Text+' ÔÚÈå '+L_shobe.Caption+' Èå '+E_shobe_sh_hesab.Text+' ÔãÇÑå ÍÓÇÈ '+L_sh_hesab.Caption+' Èå '+E_shomare_hesab_sh_hesab.Text);


      Dm_sp_backup.ADOStoredProc_from_morede_banki_to_temp_morede_banki.ExecProc;

      Dm_sp_backup.ADOStoredProc_from_sh_banki_to_temp_sh_banki.ExecProc;

      Dm_sp_backup.ADOStoredProc_from_check_kharid_to_temp_check_kharid.ExecProc;

      Dm_sp_backup.ADOStoredProc_from_check_forosh_to_temp_check_forosh.ExecProc;

      Dm_sp_backup.ADOStoredProc_from_daste_check_to_temp_daste_check.ExecProc;

        update_sh_hesab;
        update_mavared_banki;
        update_checkhaye_kharid;
        updat_daste_check;
        update_checkhaye_daryafti_forosh;

      Dm_sp_backup.ADOStoredProc_delete_from_temp_morede_banki.ExecProc;

      Dm_sp_backup.ADOStoredProc_delete_from_temp_sh_banki.ExecProc;

      Dm_sp_backup.ADOStoredProc_delete_from_temp_check_kharid.ExecProc;

      Dm_sp_backup.ADOStoredProc_delete_from_temp_check_forosh.ExecProc;

      Dm_sp_backup.ADOStoredProc_delete_from_temp_daste_check.ExecProc;        
        MessageBox(Handle,'ãÔÎÕÇÊ ÌÏíÏ ÍÓÇÈ ÈÇä˜í ÇäÊÎÇÈí ĞÎíÑå ÑÏíÏ.','ÊæÌå !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);

        Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='select * from T_shomare_hesabe_banki where bank_shobe_sh_hesab like'+QuotedStr(Dmlistha.ADOQuery_bank2name.AsString+'%');
        Dmlistha.ADOQuery_shomare_hesabe_banki.Open;
     
        {if Dmlistha.ADOQuery_shomare_hesabe_banki.RecordCount >0 then
        begin
          frm_eslahe_daste_checkha.E_bank_sh_hesab.Text:=Dmlistha.ADOQuery_shomare_hesabe_bankibank.AsString;
          frm_eslahe_daste_checkha.E_shobe_sh_hesab.Text:=Dmlistha.ADOQuery_shomare_hesabe_bankishobe.AsString;
          frm_eslahe_daste_checkha.E_shomare_hesab_sh_hesab.Text:=Dmlistha.ADOQuery_shomare_hesabe_bankish_hesab.AsString;
        end
        else
        begin
          frm_eslahe_daste_checkha.E_bank_sh_hesab.Text:='';
          frm_eslahe_daste_checkha.E_shobe_sh_hesab.Text:='';
          frm_eslahe_daste_checkha.E_shomare_hesab_sh_hesab.Text:='';
        end;}
      end
      else
        MessageBox(Handle,'ÈÇä˜¡ÔÚÈå æ ÔãÇÑå ÍÓÇÈ æÇÑÏ ÔÏå ÇÒ ŞÈá ãæÌæÏ ãíÈÇÔÏ.','ÎØÇ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
   end;
  end;
end
else
  MessageBox(Handle,'ÈÇä˜¡ÔÚÈå æ ÔãÇÑå ÍÓÇÈí ÈÑÇí æíÑÇíÔ æÌæÏ äÏÇÑÏ.','ÎØÇ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
end;

procedure Tfrm_eslahe_daste_checkha.suiButton7Click(Sender: TObject);
begin
  close;
end;

end.
