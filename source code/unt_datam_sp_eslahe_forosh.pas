unit unt_datam_sp_eslahe_forosh;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdatam_sp_eslahe_forosh = class(TDataModule)
    ADOStoredProc_nagdi: TADOStoredProc;
    ADOStoredProc_nagdi_kharid: TADOStoredProc;
    ADOStoredProc_check_forosh: TADOStoredProc;
    ADOStoredProc_check_kharid: TADOStoredProc;
    ADOStoredProc_kharid_check_hazf: TADOStoredProc;
    ADOStoredProc_kharid_check_ezafe: TADOStoredProc;
    ADOStoredProc_eslahe_forosh_tedad: TADOStoredProc;
    ADOStoredProc_eslahe_forosh_hazf: TADOStoredProc;
    ADOStoredProc_eslahe_forosh_ezafe_jens: TADOStoredProc;
    ADOStoredProc_eslahe_kharid_tedad: TADOStoredProc;
    ADOStoredProc_eslahe_kharid_hazf: TADOStoredProc;
    ADOStoredProc_eslahe_kharid_ezafe_jens: TADOStoredProc;
    ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar: TADOStoredProc;
    ADOStoredProc_eslahe_pardakhte_bedehi_be_foroshande: TADOStoredProc;
    ADOStoredProc_eslahe_forosh_takhfif: TADOStoredProc;
    ADOStoredProc_eslahe_jens: TADOStoredProc;
    ADOStoredProc_eslahe_geymat_geymat: TADOStoredProc;
    ADOStoredProc_eslahe_kharid_keraye: TADOStoredProc;
    ADOStoredProc_forosh_check_hazf: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  datam_sp_eslahe_forosh: Tdatam_sp_eslahe_forosh;

implementation

{$R *.dfm}

end.
