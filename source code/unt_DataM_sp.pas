unit unt_DataM_sp;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataM_sp = class(TDataModule)
    ADOStoredProc_kharid: TADOStoredProc;
    ADOStoredProc_forosh: TADOStoredProc;
    ADOStoredProc_pardakht_bedehi_kharidar: TADOStoredProc;
    ADOStoredProc_pardakhte_bedehi_be_foroshande: TADOStoredProc;
    ADOStoredProc_entegale_vajh_az_sandog_be_sandog: TADOStoredProc;
    ADOStoredProc_pas_kardane_check: TADOStoredProc;
    ADOStoredProc_shakhse_jadid: TADOStoredProc;
    ADOStoredProc_vorode_motefarege: TADOStoredProc;
    ADOStoredProc_eslahe_shakhs: TADOStoredProc;
    ADOStoredProc_eslehe_vahed: TADOStoredProc;
    ADOStoredProc_eslahe_vahed_jense_anbar: TADOStoredProc;
    ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c: TADOStoredProc;
    ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod: TADOStoredProc;
    ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid: TADOStoredProc;
    ADOStoredProc_ja_be_jaeie_jens_ba_code_feli: TADOStoredProc;
    ADOStoredProc_az_majazi_be_anbar_jense_jadid: TADOStoredProc;
    ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod: TADOStoredProc;
    ADOStoredProc_az_majazi_be_anbar_jense_mojod_ba_code_jadid: TADOStoredProc;
    ADOStoredProc_afzayesh_geymat_darsadi_vase_hameye_ajnas: TADOStoredProc;
    ADOStoredProc_afzayesh_geymat_darsadi_vase_ajnas_sherkat: TADOStoredProc;
    ADOStoredProc_zayeat: TADOStoredProc;
    ADOStoredProc_eslahe_zayeat: TADOStoredProc;
    ADOStoredProc_marjoei: TADOStoredProc;
    ADOStoredProc_eslahe_marjoei: TADOStoredProc;
    ADOStoredProc_tagire_bestankar_bedehkar: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataM_sp: TDataM_sp;

implementation

uses unt_main;

{$R *.dfm}

end.
