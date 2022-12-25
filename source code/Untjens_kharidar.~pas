unit Untjens_kharidar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, SUIMgr, ExtCtrls, SUIForm, DB,
  dxCore, dxButtons, StdCtrls, SUIImagePanel, SUIGroupBox, DBCtrls,
  SUIButton, Mask;

type
  TFrm_jens_kharidar = class(TForm)
    dsjens: TDataSource;
    Dskharidar: TDataSource;
    suiDBGrid1: TsuiDBGrid;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    esearch: TEdit;
    dxToolButton12: TdxToolButton;
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
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    suiDbjens: TsuiDBGrid;
    dxToolButton1: TdxToolButton;
    procedure dxToolButton12Click(Sender: TObject);
    procedure showajnas;
    procedure FormShow(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure type_;
    procedure showkharidaran_sal;
    procedure showkharidaran_tarikh;
    procedure showkharidaran_bein_do_tarikh;
    procedure suiButton1Click(Sender: TObject);
    procedure MaskEditroozChange(Sender: TObject);
    procedure scsalClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure E_roz_ebtedaExit(Sender: TObject);
    procedure E_roz_entehaExit(Sender: TObject);
    procedure E_mah_ebtedaExit(Sender: TObject);
    procedure E_mah_entehaExit(Sender: TObject);
    procedure E_roz_ebtedaKeyPress(Sender: TObject; var Key: Char);
    procedure E_roz_entehaKeyPress(Sender: TObject; var Key: Char);
    procedure E_mah_ebtedaKeyPress(Sender: TObject; var Key: Char);
    procedure E_mah_entehaKeyPress(Sender: TObject; var Key: Char);
    procedure E_sal_ebtedaKeyPress(Sender: TObject; var Key: Char);
    procedure E_sal_entehaKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure dxToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_jens_kharidar: TFrm_jens_kharidar;

implementation

uses Unt_dmanbar,Untdmlistha, Unt_print_jens_kharidar, unt_main, unt_login,
  unt_datamodule1, Taghvim;

{$R *.dfm}
procedure TFrm_jens_kharidar.showkharidaran_bein_do_tarikh;
var tarikh1,tarikh2,st:string;
begin
    tarikh1:=trim(E_sal_ebteda.Text)+'/'+trim(E_mah_ebteda.Text)+'/'+trim(E_roz_ebteda.Text);
   tarikh2:=trim(E_sal_enteha.Text)+'/'+trim(E_mah_enteha.Text)+'/'+trim(E_roz_enteha.Text);
  if Dmlistha.ADOdistinctcalanamecalaname.AsString<>'' then
    begin
      Dmlistha.ADOlistforosh.SQL.Text:='select * from  forosh_jens where jens='+QuotedStr(Dmlistha.ADOdistinctcalanamecalaname.AsString)+
      ' and calacod='+Dmlistha.ADOdistinctcalanamecalacod.AsString+
      ' and code_sherkati='+QuotedStr(Dmlistha.ADOdistinctcalanamecode_sherkati.AsString)+
      ' and tarikh between '+QuotedStr(tarikh1)+' and'+QuotedStr(tarikh2)+
       'order by shahrforoshande,tarikh';
      Dmlistha.ADOlistforosh.Open;
      Frm_print_jens_kharidar.QRLtype.Caption:='·Ì”  Œ—Ìœ«—«‰ Ã‰”  '+Dmlistha.ADOdistinctcalanamecalaname.AsString+' «“ '+tarikh1+'  « '+tarikh2;

      Dmlistha.ADOQ_arzesh_tedad_forosh_jens.SQL.Text:='select sum(geymat_jens) as kol_ , sum(tedad_koli) as t_v_kol,'+
      'sum(tedad) as t_v_joz,sum(tedad_kol) as tedad_koll from forosh_jens '+
      ' where jens='+QuotedStr(Dmlistha.ADOdistinctcalanamecalaname.AsString)+
      ' and tarikh between '+QuotedStr(tarikh1)+' and'+QuotedStr(tarikh2);
      Dmlistha.ADOQ_arzesh_tedad_forosh_jens.Open;
    end;
end;
procedure TFrm_jens_kharidar.showkharidaran_tarikh;
var tarikh,st:string;
begin
   tarikh:=MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text;
  if Dmlistha.ADOdistinctcalanamecalaname.AsString<>'' then
    begin
      Dmlistha.ADOlistforosh.SQL.Text:='select * from  forosh_jens where jens='+QuotedStr(Dmlistha.ADOdistinctcalanamecalaname.AsString)+
      ' and calacod='+Dmlistha.ADOdistinctcalanamecalacod.AsString+
      ' and code_sherkati='+QuotedStr(Dmlistha.ADOdistinctcalanamecode_sherkati.AsString)+
      ' and tarikh='+QuotedStr(tarikh)+
       'order by shahrforoshande,tarikh';
      Dmlistha.ADOlistforosh.Open;

      Frm_print_jens_kharidar.QRLtype.Caption:='·Ì”  Œ—Ìœ«—«‰ Ã‰”  '+Dmlistha.ADOdistinctcalanamecalaname.AsString+' œ—  «—ÌŒ '+tarikh;
      Dmlistha.ADOQ_arzesh_tedad_forosh_jens.SQL.Text:='select sum(geymat_jens) as kol_ , sum(tedad_koli) as t_v_kol,'+
      'sum(tedad) as t_v_joz,sum(tedad_kol) as tedad_koll from forosh_jens '+
      ' where jens='+QuotedStr(Dmlistha.ADOdistinctcalanamecalaname.AsString)+
       ' and tarikh='+QuotedStr(tarikh);
      Dmlistha.ADOQ_arzesh_tedad_forosh_jens.Open;
    end;
end;

procedure TFrm_jens_kharidar.showkharidaran_sal;
begin
  if Dmlistha.ADOdistinctcalanamecalaname.AsString<>'' then
    begin
      Dmlistha.ADOlistforosh.SQL.Text:='select * from  forosh_jens where jens='+QuotedStr(Dmlistha.ADOdistinctcalanamecalaname.AsString)+
      ' and calacod='+Dmlistha.ADOdistinctcalanamecalacod.AsString+
      ' and code_sherkati='+QuotedStr(Dmlistha.ADOdistinctcalanamecode_sherkati.AsString)+
      ' and tarikh like '+QuotedStr(scsal.Text+'%')+
       'order by shahrforoshande,tarikh';
      Dmlistha.ADOlistforosh.Open;

      Frm_print_jens_kharidar.QRLtype.Caption:='·Ì”  Œ—Ìœ«—«‰ Ã‰”  '+Dmlistha.ADOdistinctcalanamecalaname.AsString+' œ— ”«· '+scsal.Text;
      Dmlistha.ADOQ_arzesh_tedad_forosh_jens.SQL.Text:='select sum(geymat_jens) as kol_ , sum(tedad_koli) as t_v_kol,'+
      'sum(tedad) as t_v_joz,sum(tedad_kol) as tedad_koll from forosh_jens '+
      ' where jens='+QuotedStr(Dmlistha.ADOdistinctcalanamecalaname.AsString)+
      ' and tarikh like '+QuotedStr(scsal.Text+'%');
      Dmlistha.ADOQ_arzesh_tedad_forosh_jens.Open;
    end;
end;

procedure TFrm_jens_kharidar.type_;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    g_tarikh.Visible:=true;
    g_sal.Visible:=false;
    g_b_tarikh.Visible:=false;
    showkharidaran_tarikh;

  end;

  if RadioGroup1.ItemIndex=1 then
  begin
    g_tarikh.Visible:=false;
    g_sal.Visible:=trUe;
    g_b_tarikh.Visible:=false;
    showkharidaran_sal;
  end;
  if RadioGroup1.ItemIndex=2 then
  begin
    g_tarikh.Visible:=false;
    g_sal.Visible:=false;
    g_b_tarikh.Visible:=true;
    showkharidaran_bein_do_tarikh;
  end;
end;


procedure TFrm_jens_kharidar.showajnas;
begin
  Dmlistha.ADOdistinctcalaname.SQL.Text:='select distinct calaname,calacod,code_sherkati from Tanbar_jens_kolli order by calaname,calacod,code_sherkati';
  Dmlistha.ADOdistinctcalaname.Open;
end;


procedure TFrm_jens_kharidar.dxToolButton12Click(Sender: TObject);
begin
   Frm_print_jens_kharidar.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
   Frm_print_jens_kharidar.QuickRep1.Preview;
end;

procedure TFrm_jens_kharidar.FormShow(Sender: TObject);
begin
  showajnas;
  RadioGroup1.ItemIndex:=0;
  RadioGroup2.ItemIndex:=0;
  MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
  MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
  MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
  type_;
  esearch.Text:='';
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;

  showkharidaran_tarikh;
  Frm_jens_kharidar.WindowState:=wsMaximized;
  Edit1.Clear;
  Edit2.Clear;
  esearch.SetFocus;
  esearch.Clear;
end;
procedure TFrm_jens_kharidar.esearchChange(Sender: TObject);
begin
  Dmlistha.ADOdistinctcalaname.Locate('calaname',esearch.Text,[loPartialKey]);
end;



procedure TFrm_jens_kharidar.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;


procedure TFrm_jens_kharidar.suiButton1Click(Sender: TObject);
begin
 showkharidaran_bein_do_tarikh;
end;

procedure TFrm_jens_kharidar.MaskEditroozChange(Sender: TObject);
begin
  showkharidaran_tarikh;
end;

procedure TFrm_jens_kharidar.scsalClick(Sender: TObject);
begin
  showkharidaran_sal;
end;

procedure TFrm_jens_kharidar.RadioGroup2Click(Sender: TObject);
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

procedure TFrm_jens_kharidar.E_roz_ebtedaExit(Sender: TObject);
begin
  if StrLen(pchar(E_roz_ebteda.Text))=1 then
     E_roz_ebteda.Text:='0'+E_roz_ebteda.Text;
end;

procedure TFrm_jens_kharidar.E_roz_entehaExit(Sender: TObject);
begin
  if StrLen(pchar(E_roz_enteha.Text))=1 then
     E_roz_enteha.Text:='0'+E_roz_enteha.Text;
end;

procedure TFrm_jens_kharidar.E_mah_ebtedaExit(Sender: TObject);
begin
  if StrLen(pchar(E_mah_ebteda.Text))=1 then
     E_mah_ebteda.Text:='0'+E_mah_ebteda.Text;
end;

procedure TFrm_jens_kharidar.E_mah_entehaExit(Sender: TObject);
begin
  if StrLen(pchar(E_mah_enteha.Text))=1 then
     E_mah_enteha.Text:='0'+E_mah_enteha.Text;
end;

procedure TFrm_jens_kharidar.E_roz_ebtedaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_jens_kharidar.E_roz_entehaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_jens_kharidar.E_mah_ebtedaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_jens_kharidar.E_mah_entehaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_jens_kharidar.E_sal_ebtedaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_jens_kharidar.E_sal_entehaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_jens_kharidar.Edit1Change(Sender: TObject);
begin
  if trim(Edit1.Text)<>'' then
   Dmlistha.ADOdistinctcalaname.Locate('calacod',Edit1.Text,[loPartialKey]);
end;

procedure TFrm_jens_kharidar.Edit2Change(Sender: TObject);
begin
   Dmlistha.ADOdistinctcalaname.Locate('code_sherkati',Edit2.Text,[loPartialKey]);
end;

procedure TFrm_jens_kharidar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_jens_kharidar.dxToolButton1Click(Sender: TObject);
begin
   Frm_print_jens_kharidar.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
   Frm_print_jens_kharidar.QuickRep1.Print;
end;

end.
