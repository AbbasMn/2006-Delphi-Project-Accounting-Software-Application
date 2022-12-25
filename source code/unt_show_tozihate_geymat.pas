unit unt_show_tozihate_geymat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB;

type
  Tfrm_show_tozihate_geymat = class(TForm)
    DBMemo_virayesh: TDBMemo;
    DataSource1: TDataSource;
    DBMemo_tozihate_forosh_forosh: TDBMemo;
    DBMemo_tozihate_forosh_virayesh: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_show_tozihate_geymat: Tfrm_show_tozihate_geymat;

implementation

uses unt_forosh_fishi;

{$R *.dfm}

end.
