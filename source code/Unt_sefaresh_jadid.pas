unit Unt_sefaresh_jadid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, te_controls, ExtCtrls, DBCtrls, Mask, SUIButton,
  SUIForm, DB, Grids, DBGrids, SUIDBCtrls;

type
  TFrm_sefaresh_jadid = class(TForm)
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    suiButton4: TsuiButton;
    MaskEditrooz: TMaskEdit;
    MaskEditmah: TMaskEdit;
    MaskEditsal: TMaskEdit;
    GroupBox_s_jens: TGroupBox;
    Label6: TLabel;
    RadioGroup_s_type: TRadioGroup;
    GroupBox_s_anbar: TGroupBox;
    GroupBox_s_jadid: TGroupBox;
    Label2: TLabel;
    Edit_jens_jadid: TEdit;
    Edit_tedad: TEdit;
    GroupBox5: TGroupBox;
    TeMemo_matn: TTeMemo;
    suiButton1: TsuiButton;
    suiButton8: TsuiButton;
    suiButton2: TsuiButton;
    GroupBox_s_geyre: TGroupBox;
    Label4: TLabel;
    Edit_onvan: TEdit;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    suiDBGrid1: TsuiDBGrid;
    E_name: TEdit;
    RadioGroup_noe_sefaresh: TRadioGroup;
    Button1: TButton;
    l_jans_name: TLabel;
    Label10: TLabel;
    e_cod: TEdit;
    procedure RadioGroup_s_typeClick(Sender: TObject);
    procedure showjens;
    procedure FormShow(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure RadioGroup_noe_sefareshClick(Sender: TObject);
    function check:boolean;
    procedure suiButton2Click(Sender: TObject);
    procedure insert_sefaresh;
    procedure Edit_tedadKeyPress(Sender: TObject; var Key: Char);
    procedure E_nameChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit_jens_jadidChange(Sender: TObject);
    procedure e_codChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_sefaresh_jadid: TFrm_sefaresh_jadid;

implementation

uses Unt_dmanbar, Taghvim, unt_datamodule1, Unt_mmoshakhasat_shakhs,
  Unt_DataModule_gozaresh_tarkibi, unt_login,
  unt_show_jens_baraye_entekhab_kharid;

{$R *.dfm}
procedure TFrm_sefaresh_jadid.insert_sefaresh;
var jens,onvan:string;
    ps:pchar;
    tedad:integer;
    type_:string;
begin
if RadioGroup_noe_sefaresh.ItemIndex=0 then
    begin
      if RadioGroup_s_type.ItemIndex=0 then
      begin
         jens:=l_jans_name.Caption;
         onvan:='”›«—‘ Ã‰” „ÊÃÊœ œ— «‰»«—';
         tedad:=StrToInt(Edit_tedad.Text);
         type_:='a';
      end
      else
      begin
          jens:=Edit_jens_jadid.Text;
          onvan:='”›«—‘ Ã‰” ÃœÌœ';
          tedad:=StrToInt(Edit_tedad.Text);
          type_:='a';
      end;
  end
  else
  begin
      onvan:=Edit_onvan.Text;
      jens:='Ê«—œ‰‘œÂ';
      tedad:=0;
      type_:='b';
  end;
      DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.SQL.Text:='insert into t_sefaresh(matn,tarikh_sefaresh,'+
                                                                'shakhs,tarikh_residegi,onvan,jens,tedad,type,anjam)'+
                                                                'values('+QuotedStr(TeMemo_matn.Lines.Text)+','+QuotedStr(Frm_login.Egettarikh.Text)+
                                                                ','+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+','+QuotedStr(MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text)+


                                                                ','+QuotedStr(onvan)+','+QuotedStr(jens)+','+IntToStr(tedad)+','+QuotedStr(type_)+','+QuotedStr('«‰Ã«„ ‰‘œ')+')';
      DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.ExecSQL;
      ps:=pchar('”›«—‘ œ—  «—ÌŒ << '+Frm_login.Egettarikh.Text+' >> –ŒÌ—Â ‘œ') ;
      MessageBox(Handle,ps,' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;
{************************************************}
function TFrm_sefaresh_jadid.check:boolean;
begin
  check:=true;
  if RadioGroup_noe_sefaresh.ItemIndex=0 then
  begin
      if RadioGroup_s_type.ItemIndex=0 then
      begin
          if (l_jans_name.Caption='')or(Edit_tedad.Text='')or(trim(MaskEditrooz.Text)='')or(DataModule1.ADOQuery3shahrforoshande.AsString='')or(TeMemo_matn.Lines.Text='') then
             begin
                check:=false;
                MessageBox(Handle,'Ã‰” ”›«—‘Ì °  ⁄œ«œ °  «—ÌŒ Ì«œ¬Ê—Ì ° ”›«—‘ œÂ‰œÂ Ê „ ‰ ”›«—‘ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
             end;
      end
      else
      begin
          if (Edit_jens_jadid.Text='' )or(Edit_tedad.Text='')or(trim(MaskEditrooz.Text)='')or(DataModule1.ADOQuery3shahrforoshande.AsString='')or(TeMemo_matn.Lines.Text='') then
            begin
                check:=false;
                MessageBox(Handle,'Ã‰” ÃœÌœ °  ⁄œ«œ °  «—ÌŒ Ì«œ¬Ê—Ì ° ”›«—‘ œÂ‰œÂ Ê „ ‰ ”›«—‘ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
            end;
      end;
  end
  else
  begin
    if (Edit_onvan.Text='' )or(trim(MaskEditrooz.Text)='')or(DataModule1.ADOQuery3shahrforoshande.AsString='')or(TeMemo_matn.Lines.Text='') then
      begin
           check:=false;
           MessageBox(Handle,'⁄‰Ê«‰ ”›«—‘ °  «—ÌŒ Ì«œ¬Ê—Ì ° ”›«—‘ œÂ‰œÂ Ê „ ‰ ”›«—‘ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      end;
  end;
end;
procedure TFrm_sefaresh_jadid.showjens;
begin
  Dmanbar.ADOeditgeymat.SQL.Text:='select * from Tanbar_jens_kolli order by calaname';
  Dmanbar.ADOeditgeymat.Open;
end;

procedure TFrm_sefaresh_jadid.RadioGroup_s_typeClick(Sender: TObject);
begin
  if RadioGroup_s_type.ItemIndex=0 then
  begin
    GroupBox_s_anbar.Visible:=true;
    GroupBox_s_jadid.Visible:=false;
    Button1.SetFocus;
  end
  else
  begin
    GroupBox_s_anbar.Visible:=false;
    GroupBox_s_jadid.Visible:=true;
    Edit_jens_jadid.SetFocus;
  end;
end;

procedure TFrm_sefaresh_jadid.FormShow(Sender: TObject);
begin
  Frm_mmoshakhasat_shakhs.showshakhs;
  showjens;
  E_name.Text:='';
  RadioGroup_noe_sefaresh.ItemIndex:=0;
    TeMemo_matn.Lines.Clear;
    MaskEditrooz.Text:='';
    MaskEditmah.Text:='';
    MaskEditsal.Text:='';
    Edit_onvan.Text:='';
    Edit_jens_jadid.Text:='';
    Edit_tedad.Text:='';
    l_jans_name.Caption:='';
end;

procedure TFrm_sefaresh_jadid.suiButton4Click(Sender: TObject);
begin
   _Taghvim.ShowModal;
if _taghvim._str_date<>'' then
 begin
 MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
  MaskEditMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
  MaskEditRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
 end;
end;

procedure TFrm_sefaresh_jadid.suiButton1Click(Sender: TObject);
begin
 TeMemo_matn.Lines.Clear;
end;

procedure TFrm_sefaresh_jadid.suiButton8Click(Sender: TObject);
begin
  close;
end;

procedure TFrm_sefaresh_jadid.RadioGroup_noe_sefareshClick(
  Sender: TObject);
begin
  if RadioGroup_noe_sefaresh.ItemIndex=0 then
  begin
    GroupBox_s_jens.Visible:=true;
    GroupBox_s_geyre.Visible:=false;
     if RadioGroup_s_type.ItemIndex=0 then
       begin
          GroupBox_s_anbar.Visible:=true;
          GroupBox_s_jadid.Visible:=false;
      end
      else
      begin
        GroupBox_s_anbar.Visible:=false;
        GroupBox_s_jadid.Visible:=true;
        Edit_jens_jadid.SetFocus;
      end;
  end
  else
  begin
    GroupBox_s_jens.Visible:=false;
    GroupBox_s_geyre.Visible:=true;
    Edit_onvan.SetFocus;
  end;
end;



procedure TFrm_sefaresh_jadid.suiButton2Click(Sender: TObject);
begin
  if check then
  begin
    insert_sefaresh;
    TeMemo_matn.Lines.Clear;
    MaskEditrooz.Text:='';
    MaskEditmah.Text:='';
    MaskEditsal.Text:='';
    Edit_onvan.Text:='';
    Edit_jens_jadid.Text:='';
    Edit_tedad.Text:='';
    l_jans_name.Caption:='';
  end;

end;

procedure TFrm_sefaresh_jadid.Edit_tedadKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_sefaresh_jadid.E_nameChange(Sender: TObject);
begin
  DataModule1.ADOQuery3.Locate('shahrforoshande',E_name.Text,[loPartialKey]);
end;

procedure TFrm_sefaresh_jadid.Button1Click(Sender: TObject);
begin
  frm_show_jens_baraye_entekhab_kharid.ShowModal;
end;

procedure TFrm_sefaresh_jadid.Edit_jens_jadidChange(Sender: TObject);
begin
  l_jans_name.Caption:=l_jans_name.Caption+Edit_jens_jadid.Text;
end;

procedure TFrm_sefaresh_jadid.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure TFrm_sefaresh_jadid.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
