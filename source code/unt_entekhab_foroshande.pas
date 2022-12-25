unit unt_entekhab_foroshande;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, SUIDBCtrls, LMDControl,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton;

type
  Tfrm_entekhab_foroshande = class(TForm)
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    Label4: TLabel;
    E_name: TEdit;
    LMDSpeedButton1123: TLMDSpeedButton;
    Label10: TLabel;
    e_cod: TEdit;
    procedure FormShow(Sender: TObject);
    procedure E_nameChange(Sender: TObject);
    procedure LMDSpeedButton1123Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure e_codChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_entekhab_foroshande: Tfrm_entekhab_foroshande;

implementation

uses Unt_mmoshakhasat_shakhs, unt_datamodule1, unt_DataM_final,
  untjens_kharid, unt_vorode_jense_motefarege, unt_entekhab_check;

{$R *.dfm}

procedure Tfrm_entekhab_foroshande.FormShow(Sender: TObject);
begin
   Frm_mmoshakhasat_shakhs.show_foroshandegan;
   E_name.Clear;
   e_cod.Clear;
   e_cod.SetFocus;
end;

procedure Tfrm_entekhab_foroshande.E_nameChange(Sender: TObject);
begin
 DataModule1.ADOQuery3.Locate('shahrforoshande',E_name.Text,[loPartialKey]);
end;

procedure Tfrm_entekhab_foroshande.LMDSpeedButton1123Click(
  Sender: TObject);
begin
  Close;
end;

procedure Tfrm_entekhab_foroshande.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

if (frm_vorode_jense_motefarege<> nil)and(frm_vorode_jense_motefarege.Showing) then
begin
   frm_vorode_jense_motefarege.L_kharid_az.Caption:=DataModule1.ADOQuery3shahrforoshande.AsString;
end;
if (frmjens_kharid<>nil)and(frmjens_kharid.Showing) then
begin
  frmjens_kharid.tarikh:=frmjens_kharid.MaskEditsal.Text+'/'+frmjens_kharid.MaskEditmah.Text+'/'+frmjens_kharid.MaskEditrooz.Text;

 if DataModule1.ADOQuery3.RecordCount>0 then
 begin
  DataM_final.ADOQuery_pish_kharid3.SQL.Text:='update t_kharid_temp set tarikh='+QuotedStr(frmjens_kharid.tarikh)+',sh_factor='+
  frmjens_kharid.sh_fac+',shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+',code='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQuery_pish_kharid3.ExecSQL;

  DataM_final.ADOQ_T_temp_pardakht_check_kharid.SQL.Text:='update T_temp_pardakht_check_kharid set shahrforoshande='+
  QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+',shomare_factor='+frmjens_kharid.sh_fac+
  ',code='+frmjens_kharid.code;
  DataM_final.ADOQ_T_temp_pardakht_check_kharid.ExecSQL;

  frm_entekhab_check.show_temp_check_kharid;
  frmjens_kharid.L_foroshande_name.Caption:=DataModule1.ADOQuery3shahrforoshande.AsString;
 end;
end;
end;

{
  DataM_final.ADOQuery_pish_kharid3.SQL.Text:='update t_kharid_temp set tarikh='+QuotedStr(tarikh)+',sh_factor='+
  E_sh_darj_factor.Text+',shahrforoshande='+QuotedStr(L_foroshande_name.Caption);
  DataM_final.ADOQuery_pish_kharid3.ExecSQL;
}

procedure Tfrm_entekhab_foroshande.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure Tfrm_entekhab_foroshande.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
