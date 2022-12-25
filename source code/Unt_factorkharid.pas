unit Unt_factorkharid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, se_controls, KsSkinButtons, DBCtrls, SUIDBCtrls, KsSkinLabels,
  StdCtrls, ExtCtrls, SUIForm, DB;

type
  Tfrm_factorkharid = class(TForm)
    suiFrmfactorkharid: TsuiForm;
    GroupBox1: TGroupBox;
    SeSkinLabel8: TSeSkinLabel;
    SeSkinLabel9: TSeSkinLabel;
    suiDBLookupComboBox2: TsuiDBLookupComboBox;
    SeSkinButton2: TSeSkinButton;
    suiDBLookupComboBox1: TsuiDBLookupComboBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure GroupBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_factorkharid: Tfrm_factorkharid;

implementation

uses unt_datamodule1, unt_datamodule2, unt_factor;

{$R *.dfm}

procedure Tfrm_factorkharid.GroupBox1Click(Sender: TObject);
begin
 DataModule2.ADOfactor1.SQL.Text:='select *,(abs(bedeh_kol)+bedeh_kol) / 2 as bedehi ,(abs(bedeh_kol)-bedeh_kol) / 2 as talab from  bedeh_bestan where shahr='+QuotedStr(suiDBLookupComboBox1.Text)+' and kharidar='+QuotedStr(suiDBLookupComboBox2.Text);
  
  DataModule2.ADOfactor1.Open;
  frm_factor.QuickRep1.Preview;
  
end;

end.
