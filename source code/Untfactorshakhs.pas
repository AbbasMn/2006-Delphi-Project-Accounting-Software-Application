unit Untfactorshakhs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, SUIDBCtrls,StdCtrls, ExtCtrls, SUIForm, DB;

type
  Tfrm_factorshakhs = class(TForm)
    suifactorshakhs: TsuiForm;
    GroupBox1: TGroupBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    suiDBLookupComboBox1: TsuiDBLookupComboBox;
    suiDBLookupComboBox2: TsuiDBLookupComboBox;
    procedure suiDBLookupComboBox1Click(Sender: TObject);
    procedure SeSkinButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_factorshakhs: Tfrm_factorshakhs;

implementation

uses unt_datamodule1, unt_datamodule2, unt_factor;

{$R *.dfm}



procedure Tfrm_factorshakhs.suiDBLookupComboBox1Click(Sender: TObject);
begin
{  DataModule1.ADOQuery2.SQL.Text:='select distinct foroshande from t_shahr_foroshande where shahr='+QuotedStr(suiDBLookupComboBox1.Text);
  DataModule1.ADOQuery2.Open;}
end;

procedure Tfrm_factorshakhs.SeSkinButton5Click(Sender: TObject);
begin
  close;
end;

end.
