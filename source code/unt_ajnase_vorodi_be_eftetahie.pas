unit unt_ajnase_vorodi_be_eftetahie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids;

type
  Tfrm_ajnase_vorodi_be_eftetahie = class(TForm)
    DBGrid3: TDBGrid;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ajnase_vorodi_be_eftetahie: Tfrm_ajnase_vorodi_be_eftetahie;

implementation

uses unt_DataM_joziate_taraz;

{$R *.dfm}

procedure Tfrm_ajnase_vorodi_be_eftetahie.FormShow(Sender: TObject);
begin
  DataM_joziate_taraz.ADOQ_ajnase_vorodi_be_eftetahie.SQL.Text:='select * from T_aezeshe_ajnase_vorodi_be_anbare_eftetahie'+
  ' order by calaname';
  DataM_joziate_taraz.ADOQ_ajnase_vorodi_be_eftetahie.Open;
end;

end.
