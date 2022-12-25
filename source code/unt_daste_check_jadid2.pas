unit unt_daste_check_jadid2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, SUIButton;

type
  Tfrm_daste_check_jadid2 = class(TForm)
    GroupBox_shomare_hesab: TGroupBox;
    DBGarshivforosh: TDBGrid;
    DataSource2: TDataSource;
    GroupBox_geyre: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    E_down: TEdit;
    E_up: TEdit;
    suiButton7: TsuiButton;
    suiButton6: TsuiButton;
    Label8: TLabel;
    esearch: TEdit;
    procedure FormShow(Sender: TObject);
    function check:boolean;
    procedure daste_check;
    procedure esearchChange(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    function exist_daste_check:boolean;
    procedure E_downKeyPress(Sender: TObject; var Key: Char);
    procedure E_upKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_daste_check_jadid2: Tfrm_daste_check_jadid2;

implementation

uses Untdmlistha;

{$R *.dfm}
function Tfrm_daste_check_jadid2.exist_daste_check:boolean;
begin
  exist_daste_check:=false;
  
  Dmlistha.ADOQuery_daste_check.SQL.Text:='select * from t_daste_check where '+
  ' bank_shobe_sh_hesab='+QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString)+
  ' and down='+QuotedStr(E_down.Text)+
  ' and up='+QuotedStr(E_up.Text);

  Dmlistha.ADOQuery_daste_check.Open;

  if Dmlistha.ADOQuery_daste_check.RecordCount >0 then
  begin
    exist_daste_check:=true;
    MessageBox(Handle,'„‘Œ’«  œ” Â çò »—«Ì ‘„«—Â Õ”«» «‰ Œ«»Ì° »« „ÕœÊœÂ ‘„«—Â »—êÂ«Ì Ê«—œ ‘œÂ ﬁ»·« Ê«—œ ‘œÂ «” ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);    
  end
end;

procedure Tfrm_daste_check_jadid2.daste_check;
var tedad:string;
begin
  tedad:=IntToStr(StrToInt(E_up.Text)-StrToInt(E_down.Text)+1);
  Dmlistha.ADOQuery_daste_check.SQL.Text:='insert into t_daste_check(bank_shobe_sh_hesab,down,up,tedad_barg,barg_mande)'+
  ' values('+QuotedStr(Dmlistha.ADOQuery_shomare_hesabe_bankibank_shobe_sh_hesab.AsString)+','+QuotedStr(E_down.Text)+','+QuotedStr(E_up.Text)+
  ','+QuotedStr(tedad)+','+QuotedStr(tedad)+')';
  Dmlistha.ADOQuery_daste_check.ExecSQL;
  MessageBox(Handle,'„‘Œ’«  œ” Â çò ÃœÌœ –ŒÌ—Â ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
  E_down.Clear;
  E_up.Clear;
end;


function Tfrm_daste_check_jadid2.check:boolean;
var s:pchar;
begin

   if (Dmlistha.ADOQuery_shomare_hesabe_banki.RecordCount=0) then
   begin
    check:=false;
    MessageBox(Handle,'‘„«—Â Õ”«» »«‰òÌ »—«Ì ’œÊ— œ” Â çò ÊÃÊœ ‰œ«—œ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
    Exit;
   end;

   if (E_down.Text='')or(E_up.Text='') then
   begin
    check:=false;
    MessageBox(Handle,'„ÕœÊœÂ ‘„«—Â Â«Ì »—êÂ Â«Ì œ” Â çò —« Ê«—œ ‰„«ÌÌœ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
    Exit;
   end
   else
    if (StrToFloat(E_down.Text)) >= (StrTofloat(E_up.Text)) then
     begin
      s:=pchar(' — Ì» ‘„«—Â Â«Ì œ” Â çò << «“ ‘„«—Â  :'+' '+E_down.Text+'   « ‘„«—Â  : '+E_up .Text+'  >>  œ—”  ‰„Ì »«‘œ');
      MessageBox(Handle,s,'Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      check:=false;
    end;
end;

procedure Tfrm_daste_check_jadid2.FormShow(Sender: TObject);
begin
  Dmlistha.ADOQuery_shomare_hesabe_banki.SQL.Text:='select * from T_shomare_hesabe_banki order by bank_shobe_sh_hesab';
  Dmlistha.ADOQuery_shomare_hesabe_banki.Open;
  esearch.Clear;
  E_down.Clear;
  E_up.Clear;

  esearch.SetFocus;
end;

procedure Tfrm_daste_check_jadid2.esearchChange(Sender: TObject);
begin
Dmlistha.ADOQuery_shomare_hesabe_banki.Locate('bank_shobe_sh_hesab',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_daste_check_jadid2.suiButton7Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_daste_check_jadid2.suiButton6Click(Sender: TObject);
begin
  if check then
    if not exist_daste_check then
    daste_check;
end;

procedure Tfrm_daste_check_jadid2.E_downKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_daste_check_jadid2.E_upKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
