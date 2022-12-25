unit unt_moshkhasat_bank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, SUIGroupBox, SUIButton, StdCtrls, Grids, DBGrids,
  SUIDBCtrls, ExtCtrls, SUIForm, DB, te_controls,strutils;

type
    TReplaceFlags = set of (rfReplaceAll, rfIgnoreCase);
  Tfrm_moshkhasat_bank = class(TForm)
    DataSource2: TDataSource;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    suiDBGrid2: TsuiDBGrid;
    esearch: TEdit;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    l: TLabel;
    lanbarname: TLabel;
    Label1: TLabel;
    Etelephon: TEdit;
    efax: TEdit;
    suiButton2: TsuiButton;
    Eadress: TTeMemo;
    GroupBox6: TGroupBox;
    DBGarshivforosh: TDBGrid;
    DataSource3: TDataSource;
    E_bank: TEdit;
    procedure showbank;
    procedure updatemoshakhasat_bank;
    procedure show;
    procedure FormShow(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure EtelephonKeyPress(Sender: TObject; var Key: Char);
    procedure efaxKeyPress(Sender: TObject; var Key: Char);
    procedure shomare_hesabe_banki;
    procedure update_checkhaye_kharid;
    procedure update_mavared_banki;
    procedure updat_daste_check;
    procedure update_checkhaye_daryafti_forosh;
    procedure execute_eslahe_bank_stored_procedure;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_moshkhasat_bank: Tfrm_moshkhasat_bank;

implementation

uses Untdmlistha, Untdmanbarexit, Unt_dmanbar, unt_entekhab_check,
  unt_DataM_final, unt_main, unt_DataM_final1, unt_DataM_sp,
  unt_Dm_sp_backup;

{$R *.dfm}
procedure Tfrm_moshkhasat_bank.execute_eslahe_bank_stored_procedure;
begin
    //DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[0].Value:=
end;

///////////

procedure Tfrm_moshkhasat_bank.update_checkhaye_daryafti_forosh;
var shobe,sh_hesab,bank:string;
begin
  bank:=E_bank.Text;
  shobe:=Dmlistha.ADOQuery_shomare_hesabe_banki_tempshobe.AsString;
  sh_hesab:=Dmlistha.ADOQuery_shomare_hesabe_banki_tempsh_hesab.AsString;

  DataM_final.ADOQ_T_pardakht_check_forosh.SQL.Text:=' update T_pardakht_check_forosh set sh_hesab='+
  QuotedStr(trim(bank)+' '+trim(shobe)+' '+trim(sh_hesab))+' where sh_hesab like'+QuotedStr(lanbarname.Caption+'%');
  DataM_final.ADOQ_T_pardakht_check_forosh.ExecSQL;
end;

procedure Tfrm_moshkhasat_bank.updat_daste_check;
var shobe,sh_hesab,bank:string;
begin
  bank:=E_bank.Text;
  shobe:=Dmlistha.ADOQuery_shomare_hesabe_banki_tempshobe.AsString;
  sh_hesab:=Dmlistha.ADOQuery_shomare_hesabe_banki_tempsh_hesab.AsString;
 Dmlistha.ADOQuery_daste_check.SQL.Text:='update T_daste_check set bank_shobe_sh_hesab='+
  QuotedStr(trim(bank)+' '+trim(shobe)+' '+trim(sh_hesab))+' where bank_shobe_sh_hesab like'+QuotedStr(lanbarname.Caption+'%');
  Dmlistha.ADOQuery_daste_check.ExecSQL;
end;

procedure Tfrm_moshkhasat_bank.update_mavared_banki;
var
    bank,feli,bagie:string;
    flags:TReplaceFlags;
begin
  flags:=[];
  feli:=lanbarname.Caption;

  DataM_final1.ADOQ_bank3.SQL.Text:='select * from t_bank1 where moshakhasat_kol like'+
  QuotedStr(lanbarname.Caption+'%');
  DataM_final1.ADOQ_bank3.Open;

  DataM_final1.ADOQ_bank3.First;

  while not DataM_final1.ADOQ_bank3.Eof do
  begin
    bank:=E_bank.Text;
    bagie:=DataM_final1.ADOQ_bank3moshakhasat_kol.AsString;


    bagie:=AnsiReplaceText(bagie,feli,bank);

      DataM_final1.ADOQ_bank2.SQL.Text:='update t_bank1 set moshakhasat_kol='+
      QuotedStr(bagie)+
      ' where moshakhasat_kol like '+QuotedStr(feli+'%');
      //' where moshakhasat_kol='+QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_banki_tempbank_shobe_sh_hesab.AsString);
      DataM_final1.ADOQ_bank2.ExecSQL;

    DataM_final1.ADOQ_bank3.Next;
  end;
end;
/////////////
procedure Tfrm_moshkhasat_bank.update_checkhaye_kharid;
var shobe,sh_hesab,bank:string;
begin
  bank:=E_bank.Text;
  shobe:=Dmlistha.ADOQuery_shomare_hesabe_banki_tempshobe.AsString;
  sh_hesab:=Dmlistha.ADOQuery_shomare_hesabe_banki_tempsh_hesab.AsString;

  DataM_final.ADOQ_T_pardakht_check_kharid.SQL.Text:=' update T_pardakht_check_kharid set sh_hesab='+
  QuotedStr(trim(bank)+' '+trim(shobe)+' '+trim(sh_hesab))+' where sh_hesab like'+QuotedStr(lanbarname.Caption+'%');
  DataM_final.ADOQ_T_pardakht_check_kharid.ExecSQL;
end;

procedure Tfrm_moshkhasat_bank.shomare_hesabe_banki;
var shobe,sh_hesab,bank,id:string;
begin
    Dmlistha.ADOQuery_shomare_hesabe_banki_temp.SQL.Text:='select * from T_shomare_hesabe_banki where bank='+QuotedStr(lanbarname.Caption);
    Dmlistha.ADOQuery_shomare_hesabe_banki_temp.Open;

    Dmlistha.ADOQuery_shomare_hesabe_banki_temp.First;
    while not(Dmlistha.ADOQuery_shomare_hesabe_banki_temp.Eof) do
    begin
      bank:=trim(E_bank.Text);
      shobe:=Dmlistha.ADOQuery_shomare_hesabe_banki_tempshobe.AsString;
      sh_hesab:=Dmlistha.ADOQuery_shomare_hesabe_banki_tempsh_hesab.AsString;
      id:=Dmlistha.ADOQuery_shomare_hesabe_banki_tempid.AsString;

      Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='update T_shomare_hesabe_banki set bank='+QuotedStr(bank)+
      ',sh_hesab='+QuotedStr(sh_hesab)+',shobe='+
      QuotedStr(shobe)+
      ',bank_shobe_sh_hesab='+QuotedStr(trim(bank)+' '+trim(shobe)+' '+trim(sh_hesab))+' where id='+id;
      Dmlistha.ADOQuery_shomare_hesabe_banki.ExecSQL;

      Dmlistha.ADOQuery_shomare_hesabe_banki_temp.Next;
    end;
end;

procedure Tfrm_moshkhasat_bank.show;
begin
  frm_moshkhasat_bank.lanbarname.Caption:=Dmlistha.ADOQuery_bank2name.AsString ;
  frm_moshkhasat_bank.E_bank.Text:=Dmlistha.ADOQuery_bank2name.AsString;
  frm_moshkhasat_bank.Etelephon.Text:=Dmlistha.ADOQuery_bank2telephon.AsString;
  frm_moshkhasat_bank.Eadress.Text:=Dmlistha.ADOQuery_bank2address.AsString;
  frm_moshkhasat_bank.Efax.Text:=Dmlistha.ADOQuery_bank2fax.AsString;
end;
procedure Tfrm_moshkhasat_bank.updatemoshakhasat_bank;
begin
  Dmlistha.ADOQuery_bank.SQL.Text:='update t_bank set name='+QuotedStr(trim(E_bank.Text))+',address='+QuotedStr(Eadress.Text)+',telephon='+QuotedStr(Etelephon.Text)+
  ',fax='+QuotedStr(efax.text)+' where name='+QuotedStr(lanbarname.Caption);
  Dmlistha.ADOQuery_bank.ExecSQL;

end;
procedure Tfrm_moshkhasat_bank.showbank;
begin
    Dmlistha.ADOQuery_bank2.SQL.Text:='select * from t_bank order by name';
    Dmlistha.ADOQuery_bank2.Open;
end;

procedure Tfrm_moshkhasat_bank.FormShow(Sender: TObject);
begin
  showbank;
  show;
  esearch.Clear;  
  esearch.SetFocus;
end;

procedure Tfrm_moshkhasat_bank.suiButton2Click(Sender: TObject);
 var st:pchar;
begin
if Dmlistha.ADOQuery_bank2.RecordCount <=0 then
  MessageBox(Handle,'—òÊ—œÌ »—«Ì »—Ê“ —”«‰Ì ÊÃÊœ ‰œ«—œ',' ÊÃÂ!',MB_OK or MB_ICONEXCLAMATION  or MB_RTLREADING or MB_RIGHT)
else
begin
 if trim(E_bank.Text)='' then
    MessageBox(Handle,'‰«„ »«‰ò —« Ê«—œ ‰„«ÌÌœ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION  or MB_RTLREADING or MB_RIGHT)
 else
begin///1
    Dmlistha.ADOQuery_bank2.SQL.Text:='select * from T_bank where name='+QuotedStr(trim(E_bank.Text));
    Dmlistha.ADOQuery_bank2.Open;

if Dmlistha.ADOQuery_bank2.RecordCount > 0 then
begin
  MessageBox(Handle,'»«‰ò Ê«—œ ‘œÂ ﬁ»·¬ À»  ‘œÂ «” .',' ÊÃÂ!',MB_OK or MB_ICONEXCLAMATION  or MB_RTLREADING or MB_RIGHT);
  showbank;
  show;
end
else
begin
  st:=pchar('„‘Œ’«  »«‰ò  << '+lanbarname.Caption+' >> »Â —Ê“—”«‰Ì ‘Êœ ø');
  if MessageBox(Handle,st,'',MB_YESNO or MB_ICONQUESTION or MB_RTLREADING or MB_RIGHT)=idyes then
    begin
      Dm_sp_backup.ADOStoredProc_from_bank_to_temp_bank.ExecProc;

      Dm_sp_backup.ADOStoredProc_from_morede_banki_to_temp_morede_banki.ExecProc;

      Dm_sp_backup.ADOStoredProc_from_sh_banki_to_temp_sh_banki.ExecProc;

      Dm_sp_backup.ADOStoredProc_from_check_kharid_to_temp_check_kharid.ExecProc;

      Dm_sp_backup.ADOStoredProc_from_check_forosh_to_temp_check_forosh.ExecProc;

      Dm_sp_backup.ADOStoredProc_from_daste_check_to_temp_daste_check.ExecProc;

      updatemoshakhasat_bank;
      update_mavared_banki;
      shomare_hesabe_banki;
      update_checkhaye_kharid;
      update_checkhaye_daryafti_forosh;
      updat_daste_check;

      Dm_sp_backup.ADOStoredProc_delete_from_temp_bank.ExecProc;

      Dm_sp_backup.ADOStoredProc_delete_from_temp_morede_banki.ExecProc;

      Dm_sp_backup.ADOStoredProc_delete_from_temp_sh_banki.ExecProc;

      Dm_sp_backup.ADOStoredProc_delete_from_temp_check_kharid.ExecProc;

      Dm_sp_backup.ADOStoredProc_delete_from_temp_check_forosh.ExecProc;

      Dm_sp_backup.ADOStoredProc_delete_from_temp_daste_check.ExecProc;




      frm_main.l_last_op.Caption:=' «’·«Õ „‘Œ’«  »«‰ò '+lanbarname.Caption;
      frm_main.sabte_amaliat(frm_main.l_last_op.Caption+'  €ÌÌ— ‰«„ «“ '+lanbarname.Caption+' »Â '+E_bank.Text);
      showbank;
      show;
      MessageBox(Handle,'„‘Œ’«  »Â —Ê“ —”«‰Ì ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
    end
  else
    MessageBox(Handle,'„‘Œ’«  »Â —Ê“ —”«‰Ì ‰‘œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
end;
end;///1
end;
end;

procedure Tfrm_moshkhasat_bank.esearchChange(Sender: TObject);
begin
  Dmlistha.ADOQuery_bank2.Locate('name',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_moshkhasat_bank.EtelephonKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_moshkhasat_bank.efaxKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
