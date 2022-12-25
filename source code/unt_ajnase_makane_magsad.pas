unit unt_ajnase_makane_magsad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, SUIDBCtrls;

type
  Tfrm_ajnase_makane_magsad = class(TForm)
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ajnase_makane_magsad: Tfrm_ajnase_makane_magsad;

implementation

{$R *.dfm}

procedure Tfrm_ajnase_makane_magsad.FormShow(Sender: TObject);
begin
  frm_ajnase_makane_magsad.WindowState:=wsMaximized;
end;

end.
