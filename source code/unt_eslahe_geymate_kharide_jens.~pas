unit unt_eslahe_geymate_kharide_jens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, PDJ_XPC;

type
  Tfrm_eslahe_geymate_kharide_jens = class(TForm)
    GroupBox1: TGroupBox;
    Ljensname: TLabel;
    Lgeymatghabli: TLabel;
    Lcodjens: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    L_name_sherkat: TLabel;
    Label7: TLabel;
    L_kharid_jens: TLabel;
    Label5: TLabel;
    pmolaforforosh: TPDJXPMemo;
    suiBno: TsuiButton;
    suiBok: TsuiButton;
    G_gheire_darsad: TGroupBox;
    Label1: TLabel;
    Egeymatjadid: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure suiBnoClick(Sender: TObject);
    procedure suiBokClick(Sender: TObject);
    procedure EgeymatjadidChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EgeymatjadidKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_geymate_kharide_jens: Tfrm_eslahe_geymate_kharide_jens;

implementation

uses Unteditgeymatjenspas, unt_main, Unt_dmanbar;

{$R *.dfm}

procedure Tfrm_eslahe_geymate_kharide_jens.suiBnoClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_eslahe_geymate_kharide_jens.suiBokClick(Sender: TObject);
var  tarikh,cod:string;
     geymat:real;
     st:pchar;
begin
    tarikh:=frm_main.L_tarikh.Caption;
    cod:=Lcodjens.Caption;


      if (Ljensname.Caption='') or (trim(Egeymatjadid.Text)='') then
        MessageBox(Handle,'Ã‰” ° ﬁÌ„  Œ—Ìœ ÃœÌœ »—«Ì Ã‰”  »«Ìœ Ê«—œ ‘Êœ','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
      else
       begin
          geymat:=strtofloat(trim(Egeymatjadid.Text));

         st:=pchar(trim(' ﬁÌ„  Œ—Ìœ Ã‰” œ—  «—ÌŒ '+tarikh+' «“ '+' '+L_kharid_jens.Caption+' '+ ' »Â '+' '+trim(Egeymatjadid.Text)+' '+' €ÌÌ— ÅÌœ«ò—œ'));


         frm_main.l_last_op.Caption:='  €ÌÌ— ﬁÌ„  Œ—Ìœ Ã‰” '+Ljensname.Caption;

//////////////////////////////////////////////////////////////////////////////

    Dmanbar.ADOeditgeymat.SQL.Text:='begin tran update Tanbar_jens_kolli set geymatkharid='+Egeymatjadid.Text+
    ',geymat_koli=tedad_jozi_da_koli*'+Egeymatjadid.Text+
    ',molahezatgeymat='+QuotedStr(trim(pmolaforforosh.Text))+',tarikhedit='+QuotedStr(tarikh)+
    ' where id='+Lcodjens.Caption+

    '  insert into T_amaliat(tarikh,time_,amaliat)values('+QuotedStr(tarikh)+','+QuotedStr(frm_main.LMDClock1.Digital.Caption)+
    ','+QuotedStr(trim(pmolaforforosh.Text))+')'+' commit tran';
    Dmanbar.ADOeditgeymat.ExecSQL;


//////////////////////////////////////////////////////////////////////////////

          frm_editgeymatjens.showanbar('');


         Egeymatjadid.Text:='';
         MessageBox(Handle,st,' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
         Close;
       end;
end;

procedure Tfrm_eslahe_geymate_kharide_jens.EgeymatjadidChange(
  Sender: TObject);
begin
pmolaforforosh.Text:=' ﬁÌ„  Œ—Ìœ Ã‰” œ—  «—ÌŒ '+frm_main.L_tarikh.Caption+' «“ '+' '+L_kharid_jens.Caption+' '+' »Â '+' '+trim(Egeymatjadid.Text)+' '+' €ÌÌ— ÅÌœ«ò—œ';
end;

procedure Tfrm_eslahe_geymate_kharide_jens.FormShow(Sender: TObject);
begin
  L_name_sherkat.Caption:=Dmanbar.ADOeditgeymatshakhs_sherkat.AsString;
  L_kharid_jens.Caption:=Dmanbar.ADOeditgeymatgeymatkharid.AsString;

  Ljensname.Caption:=Dmanbar.ADOeditgeymatcalaname.AsString;
  Lgeymatghabli.Caption:=Dmanbar.ADOeditgeymatgeymatforosh.AsString;

  Lcodjens.Caption:=Dmanbar.ADOeditgeymatid.AsString;
end;

procedure Tfrm_eslahe_geymate_kharide_jens.EgeymatjadidKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
