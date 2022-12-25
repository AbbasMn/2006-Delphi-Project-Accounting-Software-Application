unit unt_joziate_sandog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton;

type
  Tfrm_joziate_sandog = class(TForm)
    DBGrid3: TDBGrid;
    DataSource1: TDataSource;
    Label11: TLabel;
    Label1: TLabel;
    LMDSpeedButton2: TLMDSpeedButton;
    procedure LMDSpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_joziate_sandog: Tfrm_joziate_sandog;

implementation
uses unt_DataM_joziate_taraz, unt_gozaresh_az_sandog;

{$R *.dfm}

procedure Tfrm_joziate_sandog.LMDSpeedButton2Click(Sender: TObject);
begin
  Frm_gozaresh_az_sandog.ShowModal;
end;

end.
