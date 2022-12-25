unit unt_eslah_sal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, ExtCtrls, SUIForm, Grids, DBGrids,
  SUIDBCtrls, DB;

type
  Tfrm_eslah_sal = class(TForm)
    DataSource1: TDataSource;
    Label2: TLabel;
    E_name: TEdit;
    suiDBGrid1: TsuiDBGrid;
    L_name: TLabel;
    Label1: TLabel;
    Enewsal: TEdit;
    suiButton7: TsuiButton;
    suiButton6: TsuiButton;
    procedure FormShow(Sender: TObject);
    procedure E_nameChange(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah_sal: Tfrm_eslah_sal;

implementation

uses unt_datamodule1, unt_main;

{$R *.dfm}

procedure Tfrm_eslah_sal.FormShow(Sender: TObject);
begin
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;

  E_name.SetFocus;
  E_name.Clear;

  Enewsal.Clear;
end;

procedure Tfrm_eslah_sal.E_nameChange(Sender: TObject);
begin
  DataModule1.ADOQsaljadid.Locate('sal',E_name.Text,[loPartialKey]);
end;

procedure Tfrm_eslah_sal.suiButton7Click(Sender: TObject);
begin
 if DataModule1.ADOQsaljadid.RecordCount >0 then
 begin
 frm_main.l_last_op.Caption:='Õ–› ”«· ‘„”Ì '+L_name.Caption;
 frm_main.sabte_amaliat(frm_main.l_last_op.Caption);
 
  DataModule1.ADOQsaljadid.SQL.Text:='delete from t_salha where sal='+QuotedStr(L_name.Caption);
  DataModule1.ADOQsaljadid.ExecSQL;

  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;
  MessageBox(Handle,'”«· ‘„”Ì «‰ Œ«»Ì Õ–› ê—œÌœ.',' ÊÃÂ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );  
 end
 else
   MessageBox(Handle,'”«·Ì »—«Ì Õ–› ÊÃÊœ ‰œ«—œ.','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING);
end;

procedure Tfrm_eslah_sal.suiButton6Click(Sender: TObject);
var st:pchar;
begin
if DataModule1.ADOQsaljadid.RecordCount <=0 then
  MessageBox(Handle,'—òÊ—œÌ »—«Ì »—Ê“ —”«‰Ì ÊÃÊœ ‰œ«—œ',' ÊÃÂ!',MB_OK or MB_ICONEXCLAMATION  or MB_RTLREADING or MB_RIGHT)
else
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
      DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
      DataModule1.ADOQsaljadid.Open;
    end
    else
    begin
      frm_main.l_last_op.Caption:=' «’·«Õ ”«· ‘„”Ì «“'+L_name.Caption+' »Â '+Enewsal.Text;
       frm_main.sabte_amaliat(frm_main.l_last_op.Caption);
      DataModule1.ADOQsaljadid.SQL.Text:='update t_salha set sal='+QuotedStr(trim(Enewsal.Text))+
      ' where sal='+QuotedStr(L_name.Caption);
      DataModule1.ADOQsaljadid.ExecSQL;

      DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
      DataModule1.ADOQsaljadid.Open;
      MessageBox(Handle,'”«· ‘„”Ì «‰ Œ«»Ì «’·«Õ ê—œÌœ.',' ÊÃÂ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
    end;
  end;
end;
end;

end.
