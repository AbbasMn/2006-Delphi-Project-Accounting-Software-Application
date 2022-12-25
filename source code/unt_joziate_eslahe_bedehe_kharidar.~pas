unit unt_joziate_eslahe_bedehe_kharidar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton, Grids,
  DBGrids, SUIDBCtrls, DB;

type
  Tfrm_joziate_eslahe_bedehe_kharidar = class(TForm)
    suiDBGrid1: TsuiDBGrid;
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
    DBMemo1: TDBMemo;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBText2: TDBText;
    procedure lmdb_avaliClick(Sender: TObject);
    procedure lmdb_akharinClick(Sender: TObject);
    procedure lmdb_badiClick(Sender: TObject);
    procedure lmdb_gabliClick(Sender: TObject);
    procedure show_slahat_for_bedehe_kharidar(s:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_joziate_eslahe_bedehe_kharidar: Tfrm_joziate_eslahe_bedehe_kharidar;

implementation

uses unt_DataM_final;

{$R *.dfm}
procedure Tfrm_joziate_eslahe_bedehe_kharidar.show_slahat_for_bedehe_kharidar(s:string);
begin
  DataM_final.ADOQ_eslahe_bedehe_tozihe_kharidar.SQL.Text:='select * from t_tozihe_eslahe_bedehi_kharidar '+
  ' where shakhs='+QuotedStr(s)+' order by id';
  DataM_final.ADOQ_eslahe_bedehe_tozihe_kharidar.Open;
end;


procedure Tfrm_joziate_eslahe_bedehe_kharidar.lmdb_avaliClick(
  Sender: TObject);
begin
  DataM_final.ADOQ_eslahe_bedehe_tozihe_kharidar.First;
end;

procedure Tfrm_joziate_eslahe_bedehe_kharidar.lmdb_akharinClick(
  Sender: TObject);
begin
  DataM_final.ADOQ_eslahe_bedehe_tozihe_kharidar.Last;
end;

procedure Tfrm_joziate_eslahe_bedehe_kharidar.lmdb_badiClick(
  Sender: TObject);
begin
  DataM_final.ADOQ_eslahe_bedehe_tozihe_kharidar.Next;
end;

procedure Tfrm_joziate_eslahe_bedehe_kharidar.lmdb_gabliClick(
  Sender: TObject);
begin
  DataM_final.ADOQ_eslahe_bedehe_tozihe_kharidar.Prior;
end;

end.
