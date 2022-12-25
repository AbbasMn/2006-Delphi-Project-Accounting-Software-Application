unit unt_frm_eslah_bank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm, Grids, DBGrids, DB, DBCtrls, ADODB;

type
  Tfrm_eslah_bank = class(TForm)
    suiForm1: TsuiForm;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    l_type: TLabel;
    L_edit: TLabel;
    GroupBox5: TGroupBox;
    e_sh_fish: TEdit;
    E_bestankar: TEdit;
    e_bedehkar: TEdit;
    Button2: TButton;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    G_tarikh: TGroupBox;
    RadioGroup2: TRadioGroup;
    E_tarikh: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    E_roz: TEdit;
    Label11: TLabel;
    E_mah: TEdit;
    Label12: TLabel;
    E_sal: TEdit;
    L_cod: TLabel;
    Button6: TButton;
    DBT_fish: TDBText;
    DBT_bede: TDBText;
    DBT_bestan: TDBText;
    dbt_sharh: TDBText;
    DBT_tarikh: TDBText;
    Button5: TButton;
    G_bank: TGroupBox;
    Label8: TLabel;
    esearch: TEdit;
    DBGrid3: TDBGrid;
    DataSource2: TDataSource;
    DBT_bank: TDBText;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    scsal: TDBLookupComboBox;
    DataSource3: TDataSource;
    L_tarikh: TLabel;
    L_cod2: TLabel;
    DBT_code: TDBText;
    DBT_bestankar: TDBText;
    DBT_bedehkar: TDBText;
    Label2: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    l_review: TLabel;
    procedure RadioGroup11Click(Sender: TObject);
    procedure type_;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    function check:boolean;
    procedure bank;
    procedure tarikh;
    procedure E_tarikhChange(Sender: TObject);
    procedure E_searchChange(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure delete;
    procedure e_bedehkarKeyPress(Sender: TObject; var Key: Char);
    procedure E_bestankarKeyPress(Sender: TObject; var Key: Char);
    procedure e_jariKeyPress(Sender: TObject; var Key: Char);
    procedure e_sh_fishKeyPress(Sender: TObject; var Key: Char);
    procedure E_rozKeyPress(Sender: TObject; var Key: Char);
    procedure E_mahKeyPress(Sender: TObject; var Key: Char);
    procedure E_salKeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure eslah_bank;
    procedure chang_bede_to_bede_tarikh_unchange;
    procedure chang_bestan_to_bestan_tarikh_unchange;
    procedure chang_bestan_to_bede_tarikh_unchange;
    procedure chang_bede_to_bestan_tarikh_unchange;

    function mablgae_mande_bank_bad_az_id(bank,id:string):real;
    function mablgae_mande_bank_gabl_az_id(bank,id:string):real;


  private
    { Private declarations }
  public
    { Public declarations }
    sandog,time_,tarikh_sandog,shomare_hesab,type_es:string;

  end;

var
  frm_eslah_bank: Tfrm_eslah_bank;

implementation

uses  Taghvim, unt_main,unt_DataM_final1, Unt_add_bank1, unt_DataM_final,
  unt_DataM_forosh, unt_datamodule1, Untdmlistha, unt_login,
  unt_moshkhasat_bank, Unt_DataModule_gozaresh_tarkibi,
  unt_gozaresh_az_sandog, unt_eslahe_kharid_checkha;

    ///7000 to 4000
    ///9000 to 6000
  {$R *.dfm}

function Tfrm_eslah_bank.mablgae_mande_bank_bad_az_id(bank,id:string):real;
begin
  DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
  QuotedStr(bank)+
  ' and cod>'+id+' commit tran';
  DataM_forosh.ADOQ_mande_bank.Open;

  mablgae_mande_bank_bad_az_id:=DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat;
end;

function Tfrm_eslah_bank.mablgae_mande_bank_gabl_az_id(bank,id:string):real;
begin
  DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
  QuotedStr(bank)+
  ' and cod <'+id+' commit tran';
  DataM_forosh.ADOQ_mande_bank.Open;

  mablgae_mande_bank_gabl_az_id:=DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat;
end;

procedure Tfrm_eslah_bank.chang_bestan_to_bede_tarikh_unchange;
var tarikh_,tarikh,sharh,sh_fish,sh_hesab:string;
    bedeh,bestan,mande_kol,first_cod:real;
    mande_bank:real; 
begin
    if (sandog<>'') then
    begin
      MessageBox(Handle,'»œ·Ì· «Ì‰òÂ „Ê—œ »«‰òÌ «‰ Œ«»Ì »« Ê—Êœ/Œ—ÊÃ „»·€ »Â ÌòÌ «“ ’‰œÊﬁÂ« À»  ê—œÌœÂ «”  ° ‰„Ì  Ê«‰Ìœ ‰Ê⁄ Ê—ÊœÌ/Œ—ÊÃÌ —«  €ÌÌ— œÂÌœ. „Ì Ê«‰Ìœ „Ê—œ »«‰òÌ —« Õ–› ‰„ÊœÂ Ê «“"«‰ ﬁ«· ÊÃÂ «“ ’‰œÊﬁ »Â »«‰ò"Ê Ì« «“ "«‰ ﬁ«· ÊÃÂ «“ »«‰ò »Â ’‰œÊﬁ" «” ›«œÂ ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      Exit;
    end;
 tarikh_:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);

   if CheckBox1.Checked then
    sh_hesab:=scsal.Text
   else
    sh_hesab:=DataM_final1.ADOQ_bank4moshakhasat_kol.AsString;

    sh_fish:=e_sh_fish.Text;
    sharh:=Memo1.Text;
    tarikh:=tarikh_;
    bedeh:=StrToFloat(e_bedehkar.Text);
    bestan:=StrToFloat(E_bestankar.Text);

    /////////////////////     1     ///////////////////////////////
    DataM_final1.ADOQ_bank3.SQL.Text:='begin tran delete from t_bank1  where cod='+L_cod2.Caption+' commit tran';
    DataM_final1.ADOQ_bank3.ExecSQL;

    /////////////////////     1     ///////////////////////////////

    /////////////////////     2     ///////////////////////////////

    
    DataM_final1.ADOQ_bank3.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
    QuotedStr(shomare_hesab)+
    ' and cod >'+L_cod2.Caption+' order by tarikh,cod';
    DataM_final1.ADOQ_bank3.Open;

          if DataM_final1.ADOQ_bank3.RecordCount >0 then
          begin
            DataM_final1.ADOQ_bank3.First;
            while not(DataM_final1.ADOQ_bank3.Eof)do
            begin
              DataM_final1.ADOQ_bank3.First;
              DataM_final1.ADOQ_temp_bank.SQL.Text:='begin tran insert into t_temp_bank(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,khoroj_be_sandog,time_)values('+
              QuotedStr(DataM_final1.ADOQ_bank3moshakhasat_kol.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_bank3sh_fish.AsString)+','+
              QuotedStr(DataM_final1.ADOQ_bank3sharh.AsString)+
              ','+DataM_final1.ADOQ_bank3bedehkar.AsString+','+DataM_final1.ADOQ_bank3bestankar.AsString+
              ','+DataM_final1.ADOQ_bank3mande.AsString+
              ','+QuotedStr(DataM_final1.ADOQ_bank3tarikh.AsString)+

              ','+QuotedStr(DataM_final1.ADOQ_bank3vorod_az_sandog.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_bank3khoroj_be_sandog.AsString)  +
              ','+QuotedStr(DataM_final1.ADOQ_bank3time_.AsString)+


        ')'+' commit tran';
              DataM_final1.ADOQ_temp_bank.ExecSQL;
              DataM_final1.ADOQ_bank3.Delete;
            end;
          end;
    /////////////////////     2     ///////////////////////////////


    /////////////////////     3    ///////////////////////////////

         DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
         QuotedStr(shomare_hesab)+' commit tran';
         DataM_forosh.ADOQ_mande_bank.Open;

         mande_bank:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;

    /////////////////////     3     ///////////////////////////////         

    /////////////////////     4     ///////////////////////////////
          DataM_final1.ADOQ_temp_bank.SQL.Text:='select * from t_temp_bank where tarikh='+
          QuotedStr(tarikh_)+'and bestankar > 0 order by tarikh,cod';
          DataM_final1.ADOQ_temp_bank.Open;

          if DataM_final1.ADOQ_temp_bank.RecordCount >0 then
          begin
            DataM_final1.ADOQ_temp_bank.First;
            while not(DataM_final1.ADOQ_temp_bank.Eof)do
            begin
              bestan:=DataM_final1.ADOQ_temp_bankbestankar.Value;
              bedeh:=DataM_final1.ADOQ_temp_bankbedehkar.Value;

              mande_bank:=mande_bank+bestan-bedeh;

              DataM_final1.ADOQ_bank3.SQL.Text:='begin tran insert into t_bank1(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,khoroj_be_sandog,time_)values('+
              QuotedStr(DataM_final1.ADOQ_temp_bankmoshakhasat_kol.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_banksh_fish.AsString)+','+
              QuotedStr(DataM_final1.ADOQ_temp_banksharh.AsString)+
              ','+DataM_final1.ADOQ_temp_bankbedehkar.AsString+','+DataM_final1.ADOQ_temp_bankbestankar.AsString+
              ','+FloatToStr(mande_bank)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_banktarikh.AsString)+

              ','+QuotedStr(DataM_final1.ADOQ_temp_bankvorod_az_sandog.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_bankkhoroj_be_sandog.AsString)  +
              ','+QuotedStr(DataM_final1.ADOQ_temp_banktime_.AsString)+

              ')'+' commit tran';

              DataM_final1.ADOQ_bank3.ExecSQL;

              DataM_final1.ADOQ_temp_bank.Delete;
            end;
           end;

           DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
           QuotedStr(shomare_hesab)+' commit tran';
           DataM_forosh.ADOQ_mande_bank.Open;
           mande_kol:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;

           ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
           
         DataM_final1.ADOQ_bank4.SQL.Text:='begin tran insert into t_bank1(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh)values('+
        QuotedStr(shomare_hesab)+
        ','+QuotedStr(e_sh_fish.Text)+','+QuotedStr(Memo1.Text)+
        ','+e_bedehkar.Text+','+E_bestankar.Text+','+FloatToStr(mande_kol-bedeh)+','+QuotedStr(E_tarikh.Text)+')'+' commit tran';
         DataM_final1.ADOQ_bank4.ExecSQL;

           ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////         


         DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
         QuotedStr(shomare_hesab)+' commit tran';
         DataM_forosh.ADOQ_mande_bank.Open;


         mande_bank:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;


          DataM_final1.ADOQ_temp_bank.SQL.Text:='select * from t_temp_bank  order by tarikh,cod';
          DataM_final1.ADOQ_temp_bank.Open;

          if DataM_final1.ADOQ_temp_bank.RecordCount >0 then
          begin
            DataM_final1.ADOQ_temp_bank.First;
            while not(DataM_final1.ADOQ_temp_bank.Eof)do
            begin

              bestan:=DataM_final1.ADOQ_temp_bankbestankar.Value;
              bedeh:=DataM_final1.ADOQ_temp_bankbedehkar.Value;

              mande_bank:=mande_bank+bestan-bedeh;

              DataM_final1.ADOQ_bank3.SQL.Text:='begin tran insert into t_bank1(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,khoroj_be_sandog,time_)values('+
              QuotedStr(DataM_final1.ADOQ_temp_bankmoshakhasat_kol.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_banksh_fish.AsString)+','+
              QuotedStr(DataM_final1.ADOQ_temp_banksharh.AsString)+
              ','+DataM_final1.ADOQ_temp_bankbedehkar.AsString+','+DataM_final1.ADOQ_temp_bankbestankar.AsString+
              ','+FloatToStr(mande_bank)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_banktarikh.AsString)+

              ','+QuotedStr(DataM_final1.ADOQ_temp_bankvorod_az_sandog.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_bankkhoroj_be_sandog.AsString)  +
              ','+QuotedStr(DataM_final1.ADOQ_temp_banktime_.AsString)+              

              ')'+' commit tran';

              DataM_final1.ADOQ_bank3.ExecSQL;
              DataM_final1.ADOQ_temp_bank.Delete;

            end;
          end;
    /////////////////////     4     ///////////////////////////////
        MessageBox(Handle,'„Ê—œ »«‰òÌ «‰ Œ«»Ì «’·«Õ ê—œÌœ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);    
end;

procedure Tfrm_eslah_bank.chang_bede_to_bestan_tarikh_unchange;
var tarikh_,tarikh,sharh,sh_fish,sh_hesab:string;
    bedeh,bestan,mande_kol,first_cod:real;
    mande_bank:real;  

begin
     if (sandog<>'') then
    begin
      MessageBox(Handle,'»œ·Ì· «Ì‰òÂ „Ê—œ »«‰òÌ «‰ Œ«»Ì »« Ê—Êœ/Œ—ÊÃ „»·€ »Â ÌòÌ «“ ’‰œÊﬁÂ« À»  ê—œÌœÂ «”  ° ‰„Ì  Ê«‰Ìœ ‰Ê⁄ Ê—ÊœÌ/Œ—ÊÃÌ —«  €ÌÌ— œÂÌœ. „Ì Ê«‰Ìœ „Ê—œ »«‰òÌ —« Õ–› ‰„ÊœÂ Ê «“"«‰ ﬁ«· ÊÃÂ «“ ’‰œÊﬁ »Â »«‰ò"Ê Ì« «“ "«‰ ﬁ«· ÊÃÂ «“ »«‰ò »Â ’‰œÊﬁ" «” ›«œÂ ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      Exit;
    end;

    tarikh_:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);

   if CheckBox1.Checked then
    sh_hesab:=scsal.Text
   else
    sh_hesab:=DataM_final1.ADOQ_bank4moshakhasat_kol.AsString;

    sh_fish:=e_sh_fish.Text;
    sharh:=Memo1.Text;
    tarikh:=tarikh_;
    bedeh:=StrToFloat(e_bedehkar.Text);
    bestan:=StrToFloat(E_bestankar.Text);

    /////////////////////     1     ///////////////////////////////
    DataM_final1.ADOQ_bank3.SQL.Text:='begin tran delete from t_bank1  where cod='+L_cod2.Caption+' commit tran';
    DataM_final1.ADOQ_bank3.ExecSQL;


    /////////////////////     1     ///////////////////////////////

    /////////////////////     2     ///////////////////////////////

    DataM_final1.ADOQ_bank2.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
    QuotedStr(shomare_hesab)+
    ' and bedehkar > 0  order by tarikh,cod';
    DataM_final1.ADOQ_bank2.Open;

    DataM_final1.ADOQ_bank2.First;

    DataM_final1.ADOQ_bank3.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
    QuotedStr(shomare_hesab)+
    ' and cod >='+DataM_final1.ADOQ_bank2cod.AsString+' order by tarikh,cod';
    DataM_final1.ADOQ_bank3.Open;

          if DataM_final1.ADOQ_bank3.RecordCount >0 then
          begin
            DataM_final1.ADOQ_bank3.First;
            while not(DataM_final1.ADOQ_bank3.Eof)do
            begin
              DataM_final1.ADOQ_bank3.First;
              DataM_final1.ADOQ_temp_bank.SQL.Text:='begin tran insert into t_temp_bank(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,khoroj_be_sandog,time_)values('+
              QuotedStr(DataM_final1.ADOQ_bank3moshakhasat_kol.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_bank3sh_fish.AsString)+','+
              QuotedStr(DataM_final1.ADOQ_bank3sharh.AsString)+
              ','+DataM_final1.ADOQ_bank3bedehkar.AsString+','+DataM_final1.ADOQ_bank3bestankar.AsString+
              ','+DataM_final1.ADOQ_bank3mande.AsString+
              ','+QuotedStr(DataM_final1.ADOQ_bank3tarikh.AsString)+

              ','+QuotedStr(DataM_final1.ADOQ_bank3vorod_az_sandog.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_bank3khoroj_be_sandog.AsString)  +
              ','+QuotedStr(DataM_final1.ADOQ_bank3time_.AsString)+



              ')'+' commit tran';
              DataM_final1.ADOQ_temp_bank.ExecSQL;
              DataM_final1.ADOQ_bank3.Delete;
            end;
          end;
    /////////////////////     2     ///////////////////////////////


    /////////////////////     3    ///////////////////////////////

         DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
         QuotedStr(shomare_hesab)+' commit tran';
         DataM_forosh.ADOQ_mande_bank.Open;
           
         mande_kol:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;

           ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        DataM_final1.ADOQ_bank4.SQL.Text:=' begin tran insert into t_bank1(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh)values('+
        QuotedStr(shomare_hesab)+
        ','+QuotedStr(e_sh_fish.Text)+','+QuotedStr(Memo1.Text)+
        ','+e_bedehkar.Text+','+E_bestankar.Text+','+FloatToStr(mande_kol+bestan)+','+QuotedStr(E_tarikh.Text)+')'+' commit tran';
         DataM_final1.ADOQ_bank4.ExecSQL;

           ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////         

    /////////////////////     3     ///////////////////////////////

    /////////////////////     4     ///////////////////////////////

      DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
      QuotedStr(shomare_hesab)+' commit tran';
      DataM_forosh.ADOQ_mande_bank.Open;
        
      mande_bank:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;
             
          DataM_final1.ADOQ_temp_bank.SQL.Text:='select * from t_temp_bank  order by tarikh,cod';
          DataM_final1.ADOQ_temp_bank.Open;

          if DataM_final1.ADOQ_temp_bank.RecordCount >0 then
          begin
            DataM_final1.ADOQ_temp_bank.First;
            while not(DataM_final1.ADOQ_temp_bank.Eof)do
            begin

              bestan:=DataM_final1.ADOQ_temp_bankbestankar.Value;
              bedeh:=DataM_final1.ADOQ_temp_bankbedehkar.Value;

              mande_bank:=mande_bank+bestan-bedeh;

              DataM_final1.ADOQ_bank3.SQL.Text:='begin tran insert into t_bank1(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,khoroj_be_sandog,time_)values('+
              QuotedStr(DataM_final1.ADOQ_temp_bankmoshakhasat_kol.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_banksh_fish.AsString)+','+
              QuotedStr(DataM_final1.ADOQ_temp_banksharh.AsString)+
              ','+DataM_final1.ADOQ_temp_bankbedehkar.AsString+','+DataM_final1.ADOQ_temp_bankbestankar.AsString+
              ','+FloatToStr(mande_bank)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_banktarikh.AsString)+

              ','+QuotedStr(DataM_final1.ADOQ_temp_bankvorod_az_sandog.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_bankkhoroj_be_sandog.AsString)  +
              ','+QuotedStr(DataM_final1.ADOQ_temp_banktime_.AsString)+


              ')'+' commit tran';

              DataM_final1.ADOQ_bank3.ExecSQL;

              DataM_final1.ADOQ_temp_bank.Delete;
              DataM_final1.ADOQ_temp_bank.First;
            end;

      end;
    /////////////////////     4     ///////////////////////////////
    MessageBox(Handle,'„Ê—œ »«‰òÌ «‰ Œ«»Ì «’·«Õ ê—œÌœ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;


///////////////////////////////////////////////////////
procedure Tfrm_eslah_bank.chang_bestan_to_bestan_tarikh_unchange;
var tarikh_,tarikh,sharh,sh_fish,sh_hesab:string;
    bedeh,bestan,mande_kol,first_cod,mojodi,mande_bank:real;

begin
   if sandog<>'' then
   begin
      mojodi:=Frm_gozaresh_az_sandog.mojodi_kol(sandog);

     if StrToFloat(E_bestankar.Text)>DataM_final1.ADOQ_bank4bestankar.AsFloat then
     begin
      if  (StrToFloat(E_bestankar.Text)-DataM_final1.ADOQ_bank4bestankar.AsFloat)>mojodi then
      begin
        MessageBox(Handle,pchar('„»·€ «÷«›Â ‘Ê‰œÂ »Â „»·€ ›⁄·Ì «“ „ÊÃÊœÌ ’‰œÊﬁ << '+sandog+' = '+FloatToStr(mojodi)+' >> »Ì‘ — „Ì»«‘œ (Ê—Êœ „»·€ «“ ’‰œÊﬁ „–òÊ—).'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
        exit;
      end;
     end;
   end;

    tarikh_:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);

   if CheckBox1.Checked then
    sh_hesab:=scsal.Text
   else
    sh_hesab:=DataM_final1.ADOQ_bank4moshakhasat_kol.AsString;

    sh_fish:=e_sh_fish.Text;
    sharh:=Memo1.Text;
    tarikh:=tarikh_;
    bedeh:=StrToFloat(e_bedehkar.Text);
    bestan:=StrToFloat(E_bestankar.Text);

         DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
         QuotedStr(shomare_hesab)+' and cod < '+L_cod2.Caption+' commit tran';
         DataM_forosh.ADOQ_mande_bank.Open;


          DataM_final1.ADOQ_bank3.SQL.Text:='begin tran update t_bank1 set sh_fish='+
          QuotedStr(e_sh_fish.Text)+',bestankar='+FloatToStr(bestan)+
          ',sharh='+QuotedStr(sharh)+
          ',mande='+FloatToStr(bestan+DataM_forosh.ADOQ_mande_bankmande_kol.Value)+
          //',moshakhasat_kol='+QuotedStr(sh_hesab)+
          ' where cod='+L_cod2.Caption;

          if sandog<>'' then
          begin
            DataM_final1.ADOQ_bank3.SQL.Text:=DataM_final1.ADOQ_bank3.SQL.Text+' update T_vorod_khoroj_sandogha '+
            ' set tarikh='+QuotedStr(tarikh_sandog)+',mablag='+FloatToStr(bestan)+
            ' where sandog='+QuotedStr(sandog)+' and tarikh='+QuotedStr(tarikh_sandog)+
            ' and time_='+QuotedStr(time_);
          end;
          DataM_final1.ADOQ_bank3.SQL.Text:=DataM_final1.ADOQ_bank3.SQL.Text+' commit tran';
          DataM_final1.ADOQ_bank3.ExecSQL;


          DataM_final1.ADOQ_bank3.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
          QuotedStr(shomare_hesab)+' and cod >'+L_cod2.Caption+
          ' order by tarikh,cod';
          DataM_final1.ADOQ_bank3.Open;

          if DataM_final1.ADOQ_bank3.RecordCount >0 then
          begin
            DataM_final1.ADOQ_bank3.First;
            while not(DataM_final1.ADOQ_bank3.Eof)do
            begin
              DataM_final1.ADOQ_bank3.First;
              DataM_final1.ADOQ_temp_bank.SQL.Text:='begin tran insert into t_temp_bank(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,khoroj_be_sandog,time_)values('+
              QuotedStr(DataM_final1.ADOQ_bank3moshakhasat_kol.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_bank3sh_fish.AsString)+','+
              QuotedStr(DataM_final1.ADOQ_bank3sharh.AsString)+
              ','+DataM_final1.ADOQ_bank3bedehkar.AsString+','+DataM_final1.ADOQ_bank3bestankar.AsString+
              ','+DataM_final1.ADOQ_bank3mande.AsString+
              ','+QuotedStr(DataM_final1.ADOQ_bank3tarikh.AsString)+

              ','+QuotedStr(DataM_final1.ADOQ_bank3vorod_az_sandog.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_bank3khoroj_be_sandog.AsString)  +
              ','+QuotedStr(DataM_final1.ADOQ_bank3time_.AsString)+

              ')'+' commit tran';
              DataM_final1.ADOQ_temp_bank.ExecSQL;
              DataM_final1.ADOQ_bank3.Delete;
            end;

          end;

         DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
         QuotedStr(shomare_hesab)+' commit tran';
         DataM_forosh.ADOQ_mande_bank.Open;


         mande_bank:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;


          DataM_final1.ADOQ_temp_bank.SQL.Text:='select * from t_temp_bank  order by tarikh,cod';
          DataM_final1.ADOQ_temp_bank.Open;

          if DataM_final1.ADOQ_temp_bank.RecordCount >0 then
          begin
            DataM_final1.ADOQ_temp_bank.First;
            while not(DataM_final1.ADOQ_temp_bank.Eof)do
            begin
             bestan:=DataM_final1.ADOQ_temp_bankbestankar.Value;
              bedeh:=DataM_final1.ADOQ_temp_bankbedehkar.Value;

              mande_bank:=mande_bank+bestan-bedeh;

              DataM_final1.ADOQ_bank3.SQL.Text:='begin tran insert into t_bank1(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,khoroj_be_sandog,time_)values('+
              QuotedStr(DataM_final1.ADOQ_temp_bankmoshakhasat_kol.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_banksh_fish.AsString)+','+
              QuotedStr(DataM_final1.ADOQ_temp_banksharh.AsString)+
              ','+DataM_final1.ADOQ_temp_bankbedehkar.AsString+','+DataM_final1.ADOQ_temp_bankbestankar.AsString+
              ','+FloatToStr(mande_bank)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_banktarikh.AsString)+

              ','+QuotedStr(DataM_final1.ADOQ_temp_bankvorod_az_sandog.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_bankkhoroj_be_sandog.AsString)  +
              ','+QuotedStr(DataM_final1.ADOQ_temp_banktime_.AsString)+            
              ')'+' commit tran';

              DataM_final1.ADOQ_bank3.ExecSQL;

              DataM_final1.ADOQ_temp_bank.Delete;

            end;

      end;/// bestan >>>> bestan

        MessageBox(Handle,'„Ê—œ »«‰òÌ «‰ Œ«»Ì «’·«Õ ê—œÌœ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);      
end;
procedure Tfrm_eslah_bank.chang_bede_to_bede_tarikh_unchange;
var tarikh_,tarikh,sharh,sh_fish,sh_hesab:string;
    bedeh,bestan,mande_kol,first_cod,mande_bank:real;
begin

    if type_es='eslah' then
      tarikh_:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);

    if type_es='eslah_az_eslahe_check_kharid' then
      tarikh_:=frm_eslahe_kharid_checkha.tarikh_vase_eslah;
    

   {if CheckBox1.Checked then
    sh_hesab:=scsal.Text
   else
    sh_hesab:=DataM_final1.ADOQ_bank4moshakhasat_kol.AsString;}

    sh_fish:=e_sh_fish.Text;
    sharh:=Memo1.Text;
    tarikh:=tarikh_;
    bedeh:=StrToFloat(e_bedehkar.Text);
    bestan:=StrToFloat(E_bestankar.Text);

      DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
         QuotedStr(shomare_hesab)+' and cod < '+L_cod2.Caption+' commit tran';
         DataM_forosh.ADOQ_mande_bank.Open;


          DataM_final1.ADOQ_bank3.SQL.Text:=' begin tran  update t_bank1 set sh_fish='+
          QuotedStr(e_sh_fish.Text)+',bedehkar='+FloatToStr(bedeh)+
          ',sharh='+QuotedStr(sharh)+',mande='+FloatToStr(DataM_forosh.ADOQ_mande_bankmande_kol.Value-bedeh);

          DataM_final1.ADOQ_bank3.SQL.Text:=DataM_final1.ADOQ_bank3.SQL.Text+' where cod='+L_cod2.Caption;

         { if type_es='eslah_az_eslahe_check_kharid' then
          begin
            DataM_final1.ADOQ_bank3.SQL.Text:=DataM_final1.ADOQ_bank3.SQL.Text+' where moshakhasat_kol='+
            QuotedStr(shomare_hesab)+' and sh_fish='+e_sh_fish.Text+' and tarikh='+QuotedStr(tarikh_);
          end; }

          if sandog<>'' then
          begin
            DataM_final1.ADOQ_bank3.SQL.Text:=DataM_final1.ADOQ_bank3.SQL.Text+' update T_vorod_khoroj_sandogha '+
            ' set tarikh='+QuotedStr(tarikh_sandog)+',mablag='+FloatToStr(bedeh)+
            ' where sandog='+QuotedStr(sandog)+' and tarikh='+QuotedStr(tarikh_sandog)+
            ' and time_='+QuotedStr(time_);
          end;
           DataM_final1.ADOQ_bank3.SQL.Text:=DataM_final1.ADOQ_bank3.SQL.Text+' commit tran';
           DataM_final1.ADOQ_bank3.ExecSQL;




            DataM_final1.ADOQ_bank3.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
            QuotedStr(shomare_hesab)+' and cod >'+L_cod2.Caption+
            ' order by tarikh,cod';
            DataM_final1.ADOQ_bank3.Open;


          if DataM_final1.ADOQ_bank3.RecordCount >0 then
          begin
            DataM_final1.ADOQ_bank3.First;
            while not(DataM_final1.ADOQ_bank3.Eof)do
            begin
              DataM_final1.ADOQ_bank3.First;
              DataM_final1.ADOQ_temp_bank.SQL.Text:='begin tran insert into t_temp_bank(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,khoroj_be_sandog,time_)values('+
              QuotedStr(DataM_final1.ADOQ_bank3moshakhasat_kol.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_bank3sh_fish.AsString)+','+
              QuotedStr(DataM_final1.ADOQ_bank3sharh.AsString)+
              ','+DataM_final1.ADOQ_bank3bedehkar.AsString+','+DataM_final1.ADOQ_bank3bestankar.AsString+
              ','+DataM_final1.ADOQ_bank3mande.AsString+
              ','+QuotedStr(DataM_final1.ADOQ_bank3tarikh.AsString)+

              ','+QuotedStr(DataM_final1.ADOQ_bank3vorod_az_sandog.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_bank3khoroj_be_sandog.AsString)  +
              ','+QuotedStr(DataM_final1.ADOQ_bank3time_.AsString)+

              ')'+' commit tran';
              DataM_final1.ADOQ_temp_bank.ExecSQL;
              DataM_final1.ADOQ_bank3.Delete;
            end;

          end;

         DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
         QuotedStr(shomare_hesab)+' commit tran';
         DataM_forosh.ADOQ_mande_bank.Open;

         mande_bank:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;


          DataM_final1.ADOQ_temp_bank.SQL.Text:='select * from t_temp_bank  order by tarikh,cod';
          DataM_final1.ADOQ_temp_bank.Open;

          if DataM_final1.ADOQ_temp_bank.RecordCount >0 then
          begin
            DataM_final1.ADOQ_temp_bank.First;
            while not(DataM_final1.ADOQ_temp_bank.Eof)do
            begin
              bestan:=DataM_final1.ADOQ_temp_bankbestankar.Value;
              bedeh:=DataM_final1.ADOQ_temp_bankbedehkar.Value;

              mande_bank:=mande_bank+bestan-bedeh;

              DataM_final1.ADOQ_bank3.SQL.Text:='begin tran insert into t_bank1(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,khoroj_be_sandog,time_)values('+
              QuotedStr(DataM_final1.ADOQ_temp_bankmoshakhasat_kol.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_banksh_fish.AsString)+','+
              QuotedStr(DataM_final1.ADOQ_temp_banksharh.AsString)+
              ','+DataM_final1.ADOQ_temp_bankbedehkar.AsString+','+DataM_final1.ADOQ_temp_bankbestankar.AsString+
              ','+FloatToStr(mande_bank)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_banktarikh.AsString)+


              ','+QuotedStr(DataM_final1.ADOQ_temp_bankvorod_az_sandog.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_bankkhoroj_be_sandog.AsString)  +
              ','+QuotedStr(DataM_final1.ADOQ_temp_banktime_.AsString)+               

              ')'+' commit tran';

              DataM_final1.ADOQ_bank3.ExecSQL;
              DataM_final1.ADOQ_temp_bank.Delete;

            end;

      end;// bedeh >>>> bedeh
      if type_es='eslah' then
        MessageBox(Handle,'„Ê—œ »«‰òÌ «‰ Œ«»Ì «’·«Õ ê—œÌœ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);      
end;
//////////////////////////////////////////////////////
procedure Tfrm_eslah_bank.delete;
var tarikh_,tarikh,sharh,sh_fish,sh_hesab:string;
    bedeh,bestan,mande_kol,first_cod:real;
    mande_bank:real;

begin

   if (type_es='eslah') then
    L_cod.Caption:=DataM_final1.ADOQ_bank4cod.AsString;

    L_cod2.Caption:=L_cod.Caption;

    DataM_final1.ADOQ_bank3.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
    QuotedStr(shomare_hesab)+' order by tarikh,cod';

    DataM_final1.ADOQ_bank3.Open;
    DataM_final1.ADOQ_bank3.Last;


    //////////////////// hazf az akhar ////////////////////
    if (L_cod.Caption=DataM_final1.ADOQ_bank3cod.AsString) then
    begin
      DataM_final1.ADOQ_bank3.SQL.Text:='begin tran delete from t_bank1 where cod='+L_cod2.Caption;

      if sandog<>'' then
      begin
         DataM_final1.ADOQ_bank3.SQL.Text:=DataM_final1.ADOQ_bank3.SQL.Text+' delete from T_vorod_khoroj_sandogha '+
         ' where sandog='+QuotedStr(sandog)+' and tarikh='+QuotedStr(tarikh_sandog)+
         ' and time_='+QuotedStr(time_);
      end;
        DataM_final1.ADOQ_bank3.SQL.Text:=DataM_final1.ADOQ_bank3.SQL.Text+'  commit tran';
        DataM_final1.ADOQ_bank3.ExecSQL;



    
    if type_es='eslah' then
      MessageBox(Handle,'„Ê—œ »«‰òÌ «‰ Œ«»Ì Õ–› ê—œÌœ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);

  if (DataM_final1.ADOQ_bank4.RecordCount>0)and(type_es='eslah') then
  begin
    E_roz.Text:=DataM_final1.ADOQ_bank4tarikh.AsString[9]+DataM_final1.ADOQ_bank4tarikh.AsString[10];
    E_mah.Text:=DataM_final1.ADOQ_bank4tarikh.AsString[6]+DataM_final1.ADOQ_bank4tarikh.AsString[7];
    E_sal.Text:=DataM_final1.ADOQ_bank4tarikh.AsString[1]+DataM_final1.ADOQ_bank4tarikh.AsString[2]+DataM_final1.ADOQ_bank4tarikh.AsString[3]+DataM_final1.ADOQ_bank4tarikh.AsString[4];
    L_cod.Caption:=DataM_final1.ADOQ_bank4cod.AsString;
    e_sh_fish.Text:=DataM_final1.ADOQ_bank4sh_fish.AsString;
    e_bedehkar.Text:=DataM_final1.ADOQ_bank4bedehkar.AsString;
    E_bestankar.Text:=DataM_final1.ADOQ_bank4bestankar.AsString;
    Memo1.Text:=DataM_final1.ADOQ_bank4sharh.AsString;
    L_tarikh.Caption:=DataM_final1.ADOQ_bank4tarikh.AsString;
  end;
  if (DataM_final1.ADOQ_bank4.RecordCount=0)and(type_es='eslah')  then
  begin
    E_roz.Text:='';
    E_mah.Text:='';
    E_sal.Text:='';
    L_cod.Caption:='';
    e_sh_fish.Text:='';
    e_bedehkar.Text:='';
    E_bestankar.Text:='';
    Memo1.Text:='';
    L_tarikh.Caption:='';
  end;
end

    //////////////////// hazf az akhar ////////////////////


        
    else
    begin

    //////////////////// hazf az vasat ////////////////////      
      DataM_final1.ADOQ_bank3.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
      QuotedStr(shomare_hesab)+
      ' and cod >'+L_cod2.Caption+' order by tarikh,cod';

      DataM_final1.ADOQ_bank3.Open;

      if DataM_final1.ADOQ_bank3.RecordCount >0 then
      begin
        DataM_final1.ADOQ_bank3.First;
        while not(DataM_final1.ADOQ_bank3.Eof)do
        begin
         DataM_final1.ADOQ_temp_bank.SQL.Text:='begin tran insert into t_temp_bank(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,khoroj_be_sandog,time_)values('+
         QuotedStr(DataM_final1.ADOQ_bank3moshakhasat_kol.AsString)+
          ','+QuotedStr(DataM_final1.ADOQ_bank3sh_fish.AsString)+','+
         QuotedStr(DataM_final1.ADOQ_bank3sharh.AsString)+
         ','+DataM_final1.ADOQ_bank3bedehkar.AsString+','+DataM_final1.ADOQ_bank3bestankar.AsString+
          ','+DataM_final1.ADOQ_bank3mande.AsString+
          ','+QuotedStr(DataM_final1.ADOQ_bank3tarikh.AsString)+

              ','+QuotedStr(DataM_final1.ADOQ_bank3vorod_az_sandog.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_bank3khoroj_be_sandog.AsString)  +
              ','+QuotedStr(DataM_final1.ADOQ_bank3time_.AsString)+

          ')'+' commit tran';
         DataM_final1.ADOQ_temp_bank.ExecSQL;
         DataM_final1.ADOQ_bank3.Delete;
        end;

      end;

      DataM_final1.ADOQ_bank3.SQL.Text:='begin tran delete from t_bank1 where cod ='+L_cod2.Caption;

      if sandog<>'' then
      begin
         DataM_final1.ADOQ_bank3.SQL.Text:=DataM_final1.ADOQ_bank3.SQL.Text+' delete from T_vorod_khoroj_sandogha '+
         ' where sandog='+QuotedStr(sandog)+' and tarikh='+QuotedStr(tarikh_sandog)+
         ' and time_='+QuotedStr(time_);
      end ;

      DataM_final1.ADOQ_bank3.SQL.Text:=DataM_final1.ADOQ_bank3.SQL.Text+' commit tran';
      DataM_final1.ADOQ_bank3.ExecSQL;

   ///////////////////////////////////////////////////
     
      DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
      QuotedStr(shomare_hesab)+' commit tran';
      DataM_forosh.ADOQ_mande_bank.Open;
        
      mande_bank:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;


      DataM_final1.ADOQ_temp_bank.SQL.Text:='select * from t_temp_bank  order by tarikh';
      DataM_final1.ADOQ_temp_bank.Open;

      if DataM_final1.ADOQ_temp_bank.RecordCount >0 then
      begin
        DataM_final1.ADOQ_temp_bank.First;
        while not(DataM_final1.ADOQ_temp_bank.Eof)do
        begin
          bestan:=DataM_final1.ADOQ_temp_bankbestankar.Value;
          bedeh:=DataM_final1.ADOQ_temp_bankbedehkar.Value;

          mande_bank:=mande_bank+bestan-bedeh;

          DataM_final1.ADOQ_bank3.SQL.Text:='begin tran insert into t_bank1(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh,vorod_az_sandog,khoroj_be_sandog,time_)values('+
          QuotedStr(DataM_final1.ADOQ_temp_bankmoshakhasat_kol.AsString)+
          ','+QuotedStr(DataM_final1.ADOQ_temp_banksh_fish.AsString)+','+
          QuotedStr(DataM_final1.ADOQ_temp_banksharh.AsString)+
          ','+DataM_final1.ADOQ_temp_bankbedehkar.AsString+','+DataM_final1.ADOQ_temp_bankbestankar.AsString+
          ','+FloatToStr(mande_bank)+
          ','+QuotedStr(DataM_final1.ADOQ_temp_banktarikh.AsString)+

              ','+QuotedStr(DataM_final1.ADOQ_temp_bankvorod_az_sandog.AsString)+
              ','+QuotedStr(DataM_final1.ADOQ_temp_bankkhoroj_be_sandog.AsString)  +
              ','+QuotedStr(DataM_final1.ADOQ_temp_banktime_.AsString)+ 

          ')'+' commit tran';

          DataM_final1.ADOQ_bank3.ExecSQL;


          DataM_final1.ADOQ_temp_bank.Delete;

        end;
      if type_es='eslah' then
        MessageBox(Handle,'„Ê—œ »«‰òÌ «‰ Œ«»Ì Õ–› ê—œÌœ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);

  if (DataM_final1.ADOQ_bank4.RecordCount>0)and(type_es='eslah') then
  begin
    E_roz.Text:=DataM_final1.ADOQ_bank4tarikh.AsString[9]+DataM_final1.ADOQ_bank4tarikh.AsString[10];
    E_mah.Text:=DataM_final1.ADOQ_bank4tarikh.AsString[6]+DataM_final1.ADOQ_bank4tarikh.AsString[7];
    E_sal.Text:=DataM_final1.ADOQ_bank4tarikh.AsString[1]+DataM_final1.ADOQ_bank4tarikh.AsString[2]+DataM_final1.ADOQ_bank4tarikh.AsString[3]+DataM_final1.ADOQ_bank4tarikh.AsString[4];
    L_cod.Caption:=DataM_final1.ADOQ_bank4cod.AsString;
    e_sh_fish.Text:=DataM_final1.ADOQ_bank4sh_fish.AsString;
    e_bedehkar.Text:=DataM_final1.ADOQ_bank4bedehkar.AsString;
    E_bestankar.Text:=DataM_final1.ADOQ_bank4bestankar.AsString;
    Memo1.Text:=DataM_final1.ADOQ_bank4sharh.AsString;
    L_tarikh.Caption:=DataM_final1.ADOQ_bank4tarikh.AsString;
  end;
  if (DataM_final1.ADOQ_bank4.RecordCount=0)and(type_es='eslah') then
  begin
    E_roz.Text:='';
    E_mah.Text:='';
    E_sal.Text:='';
    L_cod.Caption:='';
    e_sh_fish.Text:='';
    e_bedehkar.Text:='';
    E_bestankar.Text:='';
    Memo1.Text:='';
    L_tarikh.Caption:='';
  end;        
      end;
    //////////////////// hazf az vasat ////////////////////

    end;
    type_;
end;


procedure Tfrm_eslah_bank.eslah_bank;
var tarikh_,tarikh,sharh,sh_fish,sh_hesab:string;
    bedeh,bestan,mande_kol,first_cod:real;
begin
    if type_es='eslah' then
      tarikh_:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);

    if type_es='eslah_az_eslahe_check_kharid' then
      tarikh_:=frm_eslahe_kharid_checkha.tarikh_vase_eslah;

   if CheckBox1.Checked then
    sh_hesab:=scsal.Text
   else
    sh_hesab:=DataM_final1.ADOQ_bank4moshakhasat_kol.AsString;

    sh_fish:=e_sh_fish.Text;
    sharh:=Memo1.Text;
    tarikh:=tarikh_;
    bedeh:=StrToFloat(e_bedehkar.Text);
    bestan:=StrToFloat(E_bestankar.Text);

    
    if (bedeh > 0)and(type_es<>'eslah')  then 
    begin
      chang_bede_to_bede_tarikh_unchange;
      exit;
    end;

    if (tarikh_=DBT_tarikh.Caption)and(type_es='eslah') then //tarikh unchange
    begin

    if (bestan > 0) and (DataM_final1.ADOQ_bank4bedehkar.AsFloat>0)and(type_es='eslah') then /// bestan >>>> bestan
        begin
          chang_bede_to_bestan_tarikh_unchange;
        end;
        if (bedeh > 0) and (DataM_final1.ADOQ_bank4bestankar.AsFloat>0)and(type_es='eslah') then /// bestan >>>> bestan
        begin
          chang_bestan_to_bede_tarikh_unchange;
        end;
        //////////////////////////////////////////

        if (bedeh > 0)and (DataM_final1.ADOQ_bank4bedehkar.AsFloat>0)and(type_es='eslah')  then // bedeh >>>> bedeh
        begin
          chang_bede_to_bede_tarikh_unchange;
        end;

        if (bestan > 0) and (DataM_final1.ADOQ_bank4bestankar.AsFloat>0)and(type_es='eslah') then /// bestan >>>> bestan
        begin
          chang_bestan_to_bestan_tarikh_unchange;
        end;

        ///////////////////////////////////////////////////////
    end
    else
    begin // TARIKH CHANG
       MessageBox(Handle,'„Ê—œ »«‰òÌ —« Õ–› Ê œÊ»«—Â «÷«›Â ‰„«ÌÌœ .','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end;// TARIKH CHANG
end;

procedure Tfrm_eslah_bank.bank;
begin
  DataM_final1.ADOQ_bank4.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+QuotedStr(shomare_hesab)+' order by cod,tarikh';
  DataM_final1.ADOQ_bank4.Open;
end;

procedure Tfrm_eslah_bank.tarikh;
begin
  DataM_final1.ADOQ_bank4.SQL.Text:='select * from t_bank1 where tarikh='+QuotedStr(E_tarikh.Text)+' order by cod,moshakhasat_kol';
  DataM_final1.ADOQ_bank4.Open;
end;


 procedure Tfrm_eslah_bank.type_;
 begin
   if RadioGroup1.ItemIndex=0 then
    begin
      G_bank.Visible:=true;
      G_tarikh.Visible:=false;
      bank;
    end;
    if RadioGroup1.ItemIndex=1 then
    begin
      G_bank.Visible:=false;
      G_tarikh.Visible:=true;
      tarikh;
    end;

 end;


procedure Tfrm_eslah_bank.RadioGroup11Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex=1 then
  Begin
    _taghvim.ShowModal;
    E_tarikh.Text:=_taghvim._str_date;
    if E_tarikh.Text='' then
      E_tarikh.Text:=Frm_login.Egettarikh.Text;
  end
  else
  E_tarikh.Text:=Frm_login.Egettarikh.Text;
end;

procedure Tfrm_eslah_bank.RadioGroup1Click(Sender: TObject);
begin
type_;
end;
procedure Tfrm_eslah_bank.FormShow(Sender: TObject);
begin
  type_es:='eslah';

  Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='select * from T_shomare_hesabe_banki order by bank_shobe_sh_hesab';
  Dmlistha.ADOQuery_shomare_hesabe_banki.Open;

  Dmlistha.ADOQuery_shomare_hesabe_banki2.SQL.Text:='select * from T_shomare_hesabe_banki order by bank_shobe_sh_hesab';
  Dmlistha.ADOQuery_shomare_hesabe_banki2.Open;

  CheckBox1.Checked:=false;
  if CheckBox1.Checked then
 begin
  Label1.Visible:=true;
  scsal.Visible:=true;
 end
 else
 begin
  Label1.Visible:=false;
  scsal.Visible:=false;
 end;

  RadioGroup2.ItemIndex:=0;
  E_tarikh.Text:=Frm_login.Egettarikh.Text;
  RadioGroup1.ItemIndex:=0;
  type_;

  if DataM_final1.ADOQ_bank4.RecordCount>0 then
  begin
    E_roz.Text:=DataM_final1.ADOQ_bank4tarikh.AsString[9]+DataM_final1.ADOQ_bank4tarikh.AsString[10];
    E_mah.Text:=DataM_final1.ADOQ_bank4tarikh.AsString[6]+DataM_final1.ADOQ_bank4tarikh.AsString[7];
    E_sal.Text:=DataM_final1.ADOQ_bank4tarikh.AsString[1]+DataM_final1.ADOQ_bank4tarikh.AsString[2]+DataM_final1.ADOQ_bank4tarikh.AsString[3]+DataM_final1.ADOQ_bank4tarikh.AsString[4];
    L_cod.Caption:=DataM_final1.ADOQ_bank4cod.AsString;
    e_sh_fish.Text:=DataM_final1.ADOQ_bank4sh_fish.AsString;
    e_bedehkar.Text:=DataM_final1.ADOQ_bank4bedehkar.AsString;
    E_bestankar.Text:=DataM_final1.ADOQ_bank4bestankar.AsString;
    Memo1.Text:=DataM_final1.ADOQ_bank4sharh.AsString;
    L_tarikh.Caption:=DataM_final1.ADOQ_bank4tarikh.AsString;
  end;
  if DataM_final1.ADOQ_bank4.RecordCount=0 then
  begin
    E_roz.Text:='';
    E_mah.Text:='';
    E_sal.Text:='';
    L_cod.Caption:='';
    e_sh_fish.Text:='';
    e_bedehkar.Text:='';
    E_bestankar.Text:='';
    Memo1.Text:='';
    L_tarikh.Caption:='';
  end;


  esearch.Clear;


  esearch.SetFocus;
end;
procedure Tfrm_eslah_bank.E_tarikhChange(Sender: TObject);
begin
 tarikh;
   if frm_eslah_bank.DBT_fish.Caption<>''  then
    begin
    frm_eslah_bank.e_sh_fish.Visible:=true;
    frm_eslah_bank.e_bedehkar.Visible:=true;
    frm_eslah_bank.E_bestankar.Visible:=true;
    frm_eslah_bank.Memo1.Visible:=true;
    frm_eslah_bank.E_roz.Visible:=true;
    frm_eslah_bank.E_mah.Visible:=true;
    frm_eslah_bank.E_sal.Visible:=true;
    frm_eslah_bank.Button1.Visible:=true;  
  end
  else
  begin
    frm_eslah_bank.e_sh_fish.Visible:=false;
    frm_eslah_bank.e_bedehkar.Visible:=false;
    frm_eslah_bank.E_bestankar.Visible:=false;
    frm_eslah_bank.Memo1.Visible:=false;
    frm_eslah_bank.E_roz.Visible:=false;
    frm_eslah_bank.E_mah.Visible:=false;
    frm_eslah_bank.E_sal.Visible:=false;
    frm_eslah_bank.Button1.Visible:=false;
  end;
end;

procedure Tfrm_eslah_bank.E_searchChange(Sender: TObject);
begin
 Dmlistha.ADOQuery_shomare_hesabe_banki.Locate('bank_shobe_sh_hesab',esearch.Text,[loPartialKey]);

end;

//////////////////////////////////////////////////////////////////
function Tfrm_eslah_bank.check:boolean;
begin
  check:=true;
  if ((CheckBox1.Checked) and (scsal.Text=''))or(E_sal.Text='')or(E_mah.Text='')or(E_roz.Text='')or(e_sh_fish.Text='') then
  begin
    if (type_es='eslah')then
    begin
     check:=false;
     MessageBox(Handle,'›Ì·œÂ«Ì ” «—Â œ«— »«Ìœ Ê«—œ ‘Ê‰œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end
  end
  else
  begin
    if E_bestankar.Text=''then
      E_bestankar.Text:='0';
    if (e_bedehkar.Text='') then
      e_bedehkar.Text:='0';

    if (e_bedehkar.Text='0')and(E_bestankar.Text='0') then
    begin
      check:=false;
      MessageBox(Handle,'»«Ìœ »” «‰ò«— Ì« »œÂò«— Ê«—œ ‘Êœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end;

    if (e_bedehkar.Text<>'0') and(E_bestankar.Text<>'0') then
    begin
      check:=false;
      MessageBox(Handle,'»«Ìœ ›ﬁÿ »” «‰ò«— Ì« ›ﬁÿ »œÂò«— Ê«—œ ‘Êœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end;
  end;
end;

procedure Tfrm_eslah_bank.Button2Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_eslah_bank.Button1Click(Sender: TObject);
var tarikh_,s,s2:string;
    mande,bestnkare_feli:real;
    pch:pchar;
    i:integer;
begin
  s:='';
  s2:=trim(DataM_final1.ADOQ_bank4sharh.AsString);

  if strlen(pchar(s2))>0 then
  begin
    for i:=1 to 14 do
      s:=s+s2[i];
  end;

  if s='Å—œ«Œ  çò »—«Ì' then
  begin
    MessageBox(Handle,'çò «‰ Œ«»Ì°œ— Œ—Ìœ «“ ›—Ê‘‰œÂ À»  ‘œÂ «”  ° ·–« »«Ìœ «“ ﬁ”„  " «’·«Õ ›«ò Ê— Œ—Ìœ - «’·«Õ çòÂ« " çò «‰ Œ«»Ì —« «’·«Õ ‰„«ÌÌœ.«“ ﬁ”„   " çòÂ«Ì Å—œ«Œ Ì " „Ì  Ê«‰Ìœ œ—Ì«›  ò‰‰œÂ çò —« „‘Œ’ ‰„«ÌÌœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    exit;
  end;


  s:='';
  s2:=DataM_final1.ADOQ_bank4sharh.AsString;
  if strlen(pchar(s2))>0 then
  begin
    for i:=1 to 8 do
      s:=s+s2[i];
  end;

  if s='Å«” ò—œ‰'then
  begin
    s:='';
    s2:=trim(Memo1.Text);
    if strlen(pchar(s2))>0 then
    begin
      for i:=1 to 8 do
        s:=s+s2[i];
    end;
   if s<>'Å«” ò—œ‰' then
   begin
    MessageBox(Handle,'‘—Õ »«Ìœ »« "Å«” ò—œ‰" ‘—Ê⁄ ê—œœ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    Memo1.Text:='Å«” ò—œ‰'+Memo1.Text;
    exit;
   end;
  end;


  s:='';
  if strlen(pchar(DataM_final1.ADOQ_bank4sharh.AsString))>0 then
  begin
    for i:=1 to 8 do
      s:=s+DataM_final1.ADOQ_bank4sharh.AsString[i];

    if s='Å«” ò—œ‰' then
    begin
      MessageBox(Handle,'çò «‰ Œ«»Ì°œ— ›—Ê‘ »Â Œ—Ìœ«— À»  ‘œÂ «”  ° ·–« »«Ìœ «“ ﬁ”„  " «’·«Õ ›«ò Ê— ›—Ê‘ - «’·«Õ çòÂ« " çò «‰ Œ«»Ì —« «’·«Õ ‰„«ÌÌœ.«“ ﬁ”„   " Â„Â çòÂ«Ì œ—Ì«› Ì " „Ì  Ê«‰Ìœ Å—œ«Œ  ò‰‰œÂ çò —« „‘Œ’ ‰„«ÌÌœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      exit;
    end;
  end;  



  s:='';
  s2:=DataM_final1.ADOQ_bank4sharh.AsString;
  if strlen(pchar(s2))>0 then
  begin
    for i:=1 to 12 do
      s:=s+s2[i];
  end;

  if s='Ê«—Ì“ „ ›—ﬁÂ' then
  begin
    s:='';
    s2:=trim(Memo1.Text);
    if strlen(pchar(s2))>0 then
    begin
      for i:=1 to 12 do
        s:=s+s2[i];
    end;
   if s<>'Ê«—Ì“ „ ›—ﬁÂ' then
   begin
    MessageBox(Handle,'‘—Õ »«Ìœ »« "Ê«—Ì“ „ ›—ﬁÂ" ‘—Ê⁄ ê—œœ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    Memo1.Text:='Ê«—Ì“ „ ›—ﬁÂ'+Memo1.Text;
    exit;
   end;
  end;



    s:='';
  s2:=DataM_final1.ADOQ_bank4sharh.AsString;
  if strlen(pchar(s2))>0 then
  begin
    for i:=1 to 6 do
      s:=s+s2[i];
  end;

  if s='»—œ«‘ ' then
  begin
    s:='';
    s2:=trim(Memo1.Text);
    if strlen(pchar(s2))>0 then
    begin
      for i:=1 to 6 do
        s:=s+s2[i];
    end;
   if s<>'»—œ«‘ '  then
   begin
    MessageBox(Handle,'‘—Õ »«Ìœ »« "»—œ«‘ " ‘—Ê⁄ ê—œœ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    Memo1.Text:='»—œ«‘ '+Memo1.Text;
    exit;
   end;
  end;

  if type_es='eslah' then
    shomare_hesab:=Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString;


  sandog:='';

  time_:=DataM_final1.ADOQ_bank4time_.AsString;
  tarikh_sandog:=DataM_final1.ADOQ_bank4tarikh.AsString;

  if (DataM_final1.ADOQ_bank4vorod_az_sandog.AsString<>'')and (type_es='eslah') then
    sandog:=DataM_final1.ADOQ_bank4vorod_az_sandog.AsString;

  if (DataM_final1.ADOQ_bank4khoroj_be_sandog.AsString<>'')and (type_es='eslah') then
   sandog:=DataM_final1.ADOQ_bank4khoroj_be_sandog.AsString;

   
if E_bestankar.Text='' then
  E_bestankar.Text:='0';

if e_bedehkar.Text='' then
  e_bedehkar.Text:='0';

 if (type_es='eslah') then
  bestnkare_feli:=DataM_final1.ADOQ_bank4bestankar.AsFloat;
  if (type_es='eslah') then
  tarikh_:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);

  if (type_es='eslah') then
    L_cod.Caption:=DataM_final1.ADOQ_bank4cod.AsString;
  L_cod2.Caption:=L_cod.Caption;
    
if DataM_final1.ADOQ_bank4moshakhasat_kol.AsString='' then
  MessageBox(Handle,' —òÊ—œÌ »—«Ì ÊÌ—«Ì‘ ÊÃÊœ ‰œ«—œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin
  l_review.Caption:=DataM_final1.ADOQ_bank4cod.AsString;

  If check then
   begin //4

   if (E_bestankar.Text<>'0')and(bestnkare_feli>StrToFloat(E_bestankar.Text))and (type_es='eslah') then
   begin
      DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
      QuotedStr(shomare_hesab)+
      ' and tarikh <='+QuotedStr(tarikh_)+' commit tran';
      DataM_forosh.ADOQ_mande_bank.Open;
      mande:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;
   end;

   if (e_bedehkar.Text<>'0')and(StrToFloat(DBT_bestan.Caption)>0)and(type_es='eslah')  then
   begin
      DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
      QuotedStr(shomare_hesab)+
      ' and tarikh <='+QuotedStr(tarikh_)+' commit tran';
      DataM_forosh.ADOQ_mande_bank.Open;

      mande:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;
   end;

   if (e_bedehkar.Text<>'0')and(StrToFloat(DBT_bede.Caption)>0)and(type_es='eslah')  then
   begin
      DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
      QuotedStr(shomare_hesab)+
      ' and cod <'+L_cod2.Caption+' commit tran';
      DataM_forosh.ADOQ_mande_bank.Open;

      mande:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;
   end;


   if (type_es<>'eslah')  then
   begin
      DataM_forosh.ADOQ_mande_bank.SQL.Text:='begin tran select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
      QuotedStr(shomare_hesab)+
      ' and cod <'+L_cod2.Caption+' commit tran';
      DataM_forosh.ADOQ_mande_bank.Open;

      mande:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;
   end;

    if not(CheckBox1.Checked )and( type_es='eslah')and(L_tarikh.Caption=tarikh_)and(DBT_bestankar.Caption=trim(E_bestankar.Text))and(DBT_bedehkar.Caption=trim(e_bedehkar.Text)) and(DataM_final1.ADOQ_bank4sharh.AsString=trim(Memo1.Text)) then
    begin

      DataM_final1.ADOQ_bank3.SQL.Text:='select * from t_bank1 where moshakhasat_kol='+
      QuotedStr(DataM_final1.ADOQ_bank4moshakhasat_kol.AsString)+' and sh_fish='+e_sh_fish.Text+' and cod<>'+l_review.Caption;
      DataM_final1.ADOQ_bank3.Open;

      if DataM_final1.ADOQ_bank3.RecordCount=0 then
      begin
          DataM_final1.ADOQ_bank3.SQL.Text:=' begin tran update t_bank1 set sh_fish='+
          QuotedStr(e_sh_fish.Text)+' where cod='+L_cod.Caption+' commit tran';

           DataM_final1.ADOQ_bank3.ExecSQL;


            MessageBox(Handle,'„Ê—œ »«‰òÌ «‰ Œ«»Ì «’·«Õ ê—œÌœ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
           type_;
      end
      else
          MessageBox(Handle,'çò / ›Ì‘ »« ‘„«—Â Ê—ÊœÌ ﬁ»·¬ Ê«—œ ‘œÂ «”  ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end
    else
    begin//3
      if (e_bedehkar.Text<>'0')  then
      begin //2
        if(StrToFloat(e_bedehkar.Text)>mande)and(type_es='eslah') then
        begin //1
         pch:=pchar(' „»·€ Ê«—œ ‘œÂ »—«Ì »—œ«‘  «“ Õ”«»° «“ „«‰œÂ Õ”«» œ—  «—ÌŒ ›Ì‘ = '+FloatToStr(mande)+'  »Ì‘ — „Ì»«‘œ. ');
         MessageBox(Handle,pch,'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
        end
        else
        begin
          if (type_es='eslah') then
            frm_add_bank1.execute_morede_banki_backup_stored_procedure;

          eslah_bank;

          //if (type_es='eslah') then

            frm_add_bank1.execute_delet_from_morede_banki_backup_stored_procedure;
          type_;
        end;//1
      end //2
      else
       begin
        if(bestnkare_feli-(StrToFloat(E_bestankar.Text))>mande) then
        begin
         pch:=pchar(' „«‰œÂ Õ”«» '+FloatToStr(mande)+'„Ì »«‘œ Ê »«  €ÌÌ— „»·€ »” «‰ò«— »Â „»·€ Ê«—œ ‘œÂ „«‰œÂ Õ”«» „‰›Ì „Ì ‘Êœ.');
         MessageBox(Handle,pch,'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
        end
        else
        begin
          if (type_es='eslah') then
            frm_add_bank1.execute_morede_banki_backup_stored_procedure;

          eslah_bank;

          //if (type_es='eslah') then
            frm_add_bank1.execute_delet_from_morede_banki_backup_stored_procedure;
          type_;
        end;
       end; //2                                   
   end;//3
  end;//4
  if (type_es='eslah') then
    DataM_final1.ADOQ_bank4.Locate('cod',l_review.Caption,[loPartialKey]);
end;

end;


procedure Tfrm_eslah_bank.RadioGroup2Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex=1 then
  Begin
    _taghvim.ShowModal;
    E_tarikh.Text:=_taghvim._str_date;
    if E_tarikh.Text='' then
      E_tarikh.Text:=Frm_login.Egettarikh.Text;
  end
  else
  E_tarikh.Text:=Frm_login.Egettarikh.Text;
end;

procedure Tfrm_eslah_bank.Button6Click(Sender: TObject);
var   mande:real;
      pch:pchar;
       mande_gabl,mande_bad:real;
       s:string;
       i:integer;
begin

   if (type_es='hazf_az_eslahe_check') then
   begin
    delete;
    frm_add_bank1.execute_delet_from_morede_banki_backup_stored_procedure;
    exit;
   end;

   if (type_es='hazf_az_eslahe_check_forosh') then
   begin
    delete;
    frm_add_bank1.execute_delet_from_morede_banki_backup_stored_procedure;
    exit;
   end;


  s:='';
  if strlen(pchar(DataM_final1.ADOQ_bank4sharh.AsString))>0 then
  begin
    for i:=1 to 8 do
      s:=s+DataM_final1.ADOQ_bank4sharh.AsString[i];

    if s='Å«” ò—œ‰' then
    begin
      MessageBox(Handle,'çò «‰ Œ«»Ì°œ— ›—Ê‘ »Â Œ—Ìœ«— À»  ‘œÂ «”  ° ·–« »«Ìœ «“ ﬁ”„  " «’·«Õ ›«ò Ê— ›—Ê‘ - «’·«Õ çòÂ« " çò «‰ Œ«»Ì —« Õ–› ‰„«ÌÌœ.«“ ﬁ”„   " Â„Â çòÂ«Ì œ—Ì«› Ì " „Ì  Ê«‰Ìœ Å—œ«Œ  ò‰‰œÂ çò —« „‘Œ’ ‰„«ÌÌœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      exit;
    end;
  end;


  s:='';
  if strlen(pchar(DataM_final1.ADOQ_bank4sharh.AsString))>0 then
  begin
    for i:=1 to 14 do
      s:=s+DataM_final1.ADOQ_bank4sharh.AsString[i];

    if s='Å—œ«Œ  çò »—«Ì' then
    begin
      MessageBox(Handle,'çò «‰ Œ«»Ì°œ— Œ—Ìœ «“ ›—Ê‘‰œÂ À»  ‘œÂ «”  ° ·–« »«Ìœ «“ ﬁ”„  " «’·«Õ ›«ò Ê— Œ—Ìœ - «’·«Õ çòÂ« " çò «‰ Œ«»Ì —« Õ–› ‰„«ÌÌœ.«“ ﬁ”„   " çòÂ«Ì Å—œ«Œ Ì " „Ì  Ê«‰Ìœ œ—Ì«›  ò‰‰œÂ çò —« „‘Œ’ ‰„«ÌÌœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      exit;
    end;
  end;

  DataM_final1.ADOQ_temp_bank.SQL.Text:='begin tran delete from t_temp_bank  commit tran';
  DataM_final1.ADOQ_temp_bank.ExecSQL;

  sandog:='';
  
  time_:=DataM_final1.ADOQ_bank4time_.AsString;
  tarikh_sandog:=DataM_final1.ADOQ_bank4tarikh.AsString;

  if (DataM_final1.ADOQ_bank4vorod_az_sandog.AsString<>'')and(type_es='eslah') then
    sandog:=DataM_final1.ADOQ_bank4vorod_az_sandog.AsString;

  if (DataM_final1.ADOQ_bank4khoroj_be_sandog.AsString<>'')and(type_es='eslah') then
   sandog:=DataM_final1.ADOQ_bank4khoroj_be_sandog.AsString;




if DataM_final1.ADOQ_bank4moshakhasat_kol.AsString<>'' then

begin
  if MessageBox(Handle,'„Ê—œ »«‰òÌ «‰ Œ«»Ì Õ–› ê—œœ ø',' ÊÃÂ  !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING)=id_yes then
  begin
        if (E_bestankar.Text<>'0')then
        begin
          mande_bad:=mablgae_mande_bank_bad_az_id(DataM_final1.ADOQ_bank4moshakhasat_kol.AsString,DataM_final1.ADOQ_bank4cod.AsString);
          mande_gabl:=mablgae_mande_bank_gabl_az_id(DataM_final1.ADOQ_bank4moshakhasat_kol.AsString,DataM_final1.ADOQ_bank4cod.AsString);

          if (mande_bad+mande_gabl)<0 then
          begin
            pch:=pchar(' „«‰œÂ Õ”«» ﬁ»· «“ «Ì‰ „Ê—œ «‰ Œ«» ‘œÂ »—«»— «”  »« << '+FloatToStr(mande_gabl)+' >> Ê „«‰œÂ Õ”«» »⁄œ «“ Õ–› ¬‰ „‰›Ì „Ìê—œœ << '+FloatToStr(mande_bad)+' >> çÊ‰ „«‰œÂ Õ”«» „Ê«—œ »«‰òÌ »⁄œ «“ „Ê—œ «‰ Œ«»Ì „‰›Ì „Ì »«‘œ(»œÂò«—) ‰„Ì  Ê«‰ „Ê—œ »«‰òÌ —« Õ–› ‰„Êœ. ');
            MessageBox(Handle,pch,'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
          end
          else
          begin
            frm_add_bank1.execute_morede_banki_backup_stored_procedure;
             delete;
            frm_add_bank1.execute_delet_from_morede_banki_backup_stored_procedure;
          end;
        end
        else
        begin
            frm_add_bank1.execute_morede_banki_backup_stored_procedure;
            delete;
            frm_add_bank1.execute_delet_from_morede_banki_backup_stored_procedure;
        end;
  end;
end
else
  MessageBox(Handle,' —òÊ—œÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;
procedure Tfrm_eslah_bank.e_bedehkarKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_bank.E_bestankarKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_bank.e_jariKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_bank.e_sh_fishKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_bank.E_rozKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_bank.E_mahKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_bank.E_salKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_bank.Button5Click(Sender: TObject);
begin
  frm_main.show_calc;
end;

procedure Tfrm_eslah_bank.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked then
 begin
  Label1.Visible:=true;
  scsal.Visible:=true;
 end
 else
 begin
  Label1.Visible:=false;
  scsal.Visible:=false;
 end;
end;

end.

