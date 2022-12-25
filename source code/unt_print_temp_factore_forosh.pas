unit unt_print_temp_factore_forosh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrm_print_temp_factore_forosh = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRShape18: TQRShape;
    QRShape14: TQRShape;
    QRSysData1: TQRSysData;
    QRShape13: TQRShape;
    QRLabel19: TQRLabel;
    QRLtarikh: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel_sh_factor2: TQRLabel;
    QRDBText_cod: TQRDBText;
    QRL_name_register: TQRLabel;
    QRL_adress1: TQRLabel;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRShape19: TQRShape;
    QRShape27: TQRShape;
    QRL_tarikhe_forosh: TQRLabel;
    QRL_telefhon: TQRLabel;
    QRDBText15: TQRDBText;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape9: TQRShape;
    QRShape28: TQRShape;
    QRLabel25: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRL_sh_factor: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel_tedad: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText24: TQRDBText;
    QRL_kol_bad_az_takhfif: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRExpr2: TQRExpr;
    QRShape12: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape16: TQRShape;
    QRShape20: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape15: TQRShape;
    QRDBText6: TQRDBText;
    QRShape17: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRLabel7: TQRLabel;
    QRShape21: TQRShape;
    QRLabel4: TQRLabel;
    QRShape5: TQRShape;
    QRLabel18: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel26: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_print_temp_factore_forosh: Tfrm_print_temp_factore_forosh;

implementation
uses Untdmlistha, Unt_DataModule_gozaresh_tarkibi,
  unt_gozaresh_tarkibi_mpshtari, unt_main, LMDClock, unt_DataM_final;

{$R *.dfm}

end.
