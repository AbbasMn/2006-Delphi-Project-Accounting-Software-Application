unit unt_hazfe_jans_az_Anbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, DBCtrls, StdCtrls, DB;

type
  Tfrm_hazfe_jans_az_Anbar = class(TForm)
    Label8: TLabel;
    DBText_name: TDBText;
    Label2: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    DBText_shakhs_sherkat: TDBText;
    Label3: TLabel;
    DBText_geymate_khaaid: TDBText;
    Label4: TLabel;
    DBText_geymate_forosh: TDBText;
    Label5: TLabel;
    Label9: TLabel;
    DBText_tedade_jozi_dar_koli: TDBText;
    Label7: TLabel;
    suibtaeed11: TsuiButton;
    L_id: TLabel;
    DataSource1: TDataSource;
    DBText2: TDBText;
    DBText4: TDBText;
    procedure suibtaeed11Click(Sender: TObject);
    procedure hazfe_nahaei;
    procedure insert_gozaresh_hazfe_jens_az_anbar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_hazfe_jans_az_Anbar: Tfrm_hazfe_jans_az_Anbar;

implementation

uses Untdmlistha, Unt_jadval_jensin_anbar, Unt_dmanbar, unt_main;

{$R *.dfm}
procedure Tfrm_hazfe_jans_az_Anbar.insert_gozaresh_hazfe_jens_az_anbar;
begin
    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(Dmlistha.ADOlistanbarforoshcalaname.AsString)+','+
    Dmlistha.ADOlistanbarforoshtedadanbar.AsString+','+
    Dmlistha.ADOlistanbarforoshcalacod.AsString+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_koli.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_jozi.AsString)+','+

    Dmlistha.ADOlistanbarforoshtedad_koli.AsString+','+
    Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString+','+
    inttostr(0)+','+

    Dmlistha.ADOlistanbarforoshtedadanbar.AsString+','+


    QuotedStr(' Õ–› ò«„· Ã‰” «“ „ò«‰ '+Dmlistha.ADOlistanbarforoshanbarname.AsString+' Ê ’›— ‘œ‰ „ÊÃÊœÌ Ã‰” œ— „ò«‰ «‰ Œ«»Ì ')+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshbarcod.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshcode_sherkati.AsString)+','+

    QuotedStr(Dmanbar.ADOanbarnamename.AsString)+','+
    QuotedStr(frm_main.LMDClock1.Digital.Caption)+','+
    QuotedStr('Õ–› Ã‰”')+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;
end;
procedure Tfrm_hazfe_jans_az_Anbar.hazfe_nahaei;
begin
  insert_gozaresh_hazfe_jens_az_anbar;

  Dmlistha.ADOlistanbarforosh.sql.Text:='delete from Tanbar_jens_kolli where id='+L_id.Caption;
  Dmlistha.ADOlistanbarforosh.ExecSQL;
  Frm_jadval_jensin_anbar.show;
  MessageBox(Handle,'Ã‰” «‰ Œ«»Ì »Â ÿÊ— ò«„· Õ–› ê—œÌœ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
  close;
end;

procedure Tfrm_hazfe_jans_az_Anbar.suibtaeed11Click(Sender: TObject);
begin
           if MessageBox(Handle,'»« Õ–› ‰Â«ÌÌ Ã‰”° „‘Œ’«  Ã‰” «‰ Œ«»Ì »Â ÿÊ— ò«„· Õ–› „Ì ê—œœ° Õ–› ‰Â«ÌÌ Ã‰” —«  «ÌÌœ „Ì ‰„«ÌÌœø',' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
             hazfe_nahaei
           else
               MessageBox(Handle,'Õ–› ‰Â«ÌÌ Ã‰” «‰Ã«„ ‰‘œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;

end.
