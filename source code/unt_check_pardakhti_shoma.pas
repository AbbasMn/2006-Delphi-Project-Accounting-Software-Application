unit unt_check_pardakhti_shoma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, ExtCtrls, StdCtrls, dxCore, dxButtons, Grids,
  DBGrids, SUIDBCtrls, SUIForm, SUIButton;

type
  Tfrm_check_pardakhti_shoma = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    GroupBox_tarikh: TGroupBox;
    suiButton_a: TsuiButton;
    RadioGroup1: TRadioGroup;
    suiDBGrid1: TsuiDBGrid;
    dxToolButton11: TdxToolButton;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    GroupBox_shomare: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    esearch: TEdit;
    dxToolButton1: TdxToolButton;
    suiButton1: TsuiButton;
    l_id: TLabel;
    GroupBox_bank: TGroupBox;
    dbanbar: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure typ_;
    procedure RadioGroup1Click(Sender: TObject);
    procedure show_shomare(s:string);
    procedure show_par_tarikh_sal(s:string);
    procedure show_check_tarikh(s:string);
    procedure suiButton_aClick(Sender: TObject);
    procedure dxToolButton11Click(Sender: TObject);
    procedure show_bank(s:string);
    procedure show_hame(s:string);
    procedure dbanbarClick(Sender: TObject);
    procedure Esearch2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
    procedure check_pass;
    procedure suiButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
  roz,mah,sal,tarikh:string;
    { Public declarations }
  end;

var
  frm_check_pardakhti_shoma: Tfrm_check_pardakhti_shoma;

implementation

uses Untdmlistha, Math, Taghvim, unt_print_check_pardakhti,
  unt_moshkhasat_bank, unt_DataM_final, unt_datamodule1, unt_main,
  unt_login, Unt_add_bank1, unt_DataM_forosh;

{$R *.dfm}
procedure Tfrm_check_pardakhti_shoma.check_pass;
begin
    l_id.Caption:=DataM_final.ADOQ_T_pardakht_check_kharidid.AsString;

    frm_add_bank1.execute_morede_banki_backup_stored_procedure;

    frm_add_bank1.sandog:='';

    frm_add_bank1.e_bedehkar.Text:=DataM_final.ADOQ_T_pardakht_check_kharidmablagh_check.AsString;

    frm_add_bank1.RadioGroup1.ItemIndex:=1;

    frm_add_bank1.sharh:=' ?????? ?? ???? ???? ????? '+DataM_final.ADOQ_T_pardakht_check_kharidshomare_factor.AsString+' ?? '+DataM_final.ADOQ_T_pardakht_check_kharidshahrforoshande.AsString;

    frm_add_bank1.L_variz_az_sandog.Caption:='no';


    frm_add_bank1.e_sh_fish.Text:=DataM_final.ADOQ_T_pardakht_check_kharidsh_check.AsString;

    frm_add_bank1.tarikh:=DataM_final.ADOQ_T_pardakht_check_kharidtarikh.AsString;

    frm_add_bank1.bank_shobe_sh_hesab:=DataM_final.ADOQ_T_pardakht_check_kharidsh_hesab.AsString;
    frm_add_bank1.bank_sh:=frm_add_bank1.bank_shobe_sh_hesab;

    frm_add_bank1.time_:=frm_main.LMDClock1.Digital.Caption;

    frm_add_bank1.L_type2.Caption:='pardakhte_check_kharid';


    frm_add_bank1.Button1.Click;

    DataM_final.ADOQ_T_pardakht_check_kharid.SQL.Text:='begin tran update T_pardakht_check_kharid set pass='+
    QuotedStr('???')+' where id='+l_id.Caption+' commit tran';
    DataM_final.ADOQ_T_pardakht_check_kharid.ExecSQL;

    typ_;

    DataM_final.ADOQ_T_pardakht_check_kharid.Locate('id',l_id.Caption,[loPartialKey]);

    frm_add_bank1.execute_delet_from_morede_banki_backup_stored_procedure;

    MessageBox(Handle,pchar('?? ?????? ??? ???? ??? ??? ????? ? ?????? ???? ????? ????? ??'),'????! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
end;

procedure Tfrm_check_pardakhti_shoma.show_hame(s:string);
begin
  //GroupBox3.Visible:=false;

  DataM_final.ADOQ_T_pardakht_check_kharid.sql.Text:='select * from T_pardakht_check_kharid';
  DataM_final.ADOQ_T_pardakht_check_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid';
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  Frm_print_check_pardakhti.QRLtype.Caption:='???? ??? ????? ??????? ???';

end;

procedure Tfrm_check_pardakhti_shoma.show_bank(s:string);
begin
  //GroupBox3.Visible:=false;

  DataM_final.ADOQ_T_pardakht_check_kharid.sql.Text:='select * from T_pardakht_check_kharid where sh_hesab like '+QuotedStr('%'+s+'%');
  DataM_final.ADOQ_T_pardakht_check_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid '+
  ' where sh_hesab like '+QuotedStr('%'+s+'%');
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

   Frm_print_check_pardakhti.QRLtype.Caption:=' ???? ????? ??????? ??? ?? ???? '+s;
end;

procedure Tfrm_check_pardakhti_shoma.show_shomare(s:string);
begin
 //GroupBox3.Visible:=true;
  if s=''then
    s:='0';
  DataM_final.ADOQ_T_pardakht_check_kharid.sql.Text:='select * from T_pardakht_check_kharid where sh_check='+trim(s);
  DataM_final.ADOQ_T_pardakht_check_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid '+
  ' where sh_check='+trim(s);
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

Frm_print_check_pardakhti.QRLtype.Caption:=' ???? ????? ??????? ??? ?? ????? '+s;
end;
procedure Tfrm_check_pardakhti_shoma.show_par_tarikh_sal(s:string);
begin
   // GroupBox3.Visible:=false;
    DataM_final.ADOQ_T_pardakht_check_kharid.sql.Text:='select * from T_pardakht_check_kharid where tarikh like'+QuotedStr(s+'%');
  DataM_final.ADOQ_T_pardakht_check_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid '+
  ' where tarikh like'+QuotedStr(s+'%');
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

Frm_print_check_pardakhti.QRLtype.Caption:=' ???? ????? ??????? ??? ?? ???? '+s;
end;
procedure Tfrm_check_pardakhti_shoma.show_check_tarikh(s:string);
begin
     //GroupBox3.Visible:=false;
  DataM_final.ADOQ_T_pardakht_check_kharid.sql.Text:='select * from T_pardakht_check_kharid where tarikh='+QuotedStr(s);
  DataM_final.ADOQ_T_pardakht_check_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid '+
  ' where tarikh='+QuotedStr(s);
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

 Frm_print_check_pardakhti.QRLtype.Caption:='???? ????? ??????? ??? ?? ???? ???? '+s+' ??????.';
end;
procedure Tfrm_check_pardakhti_shoma.typ_;
begin
    sal:='';
    mah:='';
    roz:='';
   if RadioGroup1.ItemIndex=0 then
     begin
       GroupBox_shomare.Visible:=true;
       GroupBox_tarikh.Visible:=false;
       GroupBox_bank.Visible:=false;
       //show_shomare(Esearch2.Text);
       Edit1.Clear;
       Edit1.SetFocus;
     end;

   if RadioGroup1.ItemIndex=1 then
     begin
       GroupBox_shomare.Visible:=false;
       GroupBox_tarikh.Visible:=true;
       GroupBox_bank.Visible:=false;
       suiButton_a.SetFocus;
       tarikh:='';
       show_check_tarikh(tarikh);
     end;
     if RadioGroup1.ItemIndex=2 then
     begin
       GroupBox_shomare.Visible:=false;
       GroupBox_tarikh.Visible:=false;
       GroupBox_bank.Visible:=false;
       show_hame('hame');
     end;

      if RadioGroup1.ItemIndex=3 then
     begin
       GroupBox_shomare.Visible:=false;
       GroupBox_tarikh.Visible:=false;
       GroupBox_bank.Visible:=true;
       frm_moshkhasat_bank.showbank;
       dbanbar.SetFocus;
       show_bank(dbanbar.Text);
     end;

end;

procedure Tfrm_check_pardakhti_shoma.FormShow(Sender: TObject);
begin
  frm_check_pardakhti_shoma.WindowState:=wsMaximized;
    DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;
  RadioGroup1.ItemIndex:=2;
  typ_;

  esearch.Clear;

end;

procedure Tfrm_check_pardakhti_shoma.RadioGroup1Click(Sender: TObject);
begin
  typ_;
end;

procedure Tfrm_check_pardakhti_shoma.suiButton_aClick(Sender: TObject);
begin
    _taghvim.ShowModal;
 if _taghvim._str_date<>'' then
 begin
  tarikh:=_taghvim._str_date;
  _taghvim.Close;
 end;
  show_check_tarikh(tarikh);
end;


procedure Tfrm_check_pardakhti_shoma.dxToolButton11Click(Sender: TObject);
begin
  Frm_print_check_pardakhti.QRLtarikh.Caption:=frm_login.egettarikh.Text;
  Frm_print_check_pardakhti.QRL_tedad.Caption:=IntToStr(DataM_final.ADOQ_T_pardakht_check_kharid.RecordCount);
  Frm_print_check_pardakhti.QRL_mab_kol.Caption:=FloatToStr(DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsFloat);
  Frm_print_check_pardakhti.QuickRep1.Preview;
end;

procedure Tfrm_check_pardakhti_shoma.dbanbarClick(Sender: TObject);
begin
  show_bank(dbanbar.Text);
  Frm_print_check_pardakhti.QRLtype.Caption:='???? ????? ??????? ??? ?? ???? ????? ????? ?? ???? ' +dbanbar.Text;
end;

procedure Tfrm_check_pardakhti_shoma.Esearch2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_check_pardakhti_shoma.Button1Click(Sender: TObject);
begin
   //show_shomare(Esearch2.Text);
end;

procedure Tfrm_check_pardakhti_shoma.esearchChange(Sender: TObject);
begin
  DataM_final.ADOQ_T_pardakht_check_kharid.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_check_pardakhti_shoma.Edit1Change(Sender: TObject);
begin
 if (trim(Edit1.Text)<>'') then
 begin
    DataM_final.ADOQ_T_pardakht_check_kharid.sql.Text:='select * from T_pardakht_check_kharid where '+
    'sh_check='+trim(Edit1.Text)+' order by sh_check';
    DataM_final.ADOQ_T_pardakht_check_kharid.Open;
 end
 else
 begin
    DataM_final.ADOQ_T_pardakht_check_kharid.sql.Text:='select * from T_pardakht_check_kharid where '+
    'sh_check < 0'+' order by sh_check';
    DataM_final.ADOQ_T_pardakht_check_kharid.Open;
 end
end;

procedure Tfrm_check_pardakhti_shoma.dxToolButton1Click(Sender: TObject);
begin
  Frm_print_check_pardakhti.QRLtarikh.Caption:=frm_login.egettarikh.Text;
  Frm_print_check_pardakhti.QRL_tedad.Caption:=IntToStr(DataM_final.ADOQ_T_pardakht_check_kharid.RecordCount);
  Frm_print_check_pardakhti.QRL_mab_kol.Caption:=FloatToStr(DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsFloat);
  Frm_print_check_pardakhti.QuickRep1.Print;
end;

procedure Tfrm_check_pardakhti_shoma.suiButton1Click(Sender: TObject);
var mojodi_heasb:real;
begin
  mojodi_heasb:=0;

  DataM_forosh.ADOQ_mande_bank.SQL.Text:='select sum(bestankar-bedehkar) as mande_kol from t_bank1 where moshakhasat_kol='+
  QuotedStr(DataM_final.ADOQ_T_pardakht_check_kharidsh_hesab.AsString);
  DataM_forosh.ADOQ_mande_bank.Open;

  mojodi_heasb:=DataM_forosh.ADOQ_mande_bankmande_kol.AsFloat;

if DataM_final.ADOQ_T_pardakht_check_kharid.RecordCount>0 then
begin
  if DataM_final.ADOQ_T_pardakht_check_kharidpass.AsString='???' then
  begin
    MessageBox(Handle,'?? ??????? ????? ??? ??? ? ?????? ???? ????? ??? ?????? ???','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);    
    exit;
  end;

  if DataM_final.ADOQ_T_pardakht_check_kharidmablagh_check.AsFloat>mojodi_heasb then
  begin
    MessageBox(Handle,pchar(' ???? ??? ?? ?????? ????? ???? ?? '+FloatToStr(mojodi_heasb)+' ????? ?? ????. '),'???! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
    exit;
  end;

  check_pass;
end;
end;

end.
