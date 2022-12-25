unit Unt_anbar_jadid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, SUIEdit, SUITabControl, ExtCtrls, SUIForm,
  te_controls, te_db_controls;

type
  Tfrm_anbar_jadid = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    eanbarname: TsuiEdit;
    etelephon: TsuiEdit;
    emasool: TsuiEdit;
    suiButton8: TsuiButton;
    sbtaeed: TsuiButton;
    eadress: TTeMemo;
    procedure suiButton8Click(Sender: TObject);
    procedure clear;
    procedure insertnewanbar;
    procedure sbtaeedClick(Sender: TObject);
    procedure etelephonKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_anbar_jadid: Tfrm_anbar_jadid;

implementation

uses unt_datamodule1, unt_main, Unt_dmanbar;

{$R *.dfm}
procedure Tfrm_anbar_jadid.insertnewanbar;
var st:pchar;
begin
  Dmanbar.ADOnewanbar.SQL.Text:='select * from tanbar_names where name='+QuotedStr(trim(eanbarname.Text));
  Dmanbar.ADOnewanbar.Open;
  if Dmanbar.ADOnewanbar.RecordCount <= 0 then
    begin
      Dmanbar.ADOnewanbar.SQL.Text:='insert into tanbar_names(name,adress,telephon,masool)values('+
      QuotedStr(trim(eanbarname.Text))+','+QuotedStr(eadress.Lines.Text)+','+QuotedStr(trim(etelephon.Text))+','+QuotedStr(emasool.Text)+')';
      Dmanbar.ADOnewanbar.ExecSQL;
      st:=pchar(' „‘Œ’«  „ò«‰<< '+eanbarname.Text+' >> –ŒÌ—Â ‘œ');
      MessageBox(Handle,st,' ÊÃÂ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
      clear;
    end
  else
    begin
          st:=pchar('„ò«‰ << '+eanbarname.Text+' >> „ÊÃÊœ „Ì»«‘œ');
          MessageBox(Handle,st,' ÊÃÂ!',MB_OK or MB_ICONEXCLAMATION  or MB_RTLREADING or MB_RIGHT);
          eanbarname.Text:=''
    end;

end;
procedure Tfrm_anbar_jadid.clear;
begin
  eanbarname.Text:='';
  eadress.Lines.Text:='';
  etelephon.Text:='';
  emasool.Text:='';
end;

procedure Tfrm_anbar_jadid.suiButton8Click(Sender: TObject);
begin
  clear;
  close;
end;

procedure Tfrm_anbar_jadid.sbtaeedClick(Sender: TObject);
begin
  if eanbarname.Text='' then
    MessageBox(Handle,'‰«„ „ò«‰ —« Ê«—œ ‰„«ÌÌœ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
    begin
      insertnewanbar;
    end;
end;

procedure Tfrm_anbar_jadid.etelephonKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
