unit unt_joziate_makan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton;

type
  Tfrm_joziate_makan = class(TForm)
    LMDSpeedButton23213: TLMDSpeedButton;
    DBGrid3: TDBGrid;
    DataSource1: TDataSource;
    LMDSpeedButton2: TLMDSpeedButton;
    procedure LMDSpeedButton23213Click(Sender: TObject);
    procedure LMDSpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_joziate_makan: Tfrm_joziate_makan;

implementation

uses unt_DataM_joziate_taraz, Unt_jadval_jensin_anbar, Untaddanbar,
  unt_DataModule_sod;

{$R *.dfm}

procedure Tfrm_joziate_makan.LMDSpeedButton23213Click(Sender: TObject);
begin
  Frm_jadval_jensin_anbar.ShowModal;
end;

procedure Tfrm_joziate_makan.LMDSpeedButton2Click(Sender: TObject);
begin
  frmaddanbar.ShowModal;
end;

procedure Tfrm_joziate_makan.FormShow(Sender: TObject);
begin
  DataM_joziate_taraz.ADOQ_joziate_makan.SQL.Text:='select * from t_joziate_makan order by makan ';
  DataM_joziate_taraz.ADOQ_joziate_makan.open;
end;

end.
