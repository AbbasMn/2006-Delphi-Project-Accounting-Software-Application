unit Unt_jadval_bedehkarha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, SUIDBCtrls, ExtCtrls, SUIForm, dxCore,
  dxButtons, StdCtrls, SUIImagePanel, SUIGroupBox, DBCtrls, SUIButton;

type
  TFrm_jadval_bedehkarha = class(TForm)
    DataSource1: TDataSource;
    suiGroupBox1: TsuiGroupBox;
    esearch: TEdit;
    suiDBGrid1: TsuiDBGrid;
    dxToolButton12: TdxToolButton;
    Label1: TLabel;
    DBText4: TDBText;
    DataSource2: TDataSource;
    e_cod: TEdit;
    dxToolButton1: TdxToolButton;
    btn_print_taki: TsuiButton;
    Label4: TLabel;
    Label8: TLabel;
    suiButton1: TsuiButton;
    procedure FormShow(Sender: TObject);
    procedure showallbedehkarha;
    procedure dxToolButton12Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure e_codChange(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
    procedure btn_print_takiClick(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_jadval_bedehkarha: TFrm_jadval_bedehkarha;

implementation

uses unt_datamodule2, unt_frm_shakhs_bedehka, unt_main, unt_login,
  unt_DataM_final, unt_datamodule1, unt_joziate_eslahe_bedehe_kharidar,
  unt_joziate_eslahe_bedehe_foroshande, unt_list_pardakht_ha;

{$R *.dfm}
procedure TFrm_jadval_bedehkarha.showallbedehkarha;
begin
  {DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='select * from T_bede_kol_be_kharidar where bedeh >0  order by shahrforoshande';
  DataM_final.ADOQ_bedeh_be_kharidar.Open; }

  DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='select code_shakhs,shahrforoshande,'+
  ' sum(bedehkar)as bedeh,sum(bestankar)as talab from '+
  ' T_bestankar_bedehkar_kharidar '+
  ' group by code_shakhs,shahrforoshande order by shahrforoshande';
  DataM_final.ADOQ_bedeh_be_kharidar.Open;


  DataModule1.ADOQuery_jame_bedehi_be_kharidaran.SQL.Text:='select  sum(bedehkar)as bedeh_kol from T_bestankar_bedehkar_kharidar';
  DataModule1.ADOQuery_jame_bedehi_be_kharidaran.Open;
end;

procedure TFrm_jadval_bedehkarha.FormShow(Sender: TObject);
begin
  e_cod.Clear;
  esearch.Text:='';
  esearch.SetFocus;
  showallbedehkarha;
end;

procedure TFrm_jadval_bedehkarha.dxToolButton12Click(Sender: TObject);
begin
  frm_shakhs_bedehkar.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  frm_shakhs_bedehkar.QuickRep1.Preview;
end;

procedure TFrm_jadval_bedehkarha.esearchChange(Sender: TObject);
begin
  DataM_final.ADOQ_bedeh_be_kharidar.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;


procedure TFrm_jadval_bedehkarha.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_jadval_bedehkarha.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataM_final.ADOQ_bedeh_be_kharidar.Locate('code_shakhs',e_cod.Text,[loPartialKey]);
end;

procedure TFrm_jadval_bedehkarha.dxToolButton1Click(Sender: TObject);
begin
  frm_shakhs_bedehkar.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  frm_shakhs_bedehkar.QuickRep1.Print;
end;

procedure TFrm_jadval_bedehkarha.btn_print_takiClick(Sender: TObject);
begin
  frm_joziate_eslahe_bedehe_kharidar.show_slahat_for_bedehe_kharidar(DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString);
  frm_joziate_eslahe_bedehe_kharidar.ShowModal;
end;

procedure TFrm_jadval_bedehkarha.suiButton1Click(Sender: TObject);
begin
  frm_list_pardakht_ha.ShowModal;
end;

end.
