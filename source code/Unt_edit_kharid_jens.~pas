unit Unt_edit_kharid_jens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, SUIDBCtrls,
  SUIButton, SUIForm, DB, Mask, PDJ_XPC;

type
  TFrm_edit_kharid_jens = class(TForm)
    Dscalaedit: TDataSource;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    suiBok: TsuiButton;
    suiBno: TsuiButton;
    GroupBox4: TGroupBox;
    pmolaforforosh: TPDJXPMemo;
    GroupBox1: TGroupBox;
    Lcodjens: TLabel;
    Ljensname: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    suiButton4: TsuiButton;
    RadioGroup1: TRadioGroup;
    MaskEditchrooz: TMaskEdit;
    MaskEditchmah: TMaskEdit;
    MaskEditchsal: TMaskEdit;
    suiDBGrid1: TsuiDBGrid;
    procedure getinsertparametr;
    procedure show;
    procedure clear;
    procedure FormShow(Sender: TObject);
    procedure suiBokClick(Sender: TObject);
    procedure suiBnoClick(Sender: TObject);
    procedure updatetedadjensthatexistinkol;
    procedure suiButton4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
   //////////////////////
     jensname,jenscod,anbarname,jenstedadanbar,jenstedadkharid,kharidgeymat:string;
     foroshandename,foroshandeshahr,kharidyear,kharidmonth,khariddate:string;
     kharidtarikh,kharidmol,vorodyear,vorodmonth,voroddate:string;
     vorodtarikh:string;
   /////////////////////
    { Public declarations }
  end;

var
  Frm_edit_kharid_jens: TFrm_edit_kharid_jens;

implementation

uses Unt_dmanbar, Taghvim, Untaddanbar, untjens_kharid, unt_main,
  unt_login;

{$R *.dfm}

//////////////////////////////////////
procedure TFrm_edit_kharid_jens.getinsertparametr;
var tarikh:string;
begin
  /////////////////////////////////////
  tarikh:=frmjens_kharid.MaskEditsal.Text+'/'+frmjens_kharid.MaskEditmah.Text+'/'+frmjens_kharid.MaskEditrooz.Text;
  {jensname:=frmjens_kharid.Edit1.Text;}
  jenscod:=trim(Lcodjens.Caption);
  anbarname:=Dmanbar.ADOanbarnamename.AsString;
{  jenstedadanbar:=frmjens_kharid.Edit2.Text;}
{  jenstedadkharid:=frmjens_kharid.Edit2.Text;}
{  kharidgeymat:=IntToStr(StrToInt(trim(frmjens_kharid.Edit2.Text))*strtoint(trim(frmjens_kharid.Edit3.Text)));}
 { foroshandename:=frmjens_kharid.foroshandeforanbar;
  foroshandeshahr:=frmjens_kharid.shahrforanbar; }
  kharidyear:=frmjens_kharid.MaskEditsal.Text;
  kharidmonth:=frmjens_kharid.MaskEditmah.Text;
  khariddate:=frmjens_kharid.MaskEditrooz.Text;
  kharidtarikh:=tarikh;
  kharidmol:=frmaddanbar.pmmollahezat.Text;
  vorodyear:=frmjens_kharid.MaskEditsal.Text;
  vorodmonth:=frmjens_kharid.MaskEditmah.Text;
  voroddate:=frmjens_kharid.MaskEditrooz.Text;
  vorodtarikh:=tarikh;
/////////////////////////////////////
end;
//////////////////////////////////////
procedure TFrm_edit_kharid_jens.updatetedadjensthatexistinkol;
var sttarikh:string;
begin
 sttarikh:=MaskEditchsal.Text+'/'+MaskEditchmah.Text+'/'+MaskEditchrooz.Text;
{   Dmanbar.ADOinserttoanbar.SQL.Text:='update Tanbar_jens_kolli set tedadanbar=tedadanbar+'+(trim(frmjens_kharid.Edit2.Text))+
   ',geymatkharid='+(trim(frmjens_kharid.Edit3.Text))+',tarikhedit='+QuotedStr(sttarikh)+',molahezatforosh='+QuotedStr(pmolaforforosh.text)+'where calacod='+(trim(Lcodjens.Caption));
   Dmanbar.ADOinserttoanbar.ExecSQL;}
end;
//////////////////////////////////////////


 procedure TFrm_edit_kharid_jens.clear;
 begin
   Ljensname.Caption:='';
   MaskEditchsal.Text:='';
   MaskEditchmah.Text:='';
   MaskEditchrooz.Text:='';
   
 end;

////////////////
procedure TFrm_edit_kharid_jens.show;
begin
  {Dmanbar.ADocalaforedit.SQL.Text:='select anbarname,calaname ,calacod,tedadanbar,molahezatforosh,geymatkharid,tarikhedit,molahezatgeymat,geymatforosh'+
  ' from Tanbar_jens_kolli where calaname='+QuotedStr(frmjens_kharid.Edit1.Text)+'and anbarname='+QuotedStr(frmaddanbar.dbanbar.Text)+'order by calacod';
  Dmanbar.ADocalaforedit.Open;}
end;
///////////////
procedure TFrm_edit_kharid_jens.FormShow(Sender: TObject);
begin
  Frm_edit_kharid_jens.WindowState:=wsMaximized;
  show;
end;

procedure TFrm_edit_kharid_jens.suiBokClick(Sender: TObject);
var st:pchar;
begin
  if (trim(MaskEditchsal.Text)='')then
    MessageBox(Handle,' «—ÌŒ »Â —Ê“ —”«‰Ì —«„‘Œ’ ‰„«ÌÌœ','Œÿ« !',MB_OK or MB_ICONERROR or MB_RTLREADING or MB_RIGHT)
  else
  begin
    updatetedadjensthatexistinkol;//update tedad jens that exist
    {st:=pchar('  ⁄œ«œ Ã‰” << '+frmjens_kharid.Edit1.Text+' >> Œ—Ìœ«—Ì ‘œÂ »Â  ⁄œ«œ „ÊÃÊœ œ— «‰»«— << '+frmaddanbar.dbanbar.text+' >> «÷«›Â ‘œ');
    MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);}
    getinsertparametr;
    clear;
    show;
    close;
    frmaddanbar.Close;
  end; 
end;

procedure TFrm_edit_kharid_jens.suiBnoClick(Sender: TObject);
begin
   clear;
   MessageBox(Handle,'⁄„·Ì«  «÷«›Â ‘œ‰  ⁄œ«œ Ã‰” Œ—Ìœ«—Ì ‘œÂ »Â  ⁄œ«œ „ÊÃÊœ «‰Ã«„ ‰‘œ ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
   close;
end;
procedure TFrm_edit_kharid_jens.suiButton4Click(Sender: TObject);
begin
    _Taghvim.ShowModal;
  if _taghvim._str_date<>'' then
     begin
         MaskEditchsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
         MaskEditchMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
         MaskEditchRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
      end
end;

procedure TFrm_edit_kharid_jens.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex =0  then
    begin
      suiButton4.Enabled :=false;
      MaskEditchrooz.Enabled :=false;
      MaskEditchmah.Enabled :=false;
      MaskEditchsal.Enabled :=false;
      MaskEditchrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
      MaskEditchmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
      MaskEditchsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
    end
  else
    begin
      suiButton4.Enabled :=true;
      MaskEditchrooz.Enabled :=true;
      MaskEditchmah.Enabled :=true;
      MaskEditchsal.Enabled :=true;
      suiButton4.Click;
    end;
end;

procedure TFrm_edit_kharid_jens.FormActivate(Sender: TObject);
begin
RadioGroup1.ItemIndex:=0;
suiButton4.Enabled :=false;
MaskEditchrooz.Enabled :=false;
MaskEditchmah.Enabled :=false;
MaskEditchsal.Enabled :=false;
MaskEditchrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
MaskEditchmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
MaskEditchsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
end;

end.
