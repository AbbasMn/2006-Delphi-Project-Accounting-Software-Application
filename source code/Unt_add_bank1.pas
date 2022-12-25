unit Unt_add_bank1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm, DB, Grids, DBGrids, DBCtrls;

type
  Tfrm_add_bank1 = class(TForm)
    suiForm1: TsuiForm;
    Label4: TLabel;
    L_bed: TLabel;
    l_type: TLabel;
    L_edit: TLabel;
    L_bes: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    e_sh_fish: TEdit;
    e_bedehkar: TEdit;
    E_bestankar: TEdit;
    GroupBox5: TGroupBox;
    RadioGroup11: TRadioGroup;
    E_tarikh: TEdit;
    Memo1: TMemo;
    DBGrid3: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    Ed: TEdit;
    RadioGroup1: TRadioGroup;
    L_variz_az_sandog: TLabel;
    l_sh_hesab: TLabel;
    L_type2: TLabel;
    DataSource3: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    L_sandog: TLabel;
    procedure Button2Click(Sender: TObject);
    function check:boolean;
    procedure insert(ss:string);
    procedure RadioGroup11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure e_jariKeyPress(Sender: TObject; var Key: Char);
    procedure e_sh_fishKeyPress(Sender: TObject; var Key: Char);
    procedure e_bedehkarKeyPress(Sender: TObject; var Key: Char);
    procedure E_bestankarKeyPress(Sender: TObject; var Key: Char);
    procedure EdChange(Sender: TObject);
    procedure type_;
    procedure RadioGroup1Click(Sender: TObject);
    procedure find_place_for_jadid;
    procedure az_temp_bank_be_bank;
    function check_exists:boolean;

    procedure execute_morede_banki_backup_stored_procedure;
    procedure execute_delet_from_morede_banki_backup_stored_procedure;
    procedure Memo1Exit(Sender: TObject);

    function mablgae_mande_bank_ta_tarikh(bank,tarikh:string):real;

  private
    { Private declarations }
  public
    { Public declarations }
    sandog,sharh,tarikh,bank_shobe_sh_hesab:string;
    bank_sh:string;
    time_:string;
  end;

var
  frm_add_bank1: Tfrm_add_bank1;

implementation

uses unt_main, unt_DataM_final1, unt_DataM_forosh, Untdmlistha, Taghvim,
  unt_login, unt_moshkhasat_bank, unt_khoroj_az_sandog, unt_Dm_sp_backup,
  Unt_DataModule_gozaresh_tarkibi, unt_eslah_forosh;

  ///7000 to 4000
  ///9000 to 6000
  ///3000 to 1000
  ///5000 to 3000
  {$R *.dfm}

function Tfrm_add_bank1.mablgae_mande_bank_ta_tarikh(bank,tarikh:string):real;
begin
  DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
  QuotedStr(bank)+
  ' and tarikh<='+QuotedStr(tarikh)+' commit tran';
  DataM_forosh.ADOQ_mande_bank.Open;

  mablgae_mande_bank_ta_tarikh:=DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat;
end;

procedure Tfrm_add_bank1.execute_delet_from_morede_banki_backup_stored_procedure;
begin
  Dm_sp_backup.ADOStoredProc_delete_from_temp_morede_banki.ExecProc;
end;

procedure Tfrm_add_bank1.execute_morede_banki_backup_stored_procedure;
begin
  Dm_sp_backup.ADOStoredProc_from_morede_banki_to_temp_morede_banki.ExecProc;
end;

  ///////////////////////////////////////////////////////
function Tfrm_add_bank1.check_exists:boolean;
begin
  check_exists:=false;
  DataM_final1.ADOQ_bank2.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
  QuotedStr(l_sh_hesab.Caption)+' and sh_fish='+e_sh_fish.Text;
  DataM_final1.ADOQ_bank2.Open;

  if DataM_final1.ADOQ_bank2.RecordCount>0 then
    check_exists:=true;
end;

procedure Tfrm_add_bank1.az_temp_bank_be_bank;
var mande_bank,bedeh,bestan:real;
begin
          DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
          QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString)+' commit tran';
          DataM_forosh.ADOQ_mande_bank.Open;
          
          mande_bank:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;

   DataM_final1.ADOQ_temp_bank.First;          

    while not(DataM_final1.ADOQ_temp_bank.Eof)do
    begin
    bestan:=DataM_final1.ADOQ_temp_bankbestankar.Value;
    bedeh:=DataM_final1.ADOQ_temp_bankbedehkar.Value;

    mande_bank:=mande_bank+bestan-bedeh;

    DataM_final1.ADOQ_bank2.SQL.Text:='begin tran insert into t_bank1(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,khoroj_be_sandog,time_)values('+
    QuotedStr(DataM_final1.ADOQ_temp_bankmoshakhasat_kol.AsString)+
    ','+QuotedStr(DataM_final1.ADOQ_temp_banksh_fish.AsString)+','+
    QuotedStr(DataM_final1.ADOQ_temp_banksharh.AsString)+
    ','+DataM_final1.ADOQ_temp_bankbedehkar.AsString+','+DataM_final1.ADOQ_temp_bankbestankar.AsString+
    ','+FloatToStr(mande_bank)+

    ','+QuotedStr(DataM_final1.ADOQ_temp_banktarikh.AsString)+

    ','+QuotedStr(DataM_final1.ADOQ_temp_bankvorod_az_sandog.AsString)+
    ','+QuotedStr(DataM_final1.ADOQ_temp_bankkhoroj_be_sandog.AsString)+
    ','+QuotedStr(DataM_final1.ADOQ_temp_banktime_.AsString)+

    ')'+' commit tran';

     DataM_final1.ADOQ_bank2.ExecSQL;     
     DataM_final1.ADOQ_temp_bank.delete;
     //DataM_final1.ADOQ_temp_bank.next;
    end;

end;
procedure Tfrm_add_bank1.find_place_for_jadid;
var first_cod:real;
begin

 if (RadioGroup1.ItemIndex=0) then
 begin
    DataM_final1.ADOQ_bank2.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
    QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString)+
    ' and tarikh >'+QuotedStr(tarikh)+' order by tarikh,cod';
      DataM_final1.ADOQ_bank2.Open;
 end;
 if (RadioGroup1.ItemIndex=1) then
 begin
    DataM_final1.ADOQ_bank2.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
    QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString)+
    ' and tarikh >'+QuotedStr(tarikh)+' order by tarikh,cod';
    DataM_final1.ADOQ_bank2.Open;
 end;

    if DataM_final1.ADOQ_bank2.RecordCount >0 then
    begin
      DataM_final1.ADOQ_bank2.First;
      while not(DataM_final1.ADOQ_bank2.Eof)do
      begin
        DataM_final1.ADOQ_temp_bank.SQL.Text:='begin tran insert into t_temp_bank(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,khoroj_be_sandog,time_)values('+
        QuotedStr(DataM_final1.ADOQ_bank2moshakhasat_kol.AsString)+
        ','+QuotedStr(DataM_final1.ADOQ_bank2sh_fish.AsString)+','+
        QuotedStr(DataM_final1.ADOQ_bank2sharh.AsString)+
        ','+DataM_final1.ADOQ_bank2bedehkar.AsString+','+DataM_final1.ADOQ_bank2bestankar.AsString+
        ','+DataM_final1.ADOQ_bank2mande.AsString+
        ','+QuotedStr(DataM_final1.ADOQ_bank2tarikh.AsString)+

        ','+QuotedStr(DataM_final1.ADOQ_bank2vorod_az_sandog.AsString)+
        ','+QuotedStr(DataM_final1.ADOQ_bank2khoroj_be_sandog.AsString)  +
        ','+QuotedStr(DataM_final1.ADOQ_bank2time_.AsString)+
        ')'+' commit tran';
        DataM_final1.ADOQ_temp_bank.ExecSQL;

        DataM_final1.ADOQ_bank2.delete;

      end;
    end;

end;

procedure Tfrm_add_bank1.type_;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    L_bes.Visible:=true;
    L_bed.Visible:=false;
    E_bestankar.Visible:=true;
    e_bedehkar.Visible:=false;
    e_bedehkar.Text:='';
  end
  else
  begin
    L_bes.Visible:=false;
    L_bed.Visible:=true;
    E_bestankar.Visible:=false;
    e_bedehkar.Visible:=true;
    E_bestankar.Text:='';
  end;
end;

procedure Tfrm_add_bank1.insert(ss:string);
var s:string;
    pc:pchar;
    mande_kol:Real;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    e_bedehkar.Text:='0';
  end
  else
  begin
    E_bestankar.Text:='0';
  end;

  mande_kol:=mablgae_mande_bank_ta_tarikh(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString,tarikh);
  
  if (RadioGroup1.ItemIndex=1)then
  begin
    if mande_kol<StrToFloat(e_bedehkar.Text) then
    begin
      pc:=pchar('„»·€ Ê«—œ ‘œÂ »—«Ì »—œ«‘  «“ Õ”«» ° «“ „«‰œÂ Õ”«» << '+FloatToStr(mande_kol)+' >> œ—((  «—ÌŒ «‰ Œ«»Ì )) »Ì‘ — „Ì»«‘œ. ' );
      MessageBox(Handle,pc,'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      exit;
    end;

    if mande_kol<0 then
    begin
      pc:=pchar('„»·€ Ê«—œ ‘œÂ »—«Ì »—œ«‘  «“ Õ”«» ° «“ „«‰œÂ Õ”«» << '+FloatToStr(mande_kol)+' >> œ—((  «—ÌŒ «‰ Œ«»Ì )) »Ì‘ — „Ì»«‘œ. ' );
      MessageBox(Handle,pc,'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      exit;
    end;
  end;
///////////////////////////////////////////////////////////////////////////////////////////////////

  DataM_final1.ADOQ_bank2.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
  QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString);
  DataM_final1.ADOQ_bank2.Open;
  DataM_final1.ADOQ_bank2.Last;

/////////////////////////////////////// bestankr /////////////////////////////////

  if RadioGroup1.ItemIndex=0 then
  begin
    if L_type2.Caption='pass_kardane_check_kharidar' then
    begin

    end;



    if L_type2.Caption='vorod_az_sandog' then
    begin
      //sharh:=trim(Frm_khorojha_az_sandog.Memo1.Text);
      //sandog:=Frm_khorojha_az_sandog.DBLookupComboBox3.Text;
      bank_shobe_sh_hesab:=l_sh_hesab.Caption;
      //tarikh:=Frm_khorojha_az_sandog.E_tarikh.Text;
    end;

             
    if L_type2.Caption='variz_be_bank' then
    begin
      sharh:='Ê«—Ì“ „ ›—ﬁÂ'+' '+trim(Memo1.Text);
      sandog:='';
      bank_shobe_sh_hesab:=Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString;
      tarikh:=E_tarikh.Text;
      time_:='';
    end;

     if  (tarikh>=DataM_final1.ADOQ_bank2tarikh.AsString) then
     begin // compar with akhain tarikh
    ////// bestan & ezafe_be akhar /////////////
      DataM_forosh.ADOQ_bank2.SQL.Text:='begin tran insert into t_bank1(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,time_)values('+
      QuotedStr(bank_shobe_sh_hesab)+
      ','+QuotedStr(e_sh_fish.Text)+','+QuotedStr(sharh)+
      ','+e_bedehkar.Text+','+E_bestankar.Text+','+FloatToStr(mande_kol+StrToFloat(E_bestankar.Text))+
      ','+QuotedStr(tarikh)+','+QuotedStr(sandog)+','+QuotedStr(time_)+')';

      if  L_type2.Caption='vorod_az_sandog' then
      begin
        DataM_forosh.ADOQ_bank2.SQL.Text:=DataM_forosh.ADOQ_bank2.SQL.Text+'  insert into T_vorod_khoroj_sandogha(time_,tozih,type,tarikh,mablag,sandog)'+
        'values('+QuotedStr(time_)+','+
        QuotedStr(' Ê«—Ì“ »Â ‘„«—Â Õ”«» '+bank_shobe_sh_hesab)+','+QuotedStr('Œ—ÊÃÌ')+
        ','+QuotedStr(tarikh)+','+E_bestankar.Text+
        ','+QuotedStr(sandog)+')';
      end;

        DataM_forosh.ADOQ_bank2.SQL.Text:=DataM_forosh.ADOQ_bank2.SQL.Text+' commit tran';
        DataM_forosh.ADOQ_bank2.ExecSQL;

      MessageBox(Handle,'„Ê—œ »«‰òÌ ÃœÌœ Ê«—œ ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
      e_sh_fish.Text:='';
      e_bedehkar.Text:='';
      E_bestankar.Text:='';
      Memo1.Text:='';
      exit;

    ////// bestan & ezafe_be akhar /////////////
    end;

   if  tarikh<DataM_final1.ADOQ_bank2tarikh.AsString then// compar with akhain tarikh
    ////// bestan & ezafe_be vasat /////////////
    begin
      find_place_for_jadid;
      mande_kol:=mande_kol+StrToFloat(E_bestankar.Text);

      DataM_forosh.ADOQ_bank2.SQL.Text:='begin tran insert into t_bank1(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,time_)values('+
      QuotedStr(bank_shobe_sh_hesab)+
      ','+QuotedStr(e_sh_fish.Text)+','+QuotedStr(sharh)+
      ','+e_bedehkar.Text+','+E_bestankar.Text+','+FloatToStr(mande_kol)+
      ','+QuotedStr(tarikh)+','+QuotedStr(sandog)+','+QuotedStr(time_)+')';

      if  L_type2.Caption='vorod_az_sandog' then
      begin
        DataM_forosh.ADOQ_bank2.SQL.Text:=DataM_forosh.ADOQ_bank2.SQL.Text+'  insert into T_vorod_khoroj_sandogha(time_,tozih,type,tarikh,mablag,sandog)'+
        'values('+QuotedStr(time_)+','+QuotedStr(' Ê«—Ì“ »Â ‘„«—Â Õ”«» '+bank_shobe_sh_hesab)+','+QuotedStr('Œ—ÊÃÌ')+
        ','+QuotedStr(tarikh)+','+Frm_khorojha_az_sandog.Edit_mablag.Text+
        ','+QuotedStr(sandog)+')';
      end;
      DataM_forosh.ADOQ_bank2.SQL.Text:=DataM_forosh.ADOQ_bank2.SQL.Text+' commit tran';
      DataM_forosh.ADOQ_bank2.ExecSQL;

      DataM_final1.ADOQ_temp_bank.SQL.Text:='select * from t_temp_bank order by tarikh,cod';
      DataM_final1.ADOQ_temp_bank.Open;

      if DataM_final1.ADOQ_temp_bank.RecordCount >0 then

      az_temp_bank_be_bank;

      MessageBox(Handle,'„Ê—œ »«‰òÌ ÃœÌœ Ê«—œ ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);



      frm_main.l_last_op.Caption:=' À»  „Ê—œ »«‰òÌ ÃœÌœ »Â ‘„«—Â Õ”«» '+Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString+
      ' »Â ‘„«—Â ›Ì‘ '+e_sh_fish.Text;

      frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' »Â „»·€ '+E_bestankar.Text+' »” «‰ò«— ');

      e_sh_fish.Text:='';
      e_bedehkar.Text:='';
      E_bestankar.Text:='';
      Memo1.Text:='';

    end;
    ////// bestan & ezafe_be vasat ////////////



    {DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='insert into T_vorod_khoroj_sandogha(time_,tozih,type,tarikh,mablag,sandog)'+
    'values('+QuotedStr(Frm_khorojha_az_sandog.time_)+','+QuotedStr('Ê«—Ì“ »Â ‘„«—Â Õ”«» '+Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString)+','+QuotedStr('Œ—ÊÃÌ')+
    ','+QuotedStr(Frm_khorojha_az_sandog.x)+','+Frm_khorojha_az_sandog.Edit_mablag.Text+
    ','+QuotedStr(Frm_khorojha_az_sandog.DBLookupComboBox3.Text)+')';
    DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.ExecSQL;}

  end;







/////////////////////////////////////// bedehkar /////////////////////////////////
  if (RadioGroup1.ItemIndex=1)then
  begin

      if (L_type2.Caption='bardasht-be_sandog') then
       begin
          sandog:=DBLookupComboBox3.Text;
          time_:=frm_main.LMDClock1.Digital.Caption;
          sharh:=' Ê«—Ì“ »Â ’‰œÊﬁ '+sandog+' '+trim(Memo1.Text) ;
          tarikh:=E_tarikh.Text;
          bank_shobe_sh_hesab:=Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString;
       end;


      if (L_type2.Caption='pardakhte_check_kharid') then
       begin
          sandog:='';
       end;

      if L_type2.Caption='bardashte-motefarege_besandoge_bardasht' then
      begin
        sharh:='»—œ«‘  Ê«—Ì“ »Â ’‰œÊﬁ »—œ«‘  „ ›—ﬁÂ'+' '+trim(Memo1.Text);
        sandog:='»—œ«‘  „ ›—ﬁÂ';
        time_:=frm_main.LMDClock1.Digital.Caption;
        tarikh:=E_tarikh.Text;
        bank_shobe_sh_hesab:=Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString;
      end;




     if  (tarikh>=DataM_final1.ADOQ_bank2tarikh.AsString) then
     begin // compar with akhain tarikh
    ////// bedeh & ezafe_be akhar /////////////
        DataM_forosh.ADOQ_bank2.SQL.Text:='begin tran insert into t_bank1(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,khoroj_be_sandog,time_)values('+
        QuotedStr(bank_shobe_sh_hesab)+
        ','+QuotedStr(e_sh_fish.Text)+','+QuotedStr(trim(sharh))+
        ','+e_bedehkar.Text+','+E_bestankar.Text+','+FloatToStr(mande_kol-StrToFloat(e_bedehkar.Text))+
        ','+QuotedStr(tarikh)+','+QuotedStr(sandog)+','+QuotedStr(time_)+')';

        if sandog<>'' then
          begin
          DataM_forosh.ADOQ_bank2.SQL.Text:=DataM_forosh.ADOQ_bank2.SQL.Text+' insert into T_vorod_khoroj_sandogha(time_,tozih,type,tarikh,mablag,sandog)'+
          'values('+QuotedStr(time_)+','+QuotedStr(' Ê«—Ì“ «“ ‘„«—Â Õ”«» '+bank_shobe_sh_hesab+' '+trim(Memo1.Text))+
          ','+QuotedStr('Ê—ÊœÌ')+
          ','+QuotedStr(tarikh)+','+e_bedehkar.Text+
          ','+QuotedStr(sandog)+')';
        end;
        DataM_forosh.ADOQ_bank2.SQL.Text:=DataM_forosh.ADOQ_bank2.SQL.Text+' commit tran';
        DataM_forosh.ADOQ_bank2.ExecSQL;

       if (L_type2.Caption<>'pardakhte_check_kharid') then
        MessageBox(Handle,'„Ê—œ »«‰òÌ ÃœÌœ Ê«—œ ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
        
        e_sh_fish.Text:='';
        e_bedehkar.Text:='';
        E_bestankar.Text:='';
        Memo1.Text:='';
        exit;

    ////// bestan & ezafe_be akhar /////////////
    end;       




   if  (tarikh<DataM_final1.ADOQ_bank2tarikh.AsString) then// compar with akhain tarikh
    ////// bedeh & ezafe_be vasat /////////////
    begin
      find_place_for_jadid;

      mande_kol:=mande_kol-StrToFloat(e_bedehkar.Text);

      DataM_forosh.ADOQ_bank2.SQL.Text:='begin tran insert into t_bank1(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,time_)values('+
      QuotedStr(bank_shobe_sh_hesab)+
      ','+QuotedStr(e_sh_fish.Text)+','+QuotedStr(sharh)+
      ','+e_bedehkar.Text+','+E_bestankar.Text+','+FloatToStr(mande_kol)+
      ','+QuotedStr(tarikh)+','+QuotedStr(sandog)+','+QuotedStr(time_)+')';

      if sandog<>'' then
      begin
        DataM_forosh.ADOQ_bank2.SQL.Text:=DataM_forosh.ADOQ_bank2.SQL.Text+' insert into T_vorod_khoroj_sandogha(time_,tozih,type,tarikh,mablag,sandog)'+
        'values('+QuotedStr(time_)+','+QuotedStr('Ê«—Ì“ «“ ‘„«—Â Õ”«» '+bank_shobe_sh_hesab+' '+trim(Memo1.Text))+
        ','+QuotedStr('Ê—ÊœÌ')+
        ','+QuotedStr(tarikh)+','+e_bedehkar.Text+
        ','+QuotedStr(sandog)+')';
      end;
      DataM_forosh.ADOQ_bank2.SQL.Text:=DataM_forosh.ADOQ_bank2.SQL.Text+' commit tran';
      DataM_forosh.ADOQ_bank2.ExecSQL;


      DataM_final1.ADOQ_temp_bank.SQL.Text:='select * from t_temp_bank order by tarikh,cod';
      DataM_final1.ADOQ_temp_bank.Open;

      if DataM_final1.ADOQ_temp_bank.RecordCount >0 then
        az_temp_bank_be_bank;

      frm_main.l_last_op.Caption:=' À»  „Ê—œ »«‰òÌ ÃœÌœ »Â ‘„«—Â Õ”«» '+Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString+
      ' »Â ‘„«—Â ›Ì‘ '+e_sh_fish.Text;

      frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' »Â „»·€ '+e_bedehkar.Text+' »œÂò«— ');

      e_sh_fish.Text:='';
      e_bedehkar.Text:='';
      E_bestankar.Text:='';
      Memo1.Text:='';

      if (L_type2.Caption<>'pardakhte_check_kharid') then
        MessageBox(Handle,'„Ê—œ »«‰òÌ ÃœÌœ Ê«—œ ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
    end;
   end;

/////////////////////////////////////// bedehkar /////////////////////////////////
end;

function Tfrm_add_bank1.check:boolean;
begin
  check:=true;
  if e_sh_fish.Text='' then
    e_sh_fish.Text:='0';

  if L_type2.Caption='pass_kardane_check_kharidar' then
    bank_sh:=bank_shobe_sh_hesab;

  if L_type2.Caption='vorod_az_sandog' then
  begin
    bank_sh:=l_sh_hesab.Caption;
    //tarikh:=Frm_khorojha_az_sandog.E_tarikh.Text;
  end;

  if L_type2.Caption='variz_be_bank' then
  begin
    tarikh:=E_tarikh.Text;
    bank_sh:=Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString;
  end;

  if L_type2.Caption='bardasht-be_sandog' then
  begin
    tarikh:=E_tarikh.Text;
    bank_sh:=Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString;
  end;

  if L_type2.Caption='bardashte-motefarege_besandoge_bardasht' then
  begin
    tarikh:=E_tarikh.Text;
    bank_sh:=Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString;
  end;

  if (tarikh='')or(StrToFloat(e_sh_fish.Text)=0)or(bank_sh='')then
  begin
     check:=false;
     MessageBox(Handle,'›Ì·œÂ«Ì ” «—Â œ«— »«Ìœ Ê«—œ ‘Ê‰œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end
  else
  begin
    if (RadioGroup1.ItemIndex=0)and(E_bestankar.Text='') then
    begin
      check:=false;
      MessageBox(Handle,'›Ì·œÂ«Ì ” «—Â œ«— »«Ìœ Ê«—œ ‘Ê‰œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end;
    if (RadioGroup1.ItemIndex=1) then
    begin
      if (e_bedehkar.Text='') then
      begin
        check:=false;
        MessageBox(Handle,'›Ì·œÂ«Ì ” «—Â œ«— »«Ìœ Ê«—œ ‘Ê‰œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
        exit;
      end;
      if (L_type2.Caption='bardasht-be_sandog')and (DBLookupComboBox3.Text='') then
      begin
        check:=false;
        MessageBox(Handle,'’‰œÊﬁ »«Ìœ «‰ Œ«» ‘Êœ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
        exit;
      end;
    end;
  end;
end;

procedure Tfrm_add_bank1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_add_bank1.RadioGroup11Click(Sender: TObject);
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

procedure Tfrm_add_bank1.FormShow(Sender: TObject);
begin
    DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name ';

    if L_type2.Caption='bardasht-be_sandog' then
      DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:=DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text+' where sandog<>'+QuotedStr('»—œ«‘  „ ›—ﬁÂ');

    DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:=DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text+' order by sandog';
    DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;

  Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='select * from T_shomare_hesabe_banki order by bank_shobe_sh_hesab';
  Dmlistha.ADOQuery_shomare_hesabe_banki.Open;


  RadioGroup11.ItemIndex:=0;
  E_tarikh.Text:=Frm_login.Egettarikh.Text;
  e_sh_fish.Text:='';
  e_bedehkar.Text:='';
  E_bestankar.Text:='';
  Memo1.Text:='';
  RadioGroup1.ItemIndex:=0;

  if L_type2.Caption='variz_be_bank' then
  begin
    RadioGroup1.ItemIndex:=0;
    RadioGroup1.Enabled:=false;
    type_;
    DBLookupComboBox3.Visible:=false;
  end;

  if L_type2.Caption='bardashte-motefarege_besandoge_bardasht' then
  begin
    RadioGroup1.ItemIndex:=1;
    RadioGroup1.Enabled:=false;
    type_;
    DBLookupComboBox3.Visible:=false;
  end;

  if L_type2.Caption='bardasht-be_sandog' then
  begin
    RadioGroup1.ItemIndex:=1;
    RadioGroup1.Enabled:=false;
    type_;
  end;

  Ed.Clear;
  ed.SetFocus;
end;

procedure Tfrm_add_bank1.Button1Click(Sender: TObject);
begin
  If check then
  begin
   if not check_exists then
   begin

      DataM_final1.ADOQ_temp_bank.SQL.Text:='begin tran delete from t_temp_bank commit tran';
      DataM_final1.ADOQ_temp_bank.ExecSQL;

      execute_morede_banki_backup_stored_procedure;
      insert('add');
      execute_delet_from_morede_banki_backup_stored_procedure;
      frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',5000);
   end
   else
    MessageBox(Handle,'çò / ›Ì‘ »« ‘„«—Â Ê—ÊœÌ ﬁ»·¬ Ê«—œ ‘œÂ «”  ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end;
end;

procedure Tfrm_add_bank1.e_jariKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_bank1.e_sh_fishKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_bank1.e_bedehkarKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_bank1.E_bestankarKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_bank1.EdChange(Sender: TObject);
begin
 Dmlistha.ADOQuery_shomare_hesabe_banki.Locate('bank_shobe_sh_hesab',Ed.Text,[loPartialKey]);
end;

procedure Tfrm_add_bank1.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

procedure Tfrm_add_bank1.Memo1Exit(Sender: TObject);
begin
 {if L_type2.Caption='bardasht-be_sandog' then
  Memo1.Text:=' Ê«—Ì“ »Â ’‰œÊﬁ '+sandog+' '+Memo1.Text
 else
  Memo1.Text:='»—œ«‘  - „ ›—ﬁÂ '+' '+Memo1.Text; }
end;

end.
