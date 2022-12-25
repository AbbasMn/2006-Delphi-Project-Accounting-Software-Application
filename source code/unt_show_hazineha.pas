unit unt_show_hazineha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, StdCtrls, DB, SUIButton, DBCtrls,
  ExtCtrls, dxCore, dxButtons;

type
  Tfrm_show_hazineha = class(TForm)
    GroupBox5: TGroupBox;
    suiDBGrid2: TsuiDBGrid;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    suiDBGrid1: TsuiDBGrid;
    DataSource2: TDataSource;
    Label7: TLabel;
    Memo1: TMemo;
    RadioGroup1: TRadioGroup;
    G_sal: TGroupBox;
    Label1: TLabel;
    scsal: TDBLookupComboBox;
    G_sal_mah: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    suiButton1: TsuiButton;
    scsal2: TDBLookupComboBox;
    scmah: TComboBox;
    G_sal_mah_roz: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btaeedall11: TsuiButton;
    scsalall: TDBLookupComboBox;
    scmahall: TComboBox;
    scrooz: TComboBox;
    DataSource3: TDataSource;
    Label8: TLabel;
    DBText3: TDBText;
    DataSource4: TDataSource;
    ljl: TsuiButton;
    btaeedall: TsuiButton;
    btaeedall5135: TsuiButton;
    lbl_tarikh: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lbl_vahed: TLabel;
    Label9: TLabel;
    lbl_time: TLabel;
    L_bes: TLabel;
    lbl_geymat: TLabel;
    lbl_sandogsxs: TLabel;
    lbl_sandog: TLabel;
    dxToolButton11: TdxToolButton;
    dxToolButton1: TdxToolButton;
    procedure RadioGroup1Click(Sender: TObject);
    procedure type_;
    procedure FormShow(Sender: TObject);
    procedure show_hame_az_onvan;
    procedure show_sal_az_onvan;
    procedure show_mah_az_onvan;
    procedure show_roz_az_onvan;
    procedure scsalClick(Sender: TObject);
    procedure btaeedall11Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure btaeedall5135Click(Sender: TObject);
    procedure ljlClick(Sender: TObject);
    procedure btaeedallClick(Sender: TObject);
    procedure dxToolButton11Click(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    id,tarikh,time,sandog,mablag:string;
  end;

var
  frm_show_hazineha: Tfrm_show_hazineha;

implementation

uses unt_DataM_hazineha, Unt_print_mohasebe_kharid, unt_datamodule1,
  Unt_search_inkharid, unt_shoe_hazine_onvan, unt_eslah_forosh,
  Unt_print_hazine_anjirestan, unt_login;

{$R *.dfm}

procedure Tfrm_show_hazineha.show_roz_az_onvan;
begin

   lbl_geymat.Caption:='';
   Memo1.Text:='';

   lbl_tarikh.Caption:='';
   lbl_vahed.Caption:='';

   lbl_time.Caption:='';

   lbl_sandog.Caption:='';

  DataM_hazineha.ADOQuery1.SQL.Text:='select * from T_Hazine_Anjirestan where calaname='+
  QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString)+
  ' and tarikhedit='+QuotedStr(scsalall.Text+'/'+Frm_search_inkharid.getmonth(scmahall.Text)+'/'+scrooz.Text)+' order by id';
  DataM_hazineha.ADOQuery1.Open;


  DataM_hazineha.ADOQ_jame_kole_hazineha.SQL.Text:='select sum(geymatforosh_koli) as kole_hazineha from T_Hazine_Anjirestan'+
  ' where calaname='+
  QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString)+
  ' and tarikhedit='+QuotedStr(scsalall.Text+'/'+Frm_search_inkharid.getmonth(scmahall.Text)+'/'+scrooz.Text);

  DataM_hazineha.ADOQ_jame_kole_hazineha.Open;

     Frm_print_hazine_anjirestan.QRLarshiv.Caption:=' »— «”«”  «—ÌŒ'+scsalall.Text+'/'+Frm_search_inkharid.getmonth(scmahall.Text)+'/'+scrooz.Text;


end;

procedure Tfrm_show_hazineha.show_mah_az_onvan;
begin

   lbl_geymat.Caption:='';
   Memo1.Text:='';

   lbl_tarikh.Caption:='';
   lbl_vahed.Caption:='';

   lbl_time.Caption:='';

   lbl_sandog.Caption:='';

  DataM_hazineha.ADOQuery1.SQL.Text:='select * from T_Hazine_Anjirestan where calaname='+
  QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString)+
  ' and tarikhedit like'+QuotedStr(scsal2.Text+'/'+Frm_search_inkharid.getmonth(scmah.Text)+'%')+' order by id';
  DataM_hazineha.ADOQuery1.Open;

  DataM_hazineha.ADOQ_jame_kole_hazineha.SQL.Text:='select sum(geymatforosh_koli) as kole_hazineha from T_Hazine_Anjirestan where calaname='+
  QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString)+
  ' and tarikhedit like'+QuotedStr(scsal2.Text+'/'+Frm_search_inkharid.getmonth(scmah.Text)+'%');

  DataM_hazineha.ADOQ_jame_kole_hazineha.Open;

  Frm_print_hazine_anjirestan.QRLarshiv.Caption:=' »— «”«” ”«· '+scsal.Text+' „«Â '+scmah.Text;
end;


procedure Tfrm_show_hazineha.show_sal_az_onvan;
begin

   lbl_geymat.Caption:='';
   Memo1.Text:='';

   lbl_tarikh.Caption:='';
   lbl_vahed.Caption:='';

   lbl_time.Caption:='';

   lbl_sandog.Caption:='';

  DataM_hazineha.ADOQuery1.SQL.Text:='select * from T_Hazine_Anjirestan where calaname='+
  QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString)+
  ' and tarikhedit like '+QuotedStr(scsal.Text+'%')+' order by id';
  DataM_hazineha.ADOQuery1.Open;


  DataM_hazineha.ADOQ_jame_kole_hazineha.SQL.Text:='select sum(geymatforosh_koli) as kole_hazineha from T_Hazine_Anjirestan where calaname='+
  QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString)+
  ' and tarikhedit like '+QuotedStr(scsal.Text+'%');

  DataM_hazineha.ADOQ_jame_kole_hazineha.Open;

     Frm_print_hazine_anjirestan.QRLarshiv.Caption:=' »— «”«” ”«· '+scsal.Text;

end;
procedure Tfrm_show_hazineha.show_hame_az_onvan;
begin

   lbl_geymat.Caption:='';
   Memo1.Text:='';

   lbl_tarikh.Caption:='';
   lbl_vahed.Caption:='';

   lbl_time.Caption:='';

   lbl_sandog.Caption:='';
   
  DataM_hazineha.ADOQuery1.SQL.Text:='select * from T_Hazine_Anjirestan where calaname='+
  QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString)+
  ' order by id';
  DataM_hazineha.ADOQuery1.Open;

  DataM_hazineha.ADOQ_jame_kole_hazineha.SQL.Text:='select sum(geymatforosh_koli) as kole_hazineha from T_Hazine_Anjirestan'+
  ' where calaname='+QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString);

  DataM_hazineha.ADOQ_jame_kole_hazineha.Open;

    Frm_print_hazine_anjirestan.QRLarshiv.Caption:=' »— «”«” Â„Â Â“Ì‰Â Â« ';
end;


procedure Tfrm_show_hazineha.type_;
begin

   lbl_geymat.Caption:='';
   Memo1.Text:='';

   lbl_tarikh.Caption:='';
   lbl_vahed.Caption:='';

   lbl_time.Caption:='';

   lbl_sandog.Caption:='';
   
 if RadioGroup1.ItemIndex=0 then
 begin
  G_sal.Visible:=false;
  G_sal_mah.Visible:=false;
  G_sal_mah_roz.Visible:=false;
  show_hame_az_onvan;
 end;
 if RadioGroup1.ItemIndex=1 then
 begin
  G_sal.Visible:=true;
  G_sal_mah.Visible:=false;
  G_sal_mah_roz.Visible:=false;
  show_sal_az_onvan;
 end;
 if RadioGroup1.ItemIndex=2 then
 begin
  G_sal.Visible:=false;
  G_sal_mah.Visible:=true;
  G_sal_mah_roz.Visible:=false;
  show_mah_az_onvan;
 end;
 if RadioGroup1.ItemIndex=3 then
 begin
  G_sal.Visible:=false;
  G_sal_mah.Visible:=false;
  G_sal_mah_roz.Visible:=true;
  show_roz_az_onvan;
 end;
end;


procedure Tfrm_show_hazineha.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

procedure Tfrm_show_hazineha.FormShow(Sender: TObject);
begin
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;

  RadioGroup1.ItemIndex:=0;
  type_;

end;

procedure Tfrm_show_hazineha.scsalClick(Sender: TObject);
begin
  show_sal_az_onvan;
end;

procedure Tfrm_show_hazineha.btaeedall11Click(Sender: TObject);
begin
  show_roz_az_onvan;
end;

procedure Tfrm_show_hazineha.suiButton1Click(Sender: TObject);
begin
  show_mah_az_onvan;
end;

procedure Tfrm_show_hazineha.btaeedall5135Click(Sender: TObject);
begin
  frm_shoe_hazine_onvan.ShowModal;
end;

procedure Tfrm_show_hazineha.ljlClick(Sender: TObject);
begin
      MessageBox(Handle,'»—«Ì ÊÌ—«Ì‘ Â“Ì‰Â À»  ‘œÂ «‰ Œ«»Ì° Â“Ì‰Â —« Õ–› ‰„«ÌÌœ Ê ¬‰ —« «“ «Ê· À»  ‰„«ÌÌœ.',' ÊÃÂ!',MB_ok or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
end;

procedure Tfrm_show_hazineha.btaeedallClick(Sender: TObject);
begin
  if DataM_hazineha.ADOQuery1.RecordCount=0 then
    MessageBox(Handle,'Â“Ì‰Â «Ì »—«Ì Õ–› ° «‰ Œ«» ‰‘œÂ «” .','Œÿ«!',MB_ok or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
  begin
    id:=DataM_hazineha.ADOQuery1id.AsString;
    tarikh:=DataM_hazineha.ADOQuery1tarikhedit.AsString;
    time:=DataM_hazineha.ADOQuery1time_.AsString;
    sandog:=DataM_hazineha.ADOQuery1sandog.AsString;
    mablag:=DataM_hazineha.ADOQuery1geymatforosh_koli.AsString;

    DataM_hazineha.ADOQuery1.SQL.Text:='begin tran delete from T_Hazine_Anjirestan where id='+id;

    DataM_hazineha.ADOQuery1.SQL.Text:=DataM_hazineha.ADOQuery1.SQL.Text+' delete from T_vorod_khoroj_sandogha '+
    ' where sandog='+QuotedStr(sandog)+' and tarikh='+QuotedStr(tarikh)+
    ' and time_='+QuotedStr(time)+' and mablag='+mablag+' commit tran';
    DataM_hazineha.ADOQuery1.ExecSQL;

    type_;

    MessageBox(Handle,'Â“Ì‰Â «‰ Œ«»Ì Õ–› ê—œÌœ.',' ÊÃÂ!',MB_ok or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
    //frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',5000);
  end;
end;

procedure Tfrm_show_hazineha.dxToolButton11Click(Sender: TObject);
begin
  Frm_print_hazine_anjirestan.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  Frm_print_hazine_anjirestan.QuickRep1.Preview;
end;

procedure Tfrm_show_hazineha.dxToolButton1Click(Sender: TObject);
begin
  Frm_print_hazine_anjirestan.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  Frm_print_hazine_anjirestan.QuickRep1.Print;
end;

end.
