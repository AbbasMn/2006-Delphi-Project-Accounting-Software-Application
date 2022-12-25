unit unt_gozaresh_az_vorodi_khoroji_anbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, SUIDBCtrls, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton, dxCore,
  dxButtons, StdCtrls, DBCtrls, SUIButton, Mask, ExtCtrls;

type
  Tfrm_gozaresh_az_vorodi_khoroji_anbar = class(TForm)
    suiDBGrid2: TsuiDBGrid;
    Datasanbarname: TDataSource;
    suiDBGrid1: TsuiDBGrid;
    lmdb_avali321: TLMDSpeedButton;
    lmdb_gabli: TLMDSpeedButton;
    lmdb_badi: TLMDSpeedButton;
    lmdb_akharin: TLMDSpeedButton;
    DBMemo1: TDBMemo;
    dxToolButton11: TdxToolButton;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    esearch: TEdit;
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
    DBMemo2: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    DataSource2: TDataSource;
    RadioGroup3: TRadioGroup;
    lmdb_avali: TLMDSpeedButton;
    dxToolButton1: TdxToolButton;
    procedure FormShow(Sender: TObject);
    procedure type_;
    procedure show_gozaresh_tarikh;
    procedure show_gozaresh_sal;
    procedure show_gozaresh_bein_do_tarikh;
    procedure E_roz_ebtedaExit(Sender: TObject);
    procedure E_roz_entehaExit(Sender: TObject);
    procedure E_mah_ebtedaExit(Sender: TObject);
    procedure E_mah_entehaExit(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure MaskEditroozChange(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure scsalClick(Sender: TObject);
    procedure E_roz_ebtedaKeyPress(Sender: TObject; var Key: Char);
    procedure E_roz_entehaKeyPress(Sender: TObject; var Key: Char);
    procedure E_mah_ebtedaKeyPress(Sender: TObject; var Key: Char);
    procedure E_mah_entehaKeyPress(Sender: TObject; var Key: Char);
    procedure E_sal_ebtedaKeyPress(Sender: TObject; var Key: Char);
    procedure E_sal_entehaKeyPress(Sender: TObject; var Key: Char);
    procedure lmdb_avali321Click(Sender: TObject);
    procedure lmdb_akharinClick(Sender: TObject);
    procedure lmdb_badiClick(Sender: TObject);
    procedure lmdb_gabliClick(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure lmdb_avaliClick(Sender: TObject);
    procedure dxToolButton11Click(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_gozaresh_az_vorodi_khoroji_anbar: Tfrm_gozaresh_az_vorodi_khoroji_anbar;

implementation

uses Untdmanbarexit, Unt_dmanbar, unt_datamodule1, unt_login, Taghvim,
  unt_hazfe_gozaresh_anbar, unt_print_gozaresh_anbar, unt_main;

{$R *.dfm}
procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.show_gozaresh_bein_do_tarikh;
var tarikh1,tarikh2,st:string;
begin
    tarikh1:=trim(E_sal_ebteda.Text)+'/'+trim(E_mah_ebteda.Text)+'/'+trim(E_roz_ebteda.Text);
    tarikh2:=trim(E_sal_enteha.Text)+'/'+trim(E_mah_enteha.Text)+'/'+trim(E_roz_enteha.Text);
    frm_print_gozaresh_anbar.QRL_type_taikh.Caption:=' «“  «—ÌŒ ' +tarikh1+'  « '+ tarikh2;
    frm_print_gozaresh_anbar.QRL_type_vorod.Caption:=' «Ã‰«” Ê—ÊœÌ / Œ—ÊÃÌ / Õ–› ‘œÂ „ò«‰ ';    

  if Dmanbarexite.ADOanbarnamename.AsString<>'' then
    begin
      Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='select * from  T_gozaresh_vorod_va_khoroje_anbar where anbarname='+QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+
      ' and tarikh between '+QuotedStr(tarikh1)+' and'+QuotedStr(tarikh2);

      if RadioGroup3.ItemIndex=0 then
      begin
        Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:=Dmanbar.ADOQ_gozaresh_anbar.SQL.Text+' and type_ like '+QuotedStr('%'+'Ê—ÊœÌ'+'%');
        frm_print_gozaresh_anbar.QRL_type_vorod.Caption:=' «Ã‰«” Ê—ÊœÌ »Â „ò«‰ ';
      end;
      if RadioGroup3.ItemIndex=1 then
      begin
        Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:=Dmanbar.ADOQ_gozaresh_anbar.SQL.Text+' and type_ like '+QuotedStr('%'+'Œ—ÊÃÌ'+'%');
        frm_print_gozaresh_anbar.QRL_type_vorod.Caption:=' «Ã‰«” Œ—ÊÃÌ «“ „ò«‰ ';
      end;

      if RadioGroup3.ItemIndex=2 then
      begin
        Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:=Dmanbar.ADOQ_gozaresh_anbar.SQL.Text+' and type_ like '+QuotedStr('%'+'Õ–›'+'%');
        frm_print_gozaresh_anbar.QRL_type_vorod.Caption:=' «Ã‰«” Õ–› ‘œÂ «“ „ò«‰ ';
      end;

      Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:=Dmanbar.ADOQ_gozaresh_anbar.SQL.Text+' order by id';

      Dmanbar.ADOQ_gozaresh_anbar.Open;
    end;
end;
//////////////////
procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.show_gozaresh_sal;
begin
    frm_print_gozaresh_anbar.QRL_type_taikh.Caption:=' œ— ”«· ' +scsal.Text;
    frm_print_gozaresh_anbar.QRL_type_vorod.Caption:=' «Ã‰«” Ê—ÊœÌ / Œ—ÊÃÌ / Õ–› ‘œÂ „ò«‰ ';    
  if Dmanbarexite.ADOanbarnamename.AsString<>'' then
    begin
      Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='select * from  T_gozaresh_vorod_va_khoroje_anbar where anbarname='+QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+
      ' and tarikh like '+QuotedStr(scsal.Text+'%');

      if RadioGroup3.ItemIndex=0 then
      begin
        Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:=Dmanbar.ADOQ_gozaresh_anbar.SQL.Text+' and type_ like '+QuotedStr('%'+'Ê—ÊœÌ'+'%');
        frm_print_gozaresh_anbar.QRL_type_vorod.Caption:=' «Ã‰«” Ê—ÊœÌ »Â „ò«‰ ';
      end;
      if RadioGroup3.ItemIndex=1 then
      begin
        Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:=Dmanbar.ADOQ_gozaresh_anbar.SQL.Text+' and type_ like '+QuotedStr('%'+'Œ—ÊÃÌ'+'%');
        frm_print_gozaresh_anbar.QRL_type_vorod.Caption:=' «Ã‰«” Œ—ÊÃÌ «“ „ò«‰ ';
      end;

      if RadioGroup3.ItemIndex=2 then
      begin
        Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:=Dmanbar.ADOQ_gozaresh_anbar.SQL.Text+' and type_ like '+QuotedStr('%'+'Õ–›'+'%');
        frm_print_gozaresh_anbar.QRL_type_vorod.Caption:=' «Ã‰«” Õ–› ‘œÂ «“ „ò«‰ ';
      end;

      Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:=Dmanbar.ADOQ_gozaresh_anbar.SQL.Text+' order by id';
      Dmanbar.ADOQ_gozaresh_anbar.Open;

    end;
end;
///////////
procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.show_gozaresh_tarikh;
var tarikh,st:string;
begin
   tarikh:=MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text;
    frm_print_gozaresh_anbar.QRL_type_taikh.Caption:=' œ—  «—ÌŒ ' +tarikh;
    frm_print_gozaresh_anbar.QRL_type_vorod.Caption:=' «Ã‰«” Ê—ÊœÌ / Œ—ÊÃÌ / Õ–› ‘œÂ „ò«‰ ';
  if Dmanbarexite.ADOanbarnamename.AsString<>'' then
    begin
      Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='select * from  T_gozaresh_vorod_va_khoroje_anbar where anbarname='+QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+
      ' and tarikh='+QuotedStr(tarikh);

      if RadioGroup3.ItemIndex=0 then
      begin
        Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:=Dmanbar.ADOQ_gozaresh_anbar.SQL.Text+' and type_ like '+QuotedStr('%'+'Ê—ÊœÌ'+'%');
        frm_print_gozaresh_anbar.QRL_type_vorod.Caption:=' «Ã‰«” Ê—ÊœÌ »Â „ò«‰ ';
      end;
      if RadioGroup3.ItemIndex=1 then
      begin
        Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:=Dmanbar.ADOQ_gozaresh_anbar.SQL.Text+' and type_ like '+QuotedStr('%'+'Œ—ÊÃÌ'+'%');
        frm_print_gozaresh_anbar.QRL_type_vorod.Caption:=' «Ã‰«” Œ—ÊÃÌ «“ „ò«‰ ';
      end;

      if RadioGroup3.ItemIndex=2 then
      begin
        Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:=Dmanbar.ADOQ_gozaresh_anbar.SQL.Text+' and type_ like '+QuotedStr('%'+'Õ–›'+'%');
        frm_print_gozaresh_anbar.QRL_type_vorod.Caption:=' «Ã‰«” Õ–› ‘œÂ «“ „ò«‰ ';
      end;

      Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:=Dmanbar.ADOQ_gozaresh_anbar.SQL.Text+' order by id';
      Dmanbar.ADOQ_gozaresh_anbar.Open;
    end;
end;
//////////
procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.type_;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    g_tarikh.Visible:=true;
    g_sal.Visible:=false;
    g_b_tarikh.Visible:=false;
    show_gozaresh_tarikh;
  end;

  if RadioGroup1.ItemIndex=1 then
  begin
    g_tarikh.Visible:=false;
    g_sal.Visible:=trUe;
    g_b_tarikh.Visible:=false;
    show_gozaresh_sal;
  end;
  if RadioGroup1.ItemIndex=2 then
  begin
    g_tarikh.Visible:=false;
    g_sal.Visible:=false;
    g_b_tarikh.Visible:=true;
    show_gozaresh_bein_do_tarikh;
  end;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.FormShow(Sender: TObject);
begin
  Dmanbarexite.ADOanbarname.SQL.Text:='select * from tanbar_names order by name';
  Dmanbarexite.ADOanbarname.Open;

  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;

  RadioGroup1.ItemIndex:=0;
  RadioGroup2.ItemIndex:=0;
  RadioGroup3.ItemIndex:=3;

  MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
  MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
  MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
  type_;

  E_roz_ebteda.Clear;
  E_roz_enteha.Clear;

  E_mah_ebteda.Clear;
  E_mah_enteha.Clear;

  E_sal_ebteda.Clear;
  E_sal_enteha.Clear;

  esearch.Text:='';
  esearch.SetFocus;

  show_gozaresh_tarikh;

  frm_gozaresh_az_vorodi_khoroji_anbar.WindowState:=wsMaximized;
end;



procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.E_roz_ebtedaExit(
  Sender: TObject);
begin
  if StrLen(pchar(E_roz_ebteda.Text))=1 then
     E_roz_ebteda.Text:='0'+E_roz_ebteda.Text;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.E_roz_entehaExit(
  Sender: TObject);
begin
  if StrLen(pchar(E_roz_enteha.Text))=1 then
     E_roz_enteha.Text:='0'+E_roz_enteha.Text;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.E_mah_ebtedaExit(
  Sender: TObject);
begin
  if StrLen(pchar(E_mah_ebteda.Text))=1 then
     E_mah_ebteda.Text:='0'+E_mah_ebteda.Text;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.E_mah_entehaExit(
  Sender: TObject);
begin
  if StrLen(pchar(E_mah_enteha.Text))=1 then
     E_mah_enteha.Text:='0'+E_mah_enteha.Text;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.RadioGroup2Click(
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
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.MaskEditroozChange(
  Sender: TObject);
begin
  show_gozaresh_tarikh;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.suiButton1Click(
  Sender: TObject);
begin
  show_gozaresh_bein_do_tarikh;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.scsalClick(
  Sender: TObject);
begin
  show_gozaresh_sal;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.E_roz_ebtedaKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.E_roz_entehaKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.E_mah_ebtedaKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.E_mah_entehaKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.E_sal_ebtedaKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.E_sal_entehaKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.lmdb_avali321Click(
  Sender: TObject);
begin
  Dmanbar.ADOQ_gozaresh_anbar.First;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.lmdb_akharinClick(
  Sender: TObject);
begin
  Dmanbar.ADOQ_gozaresh_anbar.Last;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.lmdb_badiClick(
  Sender: TObject);
begin
  Dmanbar.ADOQ_gozaresh_anbar.Next;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.lmdb_gabliClick(
  Sender: TObject);
begin
  Dmanbar.ADOQ_gozaresh_anbar.Prior;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.esearchChange(
  Sender: TObject);
begin
    Dmanbar.ADOQ_gozaresh_anbar.Locate('jens',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.RadioGroup1Click(
  Sender: TObject);
begin
  type_;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.RadioGroup3Click(
  Sender: TObject);
begin
  type_;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.lmdb_avaliClick(
  Sender: TObject);
begin
  frm_hazfe_gozaresh_anbar.ShowModal;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.dxToolButton11Click(
  Sender: TObject);
begin
  frm_print_gozaresh_anbar.QRLtarikh.Caption:=frm_main.L_tarikh.Caption;
  frm_print_gozaresh_anbar.QuickRep1.Preview;
end;

procedure Tfrm_gozaresh_az_vorodi_khoroji_anbar.dxToolButton1Click(
  Sender: TObject);
begin
  frm_print_gozaresh_anbar.QRLtarikh.Caption:=frm_main.L_tarikh.Caption;
  frm_print_gozaresh_anbar.QuickRep1.Print;
end;

end.
