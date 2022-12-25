unit unt_yaddasht_jadid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, SUIEdit, ExtCtrls, SUIForm, DB, DBCtrls,
  Mask, SUIMemo, te_controls, Grids, DBGrids, SUIDBCtrls;

type
  Tfrm_yaddasht_jadid = class(TForm)
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    suiButton4: TsuiButton;
    MaskEditrooz: TMaskEdit;
    MaskEditmah: TMaskEdit;
    MaskEditsal: TMaskEdit;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    E_name: TEdit;
    suiDBGrid1: TsuiDBGrid;
    GroupBox5: TGroupBox;
    TeMemo_matn: TTeMemo;
    suiButton1: TsuiButton;
    suiButton8: TsuiButton;
    suiButton2: TsuiButton;
    GroupBox6: TGroupBox;
    Label4: TLabel;
    Edit_onvan: TEdit;
    RadioGroup1: TRadioGroup;
    Label10: TLabel;
    e_cod: TEdit;
    procedure suiButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure insertyaddasht;
    function check:boolean;
    procedure suiButton2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure E_nameChange(Sender: TObject);
    procedure e_codChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_yaddasht_jadid: Tfrm_yaddasht_jadid;

implementation

uses unt_datamodule1, Taghvim, unt_login, Unt_DataModule_gozaresh_tarkibi,
  Unt_mmoshakhasat_shakhs;

{$R *.dfm}
function Tfrm_yaddasht_jadid.check:boolean;
begin
check:=true;
 if RadioGroup1.ItemIndex=0 then
  begin
  if (DataModule1.ADOQuery3shahrforoshande.AsString='') or (trim(TeMemo_matn.Text)='')or (trim(MaskEditrooz.Text)='')then
    begin
     MessageBox(Handle,'‘Œ’Ì —« òÂ Ì«œœ«‘  »Â «Ê „—»Êÿ „Ì‘ÊœÊ  «—ÌŒ Ì«œ ¬Ê—Ì Ê „ ‰ Ì«œœ«‘  »«Ìœ Ê«—œ ‘Ê‰œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
     check:=False;
    end;
 end;
  if RadioGroup1.ItemIndex=1  then
   begin
    if ((TeMemo_matn.Lines.Text)='')or (trim(MaskEditrooz.Text)='')or (trim(Edit_onvan.Text)='')then
      begin
       MessageBox(Handle,'  «—ÌŒ Ì«œ ¬Ê—Ì Ê „ ‰ Ì«œœ«‘  Ê⁄‰Ê«‰ Ì«œœ«‘  »«Ìœ Ê«—œ ‘Ê‰œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
       check:=False;
      end;
   end;
     
end;
procedure Tfrm_yaddasht_jadid.insertyaddasht;
var stype,shakhs,shahr,onvan:string;
    ps:pchar;
begin
if RadioGroup1.ItemIndex=0 then
 begin
    stype:='shakhs';
    shakhs:=DataModule1.ADOQuery3shahrforoshande.AsString;
    onvan:='œ— »«—Â ‘Œ’';
 end
  else
  begin
    stype:='geyre';
    shakhs:='';
    onvan:=trim(Edit_onvan.Text);
  end;
  DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.SQL.Text:='insert into T_yaddasht(matn,'+
                                                                                  'shakhs,tarikh_yadavary,'+
                                                                                  'tarikh_zakhire,type,mozo,anjam)'+
                                                                                   ' values('+QuotedStr(TeMemo_matn.Lines.Text)+','+
                                                                                   QuotedStr(shakhs)+','+QuotedStr(MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text)+
                                                                                   ','+QuotedStr(Frm_login.Egettarikh.Text)+','+QuotedStr(stype)+','+QuotedStr(onvan)+','+QuotedStr('«‰Ã«„ ‰‘œ')+')';
  DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.ExecSQL;

  ps:=pchar('Ì«œœ«‘  œ—  «—ÌŒ << '+Frm_login.Egettarikh.Text+' >> –ŒÌ—Â ‘œ') ;
  MessageBox(Handle,ps,' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
  TeMemo_matn.Lines.Text:='';
  MaskEditrooz.Text:='';
  MaskEditmah.Text:='';
  MaskEditsal.Text:='';
  Edit_onvan.Text:='';
end;

procedure Tfrm_yaddasht_jadid.suiButton4Click(Sender: TObject);
begin
 _Taghvim.ShowModal;
if _taghvim._str_date<>'' then
 begin
 MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
  MaskEditMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
  MaskEditRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
 end;
end;

procedure Tfrm_yaddasht_jadid.FormShow(Sender: TObject);
begin
 Frm_mmoshakhasat_shakhs.showshakhs;
 E_name.Text:='';
  RadioGroup1.ItemIndex:=1;
  MaskEditrooz.Text:='';
  MaskEditmah.Text:='';
  MaskEditsal.Text:='';
   if RadioGroup1.ItemIndex=0 then
   GroupBox3.Visible:=true
 else
   GroupBox3.Visible:=false;
end;

procedure Tfrm_yaddasht_jadid.suiButton1Click(Sender: TObject);
begin
 TeMemo_matn.Lines.Clear; 
end;

procedure Tfrm_yaddasht_jadid.suiButton8Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_yaddasht_jadid.suiButton2Click(Sender: TObject);
begin
 if check then
   insertyaddasht;
end;

procedure Tfrm_yaddasht_jadid.RadioGroup1Click(Sender: TObject);
begin
 if RadioGroup1.ItemIndex=0 then
 begin
   GroupBox3.Visible:=true;
   GroupBox6.Visible:=false;
 end
 else
 begin
   GroupBox3.Visible:=false;
   GroupBox6.Visible:=true
 end;
end;

procedure Tfrm_yaddasht_jadid.E_nameChange(Sender: TObject);
begin
  DataModule1.ADOQuery3.Locate('shahrforoshande',E_name.Text,[loPartialKey]);
end;

procedure Tfrm_yaddasht_jadid.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure Tfrm_yaddasht_jadid.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
