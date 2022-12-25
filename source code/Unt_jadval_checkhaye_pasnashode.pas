unit Unt_jadval_checkhaye_pasnashode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButtons, Grids, DBGrids, SUIDBCtrls, ExtCtrls, SUIForm,
  DB, DBCtrls, StdCtrls, SUIButton, Mask;

type
  TFrm_jadval_checkhaye_pasnashode = class(TForm)
    Dskharidha: TDataSource;
    dxToolButton12: TdxToolButton;
    suiDBGrid1: TsuiDBGrid;
    GroupBox1: TGroupBox;
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
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Esearch2: TEdit;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    esearch: TEdit;
    dxToolButton1: TdxToolButton;
    procedure dxToolButton12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure type_;
    procedure salha;
    procedure sal;
    procedure tarikh;
    procedure dotarikh;
    procedure suiButton1Click(Sender: TObject);
    procedure scsalClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure MaskEditroozChange(Sender: TObject);
    procedure Esearch2KeyPress(Sender: TObject; var Key: Char);
    procedure Esearch2Change(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
      private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_jadval_checkhaye_pasnashode: TFrm_jadval_checkhaye_pasnashode;

implementation

uses unt_datamodule2, unt_chek_no_pas, unt_main, unt_factor, unt_login,
  unt_datamodule1, unt_DataM_final, Taghvim;


{$R *.dfm}
procedure TFrm_jadval_checkhaye_pasnashode.dotarikh;
var tarikh1,tarikh2,st:string;
begin
    tarikh1:=trim(E_sal_ebteda.Text)+'/'+trim(E_mah_ebteda.Text)+'/'+trim(E_roz_ebteda.Text);
   tarikh2:=trim(E_sal_enteha.Text)+'/'+trim(E_mah_enteha.Text)+'/'+trim(E_roz_enteha.Text);
if Frm_jadval_checkhaye_pasnashode.Caption<>'çòÂ«Ì Å«” ‘œÂ' then
begin
  DataM_final.ADOQ_T_pardakht_check_forosh.SQL.Text:='select * from T_pardakht_check_forosh where pass='+
  QuotedStr('ŒÌ—')+' and tarikh between '+QuotedStr(tarikh1)+' and '+QuotedStr(tarikh2)+' order by tarikh,shahrforoshande,sh_hesab';
  DataM_final.ADOQ_T_pardakht_check_forosh.Open;

  frm_chek_not_pas.QRLONVAN.Caption:=' çòÂ«Ì Å«” ‰‘œÂ '+' »«  «—ÌŒ çò «“'+tarikh1+'  «  «—ÌŒ çò '+tarikh2;

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where pass='+
  QuotedStr('ŒÌ—')+' and tarikh between '+QuotedStr(tarikh1)+' and '+QuotedStr(tarikh2);
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;
end
else
begin
  DataM_final.ADOQ_T_pardakht_check_forosh.SQL.Text:='select * from T_pardakht_check_forosh where pass<>'+
  QuotedStr('ŒÌ—')+' and tarikh between '+QuotedStr(tarikh1)+' and '+QuotedStr(tarikh2)+' order by tarikh,shahrforoshande,sh_hesab';
  DataM_final.ADOQ_T_pardakht_check_forosh.Open;

  frm_chek_not_pas.QRLONVAN.Caption:=' çòÂ«Ì Å«” ‘œÂ '+' »«  «—ÌŒ çò «“'+tarikh1+'  «  «—ÌŒ çò '+tarikh2;

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where pass<>'+
  QuotedStr('ŒÌ—')+' and tarikh between '+QuotedStr(tarikh1)+' and '+QuotedStr(tarikh2);
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;
end;
end;
procedure TFrm_jadval_checkhaye_pasnashode.tarikh;
var tarikh:string;
begin
   tarikh:=MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text;
if Frm_jadval_checkhaye_pasnashode.Caption<>'çòÂ«Ì Å«” ‘œÂ' then
begin
  DataM_final.ADOQ_T_pardakht_check_forosh.SQL.Text:='select * from T_pardakht_check_forosh where pass='+
  QuotedStr('ŒÌ—')+' and tarikh='+QuotedStr(tarikh)+' order by tarikh,shahrforoshande,sh_hesab';
  DataM_final.ADOQ_T_pardakht_check_forosh.Open;
  frm_chek_not_pas.QRLONVAN.Caption:=' çòÂ«Ì Å«” ‰‘œÂ »«  «—ÌŒ '+tarikh;

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where pass='+
  QuotedStr('ŒÌ—')+' and tarikh='+QuotedStr(tarikh);
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;
end
else
begin
  DataM_final.ADOQ_T_pardakht_check_forosh.SQL.Text:='select * from T_pardakht_check_forosh where pass<>'+
  QuotedStr('ŒÌ—')+' and tarikh='+QuotedStr(tarikh)+' order by tarikh,shahrforoshande,sh_hesab';
  DataM_final.ADOQ_T_pardakht_check_forosh.Open;
  frm_chek_not_pas.QRLONVAN.Caption:=' çòÂ«Ì Å«” ‘œÂ »«  «—ÌŒ '+tarikh;

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where pass<>'+
  QuotedStr('ŒÌ—')+' and tarikh='+QuotedStr(tarikh);
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;
end;
end;
procedure TFrm_jadval_checkhaye_pasnashode.sal;
begin
if Frm_jadval_checkhaye_pasnashode.Caption<>'çòÂ«Ì Å«” ‘œÂ' then
begin
  DataM_final.ADOQ_T_pardakht_check_forosh.SQL.Text:='select * from T_pardakht_check_forosh where pass='+
  QuotedStr('ŒÌ—')+' and tarikh like'+QuotedStr(trim(scsal.Text)+'%')+' order by tarikh,shahrforoshande,sh_hesab';
  DataM_final.ADOQ_T_pardakht_check_forosh.Open;

  frm_chek_not_pas.QRLONVAN.Caption:=' çòÂ«Ì Å«” ‰‘œÂ »«  «—ÌŒ ”«· '+trim(scsal.Text);

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where pass='+
  QuotedStr('ŒÌ—')+' and tarikh like'+QuotedStr(trim(scsal.Text)+'%');
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;
end
else
begin
  DataM_final.ADOQ_T_pardakht_check_forosh.SQL.Text:='select * from T_pardakht_check_forosh where pass<>'+
  QuotedStr('ŒÌ—')+' and tarikh like'+QuotedStr(trim(scsal.Text)+'%')+' order by tarikh,shahrforoshande,sh_hesab';
  DataM_final.ADOQ_T_pardakht_check_forosh.Open;

  frm_chek_not_pas.QRLONVAN.Caption:=' çòÂ«Ì Å«” ‘œÂ »«  «—ÌŒ ”«· '+trim(scsal.Text);

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where pass<>'+
  QuotedStr('ŒÌ—')+' and tarikh like'+QuotedStr(trim(scsal.Text)+'%');
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;
end;

end;
procedure TFrm_jadval_checkhaye_pasnashode.salha;
begin
if Frm_jadval_checkhaye_pasnashode.Caption<>'çòÂ«Ì Å«” ‘œÂ' then
begin
  DataM_final.ADOQ_T_pardakht_check_forosh.SQL.Text:='select * from T_pardakht_check_forosh where pass='+
  QuotedStr('ŒÌ—')+' order by tarikh,shahrforoshande,sh_hesab';
  DataM_final.ADOQ_T_pardakht_check_forosh.Open;

  frm_chek_not_pas.QRLONVAN.Caption:=' çòÂ«Ì Å«” ‰‘œÂ »« Â—  «—ÌŒÌ';

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where pass='+
  QuotedStr('ŒÌ—');
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;
end
else
begin
  DataM_final.ADOQ_T_pardakht_check_forosh.SQL.Text:='select * from T_pardakht_check_forosh where pass<>'+
  QuotedStr('ŒÌ—');
  DataM_final.ADOQ_T_pardakht_check_forosh.Open;

  frm_chek_not_pas.QRLONVAN.Caption:=' çòÂ«Ì Å«” ‘œÂ »« Â—  «—ÌŒÌ';

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where pass<>'+
  QuotedStr('ŒÌ—');
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;
end;
end;
//////////////////////////
procedure TFrm_jadval_checkhaye_pasnashode.type_;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    g_tarikh.Visible:=true;
    g_sal.Visible:=false;
    g_b_tarikh.Visible:=false;
    tarikh;
  end;

  if RadioGroup1.ItemIndex=1 then
  begin
    g_tarikh.Visible:=false;
    g_sal.Visible:=trUe;
    g_b_tarikh.Visible:=false;
    sal;
  end;
  if RadioGroup1.ItemIndex=2 then
  begin
    g_tarikh.Visible:=false;
    g_sal.Visible:=false;
    g_b_tarikh.Visible:=true;
    dotarikh;
  end;
  if RadioGroup1.ItemIndex=3 then
  begin
    g_tarikh.Visible:=false;
    g_sal.Visible:=false;
    g_b_tarikh.Visible:=false;
    salha;
  end;
end;
////////////////////
procedure TFrm_jadval_checkhaye_pasnashode.dxToolButton12Click(
  Sender: TObject);
begin
   frm_chek_not_pas.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
   frm_chek_not_pas.QRL_tedad.Caption:=IntToStr(DataM_final.ADOQ_T_pardakht_check_forosh.RecordCount);
   frm_chek_not_pas.QRL_mab_kol.Caption:=FloatToStr(DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat);
   frm_chek_not_pas.QuickRep1.Preview;
end;

procedure TFrm_jadval_checkhaye_pasnashode.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;

  RadioGroup2.ItemIndex:=0;
   MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
   MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
   MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
   tarikh;
  Frm_jadval_checkhaye_pasnashode.WindowState:=wsMaximized;

  Esearch2.Clear;
  Esearch2.SetFocus;

  esearch.Clear;
  
  E_roz_ebteda.Clear;
  E_roz_enteha.Clear;

  E_mah_ebteda.Clear;
  E_mah_enteha.Clear;

  E_sal_ebteda.Clear;
  E_sal_enteha.Clear;
end;

procedure TFrm_jadval_checkhaye_pasnashode.RadioGroup1Click(
  Sender: TObject);
begin
 type_;
end;
procedure TFrm_jadval_checkhaye_pasnashode.suiButton1Click(
  Sender: TObject);
begin
  dotarikh;
end;

procedure TFrm_jadval_checkhaye_pasnashode.scsalClick(Sender: TObject);
begin
  sal;
end;

procedure TFrm_jadval_checkhaye_pasnashode.RadioGroup2Click(
  Sender: TObject);
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
   tarikh; 
end;

procedure TFrm_jadval_checkhaye_pasnashode.MaskEditroozChange(
  Sender: TObject);
begin
  tarikh;
end;

procedure TFrm_jadval_checkhaye_pasnashode.Esearch2KeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_jadval_checkhaye_pasnashode.Esearch2Change(Sender: TObject);
begin
 if esearch2.Text<>'' then
   DataM_final.ADOQ_T_pardakht_check_forosh.Locate('sh_check',esearch2.Text,[loPartialKey]);
end;

procedure TFrm_jadval_checkhaye_pasnashode.esearchChange(Sender: TObject);
begin
DataM_final.ADOQ_T_pardakht_check_forosh.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;

procedure TFrm_jadval_checkhaye_pasnashode.dxToolButton1Click(
  Sender: TObject);
begin
   frm_chek_not_pas.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
   frm_chek_not_pas.QRL_tedad.Caption:=IntToStr(DataM_final.ADOQ_T_pardakht_check_forosh.RecordCount);
   frm_chek_not_pas.QRL_mab_kol.Caption:=FloatToStr(DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat);
   frm_chek_not_pas.QuickRep1.Print;
end;

end.
