unit unt_daste_check_jadid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, ExtCtrls, SUIForm, DB, DBCtrls;

type
  Tfrm_daste_check_jadid = class(TForm)
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    E_shomare_hesab: TEdit;
    suiButton7: TsuiButton;
    suiButton6: TsuiButton;
    dbanbar: TDBLookupComboBox;
    E_shobe: TEdit;
    procedure FormShow(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure shomare_hesab;
    function check:boolean;
    procedure suiButton6Click(Sender: TObject);
    procedure E_shomare_hesabKeyPress(Sender: TObject; var Key: Char);
    procedure E_downKeyPress(Sender: TObject; var Key: Char);
    procedure E_upKeyPress(Sender: TObject; var Key: Char);
    function exsist:boolean;
    procedure clear;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_daste_check_jadid: Tfrm_daste_check_jadid;

implementation

uses Untdmlistha, unt_moshkhasat_bank, unt_datamodule1;

/// shobe feli=15 gabli=15
/// shomare hesab feli=12 gabli=15
/// dar eslahe shomare hesab  feli=15 gabli=15
{$R *.dfm}
procedure Tfrm_daste_check_jadid.shomare_hesab;
var tedad:string;
begin
  Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='insert into T_shomare_hesabe_banki(sh_hesab,shobe,bank,bank_shobe_sh_hesab)'+
  ' values('+QuotedStr(trim(E_shomare_hesab.Text))+','+QuotedStr(trim(E_shobe.Text))+','+QuotedStr(trim(dbanbar.Text))+
  ','+QuotedStr(trim(dbanbar.Text)+' '+trim(E_shobe.Text)+' '+trim(E_shomare_hesab.Text))+')';
  Dmlistha.ADOQuery_shomare_hesabe_banki.ExecSQL;
  MessageBox(Handle,'„‘Œ’«  ‘„«—Â Õ”«» ÃœÌœ –ŒÌ—Â ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
  clear;
end;


procedure Tfrm_daste_check_jadid.clear;
begin
   E_shomare_hesab.Text:='';
   E_shobe.Text:='';
end;
function Tfrm_daste_check_jadid.exsist:boolean;
begin
    Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='select * from T_shomare_hesabe_banki where bank_shobe_sh_hesab='+QuotedStr(trim(trim(dbanbar.Text)+' '+trim(E_shobe.Text)+' '+trim(E_shomare_hesab.Text)));
    Dmlistha.ADOQuery_shomare_hesabe_banki.Open;
    if Dmlistha.ADOQuery_shomare_hesabe_banki.RecordCount > 0  then
    begin
      exsist:=true;
      MessageBox(Handle,' „‘Œ’«  «Ì‰ ‘„«—Â Õ”«» ﬁ»·« Ê«—œ ‘œÂ «” ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      clear;
    end
    else
      exsist:=false;
end;
function Tfrm_daste_check_jadid.check:boolean;
var s:pchar;
begin
 check:=true;
 if (dbanbar.Text='') or(E_shobe.Text='')or (E_shomare_hesab.Text='') then
 begin
  check:=false;
  MessageBox(Handle,'‰«„ »«‰ò ‘⁄»Â Ê ‘„«—Â Õ”«» »«Ìœ Ê«—œ ‘Êœ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
  Exit;
 end;

end;



procedure Tfrm_daste_check_jadid.FormShow(Sender: TObject);
begin
  frm_moshkhasat_bank.showbank;
  clear;
end;

procedure Tfrm_daste_check_jadid.suiButton7Click(Sender: TObject);
begin
 close;
end;

procedure Tfrm_daste_check_jadid.suiButton6Click(Sender: TObject);
begin
 if check then
  if not exsist then
    shomare_hesab;
end;

procedure Tfrm_daste_check_jadid.E_shomare_hesabKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;
procedure Tfrm_daste_check_jadid.E_downKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_daste_check_jadid.E_upKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
