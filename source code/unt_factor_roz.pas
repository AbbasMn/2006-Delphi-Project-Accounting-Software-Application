unit unt_factor_roz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, StdCtrls, Mask, SUIButton, DB, Grids,
  DBGrids, SUIDBCtrls, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDBaseLabel, LMDCustomGlyphLabel, LMDGlyphLabel, LMDGraphicControl,
  LMDScrollText, DBCtrls, Buttons, ActnMan, ActnColorMaps;

type
  Tfrm_factor_roz = class(TForm)
    GroupBox2: TGroupBox;
    MaskEditrooz: TMaskEdit;
    MaskEditmah: TMaskEdit;
    MaskEditsal: TMaskEdit;
    RadioGroup1: TRadioGroup;
    suiDBGrid1: TsuiDBGrid;
    Gp_factor: TGroupBox;
    GroupBox5: TGroupBox;
    DataSource2: TDataSource;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    esearch: TEdit;
    suiDBGrid2: TsuiDBGrid;
    DataSource1: TDataSource;
    btn_view_roz: TsuiButton;
    CheckBox1: TCheckBox;
    l_kharidar: TLabel;
    dsshakhs: TDataSource;
    Label5: TLabel;
    Label_tedad: TLabel;
    DBText_arzesh_kol: TDBText;
    DBText_nagd: TDBText;
    DBText_check: TDBText;
    DBText_bedehi: TDBText;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Lsal1: TLabel;
    suiDBGrid3: TsuiDBGrid;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    Label6: TLabel;
    DBText2: TDBText;
    Label7: TLabel;
    DBText1: TDBText;
    DataSource7: TDataSource;
    RadioGroup2: TRadioGroup;
    Label8: TLabel;
    e_cod: TEdit;
    btn_print_roz: TsuiButton;
    CheckBox2: TCheckBox;
    suiButton2: TsuiButton;
    btn_print_taki: TsuiButton;
    btn_view_taki: TsuiButton;
    procedure RadioGroup1Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure facor(x:string);
    procedure btn_view_rozClick(Sender: TObject);
    procedure Edit_sh_factorKeyPress(Sender: TObject; var Key: Char);
    procedure show_ba_sh_factor2(x:string);
    procedure show_kol_kharidha_dar_roz;
    procedure Button1Click(Sender: TObject);
    procedure typ_shomare_factor;
    procedure RadioGroup2Click(Sender: TObject);
    procedure e_codChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure btn_print_rozClick(Sender: TObject);
    procedure show_kol_kharidha_dar_hame_rozha;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure btn_print_takiClick(Sender: TObject);
    procedure btn_view_takiClick(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
     s:TStringList;
     sal,mah,rooz:string;
    { Public declarations }
  end;

var
  frm_factor_roz: Tfrm_factor_roz;

implementation

uses unt_login, Taghvim, unt_datamodule1, Untlistkharidhayeshakhspas,
  Untdmlistha, unt_pint_factor_roz, Unt_DataModule_gozaresh_tarkibi,
  unt_gozaresh_tarkibi_mpshtari, unt_forosh_property, ADODB,
  unt_datamodule2, unt_DataM_final, unt_pint_factor_kol_roz, unt_main,
  Unt_mmoshakhasat_shakhs, unt_print_fo2;

{$R *.dfm}

procedure Tfrm_factor_roz.show_kol_kharidha_dar_hame_rozha;
var s,po:string;
begin
   s:=trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text);
     DataM_final.ADOQ_t_sh_facrorhaye_forosh2.SQL.Text:='select * from  t_sh_facrorhaye_forosh where shahrforoshande='+
     QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' order by shomare';
    DataM_final.ADOQ_t_sh_facrorhaye_forosh2.open;

   if  DataM_final.ADOQ_t_sh_facrorhaye_forosh2.RecordCount =0 then
   begin
        po:='select * from bedeh_bestan where'+
        '  sh_khaid<0';

      DataM_final.ADOQ_bedeh_talabe_factor_forosh.SQL.Text:=po;
      DataM_final.ADOQ_bedeh_talabe_factor_forosh.Open;

        DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd) as nagd_kol from  t_pardakht_nagd_forosh '+
        ' where shomare_factor< 0';
        DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

        DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol  from  T_pardakht_check_forosh '+
        ' where shomare_factor< 0';
        DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

        DataM_final.ADOQ_g_kol_foroshha.SQL.Text:='select sum(geymat_jens) as g_kol_foroshha from  forosh_jens '+
        '  where sh_factor< 0';
        DataM_final.ADOQ_g_kol_foroshha.Open;

        DataM_final.ADOQ_bedeh_talabe_factor_forosh.SQL.Text:='select * from  bedeh_bestan where code<0';
        DataM_final.ADOQ_bedeh_talabe_factor_forosh.Open;

        Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens where sh_factor < 0 ';
        Dmlistha.adolistforosh.Open;

        DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh where sh_factor < 0';
        DataM_final.ADOQ_takhfife_forosh.Open;

      frm_pint_factor_kol_roz.QRLabel_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);
      Label_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);
      frm_pint_factor_roz.QRLabel_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);


   end; 
end;

procedure Tfrm_factor_roz.typ_shomare_factor;
begin
  if RadioGroup2.ItemIndex=0 then
  begin
    frm_pint_factor_roz.QRL_tarikhe_forosh.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_forosh2tarikh.AsString;  
    frm_pint_factor_roz.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
  end
  else
  begin
    frm_pint_factor_roz.QRLtarikh.Caption:='';
    frm_pint_factor_roz.QRL_tarikhe_forosh.Caption:='';
  end;
end;

procedure Tfrm_factor_roz.show_kol_kharidha_dar_roz;
var s,po:string;
begin
    s:=trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text);
     DataM_final.ADOQ_t_sh_facrorhaye_forosh2.SQL.Text:='select * from  t_sh_facrorhaye_forosh where shahrforoshande='+
     QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and tarikh='+QuotedStr(s)+' order by shomare';
    DataM_final.ADOQ_t_sh_facrorhaye_forosh2.open;

   if  DataM_final.ADOQ_t_sh_facrorhaye_forosh2.RecordCount =0 then
   begin
        po:='select * from bedeh_bestan where'+
        '  sh_khaid<0';

      DataM_final.ADOQ_bedeh_talabe_factor_forosh.SQL.Text:=po;
      DataM_final.ADOQ_bedeh_talabe_factor_forosh.Open;

        DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd) as nagd_kol from  t_pardakht_nagd_forosh '+
        ' where shomare_factor< 0';
        DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

        DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol  from  T_pardakht_check_forosh '+
        ' where shomare_factor< 0';
        DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

        DataM_final.ADOQ_g_kol_foroshha.SQL.Text:='select sum(geymat_jens) as g_kol_foroshha from  forosh_jens '+
        '  where sh_factor< 0';
        DataM_final.ADOQ_g_kol_foroshha.Open;

        DataM_final.ADOQ_bedeh_talabe_factor_forosh.SQL.Text:='select * from  bedeh_bestan where code<0';
        DataM_final.ADOQ_bedeh_talabe_factor_forosh.Open;

        Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens where sh_factor < 0';
        Dmlistha.adolistforosh.Open;

        DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh where sh_factor < 0';
        DataM_final.ADOQ_takhfife_forosh.Open;

      frm_pint_factor_kol_roz.QRLabel_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);
      Label_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);
      frm_pint_factor_roz.QRLabel_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);
   end;
   CheckBox2.Checked:=false;
end;

procedure Tfrm_factor_roz.show_ba_sh_factor2(x:string);
begin
  if x='taki' then
  begin
    if  DataModule1.ADOQuery3shahrforoshande.AsString<>'' then
    begin
      if(DataM_final.ADOQ_t_sh_facrorhaye_forosh2.RecordCount=0)then
          exit;
      Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens where sh_factor ='+
      DataM_final.ADOQ_t_sh_facrorhaye_forosh2shomare.AsString+ 'and shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
      //+' order by jens ';
      Dmlistha.adolistforosh.Open;
      if Dmlistha.adolistforosh.RecordCount>0 then
      begin
        frm_factor_roz.Label_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);
        frm_pint_factor_roz.QRLabel_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);
      end;
    end;
    if  DataModule1.ADOQuery3shahrforoshande.AsString='' then
    begin
      frm_factor_roz.Label_tedad.Caption:='';
      frm_pint_factor_roz.QRLabel_tedad.Caption:='';

      Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens where sh_factor < 0';
      Dmlistha.adolistforosh.Open;
      frm_pint_factor_kol_roz.QRLabel_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);
      Label_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);
      frm_pint_factor_roz.QRLabel_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);

    end;
  end;


  if x='koli' then
  begin
    if DataModule1.ADOQuery3shahrforoshande.AsString<>'' then
    begin
     Dmlistha.adolistforosh.sql.Text:='select * from forosh_jens where tarikh ='
     +QuotedStr(MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text)+ 'and shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
     //+' order by jens ';
     Dmlistha.adolistforosh.Open;
     frm_pint_factor_kol_roz.QRLabel_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);
      Label_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);
   end;
   if  DataModule1.ADOQuery3shahrforoshande.AsString='' then
    begin
      frm_factor_roz.Label_tedad.Caption:='';
      frm_pint_factor_kol_roz.QRLabel_tedad.Caption:='';

      Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens where sh_factor < 0';
      Dmlistha.adolistforosh.Open;
      frm_pint_factor_kol_roz.QRLabel_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);
      Label_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);
      frm_pint_factor_roz.QRLabel_tedad.Caption:=IntToStr(Dmlistha.adolistforosh.recordcount);

    end;
  end;

end;



{************************************************888}


procedure Tfrm_factor_roz.facor(x:string);
    var po:string;
begin

if x='taki' then
begin
      if  DataModule1.ADOQuery3shahrforoshande.AsString<>'' then
      begin
        if(DataM_final.ADOQ_t_sh_facrorhaye_forosh2.RecordCount=0)then
        begin
          DataM_final.ADOQ_t_pardakht_nagd_forosh.SQL.Text:='select * from t_pardakht_nagd_forosh '+
          ' where shomare_factor<0';
          DataM_final.ADOQ_t_pardakht_nagd_forosh.Open;

          exit;
        end;

        po:='select * from bedeh_bestan where code='+DataModule1.ADOQuery3code.AsString+
        ' and sh_khaid='+DataM_final.ADOQ_t_sh_facrorhaye_forosh2shomare.AsString;

      DataM_final.ADOQ_bedeh_talabe_factor_forosh.SQL.Text:=po;
      DataM_final.ADOQ_bedeh_talabe_factor_forosh.Open;


      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='select code_shakhs,shahrforoshande,'+
      'sum(bedehkar) as bedeh,sum(bestankar) as talab from '+
      ' T_bestankar_bedehkar_kharidar where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
      ' and code_shakhs='+DataModule1.ADOQuery3code.AsString+
      '  group by code_shakhs,shahrforoshande ';
      DataM_final.ADOQ_bedeh_be_kharidar.Open;

        
      DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
        ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_forosh2shomare.AsString;
        DataM_final.ADOQ_takhfife_forosh.Open;

        //////////////////////////////////////////
        DataM_final.ADOQ_t_pardakht_nagd_forosh.SQL.Text:='select * from t_pardakht_nagd_forosh '+
        ' where code='+DataModule1.ADOQuery3code.AsString+' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_forosh2shomare.AsString;
        DataM_final.ADOQ_t_pardakht_nagd_forosh.Open;
        //////////////////////////////////////////

        DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol  from T_pardakht_check_forosh '+
        ' where code='+DataModule1.ADOQuery3code.AsString+' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_forosh2shomare.AsString;
        DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

        DataM_final.ADOQ_g_kol_foroshha.SQL.Text:='select sum(geymat_jens) as g_kol_foroshha from forosh_jens '+
        ' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_forosh2shomare.AsString;
        DataM_final.ADOQ_g_kol_foroshha.Open;

        DataM_final.ADOQ_tozihate_forosh.SQL.Text:='select * from T_tozihe_forosh where code='+DataM_final.ADOQ_t_sh_facrorhaye_forosh2code.AsString+
        ' and shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_forosh2shomare.AsString;
        DataM_final.ADOQ_tozihate_forosh.open;

        frm_pint_factor_roz.QRL_kol_bad_az_takhfif.Caption:=FloatToStr(DataM_final.ADOQ_g_kol_foroshhag_kol_foroshha.AsFloat-DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat);

      { if DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsFloat >0 then
        frm_pint_factor_roz.QRLabel_bedehi_az_gabl.Caption:=FloatToStr(DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsFloat+DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat+DataM_final.ADOQ_jame_t_pardakht_nagd_foroshnagd_kol.AsFloat-StrToFloat(frm_pint_factor_roz.QRL_kol_bad_az_takhfif.Caption))
       else
        frm_pint_factor_roz.QRLabel_bedehi_az_gabl.Caption:='0';}

      end
      else
      begin
        po:='select * from bedeh_bestan where code='+DataModule1.ADOQuery3code.AsString+
        ' and sh_khaid <0 ';

      DataM_final.ADOQ_bedeh_talabe_factor_forosh.SQL.Text:=po;
      DataM_final.ADOQ_bedeh_talabe_factor_forosh.Open;

      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='select code_shakhs,shahrforoshande,'+
      'sum(bedehkar) as bedeh,sum(bestankar) as talab from '+
      ' T_bestankar_bedehkar_kharidar where shahrforoshande='+QuotedStr('')+
      ' and code_shakhs<0'+
      '  group by code_shakhs,shahrforoshande ';
      DataM_final.ADOQ_bedeh_be_kharidar.Open;

        //////////////////////////////////////////
        DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd) as nagd_kol from t_pardakht_nagd_forosh '+
        ' where shomare_factor< 0';
        DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;
        //////////////////////////////////////////

        DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol  from T_pardakht_check_forosh '+
        ' where shomare_factor< 0';
        DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

        DataM_final.ADOQ_g_kol_foroshha.SQL.Text:='select sum(geymat_jens) as g_kol_foroshha from forosh_jens '+
        ' where and sh_factor< 0';
        DataM_final.ADOQ_g_kol_foroshha.Open;

        DataM_final.ADOQ_bedeh_talabe_factor_forosh.SQL.Text:='select * from bedeh_bestan where code<0';
        DataM_final.ADOQ_bedeh_talabe_factor_forosh.Open;

        DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
        ' where cod_kharidar<0';
        DataM_final.ADOQ_takhfife_forosh.Open;

        DataM_final.ADOQ_tozihate_forosh.SQL.Text:='select * from T_tozihe_forosh where code<0'+
        ' and shomare_factor<0';
        DataM_final.ADOQ_tozihate_forosh.open;

        frm_pint_factor_roz.QRL_kol_bad_az_takhfif.Caption:='';

      end;

end;
  if x='koli' then
    begin
    if  DataModule1.ADOQuery3shahrforoshande.AsString<>'' then
    begin

       DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd) as nagd_kol from t_pardakht_nagd_forosh '+
       ' where code='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text));
       DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

       DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol  from T_pardakht_check_forosh '+
       ' where code='+DataModule1.ADOQuery3code.AsString+' and tarikh_kharid='+QuotedStr(trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text));
       DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

       DataM_final.ADOQ_g_kol_foroshha.SQL.Text:='select sum(geymat_jens) as g_kol_foroshha from forosh_jens '+
       ' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and tarikh='+QuotedStr(trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text));
       DataM_final.ADOQ_g_kol_foroshha.Open;

        DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh'+
        ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(trim(MaskEditsal.Text)+'/'+trim(MaskEditmah.Text)+'/'+trim(MaskEditrooz.Text));

        //sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_forosh2shomare.AsString+'
        DataM_final.ADOQ_jame_takhfife.Open;

        frm_pint_factor_kol_roz.QRL_bedeh_roz.Caption:=FloatToStr(DataM_final.ADOQ_g_kol_foroshhag_kol_foroshha.AsFloat-DataM_final.ADOQ_jame_takhfifetakhfife_kol.AsFloat-DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat-DataM_final.ADOQ_jame_t_pardakht_nagd_foroshnagd_kol.AsFloat);

     end

     else
      begin

         
        DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd) as nagd_kol from t_pardakht_nagd_forosh '+
        ' where shomare_factor< 0';
        DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

        DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol  from T_pardakht_check_forosh '+
        ' where shomare_factor< 0';
        DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

        DataM_final.ADOQ_g_kol_foroshha.SQL.Text:='select sum(geymat_jens) as g_kol_foroshha from forosh_jens '+
        ' where and sh_factor< 0';
        DataM_final.ADOQ_g_kol_foroshha.Open;

        DataM_final.ADOQ_bedeh_talabe_factor_forosh.SQL.Text:='select * from bedeh_bestan where code<0';
        DataM_final.ADOQ_bedeh_talabe_factor_forosh.Open;

        DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh'+
        ' where sh_factor<0';
        DataM_final.ADOQ_jame_takhfife.Open;
        frm_pint_factor_kol_roz.QRL_bedeh_roz.Caption:='0';
      end;

end;
end;

procedure Tfrm_factor_roz.RadioGroup1Click(Sender: TObject);
begin
 if RadioGroup1.ItemIndex =0  then
    begin
      MaskEditrooz.Enabled :=false;
      MaskEditmah.Enabled :=false;
      MaskEditsal.Enabled :=false;
      MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
      rooz:=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
      MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
      mah:=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
      MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
      sal:=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
      show_kol_kharidha_dar_roz;
      if DataM_final.ADOQ_t_sh_facrorhaye_forosh2.RecordCount >0 then
      begin
        facor('taki');
        show_ba_sh_factor2('taki');
      end;

    end
  else
    begin
      _taghvim.ShowModal;
      if _taghvim._str_date<>'' then
      begin
         MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
         MaskEditmah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
         MaskEditrooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
       end;

      sal:=MaskEditsal.Text;
      mah:=MaskEditmah.Text;
      rooz:=MaskEditrooz.Text;

      MaskEditrooz.Enabled :=false;
      MaskEditmah.Enabled :=false;
      MaskEditsal.Enabled :=false;
      show_kol_kharidha_dar_roz;
      if DataM_final.ADOQ_t_sh_facrorhaye_forosh2.RecordCount >0 then
      begin
        facor('taki');
        show_ba_sh_factor2('taki');
      end;
    end;
end;

procedure Tfrm_factor_roz.suiButton4Click(Sender: TObject);
begin

_Taghvim.ShowModal;
if _taghvim._str_date<>'' then
 begin
  MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
  MaskEditMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
  MaskEditRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
 end;
 rooz:=trim(MaskEditrooz.Text);
 mah:=trim(MaskEditmah.Text);
 sal:=trim(MaskEditsal.Text);


end;

procedure Tfrm_factor_roz.esearchChange(Sender: TObject);
begin
 DataModule1.ADOQuery3.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_factor_roz.FormShow(Sender: TObject);
begin
   CheckBox1.Checked:=false;
    Frm_mmoshakhasat_shakhs.show_kharidaran;
    
    rooz:=trim(MaskEditrooz.Text);
    mah:=trim(MaskEditmah.Text);
    sal:=trim(MaskEditsal.Text);

    RadioGroup1.ItemIndex :=0;
    MaskEditrooz.Enabled :=false;
    MaskEditmah.Enabled :=false;
    MaskEditsal.Enabled :=false;
    MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
    MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
    MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
    RadioGroup2.ItemIndex:=0;


   //frm_pint_factor_roz.QRLtarikh.Caption:=frm_login.Egettarikh.Text;
   frm_pint_factor_kol_roz.QRLtarikh.Caption:=frm_login.Egettarikh.Text;



  
   //CheckBox2.Checked:=false;

   if CheckBox2.Checked then
    show_kol_kharidha_dar_hame_rozha
   else
    show_kol_kharidha_dar_roz;

    DataM_final.ADOQ_t_sh_facrorhaye_forosh2.Last;

   GroupBox5.Visible:=true;
   esearch.Text:='';
   esearch.SetFocus;
end;



procedure Tfrm_factor_roz.btn_view_rozClick(Sender: TObject);
begin
if Dmlistha.adolistforosh.RecordCount>0 then
begin
  if not(CheckBox1.Checked) then
  begin
    typ_shomare_factor;
    frm_main.l_last_op.Caption:='’œÊ— ›«ò Ê— Œ—ÌœÂ«Ì '+DataModule1.ADOQuery3shahrforoshande.AsString+' »« ‘„«—Â ›«ò Ê— '+
    DataM_final.ADOQ_t_sh_facrorhaye_forosh2shomare.AsString;

    frm_main.sabte_amaliat('’œÊ— ›«ò Ê— Œ—ÌœÂ«Ì '+DataModule1.ADOQuery3shahrforoshande.AsString+
    ' »« ‘„«—Â ›«ò Ê— '+DataM_final.ADOQ_t_sh_facrorhaye_forosh2shomare.AsString);
        frm_pint_factor_roz.QuickRep1.Preview;
  end
  else
  begin
    DataModule1.ADOQuery_jame_pardakht_kharidar.SQL.Text:='select sum(mablagh)as kol_ from t_pardakht_bedehi_kharidar where shahrforoshande='+
    QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
    DataModule1.ADOQuery_jame_pardakht_kharidar.Open;


    frm_main.l_last_op.Caption:='’œÊ— ›«ò Ê— »—«Ì ò· Œ—ÌœÂ«Ì '+DataModule1.ADOQuery3shahrforoshande.AsString+' œ—  «—ÌŒ '+
    DataM_final.ADOQ_t_sh_facrorhaye_forosh2tarikh.AsString;

    frm_main.sabte_amaliat('’œÊ— ›«ò Ê— »—«Ì ò· Œ—ÌœÂ«Ì '+DataModule1.ADOQuery3shahrforoshande.AsString+
    ' œ—  «—ÌŒ '+DataM_final.ADOQ_t_sh_facrorhaye_forosh2tarikh.AsString);

    frm_pint_factor_kol_roz.QRLabel_jame_pardakhtha.Caption:=DataModule1.ADOQuery_jame_pardakht_kharidarkol_.AsString;
    frm_pint_factor_kol_roz.QuickRep1.Preview;
  end;
end;
end;

procedure Tfrm_factor_roz.Edit_sh_factorKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_factor_roz.Button1Click(Sender: TObject);
begin
  show_kol_kharidha_dar_roz;
end;



procedure Tfrm_factor_roz.RadioGroup2Click(Sender: TObject);
begin
  typ_shomare_factor;
end;

procedure Tfrm_factor_roz.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure Tfrm_factor_roz.e_codKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_factor_roz.btn_print_rozClick(Sender: TObject);
begin
if Dmlistha.adolistforosh.RecordCount>0 then
begin
  if not(CheckBox1.Checked) then
  begin
    typ_shomare_factor;
    frm_main.l_last_op.Caption:='’œÊ— ›«ò Ê— Œ—ÌœÂ«Ì '+DataModule1.ADOQuery3shahrforoshande.AsString+' »« ‘„«—Â ›«ò Ê— '+
    DataM_final.ADOQ_t_sh_facrorhaye_forosh2shomare.AsString;

    frm_main.sabte_amaliat('’œÊ— ›«ò Ê— Œ—ÌœÂ«Ì '+DataModule1.ADOQuery3shahrforoshande.AsString+
    ' »« ‘„«—Â ›«ò Ê— '+DataM_final.ADOQ_t_sh_facrorhaye_forosh2shomare.AsString);
        frm_pint_factor_roz.QuickRep1.Print;
  end
  else
  begin
    frm_main.l_last_op.Caption:='’œÊ— ›«ò Ê— »—«Ì ò· Œ—ÌœÂ«Ì '+DataModule1.ADOQuery3shahrforoshande.AsString+' œ—  «—ÌŒ '+
    DataM_final.ADOQ_t_sh_facrorhaye_forosh2tarikh.AsString;

    frm_main.sabte_amaliat('’œÊ— ›«ò Ê— »—«Ì ò· Œ—ÌœÂ«Ì '+DataModule1.ADOQuery3shahrforoshande.AsString+
    ' œ—  «—ÌŒ '+DataM_final.ADOQ_t_sh_facrorhaye_forosh2tarikh.AsString);
    frm_pint_factor_kol_roz.QuickRep1.Print;
  end;
end;
end;

procedure Tfrm_factor_roz.CheckBox1Click(Sender: TObject);
begin
 if DataModule1.ADOQuery3shahrforoshande.AsString<>'' then
 begin
  if CheckBox1.Checked then
  begin
    _taghvim.ShowModal;
    if _taghvim._str_date<>'' then
      begin
         MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
         MaskEditmah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
         MaskEditrooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
       end;
    show_kol_kharidha_dar_roz;
    CheckBox2.Checked:=false;

    show_ba_sh_factor2('koli');
    frm_factor_roz.facor('koli');
    GroupBox5.Visible:=false;

    btn_view_roz.Visible:=true;
    btn_print_roz.Visible:=true;

    btn_print_taki.Visible:=false;
    btn_view_taki.Visible:=false;
  end
  else
  begin
    frm_factor_roz.facor('taki');
    show_ba_sh_factor2('taki');
    GroupBox5.Visible:=true;

    btn_view_roz.Visible:=false;
    btn_print_roz.Visible:=false;

    btn_print_taki.Visible:=true;
    btn_view_taki.Visible:=true;
  end;
 end;
end;

procedure Tfrm_factor_roz.CheckBox2Click(Sender: TObject);
begin
   if CheckBox2.Checked then
   begin
    show_kol_kharidha_dar_hame_rozha ;
    CheckBox1.Checked:=false;
   end
   else
    show_kol_kharidha_dar_roz;
end;

procedure Tfrm_factor_roz.btn_print_takiClick(Sender: TObject);
begin
  frm_pint_factor_roz.QuickRep1.Print;
end;

procedure Tfrm_factor_roz.btn_view_takiClick(Sender: TObject);
begin
    DataModule1.ADOQuery_jame_pardakht_kharidar.SQL.Text:='select sum(mablagh)as kol_ from t_pardakht_bedehi_kharidar where shahrforoshande='+
    QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
    DataModule1.ADOQuery_jame_pardakht_kharidar.Open;
    
  if RadioGroup2.ItemIndex=0 then
  begin
    frm_pint_factor_roz.QRL_tarikhe_forosh.Caption:=DataM_final.ADOQ_t_sh_facrorhaye_forosh2tarikh.AsString;
    frm_pint_factor_roz.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
  end;
  frm_pint_factor_roz.QRLabel_jame_pardakhtha.Caption:=DataModule1.ADOQuery_jame_pardakht_kharidarkol_.AsString;
  frm_pint_factor_roz.QuickRep1.Preview;
end;

procedure Tfrm_factor_roz.suiButton2Click(Sender: TObject);
begin
  DataM_final.ADOQ_t_sh_facrorhaye_forosh2.Last;
end;

end.

