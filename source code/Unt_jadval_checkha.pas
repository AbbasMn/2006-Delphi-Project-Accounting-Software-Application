unit Unt_jadval_checkha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, ExtCtrls, SUIForm, DB, dxCore,
  dxButtons, StdCtrls, SUIImagePanel, SUIGroupBox, DBCtrls;

type
  Tfrm_jadval_checkha = class(TForm)
    Dskharidha: TDataSource;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Esearch2: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    esearch: TEdit;
    suiDBGrid1: TsuiDBGrid;
    dxToolButton12: TdxToolButton;
    dxToolButton1: TdxToolButton;
    procedure FormShow(Sender: TObject);
    procedure dxToolButton12Click(Sender: TObject);
    procedure Esearch2Change(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure showcheck_not_arshiv;
    procedure showcheck_hardo;
    procedure showcheck_arshiv;
    procedure RadioGroup1Click(Sender: TObject);
    procedure typ_;
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure Esearch2KeyPress(Sender: TObject; var Key: Char);
    procedure dxToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jadval_checkha: Tfrm_jadval_checkha;

implementation

uses unt_datamodule2, unt_chek_factor, unt_main, unt_login,
  unt_datamodule1, unt_DataM_final;

{$R *.dfm}
procedure Tfrm_jadval_checkha.typ_;
begin
{ if RadioGroup1.ItemIndex=0 then
  begin
    abc showcheck_hardo;
    DBLookupComboBox2.Enabled:=false;
  end;  
 if RadioGroup1.ItemIndex=1 then
  begin
   DBLookupComboBox2.Enabled:=True;
   abc showcheck_arshiv;
  end;
 if RadioGroup1.ItemIndex=2 then
  begin
   DBLookupComboBox2.Enabled:=false;
   abc showcheck_not_arshiv;
  end;}
end;
procedure Tfrm_jadval_checkha.showcheck_arshiv;
begin
  {DataModule2.ADOQuery1.SQL.Text:='select * from forosh_jens where arshive='+QuotedStr('yes') +'and daryaft_chek<>0 and forosh_tarikhyear='+QuotedStr(DBLookupComboBox2.Text)+'order by chek_number,kharidar,forosh_tarikhyear,chek_tarikh';
  DataModule2.ADOQuery1.Open;
  frm_chek_factor.QRLtype.Caption:='·Ì”  çòÂ«Ì œ—Ì«› Ì ‘„« -- ¬—‘ÌÊ”«·  '+DBLookupComboBox2.Tex;}
end;
procedure Tfrm_jadval_checkha.showcheck_hardo;
begin
  DataModule2.ADOQuery1.SQL.Text:='select * from forosh_jens where  daryaft_chek<>0 order by chek_number,kharidar,forosh_tarikhyear,chek_tarikh';
  DataModule2.ADOQuery1.Open;
  frm_chek_factor.QRLtype.Caption:='·Ì”  çòÂ«Ì œ—Ì«› Ì ‘„« -- ¬—‘ÌÊ Ê €Ì— ¬—‘ÌÊ'; 
end;
procedure Tfrm_jadval_checkha.showcheck_not_arshiv;
begin
  DataModule2.ADOQuery1.SQL.Text:='select * from forosh_jens where arshive='+QuotedStr('no') +'and daryaft_chek<>0 order by chek_number,kharidar,forosh_tarikhyear,chek_tarikh';
  DataModule2.ADOQuery1.Open;
  frm_chek_factor.QRLtype.Caption:='·Ì”  çòÂ«Ì œ—Ì«› Ì ‘„« -- €Ì— ¬—‘ÌÊ';
end;

procedure Tfrm_jadval_checkha.FormShow(Sender: TObject);
begin
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;
  frm_main.show_check;
  esearch.Text:='';
  esearch2.Text:='';
  esearch2.SetFocus;

  frm_jadval_checkha.WindowState:=wsMaximized;
end;

procedure Tfrm_jadval_checkha.dxToolButton12Click(Sender: TObject);
begin
  frm_chek_factor.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  frm_chek_factor.QuickRep1.Preview;
end;
procedure Tfrm_jadval_checkha.Esearch2Change(Sender: TObject);
begin
  if esearch2.Text<>'' then
   DataM_final.ADOQ_T_pardakht_check_forosh.Locate('sh_check',esearch2.Text,[loPartialKey]);
end;

procedure Tfrm_jadval_checkha.esearchChange(Sender: TObject);
begin
  DataM_final.ADOQ_T_pardakht_check_forosh.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;



procedure Tfrm_jadval_checkha.RadioGroup1Click(Sender: TObject);
begin
 typ_;
end;

procedure Tfrm_jadval_checkha.DBLookupComboBox2Click(Sender: TObject);
begin
 showcheck_arshiv;
end;

procedure Tfrm_jadval_checkha.Esearch2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_jadval_checkha.dxToolButton1Click(Sender: TObject);
begin
  frm_chek_factor.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  frm_chek_factor.QuickRep1.Print;
end;

end.
