unit unt_DataM_final;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataM_final = class(TDataModule)
    ADOQ_t_pardakht_nagd_kharid: TADOQuery;
    ADOQ_t_pardakht_nagd_forosh: TADOQuery;
    ADOQ_T_pardakht_check_forosh: TADOQuery;
    ADOQ_T_pardakht_check_kharid: TADOQuery;
    ADOQ_t_Temp_pardakht_check_forosh: TADOQuery;
    ADOQ_t_Temp_pardakht_check_kharid: TADOQuery;
    ADOQ_jame_t_Temp_pardakht_check_kharid: TADOQuery;
    ADOQ_jame_t_Temp_pardakht_check_kharidjame_kol: TFloatField;
    ADOQ_jame_t_Temp_pardakht_check_forosh: TADOQuery;
    ADOQ_jame_bedehi_be_foroshande: TADOQuery;
    ADOQ_bedeh_be_foroshnse: TADOQuery;
    ADOQ_jame_bedehi_be_foroshandetalab_kol: TFloatField;
    ADOQ_jame_bedehi_be_foroshandebedeh_kol: TFloatField;
    ADOQ_T_jame_pardakht_check_kharid: TADOQuery;
    ADOQ_jame_t_pardakht_nagd_kharid: TADOQuery;
    ADOQ_jame_t_pardakht_nagd_kharidnagd_kol: TFloatField;
    ADOQ_T_jame_pardakht_check_kharidcheck_kol: TFloatField;
    ADOQ_jame_bede_talab_dar_kharid: TADOQuery;
    ADOQ_jame_bede_talab_dar_kharidbedeh_kol: TFloatField;
    ADOQ_jame_bede_talab_dar_kharidtalab_kol: TFloatField;
    ADOQ_jame_bedehi_be_kharidar: TADOQuery;
    ADOQ_jame_bedehi_be_kharidartalab_kol: TFloatField;
    ADOQ_jame_bedehi_be_kharidarbedeh_kol: TFloatField;
    ADOQ_bedeh_be_kharidar: TADOQuery;
    ADOQ_pass_kardan: TADOQuery;
    ADOQ_T_jame_pardakht_check_forosh: TADOQuery;
    ADOQ_jame_t_pardakht_nagd_forosh: TADOQuery;
    ADOQ_jame_bede_talab_dar_forosh: TADOQuery;
    ADOQ_jame_bede_talab_dar_foroshbedeh_kol: TFloatField;
    ADOQ_jame_bede_talab_dar_foroshtalab_kol: TFloatField;
    ADOQuery_pish_kharid: TADOQuery;
    ADOQ_g_kol_foroshha: TADOQuery;
    ADOQ_t_sh_facrorhaye_forosh: TADOQuery;
    ADOQ_bedeh_talabe_factor_forosh: TADOQuery;
    ADOQ_T_pardakht_check_forosh2: TADOQuery;
    ADOQ_t_sh_facrorhaye_forosh2: TADOQuery;
    ADOQ_t_sh_facrorhaye_forosh3: TADOQuery;
    ADOQ_bedeh_be_kharidar2: TADOQuery;
    ADOQ_bedeh_be_foroshnse2: TADOQuery;
    ADOQ_t_sh_facrorhaye_kharid: TADOQuery;
    ADOQ_T_jame_pardakht_check_foroshcheck_kol: TFloatField;
    ADOQuery_pish_kharid2: TADOQuery;
    ADOQ_takhfife_forosh: TADOQuery;
    ADOQ_takhfife_foroshsh_factor: TFloatField;
    ADOQ_takhfife_foroshcod_kharidar: TFloatField;
    ADOQ_takhfife_foroshdarsade_takhfif: TSmallintField;
    ADOQ_takhfife_foroshmablagh_takhfif: TFloatField;
    ADOQ_g_kol_foroshhag_kol_foroshha: TFloatField;
    ADOQuery_pish_kharid3: TADOQuery;
    ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol: TFloatField;
    ADOQ_g_kol_temp_foroshha: TADOQuery;
    ADOQ_g_kol_temp_foroshhag_kol_foroshha: TFloatField;
    ADOQ_jame_t_pardakht_nagd_foroshnagd_kol: TFloatField;
    ADOQ_eslahe_bedehe_tozihe_kharidar: TADOQuery;
    ADOQ_eslahe_bedehe_tozihe_kharidartarikh: TWideStringField;
    ADOQ_eslahe_bedehe_tozihe_kharidartozih: TWideStringField;
    ADOQ_eslahe_bedehe_tozihe_kharidarid: TBCDField;
    ADOQ_eslahe_bedehe_tozihe_foroshande: TADOQuery;
    ADOQ_eslahe_bedehe_tozihe_foroshandetarikh: TWideStringField;
    ADOQ_eslahe_bedehe_tozihe_foroshandetozih: TWideStringField;
    ADOQ_eslahe_bedehe_tozihe_foroshandeid: TBCDField;
    ADOQ_eslahe_bedehe_tozihe_foroshandetype: TWideStringField;
    ADOQ_eslahe_bedehe_tozihe_foroshandeshakhs: TWideStringField;
    ADOQ_eslahe_bedehe_tozihe_kharidartype: TWideStringField;
    ADOQ_eslahe_bedehe_tozihe_kharidarshakhs: TWideStringField;
    ADOQ_takhfife_foroshbedehi_az_gabl: TFloatField;
    ADOQ_jame_takhfife: TADOQuery;
    ADOQ_jame_takhfifetakhfife_kol: TFloatField;
    ADOQ_takhfife_foroshtarikh: TWideStringField;
    ADOQ_takhfife_foroshtime_: TWideStringField;
    ADOQ_takhfife_foroshid: TBCDField;
    ADOQ_takhfife_forosh2: TADOQuery;
    ADOQ_takhfife_forosh2sh_factor: TFloatField;
    ADOQ_takhfife_forosh2cod_kharidar: TFloatField;
    ADOQ_takhfife_forosh2darsade_takhfif: TSmallintField;
    ADOQ_takhfife_forosh2mablagh_takhfif: TFloatField;
    ADOQ_takhfife_forosh2bedehi_az_gabl: TFloatField;
    ADOQ_takhfife_forosh2tarikh: TWideStringField;
    ADOQ_takhfife_forosh2time_: TWideStringField;
    ADOQ_takhfife_forosh2id: TBCDField;
    ADOQ_t_sh_facrorhaye_kharidshomare: TFloatField;
    ADOQ_t_sh_facrorhaye_kharidshahrforoshande: TWideStringField;
    ADOQ_t_sh_facrorhaye_kharidtarikh: TWideStringField;
    ADOQ_t_sh_facrorhaye_kharidcode: TFloatField;
    ADOQ_t_sh_facrorhaye_kharidtime: TWideStringField;
    ADOQ_bedeh_talabe_factor_foroshbedeh: TFloatField;
    ADOQ_bedeh_talabe_factor_foroshcode: TFloatField;
    ADOQ_bedeh_talabe_factor_foroshtalab: TFloatField;
    ADOQ_bedeh_talabe_factor_foroshsh_khaid: TFloatField;
    ADOQ_bedeh_talabe_factor_foroshtarikh: TWideStringField;
    ADOQ_t_sh_facrorhaye_foroshshomare: TFloatField;
    ADOQ_t_sh_facrorhaye_foroshshahrforoshande: TWideStringField;
    ADOQ_t_sh_facrorhaye_foroshtarikh: TWideStringField;
    ADOQ_t_sh_facrorhaye_foroshcode: TFloatField;
    ADOQ_t_sh_facrorhaye_foroshtime: TWideStringField;
    ADOQuery_pish_kharid2jens: TWideStringField;
    ADOQuery_pish_kharid2tedad: TFloatField;
    ADOQuery_pish_kharid2gheymat: TFloatField;
    ADOQuery_pish_kharid2kol: TFloatField;
    ADOQuery_pish_kharid2id: TBCDField;
    ADOQuery_pish_kharid2vahed_koli: TWideStringField;
    ADOQuery_pish_kharid2vahed_jozei: TWideStringField;
    ADOQuery_pish_kharid2tedad_koli: TFloatField;
    ADOQuery_pish_kharid2geymat_koli: TFloatField;
    ADOQuery_pish_kharid2tedad_jozi_dar_koli: TFloatField;
    ADOQuery_pish_kharid2shahrforoshande: TWideStringField;
    ADOQuery_pish_kharid2sh_factor: TFloatField;
    ADOQuery_pish_kharid2tarikh: TWideStringField;
    ADOQuery_pish_kharid2code: TFloatField;
    ADOQuery_pish_kharid2teded_jozi: TFloatField;
    ADOQuery_pish_kharid2geymat_jadid: TFloatField;
    ADOQuery_pish_kharid2keraye: TFloatField;
    ADOQuery_pish_kharid2barcod: TWideStringField;
    ADOQuery_pish_kharid2code_sherkati: TWideStringField;
    ADOQuery_pish_kharid3jens: TWideStringField;
    ADOQuery_pish_kharid3tedad: TFloatField;
    ADOQuery_pish_kharid3gheymat: TFloatField;
    ADOQuery_pish_kharid3kol: TFloatField;
    ADOQuery_pish_kharid3id: TBCDField;
    ADOQuery_pish_kharid3vahed_koli: TWideStringField;
    ADOQuery_pish_kharid3vahed_jozei: TWideStringField;
    ADOQuery_pish_kharid3tedad_koli: TFloatField;
    ADOQuery_pish_kharid3geymat_koli: TFloatField;
    ADOQuery_pish_kharid3tedad_jozi_dar_koli: TFloatField;
    ADOQuery_pish_kharid3shahrforoshande: TWideStringField;
    ADOQuery_pish_kharid3sh_factor: TFloatField;
    ADOQuery_pish_kharid3tarikh: TWideStringField;
    ADOQuery_pish_kharid3code: TFloatField;
    ADOQuery_pish_kharid3teded_jozi: TFloatField;
    ADOQuery_pish_kharid3geymat_jadid: TFloatField;
    ADOQuery_pish_kharid3keraye: TFloatField;
    ADOQuery_pish_kharid3barcod: TWideStringField;
    ADOQuery_pish_kharid3code_sherkati: TWideStringField;
    ADOQ_T_pardakht_check_foroshcode: TFloatField;
    ADOQ_T_pardakht_check_foroshshomare_factor: TFloatField;
    ADOQ_T_pardakht_check_foroshmablagh_check: TFloatField;
    ADOQ_T_pardakht_check_foroshsh_check: TFloatField;
    ADOQ_T_pardakht_check_foroshsh_hesab: TWideStringField;
    ADOQ_T_pardakht_check_foroshtarikh: TWideStringField;
    ADOQ_T_pardakht_check_foroshid: TBCDField;
    ADOQ_T_pardakht_check_foroshshahrforoshande: TWideStringField;
    ADOQ_T_pardakht_check_foroshtarikh_kharid: TWideStringField;
    ADOQ_T_pardakht_check_foroshpass: TWideStringField;
    ADOQ_t_Temp_pardakht_check_foroshcode: TFloatField;
    ADOQ_t_Temp_pardakht_check_foroshshomare_factor: TFloatField;
    ADOQ_t_Temp_pardakht_check_foroshmablagh_check: TFloatField;
    ADOQ_t_Temp_pardakht_check_foroshsh_check: TFloatField;
    ADOQ_t_Temp_pardakht_check_foroshsh_hesab: TWideStringField;
    ADOQ_t_Temp_pardakht_check_foroshtarikh: TWideStringField;
    ADOQ_t_Temp_pardakht_check_foroshid: TBCDField;
    ADOQ_t_Temp_pardakht_check_foroshshahrforoshande: TWideStringField;
    ADOQ_t_Temp_pardakht_check_foroshtarikh_kharid: TWideStringField;
    ADOQ_t_Temp_pardakht_check_foroshpass: TWideStringField;
    ADOQuery_pish_kharidjens: TWideStringField;
    ADOQuery_pish_kharidtedad: TFloatField;
    ADOQuery_pish_kharidgheymat: TFloatField;
    ADOQuery_pish_kharidkol: TFloatField;
    ADOQuery_pish_kharidid: TBCDField;
    ADOQuery_pish_kharidvahed_koli: TWideStringField;
    ADOQuery_pish_kharidvahed_jozei: TWideStringField;
    ADOQuery_pish_kharidtedad_koli: TFloatField;
    ADOQuery_pish_kharidgeymat_koli: TFloatField;
    ADOQuery_pish_kharidtedad_jozi_dar_koli: TFloatField;
    ADOQuery_pish_kharidshahrforoshande: TWideStringField;
    ADOQuery_pish_kharidsh_factor: TFloatField;
    ADOQuery_pish_kharidtarikh: TWideStringField;
    ADOQuery_pish_kharidcode: TFloatField;
    ADOQuery_pish_kharidteded_jozi: TFloatField;
    ADOQuery_pish_kharidgeymat_jadid: TFloatField;
    ADOQuery_pish_kharidkeraye: TFloatField;
    ADOQuery_pish_kharidbarcod: TWideStringField;
    ADOQuery_pish_kharidcode_sherkati: TWideStringField;
    ADOQ_t_pardakht_nagd_foroshcode: TFloatField;
    ADOQ_t_pardakht_nagd_foroshshomare_factor: TFloatField;
    ADOQ_t_pardakht_nagd_foroshnagd: TFloatField;
    ADOQ_t_pardakht_nagd_foroshid: TBCDField;
    ADOQ_t_pardakht_nagd_foroshtarikh: TWideStringField;
    ADOQ_t_pardakht_nagd_kharidcode: TFloatField;
    ADOQ_t_pardakht_nagd_kharidshomare_factor: TFloatField;
    ADOQ_t_pardakht_nagd_kharidnagd: TFloatField;
    ADOQ_t_pardakht_nagd_kharidid: TBCDField;
    ADOQ_t_pardakht_nagd_kharidtarikh: TWideStringField;
    ADOQ_tozihate_forosh: TADOQuery;
    ADOQ_tozihate_foroshcode: TFloatField;
    ADOQ_tozihate_foroshshomare_factor: TFloatField;
    ADOQ_tozihate_foroshid: TBCDField;
    ADOQ_tozihate_foroshtarikh: TWideStringField;
    ADOQ_tozihate_foroshtozih: TWideStringField;
    ADOQ_tozihate_kharid: TADOQuery;
    ADOQ_tozihate_kharidcode: TFloatField;
    ADOQ_tozihate_kharidshomare_factor: TFloatField;
    ADOQ_tozihate_kharidid: TBCDField;
    ADOQ_tozihate_kharidtarikh: TWideStringField;
    ADOQ_tozihate_kharidtozih: TWideStringField;
    ADOQ_bedeh_be_kharidarcode_shakhs: TFloatField;
    ADOQ_bedeh_be_kharidarshahrforoshande: TWideStringField;
    ADOQ_bedeh_be_kharidarbedeh: TFloatField;
    ADOQ_bedeh_be_kharidartalab: TFloatField;
    ADOQ_bedeh_be_kharidar2code_shakhs: TFloatField;
    ADOQ_bedeh_be_kharidar2shahrforoshande: TWideStringField;
    ADOQ_bedeh_be_kharidar2bedeh: TFloatField;
    ADOQ_bedeh_be_kharidar2talab: TFloatField;
    ADOQ_bedeh_be_foroshnsecode_shakhs: TFloatField;
    ADOQ_bedeh_be_foroshnseshahrforoshande: TWideStringField;
    ADOQ_bedeh_be_foroshnsebedeh: TFloatField;
    ADOQ_bedeh_be_foroshnsetalab: TFloatField;
    ADOQ_bedeh_be_foroshnse2code_shakhs: TFloatField;
    ADOQ_bedeh_be_foroshnse2shahrforoshande: TWideStringField;
    ADOQ_bedeh_be_foroshnse2bedeh: TFloatField;
    ADOQ_bedeh_be_foroshnse2talab: TFloatField;
    ADOQ_bestankar_bedehkae_kharidar: TADOQuery;
    ADOQ_bestankar_bedehkae_kharidarbedehkar: TFloatField;
    ADOQ_bestankar_bedehkae_kharidarbestankar: TFloatField;
    ADOQ_bestankar_bedehkae_kharidarshahrforoshande: TWideStringField;
    ADOQ_bestankar_bedehkae_kharidartype_: TWideStringField;
    ADOQ_bestankar_bedehkae_kharidarcode_shakhs: TFloatField;
    ADOQ_bestankar_bedehkae_kharidarid: TBCDField;
    ADOQ_bestankar_bedehkae_kharidarsh_factor: TFloatField;
    ADOQ_bestankar_bedehkae_kharidartarikh: TWideStringField;
    ADOQ_bestankar_bedehkae_kharidartime_: TWideStringField;
    ADOQ_bestankar_bedehkae_foroshande: TADOQuery;
    ADOQ_bestankar_bedehkae_foroshandebedehkar: TFloatField;
    ADOQ_bestankar_bedehkae_foroshandebestankar: TFloatField;
    ADOQ_bestankar_bedehkae_foroshandeshahrforoshande: TWideStringField;
    ADOQ_bestankar_bedehkae_foroshandetype_: TWideStringField;
    ADOQ_bestankar_bedehkae_foroshandecode_shakhs: TFloatField;
    ADOQ_bestankar_bedehkae_foroshandeid: TBCDField;
    ADOQ_bestankar_bedehkae_foroshandesh_factor: TFloatField;
    ADOQ_bestankar_bedehkae_foroshandetarikh: TWideStringField;
    ADOQ_bestankar_bedehkae_foroshandetime_: TWideStringField;
    ADOQ_T_pardakht_check_kharidcode: TFloatField;
    ADOQ_T_pardakht_check_kharidshomare_factor: TFloatField;
    ADOQ_T_pardakht_check_kharidmablagh_check: TFloatField;
    ADOQ_T_pardakht_check_kharidsh_check: TFloatField;
    ADOQ_T_pardakht_check_kharidsh_hesab: TWideStringField;
    ADOQ_T_pardakht_check_kharidtarikh: TWideStringField;
    ADOQ_T_pardakht_check_kharidid: TBCDField;
    ADOQ_T_pardakht_check_kharidshahrforoshande: TWideStringField;
    ADOQ_T_pardakht_check_kharidtarikh_kharid: TWideStringField;
    ADOQ_T_pardakht_check_kharidpass: TWideStringField;
    ADOQ_t_Temp_pardakht_check_kharidcode: TFloatField;
    ADOQ_t_Temp_pardakht_check_kharidshomare_factor: TFloatField;
    ADOQ_t_Temp_pardakht_check_kharidmablagh_check: TFloatField;
    ADOQ_t_Temp_pardakht_check_kharidsh_check: TFloatField;
    ADOQ_t_Temp_pardakht_check_kharidsh_hesab: TWideStringField;
    ADOQ_t_Temp_pardakht_check_kharidtarikh: TWideStringField;
    ADOQ_t_Temp_pardakht_check_kharidid: TBCDField;
    ADOQ_t_Temp_pardakht_check_kharidshahrforoshande: TWideStringField;
    ADOQ_t_Temp_pardakht_check_kharidtarikh_kharid: TWideStringField;
    ADOQ_t_Temp_pardakht_check_kharidpass: TWideStringField;
    ADOQ_t_Temp_pardakht_check_forosh2: TADOQuery;
    ADOQ_t_Temp_pardakht_check_kharid2: TADOQuery;
    ADOQ_T_pardakht_check_kharid2: TADOQuery;
    ADOQ_T_pardakht_check_kharid2code: TFloatField;
    ADOQ_T_pardakht_check_kharid2shomare_factor: TFloatField;
    ADOQ_T_pardakht_check_kharid2mablagh_check: TFloatField;
    ADOQ_T_pardakht_check_kharid2sh_check: TFloatField;
    ADOQ_T_pardakht_check_kharid2sh_hesab: TWideStringField;
    ADOQ_T_pardakht_check_kharid2tarikh: TWideStringField;
    ADOQ_T_pardakht_check_kharid2id: TBCDField;
    ADOQ_T_pardakht_check_kharid2shahrforoshande: TWideStringField;
    ADOQ_T_pardakht_check_kharid2tarikh_kharid: TWideStringField;
    ADOQ_T_pardakht_check_kharid2pass: TWideStringField;
    ADOQ_T_pardakht_check_forosh2code: TFloatField;
    ADOQ_T_pardakht_check_forosh2shomare_factor: TFloatField;
    ADOQ_T_pardakht_check_forosh2mablagh_check: TFloatField;
    ADOQ_T_pardakht_check_forosh2sh_check: TFloatField;
    ADOQ_T_pardakht_check_forosh2sh_hesab: TWideStringField;
    ADOQ_T_pardakht_check_forosh2tarikh: TWideStringField;
    ADOQ_T_pardakht_check_forosh2id: TBCDField;
    ADOQ_T_pardakht_check_forosh2shahrforoshande: TWideStringField;
    ADOQ_T_pardakht_check_forosh2tarikh_kharid: TWideStringField;
    ADOQ_T_pardakht_check_forosh2pass: TWideStringField;
    ADOQ_t_Temp_pardakht_check_kharid2code: TFloatField;
    ADOQ_t_Temp_pardakht_check_kharid2shomare_factor: TFloatField;
    ADOQ_t_Temp_pardakht_check_kharid2mablagh_check: TFloatField;
    ADOQ_t_Temp_pardakht_check_kharid2sh_check: TFloatField;
    ADOQ_t_Temp_pardakht_check_kharid2sh_hesab: TWideStringField;
    ADOQ_t_Temp_pardakht_check_kharid2tarikh: TWideStringField;
    ADOQ_t_Temp_pardakht_check_kharid2id: TBCDField;
    ADOQ_t_Temp_pardakht_check_kharid2shahrforoshande: TWideStringField;
    ADOQ_t_Temp_pardakht_check_kharid2tarikh_kharid: TWideStringField;
    ADOQ_t_Temp_pardakht_check_kharid2pass: TWideStringField;
    ADOQ_t_Temp_pardakht_check_forosh2code: TFloatField;
    ADOQ_t_Temp_pardakht_check_forosh2shomare_factor: TFloatField;
    ADOQ_t_Temp_pardakht_check_forosh2mablagh_check: TFloatField;
    ADOQ_t_Temp_pardakht_check_forosh2sh_check: TFloatField;
    ADOQ_t_Temp_pardakht_check_forosh2sh_hesab: TWideStringField;
    ADOQ_t_Temp_pardakht_check_forosh2tarikh: TWideStringField;
    ADOQ_t_Temp_pardakht_check_forosh2id: TBCDField;
    ADOQ_t_Temp_pardakht_check_forosh2shahrforoshande: TWideStringField;
    ADOQ_t_Temp_pardakht_check_forosh2tarikh_kharid: TWideStringField;
    ADOQ_t_Temp_pardakht_check_forosh2pass: TWideStringField;
    ADOQ_t_sh_facrorhaye_forosh2shomare: TFloatField;
    ADOQ_t_sh_facrorhaye_forosh2shahrforoshande: TWideStringField;
    ADOQ_t_sh_facrorhaye_forosh2tarikh: TWideStringField;
    ADOQ_t_sh_facrorhaye_forosh2code: TFloatField;
    ADOQ_t_sh_facrorhaye_forosh2time: TWideStringField;
    procedure ADOQ_bedeh_be_foroshnseAfterScroll(DataSet: TDataSet);
    procedure ADOQ_bedeh_be_kharidarAfterScroll(DataSet: TDataSet);
    procedure ADOQ_t_Temp_pardakht_check_foroshAfterScroll(
      DataSet: TDataSet);
    procedure ADOQ_t_sh_facrorhaye_foroshAfterScroll(DataSet: TDataSet);
    procedure ADOQ_t_sh_facrorhaye_kharidAfterScroll(DataSet: TDataSet);
    procedure ADOQ_t_Temp_pardakht_check_kharidAfterScroll(
      DataSet: TDataSet);
    procedure ADOQ_t_sh_facrorhaye_forosh2AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataM_final: TDataM_final;

implementation

uses unt_datamodule1, Unt_pardakht_bedehi, unt_check_pardakhti_shoma,
  Untdmlistha, unt_bedeh_bestan, unt_factor_roz, unt_main,
  unt_pint_factor_roz, unt_pint_factor_kol_roz, unt_eslah_forosh,
  unt_eslahe_forosh_checkha, unt_eslah_kharid, unt_eslahe_kharid_checkha,
  unt_factore_kharid, unt_Dm_zayeat_marjoei,
  Unt_DataModule_gozaresh_tarkibi;

{$R *.dfm}

procedure TDataM_final.ADOQ_bedeh_be_foroshnseAfterScroll(
  DataSet: TDataSet);
begin
  if (Frm_pardakht_bedehi <>nil)and(Frm_pardakht_bedehi.Showing) then
    begin
      if ADOQ_bedeh_be_foroshnse.RecordCount >0 then
        Frm_pardakht_bedehi.Lname.Caption:=ADOQ_bedeh_be_foroshnseshahrforoshande.AsString
      else
        Frm_pardakht_bedehi.Lname.Caption:='';
    end;

end;

procedure TDataM_final.ADOQ_bedeh_be_kharidarAfterScroll(
  DataSet: TDataSet);
begin
if (frm_bede_bestan <>nil)and(frm_bede_bestan.Showing) then
  begin
    if ADOQ_bedeh_be_kharidar.RecordCount >0 then
     frm_bede_bestan.Lname.Caption:=DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString
    else
     frm_bede_bestan.Lname.Caption:='';
  end;

end;



procedure TDataM_final.ADOQ_t_Temp_pardakht_check_foroshAfterScroll(
  DataSet: TDataSet);
begin
  if (frm_eslahe_forosh_checkha<>nil)and(frm_eslahe_forosh_checkha.Showing) then
  begin
    if ADOQ_t_Temp_pardakht_check_forosh.RecordCount >0 then
    begin
     frm_eslahe_forosh_checkha.L_id_check.Caption:=ADOQ_t_Temp_pardakht_check_foroshid.AsString;
     frm_eslahe_forosh_checkha.E_shomare_hesab.Text:=ADOQ_t_Temp_pardakht_check_foroshsh_hesab.AsString;
     frm_eslahe_forosh_checkha.Edit_shomare.Text:=ADOQ_t_Temp_pardakht_check_foroshsh_check.AsString;
     frm_eslahe_forosh_checkha.Edit_mablagh.Text:=ADOQ_t_Temp_pardakht_check_foroshmablagh_check.AsString;

     frm_eslahe_forosh_checkha.E_roz.Text:=ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[9]+ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[10];
     frm_eslahe_forosh_checkha.E_mah.Text:=ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[6]+ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[7];
     frm_eslahe_forosh_checkha.E_sal.Text:=ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[1]+ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[2]+ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[3]+ADOQ_t_Temp_pardakht_check_foroshtarikh.AsString[4];
    end;
  end;
end;

procedure TDataM_final.ADOQ_t_sh_facrorhaye_foroshAfterScroll(
  DataSet: TDataSet);
begin

  if (frm_eslah_forosh<>nil)and(frm_eslah_forosh.Showing) then
  begin
  if DataM_final.ADOQ_t_sh_facrorhaye_forosh.RecordCount>0 then
  begin
    frm_eslah_forosh.aghlame_factor;
    frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;

    frm_eslah_forosh.L_sh_factor.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    frm_eslah_forosh.L_shakhs.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;

    DataM_final.ADOQ_tozihate_forosh.SQL.Text:='select * from T_tozihe_forosh where code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+
    ' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    DataM_final.ADOQ_tozihate_forosh.open;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
    ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    DataM_final.ADOQ_takhfife_forosh.Open;

    sleep(300);
end
else
  begin
    DataModule_gozaresh_tarkibi.ADO_fac_roz_show.SQL.Text:='select * from forosh_jens where shahrforoshande='+
    QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString)+
    ' and sh_factor<0';
      DataModule_gozaresh_tarkibi.ADO_fac_roz_show.Open;

    frm_eslah_forosh.L_sh_factor.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    frm_eslah_forosh.L_shakhs.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;

    DataM_final.ADOQ_tozihate_forosh.SQL.Text:='select * from T_tozihe_forosh where code<0'+
    ' and shomare_factor<0';
    DataM_final.ADOQ_tozihate_forosh.open;

    DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
    ' where cod_kharidar<0 and sh_factor<0';
    DataM_final.ADOQ_takhfife_forosh.Open;

    sleep(300);
end ;
end;
end;



procedure TDataM_final.ADOQ_t_sh_facrorhaye_kharidAfterScroll(
  DataSet: TDataSet);
begin
  if (frm_eslah_kharid<>nil)and(frm_eslah_kharid.Showing) then
  begin
    if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount>0 then
    begin
      frm_eslah_kharid.aghlame_factor;
      frm_eslah_kharid.mablagh_nagd_check_ghabli_sh_faktor;

      DataM_final.ADOQ_tozihate_kharid.SQL.Text:='select * from T_tozihe_kharid where code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString+
      ' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
      DataM_final.ADOQ_tozihate_kharid.open;

      Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye  where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
      ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
      Dmlistha.ADOmohasebe_keraye_kharid.open;
    end
    else
    begin
      frm_eslah_kharid.aghlame_factor;
      frm_eslah_kharid.mablagh_nagd_check_ghabli_sh_faktor;

      DataM_final.ADOQ_tozihate_kharid.SQL.Text:='select * from T_tozihe_kharid where code<0 and shomare_factor<0';
      DataM_final.ADOQ_tozihate_kharid.open;

      Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye  where shomare_factor<0 and code<0';
      Dmlistha.ADOmohasebe_keraye_kharid.open;
    end;

    if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount>0 then
    begin
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.SQL.Text:='select sum(geymat_kol) as kol_ from  t_marjoei where '+
      ' shakhs_sherkat='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
      ' and sh_kharid_marjoei='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.open;
    end
    else
    begin
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.SQL.Text:='select sum(geymat_kol) as kol_ from  t_marjoei where '+
      ' shakhs_sherkat='+QuotedStr('')+
      ' and sh_kharid_marjoei<0';
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.open;
    end;

    sleep(300);
  end;

  if (frm_factore_kharid<>nil)and(frm_factore_kharid.Showing) then
  begin
    frm_factore_kharid.aghlame_factor;
    frm_factore_kharid.zayeate_factor;
  end;
end;

procedure TDataM_final.ADOQ_t_Temp_pardakht_check_kharidAfterScroll(
  DataSet: TDataSet);
begin
  if (frm_eslahe_kharid_checkha<>nil)and(frm_eslahe_kharid_checkha.Showing) then
  begin
    if ADOQ_t_Temp_pardakht_check_kharid.RecordCount >0 then
    begin
     frm_eslahe_kharid_checkha.L_id_check.Caption:=ADOQ_t_Temp_pardakht_check_kharidid.AsString;
     frm_eslahe_kharid_checkha.E_shomare_hesab.Text:=ADOQ_t_Temp_pardakht_check_kharidsh_hesab.AsString;
     frm_eslahe_kharid_checkha.Edit_shomare.Text:=ADOQ_t_Temp_pardakht_check_kharidsh_check.AsString;
     frm_eslahe_kharid_checkha.Edit_mablagh.Text:=ADOQ_t_Temp_pardakht_check_kharidmablagh_check.AsString;

     frm_eslahe_kharid_checkha.E_roz.Text:=ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[9]+ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[10];
     frm_eslahe_kharid_checkha.E_mah.Text:=ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[6]+ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[7];
     frm_eslahe_kharid_checkha.E_sal.Text:=ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[1]+ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[2]+ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[3]+ADOQ_t_Temp_pardakht_check_kharidtarikh.AsString[4];
    end;
  end;
end;

procedure TDataM_final.ADOQ_t_sh_facrorhaye_forosh2AfterScroll(
  DataSet: TDataSet);
begin
  if (frm_factor_roz<>nil)and(frm_factor_roz.Showing) then
  begin
   if ADOQ_t_sh_facrorhaye_forosh2.RecordCount >0 then
   begin
    frm_factor_roz.show_ba_sh_factor2('taki');
    frm_factor_roz.facor('taki');
   end;
  end;
end;

end.
