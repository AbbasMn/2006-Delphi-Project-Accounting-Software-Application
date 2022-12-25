unit unt_pint_factor_kol_roz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrm_pint_factor_kol_roz = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRShape18: TQRShape;
    QRShape14: TQRShape;
    QRSysData1: TQRSysData;
    QRShape13: TQRShape;
    QRLabel19: TQRLabel;
    QRLtarikh: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape6: TQRShape;
    QRShape19: TQRShape;
    QRShape27: TQRShape;
    QRDBText19: TQRDBText;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel_tedad: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape9: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText_cod: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel17: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
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
    QRDBText12: TQRDBText;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRLabel18: TQRLabel;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRShape21: TQRShape;
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRDBText20: TQRDBText;
    QRL_name_register: TQRLabel;
    QRL_adress1: TQRLabel;
    QRL_telefhon: TQRLabel;
    QRLabel26: TQRLabel;
    QRL_bedeh_roz: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel_jame_pardakhtha: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pint_factor_kol_roz: Tfrm_pint_factor_kol_roz;

implementation

uses unt_factor_roz, Untdmlistha, Unt_DataModule_gozaresh_tarkibi,
  unt_gozaresh_tarkibi_mpshtari, unt_main, LMDClock;

{$R *.dfm}

end.
