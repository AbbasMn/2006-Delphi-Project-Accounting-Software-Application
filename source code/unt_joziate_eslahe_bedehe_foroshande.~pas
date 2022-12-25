unit unt_joziate_eslahe_bedehe_foroshande;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, StdCtrls, DBCtrls, LMDControl,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, DB;

type
  Tfrm_joziate_eslahe_bedehe_foroshande = class(TForm)
    GroupBox6: TGroupBox;
    Label9: TLabel;
    DBText_t_jam: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    lmdb_badi: TLMDSpeedButton;
    lmdb_gabli: TLMDSpeedButton;
    lmdb_avali: TLMDSpeedButton;
    lmdb_akharin: TLMDSpeedButton;
    Label1: TLabel;
    DBText2: TDBText;
    DBMemo1: TDBMemo;
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    procedure show_slahat_for_bedehe_foroshande(s:string);
    procedure lmdb_avaliClick(Sender: TObject);
    procedure lmdb_akharinClick(Sender: TObject);
    procedure lmdb_badiClick(Sender: TObject);
    procedure lmdb_gabliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_joziate_eslahe_bedehe_foroshande: Tfrm_joziate_eslahe_bedehe_foroshande;

implementation

uses unt_DataM_final;

{$R *.dfm}

procedure Tfrm_joziate_eslahe_bedehe_foroshande.show_slahat_for_bedehe_foroshande(s:string);
begin
  DataM_final.ADOQ_eslahe_bedehe_tozihe_foroshande.SQL.Text:='select * from t_tozihe_eslahe_bedehi_foroshande '+
  ' where shakhs='+QuotedStr(s)+' order by id';
  DataM_final.ADOQ_eslahe_bedehe_tozihe_foroshande.Open;
end;

procedure Tfrm_joziate_eslahe_bedehe_foroshande.lmdb_avaliClick(
  Sender: TObject);
begin
  DataM_final.ADOQ_eslahe_bedehe_tozihe_foroshande.First;
end;

procedure Tfrm_joziate_eslahe_bedehe_foroshande.lmdb_akharinClick(
  Sender: TObject);
begin
  DataM_final.ADOQ_eslahe_bedehe_tozihe_foroshande.Last;
end;

procedure Tfrm_joziate_eslahe_bedehe_foroshande.lmdb_badiClick(
  Sender: TObject);
begin
  DataM_final.ADOQ_eslahe_bedehe_tozihe_foroshande.Next;
end;

procedure Tfrm_joziate_eslahe_bedehe_foroshande.lmdb_gabliClick(
  Sender: TObject);
begin
  DataM_final.ADOQ_eslahe_bedehe_tozihe_foroshande.Prior;
end;

end.
