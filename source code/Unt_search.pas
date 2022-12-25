unit Unt_search;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, StdCtrls, SUIComboBox, Grids, DBGrids,
  SUIDBCtrls, PDJ_XPB, DB, dxCore, dxButtons, SUIButton, DBCtrls, XPMan,
  PDJ_XPC;

type
  TFrm_search = class(TForm)
    Dskharidha: TDataSource;
    dxToolButton12: TdxToolButton;
    DataSource1: TDataSource;
    DataSource4: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource5: TDataSource;
    suiDBGrid1: TsuiDBGrid;
    RadioGroup1: TRadioGroup;
    GroupBox5: TGroupBox;
    Lserchtype: TLabel;
    Label10: TLabel;
    DBText3: TDBText;
    Label9: TLabel;
    DBText1: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    DBText4: TDBText;
    Label11: TLabel;
    DBText5: TDBText;
    DBText2: TDBText;
    G_sal_mah_roz: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btaeedall: TsuiButton;
    scsalall: TDBLookupComboBox;
    scmahall: TComboBox;
    scrooz: TComboBox;
    G_sal_mah: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    suiButton1: TsuiButton;
    scsal2: TDBLookupComboBox;
    scmah: TComboBox;
    G_sal: TGroupBox;
    Label1: TLabel;
    scsal: TDBLookupComboBox;
    G_hame: TGroupBox;
    chall: TPDJXPCheckBox;
    Label12: TLabel;
    DBText6: TDBText;
    DataSource6: TDataSource;
    dxToolButton1: TdxToolButton;
    function getmonth(month:string):string;
    procedure scsalChange(Sender: TObject);
    procedure jamdaryaftisalmah;
    procedure jamdaryaftisal;
    procedure searchsal;
    procedure searchsalmah;
    procedure searchsalmahrooz;
    procedure jamdaryaftsalmahrooz;
    procedure btaeedallClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure jamedaryaftall;
    procedure challClick(Sender: TObject);
    procedure searchall;
    procedure scsalClick(Sender: TObject);
    procedure type_;
    procedure RadioGroup1Click(Sender: TObject);
    procedure dxToolButton12Click(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_search: TFrm_search;

implementation

uses unt_main, Untdmlistha, unt_factor, Unt_factor_search, unt_login,
  unt_datamodule1, unt_DataM_final;

{$R *.dfm}
procedure TFrm_search.type_;
begin
 if RadioGroup1.ItemIndex=0 then
 begin
  G_hame.Visible:=true;
  G_sal.Visible:=false;
  G_sal_mah.Visible:=false;
  G_sal_mah_roz.Visible:=false;
  chall.Checked:=true;
  if chall.Checked then
    begin
      searchall;
      Lserchtype.Caption:='‰ «ÌÃ Ã” ÃÊ »— «”«” Â„Â ›—Ê‘Â«';
      Frm_factor_search.lsearchtype.Caption:='Â„Â ›—Ê‘Â«';
      searchall;
      jamedaryaftall;
    end
    else
     begin
       Lserchtype.Caption:='';
       searchsal;
     end;
 end;
 if RadioGroup1.ItemIndex=1 then
 begin
  G_hame.Visible:=false;
  G_sal.Visible:=true;
  G_sal_mah.Visible:=false;
  G_sal_mah_roz.Visible:=false;
 end;
 if RadioGroup1.ItemIndex=2 then
 begin
  G_hame.Visible:=false;
  G_sal.Visible:=false;
  G_sal_mah.Visible:=true;
  G_sal_mah_roz.Visible:=false;
 end;
 if RadioGroup1.ItemIndex=3 then
 begin
  G_hame.Visible:=false;
  G_sal.Visible:=false;
  G_sal_mah.Visible:=false;
  G_sal_mah_roz.Visible:=true;
    searchsalmahrooz;
    jamdaryaftsalmahrooz;
    Lserchtype.Caption:='‰ «ÌÃ'+ ' »— «”«” ”«· '+''+scsalall .Text +' „«Â'+' '+ scmahall.Text+' '+'—Ê“'+' '+scrooz.Text;
    chall.Checked:=False;
 end;
end;

procedure TFrm_search.searchall;
begin
  Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens order by tarikh,shahrforoshande,jens';
  Dmlistha.adolistforosh.Open;
  Frm_factor_search.lsearchtype.Caption:='  ›«ò Ê— ò· ›—Ê‘Â« ';
end;
procedure TFrm_search.jamedaryaftall;
begin
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_forosh';
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh';
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

  Dmlistha.ADOmohasebe_forosh.SQL.Text:='select sum(geymat_jens)as kol_ from forosh_jens ';
  Dmlistha.ADOmohasebe_forosh.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_forosh.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from bedeh_bestan';
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.Open;

  DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh';
  DataM_final.ADOQ_jame_takhfife.Open;
end;
procedure TFrm_search.jamdaryaftsalmahrooz;
var tarikh:string;
begin
  tarikh:=scsalall.Text+'/'+getmonth(scmahall.Text)+'/'+scrooz.Text;
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_forosh where tarikh='+QuotedStr(tarikh);
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where tarikh='+QuotedStr(tarikh);
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

  Dmlistha.ADOmohasebe_forosh.SQL.Text:='select sum(geymat_jens)as kol_ from forosh_jens where tarikh='+QuotedStr(tarikh);
  Dmlistha.ADOmohasebe_forosh.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_forosh.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from bedeh_bestan where tarikh='+QuotedStr(tarikh);
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.Open;

  DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh where tarikh='+QuotedStr(tarikh);
  DataM_final.ADOQ_jame_takhfife.Open;
end;
procedure TFrm_search.searchsalmahrooz;
begin
 Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens where  tarikh='+
 QuotedStr(scsalall.Text+'/'+getmonth(scmahall.Text)+'/'+scrooz.Text)+
 ' order by shahrforoshande,jens';
  Dmlistha.adolistforosh.Open;
  Frm_factor_search.lsearchtype.Caption:='›«ò Ê— ›—Ê‘Â«œ— ”«·  '+ scsalall.Text+'  „«Â  '+scmahall.Text+'  —Ê“'+'  '+scrooz.Text;
end;
procedure TFrm_search.searchsalmah;
begin
  Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens where tarikh like '+
  QuotedStr(scsal2.Text+'/'+getmonth(scmah.Text)+'%')+
  ' order by tarikh,shahrforoshande,jens';
  Dmlistha.adolistforosh.Open;
  Frm_factor_search.lsearchtype.Caption:='›«ò Ê— ›—Ê‘Â«œ— ”«·  '+ scsal2.Text+'  „«Â '+scmah.Text;
end;
procedure TFrm_search.searchsal;
begin
  Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens where tarikh like '+QuotedStr(scsal.Text+'%')+
  ' order by tarikh,shahrforoshande,jens';
  Dmlistha.adolistforosh.Open;
  
  Frm_factor_search.lsearchtype.Caption:='›«ò Ê— ›—Ê‘Â«œ— ”«·  '+ scsal.Text;
end;
procedure TFrm_search.jamdaryaftisal;
begin
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_forosh  where  tarikh like '+QuotedStr(scsal.Text+'%');
   DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

   DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where  tarikh like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

  Dmlistha.ADOmohasebe_forosh.SQL.Text:='select sum(geymat_jens)as kol_ from forosh_jens  where  tarikh like '+QuotedStr(scsal.Text+'%');
  Dmlistha.ADOmohasebe_forosh.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_forosh.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from bedeh_bestan where  tarikh like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.Open;

  DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh where  tarikh like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_jame_takhfife.Open;
end;
procedure TFrm_search.jamdaryaftisalmah;
begin
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_forosh where tarikh like'+QuotedStr(scsal2.Text+'/'+getmonth(scmah.Text)+'%');
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where tarikh like'+QuotedStr(scsal2.Text+'/'+getmonth(scmah.Text)+'%');
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

  Dmlistha.ADOmohasebe_forosh.SQL.Text:='select sum(geymat_jens)as kol_ from forosh_jens  where tarikh like'+QuotedStr(scsal2.Text+'/'+getmonth(scmah.Text)+'%');
  Dmlistha.ADOmohasebe_forosh.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_forosh.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from bedeh_bestan where tarikh like'+QuotedStr(scsal2.Text+'/'+getmonth(scmah.Text)+'%');
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.Open;

  DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh where tarikh like'+QuotedStr(scsal2.Text+'/'+getmonth(scmah.Text)+'%');
  DataM_final.ADOQ_jame_takhfife.Open;
end;
function TFrm_search.getmonth(month:string):string;
begin
  if month='›—Ê—œÌ‰' then
    getmonth:='01'
  else
  if month='«—œÌ»Â‘ ' then
    getmonth:='02'
  else
  if month='Œ—œ«œ' then
    getmonth:='03'
  else
  if month=' Ì—' then
    getmonth:='04'
  else
  if month='„—œ«œ' then
    getmonth:='05'
  else
  if month='‘Â—ÌÊ—' then
    getmonth:='06'
  else
  if month='„Â—' then
    getmonth:='07'
  else
  if month='¬»«‰' then
    getmonth:='08'
  else
  if month='¬–—' then
    getmonth:='09'
  else
  if month='»Â„‰' then
    getmonth:='11'
  else
  if month='«”›‰œ' then
    getmonth:='12'
  else
    getmonth:='10' //// „«Â  Ì—

end;


procedure TFrm_search.scsalChange(Sender: TObject);
begin
  searchsal;
  jamdaryaftisal;
  Lserchtype.Caption:='‰ «ÌÃ Ã” ÃÊ »— «”«” ”«· '+ ' '+scsal.Text;
   chall.Checked:=False;
end;

procedure TFrm_search.btaeedallClick(Sender: TObject);
begin
  if (scsalall.Text='')or(scmahall.Text='')or(scrooz.Text='') then
    MessageBox(Handle,'”«· ° „«Â Ê —Ê“ ›—Ê‘ —« «‰ Œ«» ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
  begin
    searchsalmahrooz;
    jamdaryaftsalmahrooz;
    Lserchtype.Caption:='‰ «ÌÃ'+ ' »— «”«” ”«· '+''+scsalall .Text +' „«Â'+' '+ scmahall.Text+' '+'—Ê“'+' '+scrooz.Text;
    chall.Checked:=False;
  end;
end;

procedure TFrm_search.FormShow(Sender: TObject);
begin
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;
  Frm_search.WindowState:=wsMaximized;
  RadioGroup1.ItemIndex:=3;
  type_;
end;

procedure TFrm_search.suiButton1Click(Sender: TObject);
begin
  if (scsal2.Text='') or(scmah.Text='')then
    MessageBox(Handle,'”«· Ê „«Â ›—Ê‘ —« «‰ Œ«» ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
  begin
    searchsalmah;
    jamdaryaftisalmah;
    Lserchtype.Caption:='‰ «ÌÃ Ã” ÃÊ »— «”«” ”«·'+''+scsal2.Text +' „«Â'+' '+ scmah.Text ;
   chall.Checked:=False;
  end;
end;

procedure TFrm_search.challClick(Sender: TObject);
begin
  if chall.Checked then
    begin
      searchall;
      jamedaryaftall;
      Lserchtype.Caption:='‰ «ÌÃ Ã” ÃÊ »— «”«” Â„Â ›—Ê‘Â«';
    end
    else
    begin
      Lserchtype.Caption:='';
      searchsal;
    end;
end;

procedure TFrm_search.scsalClick(Sender: TObject);
begin
  searchsal;
  jamdaryaftisal;
  chall.Checked:=false;
  Lserchtype.Caption:='‰ «ÌÃ Ã” ÃÊ »— «”«” ”«·'+''+scsal.Text ;
end;

procedure TFrm_search.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

procedure TFrm_search.dxToolButton12Click(Sender: TObject);
begin
  Frm_factor_search.QRLabel3.Caption :=frm_login.egettarikh.Text;
  Frm_factor_search.QuickRep1.Preview;
end;

procedure TFrm_search.dxToolButton1Click(Sender: TObject);
begin
  Frm_factor_search.QRLabel3.Caption :=frm_login.egettarikh.Text;
  Frm_factor_search.QuickRep1.Print;
end;

end.
