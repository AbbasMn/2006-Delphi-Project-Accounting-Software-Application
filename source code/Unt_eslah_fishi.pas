unit Unt_eslah_fishi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIButton;

type
  Tfrm_eslah_fishi = class(TForm)
    L_jozi: TLabel;
    L_koli: TLabel;
    e_tedad_jozi: TEdit;
    e_tedad_koli: TEdit;
    Label1: TLabel;
    e_geymat: TEdit;
    suiButton6: TsuiButton;
    l_id: TLabel;
    l_jozi_dar_koli: TLabel;
    L_jozi_dar_koli3: TLabel;
    L_jozi_dar_koli2: TLabel;
    L_jozi_dar_koli1: TLabel;
    procedure e_tedad_joziKeyPress(Sender: TObject; var Key: Char);
    procedure e_tedad_koliKeyPress(Sender: TObject; var Key: Char);
    procedure e_geymatKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah_fishi: Tfrm_eslah_fishi;

implementation

uses Unt_DataModule_gozaresh_tarkibi, unt_forosh_fishi, Untdmanbarexit;

{$R *.dfm}

procedure Tfrm_eslah_fishi.e_tedad_joziKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_fishi.e_tedad_koliKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_fishi.e_geymatKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_fishi.suiButton6Click(Sender: TObject);
var t_koli,t_jozi,t_jozi_dar_koli,temp:real;
begin

  if e_tedad_koli.Visible=false then
  begin
    if (trim(e_tedad_jozi.Text)='') or (trim(e_geymat.Text)='') then
    begin
      MessageBox(Handle,'  ⁄œ«œ Ã“∆Ì Ê ﬁÌ„  Ê«Õœ Ã‰” »«Ìœ Ê«—œ ‘Ê‰œ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
      exit;
    end;

    Dmanbarexite.ADOanbarcala2.SQL.Text:=' select * from  Tanbar_jens_kolli where calaname='+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshjens.AsString)+
    ' and anbarname='+QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshanbarname.AsString)+
    ' and calacod='+DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshcalacod.AsString;
    Dmanbarexite.ADOanbarcala2.Open;

    if StrToFloat(trim(e_tedad_jozi.Text))>Dmanbarexite.ADOanbarcala2tedadanbar.AsFloat then
    begin
      MessageBox(Handle,pchar('  ⁄œ«œ Ã“∆Ì Ê«—œ ‘œÂ° «“  ⁄œ«œ Ã“∆Ì „ÊÃÊœ= '+FloatToStr(Dmanbarexite.ADOanbarcala2tedadanbar.AsFloat)+' »Ì‘ — „Ì »«‘œ'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
      exit;
    end;

    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:=' update forosh_temp set geymat_vahed='+
    trim(e_geymat.Text)+',tedad_kol='+trim(e_tedad_jozi.Text)+',tedad='+trim(e_tedad_jozi.Text)+
    ',geymat_jens='+FloatToStr(StrToFloat(trim(e_tedad_jozi.Text))*StrToFloat(trim(e_geymat.Text)))+
    ' where id='+l_id.Caption;
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;

    frm_forosh_fishi.show_pish_forosh;
    Close;
  end

  else
  begin
    if (trim(e_tedad_jozi.Text)='') or (trim(e_geymat.Text)='') or(trim(e_tedad_koli.Text)='') then
    begin
      MessageBox(Handle,' ⁄œ«œ ò·Ì°  ⁄œ«œ Ã“∆Ì Ê ﬁÌ„  Ê«Õœ Ã‰” »«Ìœ Ê«—œ ‘Ê‰œ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
      exit;
    end;


    Dmanbarexite.ADOanbarcala2.SQL.Text:=' select * from  Tanbar_jens_kolli where calaname='+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshjens.AsString)+
    ' and anbarname='+QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshanbarname.AsString)+
    ' and calacod='+DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshcalacod.AsString;
    Dmanbarexite.ADOanbarcala2.Open;

    if StrToFloat(trim(e_tedad_koli.Text))>Dmanbarexite.ADOanbarcala2tedad_koli.AsFloat then
    begin
      MessageBox(Handle,pchar('  ⁄œ«œ ò·Ì Ê«—œ ‘œÂ° «“  ⁄œ«œ ò·Ì „ÊÃÊœ= '+FloatToStr(Dmanbarexite.ADOanbarcala2tedad_koli.AsFloat)+' »Ì‘ — „Ì »«‘œ'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
      exit;
    end;

    t_koli:=StrToFloat(trim(e_tedad_koli.Text));
    t_jozi_dar_koli:=StrToFloat(l_jozi_dar_koli.Caption);
    t_jozi:=StrToFloat(trim(e_tedad_jozi.Text));

    t_jozi:=t_jozi+(t_koli*t_jozi_dar_koli);

    if t_jozi>Dmanbarexite.ADOanbarcala2tedadanbar.AsFloat then
    begin
      MessageBox(Handle,pchar('  ⁄œ«œ Ê«—œ ‘œÂ° «“  ⁄œ«œ  „ÊÃÊœ= '+FloatToStr(Dmanbarexite.ADOanbarcala2tedadanbar.AsFloat)+' »Ì‘ — „Ì »«‘œ'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
      exit;
    end;



    temp:=t_jozi;

    t_koli:=int(t_jozi/t_jozi_dar_koli);

    t_jozi:=t_jozi-(t_koli*t_jozi_dar_koli);

    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:=' update forosh_temp set geymat_vahed='+
    trim(e_geymat.Text)+',tedad_kol='+FloatToStr(temp)+',tedad='+FloatToStr(t_jozi)+
    ',geymat_jens='+FloatToStr(temp*StrToFloat(trim(e_geymat.Text)))+',tedad_koli='+FloatToStr(t_koli)+
    ' where id='+l_id.Caption;
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;

    frm_forosh_fishi.show_pish_forosh;
    Close;    

  end;
end;

end.
