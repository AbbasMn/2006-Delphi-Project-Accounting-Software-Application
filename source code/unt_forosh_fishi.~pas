unit unt_forosh_fishi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, SUIDBCtrls, DB, LMDControl,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, DBCtrls, ExtCtrls, Mask, SUIButton, ADODB,
  LMDCustomComponent, LMDCustomHint, LMDCustomShapeHint, LMDShapeHint,
  LMDHint, LMDMessageHint,shellapi, SUIForm;

type
  Tfrm_forosh_fishi = class(TForm)
    g_kharidar: TGroupBox;
    suiDBGrid1: TsuiDBGrid;
    Label4: TLabel;
    E_name: TEdit;
    Label10: TLabel;
    e_cod: TEdit;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    suiDBGrid2: TsuiDBGrid;
    DataSource2: TDataSource;
    GroupBox2: TGroupBox;
    suiDBGrid3: TsuiDBGrid;
    LMDSpeedButton_62661: TLMDSpeedButton;
    DataSource3: TDataSource;
    LMDSpeedButton11: TLMDSpeedButton;
    DBText_arzesh_kol: TDBText;
    Label1: TLabel;
    DataSource4: TDataSource;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    l_darsad_takhfif: TLabel;
    Label5: TLabel;
    l_mablagh_takhfif: TLabel;
    GroupBox3: TGroupBox;
    suiButton4: TsuiButton;
    MaskEditforooz: TMaskEdit;
    MaskEditfomah: TMaskEdit;
    MaskEditfosal: TMaskEdit;
    RadioGroup1: TRadioGroup;
    Label6: TLabel;
    L_bestankar: TLabel;
    L_bedehkae: TLabel;
    Label7: TLabel;
    suiButton5222: TsuiButton;
    suiButton6: TsuiButton;
    suiButton1: TsuiButton;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label_taeed_forosh: TLabel;
    Label11: TLabel;
    Edit4: TEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DataSource5: TDataSource;
    GroupBox5: TGroupBox;
    DBText2: TDBText;
    suiDBGrid4: TsuiDBGrid;
    b: TsuiButton;
    Edit5: TEdit;
    suiButton12323: TsuiButton;
    DataSource6: TDataSource;
    CheckBox1: TCheckBox;
    E_sh_kart: TEdit;
    Label12: TLabel;
    RadioGroup2: TRadioGroup;
    LMDSpeedButton_3: TLMDSpeedButton;
    LMDSpeedButton_: TLMDSpeedButton;
    Label8: TLabel;
    suiDBGrid5: TsuiDBGrid;
    DataSource7: TDataSource;
    Label13: TLabel;
    suiDBGrid6: TsuiDBGrid;
    Label14: TLabel;
    DataSource8: TDataSource;
    ADOQ_sh_fish: TADOQuery;
    ADOQ_sh_fishsh_fish: TFloatField;
    CheckBox2: TCheckBox;
    l_barcod_khan: TLabel;
    E_barcod_khan: TEdit;
    Timer1: TTimer;
    rad_ajnas: TRadioGroup;
    LMDSpeedButton_602122: TLMDSpeedButton;
    LMDSpeedButton_621: TLMDSpeedButton;
    LMDSpeedButton_6067776621: TLMDSpeedButton;
    LMDSpeedButton_6021: TLMDSpeedButton;
    LMDSpeedButton_6440621: TLMDSpeedButton;
    LMDMessageHint1: TLMDMessageHint;
    LMDSpeedButton_60621: TLMDSpeedButton;
    LMDSpeedButton_6066621: TLMDSpeedButton;
    suiMSNPopForm1: TsuiMSNPopForm;
    procedure FormShow(Sender: TObject);
    procedure E_nameChange(Sender: TObject);
    procedure e_codChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure LMDSpeedButton11Click(Sender: TObject);
    procedure LMDSpeedButton_62661Click(Sender: TObject);

    procedure  show_pish_forosh;
    procedure mohasebe_geymat_kol;

    procedure delete_jens;
    procedure RadioGroup1Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure clear2;
    procedure suiButton1Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);

    procedure  bede_talab_temp_check_forosh;
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4Exit(Sender: TObject);
    procedure suiButton5222Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);

    function check_:boolean;

    function equal:boolean;
    procedure execute_forosh_stored_procedure;

    function insert_gozaresh_anbar:boolean;
    function updatetedadjensforoshi:boolean;

    procedure show_facrore_forosh;
    procedure MaskEditforoozChange(Sender: TObject);
    procedure suiButton12323Click(Sender: TObject);
    procedure bClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure LMDSpeedButton_3Click(Sender: TObject);
    procedure LMDSpeedButton_Click(Sender: TObject);
    procedure suiDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid5KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid6KeyPress(Sender: TObject; var Key: Char);
    procedure E_nameKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox2KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton4KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure bKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton12323KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton6KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton5222KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure E_barcod_khanExit(Sender: TObject);
    procedure E_barcod_khanEnter(Sender: TObject);
    procedure MaskEditforoozKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditfomahKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditfosalKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure E_barcod_khanKeyPress(Sender: TObject; var Key: Char);
    procedure E_barcod_khanChange(Sender: TObject);

    function check_tedad:boolean;
    function insert_pish_forosh:boolean;
    procedure rad_ajnasClick(Sender: TObject);
    procedure LMDSpeedButton_602122Click(Sender: TObject);
    procedure LMDSpeedButton_621Click(Sender: TObject);
    procedure LMDSpeedButton_6067776621Click(Sender: TObject);
    procedure LMDSpeedButton_6021Click(Sender: TObject);
    procedure LMDSpeedButton_6440621Click(Sender: TObject);
    procedure show_hesabe_moshtari;
    procedure LMDSpeedButton_60621Click(Sender: TObject);
    procedure LMDSpeedButton_6066621Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }

    styear:String;
    stmonth:string;
    stdate:string;

    shahrforoshande,code:string;

    tarikh,sh_fctor,bedehi_az_gabl,time_,sh_fish:string;
  end;

var
  frm_forosh_fishi: Tfrm_forosh_fishi;

implementation

uses unt_datamodule1, Untdmanbarexit, Unt_DataModule_gozaresh_tarkibi,
  unt_takhfife_forosh, unt_pish_forosh, unt_print_pish_factor, unt_login,
  Unt_dmanbar, Taghvim, unt_tozihat, unt_sandog_jadid,
  unt_entekhab_check_baraye_forosh, unt_DataM_final, unt_forosh_property,
  unt_tedad, Untviewanbar, unt_main, unt_Dm_sp_backup, unt_DataM_sp,
  unt_print_temp_factore_forosh, unt_print_fo, unt_eslah_forosh,
  unt_factor_roz, unt_entekhbe_sherkat, Unt_eslah_fishi,
  unt_entekhabe_noe_virayesh_geymat, unt_vrode_geymate_jadid,
  Unteditgeymatjenspas, unt_show_tozihate_geymat, Unt_jadval_jensin_anbar,
  unt_eslahe_tozihe_forosh, Untdmlistha, unt_vrode_geymate_koli_jadid;

{$R *.dfm}

/////////////////////////////////////////////////////////////////
procedure Tfrm_forosh_fishi.show_hesabe_moshtari;
var s:string;
begin
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Clear;
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd)as nagd_kol from t_pardakht_nagd_forosh where code='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;

  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Clear;
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol from T_pardakht_check_forosh where code='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;

  Dmlistha.ADOmohasebe_forosh.SQL.Text:='select sum(geymat_jens)as kol_ from forosh_jens where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
  Dmlistha.ADOmohasebe_forosh.Open;

  DataM_final.ADOQ_jame_bede_talab_dar_forosh.SQL.Text:='select sum(bedeh) as bedeh_kol,sum(talab) as talab_kol from bedeh_bestan where code='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQ_jame_bede_talab_dar_forosh.Open;
  
  /////////////////////////////////////////////////////

  DataModule1.ADOQuery_jame_pardakht_kharidar.SQL.Text:='select sum(mablagh)as kol_ from T_pardakht_bedehi_kharidar where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
  DataModule1.ADOQuery_jame_pardakht_kharidar.Open;

  DataM_final.ADOQ_jame_takhfife.SQL.Text:='select sum(mablagh_takhfif) as takhfife_kol from T_takhfife_forosh where cod_kharidar='+DataModule1.ADOQuery3code.AsString;
  DataM_final.ADOQ_jame_takhfife.Open;

  ////////////////////////////////////////////////////
  
 {     DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='select code_shakhs,shahrforoshande,'+
      'sum(bedehkar) as bedeh,sum(bestankar) as talab from '+
      ' T_bestankar_bedehkar_kharidar where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
      ' and code_shakhs='+DataModule1.ADOQuery3code.AsString+
      '  group by code_shakhs,shahrforoshande ';
      DataM_final.ADOQ_bedeh_be_kharidar.Open;
  }

////////////////////////////////////////////////////////
   s:='';
   s:=s+'«—“‘ ò· Œ—ÌœÂ«='+Dmlistha.ADOmohasebe_foroshkol_.AsString+'';

   suiMSNPopForm1.MessageText:=s;

   s:=s+'Ã„⁄ ò·  Œ›Ì›='+DataM_final.ADOQ_jame_takhfifetakhfife_kol.AsString;

   suiMSNPopForm1.MessageText:=suiMSNPopForm1.MessageText+s;

   s:=s+'Ã„⁄ ò· „»«·€ Å—œ«Œ  »Â ’Ê—  ‰ﬁœ='+dataM_final.ADOQ_jame_t_pardakht_nagd_foroshnagd_kol.AsString;
   s:=s+'Ã„⁄ ò· „»«·€ Å—œ«Œ  »Â ’Ê—  çò='+DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsString;

   s:=s+'Ã„⁄ ò· Å—œ«Œ  »œÂÌ Â«='+ DataModule1.ADOQuery_jame_pardakht_kharidarkol_.AsString;

   s:=s+'»œÂÌ ò·='+DataM_final.ADOQ_jame_bede_talab_dar_foroshbedeh_kol.AsString;
   s:=s+'ÿ·» ò·='+DataM_final.ADOQ_jame_bede_talab_dar_foroshtalab_kol.AsString;

   suiDBGrid1.Hint:=s;
   suiDBGrid1.ShowHint:=true;
end;
/////////////////////////////////////////////////////////////////
function Tfrm_forosh_fishi.insert_pish_forosh:boolean;
var stcommand_insert,update_tasfie,barcod,calacalacod,anbarname,calaname,geymat_kharid,olaviat:String;
   tedad_koli_bealave_jozi,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_dar_koli,geymat_koli,geymat_kol_forosh_jens,tedad_jozi,geymat_jozi:string;
   s:pchar;
begin
   insert_pish_forosh:=false;

    calacalacod:=Dmanbarexite.ADOanbarcalacalacod.AsString;


   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp where calacod='+calacalacod+
   ' and anbarname='+QuotedStr(Dmanbarexite.ADOanbarcalaanbarname.AsString);
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open;

if DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount>0 then
begin
    if  (DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_kol.AsFloat+1)>Dmanbarexite.ADOanbarcalatedadanbar.AsFloat then
      begin
         Frm_pish_forosh.show_pish_forosh;
         frm_forosh_fishi.mohasebe_geymat_kol;
         frm_forosh_fishi.bede_talab_temp_check_forosh;

          E_barcod_khan.SetFocus;
          l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
          l_barcod_khan.Font.Color:=clGreen;
          E_barcod_khan.Clear;

        MessageBox(Handle,pchar('<<  ⁄œ«œ Ê«—œ ‘œÂ Ã‰” (€Ì—Â) +  ⁄œ«œ Ã‰”Ì (€Ì—Â) «‰ Œ«» ‘œÂ »—«Ì ›—Ê‘ >> «“  ⁄œ«œ „ÊÃÊœ = '+Dmanbarexite.ADOanbarcalatedadanbar.AsString+' »Ì‘ — „Ì »«‘œ '),' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        exit;
      end;

//ezafe bar mojodi
/////////////////////////////////////////////////////////////////////

     insert_pish_forosh:=true;


    vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

    geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

    vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;

    geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh.AsString;

    calacalacod:=Dmanbarexite.ADOanbarcalacalacod.AsString;

    anbarname:=Dmanbarexite.ADOanbarcalaanbarname.AsString;



    if vahed_koli<>'' then
      tedad_koli:=FloatToStr(int(StrToFloat('1')/StrToFloat(tedad_jozi_dar_koli)))
    else
      tedad_koli:='0';


     if vahed_koli='' then
     begin
      tedad_jozi:='1';
      tedad_koli_bealave_jozi:='1';
     end
     else
     begin
      tedad_jozi:=FloatToStr(StrToFloat('1')-(StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_koli));
      tedad_koli_bealave_jozi:='1';
     end;





     geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));


    stcommand_insert:='';
    /////////

   tedad_jozi:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)+DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad.AsFloat);

    /////////////////

    if vahed_koli<>'' then
    begin
      tedad_koli:=FloatToStr(int((DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_kol.AsFloat+StrToFloat(tedad_koli_bealave_jozi))/StrToFloat(tedad_jozi_dar_koli)));
      tedad_jozi:=FloatToStr(StrToFloat(tedad_jozi)-(StrToFloat(tedad_koli)-DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_koli.AsFloat)*StrToFloat(tedad_jozi_dar_koli));
    end
    else
    begin
      //tedad_koli:='0';
      //tedad_jozi:=FloatToStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad.AsFloat+StrToFloat(tedad_jozi));
    end;

    /////////////////


    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='begin tran update forosh_temp set '+

    ' tedad_koli='+tedad_koli+


    ',tedad='+tedad_jozi+


    ',tedad_kol=tedad_kol+'+tedad_koli_bealave_jozi+


    ',geymat_jens='+FloatToStr((DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_kol.AsFloat+StrToFloat(tedad_koli_bealave_jozi))*StrToFloat(geymat_jozi))+

    ' where calacod='+calacalacod+
    ' and anbarname='+QuotedStr(anbarname)+' commit tran';

    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;
    insert_pish_forosh:=true;

//////////////////////////////////////////////////////////////////////////
end//ezafe bar mojodi
else
begin
      insert_pish_forosh:=false;

    vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

    geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

    vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;

    geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh.AsString;

    calacalacod:=Dmanbarexite.ADOanbarcalacalacod.AsString;

    anbarname:=Dmanbarexite.ADOanbarcalaanbarname.AsString;

    calaname:=Dmanbarexite.ADOanbarcalacalaname.AsString;

    barcod:=Dmanbarexite.ADOanbarcalabarcod.AsString;

    geymat_kharid:=Dmanbarexite.ADOanbarcalageymatkharid.AsString;

    olaviat:='1';
     ////////////////////////////////////////////////////////////////


    if vahed_koli<>'' then
      tedad_koli:=FloatToStr(int(StrToFloat('1')/StrToFloat(tedad_jozi_dar_koli)))
    else
      tedad_koli:='0';



     if vahed_koli='' then
     begin
      tedad_jozi:='1';
      tedad_koli_bealave_jozi:='1';
     end
     else
     begin
      tedad_jozi:=FloatToStr(StrToFloat('1')-(StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_koli));
      tedad_koli_bealave_jozi:='1';
     end;


  geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));


  stcommand_insert:='';
  /////////
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='insert into forosh_temp (anbarname,tedad_kol,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_dar_koli,geymat_koli'+
  ',shahrforoshande,jens,'+
     'geymat_vahed,tedad,geymat_jens,calacod,geymate_kharid,barcod,sh_factor,tarikh,code_sherkati) values (:anbarname,:tedad_kol,:vahed_koli,:vahed_jozei,:tedad_koli,:tedad_jozi_dar_koli,:geymat_koli,'+
     ':shahrforoshande,:jens,:geymat_vahed,:tedad,:geymat_jens,:calacod,:geymate_kharid,:barcod,:sh_factor,:tarikh,:code_sherkati)';

     //,sh_fish,olaviat

     //,:sh_fish,:olaviat

  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('anbarname').Value:=anbarname;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tedad_kol').Value:=tedad_koli_bealave_jozi;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('vahed_koli').Value:=vahed_koli;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('vahed_jozei').Value:=vahed_jozei;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tedad_koli').Value:=tedad_koli;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tedad_jozi_dar_koli').Value:=tedad_jozi_dar_koli;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('geymat_koli').Value:=geymat_koli;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('shahrforoshande').Value:=DataModule1.ADOQuery3shahrforoshande.AsString;

  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('jens').Value:=calaname;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('geymat_vahed').Value:=geymat_jozi;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tedad').Value:=StrTofloat(tedad_jozi);
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('calacod').Value:=calacalacod;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('geymat_jens').Value:=geymat_kol_forosh_jens;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('barcod').Value:=barcod;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('geymate_kharid').Value:=geymat_kharid;

   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('sh_factor').Value:=frm_forosh_fishi.sh_fctor;
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tarikh').Value:=frm_forosh_fishi.tarikh;
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('code_sherkati').Value:=Dmanbarexite.ADOanbarcalacode_sherkati.AsString;

   {DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('sh_fish').Value:=frm_forosh_fishi.sh_fish;
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('olaviat').Value:=olaviat; }
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;

  insert_pish_forosh:=true;

end;
end;


/////////////////

function Tfrm_forosh_fishi.check_tedad:boolean;
var num :real;
begin
  check_tedad:=true;

     if Dmanbarexite.ADOanbarcalatedadanbar.AsFloat<=0 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì  ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );

        frm_forosh_fishi.l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
        frm_forosh_fishi.l_barcod_khan.Font.Color:=clGreen;
        frm_forosh_fishi.E_barcod_khan.Clear;
        exit;
     end;
     if Dmanbarexite.ADOanbarcalatedadanbar.AsFloat<1 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì «“ ⁄œœ Ìò(1) ò„ — „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );

        frm_forosh_fishi.l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
        frm_forosh_fishi.l_barcod_khan.Font.Color:=clGreen;
        frm_forosh_fishi.E_barcod_khan.Clear;
        exit;
     end;
end;
////////////////////////////////////

procedure Tfrm_forosh_fishi.show_facrore_forosh;
var po:string;
    zzz:real;
begin
     { po:='select * from bedeh_bestan where code='+code+
      ' and sh_khaid='+sh_fctor;

      DataM_final.ADOQ_bedeh_talabe_factor_forosh.SQL.Text:=po;
      DataM_final.ADOQ_bedeh_talabe_factor_forosh.Open;}

      {DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='select code_shakhs,shahrforoshande,'+
      'sum(bedehkar) as bedeh,sum(bestankar) as talab from '+
      ' T_bestankar_bedehkar_kharidar where shahrforoshande='+QuotedStr(shahrforoshande)+
      ' and code_shakhs='+code+
      '  group by code_shakhs,shahrforoshande ';
      DataM_final.ADOQ_bedeh_be_kharidar.Open;}


        {DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.SQL.Text:='select sum(nagd) as nagd_kol from t_pardakht_nagd_forosh '+
        ' where code='+code+' and shomare_factor='+sh_fctor;
        DataM_final.ADOQ_jame_t_pardakht_nagd_forosh.Open;}

        {DataM_final.ADOQ_T_jame_pardakht_check_forosh.SQL.Text:='select sum(mablagh_check)as check_kol  from T_pardakht_check_forosh '+
        ' where code='+code+' and shomare_factor='+sh_fctor;
        DataM_final.ADOQ_T_jame_pardakht_check_forosh.Open;}

        DataM_final.ADOQ_g_kol_temp_foroshha.SQL.Text:='select sum(geymat_jens) as g_kol_foroshha from T_temp_forosh_factor '+
        ' where shahrforoshande='+QuotedStr(shahrforoshande)+' and sh_factor='+sh_fctor;
        DataM_final.ADOQ_g_kol_temp_foroshha.Open;


        {DataM_final.ADOQ_takhfife_forosh.SQL.Text:='select * from T_takhfife_forosh'+
        ' where cod_kharidar='+code+' and sh_factor='+sh_fctor;
        DataM_final.ADOQ_takhfife_forosh.Open; }

        {DataM_final.ADOQ_tozihate_forosh.SQL.Text:='select * from T_tozihe_forosh where code='+code+
        ' and shomare_factor='+sh_fctor;
        DataM_final.ADOQ_tozihate_forosh.open;}

        DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.SQL.Text:='select * from T_temp_forosh_factor order by jens';
        DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.Open;

        {frm_print_temp_factore_forosh.QRL_kol_bad_az_takhfif.Caption:=FloatToStr(DataM_final.ADOQ_g_kol_temp_foroshhag_kol_foroshha.AsFloat-DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat);

        frm_print_temp_factore_forosh.QRLabel_tedad.Caption:=IntToStr(DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.RecordCount);}



      {frm_print_temp_factore_forosh.QRL_sh_factor.Caption:=sh_fctor; }

      {frm_print_temp_factore_forosh.QRL_tarikhe_forosh.Caption:=Frm_login.Egettarikh.Text;
      frm_print_temp_factore_forosh.QRLtarikh.Caption:=Frm_login.Egettarikh.Text; }

      {zzz:=DataM_final.ADOQ_g_kol_temp_foroshhag_kol_foroshha.AsFloat-DataM_final.ADOQ_jame_t_pardakht_nagd_foroshnagd_kol.AsFloat-DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat;

      if (DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsFloat-zzz) >0 then
        frm_print_temp_factore_forosh.QRLabel_bedehi_az_gabl.Caption:=FloatToStr(DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsFloat+DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat+DataM_final.ADOQ_jame_t_pardakht_nagd_foroshnagd_kol.AsFloat-DataM_final.ADOQ_g_kol_temp_foroshhag_kol_foroshha.AsFloat)
      else
        frm_print_temp_factore_forosh.QRLabel_bedehi_az_gabl.Caption:='0';}

      //frm_print_temp_factore_forosh.QuickRep1.Preview;

      //Frm_print_fo.QuickRep1.Print;

      Frm_print_fo.QuickRep1.Preview;

end;


////////////////////

function Tfrm_forosh_fishi.updatetedadjensforoshi:boolean;
var temp,tedad_jozi,teddad_jozi_dar_koli,tedad_koli,x,z,y,cod_:real;
    a:array[1..100] of integer;
    frorsh_type,anbar_name:string;
    i,j,p:integer;
begin

  updatetedadjensforoshi:=false;
  Frm_pish_forosh.show_pish_forosh;
  i:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.First;
  for j:=1 to  i  do
  begin
      a[j]:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[5].Value;
      DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Next;
  end;

    for j:=1 to  i  do
  begin
       {DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp where id='+IntToStr(a[j]);
       DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open; }

       DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Locate('id',a[j],[loPartialKey]);

       cod_:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[4].AsInteger;

       anbar_name:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshanbarname.AsString;

       tedad_jozi:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[2].AsFloat;

       tedad_koli:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[8].AsFloat;

       p:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[8].AsInteger;

       teddad_jozi_dar_koli:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Fields[9].AsFloat;


       if (tedad_koli >0) and (tedad_jozi=0)and(teddad_jozi_dar_koli=0)then
          frorsh_type:='koli-bedon-jozei';

       if (tedad_koli >0) and (tedad_jozi=0)and(teddad_jozi_dar_koli>0)then
          frorsh_type:='koli-ba-jozei';

       if (tedad_koli=0) and (tedad_jozi>0)and(teddad_jozi_dar_koli=0)then
          frorsh_type:='jozei-bedon-jozei';

       if (tedad_koli =0) and (tedad_jozi>0)and(teddad_jozi_dar_koli>0)then
          frorsh_type:='jozei-ba-jozei';

       if (tedad_koli >0) and (tedad_jozi>0)then
          frorsh_type:='kolijozei';

      if  frorsh_type='koli-ba-jozei' then
      begin
         Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+floatToStr(cod_)+
         ' and anbarname='+QuotedStr(anbar_name);
          Dmanbarexite.ADOanbarcala.Open;

          temp:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;;
           if (temp-(tedad_koli*teddad_jozi_dar_koli)>=0) then
           begin
             for i:=1 to p do
               tedad_jozi:=tedad_jozi+teddad_jozi_dar_koli;
           end
           else
            begin
             for i:=1 to (p-1) do
               tedad_jozi:=tedad_jozi+teddad_jozi_dar_koli;
            end;
      end;




     if frorsh_type='jozei-ba-jozei'then
     begin
          Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+floatToStr(cod_)+
          ' and anbarname='+QuotedStr(anbar_name);
          Dmanbarexite.ADOanbarcala.Open;
          temp:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;
          if tedad_jozi=teddad_jozi_dar_koli then
            teddad_jozi_dar_koli:=tedad_koli+1;

          if tedad_jozi>teddad_jozi_dar_koli then
          begin
              x:=int(tedad_jozi/teddad_jozi_dar_koli)*teddad_jozi_dar_koli;
              y:=tedad_jozi-x;
              tedad_koli:=tedad_koli+int(tedad_jozi/teddad_jozi_dar_koli);
              z:=(int(temp/teddad_jozi_dar_koli)-int((temp-y)/teddad_jozi_dar_koli));
              if z>0 then
                tedad_koli:=tedad_koli+z;
          end;

          if tedad_jozi<teddad_jozi_dar_koli then
          begin
             if int((temp-tedad_jozi)/teddad_jozi_dar_koli) < int(temp/teddad_jozi_dar_koli)then
                tedad_koli:=tedad_koli+1;
          end;


    end;

     if frorsh_type='kolijozei'then
     begin
          Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+floatToStr(cod_)+
          ' and anbarname='+QuotedStr(anbar_name);
          Dmanbarexite.ADOanbarcala.Open;


          temp:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;

          if tedad_jozi>teddad_jozi_dar_koli then
          begin
              x:=int(tedad_jozi/teddad_jozi_dar_koli)*teddad_jozi_dar_koli;
              y:=tedad_jozi-x;
              tedad_koli:=tedad_koli+int(tedad_jozi/teddad_jozi_dar_koli);
              z:=(int(temp/teddad_jozi_dar_koli)-int((temp-y)/teddad_jozi_dar_koli));
              if z>0 then
                tedad_koli:=tedad_koli+z;
          end;

          if tedad_jozi<teddad_jozi_dar_koli then
          begin
             if int((temp-tedad_jozi)/teddad_jozi_dar_koli) < int(temp/teddad_jozi_dar_koli)then
                tedad_koli:=tedad_koli+1;
          end;

         for i:=1 to p do

               tedad_jozi:=tedad_jozi+teddad_jozi_dar_koli;
     end;

       Dmanbarexite.ADOanbarcala.SQL.Text:='begin tran update Tanbar_jens_kolli set tedad_koli=tedad_koli-'+FloatToStr(tedad_koli)+' ,tedadanbar=tedadanbar-'+FloatToStr(tedad_jozi)+
       ' where calacod='+floatToStr(cod_)+' and anbarname='+QuotedStr(anbar_name)+' commit tran';
       Dmanbarexite.ADOanbarcala.ExecSQL;
  end;
  updatetedadjensforoshi:=true;
end;


///////////////////////

function Tfrm_forosh_fishi.insert_gozaresh_anbar:boolean;
begin
  insert_gozaresh_anbar:=false;

  Frm_pish_forosh.show_pish_forosh;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.First;
  while not DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Eof do
  begin
    Dmanbar.ADOQ_gozaresh_anbar_temp.SQL.Text:='begin tran insert into T_gozaresh_vorod_va_khoroje_anbar_temp'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshjens.AsString)+','+
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad.AsString+','+
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshcalacod.AsString+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshvahed_koli.AsString)+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshvahed_jozei.AsString)+','+

    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_koli.AsString+','+
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_jozi_dar_koli.AsString+','+
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshsh_factor.AsString+','+

    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_kol.AsString+','+
    QuotedStr('Œ—ÊÃ Ê ›—Ê‘ »Â '+DataModule1.ADOQuery3shahrforoshande.AsString+' »« ‘„«—Â ›«ò Ê— '+DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshsh_factor.AsString)+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtarikh.AsString)+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshbarcod.AsString)+','+
    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshcode_sherkati.AsString)+','+

    QuotedStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshanbarname.AsString)+','+
    QuotedStr(time_)+','+
    QuotedStr('Œ—ÊÃÌ - ›—Ê‘')+
    ')'+' commit tran';

    Dmanbar.ADOQ_gozaresh_anbar_temp.ExecSQL;
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Next;
  end;
  insert_gozaresh_anbar:=true;
end;
////////////////////////

procedure Tfrm_forosh_fishi.execute_forosh_stored_procedure;
var nagd:string;
    st:pchar;
begin

  if Edit4.Text='' then
    Edit4.Text:='0';

  if StrToFloat(Edit4.Text)=0 then
    nagd:='0'
  else
   nagd:=Edit4.Text;

   st:=pchar('›—Ê‘ Ã‰” »Â  << '+DataModule1.ADOQuery3shahrforoshande.AsString+' >> —«  «ÌÌœ „Ì‰„«ÌÌœ ø');
  if   MessageBox(Handle,st,' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
  begin{1}

  Dm_sp_backup.ADOStoredProc_from_gozaresh_vorod_va_khoroje_anbar_to_gozaresh_.ExecProc;
  Dm_sp_backup.ADOStoredProc_from_Tanbar_jens_kolli_to_temp_Tanbar_jens_kolli.ExecProc;


  if insert_gozaresh_anbar and updatetedadjensforoshi then

  begin{2}
    bedehi_az_gabl:='0';
    frm_main.l_last_op.Caption:=' ›—Ê‘ Ã‰” »Â '+shahrforoshande;

  DataM_sp.ADOStoredProc_forosh.Parameters[0].Value:=shahrforoshande;//@shahrforoshande nvarchar(50),
  DataM_sp.ADOStoredProc_forosh.Parameters[1].Value:=time_;//@time nvarchar(10),
  DataM_sp.ADOStoredProc_forosh.Parameters[2].Value:=tarikh;//@tarikh nvarchar(12),

  DataM_sp.ADOStoredProc_forosh.Parameters[3].Value:=sh_fctor;//@sh_factor float,
  DataM_sp.ADOStoredProc_forosh.Parameters[4].Value:=code;//@code float,
  DataM_sp.ADOStoredProc_forosh.Parameters[5].Value:=L_bestankar.caption;//@talab float,
  DataM_sp.ADOStoredProc_forosh.Parameters[6].Value:=L_bedehkae.Caption;//@bedeh float,
  DataM_sp.ADOStoredProc_forosh.Parameters[7].Value:=nagd;//@nagd float,

  DataM_sp.ADOStoredProc_forosh.Parameters[8].Value:=l_darsad_takhfif.Caption;//@darsade_takhfif float,
  DataM_sp.ADOStoredProc_forosh.Parameters[9].Value:=l_mablagh_takhfif.Caption;//@mablagh_takhfif float,
  DataM_sp.ADOStoredProc_forosh.Parameters[10].Value:=bedehi_az_gabl;//@bedehi_az_gabl float,

  DataM_sp.ADOStoredProc_forosh.Parameters[11].Value:=' œ—Ì«›  ‰ﬁœÌ Â‰ê«„ ›—Ê‘ »Â '+DataModule1.ADOQuery3shahrforoshande.AsString+' ‘„«—Â ›«ò Ê— '+sh_fctor;//@tozih nvarchar(150),
  DataM_sp.ADOStoredProc_forosh.Parameters[12].Value:='Ê—ÊœÌ';//@type_sandog nvarchar(6),
  DataM_sp.ADOStoredProc_forosh.Parameters[13].Value:=nagd;//@mablag float,
  DataM_sp.ADOStoredProc_forosh.Parameters[14].Value:=DBLookupComboBox3.Text;//@sandog nvarchar(30)
  DataM_sp.ADOStoredProc_forosh.Parameters[15].Value:=frm_main.l_last_op.Caption+' »« ‘„«—Â ›«ò Ê— '+sh_fctor;//@amaliat nvarchar(1000)
  DataM_sp.ADOStoredProc_forosh.Parameters[16].Value:=trim(frm_tozihat.Memo1.Text);//@tozihat_forosh  nvarchar(1000)

  {DataM_sp.ADOStoredProc_forosh.Parameters[17].Value:=sh_fish; //@sh_fish float

  if CheckBox1.Checked then
  begin
    DataM_sp.ADOStoredProc_forosh.Parameters[18].Value:='ò«—  «⁄ »«—Ì »«‰ò ò‘«Ê—“Ì'; //@type_ nvarchar(50),
    DataM_sp.ADOStoredProc_forosh.Parameters[19].Value:=E_sh_kart.Text;//@shomare_kart nvarchar(15)
  end
  else
  begin
    DataM_sp.ADOStoredProc_forosh.Parameters[18].Value:=''; //@type_ nvarchar(50),
    DataM_sp.ADOStoredProc_forosh.Parameters[19].Value:='';//@shomare_kart nvarchar(15)
  end; }

  DataM_sp.ADOStoredProc_forosh.ExecProc;

  //frm_main.backup;

  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' order by calaname,calacod';
  {QuotedStr('€–«Â«Ì —” Ê—«‰')+' and calaname like '+QuotedStr('ç·Ê'+'%')+
  ' order by calaname,calacod'; }
  Dmanbarexite.ADOanbarcala.Open;

 { Dmanbarexite.ADOanbarcala3.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr('€–«Â«Ì —” Ê—«‰')+' and calaname not like '+QuotedStr('ç·Ê'+'%')+
  ' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala3.Open;

  Dmanbarexite.ADOanbarcala4.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr(trim('ÌŒç«· —” Ê—«‰'))+
  ' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala4.Open; }

  frm_forosh_fishi.mohasebe_geymat_kol;
  Frm_pish_forosh.show_pish_forosh;

  bede_talab_temp_check_forosh;

  CheckBox1.Checked:=false;
  E_sh_kart.Visible:=false;
  Label12.Visible:=false;

  E_sh_kart.Clear;

  E_name.Clear;
  e_cod.Clear;


  if CheckBox2.Checked then
    show_facrore_forosh;

  //MessageBox(Handle,'⁄„·Ì«  ›—Ê‘ «Ã‰«” À»  ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );

    DataModule1.ADOQ_sh_factor.SQL.Text:='select * from T_shomare_factor where shahrforoshande='+
    QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
    DataModule1.ADOQ_sh_factor.Open;



    frm_forosh_fishi.shahrforoshande:=DataModule1.ADOQuery3shahrforoshande.AsString;
    frm_forosh_fishi.code:=DataModule1.ADOQuery3code.AsString;

    frm_forosh_fishi.sh_fctor:=DataModule1.ADOQ_sh_factorshomare.AsString;
      

  {ADOQ_sh_fish.SQL.Text:='select * from t_sh_fish';
  ADOQ_sh_fish.Open;

  sh_fish:=ADOQ_sh_fishsh_fish.AsString; }
  



       Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;

       clear2;
       L_bedehkae.Caption:='0';
       L_bestankar.Caption:='0';


       DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.SQL.Text:='begin tran delete from T_temp_forosh_factor commit tran';
       DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.ExecSQL;

       CheckBox2.Checked:=true;       
  end;{2}
  end{1}
  else
    begin{1}
        Label_taeed_forosh.Caption:='a';
        Frm_entekhab_check_baraye_forosh.clear;
        frm_forosh_property.hazf_hame_check;
        L_bedehkae.Caption:=DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsString;
        L_bestankar.Caption:='0';
        Edit4.Text:='';
        Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
    end;{1}

   E_barcod_khan.SetFocus;

end;


 function Tfrm_forosh_fishi.equal:boolean;
var p1,p2,p3 :real;
begin
  if Trim(Edit4.Text)='' then
    p1:=0
  else
    p1:=StrTofloat(Edit4.Text);


    p3:=DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat;

 if (p1+p2)>(p3) then
    begin
     {if Label_taeed_forosh.Caption<>'a' then}
       equal:=false;
       Label_taeed_forosh.Caption:='';
    end
 else
   begin
     equal:=true;
     Label_taeed_forosh.Caption:='a'
   end;
end;

////////////////////////
function Tfrm_forosh_fishi.check_;
begin
Frm_pish_forosh.show_pish_forosh;
  If (DataModule1.ADOQuery3shahrforoshande.AsString='') or
      (DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount <=0) or(trim(MaskEditforooz.Text)='')  then
       begin
          check_:=false;
          MessageBox(Handle,' «—ÌŒ ›—Ê‘ Ê «Ã‰«” »«Ìœ Ê«—œ ‘Ê‰œ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
          Label_taeed_forosh.Caption:='';
          Exit;
       end
  else
      begin
        check_:=true;
        Label_taeed_forosh.Caption:='a'
      end;

     if Edit4.Text='' then
        Edit4.Text:='0';
   if (DBLookupComboBox3.Text='') then
  begin
      check_:=false;
      MessageBox(Handle,'œ—Ì«›  ‰ﬁœÌ »«Ìœ »Â Ìò ’‰œÊﬁ œ—Ì«›  Ê«—œ ‘Êœ.',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      exit;
  end;

  if (CheckBox1.Checked) then
  begin
      if trim(E_sh_kart.Text)='' then
      begin
        check_:=false;
        MessageBox(Handle,'»—«Ì Å—œ«Œ  ‰ﬁœ »« ò«—  «⁄ »«—Ì »«Ìœ ‘„«—Â ò«—  «⁄ »«—Ì —« Ê«—œ ò‰Ìœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
        Exit;
      end;
  end;

  if (DBLookupComboBox3.Text<>'ò«—  «⁄ »«—Ì »«‰ò ò‘«Ê—“Ì')and(CheckBox1.Checked) then
  begin
      check_:=false;
      MessageBox(Handle,'»—«Ì Å—œ«Œ  ‰ﬁœ »« ò«—  «⁄ »«—Ì »«Ìœ "" ò«—  «⁄ »«—Ì »«‰ò ò‘«Ê—“Ì "" »—«Ì ’‰œÊﬁ «‰ Œ«» ê—œœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      Exit;
  end;

  if (DBLookupComboBox3.Text='ò«—  «⁄ »«—Ì »«‰ò ò‘«Ê—“Ì')and(not CheckBox1.Checked) then
  begin
      check_:=false;
      MessageBox(Handle,'»—«Ì Å—œ«Œ  ‰ﬁœ »œÊ‰ ò«—  «⁄ »«—Ì ‰»«Ìœ "" ò«—  «⁄ »«—Ì »«‰ò ò‘«Ê—“Ì "" »—«Ì ’‰œÊﬁ «‰ Œ«» ê—œœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      Exit;
  end;
end;



/////////////////////////////
procedure  Tfrm_forosh_fishi.bede_talab_temp_check_forosh;
var nagd,kol_pardakht:string;
begin
 if DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat=0 then
 begin
  frm_forosh_property.hazf_hame_check;

  Edit4.Text:='';
  Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
  frm_forosh_fishi.L_bestankar.Caption:='0';
  frm_forosh_fishi.L_bedehkae.Caption:='0';

 end
 else
 begin
         if Edit4.Text='' then
             nagd:='0'
         else
          nagd:=Edit4.Text;
          Frm_entekhab_check_baraye_forosh.jame_temp_check_forosh;

          kol_pardakht:=FloatToStr(StrToFloat(nagd)+DataM_final.ADOQ_jame_t_Temp_pardakht_check_foroshjame_kol.Value+StrToFloat(l_mablagh_takhfif.Caption));

         if StrToFloat(kol_pardakht)>DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat then
         begin
          L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat);
          L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat then
         begin
           L_bedehkae.Caption:=FloatToStr(DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat-StrToFloat(kol_pardakht));
           L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat then
         begin
          L_bestankar.Caption:='0';
          L_bedehkae.Caption:='0';

         end;
 end;
end;

/////////////////////////////////////////

procedure Tfrm_forosh_fishi.clear2;
begin
    Edit4.Text:='';
    styear:='';
    stmonth:='';
    stdate:='';
    L_bedehkae.Caption:='0';
    L_bestankar.Caption:='0';
end;
////////////////
procedure Tfrm_forosh_fishi.mohasebe_geymat_kol;
var darsad:real;
begin
  DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymat.SQL.Text:='select sum(geymat_jens)as kol_,count(*) as galam_ from forosh_temp';
  DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymat.Open;
  if l_darsad_takhfif.Caption='0' then
  begin
    l_mablagh_takhfif.Caption:='0';
    darsad:=0;
  end
  else
    begin
      if l_darsad_takhfif.Caption='' then
        l_darsad_takhfif.Caption:='0';
      darsad:=StrToFloat(l_darsad_takhfif.Caption);
      l_mablagh_takhfif.Caption:=FloatToStr((darsad*DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat)/100);
    end;
end;
/////////////////
procedure  Tfrm_forosh_fishi.show_pish_forosh;
begin
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp';
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open;

  Frm_print_pish_factor.QRLabel_g_kol.Caption:=DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsString;

end;
//////////

procedure Tfrm_forosh_fishi.delete_jens;
var code_,tedad_:integer;
begin
 if  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount =1 then
 begin
  l_darsad_takhfif.Caption:='';
  l_mablagh_takhfif.Caption:='';
 end;

 if  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount <=0 then
   MessageBox(Handle,'—òÊ—œÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Delete;

   //show_pish_forosh;
 end;
end;//////////


procedure Tfrm_forosh_fishi.FormShow(Sender: TObject);
begin
  CheckBox2.Checked:=true;
  rad_ajnas.ItemIndex:=0;

  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande where type_='+QuotedStr('Œ—Ìœ«—')+
  ' or type_='+QuotedStr('Œ—Ìœ«—/›—Ê‘‰œÂ')+
  ' order by shahrforoshande,code';
  DataModule1.ADOQuery3.Open;


  E_barcod_khan.SetFocus;

    
 // RadioGroup2.ItemIndex:=0;

 { if RadioGroup2.ItemIndex=0 then
  begin
    Frm_print_fo.QRL_biron.Caption:='”«·‰';
    Frm_print_fo.QRL_biron2.Caption:='”«·‰';
  end
  else
  begin
    Frm_print_fo.QRL_biron.Caption:='»Ì—Ê‰ »—';
    Frm_print_fo.QRL_biron2.Caption:='»Ì—Ê‰ »—';
  end;}

  CheckBox1.Checked:=false;
  E_sh_kart.Visible:=false;
  Label12.Visible:=false;

  E_sh_kart.Clear;

  {ADOQ_sh_fish.SQL.Text:='select * from t_sh_fish';
  ADOQ_sh_fish.Open;

  sh_fish:=ADOQ_sh_fishsh_fish.AsString;}



  ///////////////////////
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' order by calaname,calacod';
  
  {QuotedStr('€–«Â«Ì —” Ê—«‰')+' and calaname like '+QuotedStr('ç·Ê'+'%')+
  ' order by calaname,calacod'; }
  Dmanbarexite.ADOanbarcala.Open;

  {Dmanbarexite.ADOanbarcala3.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr('€–«Â«Ì —” Ê—«‰')+' and calaname not like '+QuotedStr('ç·Ê'+'%')+
  ' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala3.Open;

  Dmanbarexite.ADOanbarcala4.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr(trim('ÌŒç«· —” Ê—«‰'))+
  ' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala4.Open;}

    DataModule1.ADOQ_sh_factor.SQL.Text:='select * from T_shomare_factor where shahrforoshande='+
    QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
    DataModule1.ADOQ_sh_factor.Open;



    frm_forosh_fishi.shahrforoshande:=DataModule1.ADOQuery3shahrforoshande.AsString;
    frm_forosh_fishi.code:=DataModule1.ADOQuery3code.AsString;

    frm_forosh_fishi.sh_fctor:=DataModule1.ADOQ_sh_factorshomare.AsString;

  //////////////////

  Frm_pish_forosh.delete_hame_ajnas('');


//////////////////////////////////
RadioGroup1.ItemIndex :=0;
suiButton4.Enabled :=false;
MaskEditforooz.Enabled :=false;
MaskEditfomah.Enabled :=false;
MaskEditfosal.Enabled :=false;
MaskEditforooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
MaskEditfomah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
MaskEditfosal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];


frm_forosh_fishi.tarikh:=frm_forosh_fishi.MaskEditfosal.Text+'/'+frm_forosh_fishi.MaskEditfomah.Text+'/'+frm_forosh_fishi.MaskEditforooz.Text;

  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='begin tran update forosh_temp set tarikh='+
  QuotedStr(frm_forosh_fishi.tarikh)+' commit tran';
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;

  DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.SQL.Text:='begin tran delete from T_temp_forosh_factor '+' commit tran';
  DataModule_gozaresh_tarkibi.ADOQ_temp_factore_forosh.ExecSQL;

  DataM_final.ADOQ_t_Temp_pardakht_check_forosh.SQL.Text:='begin tran delete from t_Temp_pardakht_check_forosh'+' commit tran';
  DataM_final.ADOQ_t_Temp_pardakht_check_forosh.ExecSQL;  

  Dmanbar.ADOQ_gozaresh_anbar_temp.SQL.Text:='begin tran delete from T_gozaresh_vorod_va_khoroje_anbar_temp'+' commit tran';
  Dmanbar.ADOQ_gozaresh_anbar_temp.ExecSQL;

/////////////////////////////////

  DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name where sandog<>'+
  QuotedStr('»—œ«‘  „ ›—ﬁÂ')+' and  sandog<>'+
  QuotedStr('”—„«ÌÂ')+' order by sandog';
  DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;

  WindowState:=wsMaximized;
  E_name.Clear;
  e_cod.Clear;


  Frm_pish_forosh.show_pish_forosh;
  frm_forosh_fishi.mohasebe_geymat_kol;

  if DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount<=0 then
  begin
   l_darsad_takhfif.Caption:='0';
   l_mablagh_takhfif.Caption:='0';
  end;

  bede_talab_temp_check_forosh;
end;

procedure Tfrm_forosh_fishi.E_nameChange(Sender: TObject);
begin
  DataModule1.ADOQuery3.Locate('shahrforoshande',E_name.Text,[loPartialKey]);
end;

procedure Tfrm_forosh_fishi.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure Tfrm_forosh_fishi.e_codKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;

 if not (key in['0'..'9',#8]) then
   key:=#0;


end;

procedure Tfrm_forosh_fishi.LMDSpeedButton11Click(Sender: TObject);
begin
 if DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount<=0 then
   MessageBox(Handle,'«Ã‰«” ›Ì‘ Ê«—œ ‰‘œÂ «‰œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
  frm_takhfife_forosh.l_arzesh_kol.Caption:=DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsString;
  frm_takhfife_forosh.l_fish.Caption:='fishi';
  frm_takhfife_forosh.ShowModal;

  bede_talab_temp_check_forosh;

 end;
end;

procedure Tfrm_forosh_fishi.LMDSpeedButton_62661Click(Sender: TObject);
begin
  delete_jens;
  Frm_pish_forosh.mohasebe_geymat_kol;
  bede_talab_temp_check_forosh;
end;

procedure Tfrm_forosh_fishi.RadioGroup1Click(Sender: TObject);
begin
   if RadioGroup1.ItemIndex =0  then
    begin
      suiButton4.Enabled :=false;
      MaskEditforooz.Enabled :=false;
      MaskEditfomah.Enabled :=false;
      MaskEditfosal.Enabled :=false;
      MaskEditforooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
      MaskEditfomah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
      MaskEditfosal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
    end
  else
    begin
      suiButton4.Enabled :=true;
      MaskEditforooz.Enabled :=true;
      MaskEditfomah.Enabled :=true;
      MaskEditfosal.Enabled :=true;
      suiButton4.Click;
    end;
end;

procedure Tfrm_forosh_fishi.suiButton4Click(Sender: TObject);
begin
_Taghvim.ShowModal;
  if _taghvim._str_date<>'' then
     begin
         MaskEditfosal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
         MaskEditfoMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
         MaskEditfoRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
      end
end;

procedure Tfrm_forosh_fishi.suiButton1Click(Sender: TObject);
begin
  frm_tozihat.l_type_tozih.Caption:='no edit';
  frm_tozihat.l_type_factor.Caption:='forosh';
  frm_tozihat.ShowModal;
end;

procedure Tfrm_forosh_fishi.Edit4Change(Sender: TObject);
begin
if DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat=0 then
  begin
    frm_forosh_property.hazf_hame_check;
    Edit4.Text:='';
    Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
    L_bestankar.Caption:='0';
    L_bedehkae.Caption:='0';
  end
  else
    bede_talab_temp_check_forosh;
end;

procedure Tfrm_forosh_fishi.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    E_barcod_khan.SetFocus;
  end
  else
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    
if not (key in['0'..'9',#8]) then
   key:=#0;



end;

procedure Tfrm_forosh_fishi.Edit4Exit(Sender: TObject);
begin
if DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatkol_.AsFloat=0 then
  begin
    frm_forosh_property.hazf_hame_check;
    Edit4.Text:='';
    Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
    L_bestankar.Caption:='0';
    L_bedehkae.Caption:='0';
  end
  else
    bede_talab_temp_check_forosh;
end;



procedure Tfrm_forosh_fishi.suiButton5222Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_forosh_fishi.suiButton6Click(Sender: TObject);

var st:pchar;
begin
 //sleep(1000);
 time_:=frm_main.LMDClock1.Digital.Caption;
 Frm_print_fo.QRL_time.Caption:=time_;
 Frm_print_fo.QRL_time2.Caption:=time_;
if check_ then
  begin
     if DataModule1.ADOQuery3shahrforoshande.AsString<>'' then
     begin
      if not equal then
      begin
          if MessageBox(Handle,'„»·€ Å—œ«Œ Ì »Â ’Ê—  ‰ﬁœ Ê çò «“ ﬁÌ„  ò· Œ—Ìœ »Ì‘ — „Ì»«‘œ ° „»«·€ —«  «ÌÌœ „Ìò‰Ìœ ø',' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
             //go;
             execute_forosh_stored_procedure;
      end
      else
           //go;
           execute_forosh_stored_procedure;
     end
     else
      begin
        st:=pchar('„‘Œ’«  Œ—Ìœ«— »«Ìœ Ê«—œ ‘Êœ');
        MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
      end;
   end;
end;


procedure Tfrm_forosh_fishi.MaskEditforoozChange(Sender: TObject);
begin
  frm_forosh_fishi.tarikh:=MaskEditfosal.Text+'/'+MaskEditfomah.Text+'/'+MaskEditforooz.Text;

  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='begin tran update forosh_temp set tarikh='+
  QuotedStr(tarikh)+' commit tran';
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;

  DataM_final.ADOQ_T_temp_pardakht_check_forosh.SQL.Text:='begin tran update T_temp_pardakht_check_forosh set tarikh_kharid='+
  QuotedStr(tarikh)+' commit tran';
  DataM_final.ADOQ_T_temp_pardakht_check_forosh.ExecSQL;

  Frm_pish_forosh.show_pish_forosh;
  Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;

end;

procedure Tfrm_forosh_fishi.suiButton12323Click(Sender: TObject);
begin
  if DataM_final.ADOQ_t_Temp_pardakht_check_forosh.RecordCount=0 then
     MessageBox(Handle,'çòÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ .','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT )
  else
  begin
      DataM_final.ADOQ_t_Temp_pardakht_check_forosh.Delete;

      Frm_entekhab_check_baraye_forosh.show_temp_check_forosh;
      Frm_entekhab_check_baraye_forosh.jame_temp_check_forosh;
      Frm_entekhab_check_baraye_forosh.bede_talab_temp_check_forosh_fishi;
  end;
end;

procedure Tfrm_forosh_fishi.bClick(Sender: TObject);
begin
  if DataModule_gozaresh_tarkibi.ADOQuery_mohasebe_geymatgalam_.AsFloat>0 then
  begin
    Frm_entekhab_check_baraye_forosh.L_type.Caption:='forosh fishi';
    Frm_entekhab_check_baraye_forosh.l_sh_factore_fish.Caption:=sh_fctor;
    Frm_entekhab_check_baraye_forosh.ShowModal;
  end
  else
  begin
    MessageBox(Handle,'Â‰Ê“ Ã‰”Ì »—«Ì ›—Ê‘ Ê«—œ ‰‘œÂ «”  !','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
  end;

end;

procedure Tfrm_forosh_fishi.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    Label12.Visible:=true;
    E_sh_kart.Visible:=true;
    E_sh_kart.Clear;
  end
  else
  begin
    Label12.Visible:=false;
    E_sh_kart.Visible:=false;
    E_sh_kart.Clear;
  end;
end;

procedure Tfrm_forosh_fishi.RadioGroup2Click(Sender: TObject);
begin
  {if RadioGroup2.ItemIndex=0 then
  begin
    Frm_print_fo.QRL_biron.Caption:='”«·‰';
    Frm_print_fo.QRL_biron2.Caption:='”«·‰';
  end
  else
  begin
    Frm_print_fo.QRL_biron.Caption:='»Ì—Ê‰ »—';
    Frm_print_fo.QRL_biron2.Caption:='»Ì—Ê‰ »—';
  end;}
end;

procedure Tfrm_forosh_fishi.LMDSpeedButton_3Click(Sender: TObject);
begin
    frm_eslah_forosh.ShowModal;


  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì');

  {QuotedStr('€–«Â«Ì —” Ê—«‰')+' and calaname like '+QuotedStr('ç·Ê'+'%')+
  ' order by calaname,calacod'; }
  Dmanbarexite.ADOanbarcala.Open;

 { Dmanbarexite.ADOanbarcala3.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr('€–«Â«Ì —” Ê—«‰')+' and calaname not like '+QuotedStr('ç·Ê'+'%')+
  ' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala3.Open;

  Dmanbarexite.ADOanbarcala4.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr(trim('ÌŒç«· —” Ê—«‰'))+
  ' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala4.Open;}
end;

procedure Tfrm_forosh_fishi.LMDSpeedButton_Click(Sender: TObject);
begin
  frm_factor_roz.Gp_factor.Visible:=false;
  frm_factor_roz.ShowModal;
end;

procedure Tfrm_forosh_fishi.suiDBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Dmanbarexite.ADOanbarcala.RecordCount>0)and(DataModule1.ADOQuery3.RecordCount>0) then
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;

  if key in[#13] then
  begin
    frm_tedad.l_ghaza.Caption:=Dmanbarexite.ADOanbarcalacalaname.AsString;
    frm_tedad.l_type.Caption:='chelo';

    if Dmanbarexite.ADOanbarcalatedadanbar.AsFloat=0 then
    begin
        MessageBox(Handle,'„ÊÃÊœÌ Ã‰” »—«»— »« ’›— «” ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        exit;
    end;
    frm_tedad.ShowModal;
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    //E_barcod_khan.SetFocus;
  end;
end;
 if Key<>' ' then
  suiDBGrid2.SetFocus;

end;

procedure Tfrm_forosh_fishi.suiDBGrid5KeyPress(Sender: TObject;
  var Key: Char);
begin
{if (Dmanbarexite.ADOanbarcala3.RecordCount>0)and(DataModule1.ADOQuery3.RecordCount>0) then
begin
  if key in[#13] then
  begin
    frm_tedad.l_ghaza.Caption:=Dmanbarexite.ADOanbarcala3calaname.AsString;
    frm_tedad.l_type.Caption:='khorak';
    frm_tedad.ShowModal;
  end;
end; }
end;

procedure Tfrm_forosh_fishi.suiDBGrid6KeyPress(Sender: TObject;
  var Key: Char);
begin
{if (Dmanbarexite.ADOanbarcala4.RecordCount>0)and(DataModule1.ADOQuery3.RecordCount>0) then
begin
  if key in[#13] then
  begin
    frm_tedad.l_ghaza.Caption:=Dmanbarexite.ADOanbarcala4calaname.AsString;
    frm_tedad.l_type.Caption:='gheyre';    
    frm_tedad.ShowModal;
  end;
end;}
end;

procedure Tfrm_forosh_fishi.E_nameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.suiButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.CheckBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.suiDBGrid3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.suiButton4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.DBLookupComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.bKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.suiButton12323KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.suiDBGrid4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.suiButton6KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.suiButton5222KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.Timer1Timer(Sender: TObject);
begin
  if l_barcod_khan.Visible=true then
  begin
     l_barcod_khan.Visible:=false;
  end
  else
  begin
     l_barcod_khan.Visible:=true;
  end
end;

procedure Tfrm_forosh_fishi.E_barcod_khanExit(Sender: TObject);
begin
  l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
  l_barcod_khan.Font.Color:=clMaroon;
  E_barcod_khan.Clear;
end;

procedure Tfrm_forosh_fishi.E_barcod_khanEnter(Sender: TObject);
begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;     
end;

procedure Tfrm_forosh_fishi.MaskEditforoozKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.MaskEditfomahKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.MaskEditfosalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod_khan.Clear;
    E_barcod_khan.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_forosh_fishi.E_barcod_khanKeyPress(Sender: TObject;
  var Key: Char);
begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
end;

procedure Tfrm_forosh_fishi.E_barcod_khanChange(Sender: TObject);
begin
  if trim(E_barcod_khan.Text)<>'' then
  begin
    Dmanbarexite.ADOanbarcala.Locate('barcod',trim(E_barcod_khan.Text),[loPartialKey]);

    if Dmanbarexite.ADOanbarcalabarcod.AsString=trim(E_barcod_khan.Text) then
    begin
      if check_tedad then
      begin
        if insert_pish_forosh then
        begin
          Frm_pish_forosh.show_pish_forosh;
          frm_forosh_fishi.mohasebe_geymat_kol;
          frm_forosh_fishi.bede_talab_temp_check_forosh;

          E_barcod_khan.SetFocus;
          l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
          l_barcod_khan.Font.Color:=clGreen;
          E_barcod_khan.Clear;
        end;
      end;
    end;
  end;
end;

procedure Tfrm_forosh_fishi.rad_ajnasClick(Sender: TObject);
begin
 if rad_ajnas.ItemIndex=1 then
 begin
  frm_entekhbe_sherkat.L_type.Caption:='forosh_fishi' ;
  frm_entekhbe_sherkat.ShowModal;
 end;
 if rad_ajnas.ItemIndex=0 then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
 end;
 if rad_ajnas.ItemIndex=2 then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' and tedadanbar>0'+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
 end;
 if rad_ajnas.ItemIndex=3 then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' and tedadanbar=0'+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
 end;
end;

procedure Tfrm_forosh_fishi.LMDSpeedButton_602122Click(Sender: TObject);
begin

 if DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount>0 then
 begin
    if DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshvahed_koli.AsString<>'' then
    begin
      frm_eslah_fishi.L_koli.Visible:=true;
      frm_eslah_fishi.e_tedad_koli.Visible:=true;
      frm_eslah_fishi.e_tedad_koli.Text:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_koli.AsString;
      frm_eslah_fishi.L_jozi_dar_koli1.Visible:=true;
      frm_eslah_fishi.L_jozi_dar_koli2.Visible:=true;
      frm_eslah_fishi.L_jozi_dar_koli3.Visible:=true;
      frm_eslah_fishi.L_jozi_dar_koli1.Caption:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_jozi_dar_koli.AsString;
    end
    else
    begin
      frm_eslah_fishi.L_koli.Visible:=false;
      frm_eslah_fishi.e_tedad_koli.Visible:=false;
      frm_eslah_fishi.L_jozi_dar_koli1.Visible:=false;
      frm_eslah_fishi.L_jozi_dar_koli2.Visible:=false;
      frm_eslah_fishi.L_jozi_dar_koli3.Visible:=false;
    end;

    frm_eslah_fishi.e_tedad_jozi.Text:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad.AsString;
    frm_eslah_fishi.e_geymat.Text:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshgeymat_vahed.AsString;

    frm_eslah_fishi.l_id.Caption:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshid.AsString;
    frm_eslah_fishi.l_jozi_dar_koli.Caption:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_jozi_dar_koli.AsString;
    frm_eslah_fishi.ShowModal;
 end;
end;

procedure Tfrm_forosh_fishi.LMDSpeedButton_621Click(Sender: TObject);
begin
  Frm_print_pish_factor.QuickRep1.Preview;
end;

procedure Tfrm_forosh_fishi.LMDSpeedButton_6067776621Click(Sender: TObject);
var id:string;
begin
  id:=Dmanbarexite.ADOanbarcalaid.AsString;
  frm_vrode_geymate_jadid.L_type.Caption:='jens_taki';
  frm_editgeymatjens.l_review.Caption:=id;
  
      frm_vrode_geymate_jadid.Ljensname.Caption:=Dmanbarexite.ADOanbarcala.Fields[0].AsString;
      frm_vrode_geymate_jadid.Lgeymatghabli.Caption:=Dmanbarexite.ADOanbarcala.Fields[4].AsString;

      frm_vrode_geymate_jadid.Lcodjens.Caption:=Dmanbarexite.ADOanbarcala.Fields[6].AsString;

      frm_vrode_geymate_jadid.L_name_sherkat.Caption:=Dmanbarexite.ADOanbarcalashakhs_sherkat.AsString;

      frm_vrode_geymate_jadid.L_kharid_jens.Caption:=Dmanbarexite.ADOanbarcalageymatkharid.AsString;

      frm_vrode_geymate_jadid.pmolaforforosh.Text:='';
      frm_vrode_geymate_jadid.Egeymatjadid.Text:='';

      frm_vrode_geymate_jadid.ShowModal;
  //////////////////////////////////////////
 if rad_ajnas.ItemIndex=1 then
 begin
  frm_entekhbe_sherkat.L_type.Caption:='forosh_fishi' ;
  frm_entekhbe_sherkat.ShowModal;
 end;
 if rad_ajnas.ItemIndex=0 then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
 end;
 if rad_ajnas.ItemIndex=2 then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' and tedadanbar>0'+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
 end;
 if rad_ajnas.ItemIndex=3 then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' and tedadanbar=0'+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
 end;  
  /////////////////////////////////////////
  Dmanbarexite.ADOanbarcala.Locate('id',id,[lopartialkey]);
end;

procedure Tfrm_forosh_fishi.LMDSpeedButton_6021Click(Sender: TObject);
var id:string;
begin
  id:=Dmanbarexite.ADOanbarcalaid.AsString;

  frm_eslahe_tozihe_forosh.ShowModal;

  //////////////////////////////////////////
{ if rad_ajnas.ItemIndex=0 then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
 end;
 if rad_ajnas.ItemIndex=2 then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' and tedadanbar>0'+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
 end;
 if rad_ajnas.ItemIndex=3 then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' and tedadanbar=0'+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
 end; } 
  /////////////////////////////////////////
  Dmanbarexite.ADOanbarcala.Locate('id',id,[lopartialkey]);  
end;

procedure Tfrm_forosh_fishi.LMDSpeedButton_6440621Click(Sender: TObject);
begin
  Frm_jadval_jensin_anbar.ShowModal;
end;

procedure Tfrm_forosh_fishi.LMDSpeedButton_60621Click(Sender: TObject);
begin
    ShellExecute(Handle,'open','calc.exe','','',SW_SHOWMAXIMIZED);
end;

procedure Tfrm_forosh_fishi.LMDSpeedButton_6066621Click(Sender: TObject);
var id:string;
begin
  id:=Dmanbarexite.ADOanbarcalaid.AsString;
  frm_vrode_geymate_koli_jadid.L_type.Caption:='jens_taki';
  frm_editgeymatjens.l_review.Caption:=id;
  
      frm_vrode_geymate_koli_jadid.Ljensname.Caption:=Dmanbarexite.ADOanbarcala.Fields[0].AsString;
      frm_vrode_geymate_koli_jadid.Lgeymatghabli.Caption:=Dmanbarexite.ADOanbarcalageymatforosh_koli.AsString;

      frm_vrode_geymate_koli_jadid.Lcodjens.Caption:=Dmanbarexite.ADOanbarcala.Fields[6].AsString;

      frm_vrode_geymate_koli_jadid.L_name_sherkat.Caption:=Dmanbarexite.ADOanbarcalashakhs_sherkat.AsString;

      frm_vrode_geymate_koli_jadid.L_kharid_jens.Caption:=Dmanbarexite.ADOanbarcalageymatkharid.AsString;

      frm_vrode_geymate_koli_jadid.pmolaforforosh.Text:='';
      frm_vrode_geymate_koli_jadid.Egeymatjadid.Text:='';

      frm_vrode_geymate_koli_jadid.ShowModal;
  //////////////////////////////////////////
 if rad_ajnas.ItemIndex=1 then
 begin
  frm_entekhbe_sherkat.L_type.Caption:='forosh_fishi' ;
  frm_entekhbe_sherkat.ShowModal;
 end;
 if rad_ajnas.ItemIndex=0 then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
 end;
 if rad_ajnas.ItemIndex=2 then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' and tedadanbar>0'+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
 end;
 if rad_ajnas.ItemIndex=3 then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' and tedadanbar=0'+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
 end;  
  /////////////////////////////////////////
  Dmanbarexite.ADOanbarcala.Locate('id',id,[lopartialkey]);
end;

procedure Tfrm_forosh_fishi.suiButton2Click(Sender: TObject);
begin
  suiMSNPopForm1.Popup;
end;

end.
