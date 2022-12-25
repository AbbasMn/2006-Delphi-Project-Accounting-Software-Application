unit unt_pish_forosh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, SUIGroupBox, SUIButton, StdCtrls, Grids, DBGrids,
  SUIDBCtrls, ExtCtrls, SUIForm, DB, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton, DBCtrls;

type
  TFrm_pish_forosh = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    GroupBox3: TGroupBox;
    LMDSpeedButton_add: TLMDSpeedButton;
    LMDSpeedButton_: TLMDSpeedButton;
    LMDSpeedButton3: TLMDSpeedButton;
    suiDBGrid1: TsuiDBGrid;
    suiGroupBox2: TsuiGroupBox;
    Label8: TLabel;
    Label_name: TLabel;
    DBText_arzesh_kol: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    LMDSpeedButton1123: TLMDSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    l_darsad_takhfif: TLabel;
    l_mablagh_takhfif: TLabel;
    LMDSpeedButton11: TLMDSpeedButton;
    LMDSpeedButton: TLMDSpeedButton;
    LMDSpeedButton35: TLMDSpeedButton;
    procedure add_jens;
    procedure delete_jens;
    procedure delete_hame_ajnas(s:string);
    procedure LMDSpeedButton_addClick(Sender: TObject);
    procedure LMDSpeedButton_Click(Sender: TObject);
    procedure show_pish_forosh;
    procedure LMDSpeedButton3Click(Sender: TObject);
    procedure mohasebe_geymat_kol;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure delete_hame_ajnas_tedad;
    procedure LMDSpeedButton1123Click(Sender: TObject);
    procedure check_mojodi_sefr;
    procedure LMDSpeedButton35Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LMDSpeedButton11Click(Sender: TObject);
    procedure LMDSpeedButtonClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Frm_pish_forosh: TFrm_pish_forosh;

implementation

uses Unt_DataModule_gozaresh_tarkibi, unt_forosh_property, Untviewanbar,
  Unt_dmanbar, Untdmanbarexit, unt_print_pish_factor, unt_datamodule1,
  unt_entekhab_check_baraye_forosh, unt_takhfife_forosh,
  unt_vorode_geymate_foroshe_dasi;

{$R *.dfm}
procedure TFrm_pish_forosh.check_mojodi_sefr;
begin
   Dmanbarexite.ADOanbarcala.SQL.Text:='update Tanbar_jens_kolli set molahezatforosh='+QuotedStr(' ⁄œ«œ Ã‰” œ— «‰»«— ’›— „Ì »«‘œ')+' where tedadanbar='+IntToStr(0);
   Dmanbarexite.ADOanbarcala.ExecSQL;
end;
procedure TFrm_pish_forosh.delete_hame_ajnas(s:string);
begin
Frm_pish_forosh.show_pish_forosh;
 while  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount >0 do
   begin
      dataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.First;
      DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Delete;
   end;
   show_pish_forosh;
   if s='no' then
     MessageBox(Handle,'»œ·Ì·  €ÌÌ— „‘Œ’«  Œ—Ìœ«— «Ã‰«” «‰ Œ«» ‘œÂ Õ–› ê—œÌœ !',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;
procedure TFrm_pish_forosh.mohasebe_geymat_kol;
var darsad:real;
begin
  DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymat.SQL.Text:='select sum(geymat_jens)as kol_,count(*) as galam_ from forosh_temp';
  DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymat.Open;
  if l_darsad_takhfif.Caption='0' then
  begin
    l_mablagh_takhfif.Caption:='0';
    darsad:=0;
  end
  else
    begin
      if l_darsad_takhfif.Caption='' then
        l_darsad_takhfif.Caption:='0';
      darsad:=StrToFloat(l_darsad_takhfif.Caption);
      l_mablagh_takhfif.Caption:=FloatToStr((darsad*DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat)/100);
    end;
end;
procedure TFrm_pish_forosh.show_pish_forosh;
begin
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp';
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open;

  Frm_print_pish_factor.QRLabel_g_kol.Caption:=DBText_arzesh_kol.Caption;
  Frm_print_pish_factor.QRLabel_shahr.Caption:=Label_name.Caption;
end;
procedure TFrm_pish_forosh.delete_hame_ajnas_tedad;
var i,j,code_,tedad_:Integer;
    a:array[1..100] of integer;
begin

  Frm_pish_forosh.show_pish_forosh;
  {i:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.First;
  for j:=1 to  i  do
  begin
      a[j]:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[21].Value;
      DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Next;
  end;

  for j:=1 to i do
    begin
          DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp where id='+IntToStr(a[j]);
          DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open;

          code_:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[19].AsInteger;
          tedad_:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[4].AsInteger;

          Dmanbarexite.ADOanbarcala.sql.Text:='update Tanbar_jens_kolli set tedadanbar=tedadanbar+'+IntToStr(tedad_)+' where calacod='+IntToStr(code_);
          Dmanbarexite.ADOanbarcala.ExecSQL;
    end;

    Frm_pish_forosh.show_pish_forosh;}
 while  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount >0 do
   begin
      dataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.First;
      DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Delete;
   end;
   show_pish_forosh;
end;
procedure TFrm_pish_forosh.delete_jens;
var code_,tedad_:integer;
begin
 if  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount <=0 then
   MessageBox(Handle,'—òÊ—œÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
   //code_:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[19].AsInteger;
   //tedad_:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[4].AsInteger;
   //Dmanbarexite.ADOanbarcala.SQL.Text:='update Tanbar_jens_kolli set tedadanbar=tedadanbar+'+IntToStr(tedad_)+' where calacod='+IntToStr(code_);
   //Dmanbarexite.ADOanbarcala.ExecSQL;
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Delete;

   show_pish_forosh;
 end;
end;
procedure TFrm_pish_forosh.add_jens;
begin
  frm_viewanbar.ShowModal;
end;

procedure TFrm_pish_forosh.LMDSpeedButton_addClick(Sender: TObject);
begin
    frm_viewanbar.esearch.Text:='';
    frm_viewanbar.L_type.Caption:='forosh';
    show_pish_forosh;
     if DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount > 50 then
      MessageBox(Handle,'œ— Â— »«— ›—Ê‘ Õœ «òÀ—  Å‰Ã«Â ( 50 ) ﬁ·„ Ã‰” ﬁ«»· ›—Ê‘ „Ì»«‘œ .',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
     else
      add_jens;

end;

procedure TFrm_pish_forosh.LMDSpeedButton_Click(Sender: TObject);
begin
  delete_jens;
  Frm_pish_forosh.mohasebe_geymat_kol;
  //sleep(500);
end;

procedure TFrm_pish_forosh.LMDSpeedButton3Click(Sender: TObject);
begin
if  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount <=0 then
   MessageBox(Handle,'—òÊ—œÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
  begin
    delete_hame_ajnas_tedad;
    show_pish_forosh;
    Frm_pish_forosh.mohasebe_geymat_kol;
    //sleep(500);    
  end;
end;

procedure TFrm_pish_forosh.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DBText_arzesh_kol.Caption='' then
    frm_forosh_property.Lkolgeymat.Caption:='«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ'
  else
  begin
    frm_forosh_property.Lkolgeymat.Caption:=FloatToStr(StrToFloat(DBText_arzesh_kol.Caption)-StrToFloat(l_mablagh_takhfif.Caption));
  end;

    if (frm_forosh_property.Lkolgeymat.Caption<>'«Ã‰«” «‰ Œ«» ‰‘œÂ «‰œ') then
    begin
      Frm_entekhab_check_baraye_forosh.jame_temp_check_forosh;
      Frm_entekhab_check_baraye_forosh.bede_talab_temp_check_forosh;
    end
    else
    begin
    frm_forosh_property.hazf_hame_check;
    frm_forosh_property.Edit4.Text:='';
    Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
    frm_forosh_property.L_bestankar.Caption:='0';
    frm_forosh_property.L_bedehkae.Caption:='0';
    end;
end;


procedure TFrm_pish_forosh.LMDSpeedButton1123Click(Sender: TObject);
begin
 close;
end;

procedure TFrm_pish_forosh.LMDSpeedButton35Click(Sender: TObject);
begin
  Frm_print_pish_factor.QuickRep1.Preview;

end;

procedure TFrm_pish_forosh.FormShow(Sender: TObject);
begin
  Frm_pish_forosh.WindowState:=wsMaximized;
  show_pish_forosh;
  if DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount<=0 then
  begin
   l_darsad_takhfif.Caption:='0';
   l_mablagh_takhfif.Caption:='0';
  end;
  mohasebe_geymat_kol;
end;

procedure TFrm_pish_forosh.LMDSpeedButton11Click(Sender: TObject);
begin
 if DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount<=0 then
   MessageBox(Handle,'«Ã‰«” ›«ò Ê— Ê«—œ ‰‘œÂ «‰œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
  frm_takhfife_forosh.l_arzesh_kol.Caption:=DBText_arzesh_kol.Caption;
  frm_takhfife_forosh.ShowModal;
 end;
end;

procedure TFrm_pish_forosh.LMDSpeedButtonClick(Sender: TObject);
begin
 if  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount <=0 then
   MessageBox(Handle,'—òÊ—œÌ »—«Ì ÊÌ—«Ì‘ ﬁÌ„  ÊÃÊœ ‰œ«—œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
  frm_vorode_geymate_foroshe_dasi.l_cod.Caption:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshid.AsString;
  frm_vorode_geymate_foroshe_dasi.ShowModal;
 end;
end;

end.

