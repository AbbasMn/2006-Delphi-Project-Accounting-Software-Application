unit unt_tozihat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm_tozihat = class(TForm)
    Memo1: TMemo;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    l_type_tozih: TLabel;
    l_type_factor: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure eslahe_tozihe_forosh;
    procedure eslahe_tozihe_kharid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tozihat: Tfrm_tozihat;

implementation

uses unt_DataM_final;

{$R *.dfm}
procedure Tfrm_tozihat.eslahe_tozihe_kharid;
begin
  DataM_final.ADOQ_tozihate_kharid.SQL.Text:='update T_tozihe_kharid set tozih='+QuotedStr(trim(Memo1.Text))+
  ' where code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString+
  ' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
  DataM_final.ADOQ_tozihate_kharid.ExecSQL;

  DataM_final.ADOQ_tozihate_kharid.SQL.Text:='select * from T_tozihe_kharid where code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString+
  ' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
  DataM_final.ADOQ_tozihate_kharid.open;

  MessageBox(Handle,' Ê÷ÌÕ«  ›«ò Ê— Œ—Ìœ «’·«Õ ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);   
end;

procedure Tfrm_tozihat.eslahe_tozihe_forosh;
begin
  DataM_final.ADOQ_tozihate_forosh.SQL.Text:='update T_tozihe_forosh set tozih='+QuotedStr(trim(Memo1.Text))+
  ' where code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+
  ' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
  DataM_final.ADOQ_tozihate_forosh.ExecSQL;

    DataM_final.ADOQ_tozihate_forosh.SQL.Text:='select * from T_tozihe_forosh where code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+
    ' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
    DataM_final.ADOQ_tozihate_forosh.open;  

  MessageBox(Handle,' Ê÷ÌÕ«  ›«ò Ê— ›—Ê‘ «’·«Õ ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);   
end;

procedure Tfrm_tozihat.FormShow(Sender: TObject);
begin
  if l_type_tozih.Caption='no edit' then
    Memo1.Clear;
end;

procedure Tfrm_tozihat.Button1Click(Sender: TObject);
begin
  if l_type_tozih.Caption='no edit' then
    Close
  else
  begin
    if l_type_factor.Caption='forosh' then
      eslahe_tozihe_forosh
    else
       eslahe_tozihe_kharid;
    close;
  end;

end;

procedure Tfrm_tozihat.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
end;

end.
