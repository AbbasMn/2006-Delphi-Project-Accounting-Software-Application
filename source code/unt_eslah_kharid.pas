unit unt_eslah_kharid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDControl, LMDBaseControl, LMDBaseGraphicButton,
  LMDCustomSpeedButton, LMDSpeedButton, ExtCtrls, Mask, Grids, DBGrids,
  SUIDBCtrls, StdCtrls, DBCtrls, DB, SUIButton;

type
  Tfrm_eslah_kharid = class(TForm)
    GroupBox2: TGroupBox;
    DBText_shakhs: TDBText;
    DBText_geymat: TDBText;
    DBText_calacod: TDBText;
    DBText_id: TDBText;
    suiDbjens: TsuiDBGrid;
    GroupBox6: TGroupBox;
    LMDSpeedButton_add1: TLMDSpeedButton;
    LMDSpeedButton_111: TLMDSpeedButton;
    LMDSpeedButton_add2: TLMDSpeedButton;
    LMDSpeedButton_add: TLMDSpeedButton;
    LMDSpeedButton_add2255: TLMDSpeedButton;
    suiDBGrid1: TsuiDBGrid;
    GroupBox7: TGroupBox;
    L_sh_factor: TLabel;
    L_shakhs: TLabel;
    suiDBGrid2: TsuiDBGrid;
    DataSource1: TDataSource;
    Dskharidha: TDataSource;
    dsshakhs: TDataSource;
    GroupBox5: TGroupBox;
    MaskEditrooz: TMaskEdit;
    MaskEditmah: TMaskEdit;
    MaskEditsal: TMaskEdit;
    RadioGroup2: TRadioGroup;
    Label8: TLabel;
    esearch: TEdit;
    Label10: TLabel;
    e_cod: TEdit;
    LMDSpeedButton_add22: TLMDSpeedButton;
    l_review: TLabel;
    LMDSpeedButton_1: TLMDSpeedButton;
    LMDSpeedButton123: TLMDSpeedButton;
    LMDSpeedButton1: TLMDSpeedButton;
    LMDSpeedButton1231: TLMDSpeedButton;
    LMDSpeedButton123123: TLMDSpeedButton;
    CheckBox2: TCheckBox;
    suiButton2: TsuiButton;
    procedure FormShow(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure show_factorha;
    procedure aghlame_factor;
    procedure LMDSpeedButton_111Click(Sender: TObject);
    procedure LMDSpeedButton_add1Click(Sender: TObject);
    procedure LMDSpeedButton_add2255Click(Sender: TObject);
    procedure LMDSpeedButton_add2Click(Sender: TObject);
    procedure LMDSpeedButton_addClick(Sender: TObject);
    procedure mablagh_nagd_check_ghabli_sh_faktor;
    procedure enteghal_checkha_az_t_kharid_be_emp_check_kharid;
    procedure delete_forosh;
    function check_tedad_anbar_majazi:boolean;
    procedure e_codChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure LMDSpeedButton_add22Click(Sender: TObject);
    procedure LMDSpeedButton_1Click(Sender: TObject);
    procedure LMDSpeedButton123Click(Sender: TObject);
    procedure LMDSpeedButton1Click(Sender: TObject);
    procedure LMDSpeedButton1231Click(Sender: TObject);
    procedure LMDSpeedButton123123Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);

    procedure show_hame_kharidha;
    procedure suiButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah_kharid: Tfrm_eslah_kharid;

implementation

uses unt_login, Unt_mmoshakhasat_shakhs, unt_datamodule1, Taghvim,
  unt_DataM_final, Unt_DataModule_gozaresh_tarkibi, unt_elsah,
  unt_eslah_forosh, unt_eslah_forosh_add_jens, Untviewanbar,
  unt_eslahe_forosh_naghd, unt_entekhab_check_baraye_forosh,
  unt_eslahe_forosh_checkha, Untdmlistha, unt_eslahe_kharid_naghd,
  unt_eslah_kharid_add_jens, unt_eslahe_kharid_checkha,
  unt_eslah_kharid_tedad, unt_eslahe_kharid_hazf, unt_eslahe_forosh_hazf,
  Untdmanbarexit, unt_entekhab_check, untjens_kharid,
  unt_eslahe_keraye_kharid, unt_anbarhaye_havie_jens,
  unt_sabte_marjo_zayeat, unt_Dm_zayeat_marjoei, unt_eslahe_zayeat,
  unt_eslahe_marjoei, unt_tozihat;

{$R *.dfm}

procedure Tfrm_eslah_kharid.show_hame_kharidha;
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

function Tfrm_eslah_kharid.check_tedad_anbar_majazi;
begin
  check_tedad_anbar_majazi:=true;
  Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='select * from t_anbar_majazi where calaname='+
  QuotedStr(Dmlistha.ADOkharidhajens.AsString)+' and shakhs_sherkat='+QuotedStr(Dmlistha.ADOkharidhashahrforoshande.AsString)+
  ' and vahed_koli='+QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+
  ' and  vahed_jozi='+QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+
  ' and tedadanbar='+Dmlistha.ADOkharidhatedad.AsString+
  ' and tedad_jozi_da_koli='+Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+
  ' and geymatkharid='+Dmlistha.ADOkharidhagheymat.AsString+
  ' and tedad_koli='+Dmlistha.ADOkharidhatedad_koli.AsString+
  ' and barcod='+QuotedStr(Dmlistha.ADOkharidhabarcod.AsString);

  Dmlistha.ADOQuery_anbar_majazi.Open;
  
  if Dmlistha.ADOQuery_anbar_majazi.RecordCount <=0 then
    check_tedad_anbar_majazi:=false;

end;
//////////////////////
procedure Tfrm_eslah_kharid.delete_forosh;
begin
//  update_anbar;
  Dmlistha.adolistforosh.SQL.Text:='delete from  jens_  where id='+Dmlistha.ADOkharidhaid.AsString;
  Dmlistha.adolistforosh.ExecSQL;

  Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='delete  from t_anbar_majazi where calaname='+
  QuotedStr(Dmlistha.ADOkharidhajens.AsString)+' and sh_factor='+Dmlistha.ADOkharidhash_factor.AsString+
  ' and vahed_koli='+QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+
  ' and  vahed_jozi='+QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+' and tedad_jozi_da_koli='+
  Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+' and geymatkharid='+Dmlistha.ADOkharidhagheymat.AsString+
  ' and tarikh='+QuotedStr(Dmlistha.ADOkharidhatarikh.AsString)+
  ' and shakhs_sherkat='+QuotedStr(Dmlistha.ADOkharidhashahrforoshande.AsString)+
  ' and barcod='+QuotedStr(Dmlistha.ADOkharidhabarcod.AsString)+
  ' and tedad_koli='+Dmlistha.ADOkharidhatedad_koli.AsString+
  ' and tedadanbar='+Dmlistha.ADOkharidhatedad.AsString+
  ' and code_sherkati='+QuotedStr(Dmlistha.ADOkharidhacode_sherkati.AsString);

  Dmlistha.ADOQuery_anbar_majazi.ExecSQL;

end;
//////////////
procedure Tfrm_eslah_kharid.enteghal_checkha_az_t_kharid_be_emp_check_kharid;
begin
   DataM_final.ADOQ_t_Temp_pardakht_check_kharid.SQL.Text:='insert into t_Temp_pardakht_check_kharid select '+
  'code,shomare_factor,mablagh_check,sh_check,sh_hesab,tarikh,shahrforoshande,tarikh_kharid,pass'+
  '  from T_pardakht_check_kharid '+
   '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString+' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
  DataM_final.ADOQ_t_Temp_pardakht_check_kharid.ExecSQL;
end;


procedure Tfrm_eslah_kharid.mablagh_nagd_check_ghabli_sh_faktor;
begin
if  DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount>0 then
begin
  DataM_final.ADOQ_t_pardakht_nagd_kharid.SQL.Text:='select * from t_pardakht_nagd_kharid'+
  '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString+' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
  DataM_final.ADOQ_t_pardakht_nagd_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid'+
  '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString+' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from  jens_ '+
   '  where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
  Dmlistha.ADOmohasebe_kharid.Open;
end
else
begin
  DataM_final.ADOQ_t_pardakht_nagd_kharid.SQL.Text:='select * from t_pardakht_nagd_kharid'+
  '  where code<0  and shomare_factor<0';
  DataM_final.ADOQ_t_pardakht_nagd_kharid.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_kharid.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_kharid'+
  '  where code<0  and shomare_factor<0';
  DataM_final.ADOQ_T_jame_pardakht_check_kharid.Open;

  Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from  jens_ '+
   '  where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+' and sh_factor<0';
  Dmlistha.ADOmohasebe_kharid.Open;
end;
end;



procedure Tfrm_eslah_kharid.aghlame_factor;
begin
    if DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString<>'' then
    begin
      Dmlistha.ADOkharidha.SQL.Text:='select * from jens_ where shahrforoshande='+
      QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
      ' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
      Dmlistha.ADOkharidha.Open;
    end
    else
    begin
      Dmlistha.ADOkharidha.SQL.Text:='select * from jens_ where shahrforoshande='+
      QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
      ' and sh_factor<0';
      Dmlistha.ADOkharidha.Open;
    end;
end;

procedure Tfrm_eslah_kharid.show_factorha;
begin

  DataM_final.ADOQ_t_sh_facrorhaye_kharid.SQL.Text:='select * from  t_sh_facrorhaye_kharid where shahrforoshande='+
  QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and tarikh='+QuotedStr(trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text))+' order by shomare';
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
///////////////////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_eslah_kharid.FormShow(Sender: TObject);
begin
  CheckBox2.Checked:=false;
  
  RadioGroup2.ItemIndex:=0;
  MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
  MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
  MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
  esearch.Text:='';
  Frm_mmoshakhasat_shakhs.show_foroshandegan;
  show_factorha;

  esearch.Clear;
  e_cod.Clear;

  esearch.SetFocus;
  frm_eslah_kharid.WindowState:=wsMaximized;
end;

procedure Tfrm_eslah_kharid.esearchChange(Sender: TObject);
begin
   DataModule1.ADOQuery3.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_eslah_kharid.RadioGroup2Click(Sender: TObject);
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

procedure Tfrm_eslah_kharid.LMDSpeedButton_111Click(Sender: TObject);
begin
  if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount <=0 then
    MessageBox(Handle,pchar('Œ—ÌœÌ »—«Ì «’·«Õ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
   begin
   if Dmlistha.ADOkharidha.RecordCount>0 then
   begin
      if check_tedad_anbar_majazi then
      begin
        frm_eslahe_kharid_hazf.l_taeed_eslah.Caption:='no';

        l_review.Caption:=Dmlistha.ADOkharidhaid.AsString;

        frm_eslahe_kharid_hazf.ShowModal;

        frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);

        frm_eslah_kharid.aghlame_factor;
        frm_eslah_kharid.mablagh_nagd_check_ghabli_sh_faktor;

        Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye  where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
        ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
        Dmlistha.ADOmohasebe_keraye_kharid.open;

      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.SQL.Text:='select sum(geymat_kol) as kol_ from  t_marjoei where '+
      ' shakhs_sherkat='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
      ' and sh_kharid_marjoei='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.open;        
          frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);;
        Dmlistha.ADOkharidha.Locate('id',l_review.Caption,[loPartialKey]);

        {if (frm_eslahe_kharid_hazf.l_taeed_eslah.Caption='yes')then
        begin
          frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',6000);(4000);
          MessageBox(Handle,pchar('Ã‰” «‰ Œ«»Ì «“ ›«ò Ê— Œ—Ìœ Õ–› ê—œÌœ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
          aghlame_factor;
        end; }
      end
      else
        begin
          MessageBox(Handle,pchar('»Â œ·Ì· Œ—ÊÃ Ã‰” «‰ Œ«»Ì «“ «‰»«— „Ã«“Ì Ê Ê—Êœ »Â „ò«‰ Â«Ì ÕﬁÌﬁÌ ° ﬁ«œ— »Â Õ–› Ã‰” «“ ›«ò Ê— Œ—Ìœ ‰„Ì»«‘Ìœ'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
        end;
   end
   else
    MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   end;
end;

procedure Tfrm_eslah_kharid.LMDSpeedButton_add1Click(Sender: TObject);
begin
if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount <=0 then
    MessageBox(Handle,pchar('Œ—ÌœÌ »—«Ì «’·«Õ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
   if Dmlistha.ADOkharidha.RecordCount>0 then
   begin
    if check_tedad_anbar_majazi then
    begin
      frm_eslah_kharid_tedad.l_taeed_eslah.Caption:='no';

      frm_eslah_kharid_tedad.DBText_g_vahed.Text:=Dmlistha.ADOkharidhagheymat.AsString;

      l_review.Caption:=Dmlistha.ADOkharidhaid.AsString;

      frm_eslah_kharid_tedad.ShowModal;

      frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);

      frm_eslah_kharid.aghlame_factor;
      frm_eslah_kharid.mablagh_nagd_check_ghabli_sh_faktor;

      Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye   where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
      ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
      Dmlistha.ADOmohasebe_keraye_kharid.open;

      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.SQL.Text:='select sum(geymat_kol) as kol_ from  t_marjoei where '+
      ' shakhs_sherkat='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
      ' and sh_kharid_marjoei='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.open;
      frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);

      Dmlistha.ADOkharidha.Locate('id',l_review.Caption,[loPartialKey]);


      
      {if( frm_eslah_kharid_tedad.l_taeed_eslah.Caption='yes') then
      begin
       MessageBox(Handle,pchar(' ⁄œ«œ ÃœÌœ Ã‰” «‰ Œ«»Ì –ŒÌ—Â ‘œ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
       frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',6000);(3000);
        frm_eslah_kharid.aghlame_factor;
      end;}
    end
    else
      MessageBox(Handle,pchar('»Â œ·Ì· Œ—ÊÃ Ã‰” «‰ Œ«»Ì «“ «‰»«— „Ã«“Ì Ê Ê—Êœ »Â «‰»«—Â«Ì ÕﬁÌﬁÌ ° ﬁ«œ— »Â «’·«Õ  ⁄œ«œ Ã‰” ‰„Ì»«‘Ìœ'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   end
   else
    MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;
end;

procedure Tfrm_eslah_kharid.LMDSpeedButton_add2255Click(Sender: TObject);
begin
if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount<=0 then
  MessageBox(Handle,pchar('›«ò Ê—Ì »—«Ì «÷«›Â ò—œ‰ Ã‰” »Â ¬‰ ÊÃÊœ ‰œ«—œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
  frm_eslah_kharid_add_jens.L_kol_gabl.Caption:=Dmlistha.ADOmohasebe_kharidkol_.AsString;
    
  frm_eslah_kharid_add_jens.ShowModal;
  frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);
  frm_eslah_kharid.aghlame_factor;
  frm_eslah_kharid.mablagh_nagd_check_ghabli_sh_faktor;

  Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye   where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
  ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
  Dmlistha.ADOmohasebe_keraye_kharid.open;
  
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.SQL.Text:='select sum(geymat_kol) as kol_ from  t_marjoei where '+
      ' shakhs_sherkat='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
      ' and sh_kharid_marjoei='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.open;
  frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);

 end;
end;

procedure Tfrm_eslah_kharid.LMDSpeedButton_add2Click(Sender: TObject);
begin
  if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount<=0 then
   MessageBox(Handle,pchar('Œ—ÌœÌ »—«Ì «’·«Õ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
   if Dmlistha.ADOkharidha.RecordCount>0 then
   begin
    frm_eslahe_kharid_naghd.ShowModal;

    frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);
    frm_eslah_kharid.aghlame_factor;
    frm_eslah_kharid.mablagh_nagd_check_ghabli_sh_faktor;

    Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
    ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
    Dmlistha.ADOmohasebe_keraye_kharid.open;

      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.SQL.Text:='select sum(geymat_kol) as kol_ from  t_marjoei where '+
      ' shakhs_sherkat='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
      ' and sh_kharid_marjoei='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.open;    
    frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);

   end
   else
    MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;
end;

procedure Tfrm_eslah_kharid.LMDSpeedButton_addClick(Sender: TObject);
begin
  if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount<=0 then
MessageBox(Handle,pchar('Œ—ÌœÌ »—«Ì «’·«Õ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
  begin
   if Dmlistha.ADOkharidha.RecordCount>0 then
   begin
    frmjens_kharid.hazf_hame_check;
    enteghal_checkha_az_t_kharid_be_emp_check_kharid;
    frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);
    frm_entekhab_check.jame_temp_check_kharid;
    frm_entekhab_check.show_temp_check_kharid;
    frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);

  
    frm_eslahe_kharid_checkha.ShowModal;
    frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);
    frm_eslah_kharid.aghlame_factor;
    frm_eslah_kharid.mablagh_nagd_check_ghabli_sh_faktor;

    Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye  where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
    ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
    Dmlistha.ADOmohasebe_keraye_kharid.open;

      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.SQL.Text:='select sum(geymat_kol) as kol_ from  t_marjoei where '+
      ' shakhs_sherkat='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
      ' and sh_kharid_marjoei='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
      Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.open;    
    frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);

   end
   else
    MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;
end;

procedure Tfrm_eslah_kharid.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure Tfrm_eslah_kharid.e_codKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_kharid.LMDSpeedButton_add22Click(Sender: TObject);
begin
  if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount<=0 then
   MessageBox(Handle,pchar('Œ—ÌœÌ »—«Ì «’·«Õ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
     begin
        if Dmlistha.ADOkharidha.RecordCount>0 then
        begin

          frm_eslahe_keraye_kharid.e_keraye.Text:=Dmlistha.ADOmohasebe_keraye_kharidkeraye.AsString;
          frm_eslahe_keraye_kharid.e_keraye_darsadi.Text:=FloatToStr(round((Dmlistha.ADOmohasebe_keraye_kharidkeraye.AsFloat/Dmlistha.ADOmohasebe_kharidkol_.AsFloat)*100));

          frm_eslahe_keraye_kharid.ShowModal;
          frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);
          frm_eslah_kharid.aghlame_factor;
          frm_eslah_kharid.mablagh_nagd_check_ghabli_sh_faktor;

          Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye   where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
          ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
          Dmlistha.ADOmohasebe_keraye_kharid.open;

        Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.SQL.Text:='select sum(geymat_kol) as kol_ from  t_marjoei where '+
        ' shakhs_sherkat='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
        ' and sh_kharid_marjoei='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
        Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.open;
          frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);

        end
        else
        MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
     end;
end;

procedure Tfrm_eslah_kharid.LMDSpeedButton_1Click(Sender: TObject);
begin
  if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount<=0 then
   MessageBox(Handle,pchar('Œ—ÌœÌ »—«Ì «’·«Õ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
   if Dmlistha.ADOkharidha.RecordCount>0 then
   begin

      Dm_zayeat_marjoei.ADOQ_zayeat.SQL.Text:='select * from t_zayeat where calaname='+QuotedStr(Dmlistha.ADOkharidhajens.AsString)+
      ' and shakhs_sherkat='+QuotedStr(Dmlistha.ADOkharidhashahrforoshande.AsString)+
      ' and sh_kharid_zayeat='+Dmlistha.ADOkharidhash_factor.AsString+
      ' and code_sherkati='+QuotedStr(Dmlistha.ADOkharidhacode_sherkati.AsString)+
      ' and barcod='+QuotedStr(Dmlistha.ADOkharidhabarcod.AsString)+
      ' and tedad_jozi_da_koli='+Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+
      ' and vahed_jozi='+QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+
      ' and vahed_koli='+QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+
      ' and geymatkharid='+Dmlistha.ADOkharidhagheymat.AsString ;
      Dm_zayeat_marjoei.ADOQ_zayeat.Open;

      if Dm_zayeat_marjoei.ADOQ_zayeat.RecordCount>0 then
        MessageBox(Handle,pchar('÷«Ì⁄«  Ã‰” ﬁ»·« Ê«—œ ‘œÂ «‰œ „Ì  Ê«‰Ìœ ÷«Ì⁄«  —« «’·«Õ ‰„«ÌÌœ'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
      else
      begin
        frm_anbarhaye_havie_jens.l_type.Caption:='zayeat';
        frm_anbarhaye_havie_jens.Caption:=' À»   ⁄œ«œ Ã‰” «‰ Œ«»Ì »Â ’Ê—  ÷«Ì⁄«  Ê Ê—Êœ »Â «‰»«— ÷«Ì⁄«  ';

        frm_sabte_marjo_zayeat.g_bede_talab_marjo.Visible:=false;
        frm_sabte_marjo_zayeat.g_tozih_zayeat.Visible:=true;
        frm_sabte_marjo_zayeat.Caption:='Ê—Êœ  ⁄œ«œ «‰ Œ«» ‘œÂ Ã‰” »Â «‰»«— ÷«Ì⁄« ';

        frm_anbarhaye_havie_jens.ShowModal;
      end;

   end
   else
    MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;
end;

procedure Tfrm_eslah_kharid.LMDSpeedButton123Click(Sender: TObject);
begin
  if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount<=0 then
   MessageBox(Handle,pchar('Œ—ÌœÌ »—«Ì «’·«Õ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
   if Dmlistha.ADOkharidha.RecordCount>0 then
   begin

      Dm_zayeat_marjoei.ADOQ_zayeat.SQL.Text:='select * from t_zayeat where calaname='+QuotedStr(Dmlistha.ADOkharidhajens.AsString)+
      ' and shakhs_sherkat='+QuotedStr(Dmlistha.ADOkharidhashahrforoshande.AsString)+
      ' and sh_kharid_zayeat='+Dmlistha.ADOkharidhash_factor.AsString+
      ' and code_sherkati='+QuotedStr(Dmlistha.ADOkharidhacode_sherkati.AsString)+
      ' and barcod='+QuotedStr(Dmlistha.ADOkharidhabarcod.AsString)+
      ' and tedad_jozi_da_koli='+Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+
      ' and vahed_jozi='+QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+
      ' and vahed_koli='+QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+
      ' and geymatkharid='+Dmlistha.ADOkharidhagheymat.AsString ;
      Dm_zayeat_marjoei.ADOQ_zayeat.Open;

      if Dm_zayeat_marjoei.ADOQ_zayeat.RecordCount>0 then
        MessageBox(Handle,pchar('»œ·Ì· À»  ÷«Ì⁄«  »—«Ì Ã‰” «‰ Œ«»Ì ‰„Ì  Ê«‰ Ã‰” —« „—ÃÊ⁄ ò—œ . »—«Ì „—ÃÊ⁄ ò—œ‰ Ã‰” »«Ìœ  ⁄œ«œ ÷«Ì⁄«  —« «’·«Õ ‰„ÊœÂ Ê »—«»— ’›— ﬁ—«— œÂÌœ'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
      else
      begin
        Dm_zayeat_marjoei.ADOQ_marjoei.SQL.Text:='select * from t_marjoei where calaname='+QuotedStr(Dmlistha.ADOkharidhajens.AsString)+
        ' and shakhs_sherkat='+QuotedStr(Dmlistha.ADOkharidhashahrforoshande.AsString)+
        ' and sh_kharid_marjoei='+Dmlistha.ADOkharidhash_factor.AsString+
        ' and code_sherkati='+QuotedStr(Dmlistha.ADOkharidhacode_sherkati.AsString)+
        ' and barcod='+QuotedStr(Dmlistha.ADOkharidhabarcod.AsString)+
        ' and tedad_jozi_da_koli='+Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+
        ' and vahed_jozi='+QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+
        ' and vahed_koli='+QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+
        ' and geymatkharid='+Dmlistha.ADOkharidhagheymat.AsString ;
        Dm_zayeat_marjoei.ADOQ_marjoei.Open;

        if Dm_zayeat_marjoei.ADOQ_marjoei.RecordCount>0 then
          MessageBox(Handle,pchar('Ã‰” «‰ Œ«»Ì ﬁ»·« »⁄‰Ê«‰ „—ÃÊ⁄Ì À»  ‘œÂ «”  „Ì  Ê«‰Ìœ  ⁄œ«œ „—ÃÊ⁄Ì Ã‰” —« «’·«Õ ‰„«ÌÌœ'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
        else
        begin
          frm_anbarhaye_havie_jens.l_type.Caption:='marjoei';
          frm_anbarhaye_havie_jens.Caption:=' À»   ⁄œ«œ Ã‰” «‰ Œ«»Ì »Â ’Ê—  „—ÃÊ⁄ »Â ›—Ê‘‰œÂ ';

          frm_sabte_marjo_zayeat.g_bede_talab_marjo.Visible:=true;
          frm_sabte_marjo_zayeat.g_tozih_zayeat.Visible:=false;
          frm_sabte_marjo_zayeat.Caption:='„—ÃÊ⁄ ‰„Êœ‰  ⁄œ«œ Ã‰” «‰ Œ«»Ì »Â ›—Ê‘‰œÂ Ê Õ–›  ⁄œ«œ „—ÃÊ⁄Ì «“ ›«ò Ê— Œ—Ìœ';

          frm_anbarhaye_havie_jens.ShowModal;


          frm_eslah_kharid.aghlame_factor;
          frm_eslah_kharid.mablagh_nagd_check_ghabli_sh_faktor;

          Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye   where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
          ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
          Dmlistha.ADOmohasebe_keraye_kharid.open;

          Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.SQL.Text:='select sum(geymat_kol) as kol_ from  t_marjoei where '+
          ' shakhs_sherkat='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
          ' and sh_kharid_marjoei='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
          Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.open;          
          frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);
        end
      end;
   end
   else
    MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;   
end;

procedure Tfrm_eslah_kharid.LMDSpeedButton1Click(Sender: TObject);
begin
  if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount<=0 then
   MessageBox(Handle,pchar('Œ—ÌœÌ »—«Ì «’·«Õ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
   if Dmlistha.ADOkharidha.RecordCount>0 then
   begin
      Dm_zayeat_marjoei.ADOQ_zayeat.SQL.Text:='select * from t_zayeat where calaname='+QuotedStr(Dmlistha.ADOkharidhajens.AsString)+
      ' and shakhs_sherkat='+QuotedStr(Dmlistha.ADOkharidhashahrforoshande.AsString)+
      ' and sh_kharid_zayeat='+Dmlistha.ADOkharidhash_factor.AsString+
      ' and code_sherkati='+QuotedStr(Dmlistha.ADOkharidhacode_sherkati.AsString)+
      ' and barcod='+QuotedStr(Dmlistha.ADOkharidhabarcod.AsString)+
      ' and tedad_jozi_da_koli='+Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+
      ' and vahed_jozi='+QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+
      ' and vahed_koli='+QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+
      ' and geymatkharid='+Dmlistha.ADOkharidhagheymat.AsString ;
      Dm_zayeat_marjoei.ADOQ_zayeat.Open;

      if Dm_zayeat_marjoei.ADOQ_zayeat.RecordCount=0 then
        MessageBox(Handle,pchar('÷«Ì⁄«  Ã‰” »—«Ì Ã‰” «‰ Œ«»Ì –ŒÌ—Â ‰‘œÂ «” '),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
      else
      begin
        l_review.Caption:=Dmlistha.ADOkharidhaid.AsString;
        frm_eslahe_zayeat.ShowModal;
        Dmlistha.ADOkharidha.Locate('id',l_review.Caption,[loPartialKey]);
      end;

   end
   else
    MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;
end;

procedure Tfrm_eslah_kharid.LMDSpeedButton1231Click(Sender: TObject);
begin
  if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount<=0 then
   MessageBox(Handle,pchar('Œ—ÌœÌ »—«Ì «’·«Õ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
   if Dmlistha.ADOkharidha.RecordCount>0 then
   begin
        Dm_zayeat_marjoei.ADOQ_marjoei.SQL.Text:='select * from t_marjoei where calaname='+QuotedStr(Dmlistha.ADOkharidhajens.AsString)+
        ' and shakhs_sherkat='+QuotedStr(Dmlistha.ADOkharidhashahrforoshande.AsString)+
        ' and sh_kharid_marjoei='+Dmlistha.ADOkharidhash_factor.AsString+
        ' and code_sherkati='+QuotedStr(Dmlistha.ADOkharidhacode_sherkati.AsString)+
        ' and barcod='+QuotedStr(Dmlistha.ADOkharidhabarcod.AsString)+
        ' and tedad_jozi_da_koli='+Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+
        ' and vahed_jozi='+QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+
        ' and vahed_koli='+QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+
        ' and geymatkharid='+Dmlistha.ADOkharidhagheymat.AsString ;
        Dm_zayeat_marjoei.ADOQ_marjoei.Open;

        if Dm_zayeat_marjoei.ADOQ_marjoei.RecordCount=0 then
          MessageBox(Handle,pchar('Ã‰” «‰ Œ«»Ì »⁄‰Ê«‰ „—ÃÊ⁄Ì À»  ‰‘œÂ «” '),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
        else
        begin
          l_review.Caption:=Dmlistha.ADOkharidhaid.AsString;
          frm_eslahe_marjoei.ShowModal;

          frm_eslah_kharid.aghlame_factor;
          frm_eslah_kharid.mablagh_nagd_check_ghabli_sh_faktor;

          Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye   where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
          ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
          Dmlistha.ADOmohasebe_keraye_kharid.open;

          Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.SQL.Text:='select sum(geymat_kol) as kol_ from  t_marjoei where '+
          ' shakhs_sherkat='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
          ' and sh_kharid_marjoei='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
          Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoei.open;
          frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',3000);
          Dmlistha.ADOkharidha.Locate('id',l_review.Caption,[loPartialKey]);
        end;
   end
   else
    MessageBox(Handle,pchar('«Ã‰«” ›«ò Ê— «‰ Œ«»Ì Õ–› ‘œÂ «‰œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;
end;

procedure Tfrm_eslah_kharid.LMDSpeedButton123123Click(Sender: TObject);
begin
if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount <=0 then
    MessageBox(Handle,pchar('Œ—ÌœÌ «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
  frm_tozihat.l_type_tozih.Caption:='edit';
  frm_tozihat.l_type_factor.Caption:='kharid';
  frm_tozihat.Memo1.Text:=DataM_final.ADOQ_tozihate_kharidtozih.AsString;
  frm_tozihat.ShowModal;
 end;
end;

procedure Tfrm_eslah_kharid.CheckBox2Click(Sender: TObject);
begin
   if CheckBox2.Checked then
   begin
    show_hame_kharidha
   end
   else
    show_factorha;
end;

procedure Tfrm_eslah_kharid.suiButton2Click(Sender: TObject);
begin
  DataM_final.ADOQ_t_sh_facrorhaye_kharid.Last;
end;

end.
