unit unt_vorode_geymate_foroshe_dasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton;

type
  Tfrm_vorode_geymate_foroshe_dasi = class(TForm)
    DBText1: TDBText;
    Label2: TLabel;
    DataSource1: TDataSource;
    Label1: TLabel;
    e_geymate_jadid: TEdit;
    LMDSpeedButton1123: TLMDSpeedButton;
    l_cod: TLabel;
    procedure e_geymate_jadidKeyPress(Sender: TObject; var Key: Char);
    procedure LMDSpeedButton1123Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_vorode_geymate_foroshe_dasi: Tfrm_vorode_geymate_foroshe_dasi;

implementation

uses Unt_DataModule_gozaresh_tarkibi, unt_pish_forosh;

{$R *.dfm}

procedure Tfrm_vorode_geymate_foroshe_dasi.e_geymate_jadidKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_vorode_geymate_foroshe_dasi.LMDSpeedButton1123Click(
  Sender: TObject);
begin
  if (trim(e_geymate_jadid.Text)='')or((trim(e_geymate_jadid.Text)='0')) then
    MessageBox(Handle,'ﬁÌ„  ÃœÌœ Ã‰” —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.sql.Text:='update forosh_temp set geymat_vahed='+e_geymate_jadid.Text+
    ',geymat_jens=tedad_kol*'+e_geymate_jadid.Text+',geymat_koli=tedad_jozi_dar_koli*'+e_geymate_jadid.Text+
    ' where id='+l_cod.Caption;
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;
    
    Frm_pish_forosh.show_pish_forosh;
    Frm_pish_forosh.mohasebe_geymat_kol;
    Close;
  end;
end;

procedure Tfrm_vorode_geymate_foroshe_dasi.FormShow(Sender: TObject);
begin
  e_geymate_jadid.Clear;
end;

end.
