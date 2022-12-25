unit unt_entekhabe_kharidar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, SUIDBCtrls, StdCtrls, SUIButton, LMDControl,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton;

type
  Tfrm_entekhabe_kharidar = class(TForm)
    DataSource1: TDataSource;
    suiDBGrid1: TsuiDBGrid;
    E_name: TEdit;
    Label4: TLabel;
    LMDSpeedButton1123: TLMDSpeedButton;
    Label10: TLabel;
    e_cod: TEdit;
    procedure FormShow(Sender: TObject);
    procedure E_nameChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LMDSpeedButton1123Click(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure e_codChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_entekhabe_kharidar: Tfrm_entekhabe_kharidar;

implementation

uses Unt_mmoshakhasat_shakhs, unt_datamodule1, unt_forosh_property,
  Unt_DataModule_gozaresh_tarkibi, unt_DataM_final,
  unt_entekhab_check_baraye_forosh;

{$R *.dfm}

procedure Tfrm_entekhabe_kharidar.FormShow(Sender: TObject);
begin
  Frm_mmoshakhasat_shakhs.show_kharidaran;
  E_name.Clear;
  e_cod.Clear;
  e_cod.SetFocus;
end;

procedure Tfrm_entekhabe_kharidar.E_nameChange(Sender: TObject);
begin
  DataModule1.ADOQuery3.Locate('shahrforoshande',E_name.Text,[loPartialKey]);
end;

procedure Tfrm_entekhabe_kharidar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if frm_forosh_property<> nil then
begin
if DataModule1.ADOQuery3.RecordCount>0 then
begin
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='update forosh_temp set sh_factor='+frm_forosh_property.sh_fctor+',shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;

  DataM_final.ADOQ_T_temp_pardakht_check_forosh.SQL.Text:='update T_temp_pardakht_check_forosh set shahrforoshande='+
  QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+',shomare_factor='+frm_forosh_property.sh_fctor+
  ',code='+frm_forosh_property.code;
  DataM_final.ADOQ_T_temp_pardakht_check_forosh.ExecSQL;

  Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;

  frm_forosh_property.L_kharidar_name.Caption:=DataModule1.ADOQuery3shahrforoshande.AsString;
end;
end;
end;

procedure Tfrm_entekhabe_kharidar.LMDSpeedButton1123Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_entekhabe_kharidar.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_entekhabe_kharidar.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

end.
