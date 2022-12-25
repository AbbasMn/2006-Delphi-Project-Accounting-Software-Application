unit unt_search_bank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxCore, dxButtons, Grids, DBGrids, ExtCtrls, SUIForm,
  StdCtrls, SUIButton, DBCtrls;

type
  TFrm_search_bank = class(TForm)
    suiForm1: TsuiForm;
    DBGrid1: TDBGrid;
    dxToolButton12: TdxToolButton;
    RadioGroup1: TRadioGroup;
    G_bank: TGroupBox;
    E_search: TEdit;
    G_tarikh: TGroupBox;
    RadioGroup11: TRadioGroup;
    E_tarikh: TEdit;
    Label1: TLabel;
    DBGrid3: TDBGrid;
    DataSource2: TDataSource;
    G_hesab_do_tarikh: TGroupBox;
    G_do_tarikh: TGroupBox;
    Label5: TLabel;
    E_roz_enteha: TEdit;
    Label6: TLabel;
    E_mah_enteha: TEdit;
    Label7: TLabel;
    E_sal_enteha: TEdit;
    E_sal_ebteda: TEdit;
    Label11: TLabel;
    E_mah_ebteda: TEdit;
    Label9: TLabel;
    E_roz_ebteda: TEdit;
    Label2: TLabel;
    btaeedall: TsuiButton;
    Label3: TLabel;
    E_roz_en1: TEdit;
    Label4: TLabel;
    E_mah_en1: TEdit;
    Label8: TLabel;
    E_sal_en1: TEdit;
    E_sal_eb1: TEdit;
    Label10: TLabel;
    E_mah_eb1: TEdit;
    Label12: TLabel;
    E_roz_eb1: TEdit;
    Label13: TLabel;
    suiButton1: TsuiButton;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    DBText9: TDBText;
    Label15: TLabel;
    DBText10: TDBText;
    Label18: TLabel;
    DBText13: TDBText;
    DataSource3: TDataSource;
    Label16: TLabel;
    DataSource4: TDataSource;
    DataSource1: TDataSource;
    dxToolButton1: TdxToolButton;
    procedure RadioGroup11Click(Sender: TObject);
    procedure type_;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bank;
    procedure tarikh;
    procedure bank_do_tarikh;
    procedure do_tarikh;
    procedure E_tarikhChange(Sender: TObject);
    procedure E_searchChange(Sender: TObject);
    procedure dxToolButton12Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure btaeedallClick(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_search_bank: TFrm_search_bank;

implementation

uses unt_DataM_forosh, Taghvim, unt_main, unt_print_bank,
   unt_print_bank2, unt_DataM_final1, Untdmlistha, unt_login,
  unt_moshkhasat_bank;

{$R *.dfm}
procedure TFrm_search_bank.do_tarikh;
var begin_,end_:string;
begin
  begin_:=E_sal_ebteda.Text+'/'+E_mah_ebteda.Text+'/'+E_roz_ebteda.Text;
  end_:=E_sal_enteha.Text+'/'+E_mah_enteha.Text+'/'+E_roz_enteha.Text;

  DataM_forosh.ADOQ_mande_bank.SQL.Text:='select sum(bestankar-bedehkar) as mande_kol from t_bank1 where tarikh between '+QuotedStr(begin_)+' and '+QuotedStr(end_);
  DataM_forosh.ADOQ_mande_bank.Open;

  DataM_final1.ADOQ_bank2.SQL.Text:='select * from t_bank1 where tarikh between '+QuotedStr(begin_)+' and '+QuotedStr(end_)+
  ' order by tarikh,cod,moshakhasat_kol';
  DataM_final1.ADOQ_bank2.Open;

  DataM_forosh.ADOQ_jame_bank.SQL.Text:='select sum(bedehkar) as bedehkar_kol,sum(bestankar)'+
  'as bestankar_kol from t_bank1  where tarikh between '+QuotedStr(begin_)+' and '+QuotedStr(end_);
  DataM_forosh.ADOQ_jame_bank.Open;

  frm_print_bank.QRL_type.Caption:=' ������ ����� '+' �� '+begin_+'�� '+ end_;

end;

procedure TFrm_search_bank.bank_do_tarikh;
var begin_,end_:string;
begin
  begin_:=E_sal_eb1.Text+'/'+E_mah_eb1.Text+'/'+E_roz_eb1.Text;
  end_:=E_sal_en1.Text+'/'+E_mah_en1.Text+'/'+E_roz_en1.Text;

  DataM_forosh.ADOQ_mande_bank.SQL.Text:='select sum(bestankar-bedehkar) as mande_kol from t_bank1 where '+
  'moshakhasat_kol='+QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString)+' and tarikh between '+QuotedStr(begin_)+' and '+QuotedStr(end_);
  DataM_forosh.ADOQ_mande_bank.Open;

  DataM_forosh.ADOQ_jame_bank.SQL.Text:='select sum(bedehkar) as bedehkar_kol,sum(bestankar)as bestankar_kol from t_bank1 where '+
  'moshakhasat_kol='+QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString)+' and tarikh between '+QuotedStr(begin_)+' and '+QuotedStr(end_);
  DataM_forosh.ADOQ_jame_bank.Open;


  DataM_final1.ADOQ_bank2.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString)+
  ' and tarikh between '+QuotedStr(begin_)+' and '+QuotedStr(end_)+' order by tarikh,cod';
  DataM_final1.ADOQ_bank2.Open;


  frm_print_bank2.QRL_type.Caption:=' ������ ���� ����  '+Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString+
  ' �� '+begin_+'�� '+ end_;
end;


procedure TFrm_search_bank.bank;
begin

  DataM_forosh.ADOQ_mande_bank.SQL.Text:='select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString);
  DataM_forosh.ADOQ_mande_bank.Open;


  DataM_forosh.ADOQ_jame_bank.SQL.Text:='select sum(bedehkar) as bedehkar_kol,sum(bestankar)as bestankar_kol from t_bank1 where moshakhasat_kol='+QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString);
  DataM_forosh.ADOQ_jame_bank.Open;


  DataM_final1.ADOQ_bank2.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString);
  DataM_final1.ADOQ_bank2.Open;
end;

procedure TFrm_search_bank.tarikh;
begin
  DataM_forosh.ADOQ_mande_bank.SQL.Text:='select sum(bestankar-bedehkar) as mande_kol from t_bank1 where tarikh='+QuotedStr(E_tarikh.Text);
  DataM_forosh.ADOQ_mande_bank.Open;

  DataM_final1.ADOQ_bank2.SQL.Text:='select * from t_bank1 where tarikh='+QuotedStr(E_tarikh.Text)+' order by moshakhasat_kol,cod';
  DataM_final1.ADOQ_bank2.Open;

  DataM_forosh.ADOQ_jame_bank.SQL.Text:='select sum(bedehkar) as bedehkar_kol,sum(bestankar)'+
  'as bestankar_kol from t_bank1  where tarikh='+QuotedStr(E_tarikh.Text);
  DataM_forosh.ADOQ_jame_bank.Open;

end;

 procedure TFrm_search_bank.type_;
 begin
   if RadioGroup1.ItemIndex=0 then
    begin
      G_bank.Visible:=true;
      G_tarikh.Visible:=false;
      G_hesab_do_tarikh.Visible:=false;
      G_do_tarikh.Visible:=False;
      bank;
      frm_print_bank2.QRL_type.Caption:=' ������ ���� ����  '+Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString;
    end;
    if RadioGroup1.ItemIndex=1 then
    begin
      G_bank.Visible:=false;
      G_tarikh.Visible:=true;
      G_hesab_do_tarikh.Visible:=false;
      G_do_tarikh.Visible:=False;
      tarikh;
      frm_print_bank.QRL_type.Caption:='������ �����   '+E_tarikh.Text;
    end;
   if RadioGroup1.ItemIndex=2 then
    begin
      G_bank.Visible:=true;
      G_tarikh.Visible:=false;
      G_hesab_do_tarikh.Visible:=true;
      G_do_tarikh.Visible:=False;
      bank_do_tarikh;
    end;
   if RadioGroup1.ItemIndex=3 then
    begin
      G_bank.Visible:=False;
      G_tarikh.Visible:=false;
      G_hesab_do_tarikh.Visible:=false;
      G_do_tarikh.Visible:=true;
      do_tarikh;
    end;
   
 end;


procedure TFrm_search_bank.RadioGroup11Click(Sender: TObject);
begin
if RadioGroup11.ItemIndex=1 then
  Begin
    _taghvim.ShowModal;
    E_tarikh.Text:=_taghvim._str_date;
    if E_tarikh.Text='' then
      E_tarikh.Text:=Frm_login.Egettarikh.Text;
  end
  else
  E_tarikh.Text:=Frm_login.Egettarikh.Text;
end;

procedure TFrm_search_bank.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

procedure TFrm_search_bank.FormShow(Sender: TObject);
begin
  Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='select * from T_shomare_hesabe_banki order by bank_shobe_sh_hesab';
  Dmlistha.ADOQuery_shomare_hesabe_banki.Open;

  RadioGroup11.ItemIndex:=0;
  E_tarikh.Text:=Frm_login.Egettarikh.Text;
  RadioGroup1.ItemIndex:=0;
  RadioGroup11.ItemIndex:=0;
  type_;
  Frm_search_bank.WindowState:=wsMaximized;

  E_search.Clear;
  E_roz_enteha.Clear;
  E_roz_ebteda.Clear;

  E_mah_enteha.Clear;
  E_mah_ebteda.Clear;

  E_sal_enteha.Clear;
  E_sal_ebteda.Clear;

  E_search.SetFocus;
end;





procedure TFrm_search_bank.E_tarikhChange(Sender: TObject);
begin
   type_;
end;

procedure TFrm_search_bank.E_searchChange(Sender: TObject);
begin
  Dmlistha.ADOQuery_shomare_hesabe_banki.Locate('bank_shobe_sh_hesab',E_search.Text,[loPartialKey]);
   type_;
end;

procedure TFrm_search_bank.dxToolButton12Click(Sender: TObject);
begin

  if RadioGroup1.ItemIndex=0 then
    frm_print_bank2.QuickRep1.Preview;

  if RadioGroup1.ItemIndex=1 then
    frm_print_bank.QuickRep1.Preview;

  if RadioGroup1.ItemIndex=2 then
     frm_print_bank2.QuickRep1.Preview;

  if RadioGroup1.ItemIndex=3 then
    frm_print_bank.QuickRep1.Preview;  

end;

procedure TFrm_search_bank.suiButton1Click(Sender: TObject);
begin
 bank_do_tarikh;
end;

procedure TFrm_search_bank.btaeedallClick(Sender: TObject);
begin
  do_tarikh;
end;

procedure TFrm_search_bank.dxToolButton1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then
    frm_print_bank2.QuickRep1.Print;

  if RadioGroup1.ItemIndex=1 then
    frm_print_bank.QuickRep1.Print;

  if RadioGroup1.ItemIndex=2 then
     frm_print_bank2.QuickRep1.Print;

  if RadioGroup1.ItemIndex=3 then
    frm_print_bank.QuickRep1.Print;
end;

end.
