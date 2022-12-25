unit unt_view_forosh_list;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, SUIDBCtrls, StdCtrls, PDJ_XPC,
  DBCtrls,PDJ_XPHD, DB,
  unt_datamodule1, SUIButton,
  SUIForm, SUIMgr;

type

   Tfrm_veiw_forosh_list = class(TForm)
    DataSource1: TDataSource;
    suiDBGrid1: TsuiDBGrid;
    procedure FormShow(Sender: TObject);
    procedure show;
  private
    { Private declarations }
  public
    { Public declarations }
    flag1:boolean;
  end;

var
  frm_veiw_forosh_list: Tfrm_veiw_forosh_list;

implementation

uses unt_datamodule2, Taghvim, unt_factor, unt_chek_factor,
  unt_chek_no_pas, unt_frm_shakhs_bedehka, Untdmlistha, unt_main;

{$R *.dfm}
procedure Tfrm_veiw_forosh_list.show;
  begin
    Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens order by shahr,kharidar';
    Dmlistha.adolistforosh.Open;
  end;

procedure Tfrm_veiw_forosh_list.FormShow(Sender: TObject);
begin
  show;
  suiDBGrid1.SetFocus;
  frm_veiw_forosh_list.WindowState:=wsMaximized;
end;

end.


















