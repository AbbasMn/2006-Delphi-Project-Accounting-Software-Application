unit Unt_search_inkharid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButtons, Grids, DBGrids, SUIDBCtrls, SUIButton,
  StdCtrls, SUIComboBox, ExtCtrls, SUIForm, DB, PDJ_XPB, DBCtrls;

type
  TFrm_search_inkharid = class(TForm)
    Dskharid: TDataSource;
    dxToolButton121: TdxToolButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    suiDBGrid1: TsuiDBGrid;
    RadioGroup1: TRadioGroup;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Lserchtype: TLabel;
    Label8: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label11: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label12: TLabel;
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
    dxToolButton1: TdxToolButton;
    procedure searchall;
    procedure searchsalmahrooz;
    procedure pardakhtisalmahrooz;
    procedure searchsalmah;
    procedure pardakhtisalmah;
    procedure searchsal;
    procedure pardakhtisal;
    procedure pardakhtiall;
    function getmonth(month:string):string;
    procedure clear;
    procedure scsalChange(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure btaeedallClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxToolButton121Click(Sender: TObject);
    procedure challClick(Sender: TObject);
    procedure scsalClick(Sender: TObject);
    procedure type_;
    procedure RadioGroup1Click(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_search_inkharid: TFrm_search_inkharid;

implementation

uses Untdmlistha, Unt_factor_search, Unt_print_mohasebe_kharid, unt_login,
  unt_datamodule1, unt_DataM_final;

{$R *.dfm}
procedure TFrm_search_inkharid.type_;
begin
 if RadioGroup1.ItemIndex=0 then
 begin
  G_hame.Visible:=true;
  G_sal.Visible:=false;
  G_sal_mah.Visible:=false;
  G_sal_mah_roz.Visible:=false;
  chall.Checked:=true;
  Frm_print_mohasebe_kharid.lsearchtype.Caption:=' ›«ò Ê— ò· Œ—ÌœÂ«';

  if chall.Checked then
    begin
      searchall;
      pardakhtiall;
      Lserchtype.Caption:='‰ «ÌÃ Ã” ÃÊ »— «”«” Â„Â Œ—ÌœÂ«';
      clear;
    end
    else
     begin
       Lserchtype.Caption:='';
       searchsal;
       pardakhtisal;
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
    pardakhtisalmahrooz;
    Lserchtype.Caption:='‰ «ÌÃ '+' »— «”«” ”«·'+''+scsalall .Text +' „«Â'+' '+ scmahall.Text+' '+'—Ê“'+' '+scrooz.Text;
    scmah.Text:='';
    chall.Checked:=false;  
 end;
end;
procedure TFrm_search_inkharid.searchall;
begin
  dmlistha.adokharidha.SQL.Text:='select * from jens_  order by  tarikh,shahrforoshande';
  Dmlistha.adokharidha.Open;
  Frm_print_mohasebe_kharid.lsearchtype.Caption:=' ›«ò Ê— ò· Œ—ÌœÂ«';
end;
procedure TFrm_search_inkharid.clear;
begin
  scmah.Text:='';
  scrooz.Text:='';
  scmahall.Text:='';
end;

procedure TFrm_search_inkharid.pardakhtiall;
begin
  Dmlistha.ADOmohasebe_jame_keraye_kharidha.SQL.Text:='select sum(keraye) as keray_kol from t_keraye' ;
  Dmlistha.ADOmohasebe_jame_keraye_kharidha.Open;

  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_kharid';
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid';
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from jens_ ';
  Dmlistha.ADOmohasebe_kharid.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_kharid.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from T_bedehi';
  DataM_final.ADOQ_jame_bede_talab_dar_kharid.Open;
end;

procedure TFrm_search_inkharid.pardakhtisalmahrooz;
var tarikh:string;
begin
  tarikh:=scsalall.Text+'/'+getmonth(scmahall.Text)+'/'+scrooz.Text;
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_kharid where tarikh='+QuotedStr(tarikh);
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.Open;

     DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid where tarikh='+QuotedStr(tarikh);
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from jens_ where tarikh='+QuotedStr(tarikh);
  Dmlistha.ADOmohasebe_kharid.Open;

  Dmlistha.ADOmohasebe_jame_keraye_kharidha.SQL.Text:='select sum(keraye) as keray_kol from t_keraye  where  tarikh='+QuotedStr(tarikh);
  Dmlistha.ADOmohasebe_jame_keraye_kharidha.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_kharid.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from T_bedehi where tarikh='+QuotedStr(tarikh);
  DataM_final.ADOQ_jame_bede_talab_dar_kharid.Open;
end;
procedure TFrm_search_inkharid.searchsalmahrooz;
var tarikh:string;
begin
  tarikh:=scsalall.Text+'/'+getmonth(scmahall.Text)+'/'+scrooz.Text;
 Dmlistha.adokharidha.SQL.Text:='select * from jens_ where  tarikh='+QuotedStr(tarikh)+
  'order by  tarikh,shahrforoshande';
  Dmlistha.adokharidha.Open;
  Frm_print_mohasebe_kharid.lsearchtype.Caption:='›«ò Ê—Œ—ÌœÂ«œ— ”«·  '+ scsalall.Text+'  „«Â  '+scmahall.Text+'  —Ê“'+'  '+scrooz.Text;
end;
procedure TFrm_search_inkharid.searchsalmah;
begin
  Dmlistha.adokharidha.SQL.Text:='select * from jens_ where tarikh like'+QuotedStr(scsal2.Text+'/'+getmonth(scmah.Text)+'%')+
  'order by tarikh,shahrforoshande';
  Dmlistha.adokharidha.Open;
  Frm_print_mohasebe_kharid.lsearchtype.Caption:='›«ò Ê—Œ—ÌœÂ«œ— ”«·  '+ scsal2.Text+'  „«Â '+scmah.Text;
end;
procedure TFrm_search_inkharid.searchsal;
begin
  Dmlistha.adokharidha.SQL.Text:='select * from jens_ where  tarikh like '+QuotedStr(scsal.Text+'%')+' order by tarikh,shahrforoshande';
  Dmlistha.adokharidha.Open;
  Frm_print_mohasebe_kharid.lsearchtype.Caption:='›«ò Ê—Œ—ÌœÂ«œ— ”«·  '+ scsal.Text;
end;
procedure TFrm_search_inkharid.pardakhtisal;
begin
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_kharid  where  tarikh like '+QuotedStr(scsal.Text+'%');
   DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.Open;

   DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid where  tarikh like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from jens_  where  tarikh like '+QuotedStr(scsal.Text+'%');
  Dmlistha.ADOmohasebe_kharid.Open;

    Dmlistha.ADOmohasebe_jame_keraye_kharidha.SQL.Text:='select sum(keraye) as keray_kol from t_keraye where tarikh like '+QuotedStr(scsal.Text+'%');
  Dmlistha.ADOmohasebe_jame_keraye_kharidha.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_kharid.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from T_bedehi where  tarikh like '+QuotedStr(scsal.Text+'%');
  DataM_final.ADOQ_jame_bede_talab_dar_kharid.Open;

end;
procedure TFrm_search_inkharid.pardakhtisalmah;
begin
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_kharid where tarikh like'+QuotedStr(scsal2.Text+'/'+getmonth(scmah.Text)+'%');
  DataM_final.ADOQ_jame_t_pardakht_nagd_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid where tarikh like'+QuotedStr(scsal2.Text+'/'+getmonth(scmah.Text)+'%');
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from jens_  where tarikh like'+QuotedStr(scsal2.Text+'/'+getmonth(scmah.Text)+'%');
  Dmlistha.ADOmohasebe_kharid.Open;

  Dmlistha.ADOmohasebe_jame_keraye_kharidha.SQL.Text:='select sum(keraye) as keray_kol from t_keraye  where tarikh like'+QuotedStr(scsal2.Text+'/'+getmonth(scmah.Text)+'%');
  Dmlistha.ADOmohasebe_jame_keraye_kharidha.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_kharid.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from T_bedehi where tarikh like'+QuotedStr(scsal2.Text+'/'+getmonth(scmah.Text)+'%');
  DataM_final.ADOQ_jame_bede_talab_dar_kharid.Open;

end;
function TFrm_search_inkharid.getmonth(month:string):string;
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

procedure TFrm_search_inkharid.scsalChange(Sender: TObject);
begin
  searchsal;
  pardakhtisal;
  Lserchtype.Caption:='‰ «ÌÃ Ã” ÃÊ »— «”«” ”«· '+ ' '+scsal.Text;
  scmah.Text:='';
  scrooz.Text:='';
  scmahall.Text:='';
  chall.Checked:=false;
end;

procedure TFrm_search_inkharid.suiButton1Click(Sender: TObject);
begin
  if (scsal2.Text='') or(scmah.Text='')then
    MessageBox(Handle,'”«· Ê „«Â Œ—Ìœ —« «‰ Œ«» ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
  begin
    searchsalmah;
    pardakhtisalmah;
    Lserchtype.Caption:='‰ «ÌÃ '+'Ã” ÃÊ »— «”«” ”«·'+''+scsal2.Text +' „«Â'+' '+ scmah.Text;
    scrooz.Text:='';
    scmahall.Text:='';
    chall.Checked:=false;
  end;
end;

procedure TFrm_search_inkharid.btaeedallClick(Sender: TObject);
begin
   if (scsalall.Text='')or(scmahall.Text='')or(scrooz.Text='') then
    MessageBox(Handle,'”«· ° „«Â Ê —Ê“ Œ—Ìœ —« «‰ Œ«» ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
  begin
    searchsalmahrooz;
    pardakhtisalmahrooz;
    Lserchtype.Caption:='‰ «ÌÃ '+' »— «”«” ”«·'+''+scsalall .Text +' „«Â'+' '+ scmahall.Text+' '+'—Ê“'+' '+scrooz.Text;
    scmah.Text:='';
    chall.Checked:=false;
  End;
end;

procedure TFrm_search_inkharid.FormShow(Sender: TObject);
begin
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;
  Frm_search_inkharid.WindowState:=wsMaximized;
  RadioGroup1.ItemIndex:=3;
  type_;
end;

procedure TFrm_search_inkharid.dxToolButton121Click(Sender: TObject);
begin
  Frm_print_mohasebe_kharid.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  Frm_print_mohasebe_kharid.QuickRep1.Preview;
end;

procedure TFrm_search_inkharid.challClick(Sender: TObject);
begin
  if chall.Checked then
    begin
      searchall;
      pardakhtiall;
      Lserchtype.Caption:='‰ «ÌÃ Ã” ÃÊ »— «”«” Â„Â Œ—ÌœÂ«';
      clear;
    end
    else
     begin
       Lserchtype.Caption:='';
       searchsal;
       pardakhtisal;
     end;
end;

procedure TFrm_search_inkharid.scsalClick(Sender: TObject);
begin
  searchsal;
  chall.Checked:=false;
  Lserchtype.Caption:='‰ «ÌÃ '+'Ã” ÃÊ »— «”«” ”«·'+''+scsal.Text;
  pardakhtisal;
end;

procedure TFrm_search_inkharid.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

procedure TFrm_search_inkharid.dxToolButton1Click(Sender: TObject);
begin
  Frm_print_mohasebe_kharid.QRLtarikh.Caption :=frm_login.Egettarikh.Text;
  Frm_print_mohasebe_kharid.QuickRep1.Print;
end;

end.
