unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIMgr, ExtCtrls, SUIForm, SUIButton, SUISideChannel,untjens_kharid,
  DBCtrls, DB, se_controls, KsSkinForms, KsSkinButtons, KsSkinEngine,
  KsSkinPanels, StdCtrls, PDJ_XPB, PDJ_XPHD, OleCtrls,
  ShockwaveFlashObjects_TLB;
type
  Tf1 = class(TForm)
    suiFileTheme1: TsuiFileTheme;
    SeSkinForm1: TSeSkinForm;
    SeSkinEngine1: TSeSkinEngine;
    suiButton7: TsuiButton;
    Button1: TButton;
    PDJXPHeader3: TPDJXPHeader;
    PDJXPHeader2: TPDJXPHeader;
    PDJXPHeader1: TPDJXPHeader;
    PDJXPCollapsePanel2: TPDJXPCollapsePanel;
    suiButton4: TsuiButton;
    suiButton5: TsuiButton;
    PDJXPCollapsePanel3: TPDJXPCollapsePanel;
    suiButton3: TsuiButton;
    suiButton6: TsuiButton;
    PDJXPCollapsePanel1: TPDJXPCollapsePanel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f1: Tf1;

implementation

uses unt_datamodule1, unt_list_kharid, unt_forosh_property,
  unt_view_forosh_list, unt_bedeh_bestan, unt_list_pardakht_ha,
  Unt_ff1, Math, unt_ff2, unt_ff3, unt_ff4, unt_ff5, unt_ff6, unt_ff7,
  unt_ff8, unt_frm;

{$R *.dfm}
procedure Tf1.suiButton1Click(Sender: TObject);
begin
 frmjens_kharid.ShowModal;
end;


procedure Tf1.suiButton2Click(Sender: TObject);
begin
  frm_list_kharid.ShowModal;
end;

procedure Tf1.suiButton4Click(Sender: TObject);
begin
  frm_forosh_property.ShowModal;
end;

procedure Tf1.suiButton5Click(Sender: TObject);
begin
  frm_veiw_forosh_list.ShowModal;
end;

procedure Tf1.suiButton3Click(Sender: TObject);
begin
  frm_bede_bestan.ShowModal;
end;

procedure Tf1.suiButton6Click(Sender: TObject);
begin
  frm_pas.ShowModal;
end;

procedure Tf1.suiButton7Click(Sender: TObject);
begin
  frm_list_pardakht_ha.ShowModal;
end;

procedure Tf1.Button1Click(Sender: TObject);
begin
  ff1.ShowModal;
end;

end.
