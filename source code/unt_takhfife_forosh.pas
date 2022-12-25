unit unt_takhfife_forosh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls;

type
  Tfrm_takhfife_forosh = class(TForm)
    RadioGroup_jens_type: TRadioGroup;
    g_darsad: TGroupBox;
    e_darsad: TEdit;
    Button1: TButton;
    Label1: TLabel;
    g_geymat: TGroupBox;
    Label2: TLabel;
    E_geymat: TEdit;
    Label3: TLabel;
    l_arzesh_kol: TLabel;
    l_fish: TLabel;
    procedure E_geymatKeyPress(Sender: TObject; var Key: Char);
    procedure e_darsadKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup_jens_typeClick(Sender: TObject);
    procedure typ_;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_takhfife_forosh: Tfrm_takhfife_forosh;

implementation

uses unt_pish_forosh, Untviewanbar, unt_forosh_fishi;

{$R *.dfm}
procedure Tfrm_takhfife_forosh.typ_;
begin
   if RadioGroup_jens_type.ItemIndex=0 then
 begin
  g_darsad.Visible:=true;
  e_darsad.SetFocus;
  g_geymat.Visible:=false;
 end
 else
 begin
  g_darsad.Visible:=false;
  g_geymat.Visible:=True;
  E_geymat.SetFocus;
 end;
end;


procedure Tfrm_takhfife_forosh.E_geymatKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_takhfife_forosh.e_darsadKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_takhfife_forosh.RadioGroup_jens_typeClick(Sender: TObject);
begin
  typ_;
end;

procedure Tfrm_takhfife_forosh.FormShow(Sender: TObject);
begin
 RadioGroup_jens_type.ItemIndex:=0;
 typ_;
 //e_darsad.Text:=Frm_pish_forosh.l_darsad_takhfif.Caption;
 //E_geymat.Text:=Frm_pish_forosh.l_mablagh_takhfif.Caption;

 e_darsad.Text:='';
 E_geymat.Text:='';
end;

procedure Tfrm_takhfife_forosh.Button1Click(Sender: TObject);
begin

 {if e_darsad.Text='' then
    e_darsad.Text:='0';
 if E_geymat.Text='' then
    E_geymat.Text:='0';}
    
  if RadioGroup_jens_type.ItemIndex=0 then
  begin
    if trim(e_darsad.Text)='' then
      MessageBox(Handle,'œ—’œ  Œ›Ì› —« Ê«—œ ‰„«ÌÌÌœ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
    else
    begin
      if frm_viewanbar.alamat_ashar(e_darsad.Text) then
      begin
        if l_fish.Caption='fishi' then
        begin
          frm_forosh_fishi.l_darsad_takhfif.Caption:=e_darsad.Text;
          frm_forosh_fishi.l_mablagh_takhfif.Caption:=FloatToStr(StrToFloat(l_arzesh_kol.Caption)*(StrToFloat(e_darsad.Text)/100));
        end
        else
        begin
          Frm_pish_forosh.l_darsad_takhfif.Caption:=e_darsad.Text;
          Frm_pish_forosh.l_mablagh_takhfif.Caption:=FloatToStr(StrToFloat(l_arzesh_kol.Caption)*(StrToFloat(e_darsad.Text)/100));
        end;
        close;
      end;
    end
  end
  else
  begin
    if trim(E_geymat.Text)='' then
      MessageBox(Handle,'„»·€  Œ›Ì› —« Ê«—œ ‰„«ÌÌÌœ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
    else
    begin
      if frm_viewanbar.alamat_ashar(E_geymat.Text) then
      begin
        //if StrToFloat(E_geymat.Text)<1 then
          //MessageBox(Handle,'„»·€  Œ›Ì› ‰„Ì  Ê«‰œ «“ ⁄œœ Ìò (1) ò„ — »«‘œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
        //else
        //begin
          if StrToFloat(E_geymat.Text)>StrToFloat(l_arzesh_kol.Caption) then
            MessageBox(Handle,'„»·€  Œ›Ì› ‰„Ì  Ê«‰œ «“ «—“‘ ò· «Ã‰«” »Ì‘ — »«‘œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
          else
          begin
            if l_fish.Caption='fishi' then
             begin
              frm_forosh_fishi.l_darsad_takhfif.Caption:=FloatToStr(100*(StrToFloat(E_geymat.Text)/StrToFloat(l_arzesh_kol.Caption)));
              frm_forosh_fishi.l_mablagh_takhfif.Caption:=E_geymat.Text;
            end
            else
            begin
              Frm_pish_forosh.l_mablagh_takhfif.Caption:=E_geymat.Text;
             //Frm_pish_forosh.l_darsad_takhfif.Caption:=FloatToStr(round(100*(StrToFloat(E_geymat.Text)/StrToFloat(l_arzesh_kol.Caption))));
              Frm_pish_forosh.l_darsad_takhfif.Caption:=FloatToStr(100*(StrToFloat(E_geymat.Text)/StrToFloat(l_arzesh_kol.Caption)));
            end;
            close;
          end;
        //end
      end;
    end;
 end;
end;

end.
