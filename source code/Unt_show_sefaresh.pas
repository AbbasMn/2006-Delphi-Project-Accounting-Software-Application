unit Unt_show_sefaresh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, StdCtrls, dxCore, dxButtons, Grids, DBGrids,
  SUIDBCtrls, SUIForm, DB, SUIButton, te_controls, te_db_controls,
  LMDControl, LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton;

type
  Tfrm_show_sefaresh = class(TForm)
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    esearch: TEdit;
    suiDBGrid1: TsuiDBGrid;
    GroupBox_s_jens: TGroupBox;
    DBText5: TDBText;
    GroupBox_jens: TGroupBox;
    DBText1: TDBText;
    Label6: TLabel;
    DBText2: TDBText;
    GroupBox_geyre: TGroupBox;
    DBText3: TDBText;
    GroupBox5: TGroupBox;
    TeDBMemo2: TTeDBMemo;
    GroupBox3: TGroupBox;
    LMDSpeedButton1: TLMDSpeedButton;
    LMDSpeedButton2: TLMDSpeedButton;
    LMDSpeedButton3: TLMDSpeedButton;
    LMDSpeedButton_: TLMDSpeedButton;
    GroupBox2: TGroupBox;
    RadioGroup1: TRadioGroup;
    dxToolButton123: TdxToolButton;
    dxToolButton1: TdxToolButton;
    procedure show_sefaresh_emroz;
    procedure show_sefaresh_hardo;
    procedure LMDSpeedButton1Click(Sender: TObject);
    procedure LMDSpeedButton2Click(Sender: TObject);
    procedure type_;
    procedure show_sefaresh_anjam_shode;
    procedure show_sefaresh_anjam_nashode;
    procedure RadioGroup1Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure anjame_sefaresh;
    procedure LMDSpeedButton_Click(Sender: TObject);
    procedure LMDSpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
    procedure dxToolButton123Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_show_sefaresh: Tfrm_show_sefaresh;

implementation

uses Unt_DataModule_gozaresh_tarkibi, unt_login, unt_hazf_sefaresh,
  unt_main, unt_print_yaddasht;

{$R *.dfm}
procedure Tfrm_show_sefaresh.anjame_sefaresh;
var s:pchar;
    id_:integer;
begin
    if DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.RecordCount<=0 then
      MessageBox(Handle,'”›«—‘Ì »—«Ì «‰Ã«„ ÊÃÊœ ‰œ«—œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING )
    else
    begin
    if DataModule_gozaresh_tarkibi.ADOQuery_sefareshanjam.AsString<>'«‰Ã«„ ‰‘œ'then
         MessageBox(Handle,'”›«—‘ «‰ Œ«»Ì ﬁ»·¬ «‰Ã«„ ‘œÂ «” ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING )
    else
    begin
        s:=pchar('«‰Ã«„ ”›«—‘ << '+DataModule_gozaresh_tarkibi.ADOQuery_sefareshshakhs.AsString+' >> —«  «ÌÌœ „Ì‰„«ÌÌœ ø' );
        if MessageBox(Handle,s,' «ÌÌœ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
          begin
            if DataModule_gozaresh_tarkibi.ADOQuery_sefareshtype.AsString='a' then
            begin
              frm_main.l_last_op.Caption:=' «‰Ã«„ ”›«—‘ '+ DataModule_gozaresh_tarkibi.ADOQuery_sefareshshakhs.AsString +
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
              frm_main.l_last_op.Caption:=' «‰Ã«„ ”›«—‘ '+ DataModule_gozaresh_tarkibi.ADOQuery_sefareshshakhs.AsString +
              ' À»  ‘œÂ œ—  «—ÌŒ '+DataModule_gozaresh_tarkibi.ADOQuery_sefareshtarikh_sefaresh.AsString;

              frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' Ê  «—ÌŒ —”ÌœêÌ '+
              DataModule_gozaresh_tarkibi.ADOQuery_sefareshtarikh_residegi.AsString+' »«⁄‰Ê«‰ '+
              DataModule_gozaresh_tarkibi.ADOQuery_sefareshonvan.AsString+
              ' »« „ ‰ '+DataModule_gozaresh_tarkibi.ADOQuery_sefareshmatn.AsString);
            end;

            id_:=DataModule_gozaresh_tarkibi.ADOQuery_sefareshid.AsInteger;
            DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.sql.Text:='update t_sefaresh set anjam='+QuotedStr('«‰Ã«„ ‘œ')+
            'where id='+IntToStr(id_);
            DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.ExecSQL;

            MessageBox(Handle,'”›«—‘ «‰ Œ«»Ì «‰Ã«„ ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
          end
        else
           MessageBox(Handle,'”›«—‘ «‰ Œ«»Ì «‰Ã«„ ‰‘œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
    end;    
    end;
end;
procedure Tfrm_show_sefaresh.type_;
var s:string;
begin
 s:=DataModule_gozaresh_tarkibi.ADOQuery_sefareshtype.AsString;
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
{*************************************}
procedure Tfrm_show_sefaresh.show_sefaresh_emroz;
begin
 DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.SQL.Text:='select * from t_sefaresh where tarikh_residegi='+QuotedStr(Frm_login.Egettarikh.Text)+' and anjam='+QuotedStr('«‰Ã«„ ‰‘œ')+' order by tarikh_sefaresh,shakhs,tarikh_residegi';
 DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.Open;
 frm_print_yaddasht.QRL_type.Caption:=' ”›«—‘« Ì òÂ »«Ìœ œ—  «—ÌŒ '+Frm_login.Egettarikh.Text+' —”ÌœêÌ ‘Ê‰œ ';
 type_;
end;

procedure Tfrm_show_sefaresh.show_sefaresh_anjam_shode;
begin
 DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.SQL.Text:='select * from t_sefaresh where anjam<>'+QuotedStr('«‰Ã«„ ‰‘œ')+' order by tarikh_sefaresh,shakhs,tarikh_residegi';
 DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.Open;
 frm_print_yaddasht.QRL_type.Caption:=' ”›«—‘«  —”ÌœêÌ ‘œÂ';
 type_;
end;
procedure Tfrm_show_sefaresh.show_sefaresh_anjam_nashode;
begin
 DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.SQL.Text:='select * from t_sefaresh where anjam='+QuotedStr('«‰Ã«„ ‰‘œ')+' order by tarikh_sefaresh,shakhs,tarikh_residegi';
 DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.Open;
 frm_print_yaddasht.QRL_type.Caption:=' ”›«—‘«  —”ÌœêÌ ‰‘œÂ ';
 type_;
end;
procedure Tfrm_show_sefaresh.show_sefaresh_hardo;
begin
 DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.SQL.Text:='select * from t_sefaresh order by tarikh_sefaresh,shakhs,tarikh_residegi';
 DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.Open;
 frm_print_yaddasht.QRL_type.Caption:=' ”›«—‘«  —”ÌœêÌ ‘œÂ Ê —”ÌœêÌ ‰‘œÂ';
 type_;
end;
{***********************8888}
procedure Tfrm_show_sefaresh.LMDSpeedButton1Click(Sender: TObject);
begin
   DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.Next;
   type_;
end;

procedure Tfrm_show_sefaresh.LMDSpeedButton2Click(Sender: TObject);
begin
  DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.Prior;
  type_;
end;

procedure Tfrm_show_sefaresh.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=1 then
    show_sefaresh_anjam_nashode;
  if RadioGroup1.ItemIndex=0 then
    show_sefaresh_anjam_shode;
  if RadioGroup1.ItemIndex=2 then
    show_sefaresh_emroz;
  if RadioGroup1.ItemIndex=3 then
    show_sefaresh_hardo;
end;

procedure Tfrm_show_sefaresh.esearchChange(Sender: TObject);
begin
   DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.Locate('shakhs',esearch.Text,[loPartialKey]);
end;




procedure Tfrm_show_sefaresh.LMDSpeedButton_Click(Sender: TObject);
begin
 anjame_sefaresh;
  if RadioGroup1.ItemIndex=1 then
    show_sefaresh_anjam_nashode;
  if RadioGroup1.ItemIndex=0 then
    show_sefaresh_anjam_shode;
  if RadioGroup1.ItemIndex=2 then
    show_sefaresh_emroz;
  if RadioGroup1.ItemIndex=3 then
    show_sefaresh_hardo;
end;

procedure Tfrm_show_sefaresh.LMDSpeedButton3Click(Sender: TObject);
begin
if DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.RecordCount <=0 then
    MessageBox(Handle,'”›«—‘Ì »—«Ì Õ–› ÊÃÊœ ‰œ«—œ ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING )
 else
  frm_hazf_sefaresh.ShowModal;
end;

procedure Tfrm_show_sefaresh.FormShow(Sender: TObject);
begin
  frm_show_sefaresh.WindowState:=wsMaximized;
  esearch.Clear;
  esearch.SetFocus;
end;



procedure Tfrm_show_sefaresh.dxToolButton1Click(Sender: TObject);
begin
  frm_print_yaddasht.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
  frm_print_yaddasht.QuickRep1.Print;
end;

procedure Tfrm_show_sefaresh.dxToolButton123Click(Sender: TObject);
begin
  frm_print_yaddasht.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
  frm_print_yaddasht.QuickRep1.Preview;
end;

end.
