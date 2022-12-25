unit unt_show_yaddasht;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, te_controls, te_db_controls, DBCtrls, ExtCtrls,
  dxCore, dxButtons, Grids, DBGrids, SUIDBCtrls, LMDControl,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, SUIForm, DB;

type
  Tfrm_show_yaddasht = class(TForm)
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    esearch: TEdit;
    GroupBox2: TGroupBox;
    RadioGroup1: TRadioGroup;
    suiDBGrid1: TsuiDBGrid;
    GroupBox_s_jens: TGroupBox;
    DBText5: TDBText;
    GroupBox_shakhs: TGroupBox;
    DBText1: TDBText;
    GroupBox_geyre: TGroupBox;
    DBText3: TDBText;
    GroupBox3: TGroupBox;
    LMDSpeedButton1: TLMDSpeedButton;
    LMDSpeedButton2: TLMDSpeedButton;
    LMDSpeedButton3: TLMDSpeedButton;
    LMDSpeedButton_: TLMDSpeedButton;
    GroupBox5: TGroupBox;
    TeDBMemo2: TTeDBMemo;
    dxToolButton123: TdxToolButton;
    dxToolButton1: TdxToolButton;
    procedure LMDSpeedButton1Click(Sender: TObject);
    procedure LMDSpeedButton2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure typ_yaddasht;
    procedure anjame_yaddasht;
    procedure LMDSpeedButton_Click(Sender: TObject);
    procedure LMDSpeedButton3Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxToolButton123Click(Sender: TObject);

    procedure dxToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_show_yaddasht: Tfrm_show_yaddasht;

implementation

uses Unt_DataModule_gozaresh_tarkibi, unt_main, unt_hazf_yaddasht,
  unt_print_sefaresh, unt_login;

{$R *.dfm}
procedure Tfrm_show_yaddasht.anjame_yaddasht;
var s:pchar;
    id_:integer;
begin
    if DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.RecordCount<=0 then
      MessageBox(Handle,'��������  ���� ����� ���� �����','���� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING )
    else
    begin
    if DataModule_gozaresh_tarkibi.ADOQuery_yaddashtanjam.AsString<>'����� ���'then
         MessageBox(Handle,'������� ������� ���� ����� ��� ���','���� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING )
    else
    begin
        s:=pchar('����� ������� �� ����� �������� �' );
        if MessageBox(Handle,s,'����� !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
          begin
            if DataModule_gozaresh_tarkibi.ADOQuery_yaddashttype.AsString='shakhs' then
            begin
              frm_main.l_last_op.Caption:=' ����� ������� ����� �� '+ DataModule_gozaresh_tarkibi.ADOQuery_yaddashtshakhs.AsString +
              ' ��� ��� �� ����� '+DataModule_gozaresh_tarkibi.ADOQuery_yaddashttarikh_zakhire.AsString;
              frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' � ����� ���ϐ� '+DataModule_gozaresh_tarkibi.ADOQuery_yaddashttarikh_yadavary.AsString+
              ' �� ��� '+DataModule_gozaresh_tarkibi.ADOQuery_yaddashtmatn.AsVariant);
            end
            else
            begin
              frm_main.l_last_op.Caption:=' ����� ������� �� ����� '+ DataModule_gozaresh_tarkibi.ADOQuery_yaddashtmozo.AsString +
              ' ��� ��� �� ����� '+DataModule_gozaresh_tarkibi.ADOQuery_yaddashttarikh_zakhire.AsString;
              frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' � ����� ���ϐ� '+DataModule_gozaresh_tarkibi.ADOQuery_yaddashttarikh_yadavary.AsString+
              ' �� ��� '+DataModule_gozaresh_tarkibi.ADOQuery_yaddashtmatn.AsVariant);
            end;
            
              id_:=DataModule_gozaresh_tarkibi.ADOQuery_yaddashtid.AsVariant;
              DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.SQL.Text:='update T_yaddasht set anjam='+QuotedStr('����� ��')+' where id='+inttostr(id_);
              DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.ExecSQL;


            MessageBox(Handle,'������� ������� ����� ��','���� !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
          end
        else
           MessageBox(Handle,'������� ������� ����� ���','���� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
    end;    
    end;

end;
procedure  Tfrm_show_yaddasht.typ_yaddasht;
begin
  { if DataModule_gozaresh_tarkibi.ADOQuery_yaddashttype.AsString='' then
   begin
      GroupBox_geyre.Visible:=true;
      GroupBox_shakhs.Visible:=false;
   end
   else
   begin
      GroupBox_geyre.Visible:=false;
      GroupBox_shakhs.Visible:=true;
   end; }
end;

procedure Tfrm_show_yaddasht.LMDSpeedButton1Click(Sender: TObject);
begin
 DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.Next;
 typ_yaddasht;
end;

procedure Tfrm_show_yaddasht.LMDSpeedButton2Click(Sender: TObject);
begin
 DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.Prior;
 typ_yaddasht;
end;

procedure Tfrm_show_yaddasht.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then
  begin
      frm_main.show_yaddasht_anjam_shode;
      typ_yaddasht;
  end;
  if RadioGroup1.ItemIndex=1 then
  begin
      frm_main.show_yaddasht_anjam_nashode;
      typ_yaddasht;
  end;
  if RadioGroup1.ItemIndex=2 then
  begin
      frm_main.show_yaddasht_rooz;
      typ_yaddasht;
  end;
  if RadioGroup1.ItemIndex=3 then
  begin
      frm_main.show_yaddasht_hardo;
      typ_yaddasht;
  end;
end;

procedure Tfrm_show_yaddasht.LMDSpeedButton_Click(Sender: TObject);
begin
  anjame_yaddasht;
   if RadioGroup1.ItemIndex=0 then
  begin
      frm_main.show_yaddasht_anjam_shode;
      typ_yaddasht;
  end;
  if RadioGroup1.ItemIndex=1 then
  begin
      frm_main.show_yaddasht_anjam_nashode;
      typ_yaddasht;
  end;
  if RadioGroup1.ItemIndex=2 then
  begin
      frm_main.show_yaddasht_rooz;
      typ_yaddasht;
  end;
  if RadioGroup1.ItemIndex=3 then
  begin
      frm_main.show_yaddasht_hardo;
      typ_yaddasht;
  end;
end;

procedure Tfrm_show_yaddasht.LMDSpeedButton3Click(Sender: TObject);
begin
 if DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.RecordCount <=0 then
    MessageBox(Handle,'�������� ���� ��� ���� ����� ','���� !',MB_OK or MB_ICONEXCLAMATION  or MB_RIGHT or MB_RTLREADING )
 else
  Frm_hazf_yaddasht.ShowModal;
end;

procedure Tfrm_show_yaddasht.esearchChange(Sender: TObject);
begin
 DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.Locate('mozo',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_show_yaddasht.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frm_main.show_yaddasht_rooz;
end;

procedure Tfrm_show_yaddasht.FormShow(Sender: TObject);
begin
  frm_show_yaddasht.WindowState:=wsMaximized;
  esearch.Clear;
  esearch.SetFocus;  
end;

procedure Tfrm_show_yaddasht.dxToolButton123Click(Sender: TObject);
begin
  frm_print_sefaresh.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
  frm_print_sefaresh.QuickRep1.Preview;
end;



procedure Tfrm_show_yaddasht.dxToolButton1Click(Sender: TObject);
begin
  frm_print_sefaresh.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
  frm_print_sefaresh.QuickRep1.Print;
end;



end.
