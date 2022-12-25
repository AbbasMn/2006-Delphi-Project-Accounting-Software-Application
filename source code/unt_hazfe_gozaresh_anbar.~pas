unit unt_hazfe_gozaresh_anbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, LMDControl,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton;

type
  Tfrm_hazfe_gozaresh_anbar = class(TForm)
    GroupBox2: TGroupBox;
    RadioGroup1: TRadioGroup;
    g_sal: TGroupBox;
    Label1: TLabel;
    scsal: TDBLookupComboBox;
    g_tarikh: TGroupBox;
    RadioGroup2: TRadioGroup;
    MaskEditrooz: TMaskEdit;
    MaskEditmah: TMaskEdit;
    MaskEditsal: TMaskEdit;
    DataSource1: TDataSource;
    DBText4: TDBText;
    Label2: TLabel;
    Datasanbarname: TDataSource;
    lmdb_avali: TLMDSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure hazf_gozaresh_tarikh;
    procedure hazf_gozaresh_sal;
    procedure lmdb_avaliClick(Sender: TObject);
    procedure type_;
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_hazfe_gozaresh_anbar: Tfrm_hazfe_gozaresh_anbar;

implementation

uses unt_datamodule1, unt_login, Untdmanbarexit, Unt_dmanbar, Taghvim,
  unt_gozaresh_az_vorodi_khoroji_anbar, unt_Dm_sp_backup;

{$R *.dfm}

procedure Tfrm_hazfe_gozaresh_anbar.type_;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    g_tarikh.Visible:=true;
    g_sal.Visible:=false;
  end;

  if RadioGroup1.ItemIndex=1 then
  begin
    g_tarikh.Visible:=false;
    g_sal.Visible:=trUe;
  end;
end;

procedure Tfrm_hazfe_gozaresh_anbar.hazf_gozaresh_sal;
begin
  if Dmanbarexite.ADOanbarnamename.AsString<>'' then
    begin
      Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='delete from  T_gozaresh_vorod_va_khoroje_anbar where anbarname='+
      QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+
      ' and tarikh like '+QuotedStr(scsal.Text+'%');
      Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;

    end;
end;
///////////
procedure Tfrm_hazfe_gozaresh_anbar.hazf_gozaresh_tarikh;
var tarikh,st:string;
begin
   tarikh:=MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text;
  if Dmanbarexite.ADOanbarnamename.AsString<>'' then
    begin
      Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='delete from  T_gozaresh_vorod_va_khoroje_anbar where anbarname='+QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+
      ' and tarikh='+QuotedStr(tarikh);
      Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;
    end;
end;
//////////
////////////////

procedure Tfrm_hazfe_gozaresh_anbar.FormShow(Sender: TObject);
begin
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;

  RadioGroup1.ItemIndex:=0;
  RadioGroup2.ItemIndex:=0;

  MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
  MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
  MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];

    type_;
end;

procedure Tfrm_hazfe_gozaresh_anbar.RadioGroup2Click(Sender: TObject);
begin
 if RadioGroup2.ItemIndex =0  then
    begin
      MaskEditrooz.Enabled :=false;
      MaskEditmah.Enabled :=false;
      MaskEditsal.Enabled :=false;
      MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
      MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
      MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
    end
  else
    begin
      _Taghvim.ShowModal;
      if _taghvim._str_date<>'' then
      begin
        MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
        MaskEditMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
        MaskEditRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
      end;
    end;
end;

procedure Tfrm_hazfe_gozaresh_anbar.lmdb_avaliClick(Sender: TObject);
var s:pchar;
begin
 if RadioGroup1.ItemIndex=0 then
 begin
  s:=pchar(' Õ–›  „«„ ê“«—‘Â«Ì À»  ‘œÂ «“ Ê—Êœ/Œ—ÊÃ/Õ–› Ã‰” „ò«‰ '+Dmanbarexite.ADOanbarnamename.AsString+' —« œ—  «—ÌŒ '+MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text+'  «ÌÌœ „Ì ‰„«ÌÌœø');
  if MessageBox(Handle,s,' «ÌÌœ Õ–› ø',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=id_yes then
  begin
    Dm_sp_backup.ADOStoredProc_from_gozaresh_vorod_va_khoroje_anbar_to_gozaresh_.ExecProc;

    hazf_gozaresh_tarikh;

    Dm_sp_backup.ADOStoredProc_delete_from_Tanbar_jens_kolli_temp.ExecProc;

    frm_gozaresh_az_vorodi_khoroji_anbar.type_;
    MessageBox(Handle,'⁄„·Ì«  Õ–› ê“«—‘Â« «‰Ã«„ ê—œÌœ.',' «ÌÌœ',MB_ok or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
    close;
    close;
  end
 end
 else
 begin
  s:=pchar(' Õ–›  „«„ ê“«—‘Â«Ì À»  ‘œÂ «“ Ê—Êœ/Œ—ÊÃ/Õ–› Ã‰” „ò«‰ '+Dmanbarexite.ADOanbarnamename.AsString+' —« œ— ”«· '+scsal.text+'  «ÌÌœ „Ì ‰„«ÌÌœø');
  if MessageBox(Handle,s,' «ÌÌœ Õ–› ø',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=id_yes then
  begin
    Dm_sp_backup.ADOStoredProc_from_gozaresh_vorod_va_khoroje_anbar_to_gozaresh_.ExecProc;

    hazf_gozaresh_sal;

    Dm_sp_backup.ADOStoredProc_delete_from_Tanbar_jens_kolli_temp.ExecProc;    

    frm_gozaresh_az_vorodi_khoroji_anbar.type_;
    MessageBox(Handle,'⁄„·Ì«  Õ–› ê“«—‘Â« «‰Ã«„ ê—œÌœ.',' «ÌÌœ',MB_ok or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
    close;
  end
 end
end;

procedure Tfrm_hazfe_gozaresh_anbar.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

end.
