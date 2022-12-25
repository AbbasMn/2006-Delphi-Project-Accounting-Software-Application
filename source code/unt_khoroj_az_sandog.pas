unit unt_khoroj_az_sandog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, SUIDBCtrls, SUIForm,
  DB, SUIButton;

type
  TFrm_khorojha_az_sandog = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    GroupBox_sandog_magsad: TGroupBox;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    Edit_mablag: TEdit;
    GroupBox_shomare_hesab: TGroupBox;
    DBGarshivforosh: TDBGrid;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    suiButton5: TsuiButton;
    suiButton6: TsuiButton;
    Label2: TLabel;
    e_sh_fish: TEdit;
    L_type: TLabel;
    L_sandoge_motefaerge: TLabel;
    L_type_main: TLabel;
    Label_sandog_mabda: TLabel;
    Label8: TLabel;
    Label_mojodi_mabda: TLabel;
    Label_sandog_magsad: TLabel;
    Label1: TLabel;
    Label_mojodi_magsad: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    RadioGroup11: TRadioGroup;
    E_tarikh: TEdit;
    DataSource3: TDataSource;
  procedure az_sandog_be_sandog_digar;
  procedure az_sandog_be_moshtari;
  procedure az_sandog_be_sh_hesab;
  procedure az_sandog_be_foroshande;
  procedure FormShow(Sender: TObject);
  procedure DBLookupComboBox3Click(Sender: TObject);
  procedure DBLookupComboBox1Click(Sender: TObject);
  procedure type_;
  procedure RadioGroup2Click(Sender: TObject);
  procedure Edit_mablagKeyPress(Sender: TObject; var Key: Char);
  procedure suiButton5Click(Sender: TObject);
  function check:boolean;
  procedure suiButton6Click(Sender: TObject);
  function tasavi_mabda_magsad:boolean;
  function check_mojodi_kol:boolean;
  procedure e_sh_fishKeyPress(Sender: TObject; var Key: Char);
  procedure execute_entegale_az_sandog_be_sandog_stored_procedure;
    procedure RadioGroup11Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    time_:string;

  end;

var
  Frm_khorojha_az_sandog: TFrm_khorojha_az_sandog;

implementation

uses unt_sandog_jadid, unt_gozaresh_az_sandog,
  Unt_DataModule_gozaresh_tarkibi, unt_entekhab_check, Untdmlistha,
  unt_login, unt_main, Unt_add_bank1, unt_DataM_sp, Taghvim,
  unt_eslah_forosh;

{$R *.dfm}
  procedure TFrm_khorojha_az_sandog.execute_entegale_az_sandog_be_sandog_stored_procedure;
  var x,y1,y2:string;
  begin
    x:=E_tarikh.Text;

    y1:=DBLookupComboBox3.Text;
    y2:=Label_sandog_magsad.Caption;

    time_:=frm_main.LMDClock1.Digital.Caption;

    frm_main.l_last_op.Caption:=' ������ ��� �� ����� '+y1+' �� ����� '+y2;
    
      DataM_sp.ADOStoredProc_entegale_vajh_az_sandog_be_sandog.Parameters[0].Value:=time_;// @time nvarchar(10),
      DataM_sp.ADOStoredProc_entegale_vajh_az_sandog_be_sandog.Parameters[1].Value:=x;//@tarikh nvarchar(12),

      if (y1='������')and(y2='������ ������') then
        DataM_sp.ADOStoredProc_entegale_vajh_az_sandog_be_sandog.Parameters[2].Value:='������ ������ ���� �� ����� '+y1+' '+trim(Memo1.Text)//@tozih1 nvarchar(150)
      else
        DataM_sp.ADOStoredProc_entegale_vajh_az_sandog_be_sandog.Parameters[2].Value:='���� �� ����� '+y1+' '+trim(Memo1.Text); //@tozih1 nvarchar(150),

      DataM_sp.ADOStoredProc_entegale_vajh_az_sandog_be_sandog.Parameters[3].Value:='�����'; //@type1  nvarchar(6),
      DataM_sp.ADOStoredProc_entegale_vajh_az_sandog_be_sandog.Parameters[4].Value:=y2;//@sandog1 nvarchar(30),

      if (y1='������')and(y2='������ ������') then 
        DataM_sp.ADOStoredProc_entegale_vajh_az_sandog_be_sandog.Parameters[5].Value:='������ ������ ������ �� ����� '+y2+' '+trim(Memo1.Text) //@tozih2 nvarchar(150),
      else
        DataM_sp.ADOStoredProc_entegale_vajh_az_sandog_be_sandog.Parameters[5].Value:='������ �� ����� '+y2+' '+trim(Memo1.Text); //@tozih2 nvarchar(150),

      DataM_sp.ADOStoredProc_entegale_vajh_az_sandog_be_sandog.Parameters[6].Value:='�����';//@type2 nvarchar(6),
      DataM_sp.ADOStoredProc_entegale_vajh_az_sandog_be_sandog.Parameters[7].Value:=y1;//@sandog2 nvarchar(30),

      DataM_sp.ADOStoredProc_entegale_vajh_az_sandog_be_sandog.Parameters[8].Value:=Edit_mablag.Text;//@mablag float,
      DataM_sp.ADOStoredProc_entegale_vajh_az_sandog_be_sandog.Parameters[9].Value:=frm_main.l_last_op.Caption+' �� ���� '+Edit_mablag.Text ;//@amaliat nvarchar(1000)

     DataM_sp.ADOStoredProc_entegale_vajh_az_sandog_be_sandog.ExecProc;

     //frm_main.backup;

  if L_type.Caption<>'motefarege' then
  begin
     DBLookupComboBox1.Visible:=true;
     Label_sandog_magsad.Caption:=DBLookupComboBox1.Text;
     L_sandoge_motefaerge.Visible:=false;

    if DBLookupComboBox1.Text='' then
      Label_mojodi_magsad.Caption:='0'
    else
      Label_mojodi_magsad.Caption:=FloatToStr(Frm_gozaresh_az_sandog.mojodi_kol(Label_sandog_magsad.Caption));
  end
  else
  begin
  begin
     DBLookupComboBox1.Visible:=false;
     Label_sandog_magsad.Caption:=L_sandoge_motefaerge.Caption;
     L_sandoge_motefaerge.Visible:=true;

    if L_sandoge_motefaerge.Caption='' then
      Label_mojodi_magsad.Caption:='0'
    else
      Label_mojodi_magsad.Caption:=FloatToStr(Frm_gozaresh_az_sandog.mojodi_kol(L_sandoge_motefaerge.Caption));
  end
  end;



  if DBLookupComboBox3.Text='' then
    Label_mojodi_mabda.Caption:='0'
  else
    Label_mojodi_mabda.Caption:=FloatToStr(Frm_gozaresh_az_sandog.mojodi_kol(Label_sandog_mabda.Caption));



    MessageBox(Handle,pchar('������ ��� <<'+Edit_mablag.Text+' >> '+' �� ����� << '+y1+' >> �� ����� << '+y2+' >> ��� ��.'),'���� !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);

    Edit_mablag.Text:='';
    e_sh_fish.Clear;
  end;
///////////////////////
function TFrm_khorojha_az_sandog.check_mojodi_kol:boolean;
var x,y:real;
begin
  check_mojodi_kol:=true;
  if Frm_gozaresh_az_sandog.mojodi_kol(Label_sandog_mabda.Caption)>0 then
    y:=Frm_gozaresh_az_sandog.mojodi_kol(Label_sandog_mabda.Caption)
  else
    y:=0;
  if Edit_mablag.Text='' then
    x:=0
  else
     x:=strtofloat(Edit_mablag.Text);
  if x>y then
    begin
    check_mojodi_kol:=false;
     MessageBox(Handle,pchar('����� ��� ������� �� ������ �� ����� ����� << '+DBLookupComboBox3.text+' = '+FloatToStr(y)+' >> ����� �� ����.'),'���� !',MB_ok or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end;
end;
function TFrm_khorojha_az_sandog.tasavi_mabda_magsad:boolean;
begin
  tasavi_mabda_magsad:=true;
  if L_type_main.Caption='sandog' then
  begin
    if Label_sandog_mabda.Caption=Label_sandog_magsad.Caption then
    begin
      tasavi_mabda_magsad:=false;
      MessageBox(Handle,pchar('����� ����� � ����� ���� � �� �����.'),'���� !',MB_ok or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end;
  end;
end;
function TFrm_khorojha_az_sandog.check:boolean;
begin
  check:=true;
  if (DBLookupComboBox3.Text='')or(Edit_mablag.Text='')or(Edit_mablag.Text='0') or (E_tarikh.Text='')then
  begin
   check:=false;
   MessageBox(Handle,'���� ������ ��� ����� ����� � ����� ��� ������� � ����� �� ���� �����.','���� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end
  else
    begin
      if (L_type_main.Caption='sandog')then
      begin
        if Label_sandog_magsad.Caption='' then
        begin
          check:=false;
          MessageBox(Handle,'���� ������ ��� �����  ���� �� ������ ������.','���� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
        end
        else
        begin
         if MessageBox(Handle,pchar('������ ��� <<'+Edit_mablag.Text+' >> '+'�� ����� << '+DBLookupComboBox3.Text+' >> �� ����� << '+Label_sandog_magsad.Caption+' >> �� ����� �� �����Ͽ'),'���� !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING)=id_yes then
          begin
           //az_sandog_be_sandog_digar;
           execute_entegale_az_sandog_be_sandog_stored_procedure;
           Memo1.Clear;
           frm_eslah_forosh.waiting('����� ����� ������ !',5000);
          end
         else
          MessageBox(Handle,pchar('������ ������ ��� ���.'),'���� !',MB_ok or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
         Edit_mablag.Text:='';
        end;
      end;


      if (L_type_main.Caption='bank')then
      begin
        if (trim(e_sh_fish.Text)='')or(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString='') then
          MessageBox(Handle,'��� ���� ����� ���� � ����� ��� ���� ���� ���� ����','���� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
        else
        begin

         if MessageBox(Handle,pchar('������ ��� <<'+Edit_mablag.Text+' >> '+'�� ����� << '+DBLookupComboBox3.Text+' >>  �� ����� ���� <<'+Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString+' >> �� ����� �� �����Ͽ'),'���� !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING)=id_yes then
          begin
            Memo1.Text:=' ����� �� ���� '+Label_sandog_mabda.Caption+' '+Memo1.Text;
            az_sandog_be_sh_hesab;
            frm_eslah_forosh.waiting('����� ����� ������ !',5000);
         end
         else
          MessageBox(Handle,pchar('������ ������ ��� ���.'),'���� !',MB_ok or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);

        end;
      end;

    end;

end;
procedure TFrm_khorojha_az_sandog.type_;
begin
  if L_type_main.Caption='sandog' then
  begin
    GroupBox_sandog_magsad.Visible:=true;
    GroupBox_shomare_hesab.Visible:=false;
    e_sh_fish.Visible:=false;
    Label2.visible:=false;
  end;
  if L_type_main.Caption='bank' then
  begin
    GroupBox_sandog_magsad.Visible:=false;
    GroupBox_shomare_hesab.Visible:=true;
    e_sh_fish.Visible:=true;
    Label2.visible:=true;
  end;

end;
  procedure TFrm_khorojha_az_sandog.az_sandog_be_foroshande;
  begin
   {fghjgf}
  end;
  procedure TFrm_khorojha_az_sandog.az_sandog_be_sh_hesab;
  begin
  if Dmlistha.ADOQuery_shomare_hesabe_banki.RecordCount>0 then
  begin
    time_:=frm_main.LMDClock1.Digital.Caption;

    frm_add_bank1.sandog:=DBLookupComboBox3.Text;

    frm_add_bank1.E_bestankar.Text:=Edit_mablag.Text;

    frm_add_bank1.RadioGroup1.ItemIndex:=0;

    frm_add_bank1.sharh:=trim(Memo1.Text);

    frm_add_bank1.L_variz_az_sandog.Caption:='yes';

    frm_add_bank1.l_sh_hesab.Caption:=Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString;
    
    frm_add_bank1.e_sh_fish.Text:=e_sh_fish.Text;

    frm_add_bank1.tarikh:=E_tarikh.Text;

    frm_add_bank1.time_:=time_;
    
    frm_add_bank1.L_type2.Caption:='vorod_az_sandog';

   if not frm_add_bank1.check_exists then    //////////////////////////////////////////////////////////////////////////
   begin

    frm_add_bank1.Button1.Click;

    frm_main.l_last_op.Caption:=' ����� ��� �� ����� '+DBLookupComboBox3.Text+' �� ����� ���� '+Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString;
    frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' �� ���� '+Edit_mablag.Text);



    Label_mojodi_mabda.Caption:=FloatToStr(StrToFloat(Label_mojodi_mabda.Caption)-StrToFloat(Edit_mablag.Text));

    Edit_mablag.Text:='';
    e_sh_fish.Clear;
    Memo1.Clear;

    //MessageBox(Handle,pchar('������ ��� <<'+Edit_mablag.Text+' >> '+' �� ����� << '+DBLookupComboBox3.Text+' >>  �� ����� ���� <<'+Dmlistha.ADOQuery_shomare_hesabe_banki.Fields[0].AsString+' '+Dmlistha.ADOQuery_shomare_hesabe_banki.Fields[1].AsString+' >> ��� ��.'),'���� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   end
   else
    MessageBox(Handle,'�� / ��� �� ������ ����� ���� ���� ��� ��� ','��� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end
  else
    MessageBox(Handle,'����� ���� ���� ������ ���� ���� ��� �� �� ������ ���� ���.','��� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end;
  procedure TFrm_khorojha_az_sandog.az_sandog_be_moshtari;
  begin
    {ghjgh}
  end;

  procedure TFrm_khorojha_az_sandog.az_sandog_be_sandog_digar;
  var x,y1,y2:string;
  begin
    x:=Frm_login.Egettarikh.Text;
    y1:=DBLookupComboBox3.Text;
    y2:=DBLookupComboBox1.Text;
    DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='insert into T_vorod_khoroj_sandogha(time_,tozih,type,tarikh,mablag,sandog)'+
    'values('+QuotedStr(frm_main.LMDClock1.Digital.Caption)+','+QuotedStr('���� �� ����� '+y1)+','+QuotedStr('�����')+','+QuotedStr(x)+','+Edit_mablag.Text+
    ','+QuotedStr(y2)+')';
    DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.ExecSQL;
  


    DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='insert into T_vorod_khoroj_sandogha(time_,tozih,type,tarikh,mablag,sandog)'+
    'values('+QuotedStr(frm_main.LMDClock1.Digital.Caption)+','+QuotedStr('������ �� ����� '+y2)+','+QuotedStr('�����')+','+QuotedStr(x)+
    ','+Edit_mablag.Text+
    ','+QuotedStr(y1)+')';
    DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.ExecSQL;

    Label_mojodi_mabda.Caption:=FloatToStr(StrToFloat(Label_mojodi_mabda.Caption)-StrToFloat(Edit_mablag.Text));
    Label_mojodi_magsad.Caption:=FloatToStr(StrToFloat(Label_mojodi_magsad.Caption)+StrToFloat(Edit_mablag.Text));

    frm_main.l_last_op.Caption:=' ������ ��� �� ����� '+DBLookupComboBox3.Text+' �� ����� '+DBLookupComboBox1.Text;
    frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' �� ���� '+Edit_mablag.Text);

    MessageBox(Handle,pchar('������ ��� <<'+Edit_mablag.Text+' >> '+' �� ����� << '+y1+' >> �� ����� << '+y2+' >> ��� ��.'),'���� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);

    Edit_mablag.Text:='';
    e_sh_fish.Clear;
  end;

procedure TFrm_khorojha_az_sandog.FormShow(Sender: TObject);
begin

    DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name  where sandog<>'+
    QuotedStr('������ ������')+
    ' order by sandog';
    DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;



    DataModule_gozaresh_tarkibi.ADOQuery_sandog2.SQL.Text:='select * from T_sandog_name'+
    ' where sandog<>'+QuotedStr('������ ������')+
    ' order by sandog';
    DataModule_gozaresh_tarkibi.ADOQuery_sandog2.Open;

  type_;

  RadioGroup11.ItemIndex:=0;
  E_tarikh.Text:=Frm_login.Egettarikh.Text;  

  Memo1.Clear;



  DBLookupComboBox3.SetFocus;

  Label_sandog_mabda.Caption:=DBLookupComboBox3.Text;
  Label_mojodi_mabda.Caption:=FloatToStr(Frm_gozaresh_az_sandog.mojodi_kol(DBLookupComboBox3.Text));

  Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='select * from T_shomare_hesabe_banki  order by bank_shobe_sh_hesab';
  Dmlistha.ADOQuery_shomare_hesabe_banki.Open;

  if L_type.Caption<>'motefarege' then
  begin
     DBLookupComboBox1.Visible:=true;
     Label_sandog_magsad.Caption:=DBLookupComboBox1.Text;
     L_sandoge_motefaerge.Visible:=false;

    if DBLookupComboBox1.Text='' then
      Label_mojodi_magsad.Caption:='0'
    else
      Label_mojodi_magsad.Caption:=FloatToStr(Frm_gozaresh_az_sandog.mojodi_kol(Label_sandog_magsad.Caption));
  end
  else
  begin
  begin
     DBLookupComboBox1.Visible:=false;
     Label_sandog_magsad.Caption:=L_sandoge_motefaerge.Caption;
     L_sandoge_motefaerge.Visible:=true;

    if L_sandoge_motefaerge.Caption='' then
      Label_mojodi_magsad.Caption:='0'
    else
      Label_mojodi_magsad.Caption:=FloatToStr(Frm_gozaresh_az_sandog.mojodi_kol(L_sandoge_motefaerge.Caption));
  end
  end;
  

  if DBLookupComboBox3.Text='' then
    Label_mojodi_mabda.Caption:='0'
  else
    Label_mojodi_mabda.Caption:=FloatToStr(Frm_gozaresh_az_sandog.mojodi_kol(Label_sandog_mabda.Caption));



 Edit_mablag.Clear;
 e_sh_fish.Clear;

end;


procedure TFrm_khorojha_az_sandog.DBLookupComboBox3Click(Sender: TObject);
begin
  Label_sandog_mabda.Caption:=DBLookupComboBox3.Text;
  Label_mojodi_mabda.Caption:=FloatToStr(Frm_gozaresh_az_sandog.mojodi_kol(DBLookupComboBox3.Text));
  if DBLookupComboBox3.Text='' then
    Label_mojodi_mabda.Visible:=false
  else
    Label_mojodi_mabda.Visible:=true;
end;

procedure TFrm_khorojha_az_sandog.DBLookupComboBox1Click(Sender: TObject);
begin
  Label_sandog_magsad.Caption:=DBLookupComboBox1.Text;
  Label_mojodi_magsad.Caption:=FloatToStr(Frm_gozaresh_az_sandog.mojodi_kol(DBLookupComboBox1.Text));
  if DBLookupComboBox1.Text='' then
    Label_mojodi_magsad.Visible:=false
  else
    Label_mojodi_magsad.Visible:=true;
end;

procedure TFrm_khorojha_az_sandog.RadioGroup2Click(Sender: TObject);
begin
  type_;
end;

procedure TFrm_khorojha_az_sandog.Edit_mablagKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_khorojha_az_sandog.suiButton5Click(Sender: TObject);
begin
  close;
end;

procedure TFrm_khorojha_az_sandog.suiButton6Click(Sender: TObject);
begin

if DBLookupComboBox3.Text='' then
   MessageBox(Handle,pchar('����� ����� �� ������ ������'),'���!',MB_ok or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin
   if L_type.Caption='geyre_motefarege' then
   begin
    if (Label_sandog_mabda.Caption='������ ������')and(Label_sandog_magsad.Caption<>'������') then
    begin
      MessageBox(Handle,'��� ��� ���� ��� ���� ������ �� " ����� ������(����� ������ ��� �� ������� � ������� ���� ) " � ��� �� ����� �� " ����� ������ " ����� ����.','���!',MB_ok or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      exit;
    end;
   end;

  if tasavi_mabda_magsad then
   if check_mojodi_kol then
     check;
end;
end;

procedure TFrm_khorojha_az_sandog.e_sh_fishKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_khorojha_az_sandog.RadioGroup11Click(Sender: TObject);
begin
if RadioGroup11.ItemIndex=1 then
  Begin
    _taghvim.ShowModal;
    E_tarikh.Text:=_taghvim._str_date;
    if E_tarikh.Text='' then
      E_tarikh.Text:=Frm_login.Egettarikh.Text;
  end
  else
  E_tarikh.Text:=Frm_login.Egettarikh.Text;
end;

end.
