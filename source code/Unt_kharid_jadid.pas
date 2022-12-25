unit Unt_kharid_jadid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, SUIEdit, SUIPageControl, SUITabControl,
  ExtCtrls, SUIForm;

type
  TFrm_kharid_jadid = class(TForm)
    suiForm1: TsuiForm;
    suiPageControl1: TsuiPageControl;
    suiTabSheet1: TsuiTabSheet;
    Label12: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    suiEdit1: TsuiEdit;
    Label2: TLabel;
    suiEdit2: TsuiEdit;
    Label16: TLabel;
    eadress: TsuiEdit;
    Label17: TLabel;
    etelephon: TsuiEdit;
    Label20: TLabel;
    etelephonhamrah: TsuiEdit;
    Label18: TLabel;
    epost: TsuiEdit;
    suiButton8: TsuiButton;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    procedure insert_shahr;
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure clear;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_kharid_jadid: TFrm_kharid_jadid;

implementation

uses unt_main, unt_datamodule1, unt_datamodule2;

{$R *.dfm}
procedure TFrm_kharid_jadid.clear;
begin
  suiEdit1.Text :='';
  suiEdit2.Text:='';
  eadress.Text:='';
  etelephon.Text:='';
  etelephonhamrah.Text:='';
  epost.Text:='';
end;
procedure TFrm_kharid_jadid.insert_shahr;
var s:string;
begin
  if (suiEdit1.Text<>'') and (suiEdit2.Text<>'') then
  begin
      ////check not exist recod
       s:='select * from t_shahr_foroshande where shahr='+QuotedStr(suiEdit1.Text)+'and foroshande='+QuotedStr(suiEdit2.Text);
        DataModule1.ADOQuery3.SQL.Text:=s;
        DataModule1.ADOQuery3.Active:=true;
       if DataModule1.ADOQuery3.RecordCount<=0 then
        begin
          DataModule1.ADOQuery3.SQL.Text:='insert into t_shahr_foroshande(shahr,foroshande,adress,telephon,telephonhamrah,email)'+
          ' values('+QuotedStr(suiEdit1.Text)+','+QuotedStr(suiEdit2.Text)+
          ','+QuotedStr(eadress.Text)+','+QuotedStr(etelephon.Text)+','+QuotedStr(etelephonhamrah.Text)+
          ','+QuotedStr(epost.Text)+')';
          DataModule1.ADOQuery3.ExecSQL;
          DataModule1.ADOQuery3.Requery;
          
          MessageBox(Handle,'ãÔÎÕÇÊ ÔÎÕ ÌÏíÏ ÐÎíÑå ÔÏ.','ÊæÌå! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
        end
        else
          MessageBox(Handle,'ÔÎÕ æ ÔåÑ ãæÌæÏ ãíÈÇÔäÏ','ÎØÇ! ',MB_OK or MB_ICONERROR or MB_RTLREADING or MB_RIGHT );
      /////////////////////////   check not exist recod   ////////////////
        s:='select * from bedeh_bestan where shahr='+QuotedStr(suiEdit1.Text)+'and kharidar='+QuotedStr(suiEdit2.Text);
        DataModule2.adotasfie.SQL.Text:=s;
        DataModule2.adotasfie.Active:=true;
        if DataModule2.adotasfie.RecordCount<=0 then
             begin
              s:='insert into bedeh_bestan(shahr,kharidar) values('+QuotedStr(suiEdit1.Text)+','+QuotedStr(suiEdit2.Text)+')';
              DataModule2.adotasfie.SQL.Text:=s;
              DataModule2.adotasfie.ExecSQL;
       //////////////////////////insert to jadval bedehi //////////////////
              DataModule1.ADObedehi.SQL.Text:='insert into t_bedehi(shahr,foroshande)values('+QuotedStr(suiEdit1.Text)+
              ','+QuotedStr(suiEdit2.Text)+')';
              DataModule1.ADObedehi.ExecSQL;
             end;
      ////////////////////////////////////////////////////////////////////

      clear;
   end
     else
      begin
       MessageBox(Handle,'äÇã ÔåÑæÔÎÕ ÑÇ æÇÑÏ äãÇííÏ','ÊæÌå!',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
      end;
end;
///////////////

procedure TFrm_kharid_jadid.suiButton2Click(Sender: TObject);
begin
  insert_shahr;
  clear;
end;

procedure TFrm_kharid_jadid.suiButton8Click(Sender: TObject);
begin
  close;
end;

procedure TFrm_kharid_jadid.suiButton1Click(Sender: TObject);
begin
  clear;
end;

end.
