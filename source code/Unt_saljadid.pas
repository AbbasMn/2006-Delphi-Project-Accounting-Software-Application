unit Unt_saljadid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, SUIButton, StdCtrls, SUITabControl, SUIPageControl,
  ExtCtrls, SUIForm;

type
  TFrm_saljadid = class(TForm)
    Label1: TLabel;
    Enewsal: TEdit;
    suiButton7: TsuiButton;
    suiButton6: TsuiButton;
    procedure suiButton6Click(Sender: TObject);
    procedure insertsaljadid;
    procedure suiButton7Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_saljadid: TFrm_saljadid;

implementation

uses unt_datamodule1;

/// max andaze dar db=6

/// andaze feli=4 gabli=6
/// dar eslahe sal ham andaze feli=4 gabli=6

{$R *.dfm}

procedure TFrm_saljadid.insertsaljadid;
var st:pchar;
begin
  if Enewsal.Text='' then
    MessageBox(Handle,'”«· —« Ê«—œ ‰„«ÌÌœ','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING)
  else
  begin
    DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha where sal='+QuotedStr(trim(Enewsal.Text));
    DataModule1.ADOQsaljadid.Open;
    if DataModule1.ADOQsaljadid.RecordCount>0 then
    begin
      st:=pchar('”«· << '+Enewsal.Text+' >>  Ê«—œ ‘œÂ «” ');
      MessageBox(Handle,st,'Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING);
      Enewsal.Text:='';
    end
    else
     begin
        DataModule1.ADOQsaljadid.SQL.Text:='insert into t_salha(sal)values('+QuotedStr(trim(Enewsal.Text))+')';
        DataModule1.ADOQsaljadid.ExecSQL;
        st:=pchar('”«· << '+Enewsal.Text+' >> –ŒÌ—Â ‘œ');
        MessageBox(Handle,st,' ÊÃÂ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
        Enewsal.Text:='';
     end;
  end;
end;
procedure TFrm_saljadid.suiButton6Click(Sender: TObject);
begin
  insertsaljadid;
end;

procedure TFrm_saljadid.suiButton7Click(Sender: TObject);
begin
  close;
end;

procedure TFrm_saljadid.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
