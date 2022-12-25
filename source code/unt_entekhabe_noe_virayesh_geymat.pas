unit unt_entekhabe_noe_virayesh_geymat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDControl, LMDBaseControl, LMDBaseGraphicButton,
  LMDCustomSpeedButton, LMDSpeedButton, StdCtrls;

type
  Tfrm_entekhabe_noe_virayesh_geymat = class(TForm)
    GroupBox6: TGroupBox;
    LMDSpeedButton_add1: TLMDSpeedButton;
    LMDSpeedButton_add2: TLMDSpeedButton;
    LMDSpeedButton_add: TLMDSpeedButton;
    LMDSpeedButton_add22: TLMDSpeedButton;
    procedure LMDSpeedButton_add2Click(Sender: TObject);
    procedure LMDSpeedButton_add22Click(Sender: TObject);
    procedure LMDSpeedButton_addClick(Sender: TObject);
    procedure LMDSpeedButton_add1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_entekhabe_noe_virayesh_geymat: Tfrm_entekhabe_noe_virayesh_geymat;

implementation

uses Unteditgeymatjenspas, unt_entekhbe_sherkat;

{$R *.dfm}

procedure Tfrm_entekhabe_noe_virayesh_geymat.LMDSpeedButton_add2Click(
  Sender: TObject);
begin

  frm_editgeymatjens.b_eslahe_geymate_forosh.Visible:=true;
  frm_editgeymatjens.b_eslahe_geymate_kharid.Visible:=false;
  frm_editgeymatjens.b_eslahe_geymate_forosh_koli.Visible:=true;
  frm_editgeymatjens.L_name_sherkat.Caption:=' ��� ����� ����� �� ����� ';
  frm_editgeymatjens.l_type.Caption:='jens_taki';
  frm_editgeymatjens.showanbar('');
  frm_editgeymatjens.ShowModal;
end;

procedure Tfrm_entekhabe_noe_virayesh_geymat.LMDSpeedButton_add22Click(
  Sender: TObject);
begin
  frm_editgeymatjens.b_eslahe_geymate_forosh.Visible:=true;
  frm_editgeymatjens.b_eslahe_geymate_kharid.Visible:=false;
  frm_editgeymatjens.b_eslahe_geymate_forosh_koli.Visible:=true;
    
  frm_entekhbe_sherkat.L_type.Caption:='taki';
  frm_entekhbe_sherkat.ShowModal;
end;

procedure Tfrm_entekhabe_noe_virayesh_geymat.LMDSpeedButton_addClick(
  Sender: TObject);
begin
  frm_editgeymatjens.b_eslahe_geymate_forosh.Visible:=true;
  frm_editgeymatjens.b_eslahe_geymate_kharid.Visible:=false;
  frm_editgeymatjens.b_eslahe_geymate_forosh_koli.Visible:=false;  
  
  frm_entekhbe_sherkat.L_type.Caption:='sherkat_hame_darsadi';
  frm_entekhbe_sherkat.ShowModal;
end;

procedure Tfrm_entekhabe_noe_virayesh_geymat.LMDSpeedButton_add1Click(
  Sender: TObject);
begin
  frm_editgeymatjens.b_eslahe_geymate_forosh.Visible:=true;
  frm_editgeymatjens.b_eslahe_geymate_kharid.Visible:=false;
  frm_editgeymatjens.b_eslahe_geymate_forosh_koli.Visible:=false;

  frm_editgeymatjens.L_name_sherkat.Caption:=' ��� ����� ����� �� ����� ';
  frm_editgeymatjens.l_type.Caption:='hame_darsadi';
  frm_editgeymatjens.showanbar('');
  frm_editgeymatjens.ShowModal;
end;

end.
