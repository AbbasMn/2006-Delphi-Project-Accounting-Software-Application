unit Unt_jens_foroshandeha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, ExtCtrls, SUIForm, DB, dxCore,
  dxButtons, StdCtrls, SUIImagePanel, SUIGroupBox, DBCtrls, Mask, SUIButton;

type
  Tfrm_jens_foroshandeha = class(TForm)
    suiDbjens: TsuiDBGrid;
    suiDBGrid1: TsuiDBGrid;
    dsshakhs: TDataSource;
    Dskharid: TDataSource;
    dxToolButton13: TdxToolButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    esearch: TEdit;
    GroupBox2: TGroupBox;
    RadioGroup1: TRadioGroup;
    g_sal: TGroupBox;
    Label1: TLabel;
    scsal: TDBLookupComboBox;
    DataSource1: TDataSource;
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
    Label2: TLabel;
    e_cod: TEdit;
    dxToolButton1: TdxToolButton;
    procedure dxToolButton13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure showajnas_sal;
    procedure showajnas_tarikh;
    procedure showajnas_b_tarikh;
    procedure esearchChange(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure type_;
    procedure RadioGroup1Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure MaskEditroozChange(Sender: TObject);
    procedure scsalClick(Sender: TObject);
    procedure E_roz_ebtedaKeyPress(Sender: TObject; var Key: Char);
    procedure E_roz_ebtedaExit(Sender: TObject);
    procedure E_mah_ebtedaExit(Sender: TObject);
    procedure E_roz_entehaExit(Sender: TObject);
    procedure E_mah_entehaExit(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure e_codChange(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jens_foroshandeha: Tfrm_jens_foroshandeha;

implementation

uses unt_datamodule1, Untdmlistha, Unt_print_ajnas_foroshande, unt_main,
  unt_login, Taghvim, unt_DataM_final, Unt_search_inkharid,
  Unt_mmoshakhasat_shakhs;

{$R *.dfm}

procedure Tfrm_jens_foroshandeha.showajnas_b_tarikh;
var tarikh1,tarikh2,st:string;
begin
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
    tarikh1:=trim(E_sal_ebteda.Text)+'/'+trim(E_mah_ebteda.Text)+'/'+trim(E_roz_ebteda.Text);
   tarikh2:=trim(E_sal_enteha.Text)+'/'+trim(E_mah_enteha.Text)+'/'+trim(E_roz_enteha.Text);
    st:='select * from jens_ where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
    ' and tarikh between '+QuotedStr(tarikh1)+' and'+QuotedStr(tarikh2)+'order by tarikh,jens';
    Dmlistha.ADOkharidha.SQL.Text:=st;
    Dmlistha.ADOkharidha.open;
    Frm_print_ajnas_foroshande.QRLarshive.Caption:=' ?? ????? '+tarikh1+' ?? ????? '+tarikh2;

  Dmlistha.ADOmohasebe_jame_keraye_kharidha.SQL.Text:='select sum(keraye) as keray_kol from t_keraye where code='+
    QuotedStr(DataModule1.ADOQuery3code.AsString)+' and tarikh between '+QuotedStr(tarikh1)+' and '+QuotedStr(tarikh2);
  Dmlistha.ADOmohasebe_jame_keraye_kharidha.Open;


  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_kharid where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh between '+QuotedStr(tarikh1)+' and '+QuotedStr(tarikh2);
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh_kharid between '+QuotedStr(tarikh1)+' and '+QuotedStr(tarikh2);
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ '+
  ' from jens_ where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and tarikh between '+QuotedStr(tarikh1)+' and '+QuotedStr(tarikh2);
  Dmlistha.ADOmohasebe_kharid.Open;


  DataM_final.ADOQ_jame_bede_talab_dar_kharid.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from T_bedehi'+
  ' where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh between '+QuotedStr(tarikh1)+' and '+QuotedStr(tarikh2);
  DataM_final.ADOQ_jame_bede_talab_dar_kharid.Open;
end
else
  MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;
procedure Tfrm_jens_foroshandeha.showajnas_tarikh;
var tarikh,st:string;
begin
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
   tarikh:=MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text;
    st:='select * from jens_ where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
    ' and tarikh='+QuotedStr(tarikh)+'order by jens';
    Dmlistha.ADOkharidha.SQL.Text:=st;
    Dmlistha.ADOkharidha.open;
    Frm_print_ajnas_foroshande.QRLarshive.Caption:=' ?? ???? ?????'+tarikh;

  Dmlistha.ADOmohasebe_jame_keraye_kharidha.SQL.Text:='select sum(keraye) as keray_kol from t_keraye where code='+
    QuotedStr(DataModule1.ADOQuery3code.AsString)+' and tarikh='+QuotedStr(tarikh);
  Dmlistha.ADOmohasebe_jame_keraye_kharidha.Open;

  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_kharid where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh='+QuotedStr(tarikh);
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh_kharid='+QuotedStr(tarikh);
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ '+
  ' from jens_ where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and tarikh='+QuotedStr(tarikh);
  Dmlistha.ADOmohasebe_kharid.Open;


  DataM_final.ADOQ_jame_bede_talab_dar_kharid.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from T_bedehi'+
  ' where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh='+QuotedStr(tarikh);
  DataM_final.ADOQ_jame_bede_talab_dar_kharid.Open;
end
else
  MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;

procedure Tfrm_jens_foroshandeha.showajnas_sal;
var st,tarikh:string;
begin
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
   tarikh:=trim(scsal.Text);
    st:='select * from jens_ where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
    ' and tarikh like '+QuotedStr('%'+tarikh+'%')+' order by tarikh,jens';
    
    Dmlistha.ADOkharidha.SQL.Text:=st;
    Dmlistha.ADOkharidha.open;
    Frm_print_ajnas_foroshande.QRLarshive.Caption:=' ?? ???? ??? '+scsal.Text;


  Dmlistha.ADOmohasebe_jame_keraye_kharidha.SQL.Text:='select sum(keraye) as keray_kol from t_keraye where code='+
    QuotedStr(DataModule1.ADOQuery3code.AsString)+ ' and tarikh like '+QuotedStr(scsal.Text+'%');
  Dmlistha.ADOmohasebe_jame_keraye_kharidha.Open;

  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_kharid where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid where code=+'+DataModule1.ADOQuery3code.AsString+
  ' and tarikh_kharid like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ '+
  ' from jens_  where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and tarikh like '+QuotedStr(scsal.Text+'%');
  Dmlistha.ADOmohasebe_kharid.Open;


  DataM_final.ADOQ_jame_bede_talab_dar_kharid.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from T_bedehi'+
  ' where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_jame_bede_talab_dar_kharid.Open;
end
else
  MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;



procedure Tfrm_jens_foroshandeha.type_;
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
    g_b_tarikh.Visible:=false;
    showajnas_sal;
  end;
  if RadioGroup1.ItemIndex=2 then
  begin
    g_tarikh.Visible:=false;
    g_sal.Visible:=false;
    g_b_tarikh.Visible:=true;
    showajnas_b_tarikh;
  end;
end;


procedure Tfrm_jens_foroshandeha.dxToolButton13Click(Sender: TObject);
begin
  Frm_print_ajnas_foroshande.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  Frm_print_ajnas_foroshande.QuickRep1.Preview;
end;

procedure Tfrm_jens_foroshandeha.FormShow(Sender: TObject);
begin
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;
  Frm_mmoshakhasat_shakhs.show_foroshandegan;
   MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
   MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
   MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
  RadioGroup1.ItemIndex:=0;
  RadioGroup2.ItemIndex:=0;
  type_;
  frm_jens_foroshandeha.WindowState:=wsMaximized;

  esearch.Text:='';
  esearch.SetFocus;
end;

procedure Tfrm_jens_foroshandeha.esearchChange(Sender: TObject);
begin
  DataModule1.ADOQuery3.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;


procedure Tfrm_jens_foroshandeha.RadioGroup2Click(Sender: TObject);
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

procedure Tfrm_jens_foroshandeha.RadioGroup1Click(Sender: TObject);
begin
 type_;
end;

procedure Tfrm_jens_foroshandeha.suiButton1Click(Sender: TObject);
begin
  showajnas_b_tarikh;
end;

procedure Tfrm_jens_foroshandeha.MaskEditroozChange(Sender: TObject);
begin
  showajnas_tarikh;
end;

procedure Tfrm_jens_foroshandeha.scsalClick(Sender: TObject);
begin
  showajnas_sal;
end;

procedure Tfrm_jens_foroshandeha.E_roz_ebtedaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_jens_foroshandeha.E_roz_ebtedaExit(Sender: TObject);
begin
  if StrLen(pchar(E_roz_ebteda.Text))=1 then
     E_roz_ebteda.Text:='0'+E_roz_ebteda.Text;
end;

procedure Tfrm_jens_foroshandeha.E_mah_ebtedaExit(Sender: TObject);
begin
  if StrLen(pchar(E_mah_ebteda.Text))=1 then
     E_mah_ebteda.Text:='0'+E_mah_ebteda.Text;
end;

procedure Tfrm_jens_foroshandeha.E_roz_entehaExit(Sender: TObject);
begin
  if StrLen(pchar(E_roz_enteha.Text))=1 then
     E_roz_enteha.Text:='0'+E_roz_enteha.Text;
end;

procedure Tfrm_jens_foroshandeha.E_mah_entehaExit(Sender: TObject);
begin
  if StrLen(pchar(E_mah_enteha.Text))=1 then
     E_mah_enteha.Text:='0'+E_mah_enteha.Text;
end;

procedure Tfrm_jens_foroshandeha.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_jens_foroshandeha.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure Tfrm_jens_foroshandeha.dxToolButton1Click(Sender: TObject);
begin
  Frm_print_ajnas_foroshande.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  Frm_print_ajnas_foroshande.QuickRep1.Print;
end;

end.
