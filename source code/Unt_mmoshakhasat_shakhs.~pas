unit Unt_mmoshakhasat_shakhs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, Grids, DBGrids, SUIDBCtrls, ExtCtrls,
  SUIForm, DB, SUIImagePanel, SUIGroupBox, te_controls, DBCtrls;

type
  TFrm_mmoshakhasat_shakhs = class(TForm)
    dsshakhs: TDataSource;
    DataSource1: TDataSource;
    L_code: TLabel;
    GroupBox2: TGroupBox;
    esearch: TEdit;
    suiDBGrid2: TsuiDBGrid;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    l: TLabel;
    lname: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Email: TEdit;
    Ehamrah: TEdit;
    Etelephon: TEdit;
    suiButton2: TsuiButton;
    Eadress: TTeMemo;
    E_name: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    DBText1: TDBText;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    Label10: TLabel;
    e_cod: TEdit;
    l_review: TLabel;
    Label3: TLabel;
    E_code: TEdit;
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
  Frm_mmoshakhasat_shakhs: TFrm_mmoshakhasat_shakhs;

implementation

uses unt_datamodule1, Untdmlistha, unt_DataM_final,
  Unt_DataModule_gozaresh_tarkibi, unt_main, unt_DataM_sp;

{$R *.dfm}
function TFrm_mmoshakhasat_shakhs.check:boolean;
begin
   check:=true;
   if (trim(E_name.Text)='')or(trim(E_code.Text)='') then
   begin
    check:=false;
    MessageBox(Handle,'òœ «‘ —«ò Ê ‰«„ ‘Œ’ »«Ìœ Ê«—œ ‘Ê‰œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
   end;

end;

function TFrm_mmoshakhasat_shakhs.exist_cod:boolean;
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

procedure TFrm_mmoshakhasat_shakhs.execute_eslahe_shakhs_stored_procedure;
var typ_:string;
begin

if CheckBox1.Checked then
  typ_:=ComboBox1.Text
else
  typ_:=DataModule1.ADOQuery3type_.AsString;

  frm_main.l_last_op.Caption:=' «’·«Õ „‘Œ’«  ‘Œ’ '+lname.Caption;  

  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[0].Value:=lname.Caption;//@shahrforoshande_old  nvarchar(50),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[1].Value:=trim(E_name.Text);//@shahrforoshande_new nvarchar(50),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[2].Value:=StrToFloat(L_code.Caption);//@code float,
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[3].Value:=Eadress.Text;//@adress nvarchar(200),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[4].Value:=Etelephon.Text;//@telephon nvarchar(12),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[5].Value:=Ehamrah.Text;//@telephonhamrah nvarchar(12),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[6].Value:=Email.Text;//@email nvarchar(30),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[7].Value:=typ_;//@type nvarchar(30)
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[8].Value:=' «’·«Õ „‘Œ’«  ‘Œ’ '+DataModule1.ADOQuery3type_.AsString+' »Â '+typ_+' '+DataModule1.ADOQuery3shahrforoshande.AsString+' »Â '+trim(E_name.Text);//@amaliat nvarchar(1000),

  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[9].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[10].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)
  DataM_sp.ADOStoredProc_eslahe_shakhs.Parameters[11].Value:=StrToFloat(trim(e_code.Text));  //@code_jadid float

  DataM_sp.ADOStoredProc_eslahe_shakhs.ExecProc;

  //frm_main.backup;
  
  MessageBox(Handle,'„‘Œ’«  »Â —Ê“ —”«‰Ì ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);  

end;
///////////////////
procedure TFrm_mmoshakhasat_shakhs.show_kharidaran;
begin
  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande where type_='+QuotedStr('Œ—Ìœ«—')+
  ' or type_='+QuotedStr('Œ—Ìœ«—/›—Ê‘‰œÂ')+
  ' order by shahrforoshande';
  DataModule1.ADOQuery3.Open;
end;

procedure TFrm_mmoshakhasat_shakhs.show_foroshandegan;
begin
  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande where type_='+QuotedStr('›—Ê‘‰œÂ')+
  ' or type_='+QuotedStr('Œ—Ìœ«—/›—Ê‘‰œÂ')+
  ' order by shahrforoshande';
  DataModule1.ADOQuery3.Open;
end;
procedure TFrm_mmoshakhasat_shakhs.showshakhs;
begin
  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande where type_<>'+QuotedStr('«‰ÃÌ—” «‰')+' order by shahrforoshande ';
  DataModule1.ADOQuery3.Open;
end;
procedure TFrm_mmoshakhasat_shakhs.updateshakhs;
begin
  DataModule1.ADOeditshakhs.SQL.Text:='update t_shahr_foroshande set shahrforoshande='+QuotedStr(trim(E_name.Text))+
  ',adress='+QuotedStr(Eadress.Text)+', telephon='+QuotedStr(Etelephon.Text)+
  ',telephonhamrah='+QuotedStr(Ehamrah.Text)+',email='+QuotedStr(Email.Text);
  
  if CheckBox1.Checked then
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

  if CheckBox1.Checked then
    DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:=DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text+',type_='+QuotedStr(ComboBox1.Text);

  DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:=DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text+' where shahrforoshande='+QuotedStr(lname.Caption);
  DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;

  DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set shahrforoshande='+QuotedStr(trim(E_name.Text));

  if CheckBox1.Checked then
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
procedure TFrm_mmoshakhasat_shakhs.show;
begin

      Frm_mmoshakhasat_shakhs.lname.Caption:=DataModule1.ADOQuery3shahrforoshande.AsString;
      Frm_mmoshakhasat_shakhs.E_name.Text:=DataModule1.ADOQuery3shahrforoshande.AsString;
      Frm_mmoshakhasat_shakhs.L_code.Caption:=DataModule1.ADOQuery3code.AsString;
      Frm_mmoshakhasat_shakhs.Eadress.Text:=DataModule1.ADOQuery3adress.AsString;
      Frm_mmoshakhasat_shakhs.Etelephon.Text:=DataModule1.ADOQuery3telephon.AsString;
      Frm_mmoshakhasat_shakhs.Ehamrah.Text:=DataModule1.ADOQuery3telephonhamrah.AsString;
      Frm_mmoshakhasat_shakhs.Email.Text:=DataModule1.ADOQuery3email.AsString;
end;

procedure TFrm_mmoshakhasat_shakhs.FormShow(Sender: TObject);
begin
  showshakhs;
  show;

  esearch.Clear;
  e_cod.Clear;

  esearch.SetFocus;

end;

procedure TFrm_mmoshakhasat_shakhs.suiButton2Click(Sender: TObject);
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

  if MessageBox(Handle,'„‘Œ’«  ‘Œ’ ° »—Ê“ —”«‰Ì ‘Êœ ø','',MB_YESNO or MB_ICONQUESTION or MB_RTLREADING or MB_RIGHT)=idyes then
    begin

      DataModule1.ADOQuery4.SQL.Text:='select * from t_shahr_foroshande where shahrforoshande='+QuotedStr(trim(E_name.Text))+
      ' and code<>'+DataModule1.ADOQuery3code.AsString;
      DataModule1.ADOQuery4.Open;
      if DataModule1.ADOQuery4.RecordCount<=0 then
      begin

       frm_main.l_last_op.Caption:=' «’·«Õ „‘Œ’«  ‘Œ’ '+DataModule1.ADOQuery3shahrforoshande.AsString;

       if CheckBox1.Checked then
        s:=ComboBox1.Text
       else
        s:=DataModule1.ADOQuery3type_.AsString;

       frm_main.sabte_amaliat(' «’·«Õ „‘Œ’«  ‘Œ’ '+DataModule1.ADOQuery3type_.AsString+' »Â '+s+' '+DataModule1.ADOQuery3shahrforoshande.AsString+' »Â '+trim(E_name.Text));
       //updateshakhs;

       L_code.Caption:=DataModule1.ADOQuery3code.AsString;

       l_review.Caption:=L_code.Caption;
       execute_eslahe_shakhs_stored_procedure;
       showshakhs;
       DataModule1.ADOQuery3.Locate('code',l_review.Caption,[loPartialKey]);
       show;
      end
      else
       MessageBox(Handle,'„‘Œ’«  Ê«—œ ‘œÂ »—«Ì «’·«Õ  ‘Œ’ „Ê—œ ‰Ÿ— ﬁ»·« Ê«—œ ‘œÂ «” ',' ÊÃÂ!',MB_OK or MB_ICONEXCLAMATION  or MB_RTLREADING or MB_RIGHT);
    end
    else
     MessageBox(Handle,'„‘Œ’«  »—Ê“ —”«‰Ì ‰‘œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
end;
end;//exist_cod
end;//check
end;

procedure TFrm_mmoshakhasat_shakhs.esearchChange(Sender: TObject);
begin
  DataModule1.ADOQuery3.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;



procedure TFrm_mmoshakhasat_shakhs.EtelephonKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_mmoshakhasat_shakhs.EhamrahKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_mmoshakhasat_shakhs.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    ComboBox1.Visible:=true
  else
    ComboBox1.Visible:=false;
end;

procedure TFrm_mmoshakhasat_shakhs.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure TFrm_mmoshakhasat_shakhs.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_mmoshakhasat_shakhs.E_codeKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
