unit Unt_foroshandegan_jens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, SUIDBCtrls, ExtCtrls, SUIForm, dxCore,
  dxButtons, StdCtrls, SUIImagePanel, SUIGroupBox, DBCtrls, SUIButton, Mask;

type
  TFrm_foroshandegan_jens = class(TForm)
    Dskharid: TDataSource;
    dsjens: TDataSource;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    esearch: TEdit;
    suiDbjens: TsuiDBGrid;
    suiDBGrid1: TsuiDBGrid;
    dxToolButton11: TdxToolButton;
    GroupBox2: TGroupBox;
    RadioGroup1: TRadioGroup;
    g_sal: TGroupBox;
    Label1: TLabel;
    scsal: TDBLookupComboBox;
    g_tarikh: TGroupBox;
    RadioGroup2: TRadioGroup;
    MaskEditrooz: TMaskEdit;
    MaskEditmah: TMaskEdit;
    MaskEditsal: TMaskEdit;
    g_b_tarikh: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    E_roz_ebteda: TEdit;
    E_mah_ebteda: TEdit;
    E_sal_ebteda: TEdit;
    E_roz_enteha: TEdit;
    E_mah_enteha: TEdit;
    E_sal_enteha: TEdit;
    suiButton1: TsuiButton;
    DataSource1: TDataSource;
    Label3: TLabel;
    Edit2: TEdit;
    dxToolButton1: TdxToolButton;
    procedure dxToolButton11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure showajnas_sal;
    procedure showajnas_b_tarikh;
    procedure showajnas_tarikh;
    procedure type_;
    procedure suiButton1Click(Sender: TObject);
    procedure MaskEditmahChange(Sender: TObject);
    procedure scsalClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure E_roz_ebtedaExit(Sender: TObject);
    procedure E_roz_entehaExit(Sender: TObject);
    procedure E_mah_ebtedaExit(Sender: TObject);
    procedure E_mah_entehaExit(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure MaskEditroozChange(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_foroshandegan_jens: TFrm_foroshandegan_jens;

implementation

uses Unt_print_ajnas_foroshande, Unt_print_foroshandegan_jens, unt_main,
  Untdmlistha, unt_factor, unt_login, Unt_add_to_arshiv, unt_datamodule1,
  Taghvim;

{$R *.dfm}

procedure TFrm_foroshandegan_jens.showajnas_b_tarikh;
var tarikh1,tarikh2,st:string;
begin
    tarikh1:=trim(E_sal_ebteda.Text)+'/'+trim(E_mah_ebteda.Text)+'/'+trim(E_roz_ebteda.Text);
   tarikh2:=trim(E_sal_enteha.Text)+'/'+trim(E_mah_enteha.Text)+'/'+trim(E_roz_enteha.Text);

   st:='select * from jens_ where jens='+QuotedStr(Dmlistha.ADOdistinctcalaname2calaname.AsString )+
    ' and code_sherkati='+QuotedStr(Dmlistha.ADOdistinctcalaname2code_sherkati.AsString)+
   ' and tarikh between '+QuotedStr(tarikh1)+' and'+QuotedStr(tarikh2)+'order by tarikh,shahrforoshande';
   Dmlistha.ADOkharidha.SQL.Text:=st;
   Dmlistha.ADOkharidha.open;

   Dmlistha.ADOQ_jame_keraye_har_jens.SQL.Text:='select sum(keraye) as keray_kol from jens_ where jens='+
   QuotedStr(Dmlistha.ADOdistinctcalaname2calaname.AsString)+' and tarikh between '+QuotedStr(tarikh1)+' and'+QuotedStr(tarikh2);
   Dmlistha.ADOQ_jame_keraye_har_jens.Open;

   Dmlistha.ADO_mohasebe_kol_dar_kharid.SQL.Text:='select sum(kol)as kol_ ,sum(tedad_koli) as tedade_koli,sum(tedad) as tedede_kol,sum(teded_jozi) as tedae_kole_jozi'+
   ' from jens_  where jens='+QuotedStr(Dmlistha.ADOdistinctcalaname2calaname.AsString )+
   ' and tarikh between '+QuotedStr(tarikh1)+' and'+QuotedStr(tarikh2);
  Dmlistha.ADO_mohasebe_kol_dar_kharid.Open;

    Frm_print_foroshandegan_jens.QRLarshiv.Caption:=' ?? ????? '+tarikh1+' ?? ????? '+tarikh2;
end;
procedure TFrm_foroshandegan_jens.showajnas_tarikh;
var tarikh,st:string;
begin
   tarikh:=MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text;

   st:='select * from jens_ where jens='+QuotedStr(Dmlistha.ADOdistinctcalaname2calaname.AsString )+
    ' and code_sherkati='+QuotedStr(Dmlistha.ADOdistinctcalaname2code_sherkati.AsString)+
    ' and tarikh='+QuotedStr(tarikh)+' order by shahrforoshande';
    Dmlistha.ADOkharidha.SQL.Text:=st;
    Dmlistha.ADOkharidha.open;

   Dmlistha.ADOQ_jame_keraye_har_jens.SQL.Text:='select sum(keraye) as keray_kol from jens_ where jens='+
   QuotedStr(Dmlistha.ADOdistinctcalaname2calaname.AsString)+' and tarikh='+QuotedStr(tarikh);
   Dmlistha.ADOQ_jame_keraye_har_jens.Open;

   Dmlistha.ADO_mohasebe_kol_dar_kharid.SQL.Text:='select sum(kol)as kol_ ,sum(tedad_koli) as tedade_koli,sum(tedad) as tedede_kol,sum(teded_jozi) as tedae_kole_jozi'+
   ' from jens_ where jens='+QuotedStr(Dmlistha.ADOdistinctcalaname2calaname.AsString )+
   ' and tarikh='+QuotedStr(tarikh);
  Dmlistha.ADO_mohasebe_kol_dar_kharid.Open;
   Frm_print_foroshandegan_jens.QRLarshiv.Caption:=' ?? ???? ?????'+tarikh;
end;

procedure TFrm_foroshandegan_jens.showajnas_sal;
var st,tarikh:string;
begin
    st:='select * from jens_ where jens='+QuotedStr(Dmlistha.ADOdistinctcalaname2calaname.AsString )+
    ' and code_sherkati='+QuotedStr(Dmlistha.ADOdistinctcalaname2code_sherkati.AsString)+
    ' and tarikh like '+QuotedStr(scsal.Text+'%')+' order by tarikh,shahrforoshande';
    Dmlistha.ADOkharidha.SQL.Text:=st;
    Dmlistha.ADOkharidha.open;

   Dmlistha.ADOQ_jame_keraye_har_jens.SQL.Text:='select sum(keraye) as keray_kol from jens_ where jens='+
   QuotedStr(Dmlistha.ADOdistinctcalaname2calaname.AsString)+' and tarikh like '+QuotedStr(scsal.Text+'%');
   Dmlistha.ADOQ_jame_keraye_har_jens.Open;

   Dmlistha.ADO_mohasebe_kol_dar_kharid.SQL.Text:='select sum(kol)as kol_ ,sum(tedad_koli) as tedade_koli,sum(tedad) as tedede_kol,sum(teded_jozi) as tedae_kole_jozi'+
   ' from jens_  where jens='+QuotedStr(Dmlistha.ADOdistinctcalaname2calaname.AsString )+
    ' and tarikh like '+QuotedStr(scsal.Text+'%');
  Dmlistha.ADO_mohasebe_kol_dar_kharid.Open;
   Frm_print_foroshandegan_jens.QRLarshiv.Caption:=' ?? ???? ??? '+scsal.Text;
end;
procedure TFrm_foroshandegan_jens.type_;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    g_tarikh.Visible:=true;
    g_sal.Visible:=false;
    g_b_tarikh.Visible:=false;
    showajnas_tarikh;
  end;

  if RadioGroup1.ItemIndex=1 then
  begin
    g_tarikh.Visible:=false;
    g_sal.Visible:=trUe;
    g_b_tarikh.Visible:=false;showajnas_sal;
  end;
  if RadioGroup1.ItemIndex=2 then
  begin
    g_tarikh.Visible:=false;
    g_sal.Visible:=false;
    g_b_tarikh.Visible:=true;
    showajnas_b_tarikh;
  end;
end;


procedure TFrm_foroshandegan_jens.dxToolButton11Click(Sender: TObject);
begin
  Frm_print_foroshandegan_jens.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  Frm_print_foroshandegan_jens.QuickRep1.Preview;
end;

procedure TFrm_foroshandegan_jens.FormShow(Sender: TObject);
begin
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;

   Dmlistha.ADOdistinctcalaname2.SQL.Text:='select distinct calaname,code_sherkati from Tanbar_jens_kolli order by calaname,code_sherkati';
   Dmlistha.ADOdistinctcalaname2.Open;

  MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
   MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
   MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];

  RadioGroup1.ItemIndex:=1;
  RadioGroup2.ItemIndex:=0;

  type_;

  esearch.Text:='';
  esearch.SetFocus;
  Frm_foroshandegan_jens.WindowState:=wsMaximized;
end;






procedure TFrm_foroshandegan_jens.suiButton1Click(Sender: TObject);
begin
  showajnas_b_tarikh;
end;

procedure TFrm_foroshandegan_jens.MaskEditmahChange(Sender: TObject);
begin
  showajnas_tarikh;
end;

procedure TFrm_foroshandegan_jens.scsalClick(Sender: TObject);
begin
  showajnas_sal;
end;

procedure TFrm_foroshandegan_jens.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

procedure TFrm_foroshandegan_jens.E_roz_ebtedaExit(Sender: TObject);
begin
  if StrLen(pchar(E_roz_ebteda.Text))=1 then
     E_roz_ebteda.Text:='0'+E_roz_ebteda.Text;
end;

procedure TFrm_foroshandegan_jens.E_roz_entehaExit(Sender: TObject);
begin
  if StrLen(pchar(E_roz_enteha.Text))=1 then
     E_roz_enteha.Text:='0'+E_roz_enteha.Text;
end;

procedure TFrm_foroshandegan_jens.E_mah_ebtedaExit(Sender: TObject);
begin
  if StrLen(pchar(E_mah_ebteda.Text))=1 then
     E_mah_ebteda.Text:='0'+E_mah_ebteda.Text;
end;

procedure TFrm_foroshandegan_jens.E_mah_entehaExit(Sender: TObject);
begin
  if StrLen(pchar(E_mah_enteha.Text))=1 then
     E_mah_enteha.Text:='0'+E_mah_enteha.Text;
end;

procedure TFrm_foroshandegan_jens.RadioGroup2Click(Sender: TObject);
begin
 if RadioGroup2.ItemIndex =0  then
    begin
      MaskEditrooz.Enabled :=false;
      MaskEditmah.Enabled :=false;
      MaskEditsal.Enabled :=false;
      MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
      MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
      MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
    end
  else
    begin
      _Taghvim.ShowModal;
      if _taghvim._str_date<>'' then
      begin
        MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
        MaskEditMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
        MaskEditRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
      end;
    end;
end;

procedure TFrm_foroshandegan_jens.MaskEditroozChange(Sender: TObject);
begin
  showajnas_tarikh;
end;

procedure TFrm_foroshandegan_jens.esearchChange(Sender: TObject);
begin
   Dmlistha.ADOdistinctcalaname2.Locate('calaname',esearch.Text,[loPartialKey]);
end;



procedure TFrm_foroshandegan_jens.Edit2Change(Sender: TObject);
begin
   Dmlistha.ADOdistinctcalaname2.Locate('code_sherkati',Edit2.Text,[loPartialKey]);
end;

procedure TFrm_foroshandegan_jens.dxToolButton1Click(Sender: TObject);
begin
  Frm_print_foroshandegan_jens.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  Frm_print_foroshandegan_jens.QuickRep1.Print;
end;

end.
