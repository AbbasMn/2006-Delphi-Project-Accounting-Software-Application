unit Unt_jadvalbedehi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, DB, dxCore, dxButtons, Grids, DBGrids,
  SUIDBCtrls, StdCtrls, SUIImagePanel, SUIGroupBox, DBCtrls, SUIButton;

type
  TFrm_jedvalbedeh = class(TForm)
    DataSource1: TDataSource;
    suiGroupBox2: TsuiGroupBox;
    Label4: TLabel;
    esearch: TEdit;
    dxToolButton123: TdxToolButton;
    suiDbjens: TsuiDBGrid;
    Label1: TLabel;
    DBText4: TDBText;
    DataSource2: TDataSource;
    Label8: TLabel;
    e_cod: TEdit;
    dxToolButton12: TdxToolButton;
    btn_print_taki: TsuiButton;
    suiButton1: TsuiButton;
    procedure show;
    procedure FormShow(Sender: TObject);
    procedure dxToolButton123Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure e_codChange(Sender: TObject);
    procedure dxToolButton12Click(Sender: TObject);
    procedure btn_print_takiClick(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_jedvalbedeh: TFrm_jedvalbedeh;

implementation

uses unt_datamodule1, unt_main, Unt_print_bedehi, unt_login,
  unt_DataM_final, unt_joziate_eslahe_bedehe_kharidar,
  unt_joziate_eslahe_bedehe_foroshande, unt_pardakht_shoma;

{$R *.dfm}
procedure TFrm_jedvalbedeh.show;
begin
  {DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='select * from T_bede_kol_be_foroshande where bedeh > 0 order by shahrforoshande';
  DataM_final.ADOQ_bedeh_be_foroshnse.Open;}

  DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='select code_shakhs,shahrforoshande,'+
  ' sum(bedehkar) as bedeh,sum(bestankar) as talab from '+
  ' T_bestankar_bedehkar_foroshande'+
  ' group by code_shakhs,shahrforoshande'+
  ' order by shahrforoshande';
  DataM_final.ADOQ_bedeh_be_foroshnse.Open;  

  DataModule1.ADOQuery_jame_bedehi_be_foroshandeha.SQL.Text:='select  sum(bedehkar)as bedeh_kol from T_bestankar_bedehkar_foroshande';
  DataModule1.ADOQuery_jame_bedehi_be_foroshandeha.Open;
end;

procedure TFrm_jedvalbedeh.FormShow(Sender: TObject);
begin
  esearch.Text:='';
  e_cod.Clear;
  show;
  esearch.SetFocus;
end;

procedure TFrm_jedvalbedeh.dxToolButton123Click(Sender: TObject);
begin
  Frm_print_bedehi.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  Frm_print_bedehi.QuickRep1.Preview;
end;

procedure TFrm_jedvalbedeh.esearchChange(Sender: TObject);
begin
  DataM_final.ADOQ_bedeh_be_foroshnse.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;

procedure TFrm_jedvalbedeh.e_codKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_jedvalbedeh.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataM_final.ADOQ_bedeh_be_foroshnse.Locate('code_shakhs',e_cod.Text,[loPartialKey]);
end;

procedure TFrm_jedvalbedeh.dxToolButton12Click(Sender: TObject);
begin
  Frm_print_bedehi.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  Frm_print_bedehi.QuickRep1.Print;
end;

procedure TFrm_jedvalbedeh.btn_print_takiClick(Sender: TObject);
begin
  frm_joziate_eslahe_bedehe_foroshande.show_slahat_for_bedehe_foroshande(DataM_final.ADOQ_bedeh_be_foroshnseshahrforoshande.AsString);
  frm_joziate_eslahe_bedehe_foroshande.ShowModal;
end;

procedure TFrm_jedvalbedeh.suiButton1Click(Sender: TObject);
begin
  Frm_pardakht_shoma.ShowModal;
end;

end.
