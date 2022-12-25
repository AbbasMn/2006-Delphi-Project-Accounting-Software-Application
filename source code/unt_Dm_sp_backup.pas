unit unt_Dm_sp_backup;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDm_sp_backup = class(TDataModule)
    ADOStoredProc_from_morede_banki_to_temp_morede_banki: TADOStoredProc;
    ADOStoredProc_delete_from_temp_morede_banki: TADOStoredProc;
    ADOStoredProc_from_temp_morede_banki_to_morede_benki: TADOStoredProc;
    ADOQuery_temp_mored_banki: TADOQuery;
    ADOStoredProc_delete_from_Tanbar_jens_kolli_temp: TADOStoredProc;
    ADOStoredProc_from_temp_Tanbar_jens_kolli_to_Tanbar_jens_kolli: TADOStoredProc;
    ADOStoredProc_from_Tanbar_jens_kolli_to_temp_Tanbar_jens_kolli: TADOStoredProc;
    ADOQuery_temp_anbare_koli: TADOQuery;
    ADOStoredProc_delete_from_temp_daste_check: TADOStoredProc;
    ADOStoredProc_from_daste_check_to_temp_daste_check: TADOStoredProc;
    ADOStoredProc_from_temp_daste_check_to_daste_check: TADOStoredProc;
    ADOQuery_temp_daste_check: TADOQuery;
    ADOStoredProc_delete_from_gozaresh_vorod_va_khoroje_anbar_backu: TADOStoredProc;
    ADOStoredProc_from_gozaresh_vorod_va_khoroje_anbar_to_gozaresh_: TADOStoredProc;
    ADOStoredProc_from_gozaresh_vorod_va_khoroje_anbar_backup_to_go: TADOStoredProc;
    ADOQuery_gozaresh_vorod_va_khoroje_anbar_backup: TADOQuery;
    ADOQuery_temp_bank: TADOQuery;
    ADOQuery_temp_sh_hesab_banki: TADOQuery;
    ADOQuery_temp_check_kharid: TADOQuery;
    ADOQuery_temp_check_forosh: TADOQuery;
    ADOStoredProc_delete_from_temp_bank: TADOStoredProc;
    ADOStoredProc_from_temp_bank_to_bank: TADOStoredProc;
    ADOStoredProc_from_bank_to_temp_bank: TADOStoredProc;
    ADOStoredProc_delete_from_temp_check_kharid: TADOStoredProc;
    ADOStoredProc_from_temp_check_kharid_to_check_kharid: TADOStoredProc;
    ADOStoredProc_from_check_kharid_to_temp_check_kharid: TADOStoredProc;
    ADOStoredProc_delete_from_temp_sh_banki: TADOStoredProc;
    ADOStoredProc_from_temp_sh_banki_to_sh_banki: TADOStoredProc;
    ADOStoredProc_from_sh_banki_to_temp_sh_banki: TADOStoredProc;
    ADOStoredProc_delete_from_temp_check_forosh: TADOStoredProc;
    ADOStoredProc_from_temp_check_forosh_to_check_forosh: TADOStoredProc;
    ADOStoredProc_from_check_forosh_to_temp_check_forosh: TADOStoredProc;
    ADOQuery_temp_daste_checkbank_shobe_sh_hesab: TWideStringField;
    ADOQuery_temp_daste_checkdown: TWideStringField;
    ADOQuery_temp_daste_checkup: TWideStringField;
    ADOQuery_temp_daste_checktedad_barg: TFloatField;
    ADOQuery_temp_daste_checkbarg_mande: TFloatField;
    ADOQuery_temp_daste_checkbarg_keshide: TFloatField;
    ADOQuery_temp_daste_checkid: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm_sp_backup: TDm_sp_backup;

implementation

uses unt_main;

{$R *.dfm}

end.
