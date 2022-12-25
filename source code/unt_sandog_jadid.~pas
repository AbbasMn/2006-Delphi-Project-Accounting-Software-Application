unit unt_sandog_jadid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, ExtCtrls, SUIForm;

type
  TFrm_sandog_jadid = class(TForm)
    suiButton6: TsuiButton;
    suiButton7: TsuiButton;
    Enewsal: TEdit;
    Label1: TLabel;
    procedure suiButton7Click(Sender: TObject);
    procedure insert_sandog;
    procedure suiButton6Click(Sender: TObject);
    procedure show_sandog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_sandog_jadid: TFrm_sandog_jadid;

implementation

uses Unt_DataModule_gozaresh_tarkibi;

/// andaze feli=15 gabli=30

{$R *.dfm}


procedure TFrm_sandog_jadid.show_sandog;
begin
    DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name order by sandog';
    DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;
end;
procedure TFrm_sandog_jadid.insert_sandog;
var st:pchar;
begin
  if Enewsal.Text='' then
    MessageBox(Handle,'’‰œÊﬁ œ—Ì«›  ÃœÌœ —« Ê«—œ ‰„«ÌÌœ.','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING)
  else
  begin
    DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name where sandog='+QuotedStr(trim(Enewsal.Text));
    DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;
    if DataModule_gozaresh_tarkibi.ADOQuery_sandog.RecordCount>0 then
    begin
      st:=pchar('’‰œÊﬁ << '+Enewsal.Text+' >>  Ê«—œ ‘œÂ «” ');
      MessageBox(Handle,st,'Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING);
      Enewsal.Text:='';
    end
    else
     begin
        DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='insert into T_sandog_name(sandog)values('+QuotedStr(trim(Enewsal.Text))+')';
        DataModule_gozaresh_tarkibi.ADOQuery_sandog.ExecSQL;
        st:=pchar('’‰œÊﬁ  << '+Enewsal.Text+' >> –ŒÌ—Â ‘œ');
        MessageBox(Handle,st,' ÊÃÂ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
        Enewsal.Text:='';
     end;
  end;
end;

procedure TFrm_sandog_jadid.suiButton7Click(Sender: TObject);
begin
  close;
end;

procedure TFrm_sandog_jadid.suiButton6Click(Sender: TObject);
begin
 insert_sandog;
end;

end.
