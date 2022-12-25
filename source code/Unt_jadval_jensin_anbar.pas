unit Unt_jadval_jensin_anbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, DB, Grids, DBGrids, SUIDBCtrls, dxCore,
  dxButtons, StdCtrls;

type
  TFrm_jadval_jensin_anbar = class(TForm)
    DataSource1: TDataSource;
    Datasanbarname: TDataSource;
    suiDBGrid2: TsuiDBGrid;
    suiDBGrid1: TsuiDBGrid;
    dxToolButton12: TdxToolButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    Button12123: TButton;
    Label7: TLabel;
    esearch: TEdit;
    Button1: TButton;
    Label9: TLabel;
    E_se_code_she: TEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    dxToolButton1: TdxToolButton;
    procedure show;
    procedure FormShow(Sender: TObject);
    procedure dxToolButton12Click(Sender: TObject);
    procedure showanbar;
    procedure RadioGroup1Click(Sender: TObject);
    procedure type_;
    procedure name_jans;
    procedure tedad_jans_kam_be_ziad;
    procedure tedad_jans_ziad_be_kam;
    procedure cod_jans;
    procedure geymat_jans_kam_be_ziad;
    procedure geymat_jans_ziad_be_kam;
    procedure Button12123Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure E_se_code_sheChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure dxToolButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_jadval_jensin_anbar: TFrm_jadval_jensin_anbar;

implementation

uses Untdmlistha, Untdmanbarexit, unt_main, Unt_print_jens_inanbar,
  unt_login, unt_show_tozihate_jense_anbar, unt_hazfe_jans_az_Anbar;

{$R *.dfm}
procedure TFrm_jadval_jensin_anbar.name_jans;
begin
  Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+'order by calaname,calacod';
  Dmlistha.ADOlistanbarforosh.Open;

  Frm_print_jens_inanbar.QRL_type.Caption:=' „— » ”«“Ì ·Ì”  «Ã‰«” »— «”«” ‰«„ «Ã‰«”';
end;

procedure TFrm_jadval_jensin_anbar.tedad_jans_kam_be_ziad;
begin
  Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+'order by tedadanbar,calaname,calacod';
  Dmlistha.ADOlistanbarforosh.Open;
  Frm_print_jens_inanbar.QRL_type.Caption:=' „— » ”«“Ì ·Ì”  «Ã‰«” »— «”«”  ⁄œ«œÃ‰”  „ÊÃÊœ œ— „ò«‰ (ò„ »Â “Ì«œ)’⁄ÊœÌ';
end;
procedure TFrm_jadval_jensin_anbar.tedad_jans_ziad_be_kam;
begin
  Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+'order by tedadanbar desc,calaname,calacod';
  Dmlistha.ADOlistanbarforosh.Open;
  Frm_print_jens_inanbar.QRL_type.Caption:=' „— » ”«“Ì ·Ì”  «Ã‰«” »— «”«”  ⁄œ«œÃ‰”  „ÊÃÊœ œ— „ò«‰ (“Ì«œ »Â ò„)‰“Ê·Ì';
end;
procedure TFrm_jadval_jensin_anbar.cod_jans;
begin
  Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+'order by calacod';
  Dmlistha.ADOlistanbarforosh.Open;
  Frm_print_jens_inanbar.QRL_type.Caption:=' „— » ”«“Ì ·Ì”  «Ã‰«” »— «”«” òœ «Ã‰«”';
end;
procedure TFrm_jadval_jensin_anbar.geymat_jans_kam_be_ziad;
begin
  Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+'order by geymatforosh,calaname,calacod';
  Dmlistha.ADOlistanbarforosh.Open;
  Frm_print_jens_inanbar.QRL_type.Caption:=' „— » ”«“Ì ·Ì”  «Ã‰«” »— «”«” ﬁÌ„  ›—Ê‘ «Ã‰«” (ò„ »Â “Ì«œ)’⁄ÊœÌ';
end;
procedure TFrm_jadval_jensin_anbar.geymat_jans_ziad_be_kam;
begin
  Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+'order by geymatforosh desc,calaname,calacod';
  Dmlistha.ADOlistanbarforosh.Open;
  Frm_print_jens_inanbar.QRL_type.Caption:=' „— » ”«“Ì ·Ì”  «Ã‰«” »— «”«” ﬁÌ„  ›—Ê‘ «Ã‰«” (“Ì«œ »Â ò„)‰“Ê·Ì';
end;
//////////////
procedure TFrm_jadval_jensin_anbar.type_;
begin
 if RadioGroup1.ItemIndex=0 then
  name_jans;
 if RadioGroup1.ItemIndex=1 then
  cod_jans;
 if RadioGroup1.ItemIndex=2 then
  tedad_jans_kam_be_ziad;
 if RadioGroup1.ItemIndex=3 then
    tedad_jans_ziad_be_kam;
 if RadioGroup1.ItemIndex=4 then
  geymat_jans_kam_be_ziad;
 if RadioGroup1.ItemIndex=5 then
  geymat_jans_ziad_be_kam;
end;
/////////
procedure TFrm_jadval_jensin_anbar.showanbar;
begin
  Dmanbarexite.ADOanbarname.SQL.Text:='select * from tanbar_names where name<>'+QuotedStr('«‰»«— „Ã«“Ì')+
  ' order by name';
  Dmanbarexite.ADOanbarname.Open;
end;
procedure TFrm_jadval_jensin_anbar.show;
begin
  Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+'order by calaname,calacod';
  Dmlistha.ADOlistanbarforosh.Open;
end;

procedure TFrm_jadval_jensin_anbar.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
  showanbar;
  type_;
  Frm_jadval_jensin_anbar.WindowState:=wsMaximized;
  E_se_code_she.Clear;
  Edit1.Clear;
  esearch.Clear;
  Edit1.Clear;
  Edit2.Clear;

  Edit1.SetFocus;
end;

procedure TFrm_jadval_jensin_anbar.dxToolButton12Click(Sender: TObject);
begin
  Frm_print_jens_inanbar.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  Frm_print_jens_inanbar.QuickRep1.Preview;
end;

procedure TFrm_jadval_jensin_anbar.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

procedure TFrm_jadval_jensin_anbar.Button12123Click(Sender: TObject);
begin
  if Dmlistha.ADOlistanbarforosh.RecordCount >0 then
  begin
    frm_show_tozihate_jense_anbar.DBMemo_forosh.Visible:=true;
    frm_show_tozihate_jense_anbar.DBMemo_geymat.Visible:=false;
    frm_show_tozihate_jense_anbar.ShowModal;
  end
  else
    MessageBox(Handle,'œ— „ò«‰ «‰ Œ«»Ì Ã‰”Ì ÊÃÊœ ‰œ«—œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );

end;


procedure TFrm_jadval_jensin_anbar.Button2Click(Sender: TObject);
begin
  if Dmlistha.ADOlistanbarforosh.RecordCount >0 then
  begin
    frm_show_tozihate_jense_anbar.DBMemo_forosh.Visible:=false;
    frm_show_tozihate_jense_anbar.DBMemo_geymat.Visible:=true;
    frm_show_tozihate_jense_anbar.ShowModal;
  end
  else
    MessageBox(Handle,'œ— „ò«‰ «‰ Œ«»Ì Ã‰”Ì ÊÃÊœ ‰œ«—œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );

end;




procedure TFrm_jadval_jensin_anbar.Button1Click(Sender: TObject);
begin
  if Dmlistha.ADOlistanbarforosh.RecordCount >0 then
  begin
    frm_hazfe_jans_az_Anbar.L_id.Caption:=Dmlistha.ADOlistanbarforoshid.AsString;
    frm_hazfe_jans_az_Anbar.ShowModal;
  end
  else
    MessageBox(Handle,'œ— „ò«‰ «‰ Œ«»Ì Ã‰”Ì »—«Ì Õ–› ÊÃÊœ ‰œ«—œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );

end;



procedure TFrm_jadval_jensin_anbar.E_se_code_sheChange(Sender: TObject);
begin
    Dmlistha.ADOlistanbarforosh.Locate('code_sherkati',E_se_code_she.Text,[loPartialKey]);
end;

procedure TFrm_jadval_jensin_anbar.Edit1Change(Sender: TObject);
begin
  Dmanbarexite.ADOanbarname.Locate('name',Edit1.Text,[loPartialKey]);
end;

procedure TFrm_jadval_jensin_anbar.esearchChange(Sender: TObject);
begin
 Dmlistha.ADOlistanbarforosh.Locate('calaname',esearch.Text,[loPartialKey]);
end;

procedure TFrm_jadval_jensin_anbar.Edit2Change(Sender: TObject);
begin
if trim(Edit2.Text)<>'' then
 Dmlistha.ADOlistanbarforosh.Locate('calacod',Edit2.Text,[loPartialKey]);
end;

procedure TFrm_jadval_jensin_anbar.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_jadval_jensin_anbar.dxToolButton1Click(Sender: TObject);
begin
  Frm_print_jens_inanbar.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  Frm_print_jens_inanbar.QuickRep1.Print;
end;

end.
