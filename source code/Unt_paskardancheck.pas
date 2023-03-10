unit Unt_paskardancheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, SUIDBCtrls, ExtCtrls, SUIForm, StdCtrls,
  SUIButton, SUIImagePanel, SUIGroupBox, DBCtrls;

type
  TFrm_paskardancheck = class(TForm)
    Dskharidha: TDataSource;
    suiGroupBox1: TsuiGroupBox;
    Label5: TLabel;
    esearch: TEdit;
    suiButton1: TsuiButton;
    GroupBox2: TGroupBox;
    suiDbjens: TsuiDBGrid;
    l_review: TLabel;
    RadioGroup2: TRadioGroup;
    GroupBox_sandog_magsad: TGroupBox;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox_shomare_hesab: TGroupBox;
    DBGarshivforosh: TDBGrid;
    DataSource2: TDataSource;
    DataSource1: TDataSource;
    Label4: TLabel;
    e_sh_fish: TEdit;
    procedure showcheck;
    procedure FormShow(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure execute_pas_kardane_check_stored_procedure;
    procedure type_;
    procedure RadioGroup2Click(Sender: TObject);
    procedure e_sh_fishKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_paskardancheck: TFrm_paskardancheck;

implementation

uses  Untdmlistha, unt_datamodule2, unt_main, unt_DataM_final, unt_login,
  unt_DataM_sp, Unt_DataModule_gozaresh_tarkibi, Unt_add_bank1,
  unt_DataM_forosh, unt_DataM_final1, unt_eslah_forosh;

{$R *.dfm}
procedure TFrm_paskardancheck.type_;
begin
  if RadioGroup2.ItemIndex=0 then
  begin
    GroupBox_sandog_magsad.Visible:=true;
    GroupBox_shomare_hesab.Visible:=false;
  end
  else
  begin
    GroupBox_sandog_magsad.Visible:=false;
    GroupBox_shomare_hesab.Visible:=true;
  end;
end;

procedure TFrm_paskardancheck.execute_pas_kardane_check_stored_procedure;
var st:pchar;
begin
  if DataM_final.ADOQ_T_pardakht_check_forosh.RecordCount <=0 then
    MessageBox(Handle,'??? ???? ??? ??? ???? ?????','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
    begin
      frm_main.l_last_op.Caption:=' ??? ???? ?? ?? ????? '+DataM_final.ADOQ_T_pardakht_check_foroshsh_check.AsString+' ?????? ??? ?? '+DataM_final.ADOQ_T_pardakht_check_foroshshahrforoshande.AsString;
      DataM_sp.ADOStoredProc_pas_kardane_check.Parameters[0].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
      DataM_sp.ADOStoredProc_pas_kardane_check.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),
      DataM_sp.ADOStoredProc_pas_kardane_check.Parameters[2].Value:=DataM_final.ADOQ_T_pardakht_check_foroshid.AsString;//@id float,
      DataM_sp.ADOStoredProc_pas_kardane_check.Parameters[3].Value:='???';//@pass  nvarchar(10),
      DataM_sp.ADOStoredProc_pas_kardane_check.Parameters[4].Value:=frm_main.l_last_op.Caption+' ?? ???? '+DataM_final.ADOQ_T_pardakht_check_foroshmablagh_check.AsString;//@amaliat nvarchar(1000)
      DataM_sp.ADOStoredProc_pas_kardane_check.ExecProc;
    end;
end;
//////////////////
procedure TFrm_paskardancheck.showcheck;
  begin

    DataM_final.ADOQ_T_pardakht_check_forosh.sql.Text:='select * from T_pardakht_check_forosh where pass='+QuotedStr('???')+
    //'and tarikh='+QuotedStr(Frm_login.Egettarikh.Text)+
    ' order by tarikh,shahrforoshande,sh_hesab';
    DataM_final.ADOQ_T_pardakht_check_forosh.Open;
  end;

procedure TFrm_paskardancheck.FormShow(Sender: TObject);
begin
  Frm_paskardancheck.WindowState:=wsMaximized;
  esearch.Text:='';
  e_sh_fish.Clear;
  
  esearch.SetFocus;
  showcheck;

    DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name  where sandog<>'+
    QuotedStr('?????? ??????')+
    ' order by sandog';
    DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;

  Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='select * from T_shomare_hesabe_banki  order by bank_shobe_sh_hesab';
  Dmlistha.ADOQuery_shomare_hesabe_banki.Open;

  RadioGroup2.ItemIndex:=0;
  type_;
end;

procedure TFrm_paskardancheck.suiButton1Click(Sender: TObject);
var st:pchar;
    s:string;
    sh:real;
begin
  if DataM_final.ADOQ_T_pardakht_check_forosh.RecordCount <=0 then
  begin
    MessageBox(Handle,'??? ???? ??? ??? ???? ?????','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    exit;
  end;


  if (RadioGroup2.ItemIndex=0)and(DBLookupComboBox1.Text='')then
  begin
    MessageBox(Handle,'?????? ???? ???? ???? ?? ??? ??? ?? ??? ?????? ???? ???','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    exit;
  end;

  if (RadioGroup2.ItemIndex=1)and(Dmlistha.ADOQuery_shomare_hesabe_banki.RecordCount=0)then
  begin
    MessageBox(Handle,'????? ???? ????? ???? ???? ???? ?? ??? ??? ?? ??? ?????? ???? ???','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    exit;
  end;

  if e_sh_fish.Text='' then
    sh:=0
  else
    sh:=StrToFloat(e_sh_fish.Text);

  if (RadioGroup2.ItemIndex=1)and(sh=0)then
  begin
    MessageBox(Handle,'????? ??? ?? ???? ??????','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    exit;
  end;

  DataM_final1.ADOQ_bank2.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
  QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString)+
  ' and sh_fish='+FloatToStr(sh);
  DataM_final1.ADOQ_bank2.Open;

  if DataM_final1.ADOQ_bank2.RecordCount>0 then
  begin
    MessageBox(Handle,'?? / ??? ?? ????? ????? ???? ???? ??? ??? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    exit;
  end;

  s:='??? ???? ? ????? ?? ??????? ?? ';

  if RadioGroup2.ItemIndex=0 then
    s:=s+' ????? << '+DBLookupComboBox1.Text+' >>  ?? ????? ???????Ͽ'
  else
    s:=s+' ????? ???? ????? << '+Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString+' >>  ?? ????? ???????Ͽ';


  if  MessageBox(Handle,pchar(s),'?',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
  begin
      l_review.Caption:=DataM_final.ADOQ_T_pardakht_check_foroshid.AsString;


      if RadioGroup2.ItemIndex=1 then
      begin
        frm_add_bank1.L_type2.Caption:='pass_kardane_check_kharidar';

        frm_add_bank1.RadioGroup1.ItemIndex:=0;

        frm_add_bank1.sharh:='??? ???? ?? ?? ????? ???? '+DataM_final.ADOQ_T_pardakht_check_foroshsh_hesab.AsString+' ? ????? ?? '+DataM_final.ADOQ_T_pardakht_check_foroshsh_check.AsString+
        ' ????? ??? ?? '+DataM_final.ADOQ_T_pardakht_check_foroshshahrforoshande.AsString+' ????? ???? '+DataM_final.ADOQ_T_pardakht_check_foroshshomare_factor.AsString;

        frm_add_bank1.sandog:='';
        frm_add_bank1.bank_shobe_sh_hesab:=Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString;
        frm_add_bank1.tarikh:=DataM_final.ADOQ_T_pardakht_check_foroshtarikh.AsString;
        frm_add_bank1.e_sh_fish.Text:=FloatToStr(sh);
        frm_add_bank1.E_bestankar.Text:=DataM_final.ADOQ_T_pardakht_check_foroshmablagh_check.AsString;

        frm_add_bank1.time_:='';

        execute_pas_kardane_check_stored_procedure;

        frm_add_bank1.Button1.Click;


      st:=pchar(' ?? ??????? << '+DataM_final.ADOQ_T_pardakht_check_foroshsh_check.AsString+' >>?????? ??? ?? << '+DataM_final.ADOQ_T_pardakht_check_foroshshahrforoshande.AsString+' >> ??? ??');

      MessageBox(Handle,st,'????',MB_OK  or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
      showcheck;
      end
      else
      begin

        DataM_forosh.ADOQ_bank2.SQL.Text:='begin tran  insert into T_vorod_khoroj_sandogha(time_,tozih,type,tarikh,mablag,sandog,cod_kharidar,sh_factor)'+
        'values('+QuotedStr(frm_main.LMDClock1.Digital.Caption)+','+
        QuotedStr('??? ???? ?? ?? ????? ???? '+DataM_final.ADOQ_T_pardakht_check_foroshsh_hesab.AsString+' ? ????? ?? '+DataM_final.ADOQ_T_pardakht_check_foroshsh_check.AsString+
        ' ????? ??? ?? '+DataM_final.ADOQ_T_pardakht_check_foroshshahrforoshande.AsString+' ????? ???? '+DataM_final.ADOQ_T_pardakht_check_foroshshomare_factor.AsString)+
        ','+QuotedStr('?????')+
        ','+QuotedStr(frm_main.L_tarikh.Caption)+','+DataM_final.ADOQ_T_pardakht_check_foroshmablagh_check.AsString+
        ','+QuotedStr(DBLookupComboBox1.Text)+','+DataM_final.ADOQ_T_pardakht_check_foroshcode.AsString+','+DataM_final.ADOQ_T_pardakht_check_foroshshomare_factor.AsString+
        ')'+' commit tran';
        DataM_forosh.ADOQ_bank2.ExecSQL;
        
        execute_pas_kardane_check_stored_procedure;

      st:=pchar(' ?? ??????? << '+DataM_final.ADOQ_T_pardakht_check_foroshsh_check.AsString+' >>?????? ??? ?? << '+DataM_final.ADOQ_T_pardakht_check_foroshshahrforoshande.AsString+' >> ??? ??');

      MessageBox(Handle,st,'????',MB_OK  or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
      showcheck;
      frm_eslah_forosh.waiting('????? ????? ?????? !',5000);        
      end;





      DataM_final.ADOQ_T_pardakht_check_forosh.Locate('id',l_review.Caption,[loPartialKey])
  end;

end;

procedure TFrm_paskardancheck.esearchChange(Sender: TObject);
begin
if esearch.Text<>'' then
  DataM_final.ADOQ_T_pardakht_check_forosh.Locate('sh_check',esearch.Text,[loPartialKey]);
end;

procedure TFrm_paskardancheck.RadioGroup2Click(Sender: TObject);
begin
  type_;
end;

procedure TFrm_paskardancheck.e_sh_fishKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
