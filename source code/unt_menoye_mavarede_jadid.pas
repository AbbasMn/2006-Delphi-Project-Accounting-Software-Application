unit unt_menoye_mavarede_jadid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxWinXPBar, dxCore, dxContainer;

type
  Tfrm_menoye_mavarede_jadid = class(TForm)
    ScrollBox1: TScrollBox;
    dxContainer4: TdxContainer;
    dxbarjadid: TdxWinXPBar;
    procedure dxbarjadidItems0Click(Sender: TObject);
    procedure dxbarjadidItems1Click(Sender: TObject);
    procedure dxbarjadidItems2Click(Sender: TObject);
    procedure dxbarjadidItems3Click(Sender: TObject);
    procedure dxbarjadidItems4Click(Sender: TObject);
    procedure dxbarjadidItems5Click(Sender: TObject);
    procedure dxbarjadidItems6Click(Sender: TObject);
    procedure dxbarjadidItems7Click(Sender: TObject);
    procedure dxbarjadidItems8Click(Sender: TObject);
    procedure dxbarjadidItems9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxContainer4Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_menoye_mavarede_jadid: Tfrm_menoye_mavarede_jadid;

implementation

uses Unt_shakhs_jadid, Unt_anbar_jadid, Unt_saljadid, unt_sandog_jadid,
  unt_add_bank, unt_daste_check_jadid, unt_add_vahed, unt_yaddasht_jadid,
  Unt_sefaresh_jadid, unt_daste_check_jadid2;

{$R *.dfm}

procedure Tfrm_menoye_mavarede_jadid.dxbarjadidItems0Click(
  Sender: TObject);
begin
 Frm_shakhs_jadid.ShowModal;
end;

procedure Tfrm_menoye_mavarede_jadid.dxbarjadidItems1Click(
  Sender: TObject);
begin
  frm_anbar_jadid.ShowModal;
end;

procedure Tfrm_menoye_mavarede_jadid.dxbarjadidItems2Click(
  Sender: TObject);
begin
  Frm_saljadid.ShowModal;
end;

procedure Tfrm_menoye_mavarede_jadid.dxbarjadidItems3Click(
  Sender: TObject);
begin
  Frm_sandog_jadid.ShowModal;
end;

procedure Tfrm_menoye_mavarede_jadid.dxbarjadidItems4Click(
  Sender: TObject);
begin
    frm_add_bank.ShowModal;
end;

procedure Tfrm_menoye_mavarede_jadid.dxbarjadidItems5Click(
  Sender: TObject);
begin
   frm_daste_check_jadid.ShowModal;
end;

procedure Tfrm_menoye_mavarede_jadid.dxbarjadidItems6Click(
  Sender: TObject);
begin
 Frm_add_vahed.ShowModal;
end;

procedure Tfrm_menoye_mavarede_jadid.dxbarjadidItems7Click(
  Sender: TObject);
begin
  frm_yaddasht_jadid.ShowModal; 
end;

procedure Tfrm_menoye_mavarede_jadid.dxbarjadidItems8Click(
  Sender: TObject);
begin
 Frm_sefaresh_jadid.ShowModal;
end;

procedure Tfrm_menoye_mavarede_jadid.dxbarjadidItems9Click(
  Sender: TObject);
begin
   frm_daste_check_jadid2.ShowModal;
end;

procedure Tfrm_menoye_mavarede_jadid.FormShow(Sender: TObject);
begin
  frm_menoye_mavarede_jadid.Height:=dxContainer4.height+35;
end;

procedure Tfrm_menoye_mavarede_jadid.dxContainer4Resize(Sender: TObject);
begin
  frm_menoye_mavarede_jadid.Height:=dxContainer4.height+35;
end;

end.
