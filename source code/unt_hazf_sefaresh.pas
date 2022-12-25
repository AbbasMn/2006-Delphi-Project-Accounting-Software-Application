unit unt_hazf_sefaresh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIButton, SUIImagePanel, SUIGroupBox,
  Grids, DBGrids, SUIDBCtrls, SUIForm, DB, te_controls, te_db_controls,
  DBCtrls, LMDControl, LMDBaseControl, LMDBaseGraphicButton,
  LMDCustomSpeedButton, LMDSpeedButton;

type
  Tfrm_hazf_sefaresh = class(TForm)
    DataSource1: TDataSource;
    GroupBox_s_jens: TGroupBox;
    DBText5: TDBText;
    Label4: TLabel;
    Label9: TLabel;
    DBText9: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    GroupBox_jens: TGroupBox;
    DBText1: TDBText;
    Label6: TLabel;
    DBText2: TDBText;
    Label1: TLabel;
    Label3: TLabel;
    DBText4: TDBText;
    GroupBox_geyre: TGroupBox;
    Label5: TLabel;
    DBText7: TDBText;
    Label8: TLabel;
    DBText3: TDBText;
    GroupBox5: TGroupBox;
    TeDBMemo2: TTeDBMemo;
    LMDSpeedButton3: TLMDSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure delete_sefaresh;
    procedure LMDSpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_hazf_sefaresh: Tfrm_hazf_sefaresh;

implementation

uses Unt_DataModule_gozaresh_tarkibi, unt_login, Unt_show_sefaresh,
  unt_main;

{$R *.dfm}
procedure Tfrm_hazf_sefaresh.delete_sefaresh;
var name,shahr:string;
    s:pchar;
begin
 if MessageBox(Handle,'Õ–› ”›«—‘ —«  «ÌÌœ „Ì ‰„«ÌÌœ?',' «ÌÌœ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
 begin
            if DataModule_gozaresh_tarkibi.ADOQuery_sefareshtype.AsString='a' then
            begin
              frm_main.l_last_op.Caption:=' Õ–› ”›«—‘ '+ DataModule_gozaresh_tarkibi.ADOQuery_sefareshshakhs.AsString +
              ' À»  ‘œÂ œ—  «—ÌŒ '+DataModule_gozaresh_tarkibi.ADOQuery_sefareshtarikh_sefaresh.AsString;

              frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' Ê  «—ÌŒ —”ÌœêÌ '+
              DataModule_gozaresh_tarkibi.ADOQuery_sefareshtarikh_residegi.AsString+' »—«Ì Ã‰” '+
              DataModule_gozaresh_tarkibi.ADOQuery_sefareshjens.AsString+
              ' »«⁄‰Ê«‰ '+DataModule_gozaresh_tarkibi.ADOQuery_sefareshonvan.AsString+
              ' »Â  ⁄œ«œ '+DataModule_gozaresh_tarkibi.ADOQuery_sefareshtedad.AsString+
              ' »« „ ‰ '+DataModule_gozaresh_tarkibi.ADOQuery_sefareshmatn.AsString);
            end
            else
            begin
              frm_main.l_last_op.Caption:=' Õ–› ”›«—‘ '+ DataModule_gozaresh_tarkibi.ADOQuery_sefareshshakhs.AsString +
              ' À»  ‘œÂ œ—  «—ÌŒ '+DataModule_gozaresh_tarkibi.ADOQuery_sefareshtarikh_sefaresh.AsString;

              frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' Ê  «—ÌŒ —”ÌœêÌ '+
              DataModule_gozaresh_tarkibi.ADOQuery_sefareshtarikh_residegi.AsString+' »«⁄‰Ê«‰ '+
              DataModule_gozaresh_tarkibi.ADOQuery_sefareshonvan.AsString+
              ' »« „ ‰ '+DataModule_gozaresh_tarkibi.ADOQuery_sefareshmatn.AsString);
            end;
   DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.Delete;
   MessageBox(Handle,'”›«—‘ „Ê—œ ‰Ÿ— Õ–› ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
 end;
end;

procedure Tfrm_hazf_sefaresh.FormShow(Sender: TObject);
 var s:string;
begin
 s:=DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.Fields[9].AsString;
 if  (s='a')then
   begin
        GroupBox_jens.Visible:=true;
        GroupBox_geyre.Visible:=false;
   end
   else
   begin
       GroupBox_jens.Visible:=false;
       GroupBox_geyre.Visible:=true;
   end;
end;

procedure Tfrm_hazf_sefaresh.LMDSpeedButton3Click(Sender: TObject);
begin
if DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.RecordCount <=0 then
    MessageBox(Handle,'”›«—‘Ì »—«Ì Õ–› ÊÃÊœ ‰œ«—œ ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING )
 else
 begin
    delete_sefaresh;
    if frm_show_sefaresh.RadioGroup1.ItemIndex=1 then
    frm_show_sefaresh.show_sefaresh_anjam_nashode;
  if frm_show_sefaresh.RadioGroup1.ItemIndex=0 then
    frm_show_sefaresh.show_sefaresh_anjam_shode;
  if frm_show_sefaresh.RadioGroup1.ItemIndex=2 then
    frm_show_sefaresh.show_sefaresh_emroz;
  if frm_show_sefaresh.RadioGroup1.ItemIndex=3 then
    frm_show_sefaresh.show_sefaresh_hardo;
 end;
close;
end;

end.
