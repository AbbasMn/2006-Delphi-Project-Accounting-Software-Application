unit unt_gozaresh_az_sandog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Grids, DBGrids, SUIDBCtrls, ExtCtrls, Mask,
  SUIButton, SUIForm, DB, dxCore, dxButtons;

type
  TFrm_gozaresh_az_sandog = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource4: TDataSource;
    DataSource3: TDataSource;
    GroupBox3: TGroupBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    esearch: TEdit;
    suiDbjens: TsuiDBGrid;
    RadioGroup2: TRadioGroup;
    GroupBox_sal: TGroupBox;
    Label1: TLabel;
    scsal: TDBLookupComboBox;
    GroupBox_sal_mah: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    scsal2: TDBLookupComboBox;
    scmah: TComboBox;
    GroupBox_tarikh: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    scsalall: TDBLookupComboBox;
    scmahall: TComboBox;
    scrooz: TComboBox;
    GroupBox4: TGroupBox;
    DBText1: TDBText;
    Label8: TLabel;
    Label_mojodi_kol: TLabel;
    GroupBox5: TGroupBox;
    Lsal1: TLabel;
    Label9: TLabel;
    DBText_arzesh_kol: TDBText;
    Label_tedad: TLabel;
    Label_type: TLabel;
    DBText_koroj: TDBText;
    suiDBGrid1: TsuiDBGrid;
    DataSource5: TDataSource;
    dxToolButton12: TdxToolButton;
    Label10: TLabel;
    l_mojodi: TLabel;
    dxToolButton1: TdxToolButton;
    procedure show_sandog_sal;
    procedure show_sandog_month;
    procedure show_sandog_tarikh;
    procedure FormShow(Sender: TObject);
    procedure typ_;
    procedure RadioGroup2Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure btaeedallClick(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure scsalallClick(Sender: TObject);
    procedure scmahallChange(Sender: TObject);
    procedure scroozChange(Sender: TObject);
    procedure scsal2Click(Sender: TObject);
    procedure scmahChange(Sender: TObject);
    procedure scsalClick(Sender: TObject);
    function mojodi_kol(s:string):Real;
    procedure show_hamesalha;
    procedure dxToolButton12Click(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_gozaresh_az_sandog: TFrm_gozaresh_az_sandog;

implementation

uses Math, Unt_DataModule_gozaresh_tarkibi, Unt_search, unt_datamodule1,
  unt_print_gozaresh_az_sandogh, unt_login, unt_sandog_jadid;

{$R *.dfm}
function TFrm_gozaresh_az_sandog.mojodi_kol(s:string):real;
begin
 mojodi_kol:=0;

 DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.SQL.Text:=' select sum(mablag) as vorod from T_vorod_khoroj_sandogha'+
 ' where sandog='+QuotedStr(s)+' and type='+QuotedStr('?????');
 DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.Open;


 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.SQL.Text:=' select sum(mablag) as khoroj from T_vorod_khoroj_sandogha'+
 ' where sandog='+QuotedStr(s)+' and type='+QuotedStr('?????');
 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.Open;

 mojodi_kol:=DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat-DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat;
end;
procedure TFrm_gozaresh_az_sandog.typ_;
begin
  Label_type.Caption:='';
  If RadioGroup2.ItemIndex=0 then
    begin
        GroupBox_tarikh.Visible:=true;
        GroupBox_sal.Visible:=false;
        GroupBox_sal_mah.Visible:=False;
        show_sandog_tarikh;
    end;
  If RadioGroup2.ItemIndex=1 then
    begin
        GroupBox_tarikh.Visible:=False;
        GroupBox_sal.Visible:=true;
        GroupBox_sal_mah.Visible:=false;
        show_sandog_month;
    end;
  If RadioGroup2.ItemIndex=2 then
    begin
        GroupBox_tarikh.Visible:=false;
        GroupBox_sal.Visible:=false;
        GroupBox_sal_mah.Visible:=true;
        show_sandog_sal;
    end;
    If RadioGroup2.ItemIndex=3 then
    begin
      show_hamesalha;
      GroupBox_tarikh.Visible:=false;
      GroupBox_sal.Visible:=false;
      GroupBox_sal_mah.Visible:=False;
    end;
end;
procedure TFrm_gozaresh_az_sandog.show_hamesalha;
begin
    Label_type.Caption:='????? ?? ????? '+DBText1.Caption+' '+'?? ??? ?????';
 {vorod-khoroj}
 DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='select * from T_vorod_khoroj_sandogha where sandog='+
 QuotedStr(DBText1.Caption)+' order by tarikh,time_';
 DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.Open;


 DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.SQL.Text:='select sum(mablag) as vorod from T_vorod_khoroj_sandogha'+
 ' where sandog='+QuotedStr(DBText1.Caption)+' and type='+QuotedStr('?????');
 DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.Open;

 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.SQL.Text:='select sum(mablag) as khoroj from T_vorod_khoroj_sandogha'+
 ' where sandog='+QuotedStr(DBText1.Caption)+' and type='+QuotedStr('?????');
 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.Open;

 frm_print_gozaresh_az_sandogh.QRL_type.Caption:=DBText1.Caption+' '+' ?? ???? ??? ?????';

 l_mojodi.Caption:=FloatToStr(DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat-DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat);
end;

procedure TFrm_gozaresh_az_sandog.show_sandog_sal;
begin
  Label_type.Caption:='????? ?? ????? '+DBText1.Caption+' '+'?? ???  '+scsal.Text;
 {vorod-khoroj}
 DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='select * from T_vorod_khoroj_sandogha where sandog='+
 QuotedStr(DBText1.Caption)+' and tarikh like'+QuotedStr(scsal.Text+'%')+' order by tarikh,time_';
 DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.Open;


 DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.SQL.Text:='select sum(mablag) as vorod from T_vorod_khoroj_sandogha'+
 ' where sandog='+QuotedStr(DBText1.Caption)+' and type='+QuotedStr('?????')+' and tarikh like'+QuotedStr(scsal.Text+'%');
 DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.Open;

 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.SQL.Text:='select sum(mablag) as khoroj from T_vorod_khoroj_sandogha'+
 ' where sandog='+QuotedStr(DBText1.Caption)+' and type='+QuotedStr('?????')+' and tarikh like'+QuotedStr(scsal.Text+'%');
 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.Open;

  frm_print_gozaresh_az_sandogh.QRL_type.Caption:=DBText1.Caption+' '+' ?? ???? ??? '+scsal.Text;

 l_mojodi.Caption:=FloatToStr(DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat-DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat);

end;
procedure TFrm_gozaresh_az_sandog.show_sandog_month;
begin
  Label_type.Caption:='????? ?? ????? '+DBText1.Caption+' '+' ?? ???  '+scsal2.Text+' ??? '+scmah.Text;
 {vorod-khoroj}
  DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='select * from T_vorod_khoroj_sandogha where sandog='+
  QuotedStr(DBText1.Caption)+' and tarikh like'+QuotedStr(scsal2.Text+'/'+frm_search.getmonth(scmah.Text)+'%')+' order by tarikh,time_';
  DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.Open;

  DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.SQL.Text:='select sum(mablag) as vorod from T_vorod_khoroj_sandogha'+
  ' where  sandog='+QuotedStr(DBText1.Caption)+' and type='+QuotedStr('?????')+' and tarikh like'+QuotedStr(scsal2.Text+'/'+frm_search.getmonth(scmah.Text)+'%');
  DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.Open;

  DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.SQL.Text:='select sum(mablag) as khoroj from T_vorod_khoroj_sandogha'+
 ' where sandog='+QuotedStr(DBText1.Caption)+' and type='+QuotedStr('?????')+' and tarikh like'+QuotedStr(scsal2.Text+'/'+frm_search.getmonth(scmah.Text)+'%');
 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.Open;

 frm_print_gozaresh_az_sandogh.QRL_type.Caption:=DBText1.Caption+' '+' ?? ???? ??? '+scsal2.Text+' ??? '+scmah.Text;

 l_mojodi.Caption:=FloatToStr(DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat-DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat);
end;
procedure TFrm_gozaresh_az_sandog.show_sandog_tarikh;
begin
  Label_type.Caption:='????? ?? ????? '+DBText1.Caption+' '+'?? ???  '+scsalall.Text+' ??? '+scmahall.Text+' ??? '+scrooz.Text;
 {vorod-khoroj}
  DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='select * from T_vorod_khoroj_sandogha where sandog='+
  QuotedStr(DBText1.Caption)+' and tarikh='+QuotedStr(scsalall.Text+'/'+frm_search.getmonth(scmahall.Text)+'/'+scrooz.Text)+
  ' order by tarikh,time_';
  DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.Open;

  DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.Close;

  DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.SQL.Text:='select sum(mablag) as vorod from T_vorod_khoroj_sandogha'+
  ' where sandog='+QuotedStr(DBText1.Caption)+' and type='+QuotedStr('?????')+' and tarikh='+QuotedStr(scsalall.Text+'/'+frm_search.getmonth(scmahall.Text)+'/'+scrooz.Text);
  DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandog.Open;

  frm_print_gozaresh_az_sandogh.QRL_type.Caption:=DBText1.Caption+' '+' ?? ???? ?????'+scrooz.Text+'/'+scmahall.Text+'/'+scsalall.Text;

  DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.Close;

   DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.SQL.Text:='select sum(mablag) as khoroj from T_vorod_khoroj_sandogha'+
 ' where sandog='+QuotedStr(DBText1.Caption)+' and type='+QuotedStr('?????')+' and tarikh='+QuotedStr(scsalall.Text+'/'+frm_search.getmonth(scmahall.Text)+'/'+scrooz.Text);
 DataModule_gozaresh_tarkibi.ADOQuery_kh_sandog.Open;

 l_mojodi.Caption:=FloatToStr(DataModule_gozaresh_tarkibi.ADOQuery_jame_vorod_sandogvorod.AsFloat-DataModule_gozaresh_tarkibi.ADOQuery_kh_sandogkhoroj.AsFloat); 
end;

procedure TFrm_gozaresh_az_sandog.FormShow(Sender: TObject);
begin
   Frm_gozaresh_az_sandog.WindowState:=wsMaximized;
   DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
   DataModule1.ADOQsaljadid.Open;
   Frm_sandog_jadid.show_sandog;
   RadioGroup2.ItemIndex:=0;
   typ_;
   Label_mojodi_kol.Caption:=FloatToStr(mojodi_kol(DBText1.Caption));

   esearch.Clear;
   esearch.SetFocus;
end;



procedure TFrm_gozaresh_az_sandog.RadioGroup2Click(Sender: TObject);
begin
  typ_;
end;

procedure TFrm_gozaresh_az_sandog.esearchChange(Sender: TObject);
begin
  DataModule_gozaresh_tarkibi.ADOQuery_sandog.Locate('sandog',esearch.Text,[loPartialKey]);
end;

procedure TFrm_gozaresh_az_sandog.btaeedallClick(Sender: TObject);
begin
  show_sandog_tarikh;
end;

procedure TFrm_gozaresh_az_sandog.suiButton1Click(Sender: TObject);
begin
  show_sandog_month;
end;

procedure TFrm_gozaresh_az_sandog.scsalallClick(Sender: TObject);
begin
 show_sandog_tarikh;
end;

procedure TFrm_gozaresh_az_sandog.scmahallChange(Sender: TObject);
begin
 show_sandog_tarikh;
end;

procedure TFrm_gozaresh_az_sandog.scroozChange(Sender: TObject);
begin
  show_sandog_tarikh;
end;

procedure TFrm_gozaresh_az_sandog.scsal2Click(Sender: TObject);
begin
  show_sandog_month;
end;

procedure TFrm_gozaresh_az_sandog.scmahChange(Sender: TObject);
begin
  show_sandog_month;
end;

procedure TFrm_gozaresh_az_sandog.scsalClick(Sender: TObject);
begin
  show_sandog_sal;
end;

procedure TFrm_gozaresh_az_sandog.dxToolButton12Click(Sender: TObject);
begin
  frm_print_gozaresh_az_sandogh.QRL_mojodi.Caption:=Label_mojodi_kol.Caption;
  frm_print_gozaresh_az_sandogh.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
  //frm_print_gozaresh_az_sandogh.QRL_mojodi_search.Caption:=l_mojodi.Caption;
  frm_print_gozaresh_az_sandogh.QuickRep1.Preview;
end;

procedure TFrm_gozaresh_az_sandog.dxToolButton1Click(Sender: TObject);
begin
  frm_print_gozaresh_az_sandogh.QRL_mojodi.Caption:=Label_mojodi_kol.Caption;
  frm_print_gozaresh_az_sandogh.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
  //frm_print_gozaresh_az_sandogh.QRL_mojodi_search.Caption:=l_mojodi.Caption;
  frm_print_gozaresh_az_sandogh.QuickRep1.Print;
end;

end.
