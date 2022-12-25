unit unt_list_kharid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PDJ_XPHD, PDJ_XPB, PDJ_XPDBC, StdCtrls, PDJ_XPC, PDJ_XPGB,
  PDJ_XPRGB, KsSkinEngine, se_controls, KsSkinForms, DB, ADODB, Grids,
  DBGrids, SUIMgr, SUIDBCtrls, ExtCtrls, Buttons, KsSkinButtons,
  KsSkinGroupBoxs, DBCtrls, KsSkinLabels, SUIButton, OleCtrls,
  ShockwaveFlashObjects_TLB;

type
  Tfrm_list_kharid = class(TForm)
    DataSource1: TDataSource;
    suiDBGrid1: TsuiDBGrid;
    SeSkinEngine1: TSeSkinEngine;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    SeSkinForm1: TSeSkinForm;
    PDJXPHeader2: TPDJXPHeader;
    PDJXPHeader3: TPDJXPHeader;
    PDJXPCollapsePanel3: TPDJXPCollapsePanel;
    PDJXPCollapsePanel1: TPDJXPCollapsePanel;
    PDJXPHeader1: TPDJXPHeader;
    PDJXPCollapsePanel2: TPDJXPCollapsePanel;
    SeSkinGroupBox1: TSeSkinGroupBox;
    SeSkinButton1: TSeSkinButton;
    SeSkinButton2: TSeSkinButton;
    SeSkinButton3: TSeSkinButton;
    SeSkinButton4: TSeSkinButton;
    SeSkinLabel1: TSeSkinLabel;
    SeSkinLabel2: TSeSkinLabel;
    SeSkinLabel3: TSeSkinLabel;
    DataSource3: TDataSource;
    DataSource2: TDataSource;
    suiDBLookupComboBox1: TsuiDBLookupComboBox;
    suiDBLookupComboBox2: TsuiDBLookupComboBox;
    SeSkinButton5: TSeSkinButton;
    SeSkinLabel4: TSeSkinLabel;
    SeSkinLabel5: TSeSkinLabel;
    SeSkinLabel6: TSeSkinLabel;
    PDJXPEdit1: TPDJXPEdit;
    SeSkinLabel8: TSeSkinLabel;
    SeSkinLabel9: TSeSkinLabel;
    SeSkinLabel10: TSeSkinLabel;
    SeSkinLabel11: TSeSkinLabel;
    SeSkinLabel12: TSeSkinLabel;
    PDJXPEdit2: TPDJXPEdit;
    SeSkinLabel13: TSeSkinLabel;
    SeSkinButton6: TSeSkinButton;
    SeSkinButton7: TSeSkinButton;
    DataSource4: TDataSource;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    PDJXPHeader4: TPDJXPHeader;
    PDJXPCollapsePanel4: TPDJXPCollapsePanel;
    SeSkinLabel14: TSeSkinLabel;
    SeSkinLabel15: TSeSkinLabel;
    PDJXPEdit3: TPDJXPEdit;
    PDJXPEdit4: TPDJXPEdit;
    SeSkinLabel16: TSeSkinLabel;
    PDJXPEdit5: TPDJXPEdit;
    SeSkinButton8: TSeSkinButton;
    procedure FormShow(Sender: TObject);
    procedure SeSkinButton2Click(Sender: TObject);
    procedure SeSkinButton1Click(Sender: TObject);
    procedure SeSkinButton4Click(Sender: TObject);
    procedure SeSkinButton3Click(Sender: TObject);
    procedure SeSkinButton5Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure SeSkinButton6Click(Sender: TObject);
    procedure SeSkinButton7Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure kol_pardakht_;
    procedure tedad_chek;
    procedure SeSkinButton8Click(Sender: TObject);
    procedure suiDBLookupComboBox1Click(Sender: TObject);

  private

    { Private declarations }
  public
    { Public declarations }
     stcommand_shahr_foroshande,stcommand_tarikh,stcommand_chek,stcommandkol:String;
     procedure getstcommand_shahr_foroshande;
     procedure getstcommand_tarikh;
     procedure getstcommand_chek;
     procedure getstcommandkol;
  end;

var
  frm_list_kharid: Tfrm_list_kharid;

implementation

uses unt_datamodule1, Taghvim;

{$R *.dfm}
//////////////

procedure Tfrm_list_kharid.tedad_chek;
var st2:String;
begin
   st2:='select count(*) from jens_'+
   ' where chek_number<>"" or pardakht_chek<>0';
   DataModule1.ADOQuery3.SQL.Text:=st2;
   DataModule1.ADOQuery3.Open;
   PDJXPEdit5.Text:=IntToStr(DataModule1.ADOQuery3.Fields[0].AsInteger);
end;
//////////////
procedure Tfrm_list_kharid.kol_pardakht_;
var  st:string;
begin
  st:='select sum(pardakht_nagd),sum(pardakht_chek) from jens_';
  DataModule1.ADOQuery3.SQL.Text:=st;
  DataModule1.ADOQuery3.Open;
  DataModule1.ADOQuery3.ExecSQL;
  PDJXPEdit3.Text:=DataModule1.ADOQuery3.Fields[0].AsString;
  PDJXPEdit4.Text:=DataModule1.ADOQuery3.Fields[1].AsString;


end;
//////////////
procedure Tfrm_list_kharid.getstcommand_shahr_foroshande;
begin
    stcommand_shahr_foroshande:='select * from jens_ where shahr='+QuotedStr(suiDBLookupComboBox1.Text)+' and foroshande='+QuotedStr(suiDBLookupComboBox2.Text);
     DataModule1.ADOQuery4.SQL.Text:=stcommand_shahr_foroshande;
     DataModule1.ADOQuery4.Active:=true;
     DataModule1.ADOQuery4.Requery;
end;
//////////////

//////////////

//////////////

//////////////
procedure Tfrm_list_kharid.getstcommand_chek;
begin
    stcommand_chek:='select * from jens_ where chek_number='+QuotedStr(PDJXPEdit2.Text);
     DataModule1.ADOQuery4.SQL.Text:=stcommand_chek;
     DataModule1.ADOQuery4.Active:=true;
     DataModule1.ADOQuery4.Requery;
end;
//////////////
procedure Tfrm_list_kharid.getstcommandkol;
begin
    stcommandkol:='select * from jens_ ';
     DataModule1.ADOQuery4.SQL.Text:=stcommandkol;
     DataModule1.ADOQuery4.Active:=true;
     DataModule1.ADOQuery4.Requery;
end;
//////////////
procedure Tfrm_list_kharid.FormShow(Sender: TObject);
begin
  DataModule1.ADOQuery4.Requery;
  kol_pardakht_;
  PDJXPEdit1.Text:='';
  PDJXPEdit2.Text:='';
  tedad_chek;
end;

procedure Tfrm_list_kharid.SeSkinButton2Click(Sender: TObject);
begin
  DataModule1.ADOQuery4.First;
end;

procedure Tfrm_list_kharid.SeSkinButton1Click(Sender: TObject);
begin
  DataModule1.ADOQuery4.Last;
end;

procedure Tfrm_list_kharid.SeSkinButton4Click(Sender: TObject);
begin
  DataModule1.ADOQuery4.Next;
end;

procedure Tfrm_list_kharid.SeSkinButton3Click(Sender: TObject);
begin
  DataModule1.ADOQuery4.Prior;
end;

procedure Tfrm_list_kharid.SeSkinButton5Click(Sender: TObject);
begin
   getstcommand_shahr_foroshande;
end;

procedure Tfrm_list_kharid.suiButton1Click(Sender: TObject);
begin
  getstcommandkol;
end;

procedure Tfrm_list_kharid.SeSkinButton6Click(Sender: TObject);
begin
  getstcommand_tarikh;
end;

procedure Tfrm_list_kharid.SeSkinButton7Click(Sender: TObject);
begin
  getstcommand_chek;
end;

procedure Tfrm_list_kharid.suiButton2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_list_kharid.getstcommand_tarikh;
begin
  stcommand_tarikh:='select * from jens_ where tarikh_='+QuotedStr(PDJXPEdit1.Text);
     DataModule1.ADOQuery4.SQL.Text:=stcommand_tarikh;
     DataModule1.ADOQuery4.Active:=true;
     DataModule1.ADOQuery4.Requery;
end;


procedure Tfrm_list_kharid.SeSkinButton8Click(Sender: TObject);
begin
  _taghvim.ShowModal;
  PDJXPEdit1.Text:=_taghvim._str_date;
end;

procedure Tfrm_list_kharid.suiDBLookupComboBox1Click(Sender: TObject);
begin
  DataModule1.ADOQuery2.SQL.Text:='select distinct foroshande from t_shahr_foroshande where shahr='+QuotedStr(suiDBLookupComboBox1.Text);
  DataModule1.ADOQuery2.Open;
end;

end.
