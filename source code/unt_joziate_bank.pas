unit unt_joziate_bank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton;

type
  Tfrm_joziate_bank = class(TForm)
    DBGrid3: TDBGrid;
    DataSource1: TDataSource;
    LMDSpeedButton1: TLMDSpeedButton;
    procedure LMDSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_joziate_bank: Tfrm_joziate_bank;

implementation

uses unt_DataM_joziate_taraz, unt_search_bank;

{$R *.dfm}

procedure Tfrm_joziate_bank.LMDSpeedButton1Click(Sender: TObject);
begin
  Frm_search_bank.ShowModal;
end;

end.
