unit unt_sode_foroshe_ajnas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, SUIDBCtrls, StdCtrls, ExtCtrls, DBCtrls,
  SUIButton, dxCore, dxButtons;

type
  Tfrm_sode_foroshe_ajnas = class(TForm)
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    Label8: TLabel;
    esearch: TEdit;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    DataSource2: TDataSource;
    DBText4: TDBText;
    G_sal_mah_roz: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btaeedall: TsuiButton;
    scsalall: TDBLookupComboBox;
    scmahall: TComboBox;
    scrooz: TComboBox;
    G_sal_mah: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    suiButton1: TsuiButton;
    scsal2: TDBLookupComboBox;
    scmah: TComboBox;
    G_sal: TGroupBox;
    Label1: TLabel;
    scsal: TDBLookupComboBox;
    DataSource3: TDataSource;
    RadioGroup_sod_order: TRadioGroup;
    dxToolButton1: TdxToolButton;
    dxToolButton2: TdxToolButton;
    procedure esearchChange(Sender: TObject);
    procedure show_sode_salha;
    procedure show_sode_sal;
    procedure show_sode_mah;
    procedure show_sode_tarikh;
    procedure typ_;
    procedure FormShow(Sender: TObject);
    procedure btaeedallClick(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure scsalClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup_sod_orderClick(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
    procedure dxToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sode_foroshe_ajnas: Tfrm_sode_foroshe_ajnas;

implementation

uses unt_DataModule_sod, unt_datamodule1, Unt_search,
  unt_print_sosde_ajnas, unt_main;
{$R *.dfm}
procedure Tfrm_sode_foroshe_ajnas.typ_;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    show_sode_salha;
    G_sal_mah_roz.Visible:=false;
    G_sal_mah.Visible:=false;
    G_sal.Visible:=false;
  end;

  if RadioGroup1.ItemIndex=1 then
  begin
    G_sal_mah_roz.Visible:=false;
    G_sal_mah.Visible:=false;
    G_sal.Visible:=true;
    show_sode_sal;

  end;

  if RadioGroup1.ItemIndex=2 then
  begin
    G_sal_mah_roz.Visible:=false;
    G_sal_mah.Visible:=true;
    G_sal.Visible:=false;
    show_sode_mah;
  end;

  if RadioGroup1.ItemIndex=3 then
  begin
    G_sal_mah_roz.Visible:=true;
    G_sal_mah.Visible:=false;
    G_sal.Visible:=false;
    show_sode_tarikh;
  end;
end;

procedure Tfrm_sode_foroshe_ajnas.show_sode_tarikh;
begin

  frm_print_sosde_ajnas.QRL_type.Caption:=' œ—  «—ÌŒ '+scsalall.Text+'/'+Frm_search.getmonth(scmahall.Text)+'/'+scrooz.Text;

  DataModule_sod.ADOQuery_sod_har_jens.SQL.Text:='select  jens,geymate_kharid,geymat_vahed,calacod,'+
    'sum(tedad_kol*(geymat_vahed-geymate_kharid)) as sode_forosh,sum(tedad_kol) as tedde_forosh'+
    ' from forosh_jens where tarikh='+QuotedStr(scsalall.Text+'/'+Frm_search.getmonth(scmahall.Text)+'/'+scrooz.Text);

    if RadioGroup_sod_order.ItemIndex=0 then
    begin
      DataModule_sod.ADOQuery_sod_har_jens.SQL.Text:=DataModule_sod.ADOQuery_sod_har_jens.SQL.Text+' group by  jens,calacod,geymate_kharid,geymat_vahed order by sode_forosh,jens';
      frm_print_sosde_ajnas.QRL_type.Caption:=frm_print_sosde_ajnas.QRL_type.Caption+'(‰„«Ì‘ «Ã‰«” »— «”«” ò«Â‘ ”Êœ ›—Ê‘) ';
    end
    else
    begin
      DataModule_sod.ADOQuery_sod_har_jens.SQL.Text:=DataModule_sod.ADOQuery_sod_har_jens.SQL.Text+' group by  jens,calacod,geymate_kharid,geymat_vahed order by sode_forosh desc';
      frm_print_sosde_ajnas.QRL_type.Caption:=frm_print_sosde_ajnas.QRL_type.Caption+'(‰„«Ì‘ «Ã‰«” »— «”«” «›“«Ì‘ ”Êœ ›—Ê‘) ';      
    end;

  DataModule_sod.ADOQuery_sod_har_jens.Open;

  DataModule_sod.ADOQuery_sode_kol.SQL.Text:='select  sum(tedad_kol*(geymat_vahed-geymate_kharid)) as sode_kol'+
  ' from forosh_jens where tarikh='+QuotedStr(scsalall.Text+'/'+Frm_search.getmonth(scmahall.Text)+'/'+scrooz.Text);
  DataModule_sod.ADOQuery_sode_kol.Open;
end;

procedure Tfrm_sode_foroshe_ajnas.show_sode_mah;
begin

  frm_print_sosde_ajnas.QRL_type.Caption:=' œ— ”«· '+scsal2.Text+' „«Â '+scmah.Text;

  DataModule_sod.ADOQuery_sod_har_jens.SQL.Text:='select  jens,geymate_kharid,geymat_vahed,calacod,'+
    'sum(tedad_kol*(geymat_vahed-geymate_kharid)) as sode_forosh,sum(tedad_kol) as tedde_forosh'+
    ' from forosh_jens where tarikh like '+QuotedStr(scsal2.Text+'/'+Frm_search.getmonth(scmah.Text)+'%');

    if RadioGroup_sod_order.ItemIndex=0 then
    begin
      DataModule_sod.ADOQuery_sod_har_jens.SQL.Text:=DataModule_sod.ADOQuery_sod_har_jens.SQL.Text+' group by  jens,calacod,geymate_kharid,geymat_vahed order by sode_forosh,jens';
      frm_print_sosde_ajnas.QRL_type.Caption:=frm_print_sosde_ajnas.QRL_type.Caption+'(‰„«Ì‘ «Ã‰«” »— «”«” ò«Â‘ ”Êœ ›—Ê‘) ';
    end
    else
    begin
      DataModule_sod.ADOQuery_sod_har_jens.SQL.Text:=DataModule_sod.ADOQuery_sod_har_jens.SQL.Text+' group by  jens,calacod,geymate_kharid,geymat_vahed order by sode_forosh desc';
      frm_print_sosde_ajnas.QRL_type.Caption:=frm_print_sosde_ajnas.QRL_type.Caption+'(‰„«Ì‘ «Ã‰«” »— «”«” «›“«Ì‘ ”Êœ ›—Ê‘) ';
    end;

  DataModule_sod.ADOQuery_sod_har_jens.Open;

  DataModule_sod.ADOQuery_sode_kol.SQL.Text:='select  sum(tedad_kol*(geymat_vahed-geymate_kharid)) as sode_kol'+
    ' from forosh_jens where tarikh like '+QuotedStr(scsal2.Text+'/'+Frm_search.getmonth(scmah.Text)+'%');
  DataModule_sod.ADOQuery_sode_kol.Open;
end;

procedure Tfrm_sode_foroshe_ajnas.show_sode_sal;
begin

  frm_print_sosde_ajnas.QRL_type.Caption:=' œ— ”«· '+scsal.Text;

  DataModule_sod.ADOQuery_sod_har_jens.SQL.Text:='select  jens,geymate_kharid,geymat_vahed,calacod,'+
    'sum(tedad_kol*(geymat_vahed-geymate_kharid)) as sode_forosh,sum(tedad_kol) as tedde_forosh'+
    ' from forosh_jens where tarikh like '+QuotedStr(scsal.Text+'%');

    if RadioGroup_sod_order.ItemIndex=0 then
    begin
      DataModule_sod.ADOQuery_sod_har_jens.SQL.Text:=DataModule_sod.ADOQuery_sod_har_jens.SQL.Text+' group by  jens,calacod,geymate_kharid,geymat_vahed order by sode_forosh,jens';
      frm_print_sosde_ajnas.QRL_type.Caption:=frm_print_sosde_ajnas.QRL_type.Caption+'(‰„«Ì‘ «Ã‰«” »— «”«” ò«Â‘ ”Êœ ›—Ê‘) ';
    end
    else
    begin
      DataModule_sod.ADOQuery_sod_har_jens.SQL.Text:=DataModule_sod.ADOQuery_sod_har_jens.SQL.Text+' group by  jens,calacod,geymate_kharid,geymat_vahed order by sode_forosh desc';
      frm_print_sosde_ajnas.QRL_type.Caption:=frm_print_sosde_ajnas.QRL_type.Caption+'(‰„«Ì‘ «Ã‰«” »— «”«” «›“«Ì‘ ”Êœ ›—Ê‘) ';
    end;

  DataModule_sod.ADOQuery_sod_har_jens.Open;

  DataModule_sod.ADOQuery_sode_kol.SQL.Text:='select  sum(tedad_kol*(geymat_vahed-geymate_kharid)) as sode_kol'+
    ' from forosh_jens where tarikh like '+QuotedStr(scsal.Text+'%');
  DataModule_sod.ADOQuery_sode_kol.Open;
end;

procedure Tfrm_sode_foroshe_ajnas.show_sode_salha;
begin

  frm_print_sosde_ajnas.QRL_type.Caption:=' œ— Â„Â ”«·Â« ';

  DataModule_sod.ADOQuery_sod_har_jens.SQL.Text:='select  jens,geymate_kharid,geymat_vahed,calacod,'+
    'sum(tedad_kol*(geymat_vahed-geymate_kharid)) as sode_forosh,sum(tedad_kol) as tedde_forosh'+
    ' from forosh_jens ';

    if RadioGroup_sod_order.ItemIndex=0 then
    begin
      DataModule_sod.ADOQuery_sod_har_jens.SQL.Text:=DataModule_sod.ADOQuery_sod_har_jens.SQL.Text+' group by  jens,calacod,geymate_kharid,geymat_vahed order by sode_forosh,jens';
      frm_print_sosde_ajnas.QRL_type.Caption:=frm_print_sosde_ajnas.QRL_type.Caption+'(‰„«Ì‘ «Ã‰«” »— «”«” ò«Â‘ ”Êœ ›—Ê‘) ';
    end
    else
    begin
      DataModule_sod.ADOQuery_sod_har_jens.SQL.Text:=DataModule_sod.ADOQuery_sod_har_jens.SQL.Text+' group by  jens,calacod,geymate_kharid,geymat_vahed order by sode_forosh desc';
      frm_print_sosde_ajnas.QRL_type.Caption:=frm_print_sosde_ajnas.QRL_type.Caption+'(‰„«Ì‘ «Ã‰«” »— «”«” «›“«Ì‘ ”Êœ ›—Ê‘) ';      
    end;

  DataModule_sod.ADOQuery_sod_har_jens.Open;
  

  DataModule_sod.ADOQuery_sode_kol.SQL.Text:='select  sum(tedad_kol*(geymat_vahed-geymate_kharid)) as sode_kol'+
    ' from forosh_jens ';
  DataModule_sod.ADOQuery_sode_kol.Open;
end;

procedure Tfrm_sode_foroshe_ajnas.esearchChange(Sender: TObject);
begin
    DataModule_sod.ADOQuery_sod_har_jens.Locate('jens',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_sode_foroshe_ajnas.FormShow(Sender: TObject);
begin
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;
  RadioGroup1.ItemIndex:=0;
  RadioGroup_sod_order.ItemIndex:=0;
  esearch.Text:='';

  esearch.SetFocus;
  typ_;
end;

procedure Tfrm_sode_foroshe_ajnas.btaeedallClick(Sender: TObject);
begin
  show_sode_tarikh;
end;

procedure Tfrm_sode_foroshe_ajnas.suiButton1Click(Sender: TObject);
begin
  show_sode_mah;
end;

procedure Tfrm_sode_foroshe_ajnas.scsalClick(Sender: TObject);
begin
  show_sode_sal;
end;

procedure Tfrm_sode_foroshe_ajnas.RadioGroup1Click(Sender: TObject);
begin
  typ_;
end;

procedure Tfrm_sode_foroshe_ajnas.RadioGroup_sod_orderClick(
  Sender: TObject);
begin
 typ_;
end;



procedure Tfrm_sode_foroshe_ajnas.dxToolButton1Click(Sender: TObject);
begin
  frm_print_sosde_ajnas.QRLtarikh.Caption:=frm_main.L_tarikh.Caption;
  frm_print_sosde_ajnas.QuickRep1.Preview;
end;

procedure Tfrm_sode_foroshe_ajnas.dxToolButton2Click(Sender: TObject);
begin
  frm_print_sosde_ajnas.QRLtarikh.Caption:=frm_main.L_tarikh.Caption;
  frm_print_sosde_ajnas.QuickRep1.Print;
end;

end.
