unit unt_DataM_final1;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataM_final1 = class(TDataModule)
    ADOQ_temp_bank: TADOQuery;
    ADOQ_bank2: TADOQuery;
    ADOQ_bank3: TADOQuery;
    ADOQ_bank4: TADOQuery;
    ADOQ_bank3moshakhasat_kol: TWideStringField;
    ADOQ_bank3tarikh: TWideStringField;
    ADOQ_bank3sh_fish: TFloatField;
    ADOQ_bank3sharh: TWideStringField;
    ADOQ_bank3bedehkar: TFloatField;
    ADOQ_bank3bestankar: TFloatField;
    ADOQ_bank3mande: TFloatField;
    ADOQ_bank3cod: TBCDField;
    ADOQ_bank2moshakhasat_kol: TWideStringField;
    ADOQ_bank2tarikh: TWideStringField;
    ADOQ_bank2sh_fish: TFloatField;
    ADOQ_bank2sharh: TWideStringField;
    ADOQ_bank2bedehkar: TFloatField;
    ADOQ_bank2bestankar: TFloatField;
    ADOQ_bank2mande: TFloatField;
    ADOQ_bank2cod: TBCDField;
    ADOQ_temp_bankmoshakhasat_kol: TWideStringField;
    ADOQ_temp_banktarikh: TWideStringField;
    ADOQ_temp_banksh_fish: TFloatField;
    ADOQ_temp_banksharh: TWideStringField;
    ADOQ_temp_bankbedehkar: TFloatField;
    ADOQ_temp_bankbestankar: TFloatField;
    ADOQ_temp_bankmande: TFloatField;
    ADOQ_temp_bankcod: TBCDField;
    ADOQ_bank4moshakhasat_kol: TWideStringField;
    ADOQ_bank4tarikh: TWideStringField;
    ADOQ_bank4sh_fish: TFloatField;
    ADOQ_bank4sharh: TWideStringField;
    ADOQ_bank4bedehkar: TFloatField;
    ADOQ_bank4bestankar: TFloatField;
    ADOQ_bank4mande: TFloatField;
    ADOQ_bank4cod: TBCDField;
    ADOQ_bank2vorod_az_sandog: TWideStringField;
    ADOQ_bank2khoroj_be_sandog: TWideStringField;
    ADOQ_bank2time_: TWideStringField;
    ADOQ_bank3vorod_az_sandog: TWideStringField;
    ADOQ_bank3khoroj_be_sandog: TWideStringField;
    ADOQ_bank3time_: TWideStringField;
    ADOQ_bank4vorod_az_sandog: TWideStringField;
    ADOQ_bank4khoroj_be_sandog: TWideStringField;
    ADOQ_bank4time_: TWideStringField;
    ADOQ_temp_bankvorod_az_sandog: TWideStringField;
    ADOQ_temp_bankkhoroj_be_sandog: TWideStringField;
    ADOQ_temp_banktime_: TWideStringField;
    procedure show_bank_hasan;
    procedure ADOQ_bank4AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataM_final1: TDataM_final1;

implementation

uses  unt_frm_eslah_bank, unt_DataM_final, unt_main;

{$R *.dfm}

procedure TDataM_final1.show_bank_hasan;
begin
  {DataM_final.ADOQ_bank_hasan.SQL.Text:='select * from T_bank_hasanpor order by bank_name';
  DataM_final.ADOQ_bank_hasan.Open;}
end;





procedure TDataM_final1.ADOQ_bank4AfterScroll(DataSet: TDataSet);
var
       s:string;
       i:integer;
begin
if (frm_eslah_bank<>nil)and(frm_eslah_bank.Showing) then
begin

  s:='';

  {if strlen(pchar(ADOQ_bank4sharh.AsString))>0 then
  begin
    for i:=1 to 14 do
      s:=s+ADOQ_bank4sharh.AsString[i];

    if s='ÑÏÇÎÊ ˜ ÈÑÇí' then
      frm_eslah_bank.Memo1.Enabled:=false
    else
      frm_eslah_bank.Memo1.Enabled:=true;
  end;}
    

  if frm_eslah_bank.CheckBox1.Checked then
  begin
    frm_eslah_bank.Label1.Visible:=true;
    frm_eslah_bank.scsal.Visible:=true;
  end
  else
  begin
    frm_eslah_bank.Label1.Visible:=false;
    frm_eslah_bank.scsal.Visible:=false;
  end;

  if DataM_final1.ADOQ_bank4.RecordCount>0 then
  begin
    frm_eslah_bank.E_roz.Text:=ADOQ_bank4tarikh.AsString[9]+ADOQ_bank4tarikh.AsString[10];
    frm_eslah_bank.E_mah.Text:=ADOQ_bank4tarikh.AsString[6]+ADOQ_bank4tarikh.AsString[7];
    frm_eslah_bank.E_sal.Text:=ADOQ_bank4tarikh.AsString[1]+ADOQ_bank4tarikh.AsString[2]+ADOQ_bank4tarikh.AsString[3]+ADOQ_bank4tarikh.AsString[4];

    if frm_eslah_bank.type_es='eslah' then
      frm_eslah_bank.L_cod.Caption:=ADOQ_bank4cod.AsString;

    frm_eslah_bank.e_sh_fish.Text:=frm_eslah_bank.DBT_fish.Caption;
    frm_eslah_bank.e_bedehkar.Text:=frm_eslah_bank.DBT_bede.Caption;
    frm_eslah_bank.E_bestankar.Text:=frm_eslah_bank.DBT_bestan.Caption;
    frm_eslah_bank.Memo1.Text:=frm_eslah_bank.dbt_sharh.Caption;
    frm_eslah_bank.L_tarikh.Caption:=ADOQ_bank4tarikh.AsString;
  end;
  if DataM_final1.ADOQ_bank4.RecordCount=0 then
  begin
    frm_eslah_bank.E_roz.Text:='';
    frm_eslah_bank.E_mah.Text:='';
    frm_eslah_bank.E_sal.Text:='';
    frm_eslah_bank.L_cod.Caption:='';
    frm_eslah_bank.e_sh_fish.Text:='';
    frm_eslah_bank.e_bedehkar.Text:='';
    frm_eslah_bank.E_bestankar.Text:='';
    frm_eslah_bank.Memo1.Text:='';
    frm_eslah_bank.L_tarikh.Caption:='';
  end;

   {if DataM_final1.ADOQ_bank4.RecordCount<>0 then
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
  end;}
  end;
end;

end.
