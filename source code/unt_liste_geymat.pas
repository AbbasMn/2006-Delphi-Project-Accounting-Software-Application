unit unt_liste_geymat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, SUIDBCtrls, ExtCtrls;

type
  Tfrm_liste_geymat = class(TForm)
    Button1: TButton;
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_liste_geymat: Tfrm_liste_geymat;

implementation

uses Untdmlistha, unt_print_liste_geymat, unt_main;

{$R *.dfm}

procedure Tfrm_liste_geymat.Button1Click(Sender: TObject);
begin
  Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli '+
  // where anbarname='+
  //QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+
  ' order by calaname,calacod';
  Dmlistha.ADOlistanbarforosh.Open;

  frm_print_liste_geymat.QRLtarikh.Caption:=frm_main.L_tarikh.Caption;
  frm_print_liste_geymat.QuickRep1.Preview;
end;

end.
