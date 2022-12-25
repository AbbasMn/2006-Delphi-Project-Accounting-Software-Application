unit unt_add_bank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, SUIEdit, ExtCtrls, SUIForm, te_controls;

type
  Tfrm_add_bank = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    ebankname: TsuiEdit;
    etelephon: TsuiEdit;
    efacs: TsuiEdit;
    suiButton8: TsuiButton;
    sbtaeed: TsuiButton;
    eadress: TTeMemo;
    procedure suiButton8Click(Sender: TObject);
    procedure addbank;
    function check_bank_exist:boolean;
    procedure sbtaeedClick(Sender: TObject);
    procedure etelephonKeyPress(Sender: TObject; var Key: Char);
    procedure efacsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_add_bank: Tfrm_add_bank;

implementation

uses Untdmlistha;

/// dar feli=15 gabli=20
///  dar eslahe bank  feli=15 gabli=20
{$R *.dfm}
function Tfrm_add_bank.check_bank_exist:boolean;
var st:pchar;
begin
 Dmlistha.ADOQuery_bank.SQL.Text:='select * from t_bank where name='+QuotedStr(trim(ebankname.Text));
 Dmlistha.ADOQuery_bank.Open;
 if Dmlistha.ADOQuery_bank.RecordCount >0 then
 begin
   check_bank_exist:=true;
   st:=pchar('»«‰ò  << '+ebankname.Text+' >> „ÊÃÊœ „Ì»«‘œ');
   MessageBox(Handle,st,' ÊÃÂ!',MB_OK or MB_ICONEXCLAMATION  or MB_RTLREADING or MB_RIGHT);
   ebankname.Text:='';
 end
 else
   check_bank_exist:=false;
end;
procedure Tfrm_add_bank.addbank;
var st:pchar;
begin
  Dmlistha.ADOQuery_bank.SQL.Text:='insert into t_bank(name,telephon,fax,address)'+
  ' values('+QuotedStr(trim(ebankname.Text))+','+QuotedStr(etelephon.Text)+','+QuotedStr(efacs.Text)+','+QuotedStr(eadress.Text)+')';
  Dmlistha.ADOQuery_bank.ExecSQL;
  st:=pchar(' „‘Œ’«  »«‰ò << '+ebankname.Text+' >> –ŒÌ—Â ‘œ');
  MessageBox(Handle,st,' ÊÃÂ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
end;

procedure Tfrm_add_bank.suiButton8Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_add_bank.sbtaeedClick(Sender: TObject);
begin
 if ebankname.Text<>'' then
   begin
      if not check_bank_exist then
       begin
        addbank;
        ebankname.Text:='';
        etelephon.Text:='';
        efacs.Text:='';
        eadress.Text:='';
      end;
    end
 else
    MessageBox(Handle,'‰«„ »«‰ò —« Ê«—œ ‰„«ÌÌœ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
end;
procedure Tfrm_add_bank.etelephonKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_bank.efacsKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
