unit unt_moshakhasat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton, Grids,
  DBGrids, SUIDBCtrls, ExtCtrls, Mask, DB, dxCore, dxButtons;

type
  Tfrm_moshakhasat = class(TForm)
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
    DBText3: TDBText;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    DBText4: TDBText;
    dxToolButton11: TdxToolButton;
    Label6: TLabel;
    E_name: TEdit;
    RadioGroup2: TRadioGroup;
    dxToolButton1: TdxToolButton;
    procedure RadioGroup1Click(Sender: TObject);
    procedure type_;
    procedure by_name;
    procedure by_code;
    procedure FormShow(Sender: TObject);
    procedure lmdb_avaliClick(Sender: TObject);
    procedure lmdb_gabliClick(Sender: TObject);
    procedure lmdb_badiClick(Sender: TObject);
    procedure lmdb_akharinClick(Sender: TObject);
    procedure dxToolButton11Click(Sender: TObject);
    procedure E_nameChange(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_moshakhasat: Tfrm_moshakhasat;

implementation

uses unt_datamodule1, Math, unt_print_moshakhasat, unt_login;

{$R *.dfm}
procedure Tfrm_moshakhasat.by_code;
var s:string;
begin
 if RadioGroup2.ItemIndex=0 then
 begin
  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande where type_='+QuotedStr('Œ—Ìœ«—/›—Ê‘‰œÂ')+
  ' order by code';
  s:='Œ—Ìœ«—/›—Ê‘‰œÂ';
 end;

 if RadioGroup2.ItemIndex=2 then
 begin
  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande where type_='+QuotedStr('›—Ê‘‰œÂ')+
  ' or type_='+QuotedStr('Œ—Ìœ«—/›—Ê‘‰œÂ')+
  ' order by code';
  s:='›—Ê‘‰œÂ';
 end;

 if RadioGroup2.ItemIndex=1 then
 begin
  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande where type_='+QuotedStr('Œ—Ìœ«—')+
  ' or type_='+QuotedStr('Œ—Ìœ«—/›—Ê‘‰œÂ')+
  ' order by code';

  s:='Œ—Ìœ«—';
 end;


  DataModule1.ADOQuery3.Open;
  frm_print_moshakhasat.QRL_type.Caption:=' ·Ì”  „‘Œ’«  «‘Œ«’ '+s+' »— «”«” òœ ‘Œ’ ';

end;
procedure Tfrm_moshakhasat.by_name;
var s:string;
begin
 if RadioGroup2.ItemIndex=0 then
 begin
  DataModule1.ADOQuery3.SQL.Text:='select * from t_shahr_foroshande where type_='+QuotedStr('Œ—Ìœ«—/›—Ê‘‰œÂ')+
  ' order by shahrforoshande';
  s:='Œ—Ìœ«—/›—Ê‘‰œÂ';
 end;

 if RadioGroup2.ItemIndex=2 then
 begin
  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande where type_='+QuotedStr('›—Ê‘‰œÂ')+
  ' or type_='+QuotedStr('Œ—Ìœ«—/›—Ê‘‰œÂ')+
  ' order by shahrforoshande';
  s:='›—Ê‘‰œÂ';
 end;

 if RadioGroup2.ItemIndex=1 then
 begin
  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande where type_='+QuotedStr('Œ—Ìœ«—')+
  ' or type_='+QuotedStr('Œ—Ìœ«—/›—Ê‘‰œÂ')+
  ' order by shahrforoshande';

  s:='Œ—Ìœ«—';
 end;


  DataModule1.ADOQuery3.Open;
  frm_print_moshakhasat.QRL_type.Caption:=' ·Ì”  „‘Œ’«  «‘Œ«’ '+s+' »— «”«” ‰«„ Œ«‰Ê«œêÌ ‰«„ ‘Â—  ';
end;
procedure Tfrm_moshakhasat.type_;
begin
  If RadioGroup1.ItemIndex=0 then
    by_name
  else
    by_code;
end;

procedure Tfrm_moshakhasat.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

procedure Tfrm_moshakhasat.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
  RadioGroup2.ItemIndex:=0;
  type_;

  E_name.Clear;
  E_name.SetFocus;
end;

procedure Tfrm_moshakhasat.lmdb_avaliClick(Sender: TObject);
begin
  DataModule1.ADOQuery3.First;
end;

procedure Tfrm_moshakhasat.lmdb_gabliClick(Sender: TObject);
begin
  DataModule1.ADOQuery3.Prior;
end;

procedure Tfrm_moshakhasat.lmdb_badiClick(Sender: TObject);
begin
  DataModule1.ADOQuery3.Next;
end;

procedure Tfrm_moshakhasat.lmdb_akharinClick(Sender: TObject);
begin
  DataModule1.ADOQuery3.Last;
end;

procedure Tfrm_moshakhasat.dxToolButton11Click(Sender: TObject);
begin
  frm_print_moshakhasat.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
  frm_print_moshakhasat.QuickRep1.Preview;
end;

procedure Tfrm_moshakhasat.E_nameChange(Sender: TObject);
begin
DataModule1.ADOQuery3.Locate('shahrforoshande',E_name.Text,[loPartialKey]);
end;

procedure Tfrm_moshakhasat.RadioGroup2Click(Sender: TObject);
begin
  type_;
end;

procedure Tfrm_moshakhasat.dxToolButton1Click(Sender: TObject);
begin
  frm_print_moshakhasat.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
  frm_print_moshakhasat.QuickRep1.Print;
end;

end.
