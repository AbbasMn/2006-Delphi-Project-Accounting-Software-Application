unit Untpasachek;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls,StdCtrls,
  ExtCtrls, SUIForm, SUIButton;

type
  Tfrm_pasacheck = class(TForm)
    suiForm1: TsuiForm;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    suiBpass: TsuiButton;
    suiButton1: TsuiButton;

    procedure suiBpassClick(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pasacheck: Tfrm_pasacheck;

implementation

uses unt_datamodule1, unt_datamodule2;

{$R *.dfm}





procedure Tfrm_pasacheck.suiBpassClick(Sender: TObject);
begin
  if DBLookupComboBox1.Text<>'' then
  begin
    DataModule2.adochek.SQL.Text:='update forosh_jens set chek_pas="��� ���" where chek_number='+QuotedStr(DBLookupComboBox1.Text);
    DataModule2.adochek.ExecSQL;
    MessageBox(Handle,'�� �� ����� ������ ��� ��� ��','����',MB_OK  or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
  end
 else
    MessageBox(Handle,'����� �� �� ������ ������',' ��� !',MB_OK  or MB_ICONERROR or MB_RTLREADING or MB_RIGHT);
end;

procedure Tfrm_pasacheck.suiButton1Click(Sender: TObject);
begin
 close;
end;

end.
