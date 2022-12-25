unit unt_shoe_hazine_onvan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, DB, Grids, DBGrids, SUIDBCtrls;

type
  Tfrm_shoe_hazine_onvan = class(TForm)
    GroupBox5: TGroupBox;
    suiDBGrid2: TsuiDBGrid;
    DataSource1: TDataSource;
    Label8: TLabel;
    DBText3: TDBText;
    DataSource4: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_shoe_hazine_onvan: Tfrm_shoe_hazine_onvan;

implementation

uses unt_DataM_hazineha;

{$R *.dfm}

procedure Tfrm_shoe_hazine_onvan.FormShow(Sender: TObject);
begin
  DataM_hazineha.ADOQ_jame_kole_hazineha2.SQL.Text:='select sum(geymatforosh_koli) as kole_hazineha from T_Hazine_Anjirestan ';
  DataM_hazineha.ADOQ_jame_kole_hazineha2.Open;

  DataM_hazineha.ADOQ_jame_noe_hazine.SQL.Text:='select calaname,sum(geymatforosh_koli) as kol from T_Hazine_Anjirestan group by calaname';
  DataM_hazineha.ADOQ_jame_noe_hazine.Open;
end;

end.
