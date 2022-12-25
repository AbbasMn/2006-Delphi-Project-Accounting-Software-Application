unit Unt_mmoshakhasat_anjirestan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, Grids, DBGrids, SUIDBCtrls, ExtCtrls,
  SUIForm, DB, SUIImagePanel, SUIGroupBox, te_controls, DBCtrls, SUIEdit;

type
  TFrm_mmoshakhasat_anjirestan = class(TForm)
    dsshakhs: TDataSource;
    DataSource1: TDataSource;
    L_code: TLabel;
    GroupBox2: TGroupBox;
    esearch: TEdit;
    suiDBGrid2: TsuiDBGrid;
    Label4: TLabel;
    Label10: TLabel;
    e_cod: TEdit;
    lname: TLabel;
    Label19: TLabel;
    l_review: TLabel;
    G_shakhs: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    E_name: TsuiEdit;
    E_code: TsuiEdit;
    eadress: TTeMemo;
    etelephon: TsuiEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    suiButton2: TsuiButton;
    procedure show;
    procedure FormShow(Sender: TObject);
    procedure updateshakhs;
    procedure suiButton2Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure showshakhs;
    procedure show_foroshandegan;
    procedure show_kharidaran;
    procedure EtelephonKeyPress(Sender: TObject; var Key: Char);
    procedure EhamrahKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure e_codChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure execute_eslahe_shakhs_stored_procedure;
    procedure E_codeKeyPress(Sender: TObject; var Key: Char);

    function exist_cod:boolean;
    function check:boolean;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_mmoshakhasat_anjirestan: TFrm_mmoshakhasat_anjirestan;

implementation

uses unt_datamodule1, Untdmlistha, unt_DataM_final,
  Unt_DataModule_gozaresh_tarkibi, unt_main, unt_DataM_sp,
  Unt_mmoshakhasat_shakhs;

{$R *.dfm}
function TFrm_mmoshakhasat_anjirestan.check:boolean;
begin
   check:=true;
   if (trim(E_name.Text)='')or(trim(E_code.Text)='') then
   begin
    check:=false;
    MessageBox(Handle,'òœ «‰ÃÌ—” «‰ Ê ‰«„ «‰ÃÌ—” «‰ »«Ìœ Ê«—œ ‘Ê‰œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
   end;

end;

function TFrm_mmoshakhasat_anjirestan.exist_cod:boolean;
var st:pchar;
begin
        exist_cod:=false;

        DataModule1.ADOQuery4.SQL.Text:='select * from t_shahr_foroshande where code='+trim(E_code.Text)+
        ' and code<>'+DataModule1.ADOQuery3code.AsString;
        DataModule1.ADOQuery4.Open;

        if  DataModule1.ADOQuery4.RecordCount>0 then
        begin
          exist_cod:=true;
          st:=pchar(' òœ '+trim(E_code.Text)+' ﬁ»·« »—«Ì '+DataModule1.ADOQuery4shahrforoshande.AsString+' Ê«—œ ‘œÂ «” ');
          MessageBox(Handle,st,'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        end;

end;

procedure TFrm_mmoshakhasat_anjirestan.execute_eslahe_shakhs_stored_procedure;
var typ_:string;
begin


  typ_:=ComboBox1.Text;

  frm_main.l_last_op.Caption:=' «’·«Õ „‘Œ’«  «‰ÃÌ—” «‰ '+lname.Caption;

  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[0].Value:=lname.Caption;//@shahrforoshande_old  nvarchar(50),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[1].Value:=trim(E_name.Text);//@shahrforoshande_new nvarchar(50),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[2].Value:=StrToFloat(L_code.Caption);//@code float,
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[3].Value:=Eadress.Text;//@adress nvarchar(200),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[4].Value:=Etelephon.Text;//@telephon nvarchar(12),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[5].Value:='';//@telephonhamrah nvarchar(12),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[6].Value:='';//@email nvarchar(30),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[7].Value:=typ_;//@type nvarchar(30)
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[8].Value:=' «’·«Õ „‘Œ’«  «‰ÃÌ—” «‰ '+DataModule1.ADOQuery3type_.AsString+' »Â '+typ_+' '+DataModule1.ADOQuery3shahrforoshande.AsString+' »Â '+trim(E_name.Text);//@amaliat nvarchar(1000),

  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[9].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[10].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[11].Value:=StrToFloat(trim(e_code.Text));  //@code_jadid float

  DataM_sp.ADOStoredProc_eslahe_shakhs.ExecProc;

  //frm_main.backup;
  
  MessageBox(Handle,'„‘Œ’«  »Â —Ê“ —”«‰Ì ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);  

end;
///////////////////
procedure TFrm_mmoshakhasat_anjirestan.show_kharidaran;
begin
  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande where type_='+QuotedStr('Œ—Ìœ«—')+
  ' or type_='+QuotedStr('Œ—Ìœ«—/›—Ê‘‰œÂ')+
  ' order by shahrforoshande';
  DataModule1.ADOQuery3.Open;
end;

procedure TFrm_mmoshakhasat_anjirestan.show_foroshandegan;
begin
  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande where type_='+QuotedStr('›—Ê‘‰œÂ')+
  ' or type_='+QuotedStr('Œ—Ìœ«—/›—Ê‘‰œÂ')+
  ' order by shahrforoshande';
  DataModule1.ADOQuery3.Open;
end;
procedure TFrm_mmoshakhasat_anjirestan.showshakhs;
begin
  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande where type_='+QuotedStr('«‰ÃÌ—” «‰')+' order by shahrforoshande ';
  DataModule1.ADOQuery3.Open;
end;
procedure TFrm_mmoshakhasat_anjirestan.updateshakhs;
begin
  DataModule1.ADOeditshakhs.SQL.Text:='update t_shahr_foroshande set shahrforoshande='+QuotedStr(trim(E_name.Text))+
  ',adress='+QuotedStr(Eadress.Text)+', telephon='+QuotedStr(Etelephon.Text)+
  ',telephonhamrah='+QuotedStr('')+',email='+QuotedStr('');


   DataModule1.ADOeditshakhs.SQL.Text:=DataModule1.ADOeditshakhs.SQL.Text+',type_='+QuotedStr(ComboBox1.Text);

  DataModule1.ADOeditshakhs.SQL.Text:=DataModule1.ADOeditshakhs.SQL.Text+' where code='+L_code.Caption;
  DataModule1.ADOeditshakhs.ExecSQL;

  Dmlistha.adolistforosh.SQL.Text:='update forosh_jens set shahrforoshande='+QuotedStr(trim(E_name.Text))+
  ' where shahrforoshande='+QuotedStr(lname.Caption);
  Dmlistha.adolistforosh.ExecSQL;


  Dmlistha.ADOkharidha.SQL.Text:='update jens_ set shahrforoshande='+QuotedStr(trim(E_name.Text))+
  ' where shahrforoshande='+QuotedStr(lname.Caption);
  Dmlistha.ADOkharidha.ExecSQL;


  DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set shahrforoshande='+QuotedStr(trim(E_name.Text));

    DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:=DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text+',type_='+QuotedStr(ComboBox1.Text);

  DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:=DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text+' where shahrforoshande='+QuotedStr(lname.Caption);
  DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;

  DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set shahrforoshande='+QuotedStr(trim(E_name.Text));

    DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:=DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text+',type_='+QuotedStr(ComboBox1.Text);

  DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:=DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text+' where shahrforoshande='+QuotedStr(lname.Caption);
  DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;



  DataModule1.ADOpardakhtbedehi.SQL.Text:='update T_pardakht_bedehi set shahrforoshande='+QuotedStr(trim(E_name.Text))+
  ' where shahrforoshande='+QuotedStr(lname.Caption);
  DataModule1.ADOpardakhtbedehi.ExecSQL;


  DataModule1.ADOpardakhtbedehi_kharidar.SQL.Text:='update T_pardakht_bedehi_kharidar set shahrforoshande='+QuotedStr(trim(E_name.Text))+
  ' where shahrforoshande='+QuotedStr(lname.Caption);
  DataModule1.ADOpardakhtbedehi_kharidar.ExecSQL;


  DataM_final.ADOQ_T_pardakht_check_kharid.SQL.Text:='update T_pardakht_check_kharid set shahrforoshande='+QuotedStr(trim(E_name.Text))+
  ' where shahrforoshande='+QuotedStr(lname.Caption);
  DataM_final.ADOQ_T_pardakht_check_kharid.ExecSQL;

  DataM_final.ADOQ_T_pardakht_check_forosh.SQL.Text:='update T_pardakht_check_forosh set shahrforoshande='+QuotedStr(trim(E_name.Text))+
  ' where shahrforoshande='+QuotedStr(lname.Caption);
  DataM_final.ADOQ_T_pardakht_check_forosh.ExecSQL;

   DataM_final.ADOQ_t_sh_facrorhaye_forosh.SQL.Text:='update t_sh_facrorhaye_forosh set shahrforoshande='+QuotedStr(trim(E_name.Text))+
  ' where shahrforoshande='+QuotedStr(lname.Caption);
   DataM_final.ADOQ_t_sh_facrorhaye_forosh.ExecSQL;

  DataModule1.ADOQ_sh_factor.SQL.Text:='update T_shomare_factor set shahrforoshande='+QuotedStr(trim(E_name.Text))+
  ' where shahrforoshande='+QuotedStr(lname.Caption);
  DataModule1.ADOQ_sh_factor.ExecSQL;

  DataModule1.ADOQ_sh_factor_kharid.SQL.Text:='update T_shomare_factor_kharid set shahrforoshande='+QuotedStr(trim(E_name.Text))+
  ' where shahrforoshande='+QuotedStr(lname.Caption);
  DataModule1.ADOQ_sh_factor_kharid.ExecSQL;

   DataM_final.ADOQ_t_sh_facrorhaye_kharid.SQL.Text:='update t_sh_facrorhaye_kharid set shahrforoshande='+QuotedStr(trim(E_name.Text))+
  ' where shahrforoshande='+QuotedStr(lname.Caption);
   DataM_final.ADOQ_t_sh_facrorhaye_kharid.ExecSQL;

  DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.SQL.Text:='update T_yaddasht set shakhs='+QuotedStr(trim(E_name.Text))+
  ' where shakhs='+QuotedStr(lname.Caption);
  DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.ExecSQL;

  DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.SQL.Text:='update T_sefaresh set shakhs='+QuotedStr(trim(E_name.Text))+
  ' where shakhs='+QuotedStr(lname.Caption);
  DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.ExecSQL;

 ////////////////

 Dmlistha.ADOlistanbarforosh.SQL.Text:='update Tanbar_jens_kolli set shakhs_sherkat='+QuotedStr(trim(E_name.Text+'*'))+
  ' where shakhs_sherkat='+QuotedStr(lname.Caption+'*');
 Dmlistha.ADOlistanbarforosh.ExecSQL;

                           
 Dmlistha.ADOlistanbarforosh.SQL.Text:='update Tanbar_jens_kolli set shakhs_sherkat='+QuotedStr(trim(E_name.Text))+
  ' where shakhs_sherkat='+QuotedStr(lname.Caption);
 Dmlistha.ADOlistanbarforosh.ExecSQL;

 /////////////////
 DataM_final.ADOQ_eslahe_bedehe_tozihe_kharidar.SQL.Text:='update t_tozihe_eslahe_bedehi_kharidar set shakhs='+QuotedStr(trim(E_name.Text))+
  ' where shakhs='+QuotedStr(lname.Caption);
 DataM_final.ADOQ_eslahe_bedehe_tozihe_kharidar.ExecSQL;


 DataM_final.ADOQ_eslahe_bedehe_tozihe_foroshande.SQL.Text:='update t_tozihe_eslahe_bedehi_foroshande set shakhs='+QuotedStr(trim(E_name.Text))+
  ' where shakhs='+QuotedStr(lname.Caption);
 DataM_final.ADOQ_eslahe_bedehe_tozihe_foroshande.ExecSQL;

 //////////////////////
 Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update t_anbar_majazi set shakhs_sherkat='+QuotedStr(trim(E_name.Text+'*'))+
  ' where shakhs_sherkat='+QuotedStr(lname.Caption+'*');
 Dmlistha.ADOQuery_anbar_majazi.ExecSQL;


 Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update t_anbar_majazi set shakhs_sherkat='+QuotedStr(trim(E_name.Text))+
  ' where shakhs_sherkat='+QuotedStr(lname.Caption);
 Dmlistha.ADOQuery_anbar_majazi.ExecSQL;

 //////////////////////
  MessageBox(Handle,'„‘Œ’«  »Â —Ê“ —”«‰Ì ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
end;
procedure TFrm_mmoshakhasat_anjirestan.show;
begin

      Frm_mmoshakhasat_shakhs.lname.Caption:=DataModule1.ADOQuery3shahrforoshande.AsString;
      Frm_mmoshakhasat_shakhs.E_name.Text:=DataModule1.ADOQuery3shahrforoshande.AsString;
      Frm_mmoshakhasat_shakhs.L_code.Caption:=DataModule1.ADOQuery3code.AsString;
      Frm_mmoshakhasat_shakhs.Eadress.Text:=DataModule1.ADOQuery3adress.AsString;
      Frm_mmoshakhasat_shakhs.Etelephon.Text:=DataModule1.ADOQuery3telephon.AsString;
      Frm_mmoshakhasat_shakhs.Ehamrah.Text:=DataModule1.ADOQuery3telephonhamrah.AsString;
      Frm_mmoshakhasat_shakhs.Email.Text:=DataModule1.ADOQuery3email.AsString;
end;

procedure TFrm_mmoshakhasat_anjirestan.FormShow(Sender: TObject);
begin
  showshakhs;
  show;

  esearch.Clear;
  e_cod.Clear;

  esearch.SetFocus;

end;

procedure TFrm_mmoshakhasat_anjirestan.suiButton2Click(Sender: TObject);
var s:string;
begin
if DataModule1.ADOQuery3.RecordCount <=0 then
  MessageBox(Handle,'—òÊ—œÌ »—«Ì »—Ê“ —”«‰Ì ÊÃÊœ ‰œ«—œ',' ÊÃÂ!',MB_OK or MB_ICONEXCLAMATION  or MB_RTLREADING or MB_RIGHT)
else
begin

if check then
begin//check
if not exist_cod then
begin//exist_cod

  if MessageBox(Handle,'„‘Œ’«  «‰ÃÌ—” «‰ ° »—Ê“ —”«‰Ì ‘Êœ ø','',MB_YESNO or MB_ICONQUESTION or MB_RTLREADING or MB_RIGHT)=idyes then
    begin

      DataModule1.ADOQuery4.SQL.Text:='select * from t_shahr_foroshande where shahrforoshande='+QuotedStr(trim(E_name.Text))+
      ' and code<>'+DataModule1.ADOQuery3code.AsString;
      DataModule1.ADOQuery4.Open;
      if DataModule1.ADOQuery4.RecordCount<=0 then
      begin

       frm_main.l_last_op.Caption:=' «’·«Õ „‘Œ’«  «‰ÃÌ—” «‰ '+DataModule1.ADOQuery3shahrforoshande.AsString;

        s:=ComboBox1.Text;

       frm_main.sabte_amaliat(' «’·«Õ „‘Œ’«  «‰ÃÌ—” «‰ '+DataModule1.ADOQuery3type_.AsString+' »Â '+s+' '+DataModule1.ADOQuery3shahrforoshande.AsString+' »Â '+trim(E_name.Text));
       //updateshakhs;

       L_code.Caption:=DataModule1.ADOQuery3code.AsString;

       l_review.Caption:=L_code.Caption;
       execute_eslahe_shakhs_stored_procedure;
       showshakhs;
       DataModule1.ADOQuery3.Locate('code',l_review.Caption,[loPartialKey]);
       show;
      end
      else
       MessageBox(Handle,'„‘Œ’«  Ê«—œ ‘œÂ »—«Ì «’·«Õ  «‰ÃÌ—” «‰ „Ê—œ ‰Ÿ— ﬁ»·« Ê«—œ ‘œÂ «” ',' ÊÃÂ!',MB_OK or MB_ICONEXCLAMATION  or MB_RTLREADING or MB_RIGHT);
    end
    else
     MessageBox(Handle,'„‘Œ’«  »—Ê“ —”«‰Ì ‰‘œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
end;
end;//exist_cod
end;//check
end;

procedure TFrm_mmoshakhasat_anjirestan.esearchChange(Sender: TObject);
begin
  DataModule1.ADOQuery3.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;



procedure TFrm_mmoshakhasat_anjirestan.EtelephonKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_mmoshakhasat_anjirestan.EhamrahKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_mmoshakhasat_anjirestan.CheckBox1Click(Sender: TObject);
begin
    ComboBox1.Visible:=true
end;

procedure TFrm_mmoshakhasat_anjirestan.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure TFrm_mmoshakhasat_anjirestan.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_mmoshakhasat_anjirestan.E_codeKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
