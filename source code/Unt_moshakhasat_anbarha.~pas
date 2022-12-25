unit Unt_moshakhasat_anbarha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, DB, Grids, DBGrids, SUIDBCtrls, StdCtrls,
  SUIButton, SUIImagePanel, SUIGroupBox, te_controls;

type
  TFrm_moshakhasat_anbarha = class(TForm)
    Datasanbarname: TDataSource;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    esearch: TEdit;
    suiDBGrid2: TsuiDBGrid;
    GroupBox1: TGroupBox;
    lanbarname: TLabel;
    suiButton1: TsuiButton;
    Eadress: TTeMemo;
    Emasool: TEdit;
    Etelephon: TEdit;
    Label11: TLabel;
    Label13: TLabel;
    l: TLabel;
    Label1: TLabel;
    E_name: TEdit;
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    suiButton2: TsuiButton;
    procedure show;
    procedure FormShow(Sender: TObject);
    procedure updatemoshakhasatanbar;
    procedure suiButton1Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure showanbar;
    procedure EtelephonKeyPress(Sender: TObject; var Key: Char);
    procedure az_anbare_asli_be_majazi;
    procedure suiButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_moshakhasat_anbarha: TFrm_moshakhasat_anbarha;

implementation

uses unt_main, Unt_dmanbar, Untdmanbarexit, Unt_jadval_jensin_anbar,
  Untdmlistha;

{$R *.dfm}
procedure TFrm_moshakhasat_anbarha.az_anbare_asli_be_majazi;
begin
  Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='insert into T_anbar_majazi select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr(lanbarname.Caption);
  Dmlistha.ADOQuery_anbar_majazi.ExecSQL;

  Dmlistha.ADOlistanbarforosh.SQL.Text:='delete from Tanbar_jens_kolli where anbarname='+
  QuotedStr(lanbarname.Caption);
  Dmlistha.ADOlistanbarforosh.ExecSQL;

  Dmanbarexite.ADOanbarname.SQL.Text:='delete from tanbar_names where name='+QuotedStr(lanbarname.Caption);
  Dmanbarexite.ADOanbarname.ExecSQL;

end;

////////////////////////////////////
procedure TFrm_moshakhasat_anbarha.showanbar;
begin
  Dmanbarexite.ADOanbarname.SQL.Text:='select * from tanbar_names order by name';
  Dmanbarexite.ADOanbarname.Open;
end;
procedure TFrm_moshakhasat_anbarha.updatemoshakhasatanbar;
begin
 if (E_name.Text<>'') then
 begin
  Dmanbarexite.ADOanbarname.SQL.Text:='update tanbar_names set name='+QuotedStr(trim(E_name.Text))+',adress='+QuotedStr(Eadress.Text)+',telephon='+QuotedStr(Etelephon.Text)+
  ',masool='+QuotedStr(Emasool.Text)+' where name='+QuotedStr(lanbarname.Caption);
  Dmanbarexite.ADOanbarname.ExecSQL;

  Dmlistha.ADOlistanbarforosh.SQL.Text:='update Tanbar_jens_kolli set anbarname='+QuotedStr(E_name.Text)+
  ' where anbarname='+QuotedStr(lanbarname.Caption);
  Dmlistha.ADOlistanbarforosh.ExecSQL;
  MessageBox(Handle,'„‘Œ’«  »Â —Ê“ —”«‰Ì ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
 end
 else
  MessageBox(Handle,'‰«„ «‰»«— »«Ìœ Ê«—œ ‘Êœ.',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
end;
procedure TFrm_moshakhasat_anbarha.show;
begin
  Dmanbar.ADOnewanbar.SQL.Text:='select * from tanbar_names where name='+QuotedStr(Dmanbarexite.ADOanbarnamename.AsString);
  Dmanbar.ADOnewanbar.Open;
  Frm_moshakhasat_anbarha.lanbarname.Caption:=Dmanbar.ADOnewanbarname.AsString;
  Frm_moshakhasat_anbarha.Etelephon.Text:=Dmanbar.ADOnewanbartelephon.AsString;
  Frm_moshakhasat_anbarha.Eadress.Text:=Dmanbar.ADOnewanbaradress.AsString;
  Frm_moshakhasat_anbarha.Emasool.Text:=Dmanbar.ADOnewanbarmasool.AsString;
end;

procedure TFrm_moshakhasat_anbarha.FormShow(Sender: TObject);
begin
  //Frm_moshakhasat_anbarha.WindowState:=wsMaximized;
  showanbar;
  Frm_jadval_jensin_anbar.show;
end;

procedure TFrm_moshakhasat_anbarha.suiButton1Click(Sender: TObject);
var st:pchar;
begin
 if e_name.Text='' then
    MessageBox(Handle,'‰«„ «‰»«— —« Ê«—œ ‰„«ÌÌœ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
  begin
  st:=pchar('„‘Œ’«  «‰»«— << '+lanbarname.Caption+' >> »Â —Ê“—”«‰Ì ‘Êœ ø');
  if MessageBox(Handle,st,'',MB_YESNO or MB_ICONQUESTION or MB_RTLREADING or MB_RIGHT)=idyes then
    begin
      Dmanbar.ADOnewanbar.SQL.Text:='select * from tanbar_names where name='+QuotedStr(trim(e_name.Text));
      Dmanbar.ADOnewanbar.Open;
      if Dmanbar.ADOnewanbar.RecordCount <= 0 then
      begin
        updatemoshakhasatanbar;
        showanbar;
        sleep(100);
        Frm_jadval_jensin_anbar.show;
      end
      else
       MessageBox(Handle,'‰«„ ÃœÌœ Ê«—œ ‘œÂ »—«Ì «‰»«— ﬁ»·« Ê«—œ ‘œÂ «” .','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
    end
    else
     MessageBox(Handle,'„‘Œ’«  »Â —Ê“ —”«‰Ì ‰‘œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
  end;
end;

procedure TFrm_moshakhasat_anbarha.esearchChange(Sender: TObject);
begin
  Dmanbarexite.ADOanbarname.Locate('name',esearch.Text,[loPartialKey]);  
end;

procedure TFrm_moshakhasat_anbarha.EtelephonKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['0'..'9',#8]) then
   key:=#0;
end;



procedure TFrm_moshakhasat_anbarha.suiButton2Click(Sender: TObject);
begin
if MessageBox(Handle,'«‰»«— «‰ Œ«»Ì Õ–› ‘Êœ ø',' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
begin
  az_anbare_asli_be_majazi;
  showanbar;
  sleep(100);
  MessageBox(Handle,'»Â œ·Ì· Õ–› «‰»«— «‰ Œ«»Ì ° «Ã‰«” „ÊÃÊœ œ— ¬‰ »Â «‰»«— „Ã«“Ì Ê«—œ ‘œ‰œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
  Frm_jadval_jensin_anbar.show;
end
else
   MessageBox(Handle,'«‰»«— «‰ Œ«»Ì Õ–› ‰‘œ.',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
end;

end.
