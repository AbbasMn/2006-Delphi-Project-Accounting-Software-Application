unit Untviewanbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, SUIButton, StdCtrls, DBCtrls, ExtCtrls, SUIForm, DB,
  Grids, DBGrids, SUIDBCtrls, SUIMgr, SUIImagePanel, SUIGroupBox,
  LMDControl, LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton;

type
  Tfrm_viewanbar = class(TForm)
    Datasanbarname: TDataSource;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    suiDBGrid2: TsuiDBGrid;
    GroupBox2: TGroupBox;
    RadioGroup_jens_type: TRadioGroup;
    GroupBox_jozi: TGroupBox;
    Label2: TLabel;
    Edit_jozi_tedadjozi: TEdit;
    GroupBox_koli_jozi: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Edit_ko_jozi_tedadkoli: TEdit;
    Edit_ko_jozi_tedadjozi: TEdit;
    GroupBox_koli: TGroupBox;
    Label1: TLabel;
    Edit_koli_tedadkoli: TEdit;
    suibtaeed: TsuiButton;
    GroupBox3: TGroupBox;
    suiDBGrid1: TsuiDBGrid;
    esearch11: TEdit;
    DBText_cod: TDBText;
    Label6: TLabel;
    DBText_jens: TDBText;
    Label4: TLabel;
    LMDSpeedButton11: TLMDSpeedButton;
    L_type: TLabel;
    Label3: TLabel;
    E_barcod: TEdit;
    Label8: TLabel;
    Button2: TButton;
    Button12123: TButton;
    Label9: TLabel;
    esearch: TEdit;
    l_barcod_khan: TLabel;
    Timer1: TTimer;
    L_barcod: TLabel;
    procedure showanbar;
    procedure showanbarkol;
    procedure suibtaeedClick(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure clear;
    procedure esearch11Change(Sender: TObject);
    procedure suiBenserafClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbanbarClick(Sender: TObject);
    function  geymat_kol:Real;
    procedure insert_pish_forosh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function  check_tedad:boolean;
    procedure LMDSpeedButton11Click(Sender: TObject);
    procedure forosh_type;
    procedure RadioGroup_jens_typeClick(Sender: TObject);
    function check_param:boolean;
    procedure Edit_jozi_tedadjoziKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_koli_tedadkoliKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_ko_jozi_tedadkoliKeyPress(Sender: TObject;
      var Key: Char);
    procedure Edit_ko_jozi_tedadjoziKeyPress(Sender: TObject;
      var Key: Char);
    function alamat_ashar(s:string):boolean;
    procedure add_jens_to_factor;
    procedure update_bedeh_talab_va_bedehi_kol_kharidar;
    procedure update_bedehi_kharidar_pas_az_bedekar_shodan;
    procedure E_barcodChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button12123Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure execute_eslahe_forosh_ezafe_kardane_jens;
    procedure Edit_jozi_tedadjoziChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure esearchKeyPress(Sender: TObject; var Key: Char);
    procedure esearch11KeyPress(Sender: TObject; var Key: Char);
    procedure E_barcodKeyPress(Sender: TObject; var Key: Char);
    procedure Button2KeyPress(Sender: TObject; var Key: Char);
    procedure Button12123KeyPress(Sender: TObject; var Key: Char);
    procedure E_barcodEnter(Sender: TObject);
    procedure E_barcodExit(Sender: TObject);
    procedure suibtaeedKeyPress(Sender: TObject; var Key: Char);
    function insert_pish_forosh_sari:boolean;
    function check_tedad_barcod:boolean;
    procedure Edit_koli_tedadkoliChange(Sender: TObject);
    procedure Edit_ko_jozi_tedadkoliChange(Sender: TObject);
    procedure Edit_ko_jozi_tedadjoziChange(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  frm_viewanbar: Tfrm_viewanbar;

implementation

uses Unt_dmanbar, Untdmanbarexit, unt_forosh_property, unt_main,
  unt_datamodule2, unt_pish_forosh, Unt_DataModule_gozaresh_tarkibi,
  unt_datamodule1, Untdmlistha, unt_DataM_final, unt_eslah_forosh,
  unt_eslah_forosh_add_jens, unt_show_tozihate_geymat,
  unt_datam_sp_eslahe_forosh, unt_Dm_zayeat_marjoei, unt_forosh_fishi;

  //// tedade jozie feli=4 regami gabli=6 ragami
  //// tedade koli feli=4 regami gabli=4 ragami
  {$R *.dfm}

function Tfrm_viewanbar.check_tedad_barcod:boolean;
var num :real;
begin
  check_tedad_barcod:=true;

     if Dmanbarexite.ADOanbarcalatedadanbar.AsFloat<=0 then
     begin
        check_tedad_barcod:=false;
        MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì  ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );

        l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
        l_barcod_khan.Font.Color:=clGreen;
        E_barcod.Clear;
        exit;
     end;
     if Dmanbarexite.ADOanbarcalatedadanbar.AsFloat<1 then
     begin
        check_tedad_barcod:=false;
        MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì «“ ⁄œœ Ìò(1) ò„ — „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );

        l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
        l_barcod_khan.Font.Color:=clGreen;
        E_barcod.Clear;
        exit;
     end;
end;
  ///////////////////////

function Tfrm_viewanbar.insert_pish_forosh_sari:boolean;
var stcommand_insert,update_tasfie,barcod,calacalacod,anbarname,calaname,geymat_kharid,olaviat:String;
   tedad_koli_bealave_jozi,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_dar_koli,geymat_koli,geymat_kol_forosh_jens,tedad_jozi,geymat_jozi:string;
   s:pchar;
begin
   insert_pish_forosh_sari:=false;

    calacalacod:=Dmanbarexite.ADOanbarcalacalacod.AsString;


   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp where calacod='+calacalacod+
   ' and anbarname='+QuotedStr(Dmanbarexite.ADOanbarnamename.AsString);
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open;

if DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount>0 then
begin
    if  (DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_kol.AsFloat+1)>Dmanbarexite.ADOanbarcalatedadanbar.AsFloat then
      begin
         Frm_pish_forosh.show_pish_forosh;
         frm_forosh_fishi.mohasebe_geymat_kol;
         frm_forosh_fishi.bede_talab_temp_check_forosh;

          E_barcod.SetFocus;
          l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
          l_barcod_khan.Font.Color:=clGreen;
          E_barcod.Clear;

          MessageBox(Handle,pchar(' „Ã„Ê⁄  ⁄œ«œ Ã‰” »—«Ì ›—Ê‘ »«Ìœ ò„ — «“ <<'+Dmanbarexite.ADOanbarcalatedadanbar.Asstring+'>> »«‘œ'),' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        exit;
      end;

//ezafe bar mojodi
/////////////////////////////////////////////////////////////////////

     insert_pish_forosh_sari:=true;


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
    insert_pish_forosh_sari:=true;

//////////////////////////////////////////////////////////////////////////
end//ezafe bar mojodi
else
begin
      insert_pish_forosh_sari:=false;

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

  insert_pish_forosh_sari:=true;

end;
end;

  ////////////////////////////////////
procedure Tfrm_viewanbar.execute_eslahe_forosh_ezafe_kardane_jens;
var check,kol_pardakht,nagd,g_kol:string;
    kol_gabl:string;
    bedeh_eslah,talab_eslah,par:real;

    stcommand_insert,update_tasfie,anbar_name:String;
   frorsh_type,p,tedad_koli_bealave_jozi,vahed_koli,vahed_jozei,tedad_koli_forosh,tedad_koli_anbar,tedad_jozi_dar_koli,geymat_koli,geymat_kol_forosh_jens,tedad_jozi,tedad_jozi_forosh,geymat_jozi,anbar,s1,type_:string;
   cod_,temp,dd,x,y,z:real;
   i,j:integer;
   s:pchar;
begin


///////////////////////////////////////
 if frm_viewanbar.RadioGroup_jens_type.ItemIndex=0 then
 begin

    tedad_koli_forosh:=frm_viewanbar.Edit_koli_tedadkoli.Text;
    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcala.Fields[13].AsString;

    geymat_jozi:=Dmanbarexite.ADOanbarcala.Fields[3].AsString;

    tedad_jozi_forosh:=FloatToStr(StrToFloat(tedad_koli_forosh)*StrToFloat(tedad_jozi_dar_koli));

    vahed_koli:=Dmanbarexite.ADOanbarcala.Fields[11].AsString;
    vahed_jozei:=Dmanbarexite.ADOanbarcala.Fields[14].AsString;

    if vahed_koli<>'' then
    begin
      tedad_koli_bealave_jozi:=floatToStr(StrTofloat(tedad_koli_forosh)*StrTofloat(tedad_jozi_dar_koli));
      geymat_koli:=Dmanbarexite.ADOanbarcala.Fields[15].AsString;
      geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));
      tedad_jozi_forosh:='0';
    end
    else
    begin
    end;

 end;

  if frm_viewanbar.RadioGroup_jens_type.ItemIndex=1 then
 begin
     vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

     geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

    if vahed_koli<>'' then
      tedad_koli_forosh:=FloatToStr(int(StrToFloat(frm_viewanbar.Edit_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli)))
    else
      tedad_koli_forosh:='0';

     vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;

     if vahed_koli='' then
     begin
      tedad_jozi_forosh:=frm_viewanbar.Edit_jozi_tedadjozi.Text;
      tedad_koli_bealave_jozi:=frm_viewanbar.Edit_jozi_tedadjozi.Text;
     end
     else
     begin
      tedad_jozi_forosh:=FloatToStr(StrToFloat(frm_viewanbar.Edit_jozi_tedadjozi.Text)-(StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_koli_forosh));
      tedad_koli_bealave_jozi:=frm_viewanbar.Edit_jozi_tedadjozi.Text;
     end;



     geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh.AsString;

     geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));

 end;

  if frm_viewanbar.RadioGroup_jens_type.ItemIndex=2 then
 begin
     vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

     geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

     tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

     tedad_koli_forosh:=FloatToStr(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadkoli.Text));

     tedad_koli_forosh:=FloatToStr(StrToFloat(tedad_koli_forosh)+int(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli)));



     vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;

     tedad_jozi_forosh:=FloatToStr(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadjozi.Text)-(int(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_jozi_dar_koli)));

     geymat_jozi:=Dmanbarexite.ADOanbarcala.Fields[3].AsString;

     tedad_koli_bealave_jozi:=FloatToStr((StrToFloat(tedad_koli_forosh)*StrToFloat(tedad_jozi_dar_koli))+StrToFloat(tedad_jozi_forosh));

     geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));
 end;

  ////////////////////////////////////////



    
    if (frm_eslah_forosh_add_jens.DBT_m_check.Caption='0') or (frm_eslah_forosh_add_jens.DBT_m_check.Caption='') then
             check:='0'
         else
          check:=frm_eslah_forosh_add_jens.DBT_m_check.Caption;

    if (frm_eslah_forosh_add_jens.DBT_mab_gabl.Caption='') or(frm_eslah_forosh_add_jens.DBT_mab_gabl.Caption='0')then
      nagd:='0'
    else
      nagd:=frm_eslah_forosh_add_jens.DBT_mab_gabl.Caption;

    if (frm_eslah_forosh_add_jens.DBText_t_jam.Caption='0') or(frm_eslah_forosh_add_jens.DBText_t_jam.Caption='') then
      g_kol:='0'
    else
      g_kol:=frm_eslah_forosh_add_jens.DBText_t_jam.Caption;


      if DataModule_gozaresh_tarkibi.ADO_fac_roz_show.RecordCount>0 then
        kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat)
      else
        kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd));


       //////////////
       g_kol:=FloatToStr(StrToFloat(g_kol)+StrToFloat(geymat_kol_forosh_jens));
       //////////////



         if StrToFloat(kol_pardakht)>StrToFloat(g_kol) then
         begin
          frm_eslah_forosh_add_jens.L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(g_kol));
          frm_eslah_forosh_add_jens.L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<StrToFloat(g_kol) then
         begin
           frm_eslah_forosh_add_jens.L_bedehkae.Caption:=FloatToStr(StrToFloat(g_kol)-StrToFloat(kol_pardakht));
           frm_eslah_forosh_add_jens.L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=StrToFloat(g_kol) then
         begin
          frm_eslah_forosh_add_jens.L_bestankar.Caption:='0';
          frm_eslah_forosh_add_jens.L_bedehkae.Caption:='0';
         end;

    {if (frm_eslah_forosh_add_jens.DBText_t_jam.Caption='0') or(frm_eslah_forosh_add_jens.DBText_t_jam.Caption='') then
      g_kol:='0'
    else
      g_kol:=frm_eslah_forosh_add_jens.DBText_t_jam.Caption; }

    if (frm_eslah_forosh_add_jens.L_kol_gabl.Caption='0') or(frm_eslah_forosh_add_jens.L_kol_gabl.Caption='') then
      kol_gabl:='0'
    else
      kol_gabl:=frm_eslah_forosh_add_jens.L_kol_gabl.Caption;

      ///////////////////////////////////////////////////////////
    {if (frm_eslah_forosh_add_jens.DBT_m_check.Caption='0') or (frm_eslah_forosh_add_jens.DBT_m_check.Caption='') then
             check:='0'
         else
          check:=frm_eslah_forosh_add_jens.DBT_m_check.Caption;

    if (frm_eslah_forosh_add_jens.DBT_mab_gabl.Caption='') or(frm_eslah_forosh_add_jens.DBT_mab_gabl.Caption='0')then
      nagd:='0'
    else
      nagd:=frm_eslah_forosh_add_jens.DBT_mab_gabl.Caption;

      kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)); }
      



      /////////////////////////////////////////////////////////////
      if(StrToFloat(kol_pardakht)<=StrToFloat(kol_gabl))then //1
      begin
       bedeh_eslah:=StrToFloat(g_kol)-StrToFloat(kol_gabl);
       par:=1;
      end;

      if(StrToFloat(kol_pardakht)>StrToFloat(kol_gabl))and(StrToFloat(kol_pardakht)>=StrToFloat(g_kol))then//2
      begin
       talab_eslah:=StrToFloat(g_kol)-StrToFloat(kol_gabl);
       par:=2;
      end;

      if(StrToFloat(kol_pardakht)>StrToFloat(kol_gabl))and(StrToFloat(kol_pardakht)<StrToFloat(g_kol))then//3
      begin
       talab_eslah:=StrToFloat(kol_pardakht)-StrToFloat(kol_gabl);

       bedeh_eslah:=StrToFloat(g_kol)-StrToFloat(kol_pardakht);

       par:=3;
      end;



 /////////////////////////////////////// gozaresh e anbar //////////////////////

    anbar:=Dmanbarexite.ADOanbarcalaanbarname.AsString;

      s1:=' Œ—ÊÃ Ã‰” «“ „ò«‰ '+anbar+' »Â ⁄·  «÷«›Â ‰„Êœ‰ Ã‰” »Â ›«ò Ê— ›—Ê‘ œ— ÊÌ—«Ì‘ ›«ò Ê— ›—Ê‘ ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' Œ—Ìœ«— '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;
      type_:='Œ—ÊÃÌ - «÷«›Â ‘œ‰ Ã‰” »Â ›«ò Ê— ›—Ê‘ œ— ÊÌ—«Ì‘ ›«ò Ê— ›—Ê‘';

////////////////////////////////////////   update anbar  ///////////////////////////////

       cod_:=Dmanbarexite.ADOanbarcalacalacod.AsFloat;

       anbar_name:=Dmanbarexite.ADOanbarcalaanbarname.AsString;

       p:=tedad_koli_forosh;
       tedad_koli_anbar:=p;

       tedad_jozi:=tedad_jozi_forosh;

if (StrToFloat(tedad_koli_forosh) >0) and (StrToFloat(tedad_jozi)=0)and(StrToFloat(tedad_jozi_dar_koli)=0)then
          frorsh_type:='koli-bedon-jozei';

       if (StrToFloat(tedad_koli_forosh )>0) and (StrToFloat(tedad_jozi)=0)and(StrToFloat(tedad_jozi_dar_koli)>0)then
          frorsh_type:='koli-ba-jozei';

       if (StrToFloat(tedad_koli_forosh)=0) and (StrToFloat(tedad_jozi)>0)and(StrToFloat(tedad_jozi_dar_koli)=0)then
          frorsh_type:='jozei-bedon-jozei';

       if (StrToFloat(tedad_koli_forosh)=0) and (StrToFloat(tedad_jozi)>0)and(StrToFloat(tedad_jozi_dar_koli)>0)then
          frorsh_type:='jozei-ba-jozei';

       if (StrToFloat(tedad_koli_forosh)>0) and (StrToFloat(tedad_jozi)>0)then
          frorsh_type:='kolijozei';

      if  frorsh_type='koli-ba-jozei' then
      begin
         Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+floatToStr(cod_)+
         ' and anbarname='+QuotedStr(Dmanbarexite.ADOanbarcalaanbarname.AsString);
          Dmanbarexite.ADOanbarcala.Open;

          temp:=Dmanbarexite.ADOanbarcalatedadanbar.Value;
          dd:=StrToFloat(tedad_koli_forosh)*StrToFloat(tedad_jozi_dar_koli);
           if (temp-dd)>0 then
           begin
             for i:=1 to StrToInt(p)do
               tedad_jozi:=FloatToStr(StrToFloat(tedad_jozi)+StrToFloat(tedad_jozi_dar_koli));
           end
           else
            begin
             for i:=1 to (StrToInt(p)-1) do
               tedad_jozi:=FloatToStr(StrToFloat(tedad_jozi)+StrToFloat(tedad_jozi_dar_koli));
            end;
      end;

     if frorsh_type='jozei-ba-jozei'then
     begin
          Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+floatToStr(cod_)+
          ' and anbarname='+QuotedStr(Dmanbarexite.ADOanbarcalaanbarname.AsString);
          Dmanbarexite.ADOanbarcala.Open;
          temp:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;

          if StrToFloat(tedad_jozi)=StrToFloat(tedad_jozi_dar_koli) then
            tedad_jozi_dar_koli:=FloatToStr(StrToFloat(tedad_koli_forosh)+1);

          if StrToFloat(tedad_jozi)>StrToFloat(tedad_jozi_dar_koli)  then
          begin
              x:=int(StrToFloat(tedad_jozi)/StrToFloat(tedad_jozi_dar_koli)*StrToFloat(tedad_jozi_dar_koli));
              y:=StrToFloat(tedad_jozi)-x;
              tedad_koli_anbar:=FloatToStr((StrToFloat(tedad_koli_forosh)+int(StrToFloat(tedad_jozi)/StrToFloat(tedad_jozi_dar_koli))));
              z:=(int(temp/StrToFloat(tedad_jozi_dar_koli))-int((temp-y)/StrToFloat(tedad_jozi_dar_koli)));
              if z>0 then
                tedad_koli_anbar:=FloatToStr(StrToFloat(tedad_koli_anbar)+z);
          end;

          if StrToFloat(tedad_jozi)<StrToFloat(tedad_jozi_dar_koli) then
          begin
             if int((temp-StrToFloat(tedad_jozi))/StrToFloat(tedad_jozi_dar_koli)) < int(temp/StrToFloat(tedad_jozi_dar_koli))then
                tedad_koli_anbar:=FloatToStr(StrToFloat(tedad_koli_anbar)+1);
          end;
   end;

     if frorsh_type='kolijozei'then
     begin
          Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+floatToStr(cod_)+
          ' and anbarname='+QuotedStr(Dmanbarexite.ADOanbarcalaanbarname.AsString);
          Dmanbarexite.ADOanbarcala.Open;


          temp:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;

          if StrToFloat(tedad_jozi) > StrToFloat(tedad_jozi_dar_koli) then
          begin
              x:=int(StrToFloat(tedad_jozi)/StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_jozi_dar_koli);
              y:=StrToFloat(tedad_jozi)-x;

              tedad_koli_anbar:=FloatToStr(StrToFloat(tedad_koli_forosh)+int(StrToFloat(tedad_jozi)/StrToFloat(tedad_jozi_dar_koli)));
              z:=(int(temp/StrToFloat(tedad_jozi_dar_koli))-int((temp-y)/StrToFloat(tedad_jozi_dar_koli)));
              if z>0 then
                tedad_koli_anbar:=FloatToStr(StrToFloat(tedad_koli_anbar)+z);
          end;

          if StrToFloat(tedad_jozi)<StrToFloat(tedad_jozi_dar_koli) then
          begin
             if int((temp-StrToFloat(tedad_jozi))/StrToFloat(tedad_jozi_dar_koli)) < int(temp/StrToFloat(tedad_jozi_dar_koli))then
                tedad_koli_anbar:=FloatToStr(StrToFloat(tedad_koli_anbar)+1);
          end;

         for i:=1 to StrToint(p) do

               tedad_jozi:=FloatToStr(StrToFloat(tedad_jozi)+StrToFloat(tedad_jozi_dar_koli));
     end;

////////////////////////////////////////   update anbar  ///////////////////////////////
///////////////////////////////////////

/////////////////////////////////////////////////

          frm_main.l_last_op.Caption:=' «÷«›Â ‰„Êœ‰ Ã‰” »Â ›«ò Ê—'+' ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;




   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[0].Value:=frm_eslah_forosh_add_jens.L_bedehkae.Caption;//@bedehkar float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[1].Value:=frm_eslah_forosh_add_jens.L_bestankar.Caption;//@bestankar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[2].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString;//@code_kharidar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[3].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;//@sh_factor float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[4].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString;//@tatikh_forosh nvarchar(12),

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[5].Value:=Dmanbarexite.ADOanbarcala.Fields[0].AsString;//@calaname nvarchar(41),




   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[6].Value:=StrTofloat(tedad_jozi_forosh);//@tedade_jozi float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[7].Value:=Dmanbarexite.ADOanbarcalacalacod.AsString;//@calacod float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[8].Value:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;//@vahed_koli nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[9].Value:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;//@vahed_jozi nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[10].Value:=StrToFloat(tedad_koli_forosh);//@tedade_koli_forosh float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[11].Value:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;//@tedad_jozi_da_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[12].Value:=StrToFloat(tedad_koli_bealave_jozi);//@tedad_kole_jabejaei float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[13].Value:=s1;//@tozihe_anbar nvarchar(200),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[14].Value:=Dmanbarexite.ADOanbarcalabarcod.AsString;//@barcod nvarchar(15),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[15].Value:=Dmanbarexite.ADOanbarcalacode_sherkati.AsString;//@code_sherkati nvarchar(11),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[16].Value:=Dmanbarexite.ADOanbarcalaanbarname.AsString;//@anbarname nvarchar(30),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[17].Value:=type_;//@type_kh_az_anbar nvarchar(100),



   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[18].Value:=' «÷«›Â ‰„Êœ‰ Ã‰” '+DBText_jens.Caption+' »Â ›«ò Ê— '+' ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' ‘Œ’ '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;//@amaliat nvarchar(1000),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[19].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[20].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[21].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;//@shahrforoshande nvarchar(100),


   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[22].Value:=bedeh_eslah;//@bedeh_eslah float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[23].Value:=talab_eslah;//@talab_eslah float
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[24].Value:=par;//@par float
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[25].Value:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;//@geymat_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[26].Value:=Dmanbarexite.ADOanbarcalageymatforosh.AsString;//@geymat_vahed float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[27].Value:=geymat_kol_forosh_jens;//@geymat_jens float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[28].Value:=Dmanbarexite.ADOanbarcalageymatkharid.AsString;//@geymate_kharid float
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.Parameters[29].Value:=StrToFloat(tedad_koli_anbar);//@tedade_koli_anbar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_ezafe_jens.ExecProc;

   DataModule_gozaresh_tarkibi.ADO_fac_roz_show.SQL.Text:='select * from forosh_jens where shahrforoshande='+
   QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString)+
   ' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
   DataModule_gozaresh_tarkibi.ADO_fac_roz_show.Open;
   
   MessageBox(Handle,pchar('Ã‰” «‰ Œ«»Ì »Â ‘„«—Â ›«ò Ê— «÷«›Â ‘œ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
   
end;

  /////////////////////////////////////// //////////////////////////////////////////////
procedure Tfrm_viewanbar.update_bedehi_kharidar_pas_az_bedekar_shodan;
var g_kol,kol_gabl,nagd,check,kol_pardakht:string;
    bedeh_eslah,talab_eslah:real;
begin
    if (frm_eslah_forosh_add_jens.DBText_t_jam.Caption='0') or(frm_eslah_forosh_add_jens.DBText_t_jam.Caption='') then
      g_kol:='0'
    else
      g_kol:=frm_eslah_forosh_add_jens.DBText_t_jam.Caption;

    if (frm_eslah_forosh_add_jens.L_kol_gabl.Caption='0') or(frm_eslah_forosh_add_jens.L_kol_gabl.Caption='') then
      kol_gabl:='0'
    else
      kol_gabl:=frm_eslah_forosh_add_jens.L_kol_gabl.Caption;

      ///////////////////////////////////////////////////////////
    if (frm_eslah_forosh_add_jens.DBT_m_check.Caption='0') or (frm_eslah_forosh_add_jens.DBT_m_check.Caption='') then
             check:='0'
         else
          check:=frm_eslah_forosh_add_jens.DBT_m_check.Caption;

    if (frm_eslah_forosh_add_jens.DBT_mab_gabl.Caption='') or(frm_eslah_forosh_add_jens.DBT_mab_gabl.Caption='0')then
      nagd:='0'
    else
      nagd:=frm_eslah_forosh_add_jens.DBT_mab_gabl.Caption;

      kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd));
      


      /////////////////////////////////////////////////////////////
      if(StrToFloat(kol_pardakht)<=StrToFloat(kol_gabl))then //1
      begin
       bedeh_eslah:=StrToFloat(g_kol)-StrToFloat(kol_gabl);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+
       FloatToStr(bedeh_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;

       DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+
       FloatToStr(bedeh_eslah)+' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+
       FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
       DataM_final.ADOQ_takhfife_forosh.ExecSQL;
      end;

      if(StrToFloat(kol_pardakht)>StrToFloat(kol_gabl))and(StrToFloat(kol_pardakht)>=StrToFloat(g_kol))then//2
      begin
       talab_eslah:=StrToFloat(g_kol)-StrToFloat(kol_gabl);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab-'+
       FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
      end;

      if(StrToFloat(kol_pardakht)>StrToFloat(kol_gabl))and(StrToFloat(kol_pardakht)<StrToFloat(g_kol))then//3
      begin
       talab_eslah:=StrToFloat(kol_pardakht)-StrToFloat(kol_gabl);

       bedeh_eslah:=StrToFloat(g_kol)-StrToFloat(kol_pardakht);

       DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+
       FloatToStr(bedeh_eslah)+',talab=talab-'+
       FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;

       DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+
       FloatToStr(bedeh_eslah)+' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+
       FloatToStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsFloat+1);
       DataM_final.ADOQ_takhfife_forosh.ExecSQL;
      end;


end;


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_viewanbar.update_bedeh_talab_va_bedehi_kol_kharidar;
begin

  DataModule2.adotasfie.SQL.Text:='update bedeh_bestan set bedeh='+frm_eslah_forosh_add_jens.L_bedehkae.Caption+
  ',talab='+frm_eslah_forosh_add_jens.L_bestankar.Caption+
  '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+
  ' and sh_khaid='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+
  ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString);

  DataModule2.adotasfie.ExecSQL;

end;

/////////////////////////////////////////////////////
procedure Tfrm_viewanbar.add_jens_to_factor;
var stcommand_insert,update_tasfie,anbar_name:String;
   frorsh_type,p,tedad_koli_bealave_jozi,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_dar_koli,geymat_koli,geymat_kol_forosh_jens,tedad_jozi,geymat_jozi,anbar,s1,type_:string;
   cod_,temp,dd,x,y,z:real;
   i,j:integer;
   s:pchar;
begin
 if frm_viewanbar.RadioGroup_jens_type.ItemIndex=0 then
 begin

    tedad_koli:=frm_viewanbar.Edit_koli_tedadkoli.Text;
    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcala.Fields[13].AsString;

    geymat_jozi:=Dmanbarexite.ADOanbarcala.Fields[3].AsString;

    tedad_jozi:=FloatToStr(StrToFloat(tedad_koli)*StrToFloat(tedad_jozi_dar_koli));

    vahed_koli:=Dmanbarexite.ADOanbarcala.Fields[11].AsString;
    vahed_jozei:=Dmanbarexite.ADOanbarcala.Fields[14].AsString;

    if vahed_koli<>'' then
    begin
      tedad_koli_bealave_jozi:=floatToStr(StrTofloat(tedad_koli)*StrTofloat(tedad_jozi_dar_koli));
      geymat_koli:=Dmanbarexite.ADOanbarcala.Fields[15].AsString;
      geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));
      tedad_jozi:='0';
    end
    else
    begin
    end;

 end;

  if frm_viewanbar.RadioGroup_jens_type.ItemIndex=1 then
 begin
     vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

     geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

    if vahed_koli<>'' then
      tedad_koli:=FloatToStr(int(StrToFloat(frm_viewanbar.Edit_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli)))
    else
      tedad_koli:='0';

     vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;

     if vahed_koli='' then
     begin
      tedad_jozi:=frm_viewanbar.Edit_jozi_tedadjozi.Text;
      tedad_koli_bealave_jozi:=frm_viewanbar.Edit_jozi_tedadjozi.Text;
     end
     else
     begin
      tedad_jozi:=FloatToStr(StrToFloat(frm_viewanbar.Edit_jozi_tedadjozi.Text)-(StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_koli));
      tedad_koli_bealave_jozi:=frm_viewanbar.Edit_jozi_tedadjozi.Text;
     end;



     geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh.AsString;

     geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));

 end;

  if frm_viewanbar.RadioGroup_jens_type.ItemIndex=2 then
 begin
     vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

     geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

     tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

     tedad_koli:=FloatToStr(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadkoli.Text));

     tedad_koli:=FloatToStr(StrToFloat(tedad_koli)+int(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli)));



     vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;

     tedad_jozi:=FloatToStr(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadjozi.Text)-(int(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_jozi_dar_koli)));

     geymat_jozi:=Dmanbarexite.ADOanbarcala.Fields[3].AsString;

     tedad_koli_bealave_jozi:=FloatToStr((StrToFloat(tedad_koli)*StrToFloat(tedad_jozi_dar_koli))+StrToFloat(tedad_jozi));

     geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));
 end;

 { Dmlistha.adolistforosh.SQL.Text:='insert into forosh_jens(tedad_kol,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_dar_koli,geymat_koli'+
  ',shahrforoshande,jens,'+
     'geymat_vahed,tedad,geymat_jens,calacod,tarikh,sh_factor,geymate_kharid) values (:tedad_kol,:vahed_koli,:vahed_jozei,:tedad_koli,:tedad_jozi_dar_koli,:geymat_koli,'+
     ':shahrforoshande,:jens,:geymat_vahed,:tedad,:geymat_jens,:calacod,:tarikh,:sh_factor,:geymate_kharid)';

  Dmlistha.adolistforosh.Parameters.ParamByName('tedad_kol').Value:=tedad_koli_bealave_jozi;
  Dmlistha.adolistforosh.Parameters.ParamByName('vahed_koli').Value:=vahed_koli;
  Dmlistha.adolistforosh.Parameters.ParamByName('vahed_jozei').Value:=vahed_jozei;
  Dmlistha.adolistforosh.Parameters.ParamByName('tedad_koli').Value:=tedad_koli;
  Dmlistha.adolistforosh.Parameters.ParamByName('tedad_jozi_dar_koli').Value:=tedad_jozi_dar_koli;
  Dmlistha.adolistforosh.Parameters.ParamByName('geymat_koli').Value:=geymat_koli;
  Dmlistha.adolistforosh.Parameters.ParamByName('shahrforoshande').Value:=DataModule1.ADOQuery3shahrforoshande.AsString;

  Dmlistha.adolistforosh.Parameters.ParamByName('jens').Value:=Dmanbarexite.ADOanbarcala.Fields[0].AsString;
  Dmlistha.adolistforosh.Parameters.ParamByName('geymat_vahed').Value:=geymat_jozi;
  Dmlistha.adolistforosh.Parameters.ParamByName('tedad').Value:=StrTofloat(tedad_jozi);
  Dmlistha.adolistforosh.Parameters.ParamByName('calacod').Value:=trim(frm_viewanbar.DBText_cod.Caption);
  Dmlistha.adolistforosh.Parameters.ParamByName('geymat_jens').Value:=geymat_kol_forosh_jens;
  Dmlistha.adolistforosh.Parameters.ParamByName('tarikh').Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString;
  Dmlistha.adolistforosh.Parameters.ParamByName('sh_factor').Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;

  Dmlistha.adolistforosh.Parameters.ParamByName('barcod').Value:=Dmanbarexite.ADOanbarcalabarcod.AsString;
  Dmlistha.adolistforosh.Parameters.Parameters.ParamByName('geymate_kharid').Value:=Dmanbarexite.ADOanbarcalageymatkharid.AsString;
  Dmlistha.adolistforosh.Parameters.Parameters.ParamByName('code_sherkati').Value:=Dmanbarexite.ADOanbarcalacode_sherkati.AsString;

  Dmlistha.adolistforosh.ExecSQL; }


  ////////////////////////////////////////


  Dmlistha.adolistforosh.SQL.Text:='insert into forosh_jens (anbarname,tedad_kol,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_dar_koli,geymat_koli'+
  ',shahrforoshande,jens,'+
     'geymat_vahed,tedad,geymat_jens,calacod,geymate_kharid,barcod,sh_factor,tarikh,code_sherkati) values (:anbarname,:tedad_kol,:vahed_koli,:vahed_jozei,:tedad_koli,:tedad_jozi_dar_koli,:geymat_koli,'+
     ':shahrforoshande,:jens,:geymat_vahed,:tedad,:geymat_jens,:calacod,:geymate_kharid,:barcod,:sh_factor,:tarikh,:code_sherkati)';

  Dmlistha.adolistforosh.Parameters.ParamByName('anbarname').Value:=Dmanbarexite.ADOanbarcalaanbarname.AsString;
  Dmlistha.adolistforosh.Parameters.ParamByName('tedad_kol').Value:=tedad_koli_bealave_jozi;
  Dmlistha.adolistforosh.Parameters.ParamByName('vahed_koli').Value:=vahed_koli;
  Dmlistha.adolistforosh.Parameters.ParamByName('vahed_jozei').Value:=vahed_jozei;
  Dmlistha.adolistforosh.Parameters.ParamByName('tedad_koli').Value:=tedad_koli;
  Dmlistha.adolistforosh.Parameters.ParamByName('tedad_jozi_dar_koli').Value:=tedad_jozi_dar_koli;
  Dmlistha.adolistforosh.Parameters.ParamByName('geymat_koli').Value:=geymat_koli;
  Dmlistha.adolistforosh.Parameters.ParamByName('shahrforoshande').Value:=DataModule1.ADOQuery3shahrforoshande.AsString;

  Dmlistha.adolistforosh.Parameters.ParamByName('jens').Value:=Dmanbarexite.ADOanbarcala.Fields[0].AsString;
  Dmlistha.adolistforosh.Parameters.ParamByName('geymat_vahed').Value:=geymat_jozi;
  Dmlistha.adolistforosh.Parameters.ParamByName('tedad').Value:=StrTofloat(tedad_jozi);
  Dmlistha.adolistforosh.Parameters.ParamByName('calacod').Value:=Dmanbarexite.ADOanbarcalacalacod.AsString;
  Dmlistha.adolistforosh.Parameters.ParamByName('geymat_jens').Value:=geymat_kol_forosh_jens;
  Dmlistha.adolistforosh.Parameters.ParamByName('barcod').Value:=Dmanbarexite.ADOanbarcalabarcod.AsString;
  Dmlistha.adolistforosh.Parameters.ParamByName('geymate_kharid').Value:=Dmanbarexite.ADOanbarcalageymatkharid.AsString;

   Dmlistha.adolistforosh.Parameters.ParamByName('sh_factor').Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
   Dmlistha.adolistforosh.Parameters.ParamByName('tarikh').Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString;
   Dmlistha.adolistforosh.Parameters.ParamByName('code_sherkati').Value:=Dmanbarexite.ADOanbarcalacode_sherkati.AsString;
  Dmlistha.adolistforosh.ExecSQL;
  
  /////////////////////////////////////// gozaresh e anbar //////////////////////

   anbar:=Dmanbarexite.ADOanbarcalaanbarname.AsString;

      s1:=' Œ—ÊÃ Ã‰” «“ „ò«‰ '+anbar+' »Â ⁄·  «÷«›Â ‰„Êœ‰ Ã‰” »Â ›«ò Ê— ›—Ê‘ œ— ÊÌ—«Ì‘ ›«ò Ê— ›—Ê‘ ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' Œ—Ìœ«— '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;
      type_:='Œ—ÊÃÌ - «÷«›Â ‘œ‰ Ã‰” »Â ›«ò Ê— ›—Ê‘ œ— ÊÌ—«Ì‘ ›«ò Ê— ›—Ê‘';



    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(Dmanbarexite.ADOanbarcalacalaname.AsString)+','+
    tedad_jozi+','+
    Dmanbarexite.ADOanbarcalacalacod.AsString+','+
    QuotedStr(vahed_koli)+','+
    QuotedStr(vahed_jozei)+','+

    tedad_koli+','+
    tedad_jozi_dar_koli+','+
    DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+','+

    tedad_koli_bealave_jozi+','+


    QuotedStr(s1)+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(Dmanbarexite.ADOanbarcalabarcod.AsString)+','+
    QuotedStr(Dmanbarexite.ADOanbarcalacode_sherkati.AsString)+','+

    QuotedStr(anbar)+','+
    QuotedStr(frm_main.LMDClock1.Digital.Caption)+','+
    QuotedStr(type_)+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;







////////////////////////////////////////   update anbar  ///////////////////////////////

       cod_:=Dmanbarexite.ADOanbarcalacalacod.AsFloat;

       anbar_name:=Dmanbarexite.ADOanbarcalaanbarname.AsString;

       p:=tedad_koli;


if (StrToFloat(tedad_koli) >0) and (StrToFloat(tedad_jozi)=0)and(StrToFloat(tedad_jozi_dar_koli)=0)then
          frorsh_type:='koli-bedon-jozei';

       if (StrToFloat(tedad_koli )>0) and (StrToFloat(tedad_jozi)=0)and(StrToFloat(tedad_jozi_dar_koli)>0)then
          frorsh_type:='koli-ba-jozei';

       if (StrToFloat(tedad_koli)=0) and (StrToFloat(tedad_jozi)>0)and(StrToFloat(tedad_jozi_dar_koli)=0)then
          frorsh_type:='jozei-bedon-jozei';

       if (StrToFloat(tedad_koli)=0) and (StrToFloat(tedad_jozi)>0)and(StrToFloat(tedad_jozi_dar_koli)>0)then
          frorsh_type:='jozei-ba-jozei';

       if (StrToFloat(tedad_koli )>0) and (StrToFloat(tedad_jozi)>0)then
          frorsh_type:='kolijozei';

      if  frorsh_type='koli-ba-jozei' then
      begin
         Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+floatToStr(cod_)+
         ' and anbarname='+QuotedStr(Dmanbarexite.ADOanbarcalaanbarname.AsString);
          Dmanbarexite.ADOanbarcala.Open;

          temp:=Dmanbarexite.ADOanbarcalatedadanbar.Value;
          dd:=StrToFloat(tedad_koli)*StrToFloat(tedad_jozi_dar_koli);
           if (temp-dd)>0 then
           begin
             for i:=1 to StrToInt(p)do
               tedad_jozi:=FloatToStr(StrToFloat(tedad_jozi)+StrToFloat(tedad_jozi_dar_koli));
           end
           else
            begin
             for i:=1 to (StrToInt(p)-1) do
               tedad_jozi:=FloatToStr(StrToFloat(tedad_jozi)+StrToFloat(tedad_jozi_dar_koli));
            end;
      end;

     if frorsh_type='jozei-ba-jozei'then
     begin
          Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+floatToStr(cod_)+
          ' and anbarname='+QuotedStr(Dmanbarexite.ADOanbarcalaanbarname.AsString);
          Dmanbarexite.ADOanbarcala.Open;
          temp:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;

          if StrToFloat(tedad_jozi)=StrToFloat(tedad_jozi_dar_koli) then
            tedad_jozi_dar_koli:=FloatToStr(StrToFloat(tedad_koli)+1);

          if StrToFloat(tedad_jozi)>StrToFloat(tedad_jozi_dar_koli)  then
          begin
              x:=int(StrToFloat(tedad_jozi)/StrToFloat(tedad_jozi_dar_koli)*StrToFloat(tedad_jozi_dar_koli));
              y:=StrToFloat(tedad_jozi)-x;
              tedad_koli:=FloatToStr((StrToFloat(tedad_koli)+int(StrToFloat(tedad_jozi)/StrToFloat(tedad_jozi_dar_koli))));
              z:=(int(temp/StrToFloat(tedad_jozi_dar_koli))-int((temp-y)/StrToFloat(tedad_jozi_dar_koli)));
              if z>0 then
                tedad_koli:=FloatToStr(StrToFloat(tedad_koli)+z);
          end;

          if StrToFloat(tedad_jozi)<StrToFloat(tedad_jozi_dar_koli) then
          begin
             if int((temp-StrToFloat(tedad_jozi))/StrToFloat(tedad_jozi_dar_koli)) < int(temp/StrToFloat(tedad_jozi_dar_koli))then
                tedad_koli:=FloatToStr(StrToFloat(tedad_koli)+1);
          end;
   end;

     if frorsh_type='kolijozei'then
     begin
          Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+floatToStr(cod_)+
          ' and anbarname='+QuotedStr(Dmanbarexite.ADOanbarcalaanbarname.AsString);
          Dmanbarexite.ADOanbarcala.Open;


          temp:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat;

          if StrToFloat(tedad_jozi) > StrToFloat(tedad_jozi_dar_koli) then
          begin
              x:=int(StrToFloat(tedad_jozi)/StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_jozi_dar_koli);
              y:=StrToFloat(tedad_jozi)-x;

              tedad_koli:=FloatToStr(StrToFloat(tedad_koli)+int(StrToFloat(tedad_jozi)/StrToFloat(tedad_jozi_dar_koli)));
              z:=(int(temp/StrToFloat(tedad_jozi_dar_koli))-int((temp-y)/StrToFloat(tedad_jozi_dar_koli)));
              if z>0 then
                tedad_koli:=FloatToStr(StrToFloat(tedad_koli)+z);
          end;

          if StrToFloat(tedad_jozi)<StrToFloat(tedad_jozi_dar_koli) then
          begin
             if int((temp-StrToFloat(tedad_jozi))/StrToFloat(tedad_jozi_dar_koli)) < int(temp/StrToFloat(tedad_jozi_dar_koli))then
                tedad_koli:=FloatToStr(StrToFloat(tedad_koli)+1);
          end;

         for i:=1 to StrToint(p) do

               tedad_jozi:=FloatToStr(StrToFloat(tedad_jozi)+StrToFloat(tedad_jozi_dar_koli));
     end;

       Dmanbarexite.ADOanbarcala.SQL.Text:='update Tanbar_jens_kolli set tedad_koli=tedad_koli-'+tedad_koli+' ,tedadanbar=tedadanbar-'+
       tedad_jozi+' where calacod='+floatToStr(cod_)+
       ' and anbarname='+QuotedStr(Dmanbarexite.ADOanbarcalaanbarname.AsString);
       Dmanbarexite.ADOanbarcala.ExecSQL;
////////////////////////////////////////   update anbar  ///////////////////////////////
end;
///////////////////////////////////////////////////////
function Tfrm_viewanbar.alamat_ashar(s:string):boolean;
var i,j:integer;
begin
   j:=0;
   alamat_ashar:=true;
   for i:=1 to StrLen(PChar(s)) do
     begin
        if s[i]='.' then
          j:=j+1;
     end;
   if j>1 then
     begin
       MessageBox(Handle,'⁄·«„  ‰ﬁÿÂ «⁄‘«—Ì ›ﬁÿ Ìò »«— »«Ìœ Ê«—œ ‘Êœ.',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
       alamat_ashar:=false;
     end;
end;
function Tfrm_viewanbar.check_param:boolean;
var i,j:integer;
    s:string;
    val,val2:real;     
begin
   check_param:=true;
   if (Dmanbarexite.ADOanbarnamename.AsString ='') or (DBText_cod.Caption='') then
   begin
         MessageBox(Handle,'‰«„ „ò«‰  Ê Ã‰” —« «‰ Œ«» ‰„«ÌÌœ ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
         check_param:=false;
   end
else
begin
   if RadioGroup_jens_type.ItemIndex=0 then
   begin
     if trim(Edit_koli_tedadkoli.Text)='' then
      val:=0
     else
      val:=StrToFloat(trim(Edit_koli_tedadkoli.Text));

     if val=0 then
      begin
         check_param:=false;
         MessageBox(Handle,' ⁄œ«œ Ã‰” ò·Ì —« Ê«—œ ‰„«ÌÌœ .',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
         exit;
      end;
   end;


   if RadioGroup_jens_type.ItemIndex=1 then
   begin
     if trim(Edit_jozi_tedadjozi.Text)='' then
      val:=0
     else
      val:=StrToFloat(trim(Edit_jozi_tedadjozi.Text));

      if val=0 then
      begin
         check_param:=false;
         MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì —« Ê«—œ ‰„«ÌÌœ .',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
         exit;
      end;


      if Dmanbarexite.ADOanbarcalavahed_koli.AsString<>'' then
      begin
        s:=Edit_jozi_tedadjozi.Text;
        for i:=1 to StrLen(PChar(s)) do
        begin
          if s[i]='.' then
            j:=j+1;
        end;
        if j>=1 then
        begin
          check_param:=false;
          MessageBox(Handle,'çÊ‰ Ã‰” œ«—Ì Ê«Õœ ò·Ì „Ì »«‘œ Ê«—œ ‰„Êœ‰ ⁄œœ «⁄‘«—Ì »—«Ì  ⁄œ«œ Ã“∆Ì Ã‰” „Ã«“ ‰„Ì »«‘œ.',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
          exit;
        end;
      end;
   end;

   if RadioGroup_jens_type.ItemIndex=2 then
   begin
     if trim(Edit_ko_jozi_tedadkoli.Text)='' then
      val:=0
     else
      val:=StrToFloat(trim(Edit_ko_jozi_tedadkoli.Text));

     if trim(Edit_ko_jozi_tedadjozi.Text)='' then
      val2:=0
     else
      val2:=StrToFloat(trim(Edit_ko_jozi_tedadjozi.Text));


      if (val=0) or(val2=0) then
      begin
         check_param:=false;
         MessageBox(Handle,' ⁄œ«œ Ã‰” ò·Ì Ê  ⁄œ«œ Ã‰” Ã“∆Ì —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
         exit;
      end;
   end;
end;
end;

procedure Tfrm_viewanbar.forosh_type;
begin
  if RadioGroup_jens_type.ItemIndex=0 then
  begin
    GroupBox_koli.Visible:=true;
    GroupBox_jozi.Visible:=false;
    GroupBox_koli_jozi.Visible:=false;
  end;

  if RadioGroup_jens_type.ItemIndex=1 then
  begin
    GroupBox_koli.Visible:=false;
    GroupBox_jozi.Visible:=true;
    GroupBox_koli_jozi.Visible:=false;
  end;

  if RadioGroup_jens_type.ItemIndex=2 then
  begin
    GroupBox_koli.Visible:=false;
    GroupBox_jozi.Visible:=false;
    GroupBox_koli_jozi.Visible:=true;
  end;
end;
function Tfrm_viewanbar.check_tedad:boolean;
var num :real;
begin
  check_tedad:=true;

  if RadioGroup_jens_type.ItemIndex=0 then
  begin
    if Dmanbarexite.ADOanbarcala.Fields[10].AsFloat<=0 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ ò·Ì Ã‰” «‰ Œ«» ‘œÂ œ— «‰»«— ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_koli_tedadkoli.Text:='';
     end
     else
     begin
         num:=Dmanbarexite.ADOanbarcala.Fields[10].AsFloat-StrTofloat(Edit_koli_tedadkoli.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,pchar(' ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ »Ì‘ — «“ „ﬁœ«— ò·Ì „ÊÃÊœ = '+Dmanbarexite.ADOanbarcala.Fields[10].AsString+' œ— „ò«‰ «‰ Œ«»Ì  „Ì»«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_koli_tedadkoli.Text:='';
           end;
     end;
  end;

  if RadioGroup_jens_type.ItemIndex=1 then
  begin
  if alamat_ashar(Edit_jozi_tedadjozi.Text) then
  begin
     if Dmanbarexite.ADOanbarcala.Fields[1].AsFloat<=0 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_jozi_tedadjozi.Text:='';
     end
     else
     begin

          num:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat-StrTofloat(Edit_jozi_tedadjozi.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,pchar('  ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ Ã‰” »Â ’Ê—  Ã“∆Ì »Ì‘ — «“ „ﬁœ«— Ã“∆Ì „ÊÃÊœ œ— „ò«‰ «‰ Œ«»Ì = '+Dmanbarexite.ADOanbarcala.Fields[1].AsString+' „Ì »«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_jozi_tedadjozi.Text:='';
           end;

      end;
  end
  else
    begin
       check_tedad:=false;
       Edit_jozi_tedadjozi.Text:='';
    end;
  end;

  if RadioGroup_jens_type.ItemIndex=2 then
  begin
  if alamat_ashar(Edit_ko_jozi_tedadjozi.Text) then
  begin
    if Dmanbarexite.ADOanbarcala.Fields[1].AsFloat<=0 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì  ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_ko_jozi_tedadjozi.Text:='';
     end
     else
     begin
         num:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat-StrToFloat(Edit_ko_jozi_tedadjozi.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,pchar('  ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ Ã‰” »Â ’Ê—  Ã“∆Ì »Ì‘ — «“ „ﬁœ«— Ã“∆Ì „ÊÃÊœ œ— „ò«‰ «‰ Œ«»Ì = '+Dmanbarexite.ADOanbarcala.Fields[1].AsString+' „Ì »«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_ko_jozi_tedadjozi.Text:='';
           end;
     end;
   end
     else
     begin
       Edit_ko_jozi_tedadjozi.Text:='';
       check_tedad:=false;
     end;

    if Dmanbarexite.ADOanbarcala.Fields[10].AsFloat<=0 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ ò·Ì Ã‰” «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì  ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_ko_jozi_tedadkoli.Text:='';
     end
     else
     begin
         num:=Dmanbarexite.ADOanbarcala.Fields[10].AsFloat-StrTofloat(Edit_ko_jozi_tedadkoli.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,pchar(' ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ »Ì‘ — «“ „ﬁœ«— ò·Ì „ÊÃÊœ = '+Dmanbarexite.ADOanbarcala.Fields[10].AsString+' œ— „ò«‰ «‰ Œ«»Ì  „Ì»«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_ko_jozi_tedadkoli.Text:='';
           end;
     end;

     if Edit_ko_jozi_tedadkoli.Text='' then
        Edit_ko_jozi_tedadkoli.Text:='0';

     if Edit_ko_jozi_tedadjozi.Text='' then
        Edit_ko_jozi_tedadjozi.Text:='0';

    if (StrTofloat(Edit_ko_jozi_tedadkoli.Text)*Dmanbarexite.ADOanbarcala.Fields[13].Asfloat+ StrTofloat(Edit_ko_jozi_tedadjozi.Text) > Dmanbarexite.ADOanbarcala.Fields[1].AsFloat) then
      begin
            MessageBox(Handle,pchar('  ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ Ã‰” »Â ’Ê—  Ã“∆Ì  Ê ò·Ì »Ì‘ — «“ „ﬁœ«— Ã“∆Ì „ÊÃÊœ œ— „ò«‰ «‰ Œ«»Ì = '+Dmanbarexite.ADOanbarcala.Fields[1].AsString+' „Ì »«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_ko_jozi_tedadjozi.Text:='' ;
            Edit_ko_jozi_tedadkoli.Text:='';
      end;
  end;


  end;
procedure Tfrm_viewanbar.insert_pish_forosh;
var stcommand_insert,update_tasfie,barcod:String;
   tedad_koli_bealave_jozi,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_dar_koli,geymat_koli,geymat_kol_forosh_jens,tedad_jozi,geymat_jozi:string;
   s:pchar;
begin
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp where calacod='+Dmanbarexite.ADOanbarcalacalacod.AsString+
   ' and anbarname='+QuotedStr(Dmanbarexite.ADOanbarcalaanbarname.AsString);

   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open;

if DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount>0 then
begin
 { s:=pchar('Ã‰” << '+ DBText_jens.Caption+' >> «‰ Œ«» ‘œÂ «”  ° œ—’Ê—  ‰Ì«“ »—«Ì «’·«Õ ›—Ê‘ ° Ã‰” —« «“ ·Ì”  ›—Ê‘ „ﬁœ„« Ì Õ–› ‰„ÊœÂ ÊœÊ»«—Â ¬‰ —« «‰ Œ«» ‰„«ÌÌœ .');
  MessageBox(Handle,s,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );}


 if frm_viewanbar.RadioGroup_jens_type.ItemIndex=0 then
 begin

    tedad_koli:=frm_viewanbar.Edit_koli_tedadkoli.Text;
    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcala.Fields[13].AsString;

    geymat_jozi:=Dmanbarexite.ADOanbarcala.Fields[3].AsString;

    tedad_jozi:=FloatToStr(StrToFloat(tedad_koli)*StrToFloat(tedad_jozi_dar_koli));

    vahed_koli:=Dmanbarexite.ADOanbarcala.Fields[11].AsString;
    vahed_jozei:=Dmanbarexite.ADOanbarcala.Fields[14].AsString;

    if vahed_koli<>'' then
    begin
      tedad_koli_bealave_jozi:=floatToStr(StrTofloat(tedad_koli)*StrTofloat(tedad_jozi_dar_koli));
      geymat_koli:=Dmanbarexite.ADOanbarcala.Fields[15].AsString;
      geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));
      tedad_jozi:='0';
    end
    else
    begin
    end;

 end;

  if frm_viewanbar.RadioGroup_jens_type.ItemIndex=1 then
 begin
     vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

     geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

    if vahed_koli<>'' then
      tedad_koli:=FloatToStr(int(StrToFloat(frm_viewanbar.Edit_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli)))
    else
      tedad_koli:='0';

     vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;

     if vahed_koli='' then
     begin
      tedad_jozi:=frm_viewanbar.Edit_jozi_tedadjozi.Text;
      tedad_koli_bealave_jozi:=frm_viewanbar.Edit_jozi_tedadjozi.Text;
     end
     else
     begin
      tedad_jozi:=FloatToStr(StrToFloat(frm_viewanbar.Edit_jozi_tedadjozi.Text)-(StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_koli));
      tedad_koli_bealave_jozi:=frm_viewanbar.Edit_jozi_tedadjozi.Text;
     end;



     geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh.AsString;

     geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));

 end;

  if frm_viewanbar.RadioGroup_jens_type.ItemIndex=2 then
 begin
     vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

     geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

     tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

     tedad_koli:=FloatToStr(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadkoli.Text));

     tedad_koli:=FloatToStr(StrToFloat(tedad_koli)+int(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli)));



     vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;

     tedad_jozi:=FloatToStr(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadjozi.Text)-(int(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_jozi_dar_koli)));

     geymat_jozi:=Dmanbarexite.ADOanbarcala.Fields[3].AsString;

     tedad_koli_bealave_jozi:=FloatToStr((StrToFloat(tedad_koli)*StrToFloat(tedad_jozi_dar_koli))+StrToFloat(tedad_jozi));

     geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));
 end;




  if ((DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_kol.AsFloat+StrToFloat(tedad_koli_bealave_jozi))>Dmanbarexite.ADOanbarcalatedadanbar.AsFloat)then
             MessageBox(Handle,pchar(' „Ã„Ê⁄  ⁄œ«œ Ã‰” »—«Ì ›—Ê‘ »«Ìœ ò„ — «“ <<'+Dmanbarexite.ADOanbarcalatedadanbar.Asstring+'>> »«‘œ'),' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT )
  else
  begin
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



    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='update forosh_temp set '+

    ' tedad_koli='+tedad_koli+


    ',tedad='+tedad_jozi+


    ',tedad_kol=tedad_kol+'+tedad_koli_bealave_jozi+


    ',geymat_jens='+FloatToStr((DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_kol.AsFloat+StrToFloat(tedad_koli_bealave_jozi))*Dmanbarexite.ADOanbarcalageymatforosh.AsFloat)+

    ' where calacod='+Dmanbarexite.ADOanbarcalacalacod.AsString+
    ' and anbarname='+QuotedStr(Dmanbarexite.ADOanbarcalaanbarname.AsString);

    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;
  end;

end
else
begin
 if frm_viewanbar.RadioGroup_jens_type.ItemIndex=0 then
 begin

    tedad_koli:=frm_viewanbar.Edit_koli_tedadkoli.Text;
    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcala.Fields[13].AsString;

    geymat_jozi:=Dmanbarexite.ADOanbarcala.Fields[3].AsString;

    tedad_jozi:=FloatToStr(StrToFloat(tedad_koli)*StrToFloat(tedad_jozi_dar_koli));

    vahed_koli:=Dmanbarexite.ADOanbarcala.Fields[11].AsString;
    vahed_jozei:=Dmanbarexite.ADOanbarcala.Fields[14].AsString;

    if vahed_koli<>'' then
    begin
      tedad_koli_bealave_jozi:=floatToStr(StrTofloat(tedad_koli)*StrTofloat(tedad_jozi_dar_koli));
      geymat_koli:=Dmanbarexite.ADOanbarcala.Fields[15].AsString;
      geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));
      tedad_jozi:='0';
    end
    else
    begin
    end;

 end;

  if frm_viewanbar.RadioGroup_jens_type.ItemIndex=1 then
 begin
     vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

     geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

    if vahed_koli<>'' then
      tedad_koli:=FloatToStr(int(StrToFloat(frm_viewanbar.Edit_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli)))
    else
      tedad_koli:='0';

     vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;

     if vahed_koli='' then
     begin
      tedad_jozi:=frm_viewanbar.Edit_jozi_tedadjozi.Text;
      tedad_koli_bealave_jozi:=frm_viewanbar.Edit_jozi_tedadjozi.Text;
     end
     else
     begin
      tedad_jozi:=FloatToStr(StrToFloat(frm_viewanbar.Edit_jozi_tedadjozi.Text)-(StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_koli));
      tedad_koli_bealave_jozi:=frm_viewanbar.Edit_jozi_tedadjozi.Text;
     end;



     geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh.AsString;

     geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));

 end;

  if frm_viewanbar.RadioGroup_jens_type.ItemIndex=2 then
 begin
     vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

     geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

     tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

     tedad_koli:=FloatToStr(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadkoli.Text));

     tedad_koli:=FloatToStr(StrToFloat(tedad_koli)+int(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli)));



     vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;

     tedad_jozi:=FloatToStr(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadjozi.Text)-(int(StrToFloat(frm_viewanbar.Edit_ko_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_jozi_dar_koli)));

     geymat_jozi:=Dmanbarexite.ADOanbarcala.Fields[3].AsString;

     tedad_koli_bealave_jozi:=FloatToStr((StrToFloat(tedad_koli)*StrToFloat(tedad_jozi_dar_koli))+StrToFloat(tedad_jozi));

     geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));
 end;

  stcommand_insert:='';
  /////////
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='insert into forosh_temp (anbarname,tedad_kol,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_dar_koli,geymat_koli'+
  ',shahrforoshande,jens,'+
     'geymat_vahed,tedad,geymat_jens,calacod,geymate_kharid,barcod,sh_factor,tarikh,code_sherkati) values (:anbarname,:tedad_kol,:vahed_koli,:vahed_jozei,:tedad_koli,:tedad_jozi_dar_koli,:geymat_koli,'+
     ':shahrforoshande,:jens,:geymat_vahed,:tedad,:geymat_jens,:calacod,:geymate_kharid,:barcod,:sh_factor,:tarikh,:code_sherkati)';

  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('anbarname').Value:=Dmanbarexite.ADOanbarcalaanbarname.AsString;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tedad_kol').Value:=tedad_koli_bealave_jozi;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('vahed_koli').Value:=vahed_koli;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('vahed_jozei').Value:=vahed_jozei;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tedad_koli').Value:=tedad_koli;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tedad_jozi_dar_koli').Value:=tedad_jozi_dar_koli;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('geymat_koli').Value:=geymat_koli;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('shahrforoshande').Value:=DataModule1.ADOQuery3shahrforoshande.AsString;

  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('jens').Value:=Dmanbarexite.ADOanbarcala.Fields[0].AsString;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('geymat_vahed').Value:=geymat_jozi;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tedad').Value:=StrTofloat(tedad_jozi);
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('calacod').Value:=trim(frm_viewanbar.DBText_cod.Caption);
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('geymat_jens').Value:=geymat_kol_forosh_jens;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('barcod').Value:=Dmanbarexite.ADOanbarcalabarcod.AsString;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('geymate_kharid').Value:=Dmanbarexite.ADOanbarcalageymatkharid.AsString;

   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('sh_factor').Value:=frm_forosh_property.sh_fctor;
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tarikh').Value:=frm_forosh_property.tarikh;
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('code_sherkati').Value:=Dmanbarexite.ADOanbarcalacode_sherkati.AsString;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;
end;
end;
/////////////////
{*****************************************8888}
function Tfrm_viewanbar.geymat_kol:real;
var num:integer;
begin
  geymat_kol:=0;
  geymat_kol:=(StrToFloat('1')*StrToFloat(Dmanbarexite.ADOanbarcala.Fields[4].AsString));
end;
procedure Tfrm_viewanbar.showanbar;
begin

  Dmanbarexite.ADOanbarname.SQL.Text:='select * from tanbar_names where name<>'+QuotedStr('«‰»«— „Ã«“Ì')+
  ' order by name';
  Dmanbarexite.ADOanbarname.Open;
end;
procedure Tfrm_viewanbar.showanbarkol;
begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+'order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
end;
//////////////
procedure Tfrm_viewanbar.clear;
begin
    Edit_jozi_tedadjozi.Text:='';
    Edit_koli_tedadkoli.Text:='';
    Edit_ko_jozi_tedadkoli.Text:='';
    Edit_ko_jozi_tedadjozi.Text:='';
    esearch.Text:='';
    E_barcod.Text:='';
end;


procedure Tfrm_viewanbar.suibtaeedClick(Sender: TObject);
var num:integer;

begin
 if check_param then
 begin
   if check_tedad then
   begin
        if L_type.Caption='forosh' then
        begin
         insert_pish_forosh;
         //frm_forosh_property.updatetedadjensforoshi_ghabl_az_taeed;
          Frm_pish_forosh.show_pish_forosh;
          Frm_pish_forosh.mohasebe_geymat_kol;
          //showanbarkol;
          clear;
          E_barcod.SetFocus;
        end;
        if L_type.Caption='eslah' then
        begin

          execute_eslahe_forosh_ezafe_kardane_jens;
          
          {frm_main.l_last_op.Caption:=' «÷«›Â ‰„Êœ‰ Ã‰” »Â ›«ò Ê—'+' ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;

          frm_main.sabte_amaliat(' «÷«›Â ‰„Êœ‰ Ã‰” '+DBText_jens.Caption+' »Â ›«ò Ê— '+' ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+' ‘Œ’ '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
          add_jens_to_factor;
          frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;
          sleep(1000);
          /////////////////////////////
          frm_eslah_forosh_add_jens.bedeh_talab_after_eslah;
          update_bedeh_talab_va_bedehi_kol_kharidar;
          update_bedehi_kharidar_pas_az_bedekar_shodan; }
          /////////////////////////////

          E_barcod.SetFocus;
          clear;
          Close;
        end;
   end;
 end;
end;

procedure Tfrm_viewanbar.suiButton1Click(Sender: TObject);
begin
   frm_viewanbar.showanbarkol;
end;

procedure Tfrm_viewanbar.esearch11Change(Sender: TObject);
begin
    Dmanbarexite.ADOanbarcala.Locate('calaname',esearch11.Text,[loPartialKey]);

end;

procedure Tfrm_viewanbar.suiBenserafClick(Sender: TObject);
begin
    frm_forosh_property.Lkolgeymat.Caption:='';
    clear;
    close;
end;



procedure Tfrm_viewanbar.FormShow(Sender: TObject);
begin
  Frm_pish_forosh.check_mojodi_sefr;
  clear;
  showanbar;
  Dmanbarexite.ADOanbarname.First;
  showanbarkol;
  E_barcod.SetFocus;

  {Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
  QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+'order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;}

  RadioGroup_jens_type.ItemIndex:=1;
  forosh_type;
  frm_viewanbar.WindowState:=wsMaximized;
  E_barcod.Text:='';
  E_barcod.SetFocus;
end;



procedure Tfrm_viewanbar.dbanbarClick(Sender: TObject);
begin
 showanbarkol;
end;

procedure Tfrm_viewanbar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  {if L_type.Caption='eslah' then
  begin

    MessageBox(Handle,pchar('Ã‰” «‰ Œ«»Ì »Â ‘„«—Â ›«ò Ê— «÷«›Â ‘œ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
  end; }
  if L_type.Caption='forosh' then
    Frm_pish_forosh.show_pish_forosh;
end;

procedure Tfrm_viewanbar.LMDSpeedButton11Click(Sender: TObject);
begin
 clear;
 close;
end;

procedure Tfrm_viewanbar.RadioGroup_jens_typeClick(Sender: TObject);
begin
  forosh_type;
end;



procedure Tfrm_viewanbar.Edit_jozi_tedadjoziKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod.Clear;
    E_barcod.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
  
   if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_viewanbar.Edit_koli_tedadkoliKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod.Clear;
    E_barcod.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
  
   if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_viewanbar.Edit_ko_jozi_tedadkoliKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod.Clear;
    E_barcod.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
  
   if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_viewanbar.Edit_ko_jozi_tedadjoziKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod.Clear;
    E_barcod.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
  
   if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;



procedure Tfrm_viewanbar.E_barcodChange(Sender: TObject);
begin
   // Dmanbarexite.ADOanbarcala.Locate('barcod',E_barcod.Text,[loPartialKey]);


  if trim(E_barcod.Text)<>'' then
  begin
    Dmanbarexite.ADOanbarcala.Locate('barcod',trim(E_barcod.Text),[loPartialKey]);

    if Dmanbarexite.ADOanbarcalabarcod.AsString=trim(E_barcod.Text) then
    begin
      if check_tedad_barcod then
      begin
        if insert_pish_forosh_sari then
        begin
          Frm_pish_forosh.show_pish_forosh;
          Frm_pish_forosh.mohasebe_geymat_kol;
          //bede_talab_temp_check_forosh;

          E_barcod.SetFocus;
          l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
          l_barcod_khan.Font.Color:=clGreen;
          E_barcod.Clear;
        end;
      end;
    end;
  end;

end;

procedure Tfrm_viewanbar.Button2Click(Sender: TObject);
begin

  frm_show_tozihate_geymat.DBMemo_virayesh.Visible:=false;
  frm_show_tozihate_geymat.DBMemo_tozihate_forosh_forosh.Visible:=false;
  frm_show_tozihate_geymat.DBMemo_tozihate_forosh_virayesh.Visible:=false;
  frm_show_tozihate_geymat.ShowModal;
end;

procedure Tfrm_viewanbar.Button12123Click(Sender: TObject);
begin

  frm_show_tozihate_geymat.DBMemo_virayesh.Visible:=false;
  frm_show_tozihate_geymat.DBMemo_tozihate_forosh_forosh.Visible:=true;
  frm_show_tozihate_geymat.DBMemo_tozihate_forosh_virayesh.Visible:=false;
  frm_show_tozihate_geymat.ShowModal;
end;

procedure Tfrm_viewanbar.esearchChange(Sender: TObject);
begin
  Dmanbarexite.ADOanbarcala.Locate('code_sherkati',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_viewanbar.Edit_jozi_tedadjoziChange(Sender: TObject);
begin
  if not alamat_ashar(Edit_jozi_tedadjozi.Text)then
  begin
    Edit_jozi_tedadjozi.Clear;
    Edit_jozi_tedadjozi.SetFocus;
  end;
end;

procedure Tfrm_viewanbar.Timer1Timer(Sender: TObject);
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

procedure Tfrm_viewanbar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod.Clear;
    E_barcod.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_viewanbar.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod.Clear;
    E_barcod.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_viewanbar.suiDBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod.Clear;
    E_barcod.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_viewanbar.esearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod.Clear;
    E_barcod.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_viewanbar.esearch11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod.Clear;
    E_barcod.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_viewanbar.E_barcodKeyPress(Sender: TObject; var Key: Char);
begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
end;

procedure Tfrm_viewanbar.Button2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod.Clear;
    E_barcod.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_viewanbar.Button12123KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod.Clear;
    E_barcod.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_viewanbar.E_barcodEnter(Sender: TObject);
begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod.Clear;
    L_barcod.Caption:='yes';
end;

procedure Tfrm_viewanbar.E_barcodExit(Sender: TObject);
begin
  l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
  l_barcod_khan.Font.Color:=clMaroon;
  E_barcod.Clear;
    L_barcod.Caption:='no';  
end;

procedure Tfrm_viewanbar.suibtaeedKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=' ' then
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· «” ';
    l_barcod_khan.Font.Color:=clGreen;
    E_barcod.Clear;
    E_barcod.SetFocus;
  end
  else
  begin
    l_barcod_khan.Caption:='»«— òœ ŒÊ«‰ ›⁄«· ‰Ì” ';
    l_barcod_khan.Font.Color:=clMaroon;
  end;
end;

procedure Tfrm_viewanbar.Edit_koli_tedadkoliChange(Sender: TObject);
begin
  if not alamat_ashar(Edit_koli_tedadkoli.Text)then
  begin
    Edit_koli_tedadkoli.Clear;
    Edit_koli_tedadkoli.SetFocus;
  end;
end;

procedure Tfrm_viewanbar.Edit_ko_jozi_tedadkoliChange(Sender: TObject);
begin
  if not alamat_ashar(Edit_ko_jozi_tedadkoli.Text)then
  begin
    Edit_ko_jozi_tedadkoli.Clear;
    Edit_ko_jozi_tedadkoli.SetFocus;
  end;
end;

procedure Tfrm_viewanbar.Edit_ko_jozi_tedadjoziChange(Sender: TObject);
begin
  if not alamat_ashar(Edit_ko_jozi_tedadjozi.Text)then
  begin
    Edit_ko_jozi_tedadjozi.Clear;
    Edit_ko_jozi_tedadjozi.SetFocus;
  end;
end;

end.

