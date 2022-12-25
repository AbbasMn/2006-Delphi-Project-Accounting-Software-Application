unit unt_variz_be_sarmaye;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIButton, ExtCtrls;

type
  Tfrm_variz_be_sarmaye = class(TForm)
    Label3: TLabel;
    Label10: TLabel;
    e_mablag: TEdit;
    suiButton1: TsuiButton;
    GroupBox5: TGroupBox;
    RadioGroup11: TRadioGroup;
    E_tarikh: TEdit;
    Memo1: TMemo;
    Label7: TLabel;
    procedure e_mablagKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton1Click(Sender: TObject);
    procedure RadioGroup11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_variz_be_sarmaye: Tfrm_variz_be_sarmaye;

implementation

uses unt_main, unt_DataM_forosh, Taghvim, unt_login, unt_eslah_forosh;

{$R *.dfm}

procedure Tfrm_variz_be_sarmaye.e_mablagKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_variz_be_sarmaye.suiButton1Click(Sender: TObject);
begin
  if E_tarikh.Text='' then
  begin
     MessageBox(Handle,' «—ÌŒ Ê«—Ì“ ÊÃÂ —« Ê«—œ ‰„«ÌÌœ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
     exit;
  end;
  if (Trim(e_mablag.Text)='')or(Trim(e_mablag.Text)='0') then
  begin
     MessageBox(Handle,'„»·€ Ê«—Ì“Ì —« Ê«—œ ‰„«ÌÌœ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
     e_mablag.SetFocus;
  end
  else
  begin
        DataM_forosh.ADOQ_bank2.SQL.Text:='begin tran  insert into T_vorod_khoroj_sandogha(time_,tozih,type,tarikh,mablag,sandog)'+
        'values('+QuotedStr(frm_main.LMDClock1.Digital.Caption)+','+
        QuotedStr('”—„«ÌÂ ê–«—Ì'+' '+trim(Memo1.Text))+','+QuotedStr('Ê—ÊœÌ')+
        ','+QuotedStr(E_tarikh.Text)+','+e_mablag.Text+
        ','+QuotedStr('”—„«ÌÂ')+')'+' commit tran';
        DataM_forosh.ADOQ_bank2.ExecSQL;

        MessageBox(Handle,'ÊÃÂ ‰ﬁœ »Â << ’‰œÊﬁ ”—„«ÌÂ >> Ê«—Ì“ ê—œÌœ',' ÊÃÂ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
        e_mablag.Clear;
        Memo1.Clear;

        frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',5000);
  end;

end;

procedure Tfrm_variz_be_sarmaye.RadioGroup11Click(Sender: TObject);
begin
if RadioGroup11.ItemIndex=1 then
  Begin
    _taghvim.ShowModal;
    E_tarikh.Text:=_taghvim._str_date;
    if E_tarikh.Text='' then
      E_tarikh.Text:=Frm_login.Egettarikh.Text;
  end
  else
  E_tarikh.Text:=Frm_login.Egettarikh.Text;
end;

procedure Tfrm_variz_be_sarmaye.FormShow(Sender: TObject);
begin
  RadioGroup11.ItemIndex:=0;
  Memo1.Clear;
  e_mablag.Clear;
  E_tarikh.Text:=Frm_login.Egettarikh.Text;
end;

end.
