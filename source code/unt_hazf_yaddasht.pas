unit unt_hazf_yaddasht;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, te_controls, te_db_controls, DBCtrls, LMDControl,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, ExtCtrls, SUIForm, DB;

type
  TFrm_hazf_yaddasht = class(TForm)
    DataSource1: TDataSource;
    LMDSpeedButton3: TLMDSpeedButton;
    GroupBox5: TGroupBox;
    TeDBMemo2: TTeDBMemo;
    GroupBox_s_jens: TGroupBox;
    DBText5: TDBText;
    Label4: TLabel;
    Label9: TLabel;
    DBText9: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    GroupBox_shakhs: TGroupBox;
    Label3: TLabel;
    DBText4: TDBText;
    GroupBox_geyre: TGroupBox;
    Label7: TLabel;
    DBText8: TDBText;
    procedure hazf;
    procedure LMDSpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_hazf_yaddasht: TFrm_hazf_yaddasht;

implementation

uses Unt_DataModule_gozaresh_tarkibi, unt_show_yaddasht, unt_main;

{$R *.dfm}
procedure TFrm_hazf_yaddasht.hazf;
begin
   DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.Delete;
   MessageBox(Handle,'Ì«œœ«‘  „Ê—œ ‰Ÿ— Õ–› ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
end;

procedure TFrm_hazf_yaddasht.LMDSpeedButton3Click(Sender: TObject);
begin
 if DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.RecordCount <=0 then
    MessageBox(Handle,'Ì«œœ«‘ Ì »—«Ì Õ–› ÊÃÊœ ‰œ«—œ ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION  or MB_RIGHT or MB_RTLREADING )
 else
 begin
  if MessageBox(Handle,'Õ–› Ì«œœ«‘  —«  «ÌÌœ „Ì ‰„«ÌÌœ?',' «ÌÌœ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
  begin
  if DataModule_gozaresh_tarkibi.ADOQuery_yaddashttype.AsString='shakhs' then
            begin
              frm_main.l_last_op.Caption:='Õ–› Ì«œœ«‘  „—»Êÿ »Â '+ DataModule_gozaresh_tarkibi.ADOQuery_yaddashtshakhs.AsString +
              ' À»  ‘œÂ œ—  «—ÌŒ '+DataModule_gozaresh_tarkibi.ADOQuery_yaddashttarikh_zakhire.AsString;
              frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' Ê  «—ÌŒ —”ÌœêÌ '+DataModule_gozaresh_tarkibi.ADOQuery_yaddashttarikh_yadavary.AsString+
              ' »« „ ‰ '+DataModule_gozaresh_tarkibi.ADOQuery_yaddashtmatn.AsVariant);
            end
            else
            begin
              frm_main.l_last_op.Caption:='Õ–› Ì«œœ«‘  »« ⁄‰Ê«‰ '+ DataModule_gozaresh_tarkibi.ADOQuery_yaddashtmozo.AsString +
              ' À»  ‘œÂ œ—  «—ÌŒ '+DataModule_gozaresh_tarkibi.ADOQuery_yaddashttarikh_zakhire.AsString;
              frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' Ê  «—ÌŒ —”ÌœêÌ '+DataModule_gozaresh_tarkibi.ADOQuery_yaddashttarikh_yadavary.AsString+
              ' »« „ ‰ '+DataModule_gozaresh_tarkibi.ADOQuery_yaddashtmatn.AsVariant);
            end;

   hazf;
 if frm_show_yaddasht.RadioGroup1.ItemIndex=0 then
  begin
      frm_main.show_yaddasht_anjam_shode;
      frm_show_yaddasht.typ_yaddasht;
  end;
  if frm_show_yaddasht.RadioGroup1.ItemIndex=1 then
  begin
      frm_main.show_yaddasht_anjam_nashode;
      frm_show_yaddasht.typ_yaddasht;
  end;
  if frm_show_yaddasht.RadioGroup1.ItemIndex=2 then
  begin
      frm_main.show_yaddasht_rooz;
      frm_show_yaddasht.typ_yaddasht;
  end;
  if frm_show_yaddasht.RadioGroup1.ItemIndex=3 then
  begin
      frm_main.show_yaddasht_hardo;
      frm_show_yaddasht.typ_yaddasht;
  end;
  end;
   close;
  end;

end;

procedure TFrm_hazf_yaddasht.FormShow(Sender: TObject);
begin
   if DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.Fields[1].AsString='' then
   begin
      GroupBox_geyre.Visible:=true;
      GroupBox_shakhs.Visible:=false;
   end
   else
   begin
      GroupBox_geyre.Visible:=false;
      GroupBox_shakhs.Visible:=true;
   end;
end;

end.
