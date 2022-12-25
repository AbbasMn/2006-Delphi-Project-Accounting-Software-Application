unit unt_gozaresh_tarkibi_mpshtari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, SUIButton, Grids, DBGrids,
  SUIDBCtrls, SUIForm, DB;

type
  TFrm_gozaresh_tarkibi_mpshtari = class(TForm)
    dsshakhs: TDataSource;
    DataSource3: TDataSource;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    GroupBox8: TGroupBox;
    suiDbjens: TsuiDBGrid;
    GroupBox13: TGroupBox;
    suiButton66: TsuiButton;
    GroupBox3: TGroupBox;
    RadioGroup1: TRadioGroup;
    Groupbox_salha: TGroupBox;
    Label7: TLabel;
    DBText1: TDBText;
    L_type_: TLabel;
    G_sal: TGroupBox;
    Label1: TLabel;
    scsal: TDBLookupComboBox;
    G_mah: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    scsal2: TDBLookupComboBox;
    scmah: TComboBox;
    Label6: TLabel;
    DBText14: TDBText;
    DBText15: TDBText;
    Label_bedehi_be_foroshande_salha: TLabel;
    Label16: TLabel;
    DBText16: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    DBText20: TDBText;
    DBText21: TDBText;
    Label14: TLabel;
    DBText8: TDBText;
    DBText9: TDBText;
    Label17: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    l_t: TLabel;
    DBText10: TDBText;
    Label8: TLabel;
    esearch: TEdit;
    Label10: TLabel;
    e_cod: TEdit;
    Label11: TLabel;
    DBText2: TDBText;
    DataSource8: TDataSource;
    suiButton6: TsuiButton;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure radio_check;
    procedure salha;
    procedure sal;
    procedure salmah;
    procedure jame_pardakht_bedehi_salmah;
    procedure jame_pardakht_bedehi_sal;
    procedure jame_pardakht_bedehi_salha;
    procedure jame_bedehi;
    procedure scsalClick(Sender: TObject);
    procedure scsal2Click(Sender: TObject);
    procedure scmahChange(Sender: TObject);
    procedure suiButton66Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure e_codChange(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_gozaresh_tarkibi_mpshtari: TFrm_gozaresh_tarkibi_mpshtari;

implementation

uses unt_datamodule1, unt_print_gozaresh_tarkibi,
  Untlistkharidhayeshakhspas, unt_login, Unt_search,
  Unt_DataModule_gozaresh_tarkibi, unt_datamodule2,
  unt_print_gozaresh_tarkibi_kharidar, unt_DataM_final,
  Unt_search_inkharid, Untdmlistha, Unt_mmoshakhasat_shakhs;

{$R *.dfm}
procedure TFrm_gozaresh_tarkibi_mpshtari.jame_pardakht_bedehi_salha;
var po:string;
begin
  DataModule1.ADOQuery_jame_pardakht_kharidar.SQL.Text:='select sum(mablagh)as kol_ from T_pardakht_bedehi_kharidar where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
  DataModule1.ADOQuery_jame_pardakht_kharidar.Open;

  DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh where cod_kharidar='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQ_jame_takhfife.Open;
end;
procedure TFrm_gozaresh_tarkibi_mpshtari.jame_pardakht_bedehi_sal;
var po:string;
begin
  DataModule1.ADOQuery_jame_pardakht_kharidar.SQL.Text:='select sum(mablagh)as kol_ from T_pardakht_bedehi_kharidar where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and tarikh like'+QuotedStr(scsal.Text+'%');
  DataModule1.ADOQuery_jame_pardakht_kharidar.Open;

  DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh where cod_kharidar='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh like'+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_jame_takhfife.Open;
end;
procedure TFrm_gozaresh_tarkibi_mpshtari.jame_pardakht_bedehi_salmah;
var po:string;
begin
  DataModule1.ADOQuery_jame_pardakht_kharidar.SQL.Text:='select sum(mablagh)as kol_ from T_pardakht_bedehi_kharidar where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
 ' and tarikh like'+QuotedStr(scsal2.Text+'/'+Frm_search.getmonth(scmah.Text)+'%');
  DataModule1.ADOQuery_jame_pardakht_kharidar.Open;

  DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh where cod_kharidar='+DataModule1.ADOQuery3code.AsString+
 ' and tarikh like'+QuotedStr(scsal2.Text+'/'+Frm_search.getmonth(scmah.Text)+'%');
  DataM_final.ADOQ_jame_takhfife.Open;

end;
{********************************************************}

procedure TFrm_gozaresh_tarkibi_mpshtari.salmah;
begin
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_forosh where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh like '+QuotedStr(scsal2.Text+'/'+Frm_search_inkharid.getmonth(scmah.Text)+'%');
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh_kharid like '+QuotedStr(scsal2.Text+'/'+Frm_search_inkharid.getmonth(scmah.Text)+'%');
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;


  Dmlistha.ADOmohasebe_forosh.SQL.Text:='select sum(geymat_jens)as kol_ from forosh_jens where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and tarikh like '+QuotedStr(scsal2.Text+'/'+Frm_search_inkharid.getmonth(scmah.Text)+'%');
  Dmlistha.ADOmohasebe_forosh.Open;

    DataM_final.ADOQ_jame_bede_talab_dar_forosh.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from bedeh_bestan where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh like '+QuotedStr(scsal2.Text+'/'+Frm_search_inkharid.getmonth(scmah.Text)+'%');
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.Open;

 end;
procedure TFrm_gozaresh_tarkibi_mpshtari.sal;
begin
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_forosh where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and tarikh_kharid like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

  Dmlistha.ADOmohasebe_forosh.SQL.Text:='select sum(geymat_jens)as kol_ from forosh_jens where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and tarikh like '+QuotedStr(scsal.Text+'%');
  Dmlistha.ADOmohasebe_forosh.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_forosh.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from bedeh_bestan where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.Open;

end;
procedure TFrm_gozaresh_tarkibi_mpshtari.salha;
begin
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_forosh where code='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where code='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

  Dmlistha.ADOmohasebe_forosh.SQL.Text:='select sum(geymat_jens)as kol_ from forosh_jens where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
  Dmlistha.ADOmohasebe_forosh.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_forosh.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from bedeh_bestan where code='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.Open;
end;
{************************************************************************************}
procedure TFrm_gozaresh_tarkibi_mpshtari.jame_bedehi;
begin
      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='select code_shakhs,shahrforoshande,'+
      'sum(bedehkar) as bedeh,sum(bestankar) as talab from '+
      ' T_bestankar_bedehkar_kharidar where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
      ' and code_shakhs='+DataModule1.ADOQuery3code.AsString+
      '  group by code_shakhs,shahrforoshande ';
      DataM_final.ADOQ_bedeh_be_kharidar.Open;
end;
procedure TFrm_gozaresh_tarkibi_mpshtari.radio_check;
begin
 if RadioGroup1.ItemIndex=0 then
   begin
     G_sal.Visible:=false;
     G_mah.Visible:=false;
     L_type_.Caption:='»— «”«” ò· ”«·Â«';
   if DataModule1.ADOQuery3.RecordCount > 0 then
    begin
     salha;
     jame_pardakht_bedehi_salha;
     Frm_print_gozaresh_tarkibi_kharidar.QRLabel_typ_.Caption:='œ— ò· ”«·Â«Ì Œ—Ìœ';
     Frm_gozaresh_tarkibi_mpshtari.jame_bedehi;
    end
    else
      MessageBox(Handle,'‘Œ’Ì »—«Ì «‰ Œ«» ÊÃÊœ ‰œ«—œ ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
   end;
 if RadioGroup1.ItemIndex=1 then
   begin
     G_mah.Visible:=false;
     G_sal.Visible:=true;
     L_type_.Caption:='»— «”«” ”«·'+scsal.Text;
     if DataModule1.ADOQuery3.RecordCount > 0 then
     begin
      sal;
      jame_pardakht_bedehi_sal;
      Frm_print_gozaresh_tarkibi_kharidar.QRLabel_typ_.Caption:='œ— ”«· '+scsal.Text;
      Frm_gozaresh_tarkibi_mpshtari.jame_bedehi;
     end
      else
        MessageBox(Handle,'‘Œ’Ì »—«Ì «‰ Œ«» ÊÃÊœ ‰œ«—œ ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
   end;
 if RadioGroup1.ItemIndex=2 then
   begin
     G_sal.Visible:=false;
     G_mah.Visible:=true;
     L_type_.Caption:='  »— «”«” ”«·  '+scsal2.Text+'  „«Â  '+scmah.Text;
     if DataModule1.ADOQuery3.RecordCount > 0 then
     begin
      salmah;
      jame_pardakht_bedehi_salmah;
      Frm_print_gozaresh_tarkibi_kharidar.QRLabel_typ_.Caption:='œ— ”«· '+scsal2.Text+' „«Â '+scmah.Text;
      Frm_gozaresh_tarkibi_mpshtari.jame_bedehi;
     end
      else
        MessageBox(Handle,'‘Œ’Ì »—«Ì «‰ Œ«» ÊÃÊœ ‰œ«—œ ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );      
   end;
end;

procedure TFrm_gozaresh_tarkibi_mpshtari.RadioGroup1Click(Sender: TObject);
begin
 radio_check;
end;

procedure TFrm_gozaresh_tarkibi_mpshtari.FormShow(Sender: TObject);
begin
 Frm_mmoshakhasat_shakhs.show_kharidaran;
 DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
 DataModule1.ADOQsaljadid.Open;
 RadioGroup1.ItemIndex:=0;
 radio_check;
 Frm_print_gozaresh_tarkibi_kharidar.QRLtarikh.Caption:=frm_login.Egettarikh.Text;

 esearch.Clear;
 e_cod.Clear;
 esearch.SetFocus;
end;

procedure TFrm_gozaresh_tarkibi_mpshtari.scsalClick(Sender: TObject);
begin
  L_type_.Caption:='»— «”«” ”«·'+scsal.Text; sal;
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
  sal;
  jame_pardakht_bedehi_sal;
  jame_bedehi;
  Frm_print_gozaresh_tarkibi_kharidar.QRLabel_typ_.Caption:='œ— ”«· '+scsal.Text;
  Frm_gozaresh_tarkibi_mpshtari.jame_bedehi;
end
else
  MessageBox(Handle,'‘Œ’Ì »—«Ì «‰ Œ«» ÊÃÊœ ‰œ«—œ ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;

procedure TFrm_gozaresh_tarkibi_mpshtari.scsal2Click(Sender: TObject);
begin
 L_type_.Caption:='  »— «”«” ”«·  '+scsal2.Text+'  „«Â  '+scmah.Text; 
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
  salmah;
  jame_pardakht_bedehi_salmah;
  jame_bedehi;
  Frm_print_gozaresh_tarkibi_kharidar.QRLabel_typ_.Caption:='œ— ”«· '+scsal2.Text+' „«Â '+scmah.Text;
  Frm_gozaresh_tarkibi_mpshtari.jame_bedehi;
end
else
  MessageBox(Handle,'‘Œ’Ì »—«Ì «‰ Œ«» ÊÃÊœ ‰œ«—œ ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;

procedure TFrm_gozaresh_tarkibi_mpshtari.scmahChange(Sender: TObject);
begin
 L_type_.Caption:='  »— «”«” ”«·  '+scsal2.Text+'  „«Â  '+scmah.Text; 
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
  salmah;
  jame_pardakht_bedehi_salmah;
  jame_bedehi;
  Frm_print_gozaresh_tarkibi_kharidar.QRLabel_typ_.Caption:='œ— ”«· '+scsal2.Text+' „«Â '+scmah.Text;
  Frm_gozaresh_tarkibi_mpshtari.jame_bedehi;
end
else
  MessageBox(Handle,'‘Œ’Ì »—«Ì «‰ Œ«» ÊÃÊœ ‰œ«—œ ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;

procedure TFrm_gozaresh_tarkibi_mpshtari.suiButton66Click(Sender: TObject);
begin
    Frm_print_gozaresh_tarkibi_kharidar.QuickRep1.Preview;
end;

procedure TFrm_gozaresh_tarkibi_mpshtari.esearchChange(Sender: TObject);
begin
  DataModule1.ADOQuery3.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;

procedure TFrm_gozaresh_tarkibi_mpshtari.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_gozaresh_tarkibi_mpshtari.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure TFrm_gozaresh_tarkibi_mpshtari.suiButton6Click(Sender: TObject);
begin
    Frm_print_gozaresh_tarkibi_kharidar.QuickRep1.Print;
end;

end.
