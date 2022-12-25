unit unt_factore_kharid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, Grids, DBGrids, SUIDBCtrls, StdCtrls, DBCtrls,
  DB, SUIButton;

type
  Tfrm_factore_kharid = class(TForm)
    GroupBox2: TGroupBox;
    DBText_shakhs: TDBText;
    DBText_geymat: TDBText;
    DBText_calacod: TDBText;
    DBText_id: TDBText;
    suiDbjens: TsuiDBGrid;
    GroupBox5: TGroupBox;
    MaskEditrooz: TMaskEdit;
    MaskEditmah: TMaskEdit;
    MaskEditsal: TMaskEdit;
    RadioGroup2: TRadioGroup;
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    Dskharidha: TDataSource;
    dsshakhs: TDataSource;
    suiDBGrid2: TsuiDBGrid;
    L_shakhs: TLabel;
    L_sh_factor: TLabel;
    Label2: TLabel;
    esearch: TEdit;
    suiButton1: TsuiButton;
    Label1: TLabel;
    e_cod: TEdit;
    suiButton__: TsuiButton;
    CheckBox2: TCheckBox;
    suiButton2: TsuiButton;
    procedure FormShow(Sender: TObject);
    procedure show_factorha;
    procedure RadioGroup2Click(Sender: TObject);
    procedure aghlame_factor;
    procedure suiButton1Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure e_codChange(Sender: TObject);
    procedure suiButton__Click(Sender: TObject);
    procedure zayeate_factor;

    procedure show_hame_kharidha;
    procedure CheckBox2Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_factore_kharid: Tfrm_factore_kharid;

implementation

uses unt_login, Unt_mmoshakhasat_shakhs, unt_DataM_final, unt_datamodule1,
  Untdmlistha, Taghvim, unt_print_factore_kharid, unt_Dm_zayeat_marjoei,
  unt_print_factore_kharid_zayeat, unt_print_factore_kharid_marjoei;

{$R *.dfm}

procedure Tfrm_factore_kharid.show_hame_kharidha;
begin
  DataM_final.ADOQ_t_sh_facrorhaye_kharid.SQL.Text:='select * from  t_sh_facrorhaye_kharid where shahrforoshande='+
  QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
  DataM_final.ADOQ_t_sh_facrorhaye_kharid.open;

  if  DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount =0 then
  begin
    Dmlistha.ADOkharidha.sql.Text:='select * from jens_ where sh_factor < 0';
    Dmlistha.ADOkharidha.Open;
  end
  else
  begin
    L_sh_factor.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
    L_shakhs.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;
    aghlame_factor;
  end;

end;

procedure Tfrm_factore_kharid.zayeate_factor;
begin
if  DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount <>0 then
  begin
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.SQL.Text:='select sum(geymat_kol) as kol_ from  t_marjoei where '+
      ' shakhs_sherkat='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
      ' and sh_kharid_marjoei='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.open;

    Dm_zayeat_marjoei.ADOQ_zayeat.SQL.Text:='select * from t_zayeat where shakhs_sherkat='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
    ' and sh_kharid_zayeat='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
    Dm_zayeat_marjoei.ADOQ_zayeat.Open;

    Dm_zayeat_marjoei.ADOQ_marjoei.SQL.Text:='select * from t_marjoei where shakhs_sherkat='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
    ' and sh_kharid_marjoei='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
    Dm_zayeat_marjoei.ADOQ_marjoei.Open;

    DataM_final.ADOQ_tozihate_kharid.SQL.Text:='select * from T_tozihe_kharid where code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString+
    ' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
    DataM_final.ADOQ_tozihate_kharid.open;
  end
  else
  begin
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.SQL.Text:='select sum(geymat_kol) as kol_ from  t_marjoei where '+
      ' shakhs_sherkat='+QuotedStr('')+
      ' and sh_kharid_marjoei<0';
      
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.open;

    Dm_zayeat_marjoei.ADOQ_zayeat.SQL.Text:='select * from t_zayeat where shakhs_sherkat='+QuotedStr('')+
    ' and sh_kharid_zayeat<0';
    Dm_zayeat_marjoei.ADOQ_zayeat.Open;

    Dm_zayeat_marjoei.ADOQ_marjoei.SQL.Text:='select * from t_marjoei where shakhs_sherkat='+QuotedStr('')+
    ' and sh_kharid_marjoei<0';
    Dm_zayeat_marjoei.ADOQ_marjoei.Open;

    DataM_final.ADOQ_tozihate_kharid.SQL.Text:='select * from T_tozihe_kharid where code<0'+
    ' and shomare_factor<0';
    DataM_final.ADOQ_tozihate_kharid.open;
  end;
end;
procedure Tfrm_factore_kharid.aghlame_factor;
begin
if  DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount =0 then
  begin

        DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='select code_shakhs,shahrforoshande,' +
        ' sum(bedehkar) as bedeh,sum(bestankar) as talab from '+
        ' T_bestankar_bedehkar_foroshande'+
        ' where shahrforoshande='+QuotedStr('')+
        ' group by code_shakhs,shahrforoshande';
        DataM_final.ADOQ_bedeh_be_foroshnse.Open;

        DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Text:='select sum(nagd) as nagd_kol from  t_pardakht_nagd_kharid '+
        ' where shomare_factor< 0';
        DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.Open;

        DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol  from  T_pardakht_check_kharid '+
        ' where shomare_factor< 0';
        DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

        Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from jens_ where sh_factor<0';
        Dmlistha.ADOmohasebe_kharid.Open;

        Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye  where shomare_factor<0';
        Dmlistha.ADOmohasebe_keraye_kharid.open;

        DataM_final.ADOQ_jame_bede_talab_dar_kharid.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from T_bedehi'+
        ' where sh_khaid <0 ';
        DataM_final.ADOQ_jame_bede_talab_dar_kharid.Open;

    Dmlistha.ADOkharidha.sql.Text:='select * from jens_ where sh_factor < 0';
    Dmlistha.ADOkharidha.Open;


  end
  else
  begin
    L_sh_factor.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
    L_shakhs.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;


    DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='select code_shakhs,shahrforoshande,' +
    ' sum(bedehkar) as bedeh,sum(bestankar) as talab from '+
    ' T_bestankar_bedehkar_foroshande'+
    ' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
    ' and code_shakhs='+DataModule1.ADOQuery3code.AsString+
    ' group by code_shakhs,shahrforoshande';
    DataM_final.ADOQ_bedeh_be_foroshnse.Open;

    Dmlistha.ADOkharidha.SQL.Text:='select * from jens_ where shahrforoshande='+
    QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
    ' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
    Dmlistha.ADOkharidha.Open;

        DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Text:='select sum(nagd) as nagd_kol from  t_pardakht_nagd_kharid '+
        ' where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
        ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
        DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.Open;

        DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol  from  T_pardakht_check_kharid '+
        ' where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
        ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
        DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

        Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from jens_ where sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
        ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
        Dmlistha.ADOmohasebe_kharid.Open;

        Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye  where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
        ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
        Dmlistha.ADOmohasebe_keraye_kharid.open;

        DataM_final.ADOQ_jame_bede_talab_dar_kharid.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from T_bedehi where sh_khaid='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
        ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
        DataM_final.ADOQ_jame_bede_talab_dar_kharid.Open;

  end;
  frm_print_factore_kharid.QRLabel_tedad.Caption:=IntToStr(Dmlistha.ADOkharidha.RecordCount);
end;


procedure Tfrm_factore_kharid.show_factorha;
begin

  DataM_final.ADOQ_t_sh_facrorhaye_kharid.SQL.Text:='select * from  t_sh_facrorhaye_kharid where shahrforoshande='+
  QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and tarikh='+QuotedStr(trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text))+' order by shomare';
  DataM_final.ADOQ_t_sh_facrorhaye_kharid.open;

  aghlame_factor;

end;


procedure Tfrm_factore_kharid.FormShow(Sender: TObject);
begin
  CheckBox2.Checked:=false;
  RadioGroup2.ItemIndex:=0;
  MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
  MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
  MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
  esearch.Text:='';
  esearch.SetFocus;
  
  Frm_mmoshakhasat_shakhs.show_foroshandegan;
  show_factorha;
  frm_factore_kharid.WindowState:=wsMaximized;

  //frm_pint_factor_kol_roz.QRLtarikh.Caption:=frm_login.Egettarikh.Text;

end;

procedure Tfrm_factore_kharid.RadioGroup2Click(Sender: TObject);
begin
   if RadioGroup2.ItemIndex=0 then
  begin
      MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
      MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
      MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
      show_factorha;
  end
  else
  begin
      _taghvim.ShowModal;
       if _taghvim._str_date<>'' then
        begin
              MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
              MaskEditMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
              MaskEditRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
              show_factorha;
        end;
  end;
end;

procedure Tfrm_factore_kharid.suiButton1Click(Sender: TObject);
begin
  frm_print_factore_kharid.QuickRep1.Preview;

  if Dm_zayeat_marjoei.ADOQ_zayeat.RecordCount> 0 then
    frm_print_factore_kharid_zayeat.QuickRep1.Preview;

  if Dm_zayeat_marjoei.ADOQ_marjoei.RecordCount> 0 then
    frm_print_factore_kharid_marjoei.QuickRep1.Preview;
end;

procedure Tfrm_factore_kharid.esearchChange(Sender: TObject);
begin
 DataModule1.ADOQuery3.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_factore_kharid.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_factore_kharid.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure Tfrm_factore_kharid.suiButton__Click(Sender: TObject);
begin
  frm_print_factore_kharid.QuickRep1.Print;
  
  if Dm_zayeat_marjoei.ADOQ_zayeat.RecordCount> 0 then
    frm_print_factore_kharid_zayeat.QuickRep1.Print;

  if Dm_zayeat_marjoei.ADOQ_marjoei.RecordCount> 0 then
    frm_print_factore_kharid_marjoei.QuickRep1.Print;
end;

procedure Tfrm_factore_kharid.CheckBox2Click(Sender: TObject);
begin
   if CheckBox2.Checked then
   begin
    show_hame_kharidha
   end
   else
    show_factorha;
end;

procedure Tfrm_factore_kharid.suiButton2Click(Sender: TObject);
begin
  DataM_final.ADOQ_t_sh_facrorhaye_kharid.Last;
end;

end.
