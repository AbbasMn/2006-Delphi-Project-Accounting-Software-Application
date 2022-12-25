unit unt_add_vahed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, ExtCtrls, SUIForm;

type
  TFrm_add_vahed = class(TForm)
    suiButton6: TsuiButton;
    suiButton7: TsuiButton;
    Enewsal: TEdit;
    Label1: TLabel;
    procedure suiButton7Click(Sender: TObject);
    procedure insert_vahed;
    procedure suiButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_add_vahed: TFrm_add_vahed;

implementation

uses Untdmlistha;

/// feli=15 gabli=25
/// dar eslahe vahed feli=15 gabli=25
/// dar eslahe vahede jens feli=15 gabli=25
{$R *.dfm}
procedure TFrm_add_vahed.insert_vahed;
var s:pchar;
begin
if Enewsal.Text='' then
  MessageBox(Handle,'Ê«Õœ ÃœÌœ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin
  Dmlistha.ADOQuery_vahed.SQL.Text:='select * from t_vahed where vahed='+QuotedStr(trim(Enewsal.Text));
  Dmlistha.ADOQuery_vahed.Open;

  if Dmlistha.ADOQuery_vahed.RecordCount > 0 then
  begin
     s:=pchar('Ê«Õœ Œ—Ìœ Ê ›—Ê‘ << '+Enewsal.Text+' >> Ê«—œ ‘œÂ «” ');
    MessageBox(Handle,s,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    Enewsal.Text:='';
  end
  else
  begin
     Dmlistha.ADOQuery_vahed.SQL.Text:='insert into t_vahed(vahed)values('+QuotedStr(trim(Enewsal.Text))+')';
     Dmlistha.ADOQuery_vahed.ExecSQL;
     s:=pchar('Ê«Õœ Œ—Ìœ Ê ›—Ê‘ << '+Enewsal.Text+' >> –ŒÌ—Â ‘œ');
     MessageBox(Handle,s,' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
     Enewsal.Text:='';
  end;
end;
end;

procedure TFrm_add_vahed.suiButton7Click(Sender: TObject);
begin
   close;
end;

procedure TFrm_add_vahed.suiButton6Click(Sender: TObject);
begin
  insert_vahed;
end;

procedure TFrm_add_vahed.FormShow(Sender: TObject);
begin
  Enewsal.Text:='';
end;

end.
