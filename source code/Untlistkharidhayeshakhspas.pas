unit Untlistkharidhayeshakhspas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, SUIMgr, DB, Grids, DBGrids, SUIDBCtrls,
  dxCore, dxButtons, StdCtrls, SUIImagePanel, SUIGroupBox, SUIComboBox,
  DBCtrls, SUIButton, SUIRadioGroup;

type
  Tfrm_kharidhaye_shakhs = class(TForm)
    Dskharidha: TDataSource;
    dsshakhs: TDataSource;
    DataSource1: TDataSource;
    DataSource_sal1: TDataSource;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    esearch: TEdit;
    RadioGroup1: TRadioGroup;
    suiGroupBox1: TsuiGroupBox;
    CheckBox1: TCheckBox;
    scsal: TDBLookupComboBox;
    suiGroupBox3: TsuiGroupBox;
    Label3: TLabel;
    Label6: TLabel;
    scsal2: TDBLookupComboBox;
    scmahall: TComboBox;
    suiDBGrid1: TsuiDBGrid;
    suiDbjens: TsuiDBGrid;
    dtb_salmah12: TdxToolButton;
    Label8: TLabel;
    e_cod: TEdit;
    dtb_salha: TdxToolButton;
    dtb_salmah1: TdxToolButton;
    Label1: TLabel;
    dtb_salha1: TdxToolButton;
   function getmonth(month:string):string;
    procedure dtb_salha1Click(Sender: TObject);
    procedure showhesabshakhs;
    procedure showhesabdarsal;
    procedure showhesabdar_salmah;
    procedure gotofactor_kolsalha;
    procedure FormShow(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure showshakhs;
    procedure CheckBox1Click(Sender: TObject);
    procedure scsalChange(Sender: TObject);
    procedure bede_talabdarsal;
    procedure bede_talab_kolsalha;
    procedure bede_talab_sal_mah;
    procedure bsalmahClick(Sender: TObject);
    procedure hid_sal_mah_control;
    procedure show_sal_mah_control;
    procedure show_sal_control;
    procedure hid_sal_control;
    procedure dtb_salmah12Click(Sender: TObject);
    procedure scmahallChange(Sender: TObject);
    procedure scsal2Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure scsalClick(Sender: TObject);
    procedure scsal2Click(Sender: TObject);
    procedure jame_bedehi_kol;
    procedure jame_pardakht_bedehi_salmah;
    procedure jame_pardakht_bedehi_sal;
    procedure jame_pardakht_bedehi_salha;
    procedure jame_takhfif_sal;
    procedure jame_takhfif_salmah;
    procedure jame_takhfif_kol;
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure e_codChange(Sender: TObject);
    procedure dtb_salhaClick(Sender: TObject);
    procedure dtb_salmah1Click(Sender: TObject);

   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_kharidhaye_shakhs: Tfrm_kharidhaye_shakhs;

implementation

uses unt_datamodule1, Untdmlistha, Untfactorshakhs, unt_factor,
  unt_datamodule2, unt_main, Unt_search, unt_login, unt_factor_roz,
  unt_DataM_final, Unt_mmoshakhasat_shakhs;

{$R *.dfm}
procedure Tfrm_kharidhaye_shakhs.jame_takhfif_salmah;
begin
  DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh'+
  ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh like '+QuotedStr(scsal2.Text+'/'+Frm_search.getmonth(scmahall.Text)+'%');
  DataM_final.ADOQ_jame_takhfife.Open;
end;


procedure Tfrm_kharidhaye_shakhs.jame_takhfif_kol;
begin
if DataModule1.ADOQuery3.RecordCount>0 then
begin
  DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh'+
  ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQ_jame_takhfife.Open;
end
else
begin
  DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh'+
  ' where cod_kharidar<0';
  DataM_final.ADOQ_jame_takhfife.Open;
end;
end;


procedure Tfrm_kharidhaye_shakhs.jame_takhfif_sal;
begin
if DataModule1.ADOQuery3.RecordCount>0 then
begin
  DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh'+
  ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_jame_takhfife.Open;
end
else
begin
  DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh'+
  ' where cod_kharidar<0';
  DataM_final.ADOQ_jame_takhfife.Open;
end;
end;
////////////////
procedure Tfrm_kharidhaye_shakhs.jame_pardakht_bedehi_salha;
var po:string;
begin
      po:='select sum(mablagh)as kol_ from T_pardakht_bedehi_kharidar where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);

      DataModule1.ADOQuery_jame_pardakht_kharidar.SQL.Text:=po;
      DataModule1.ADOQuery_jame_pardakht_kharidar.Open;

      DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd) as nagd_kol from t_pardakht_nagd_forosh '+
      ' where code='+DataModule1.ADOQuery3code.AsString;
      DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

      DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol  from T_pardakht_check_forosh '+
      ' where code='+DataModule1.ADOQuery3code.AsString;
      DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

      DataM_final.ADOQ_g_kol_foroshha.SQL.Text:='select sum(geymat_jens) as g_kol_foroshha from forosh_jens '+
      ' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
      DataM_final.ADOQ_g_kol_foroshha.Open;
end;

procedure Tfrm_kharidhaye_shakhs.jame_pardakht_bedehi_sal;
var po:string;
begin
      po:='select sum(mablagh)as kol_ from T_pardakht_bedehi_kharidar where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
      ' and tarikh like '+QuotedStr(scsal.Text+'%');
      DataModule1.ADOQuery_jame_pardakht_kharidar.SQL.Text:=po;
      DataModule1.ADOQuery_jame_pardakht_kharidar.Open;


      DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd) as nagd_kol from t_pardakht_nagd_forosh '+
      ' where code='+DataModule1.ADOQuery3code.AsString+' and tarikh like '+QuotedStr(scsal.Text+'%');
      DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

      DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol  from T_pardakht_check_forosh '+
      ' where code='+DataModule1.ADOQuery3code.AsString+' and tarikh_kharid like '+QuotedStr(scsal.Text+'%');
      DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

      DataM_final.ADOQ_g_kol_foroshha.SQL.Text:='select sum(geymat_jens) as g_kol_foroshha from forosh_jens '+
      ' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and tarikh like '+QuotedStr(scsal.Text+'%');
      DataM_final.ADOQ_g_kol_foroshha.Open;
end;
procedure Tfrm_kharidhaye_shakhs.jame_pardakht_bedehi_salmah;
var po:string;
begin
      po:='select sum(mablagh)as kol_ from T_pardakht_bedehi_kharidar where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+

      'and tarikh like '+QuotedStr(scsal2.Text+'/'+Frm_search.getmonth(scmahall.Text)+'%');
      DataModule1.ADOQuery_jame_pardakht_kharidar.SQL.Text:=po;
      DataModule1.ADOQuery_jame_pardakht_kharidar.Open;

      DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd) as nagd_kol from t_pardakht_nagd_forosh '+
      ' where code='+DataModule1.ADOQuery3code.AsString+' and tarikh like '+QuotedStr(scsal2.Text+'/'+Frm_search.getmonth(scmahall.Text)+'%');
      DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

      DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol  from T_pardakht_check_forosh '+
      ' where code='+DataModule1.ADOQuery3code.AsString+ ' and tarikh_kharid like '+QuotedStr(scsal2.Text+'/'+Frm_search.getmonth(scmahall.Text)+'%');
      DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

      DataM_final.ADOQ_g_kol_foroshha.SQL.Text:='select sum(geymat_jens) as g_kol_foroshha from forosh_jens '+
      ' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and tarikh like '+QuotedStr(scsal2.Text+'/'+Frm_search.getmonth(scmahall.Text)+'%');
      DataM_final.ADOQ_g_kol_foroshha.Open;
end;
procedure Tfrm_kharidhaye_shakhs.jame_bedehi_kol;
begin
      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='select code_shakhs,shahrforoshande,'+
      'sum(bedehkar) as bedeh,sum(bestankar) as talab from '+
      ' T_bestankar_bedehkar_kharidar where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
      ' and code_shakhs='+DataModule1.ADOQuery3code.AsString+
      '  group by code_shakhs,shahrforoshande ';
      DataM_final.ADOQ_bedeh_be_kharidar.Open;
end;
procedure Tfrm_kharidhaye_shakhs.showhesabdar_salmah;
begin
   Dmlistha.adolistforosh.SQL.Text:='select *  from forosh_jens where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+

  ' and tarikh like '+QuotedStr(scsal2.Text+'/'+getmonth(scmahall.Text)+'%')+' order by jens';

  Dmlistha.ADOlistforosh.Open;
end;
procedure Tfrm_kharidhaye_shakhs.hid_sal_control;
begin
    dtb_salha.Enabled:=false;
    Label1.Enabled:=false;


    scsal.Enabled:=false;

    CheckBox1.Enabled:=false;
end;
procedure Tfrm_kharidhaye_shakhs.show_sal_control;
begin
    dtb_salha.Enabled:=true;

    scsal.Enabled:=True;

    CheckBox1.Enabled:=true;

    Label1.Enabled:=true;
end;
procedure Tfrm_kharidhaye_shakhs.show_sal_mah_control;
begin
    dtb_salmah1.Enabled:=True;
    dtb_salmah12.Enabled:=True;
    Label3.Enabled:=true;
    Label6.Enabled:=true;
    scsal2.Enabled:=true;
    scmahall.Enabled:=true;
    scmahall.ItemIndex:=0;
end;

procedure Tfrm_kharidhaye_shakhs.hid_sal_mah_control;
begin
    dtb_salmah12.Enabled:=false;
    dtb_salmah1.Enabled:=false;

    Label3.Enabled:=false;
    Label6.Enabled:=false;
    scsal2.Enabled:=false;
    scmahall.Enabled:=false;
end;
////////////////////////////////////
function Tfrm_kharidhaye_shakhs.getmonth(month:string):string;
begin
  if month='???????' then
    getmonth:='01'
  else
  if month='????????' then
    getmonth:='02'
  else
  if month='?????' then
    getmonth:='03'
  else
  if month='???' then
    getmonth:='04'
  else
  if month='?????' then
    getmonth:='05'
  else
  if month='??????' then
    getmonth:='06'
  else
  if month='???' then
    getmonth:='07'
  else
  if month='????' then
    getmonth:='08'
  else
  if month='???' then
    getmonth:='09'
  else
  if month='????' then
    getmonth:='11'
  else
  if month='?????' then
    getmonth:='12'
  else
    getmonth:='10' //// ??? ???

end;
//////////////////////////////
procedure Tfrm_kharidhaye_shakhs.bede_talab_sal_mah;

begin
   DataM_final.ADOQ_jame_bede_talab_dar_forosh.sql.Text:=' select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from bedeh_bestan '+
  ' where code='+DataModule1.ADOQuery3code.AsString+' and tarikh like '+QuotedStr(scsal2.Text+'/'+Frm_search.getmonth(scmahall.Text)+'%');
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.open

end;
//////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
procedure Tfrm_kharidhaye_shakhs.bede_talab_kolsalha;
begin
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.sql.Text:=' select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from bedeh_bestan '+
  ' where code='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.open;
end
else
begin
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.sql.Text:=' select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from bedeh_bestan '+
  ' where code<0';
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.open;
end;

end;
procedure Tfrm_kharidhaye_shakhs.bede_talabdarsal;
begin
    DataM_final.ADOQ_jame_bede_talab_dar_forosh.sql.Text:=' select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from bedeh_bestan '+
  ' where code='+DataModule1.ADOQuery3code.AsString+' and tarikh like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.open;
end;
procedure Tfrm_kharidhaye_shakhs.showhesabdarsal;
begin
  Dmlistha.ADOlistforosh.SQL.Text:='select *  from forosh_jens where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and tarikh like '+QuotedStr(scsal.Text+'%')+'order by tarikh,sh_factor';
  Dmlistha.ADOlistforosh.Open;
end;
procedure Tfrm_kharidhaye_shakhs.showshakhs;
begin
  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande order by shahrforoshande';
  DataModule1.ADOQuery3.Open;
end;
procedure Tfrm_kharidhaye_shakhs.gotofactor_kolsalha;
begin
  if (DataModule1.ADOQuery3shahrforoshande.AsString='') then
     MessageBox(Handle,'??? ???? ?? ?????? ??????','???! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT )
  else
  begin
      showhesabshakhs;
      frm_factor.type_.Caption:='??? ??????? ?? ???? ?????';
      frm_factor.QRLabel_type2.Caption:= '??? ??????? ?? ???? ?????';
  end;
end;
procedure Tfrm_kharidhaye_shakhs.showhesabshakhs;
begin
      Dmlistha.ADOlistforosh.SQL.Text:='select *  from forosh_jens where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
      ' order by tarikh,sh_factor';
      Dmlistha.ADOlistforosh.Open;
end;
procedure Tfrm_kharidhaye_shakhs.dtb_salha1Click(Sender: TObject);
begin
if DataModule1.ADOQuery3.RecordCount>0 then
begin
  frm_factor.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  if CheckBox1.Checked then
  begin
  if DataModule1.ADOQuery3.RecordCount > 0 then
   begin
    gotofactor_kolsalha ;
    bede_talab_kolsalha;
    frm_factor.type_.Caption:='?? ?? ?????? ????';
    frm_factor.QRLabel_type2.Caption:= '?? ?? ?????? ????';
    sleep(1000);
    frm_factor.QuickRep1.Preview;
   end
    else
      //MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end
  else
  begin
  if DataModule1.ADOQuery3.RecordCount > 0 then
   begin
    bede_talabdarsal;
    showhesabdarsal;
    frm_factor.type_.Caption:=' ?? ???'+' '+scsal.Text;
    frm_factor.QRLabel_type2.Caption:=' ?? ???'+' '+scsal.Text;
    sleep(1000);
    frm_factor.QuickRep1.Preview;
   end
    else
      //MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end;
end;
end;

procedure Tfrm_kharidhaye_shakhs.FormShow(Sender: TObject);
begin
  scmahall.ItemIndex:=-1;
  RadioGroup1.ItemIndex:=0;
  scmahall.ItemIndex:=0;
  CheckBox1.Checked:=false;

  esearch.Text:='';
  esearch.SetFocus;
  e_cod.Clear;

  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;
  
  Frm_mmoshakhasat_shakhs.show_kharidaran;
  if DataModule1.ADOQuery3.RecordCount > 0 then
  begin  
   showhesabshakhs;
  end
    else
      //MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );

  //////////////////
   hid_sal_mah_control;
   show_sal_control;

  frm_kharidhaye_shakhs.WindowState:=wsMaximized;

end;

procedure Tfrm_kharidhaye_shakhs.esearchChange(Sender: TObject);
begin
  DataModule1.ADOQuery3.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_kharidhaye_shakhs.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
  if DataModule1.ADOQuery3.RecordCount > 0 then
    begin
      showhesabshakhs;
      bede_talab_kolsalha;
      jame_pardakht_bedehi_salha;
      jame_bedehi_kol;
      jame_takhfif_kol;
    end
    else
      //MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end
  else
  begin
  if DataModule1.ADOQuery3.RecordCount > 0 then
    begin
      showhesabdarsal;
      bede_talabdarsal;
      jame_pardakht_bedehi_sal;
      jame_bedehi_kol;
      jame_takhfif_sal;
    end
    else
      //MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end;

end;

procedure Tfrm_kharidhaye_shakhs.scsalChange(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0 then
  begin
  if DataModule1.ADOQuery3.RecordCount > 0 then
    begin
      bede_talabdarsal;
      CheckBox1.Checked:=false;
      showhesabdarsal;
    end
    else
     // MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end;
end;

procedure Tfrm_kharidhaye_shakhs.bsalmahClick(Sender: TObject);
begin
  if (scsal2.Text='') or (scmahall.Text='') then
    MessageBox(Handle,'??? ? ??? ?? ?????? ??????','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
  begin
    if DataModule1.ADOQuery3.RecordCount > 0 then
    begin
      showhesabdar_salmah;
      bede_talab_sal_mah;
      jame_pardakht_bedehi_salmah;
      jame_takhfif_salmah;
    end
    else
      //MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end;

end;



procedure Tfrm_kharidhaye_shakhs.dtb_salmah12Click(Sender: TObject);
begin

if DataModule1.ADOQuery3.RecordCount>0 then
begin
    frm_factor.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
    showhesabdar_salmah;
    bede_talab_sal_mah;
    jame_bedehi_kol;
    jame_pardakht_bedehi_salmah;
    jame_takhfif_salmah;

    frm_factor.type_.Caption:='?? ???'+scsal2.Text+' ??? '+' '+scmahall.Text;
    frm_factor.QRLabel_type2.Caption:='?? ???'+scsal2.Text+' ??? '+' '+scmahall.Text;
    sleep(1000);
    frm_factor.QuickRep1.Preview;
end
else
  //MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;

procedure Tfrm_kharidhaye_shakhs.scmahallChange(Sender: TObject);
begin
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
  showhesabdar_salmah;
  bede_talab_sal_mah;
  jame_pardakht_bedehi_salmah;
  jame_bedehi_kol;
  jame_takhfif_salmah;
end
  else
  //MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;



procedure Tfrm_kharidhaye_shakhs.scsal2Change(Sender: TObject);
begin
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
   bede_talab_sal_mah;
   showhesabdar_salmah;
end
else
  MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;

procedure Tfrm_kharidhaye_shakhs.RadioGroup1Click(Sender: TObject);
begin
 if RadioGroup1.ItemIndex=0 then
  begin
    dtb_salha1.Enabled:=true;
    dtb_salmah12.Enabled:=false;
    scmahall.ItemIndex:=-1;
    CheckBox1.Checked:=true;
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
    bede_talab_kolsalha;
    showhesabshakhs;
    hid_sal_mah_control;
    show_sal_control;
    jame_bedehi_kol;
    jame_takhfif_kol;
end
else
  //MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;
  if RadioGroup1.ItemIndex=1 then
  begin
    dtb_salha1.Enabled:=false;
    dtb_salmah12.Enabled:=true;
    scmahall.ItemIndex:=-1;
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
    showhesabdar_salmah;
    bede_talab_sal_mah;
    hid_sal_control;
    show_sal_mah_control;
    jame_bedehi_kol;
    jame_takhfif_salmah;
end
else
  //MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end;
end;

procedure Tfrm_kharidhaye_shakhs.scsalClick(Sender: TObject);
begin
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
  showhesabdarsal;
  bede_talabdarsal;
  jame_bedehi_kol;  
  jame_pardakht_bedehi_sal;
  jame_takhfif_sal;
  CheckBox1.Checked:=false;
end
else
  MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;

procedure Tfrm_kharidhaye_shakhs.scsal2Click(Sender: TObject);
begin
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
  showhesabdar_salmah;
  bede_talab_sal_mah;
  jame_pardakht_bedehi_salmah;
  jame_bedehi_kol;
  jame_takhfif_salmah;
end
else
  MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;


procedure Tfrm_kharidhaye_shakhs.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_kharidhaye_shakhs.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure Tfrm_kharidhaye_shakhs.dtb_salhaClick(Sender: TObject);
begin
if DataModule1.ADOQuery3.RecordCount>0 then
begin
  frm_factor.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  if CheckBox1.Checked then
  begin
  if DataModule1.ADOQuery3.RecordCount > 0 then
   begin
    gotofactor_kolsalha ;
    bede_talab_kolsalha;
    frm_factor.type_.Caption:='?? ?? ?????? ????';
    frm_factor.QRLabel_type2.Caption:= '?? ?? ?????? ????';
    sleep(1000);
    frm_factor.QuickRep1.Print;
   end
    else
      MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end
  else
  begin
  if DataModule1.ADOQuery3.RecordCount > 0 then
   begin
    bede_talabdarsal;
    showhesabdarsal;
    frm_factor.type_.Caption:=' ?? ???'+' '+scsal.Text;
    frm_factor.QRLabel_type2.Caption:=' ?? ???'+' '+scsal.Text;
    sleep(1000);
    frm_factor.QuickRep1.Print;
   end
    else
      MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end;
end;
end;

procedure Tfrm_kharidhaye_shakhs.dtb_salmah1Click(Sender: TObject);
begin
if DataModule1.ADOQuery3.RecordCount > 0 then
begin
    frm_factor.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
    showhesabdar_salmah;
    bede_talab_sal_mah;
    jame_bedehi_kol;
    jame_pardakht_bedehi_salmah;
    jame_takhfif_salmah;

    frm_factor.type_.Caption:='?? ???'+scsal2.Text+'???'+' '+scmahall.Text;
    frm_factor.QRLabel_type2.Caption:='?? ???'+scsal2.Text+'???'+' '+scmahall.Text;
    sleep(1000);
    frm_factor.QuickRep1.Print;
end
else
  //MessageBox(Handle,'???? ???? ?????? ???? ????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
end;

end.
procedure Tfrm_kharidhaye_shakhs.dtb_salmahClick(Sender: TObject);
begin

end;


