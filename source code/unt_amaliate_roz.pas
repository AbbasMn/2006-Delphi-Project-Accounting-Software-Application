unit unt_amaliate_roz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Grids, DBGrids, SUIDBCtrls,
  LMDControl, LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, DBCtrls, DB, dxCore, dxButtons;

type
  Tfrm_amaliate_roz = class(TForm)
    GroupBox6: TGroupBox;
    LMDSpeedButton_: TLMDSpeedButton;
    suiDBGrid1: TsuiDBGrid;
    GroupBox5: TGroupBox;
    MaskEditrooz: TMaskEdit;
    MaskEditmah: TMaskEdit;
    MaskEditsal: TMaskEdit;
    RadioGroup2: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    DBText_t_jam: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBMemo1: TDBMemo;
    DataSource1: TDataSource;
    lmdb_badi: TLMDSpeedButton;
    lmdb_gabli: TLMDSpeedButton;
    lmdb_avali: TLMDSpeedButton;
    lmdb_akharin: TLMDSpeedButton;
    dxToolButton11: TdxToolButton;
    LMDSpeedButton_1: TLMDSpeedButton;
    dxToolButton1: TdxToolButton;
    procedure find;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure delete;
    procedure LMDSpeedButton_Click(Sender: TObject);
    procedure lmdb_avaliClick(Sender: TObject);
    procedure lmdb_gabliClick(Sender: TObject);
    procedure lmdb_badiClick(Sender: TObject);
    procedure lmdb_akharinClick(Sender: TObject);
    procedure dxToolButton11Click(Sender: TObject);
    procedure LMDSpeedButton_1Click(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_amaliate_roz: Tfrm_amaliate_roz;

implementation

uses unt_main, unt_login, Taghvim, unt_datamodule1, unt_print_amaliat_roz;

{$R *.dfm}
procedure Tfrm_amaliate_roz.delete;
begin
  frm_main.ADOQ_amaliat.SQL.Text:='delete from T_amaliat where tarikh='+
  QuotedStr(trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text));
  frm_main.ADOQ_amaliat.ExecSQL;
end;
procedure Tfrm_amaliate_roz.find;
begin
  frm_main.ADOQ_amaliat.SQL.Text:='select * from T_amaliat where tarikh='+
  QuotedStr(trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text))+
  ' order by tarikh,id,time_';
  frm_main.ADOQ_amaliat.Open;
end;

procedure Tfrm_amaliate_roz.FormShow(Sender: TObject);
begin
  RadioGroup2.ItemIndex:=0;
  MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
  MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
  MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
  find;
end;

procedure Tfrm_amaliate_roz.RadioGroup2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex=0 then
  begin
      MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
      MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
      MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
      find;
  end
  else
  begin
      _taghvim.ShowModal;
       if _taghvim._str_date<>'' then
        begin
              MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
              MaskEditMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
              MaskEditRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
              find;
        end;
  end;
end;

procedure Tfrm_amaliate_roz.LMDSpeedButton_Click(Sender: TObject);
var st:pchar;
begin
find;
if frm_main.ADOQ_amaliat.RecordCount <=0 then
  MessageBox(Handle,' œ—  «—ÌŒ «‰ Œ«»Ì  ⁄„·Ì« Ì À»  ‰‘œÂ «” ',' ÊÃÂ !',MB_ok or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING )
else
begin
 st:=pchar('Õ–› ⁄„·Ì«  À»  ‘œÂ ”Ì” „ œ—  «—ÌŒ <<  '+trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text)+' >> —«  «ÌÌœ „Ì‰„«ÌÌœø');
 if   MessageBox(Handle,st,' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
 begin
  delete;
  sleep(1000);
  find;
  MessageBox(Handle,'⁄„·Ì«  À»  ‘œÂ ”Ì” „ œ—  «—ÌŒ «‰ Œ«»Ì Õ–› ê—œÌœ',' ÊÃÂ !',MB_ok or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
  frm_main.l_last_op.Caption:=' Õ–› ⁄„·Ì«  À»  ‘œÂ ”Ì” „ œ—  «—ÌŒ '+trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text);
  frm_main.sabte_amaliat(frm_main.l_last_op.Caption);
 end
 else
  MessageBox(Handle,'⁄„·Ì«  À»  ‘œÂ ”Ì” „ œ—  «—ÌŒ «‰ Œ«»Ì Õ–› ‰ê—œÌœ',' ÊÃÂ !',MB_ok or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
end;
end;

procedure Tfrm_amaliate_roz.lmdb_avaliClick(Sender: TObject);
begin
frm_main.ADOQ_amaliat.First;
end;

procedure Tfrm_amaliate_roz.lmdb_gabliClick(Sender: TObject);
begin
frm_main.ADOQ_amaliat.Prior;
end;

procedure Tfrm_amaliate_roz.lmdb_badiClick(Sender: TObject);
begin
frm_main.ADOQ_amaliat.Next;
end;

procedure Tfrm_amaliate_roz.lmdb_akharinClick(Sender: TObject);
begin
frm_main.ADOQ_amaliat.Last;
end;

procedure Tfrm_amaliate_roz.dxToolButton11Click(Sender: TObject);
begin
  frm_print_amaliat_roz.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
  frm_print_amaliat_roz.QRL_type.Caption:=DBText_t_jam.Caption;
  frm_print_amaliat_roz.QuickRep1.Preview;
end;

procedure Tfrm_amaliate_roz.LMDSpeedButton_1Click(Sender: TObject);
var st:pchar;
begin
  frm_main.ADOQ_amaliat.SQL.Text:='select * from T_amaliat';
  frm_main.ADOQ_amaliat.Open;
if frm_main.ADOQ_amaliat.RecordCount <=0 then
  MessageBox(Handle,' œ— ò· —Ê“Â«Ì ê–‘ Â ⁄„·Ì« Ì À»  ‰‘œÂ «”  ',' ÊÃÂ !',MB_ok or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING )
else
begin
 st:=pchar('Õ–› ò·ÌÂ ⁄„·Ì«  À»  ‘œÂ œ— —Ê“Â«Ì ê–‘ Â —«  «ÌÌœ „Ì‰„«ÌÌœø ');
 if   MessageBox(Handle,st,' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
 begin
  frm_main.ADOQ_amaliat.SQL.Text:='delete from T_amaliat where tarikh <'+
  QuotedStr(trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text));
  frm_main.ADOQ_amaliat.ExecSQL;
  sleep(1000);
  find;

  MessageBox(Handle,' ò·ÌÂ ⁄„·Ì«  À»  ‘œÂ œ— —Ê“Â«Ì ê–‘ Â Õ–› ê—œÌœ ',' ÊÃÂ !',MB_ok or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
  frm_main.l_last_op.Caption:=' Õ–› ò·ÌÂ ⁄„·Ì«  À»  ‘œÂ ”Ì” „ œ— —Ê“Â«Ì ﬁ»· «“'+trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text);
  frm_main.sabte_amaliat(frm_main.l_last_op.Caption);
 end
 else
  MessageBox(Handle,' ò·ÌÂ ⁄„·Ì«  À»  ‘œÂ œ— —Ê“Â«Ì ê–‘ Â Õ–› ‰ê—œÌœ',' ÊÃÂ !',MB_ok or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
end;

end;

procedure Tfrm_amaliate_roz.dxToolButton1Click(Sender: TObject);
begin
  frm_print_amaliat_roz.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
  frm_print_amaliat_roz.QRL_type.Caption:=DBText_t_jam.Caption;
  frm_print_amaliat_roz.QuickRep1.Print;
end;

end.
