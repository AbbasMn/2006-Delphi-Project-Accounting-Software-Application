unit unt_joziate_hazine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton;

type
  Tfrm_joziate_hazine = class(TForm)
    DataSource1: TDataSource;
    DBGrid3: TDBGrid;
    LMDSpeedButton1: TLMDSpeedButton;
    procedure LMDSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_joziate_hazine: Tfrm_joziate_hazine;

implementation

uses unt_DataM_joziate_taraz, unt_show_hazineha;

{$R *.dfm}

procedure Tfrm_joziate_hazine.LMDSpeedButton1Click(Sender: TObject);
begin
  frm_show_hazineha.ShowModal;
end;

end.
