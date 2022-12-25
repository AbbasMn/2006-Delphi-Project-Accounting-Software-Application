unit unt_gozaresh_tarkibi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButtons, PDJ_XPB, StdCtrls, SUIButton, DBCtrls,
  ExtCtrls, SUIForm, Grids, DBGrids, SUIDBCtrls, DB;

type
  Tfrm_gozaresh_tarkibi = class(TForm)
    dsshakhs: TDataSource;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    GroupBox3: TGroupBox;
    RadioGroup1: TRadioGroup;
    GroupBox8: TGroupBox;
    suiDbjens: TsuiDBGrid;
    Label7: TLabel;
    DBText20: TDBText;
    GroupBox1: TGroupBox;
    Label_bedehi_be_foroshande_salmah: TLabel;
    DBText5: TDBText;
    DBT_kol_foroshande_salmah: TDBText;
    Label_kol_salmah: TLabel;
    Label17: TLabel;
    DBText11: TDBText;
    L_type_: TLabel;
    G_sal: TGroupBox;
    G_mah: TGroupBox;
    Label1: TLabel;
    scsal: TDBLookupComboBox;
    scsal2: TDBLookupComboBox;
    scmah: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label_pardakht_nagd_be_foroshande_sal: TLabel;
    DBT_pardakht_nagd_be_foroshande_sal: TDBText;
    DBT_pardakht_check_be_foroshande_sal: TDBText;
    Label_pardakht_check_be_foroshande_sal: TLabel;
    Label_paedakhtbedehi_sal: TLabel;
    DBText10: TDBText;
    Label_paedak_nashode_htbedehi_sal: TLabel;
    DBText9: TDBText;
    Label3: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    esearch: TEdit;
    Label10: TLabel;
    e_cod: TEdit;
    Label8: TLabel;
    Label11: TLabel;
    DBText2: TDBText;
    DataSource8: TDataSource;
    GroupBox13: TGroupBox;
    suiButton66: TsuiButton;
    suiButton6: TsuiButton;
    Label12: TLabel;
    DBText3: TDBText;
    DataSource9: TDataSource;
    procedure esearchChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure radio_check;
    procedure RadioGroup1Click(Sender: TObject);
    procedure salha;
    procedure sal;
    procedure salmah;
    procedure scsalClick(Sender: TObject);
    procedure scsal2Click(Sender: TObject);
    procedure scmahChange(Sender: TObject);
    procedure jame_pardakht_bedehi_salmah;
    procedure jame_pardakht_bedehi_sal;
    procedure jame_pardakht_bedehi_salha;
    procedure jame_bedehi;
    procedure suiButton6Click(Sender: TObject);
    procedure scmahClick(Sender: TObject);
    procedure e_codChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton66Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_gozaresh_tarkibi: Tfrm_gozaresh_tarkibi;

implementation

uses unt_datamodule1, Untlistkharidhayeshakhspas,
  Unt_DataModule_gozaresh_tarkibi, Unt_search, unt_print_gozaresh_tarkibi,
  unt_login, unt_DataM_final, Untdmlistha, Unt_search_inkharid,
  Unt_mmoshakhasat_shakhs, unt_Dm_zayeat_marjoei;

{$R *.dfm}
procedure Tfrm_gozaresh_tarkibi.jame_bedehi;
begin

      DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='select code_shakhs,shahrforoshande,'+
      'sum(bedehkar) as bedeh,sum(bestankar) as talab from '+
      ' T_bestankar_bedehkar_foroshande where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
      ' and code_shakhs='+DataModule1.ADOQuery3code.AsString+
      '  group by code_shakhs,shahrforoshande ';
      DataM_final.ADOQ_bedeh_be_foroshnse.Open;


      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.SQL.Text:='select sum(geymat_kol) as kol_ from  t_marjoei where '+
      ' shakhs_sherkat='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.open;
end;
procedure Tfrm_gozaresh_tarkibi.jame_pardakht_bedehi_salha;
begin
  DataModule1.ADOQuery_jame_pardakht_shhoma.SQL.Text:='select sum(mablagh)as kol_ from t_pardakht_bedehi where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
  DataModule1.ADOQuery_jame_pardakht_shhoma.Open;

  Dmlistha.ADOmohasebe_jame_keraye_kharidha.SQL.Text:='select sum(keraye) as keray_kol from t_keraye where code='+QuotedStr(DataModule1.ADOQuery3code.AsString);
  Dmlistha.ADOmohasebe_jame_keraye_kharidha.Open;
end;
procedure Tfrm_gozaresh_tarkibi.jame_pardakht_bedehi_sal;
begin
  DataModule1.ADOQuery_jame_pardakht_shhoma.SQL.Text:='select sum(mablagh)as kol_ from t_pardakht_bedehi where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and tarikh like'+QuotedStr(scsal.Text+'%');
  DataModule1.ADOQuery_jame_pardakht_shhoma.Open;

  Dmlistha.ADOmohasebe_jame_keraye_kharidha.SQL.Text:='select sum(keraye) as keray_kol from t_keraye where code='+QuotedStr(DataModule1.ADOQuery3code.AsString)+
  ' and tarikh like'+QuotedStr(scsal.Text+'%');
  Dmlistha.ADOmohasebe_jame_keraye_kharidha.Open;
end;
procedure Tfrm_gozaresh_tarkibi.jame_pardakht_bedehi_salmah;
begin
  DataModule1.ADOQuery_jame_pardakht_shhoma.SQL.Text:='select sum(mablagh)as kol_ from t_pardakht_bedehi where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and tarikh like'+QuotedStr(scsal2.Text+'/'+Frm_search.getmonth(scmah.Text)+'%');
  DataModule1.ADOQuery_jame_pardakht_shhoma.Open;

  Dmlistha.ADOmohasebe_jame_keraye_kharidha.SQL.Text:='select sum(keraye) as keray_kol from t_keraye where code='+QuotedStr(DataModule1.ADOQuery3code.AsString)+
  ' and tarikh like'+QuotedStr(scsal2.Text+'/'+Frm_search.getmonth(scmah.Text)+'%');
  Dmlistha.ADOmohasebe_jame_keraye_kharidha.Open;
end;
procedure Tfrm_gozaresh_tarkibi.salmah;
begin
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_kharid where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh like '+QuotedStr(scsal2.Text+'/'+Frm_search_inkharid.getmonth(scmah.Text)+'%');
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh_kharid like '+QuotedStr(scsal2.Text+'/'+Frm_search_inkharid.getmonth(scmah.Text)+'%');
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from jens_ where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and tarikh like '+QuotedStr(scsal2.Text+'/'+Frm_search_inkharid.getmonth(scmah.Text)+'%');
  Dmlistha.ADOmohasebe_kharid.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_kharid.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from T_bedehi where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh like '+QuotedStr(scsal2.Text+'/'+Frm_search_inkharid.getmonth(scmah.Text)+'%');

 end;
procedure Tfrm_gozaresh_tarkibi.sal;
begin
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_kharid where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid where code=+'+DataModule1.ADOQuery3code.AsString+
  ' and tarikh_kharid like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from jens_ where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and tarikh like '+QuotedStr(scsal.Text+'%');
  Dmlistha.ADOmohasebe_kharid.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_kharid.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from T_bedehi where code='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_jame_bede_talab_dar_kharid.Open;
end;
procedure Tfrm_gozaresh_tarkibi.salha;
begin
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_kharid where code='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid where code='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from jens_ where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
  Dmlistha.ADOmohasebe_kharid.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_kharid.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from T_bedehi where code='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQ_jame_bede_talab_dar_kharid.Open;
end;
procedure Tfrm_gozaresh_tarkibi.radio_check;
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
     frm_print_gozaresh_tarkibi.QRLabel_typ_.Caption:='œ— ò· ”«·Â«Ì Œ—Ìœ';
     jame_bedehi;
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
     frm_print_gozaresh_tarkibi.QRLabel_typ_.Caption:='œ— ”«· '+scsal.Text;
     jame_bedehi;
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
     jame_bedehi;
     frm_print_gozaresh_tarkibi.QRLabel_typ_.Caption:='œ— ”«· '+scsal2.Text+' „«Â '+scmah.Text;
    end
    else
      MessageBox(Handle,'‘Œ’Ì »—«Ì «‰ Œ«» ÊÃÊœ ‰œ«—œ ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
   end;

end;

procedure Tfrm_gozaresh_tarkibi.esearchChange(Sender: TObject);
begin
 DataModule1.ADOQuery3.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_gozaresh_tarkibi.FormShow(Sender: TObject);
begin
 Frm_mmoshakhasat_shakhs.show_foroshandegan;
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open; 
 RadioGroup1.ItemIndex:=0;
 radio_check;
 frm_print_gozaresh_tarkibi.QRLtarikh.Caption:=frm_login.Egettarikh.Text;

  esearch.Clear;
 e_cod.Clear;
 esearch.SetFocus;

end;

procedure Tfrm_gozaresh_tarkibi.RadioGroup1Click(Sender: TObject);
begin
 radio_check;
end;

procedure Tfrm_gozaresh_tarkibi.scsalClick(Sender: TObject);
begin
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
  L_type_.Caption:='»— «”«” ”«·'+scsal.Text; sal;
 jame_pardakht_bedehi_sal;
 jame_bedehi;
 frm_print_gozaresh_tarkibi.QRLabel_typ_.Caption:='œ— ”«· '+scsal.Text;
end
else
  MessageBox(Handle,'‘Œ’Ì »—«Ì «‰ Œ«» ÊÃÊœ ‰œ«—œ ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;

procedure Tfrm_gozaresh_tarkibi.scsal2Click(Sender: TObject);
begin
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
 salmah;
 jame_pardakht_bedehi_salmah;
 jame_bedehi;
 L_type_.Caption:='  »— «”«” ”«·  '+scsal2.Text+'  „«Â  '+scmah.Text; 
 frm_print_gozaresh_tarkibi.QRLabel_typ_.Caption:='œ— ”«· '+scsal2.Text+' „«Â '+scmah.Text;
end
else
  MessageBox(Handle,'‘Œ’Ì »—«Ì «‰ Œ«» ÊÃÊœ ‰œ«—œ ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;

procedure Tfrm_gozaresh_tarkibi.scmahChange(Sender: TObject);
begin
 L_type_.Caption:='  »— «”«” ”«·  '+scsal2.Text+'  „«Â  '+scmah.Text; frm_print_gozaresh_tarkibi.QRLabel_typ_.Caption:='œ— ”«· '+scsal2.Text+' „«Â '+scmah.Text;if DataModule1.ADOQuery3.RecordCount > 0 then
begin
 salmah;
 jame_pardakht_bedehi_salmah;
 jame_bedehi;

end
else
  MessageBox(Handle,'‘Œ’Ì »—«Ì «‰ Œ«» ÊÃÊœ ‰œ«—œ ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;

procedure Tfrm_gozaresh_tarkibi.suiButton6Click(Sender: TObject);
begin
   frm_print_gozaresh_tarkibi.QuickRep1.Print;
end;

procedure Tfrm_gozaresh_tarkibi.scmahClick(Sender: TObject);
begin
  frm_print_gozaresh_tarkibi.QRLabel_typ_.Caption:='œ— ”«· '+scsal2.Text+' „«Â '+scmah.Text;
end;



procedure Tfrm_gozaresh_tarkibi.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure Tfrm_gozaresh_tarkibi.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_gozaresh_tarkibi.suiButton66Click(Sender: TObject);
begin
   frm_print_gozaresh_tarkibi.QuickRep1.Preview;
end;

end.
