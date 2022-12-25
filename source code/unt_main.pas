unit unt_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Menus, ExtCtrls, SUIForm,StdCtrls,dxCore, dxWinXPBar, dxContainer,
  dxButtons, SUIMgr, ImgList, SUIMainMenu, SUITabControl, SUIPageControl,
  ComCtrls, ToolWin, SUIToolBar, SUIStatusBar, SUIPopupMenu, jpeg, Buttons,
  ExtDlgs, DB, ADODB, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDGraphicControl, LMDClock, te_controls, te_db_controls,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton,
  SUISideChannel, DBCtrls, Grids, DBGrids, SUIDBCtrls,shellapi,
  LMDCustomComponent, LMDGlobalHotKey, te_dialogs, LMDScrollText;

type
  Tfrm_main = class(TForm)
    suiForm1: TsuiForm;
    cntWinXPBar: TdxContainer;
    suiToolBar1: TsuiToolBar;
    ToolButton12: TToolButton;
    ImageList1: TImageList;
    suiStatusBar1: TsuiStatusBar;
    OpenPictureDialog1: TOpenPictureDialog;
    ToolButton1: TToolButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1picname: TWideStringField;
    PopupMenu1: TPopupMenu;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Image2: TImage;
    ToolButton2: TToolButton;
    dxContainer6: TdxContainer;
    ScrollBox1: TScrollBox;
    dxjadid: TdxContainer;
    dxbarjadid: TdxWinXPBar;
    dxContainer1: TdxContainer;
    dxWinXbaaranbar: TdxWinXPBar;
    dxContainer5: TdxContainer;
    dxWinXPBareslahe_mali: TdxWinXPBar;
    dxContainer10: TdxContainer;
    dxWinXp_slahe_gheire: TdxWinXPBar;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    l_last_op: TLabel;
    Timer_back: TTimer;
    ADOQ_amaliat: TADOQuery;
    ADOQ_amaliattime_: TWideStringField;
    ADOQ_amaliattarikh: TWideStringField;
    ADOQ_amaliatamaliat: TMemoField;
    ADOQ_amaliatid: TBCDField;
    LMDGlobalHotKey1: TLMDGlobalHotKey;
    L_roze_hafte: TLabel;
    L_tarikh: TLabel;
    ToolButton3: TToolButton;
    LMDClock1: TLMDClock;
    PrinterSetupDialog1: TPrinterSetupDialog;
    ADOQ_backup: TADOQuery;
    ADOQ_backuppath: TWideStringField;
    ADOQ_backupid: TAutoIncField;
    ADOStoredProc_make_backup_device: TADOStoredProc;
    TeDirectoryDialog1: TTeDirectoryDialog;
    ADOQ_backupmake: TWideStringField;
    ADOStoredProc_make_a_backup: TADOStoredProc;
    ADOQ_backupbackup_media_name: TWideStringField;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    dxContainer9: TdxContainer;
    dxWinXPBar_gozaresh_koli: TdxWinXPBar;
    LMDGlobalHotKey2: TLMDGlobalHotKey;
    LMDGlobalHotKey3: TLMDGlobalHotKey;
    LMDGlobalHotKey4: TLMDGlobalHotKey;
    dxContainer11: TdxContainer;
    dxWinXP_gheire: TdxWinXPBar;
    L_karbar: TLabel;
    ToolButton6: TToolButton;
    suiSide_check_kharidar: TsuiSideChannel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    LMDSpeedButton1: TLMDSpeedButton;
    GroupBox2: TGroupBox;
    DBText3: TDBText;
    GroupBox3: TGroupBox;
    LMDSpeedButton2: TLMDSpeedButton;
    LMDSpeedButton3: TLMDSpeedButton;
    suiDBGrid1: TsuiDBGrid;
    suiSide_check_shoma: TsuiSideChannel;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    LMDSpeedButton4: TLMDSpeedButton;
    GroupBox6: TGroupBox;
    DBText4: TDBText;
    GroupBox7: TGroupBox;
    LMDSpeedButton5: TLMDSpeedButton;
    LMDSpeedButton6: TLMDSpeedButton;
    suiDBGrid2: TsuiDBGrid;
    ScrollBox2: TScrollBox;
    cntWinXPBarPanel1: TdxContainer;
    dxWinXbarkharid: TdxWinXPBar;
    dxContainer2: TdxContainer;
    dxWinXbarforosh: TdxWinXPBar;
    dxContainer3: TdxContainer;
    dxWinb_naghdi: TdxWinXPBar;
    dxContainer7: TdxContainer;
    dxWinXPBar_check: TdxWinXPBar;
    dxContainer8: TdxContainer;
    dxWinXPBar_gozaresh_mali: TdxWinXPBar;
    dxContainer12: TdxContainer;
    dxWinXPBarhazine: TdxWinXPBar;
    l_telephon_register: TLabel;
    l_adess_register1: TLabel;
    L_name_register: TLabel;
    procedure dxWinXPBar2Items2Click(Sender: TObject);
    procedure dxWinXPBar4Items1Click(Sender: TObject);
    procedure dxWinXPBar4Items2Click(Sender: TObject);
    procedure dxWinXbarforoshItems0Click(Sender: TObject);
    procedure dxWinXbaaranbarItems0Click(Sender: TObject);
    procedure dxWinXbarforoshItems3Click(Sender: TObject);
    procedure dxWinXbarforoshItems4Click(Sender: TObject);
    procedure dxWinXbargozareshItems1Click(Sender: TObject);
    procedure dxWinXbargozareshItems2Click(Sender: TObject);
    procedure dxWinXbargozareshItems0Click(Sender: TObject);
    procedure dxWinbomormaliItems2Click(Sender: TObject);
    procedure dxWinXbarkharidItems0Click(Sender: TObject);
    procedure dxWinbomormaliItems7Click(Sender: TObject);
    procedure dxWinXbargozareshItems3Click(Sender: TObject);
    procedure dxWinXbargozareshItems4Click(Sender: TObject);
    procedure dxWinXbargozareshItems5Click(Sender: TObject);
    procedure dxWinXbargozareshItems6Click(Sender: TObject);
    procedure dxWinXbaaranbarItems1Click(Sender: TObject);
    procedure dxWinXbaaranbarItems2Click(Sender: TObject);
    procedure dxWinXbaaranbarItems3Click(Sender: TObject);
    procedure dxWinXbarkharidItems4Click(Sender: TObject);
    procedure dxWinXbargozareshItems7Click(Sender: TObject);
    procedure dxWinXbargozareshItems8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure dxbarjadidItems0Click(Sender: TObject);
    procedure dxbarjadidItems1Click(Sender: TObject);
    procedure gotochackhayepasnashode;
    procedure gotochechhayepasshode;
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N120Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure dxbarjadidItems2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure dxWinbomormaliItems1Click(Sender: TObject);
    procedure dxWinbomormaliItems0Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure dxWinbomormaliItems4Click(Sender: TObject);
    procedure dxWinXbargozareshItems9Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure dxWinXbargozareshItems10Click(Sender: TObject);
    procedure dxWinXbargozareshItems11Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure dxbarjadidItems3Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure show_yaddasht_rooz;
    procedure show_yaddasht_hardo;
    procedure show_yaddasht_anjam_shode;
    procedure show_yaddasht_anjam_nashode;
    procedure show_chack_to_pas;
    procedure LMDSpeedButton5Click(Sender: TObject);
    procedure LMDSpeedButton1Click(Sender: TObject);
    procedure LMDSpeedButton6Click(Sender: TObject);
    procedure LMDSpeedButton2Click(Sender: TObject);
    procedure LMDSpeedButton4Click(Sender: TObject);
    procedure LMDSpeedButton3Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure dxbarjadidItems4Click(Sender: TObject);
    procedure show_kharidarha_topas;
    procedure show_check;
    procedure dxWinXPBar1Items0Click(Sender: TObject);
    procedure dxWinXPBar1Items1Click(Sender: TObject);
    procedure suiSide_check_kharidarPop(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure dxbarjadidItems5Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure dxbarjadidItems6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure show_calc;
    procedure dxWinXbargozareshItems12Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure dxWinXPBar1Items8Click(Sender: TObject);
    procedure dxWinXPBar1Items7Click(Sender: TObject);
    procedure dxWinXPBar1Items6Click(Sender: TObject);
    procedure dxWinXPBar1Items5Click(Sender: TObject);
    procedure dxWinXPBar1Items3Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure set_name_register;
    procedure dxbarjadidItems7Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure auto_back_up_after_close;
    procedure dxbarjadidItems8Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure dxWinbomormaliItems5Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure dxWinbomormaliItems6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure dxWinXPBar1Items2Click(Sender: TObject);
    procedure dxWinXPBar1Items4Click(Sender: TObject);
    procedure dxWinXPBar1Items10Click(Sender: TObject);
    procedure dxWinXPBar1Items11Click(Sender: TObject);
    procedure dxWinXPBar1Items9Click(Sender: TObject);
    procedure dxWinXPBar1Items12Click(Sender: TObject);
    procedure dxWinXPBar1Items13Click(Sender: TObject);
    procedure dxWinXPBar1Items14Click(Sender: TObject);
    procedure dxWinXPBar1Items15Click(Sender: TObject);
    procedure dxWinXPBar1Items16Click(Sender: TObject);

    procedure dxWinXPBar2Items0Click(Sender: TObject);
    procedure dxWinXPBar2Items1Click(Sender: TObject);
    procedure dxWinXPBar2Items3Click(Sender: TObject);
    procedure dxWinXPBar2Items4Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_maliItems0Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_maliItems1Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_maliItems2Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_maliItems3Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_maliItems4Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_koliItems0Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_koliItems1Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_koliItems2Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_koliItems3Click(Sender: TObject);
    procedure dxWinX_esahe_kharid_va_foroshItems0Click(Sender: TObject);
    procedure dxWinX_esahe_kharid_va_foroshItems1Click(Sender: TObject);
    procedure dxWinX_esahe_kharid_va_foroshItems2Click(Sender: TObject);
    procedure dxWinX_esahe_kharid_va_foroshItems3Click(Sender: TObject);
    procedure dxWinX_esahe_kharid_va_foroshItems4Click(Sender: TObject);
    procedure dxWinXp_slahe_gheireItems0Click(Sender: TObject);
    procedure dxWinXp_slahe_gheireItems1Click(Sender: TObject);
    procedure dxWinXp_slahe_gheireItems3Click(Sender: TObject);
    procedure dxWinXp_slahe_gheireItems4Click(Sender: TObject);
    procedure dxWinXp_slahe_gheireItems5Click(Sender: TObject);
    procedure dxWinXp_slahe_gheireItems6Click(Sender: TObject);
    procedure dxWinXp_slahe_gheireItems7Click(Sender: TObject);
    procedure dxWinXP_gheireItems3Click(Sender: TObject);
    procedure dxWinXP_gheireItems0Click(Sender: TObject);
    procedure dxWinXP_gheireItems1Click(Sender: TObject);
    procedure Timer_backTimer(Sender: TObject);
    procedure sabte_amaliat(s:WideString);
    procedure dxWinXPBar_checkItems5Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_maliItems5Click(Sender: TObject);
    procedure dxWinX_esahe_kharid_va_foroshItems5Click(Sender: TObject);
    procedure dxWinb_naghdiItems3Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_koliItems4Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_koliItems5Click(Sender: TObject);
    procedure dxWinXbarkharidItems1Click(Sender: TObject);
    procedure dxWinXbarkharidItems2Click(Sender: TObject);
    procedure dxWinXbarkharidItems3Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_maliItems6Click(Sender: TObject);
    procedure dxbarjadidItems9Click(Sender: TObject);
    procedure dxWinXbaaranbarItems4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure dxWinX_esahe_kharid_va_foroshItems6Click(Sender: TObject);
    procedure dxWinX_esahe_kharid_va_foroshItems7Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_koliItems6Click(Sender: TObject);
    procedure dxWinXP_gheireItems4Click(Sender: TObject);
    procedure dxWinXP_gheireItems5Click(Sender: TObject);
    procedure dxWinXP_gheireItems6Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure dxWinXP_gheireItems7Click(Sender: TObject);

    procedure backup;
    function format_for_naming_backup_file:string;
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_maliItems7Click(Sender: TObject);

    procedure dxWinb_naghdiItems4Click(Sender: TObject);
    procedure dxWinb_naghdiItems5Click(Sender: TObject);
    procedure dxWinb_naghdiItems6Click(Sender: TObject);
    procedure LMDGlobalHotKey1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LMDGlobalHotKey2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LMDGlobalHotKey3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LMDGlobalHotKey4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxWinXP_gheireItems8Click(Sender: TObject);
    procedure dxWinb_naghdiItems8Click(Sender: TObject);
    procedure dxWinb_naghdiItems7Click(Sender: TObject);
    procedure dxWinXP_gheireItems2Click(Sender: TObject);
    procedure dxWinXbarforoshItems1Click(Sender: TObject);
    procedure dxWinXbarforoshItems2Click(Sender: TObject);
    procedure dxWinX_esahe_kharid_va_foroshItems8Click(Sender: TObject);
    procedure dxbarjadidItems10Click(Sender: TObject);
    procedure dxWinXp_slahe_gheireItems9Click(Sender: TObject);
    procedure dxWinXp_slahe_gheireItems10Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure dxWinXbaaranbarItems5Click(Sender: TObject);
    procedure dxWinXPBar_checkItems0Click(Sender: TObject);
    procedure dxWinb_naghdiItems0Click(Sender: TObject);
    procedure dxWinb_naghdiItems1Click(Sender: TObject);
    procedure dxWinb_naghdiItems2Click(Sender: TObject);
    procedure dxWinXPBarhazineItems4Click(Sender: TObject);
    procedure dxWinXPBarhazineItems3Click(Sender: TObject);
    procedure dxWinXPBarhazineItems0Click(Sender: TObject);
    procedure dxWinXPBarhazineItems1Click(Sender: TObject);
    procedure dxWinXPBarhazineItems2Click(Sender: TObject);
    procedure dxWinXPBar_checkItems4Click(Sender: TObject);
    procedure dxWinXPBar_checkItems3Click(Sender: TObject);
    procedure dxWinXPBar_checkItems2Click(Sender: TObject);
    procedure dxWinXPBar_checkItems1Click(Sender: TObject);
    procedure show_chack_shoma_to_pas;
    procedure suiSide_check_shomaPop(Sender: TObject);
    procedure attach_database;
    procedure detach_database;
     function ConnectToDatabase:boolean;
    procedure FormCreate(Sender: TObject);
    procedure dxbarjadidItems11Click(Sender: TObject);
    procedure dxWinXp_slahe_gheireItems8Click(Sender: TObject);
    procedure dxWinXp_slahe_gheireItems2Click(Sender: TObject);
    procedure dxWinXp_slahe_gheireItems11Click(Sender: TObject);
    procedure dxWinXPBarhazineItems5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

uses Taghvim,unt_bedeh_bestan, unt_chek_factor, unt_chek_no_pas,
  unt_factor, unt_factor_pardakhtha, unt_forosh_property,
  unt_frm_shakhs_bedehka,unt_list_pardakht_ha,
  unt_view_forosh_list, Untaddanbar, untjens_kharid, Unt_dmanbar,
  Untfactorshakhs,
  Unt_edit_kharid_jens, Unteditgeymatjenspas,
  Untlistanbarforosh, Untjens_kharidar, Untlistkharidhayeshakhspas,
  Unt_jens_foroshandeha, Unt_foroshandegan_jens, unt_datamodule2,
  Unt_paskardancheck, Unt_jadval_bedehkarha, Unt_jadval_checkha,
  Unt_jadval_checkhaye_pasnashode, Unt_jadvalbedehi, unt_datamodule1,
  Unt_pardakht_bedehi, Unt_jadval_jensin_anbar, Unt_anbar_jadid,
  Unt_moshakhasat_anbarha, Unt_mmoshakhasat_shakhs, Unt_search,
  Unt_search_inkharid, Unt_kharid_jadid, Unt_shakhs_jadid, unt_splash,
  Unt_backup, Untdmlistha, Unt_login_change, Untserial, unt_login, Math,
  Unt_return_backup, Unt_add_to_arshiv, Unt_recovery_from_arshive,
  Unt_saljadid, unt_factor_roz, unt_pardakht_shoma, unt_gozaresh_tarkibi,
  unt_gozaresh_tarkibi_mpshtari, unt_yaddasht_jadid,
  Unt_DataModule_gozaresh_tarkibi, Unt_sefaresh_jadid, Unt_show_sefaresh,
  unt_show_yaddasht, unt_add_bank, unt_moshkhasat_bank,
  unt_daste_check_jadid, unt_check_pardakhti_shoma, Unt_prinr_tasfie,
  Unt_print_ajnas_foroshande, Unt_print_anbarkol, Unt_print_bedehi,
  Unt_print_foroshandegan_jens, unt_print_gozaresh_tarkibi,
  unt_print_gozaresh_tarkibi_kharidar, Unt_print_jens_inanbar,
  Unt_print_jens_kharidar, Unt_print_mohasebe_kharid, Unt_factor_search,
  unt_pint_factor_roz, unt_add_vahed, unt_eslah_forosh, unt_auto_backup,
  Unt_Datamarchive, unt_sandog_jadid, unt_gozaresh_az_sandog,
  unt_khoroj_az_sandog, unt_print_check_pardakhti, unt_print_pish_factor,
  unt_dabare, unt_DataM_final, unt_eslah_sal, unt_eslah_vahed,
  unt_eslah_vahed_jens_anbar, unt_eslahe_daste_checkha,
  unt_eslah_pardakhthaye_kharidar, unt_eslah_pardakhtha_be_foroshnde,
  unt_eslah_kharid, Unt_add_bank1, unt_search_bank, unt_frm_eslah_bank,
  unt_amaliate_roz, unt_print_sefaresh, unt_moshakhasat,
  unt_print_gozaresh_az_sandogh, unt_factore_kharid,
  unt_entekhabe_noe_virayesh_geymat, unt_sode_foroshe_ajnas,
  unt_daste_check_jadid2, unt_vorode_jense_motefarege, unt_jabejaei_first,
  unt_menoye_mavarede_jadid, unt_eslahe_bedehi_foroshandegan,
  unt_eslahe_bedehi_kharidaran, unt_gozaresh_az_vorodi_khoroji_anbar,
  unt_print_gozaresh_anbar, unt_print_sosde_ajnas,
  unt_print_temp_factore_forosh, unt_print_amaliat_roz,
  unt_print_moshakhasat, unt_print_yaddasht, unt_akharin_amaliate_ejra,
  unt_Dm_sp_backup, unt_eslahe_jens, unt_anbarhaye_havie_jens,
  unt_Dm_zayeat_marjoei, unt_taraze_mali, unt_onvane_hazineha,
  unt_sabte_hazine, unt_show_hazineha, unt_shoe_hazine_onvan,
  unt_rahnemaye_mianbor, unt_variz_be_sarmaye, unt_forosh_fishi, unt_sleep,
  unt_karbar, unt_sathe_dastrasi, unt_print_liste_geymat, unt_liste_geymat,
  unt_pint_factor_kol_roz, Unt_anjirestan_jadid,
  Unt_mmoshakhasat_anjirestan, unt_show_hazine_anjirestan,
  unt_anjirestan_jamavari;


  //////////  tole fildyaye nagd va check  //////////
  // max tol=15 tolr feli=9 baraye float
  // dar kharid,checke kharid,forosh,checke forosh,pardakhte kharidar,pardakht be foroshande


  //  eslehe {kharid,checke kharid,forosh,checke forosh,pardakhte kharidar,pardakht be foroshande }
  //  eslehe {bedehi va talabe kharidar,bedehi va talabe foroshande }


  //////////  tole fildyaye nagd va check  //////////

  {$R *.dfm}
 function Tfrm_main.ConnectToDatabase:boolean;
 begin



   //ADOConnection1.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;'+
   // 'Data Source=.;User ID=sa;Initial Catalog=kharid_jens;Password=montaserisoftwaredatabase;';


    ADOConnection1.Close;
    ADOConnection1.ConnectionString:='Provider=SQLOLEDB.1;Password=montaserisoftwaredatabase;Persist Security Info=True;User ID=sa;Initial Catalog=kharid_jens;'+
    'Data Source=.;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;Tag with column collation when possible=False;';
    ADOConnection1.Open;

    ADOConnection1.Connected:=True;



 end;




 

 procedure Tfrm_main.detach_database;
var
        strcommand, detachedDB: string;
begin

  detachedDB:=trim('kharid_jens');//database name
  strcommand:='EXEC sp_detach_db @dbname = '+detachedDB+'';//detaching

  with ADOConnection1 do begin//AttachConn is ADOConnection

    close;//attach on the master system database.
    //computer_name is the name of your computer
    ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog='+'master'+';Data Source=.';
    open;

  end;//with attachconn

   with ADOQuery1 do begin//qryDetach is AdoQuery
        close;
        sql.Clear;
        sql.Text:=strcommand;
        try
          ExecSQL;
          ShowMessage('Detach was Successfull');
        Except on E:Exception do begin
          Showmessage('Error Dettaching the Database');
          Application.Terminate;
        end;
        end;//try - except
   end;
   end;//detach



procedure Tfrm_main.attach_database;
var
  strcommand, dbase_Name, file1, file2: string;

begin
  //database name
  dbase_Name:='kharid_jens';

  file1:= 'D:\Programming\kharid_jens.mdf';//database file
  //GetCurrentDir()+'\100-1 Database\kharid_jens.mdf';

  //'D:\Programming\kharid_jens.mdf';//database file

  file2:='D:\Programming\kharid_jens.ldf';//log file
  //GetCurrentDir()+'\100-1 Database\kharid_jens.ldf';

  //'D:\Programming\kharid_jens.ldf';//log file

  with ADOConnection1 do begin
    close;//connect to master system database
    ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog='+'master'+';Data Source=.';
    open;
  end;//with attachconn

  //sql commands for attaching
  strcommand:='EXEC sp_attach_db @dbname = '+dbase_Name+', ';
  strcommand:=strcommand + '@filename1 = "'+File1+'"'+', ';
  strcommand:=strcommand + '@filename2 = "'+File2+'"'+'';

   with ADOQuery1 do begin
        close;
        sql.Clear;
        sql.Text:=strcommand;
        try
          //ExecSQL;
          ShowMessage('Database Successfully attached');
        Except on E:Exception do begin
          Showmessage('Error Attaching the Database');
          Application.Terminate;
        end;
        end;//try - except
   end;//with query attach

   ADOConnection1.Close;

   ADOConnection1.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;'+
    'Persist Security Info=False;Initial Catalog='+'master'+';Data Source=.;'+
    ';Initial Catalog=kharid_jens;';

    ADOConnection1.Open;

    ADOConnection1.Connected:=True;



end;







  /////////////////////////////////////////////




function Tfrm_main.format_for_naming_backup_file:string;
var tarikh,time_:string;
begin
  tarikh:=L_tarikh.Caption;
  tarikh[5]:='-';
  tarikh[8]:='-';
  //format_for_naming_backup_file:=L_roze_hafte.Caption+' '+tarikh;
  format_for_naming_backup_file:=tarikh;
end;


procedure Tfrm_main.backup;
var path,s,nn,time_:string;
begin
  time_:=frm_main.LMDClock1.Digital.Caption;

 ADOQ_backup.SQL.Text:='select * from  T_backup_path order by id desc';
 ADOQ_backup.Open;

 if ADOQ_backup.RecordCount=0 then
 begin
  if TeDirectoryDialog1.Execute then
    s:=TeDirectoryDialog1.Directory;
    if StrLen(pchar(s))>260 then
    begin
      MessageBox(Handle,pchar('ÿÊ· „”Ì— «‰ Œ«»Ì << '+s +' >> »Ì‘ — «“ 260 ò«—«ò — „Ì »«‘œ ° „”Ì— œÌê—Ì —« «‰ Œ«» ‰„«ÌÌœ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      s:='no';
    end
    else
    begin


    nn:=format_for_naming_backup_file;

      CreateDirectory(pchar('\\?\'+s+'\'+nn),0);

      path:=s+'\'+nn;

        frm_main.ADOQ_backup.SQL.Text:='insert into T_backup_path(path,make,backup_media_name)'+
        ' values('+QuotedStr(s)+','+QuotedStr('yes')+','+QuotedStr('hesabdar-backup-'+nn+'-'+time_)+')';
        frm_main.ADOQ_backup.ExecSQL;

    {  ADOStoredProc_make_backup_device.Parameters[0].Value:='disk';//@devtype varchar(20),      /* disk, tape, or diskette */
      ADOStoredProc_make_backup_device.Parameters[1].Value:='hesabdar-backup-'+nn+'-'+time_;//@logicalname   sysname,      /* logical name of the device */
      ADOStoredProc_make_backup_device.Parameters[2].Value:=path+'\'+'hesabdar-backup-'+nn+'.back';//@physicalname  nvarchar(260),     /* physical name of the device */
      //ADOStoredProc_make_backup_device.Parameters[3].Value:='';//@cntrltype  smallint = null,  /* controller type - ignored. */
      //ADOStoredProc_make_backup_device.Parameters[4].Value:='';//@devstatus  varchar(40) = 'noskip'  /* device characteristics */
      ADOStoredProc_make_backup_device.ExecProc;
      MessageBox(Handle,pchar('„”Ì— ÃœÌœ »—«Ì –ŒÌ—Â Å‘ Ì»«‰ Å«Ìê«Â œ«œÂ –ŒÌ—Â ‘œ'),' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);}
    end;
 end
  else
  begin
    ADOQ_backup.SQL.Text:='select * from  T_backup_path order by id desc';
    ADOQ_backup.Open;

    ADOQ_backup.First;

    {frm_main.ADOStoredProc_make_a_backup.Parameters[0].Value:='kharid_jens';//@database_name nvarchar (100),
    frm_main.ADOStoredProc_make_a_backup.Parameters[1].Value:=ADOQ_backupbackup_media_name.AsString;//@backup_device   nvarchar (100)
    frm_main.ADOStoredProc_make_a_backup.ExecProc;
    MessageBox(Handle,pchar('Å‘ Ì»«‰ êÌ—Ì «“ Å«Ìê«Â œ«œÂ «‰Ã«„ ‘œ'),' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);}

  end;
 end;
/////////////////////////////////////////////////////////////////////////



procedure Tfrm_main.sabte_amaliat(s:WideString);
begin
 ADOQ_amaliat.SQL.Text:='insert into T_amaliat(tarikh,time_,amaliat)values('+
 QuotedStr(Frm_login.Egettarikh.Text)+','+QuotedStr(LMDClock1.Digital.Caption)+','+QuotedStr(s)+')';
 ADOQ_amaliat.ExecSQL;
end;





////////////
procedure Tfrm_main.auto_back_up_after_close;
var
  Path,s:String;
  st:pchar;
begin
{  Datamarchive.ADOQuery_backup_path.SQL.Text:='select * from T_backup_path';
  Datamarchive.ADOQuery_backup_path.Open;

 if  Datamarchive.ADOQuery_backup_path.Fields[0].AsString<>'' then
 begin
      Path:=ExtractFilePath(Application.ExeName);
      Path:=Path+'kharid_jens.mdb';
      s:=Datamarchive.ADOQuery_backup_path.Fields[0].AsString+'\kharid_jens.mdb';

      CopyFile(PChar(Path),PChar(s),LongBool(0));
 end;}
end;
procedure Tfrm_main.set_name_register;
begin


 frm_print_sefaresh.QRL_name_register.Caption:=L_name_register.Caption;
 frm_print_sefaresh.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_print_sefaresh.QRL_telefhon.Caption:=l_telephon_register.Caption;



 frm_print_yaddasht.QRL_name_register.Caption:=L_name_register.Caption;
 frm_print_yaddasht.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_print_yaddasht.QRL_telefhon.Caption:=l_telephon_register.Caption;


 frm_print_moshakhasat.QRL_name_register.Caption:=L_name_register.Caption;
 frm_print_moshakhasat.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_print_moshakhasat.QRL_telefhon.Caption:=l_telephon_register.Caption;


 frm_print_amaliat_roz.QRL_name_register.Caption:=L_name_register.Caption;
 frm_print_amaliat_roz.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_print_amaliat_roz.QRL_telefhon.Caption:=l_telephon_register.Caption;


 frm_print_temp_factore_forosh.QRL_name_register.Caption:=L_name_register.Caption;
 frm_print_temp_factore_forosh.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_print_temp_factore_forosh.QRL_telefhon.Caption:=l_telephon_register.Caption;


 frm_print_sosde_ajnas.QRL_name_register.Caption:=L_name_register.Caption;
 frm_print_sosde_ajnas.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_print_sosde_ajnas.QRL_telefhon.Caption:=l_telephon_register.Caption;

 frm_print_gozaresh_anbar.QRL_name_register.Caption:=L_name_register.Caption;
 frm_print_gozaresh_anbar.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_print_gozaresh_anbar.QRL_telefhon.Caption:=l_telephon_register.Caption;

 frm_print_gozaresh_az_sandogh.QRL_name_register.Caption:=L_name_register.Caption;
 frm_print_gozaresh_az_sandogh.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_print_gozaresh_az_sandogh.QRL_telefhon.Caption:=l_telephon_register.Caption;

 Frm_print_pish_factor.QRL_name_register.Caption:=L_name_register.Caption;
 Frm_print_pish_factor.QRL_adress1.Caption:=l_adess_register1.Caption;
 Frm_print_pish_factor.QRL_telefhon.Caption:=l_telephon_register.Caption;

 frm_factor.QRL_name_register.Caption:=L_name_register.Caption;
 frm_factor.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_factor.QRL_telefhon.Caption:=l_telephon_register.Caption;

 Frm_print_mohasebe_kharid.QRL_name_register.Caption:=L_name_register.Caption;
 Frm_print_mohasebe_kharid.QRL_adress1.Caption:=l_adess_register1.Caption;
 Frm_print_mohasebe_kharid.QRL_telefhon.Caption:=l_telephon_register.Caption;

 Frm_print_jens_kharidar.QRL_name_register.Caption:=L_name_register.Caption;
 Frm_print_jens_kharidar.QRL_adress1.Caption:=l_adess_register1.Caption;
 Frm_print_jens_kharidar.QRL_telefhon.Caption:=l_telephon_register.Caption;

 Frm_print_gozaresh_tarkibi_kharidar.QRL_name_register.Caption:=L_name_register.Caption;
 Frm_print_gozaresh_tarkibi_kharidar.QRL_adress1.Caption:=l_adess_register1.Caption;
 Frm_print_gozaresh_tarkibi_kharidar.QRL_telefhon.Caption:=l_telephon_register.Caption;

 frm_print_gozaresh_tarkibi.QRL_name_register.Caption:=L_name_register.Caption;
 frm_print_gozaresh_tarkibi.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_print_gozaresh_tarkibi.QRL_telefhon.Caption:=l_telephon_register.Caption;

 Frm_print_foroshandegan_jens.QRL_name_register.Caption:=L_name_register.Caption;
 Frm_print_foroshandegan_jens.QRL_adress1.Caption:=l_adess_register1.Caption;
 Frm_print_foroshandegan_jens.QRL_telefhon.Caption:=l_telephon_register.Caption;

 Frm_print_bedehi.QRL_name_register.Caption:=L_name_register.Caption;
 Frm_print_bedehi.QRL_adress1.Caption:=l_adess_register1.Caption;
 Frm_print_bedehi.QRL_telefhon.Caption:=l_telephon_register.Caption;

 Frm_print_anbarkol.QRL_name_register.Caption:=L_name_register.Caption;
 Frm_print_anbarkol.QRL_adress1.Caption:=l_adess_register1.Caption;
 Frm_print_anbarkol.QRL_telefhon.Caption:=l_telephon_register.Caption;


 Frm_print_ajnas_foroshande.QRL_name_register.Caption:=L_name_register.Caption;
 Frm_print_ajnas_foroshande.QRL_adress1.Caption:=l_adess_register1.Caption;
 Frm_print_ajnas_foroshande.QRL_telefhon.Caption:=l_telephon_register.Caption;

 Frm_prinr_tasfie.QRL_name_register.Caption:=L_name_register.Caption;
 Frm_prinr_tasfie.QRL_adress1.Caption:=l_adess_register1.Caption;
 Frm_prinr_tasfie.QRL_telefhon.Caption:=l_telephon_register.Caption;

 Frm_factor_search.QRL_name_register.Caption:=L_name_register.Caption;
 Frm_factor_search.QRL_adress1.Caption:=l_adess_register1.Caption;
 Frm_factor_search.QRL_telefhon.Caption:=l_telephon_register.Caption;



 frm_pint_factor_roz.QRL_name_register.Caption:=L_name_register.Caption;
 frm_pint_factor_roz.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_pint_factor_roz.QRL_telefhon.Caption:=l_telephon_register.Caption;





 frm_chek_not_pas.QRL_name_register.Caption:=L_name_register.Caption;
 frm_chek_not_pas.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_chek_not_pas.QRL_telefhon.Caption:=l_telephon_register.Caption;




 frm_chek_factor.QRL_name_register.Caption:=L_name_register.Caption;
 frm_chek_factor.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_chek_factor.QRL_telefhon.Caption:=l_telephon_register.Caption;



 frm_factor.QRL_name_register.Caption:=L_name_register.Caption;
 frm_factor.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_factor.QRL_telefhon.Caption:=l_telephon_register.Caption;



 frm_factor_pardakhtha.QRL_name_register.Caption:=L_name_register.Caption;
 frm_factor_pardakhtha.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_factor_pardakhtha.QRL_telefhon.Caption:=l_telephon_register.Caption;


 Frm_print_jens_inanbar.QRL_name_register.Caption:=L_name_register.Caption;
 Frm_print_jens_inanbar.QRL_adress1.Caption:=l_adess_register1.Caption;



 frm_shakhs_bedehkar.QRL_name_register.Caption:=L_name_register.Caption;
 frm_shakhs_bedehkar.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_shakhs_bedehkar.QRL_telefhon.Caption:=l_telephon_register.Caption;

 Frm_print_check_pardakhti.QRL_name_register.Caption:=L_name_register.Caption;
 Frm_print_check_pardakhti.QRL_adress1.Caption:=l_adess_register1.Caption;
 Frm_print_check_pardakhti.QRL_telefhon.Caption:=l_telephon_register.Caption;


 frm_print_liste_geymat.QRL_name_register.Caption:=L_name_register.Caption;
 frm_print_liste_geymat.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_print_liste_geymat.QRL_telefhon.Caption:=l_telephon_register.Caption;


 frm_pint_factor_kol_roz.QRL_name_register.Caption:=L_name_register.Caption;
 frm_pint_factor_kol_roz.QRL_adress1.Caption:=l_adess_register1.Caption;
 frm_pint_factor_kol_roz.QRL_telefhon.Caption:=l_telephon_register.Caption;

end;

procedure Tfrm_main.show_calc;
var path:string;
    s:pchar;
begin
    {Path:=ExtractFilePath(Application.ExeName);
    Path:=Path+'calc.exe;
    s:=pchar(path); }
    ShellExecute(Handle,'open','calc.exe','','',SW_SHOWMAXIMIZED);
end;
procedure Tfrm_main.show_yaddasht_rooz;
begin
 DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.SQL.Text:='select * from T_yaddasht where tarikh_yadavary='+
 QuotedStr(Frm_login.Egettarikh.Text)+'order by mozo,tarikh_zakhire';

 DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.Open;

 frm_print_sefaresh.QRL_type.Caption:=' Ì«œœ«‘ Â«ÌÌ òÂ »«Ìœ œ—  «—ÌŒ '+Frm_login.Egettarikh.Text+' —”ÌœêÌ ‘Ê‰œ ';
end;
procedure Tfrm_main.show_yaddasht_hardo;
begin
 DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.SQL.Text:='select * from T_yaddasht order by mozo,tarikh_zakhire';
 DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.Open;

 frm_print_sefaresh.QRL_type.Caption:=' Ì«œœ«‘ Â«Ì —”ÌœêÌ ‘œÂ Ê —”ÌœêÌ ‰‘œÂ ';
end;
procedure Tfrm_main.show_yaddasht_anjam_shode;
begin
 DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.SQL.Text:='select * from T_yaddasht where anjam <>'+QuotedStr('«‰Ã«„ ‰‘œ')+
 ' order by mozo, tarikh_zakhire';
 DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.Open;

 frm_print_sefaresh.QRL_type.Caption:=' Ì«œœ«‘ Â«Ì —”ÌœêÌ ‘œÂ ';
end;
procedure Tfrm_main.show_yaddasht_anjam_nashode;
begin
 DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.SQL.Text:='select * from T_yaddasht where anjam ='+QuotedStr('«‰Ã«„ ‰‘œ')+
 ' order  by mozo, tarikh_zakhire';
 DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.Open;

 frm_print_sefaresh.QRL_type.Caption:=' Ì«œœ«‘ Â«Ì —”ÌœêÌ ‰‘œÂ'; 
end;
{************************************888}
procedure Tfrm_main.show_kharidarha_topas;
   begin
    {  Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens where chek_number='+QuotedStr('abc');
      //Dmlistha.ADOlistcheckhachek_number.AsString
      Dmlistha.adolistforosh.Open;

      DataM_final.ADOQ_T_pardakht_check_forosh.sql.Text:='select * from T_pardakht_check_forosh sh_check='+
     DataM_final.ADOQ_T_pardakht_check_forosh.Open; }
    end;

procedure Tfrm_main.show_check;
  begin
   DataM_final.ADOQ_T_pardakht_check_forosh.sql.Text:='select * from T_pardakht_check_forosh  order by tarikh,shahrforoshande';
   DataM_final.ADOQ_T_pardakht_check_forosh.Open;
  end;
{****************}
procedure Tfrm_main.show_chack_to_pas;
begin
  DataM_final.ADOQ_T_pardakht_check_forosh.sql.Text:='select * from T_pardakht_check_forosh where tarikh='+
  QuotedStr(Frm_login.Egettarikh.Text)+ ' and pass='+QuotedStr('ŒÌ—');
  DataM_final.ADOQ_T_pardakht_check_forosh.Open;

end;

procedure Tfrm_main.show_chack_shoma_to_pas;
begin
  {DataM_final.ADOQ_T_pardakht_check_kharid.sql.Text:='select * from T_pardakht_check_kharid where tarikh='+
  QuotedStr(Frm_login.Egettarikh.Text)+' and pass='+QuotedStr('ŒÌ—');
  DataM_final.ADOQ_T_pardakht_check_kharid.Open;}

  DataM_final.ADOQ_T_pardakht_check_kharid.SQL.Text:='select * from T_pardakht_check_kharid where tarikh='+
  QuotedStr(Frm_login.Egettarikh.Text)+ ' and pass<>'+QuotedStr('»·Ì');
  DataM_final.ADOQ_T_pardakht_check_kharid.Open;

end;

procedure Tfrm_main.gotochechhayepasshode;
begin
  Frm_jadval_checkhaye_pasnashode.Caption:='çòÂ«Ì Å«” ‘œÂ';
  frm_chek_not_pas.QRLONVAN.Caption:='·Ì”  çòÂ«Ì Å«” ‘œÂ';;
end;
procedure Tfrm_main.gotochackhayepasnashode;
begin
  Frm_jadval_checkhaye_pasnashode.Caption:='çòÂ«Ì Å«” ‰‘œÂ';
  frm_chek_not_pas.QRLONVAN.Caption:='·Ì”  çòÂ«Ì Å«” ‰‘œÂ';
end;

procedure Tfrm_main.dxWinXPBar2Items2Click(Sender: TObject);
begin
  gotochackhayepasnashode;

  Frm_jadval_checkhaye_pasnashode.ShowModal;

end;

procedure Tfrm_main.dxWinXPBar4Items1Click(Sender: TObject);
begin

  frm_veiw_forosh_list.ShowModal;

end;

procedure Tfrm_main.dxWinXPBar4Items2Click(Sender: TObject);
begin

  frm_editgeymatjens.ShowModal;

end;

procedure Tfrm_main.dxWinXbarforoshItems0Click(Sender: TObject);
begin

 frm_forosh_property.ShowModal;

end;



procedure Tfrm_main.dxWinXbaaranbarItems0Click(Sender: TObject);
begin
  Frm_jadval_jensin_anbar.ShowModal;
end;

procedure Tfrm_main.dxWinXbarforoshItems3Click(Sender: TObject);
begin

  Frm_jens_kharidar.ShowModal;

end;

procedure Tfrm_main.dxWinXbarforoshItems4Click(Sender: TObject);
begin
  frm_kharidhaye_shakhs.ShowModal;
end;





procedure Tfrm_main.dxWinXbargozareshItems1Click(Sender: TObject);
begin

  Frm_search_inkharid.ShowModal;

end;

procedure Tfrm_main.dxWinXbargozareshItems2Click(Sender: TObject);
begin

  Frm_jadval_bedehkarha.ShowModal;

end;

procedure Tfrm_main.dxWinXbargozareshItems0Click(Sender: TObject);
begin

  Frm_search.ShowModal;

end;



procedure Tfrm_main.dxWinbomormaliItems2Click(Sender: TObject);
begin
  show_kharidarha_topas;


  Frm_paskardancheck.ShowModal;

end;



procedure Tfrm_main.dxWinXbarkharidItems0Click(Sender: TObject);
begin

  frmjens_kharid.ShowModal;

end;


procedure Tfrm_main.dxWinbomormaliItems7Click(Sender: TObject);
begin

  Frm_pardakht_bedehi.ShowModal;

end;

procedure Tfrm_main.dxWinXbargozareshItems3Click(Sender: TObject);
begin

  frm_list_pardakht_ha.ShowModal;

end;

procedure Tfrm_main.dxWinXbargozareshItems4Click(Sender: TObject);
begin

  Frm_jedvalbedeh.ShowModal;

end;

procedure Tfrm_main.dxWinXbargozareshItems5Click(Sender: TObject);
begin

  Frm_listanbarforosh.ShowModal;

end;

procedure Tfrm_main.dxWinXbargozareshItems6Click(Sender: TObject);
begin

  frm_jadval_checkha.ShowModal;

end;

procedure Tfrm_main.dxWinXbaaranbarItems1Click(Sender: TObject);
begin

  frmaddanbar.ShowModal;

end;

procedure Tfrm_main.dxWinXbaaranbarItems2Click(Sender: TObject);
begin

   Frm_listanbarforosh.ShowModal;

end;

procedure Tfrm_main.dxWinXbaaranbarItems3Click(Sender: TObject);
begin

  frm_vorode_jense_motefarege.ShowModal;

end;

procedure Tfrm_main.dxWinXbarkharidItems4Click(Sender: TObject);
begin

  Frm_mmoshakhasat_shakhs.ShowModal;

end;

procedure Tfrm_main.dxWinXbargozareshItems7Click(Sender: TObject);
begin
  gotochechhayepasshode;


  Frm_jadval_checkhaye_pasnashode.ShowModal;

end;

procedure Tfrm_main.dxWinXbargozareshItems8Click(Sender: TObject);
begin
  gotochackhayepasnashode;


  Frm_jadval_checkhaye_pasnashode.ShowModal;

end;

procedure Tfrm_main.N6Click(Sender: TObject);
begin

  frm_list_pardakht_ha.ShowModal;

end;

procedure Tfrm_main.N2Click(Sender: TObject);
begin

  Frm_foroshandegan_jens.ShowModal;

end;

procedure Tfrm_main.N3Click(Sender: TObject);
begin

    frm_jens_foroshandeha.ShowModal;

end;

procedure Tfrm_main.N4Click(Sender: TObject);
begin

  Frm_jens_kharidar.ShowModal;

end;

procedure Tfrm_main.N7Click(Sender: TObject);
begin

  Frm_jedvalbedeh.ShowModal;

end;

procedure Tfrm_main.N5Click(Sender: TObject);
begin

  frm_kharidhaye_shakhs.ShowModal;

end;

procedure Tfrm_main.N9Click(Sender: TObject);
begin

  frm_jadval_checkha.ShowModal;

end;

procedure Tfrm_main.N10Click(Sender: TObject);
begin
  gotochechhayepasshode;
end;

procedure Tfrm_main.dxbarjadidItems0Click(Sender: TObject);
begin

 Frm_shakhs_jadid.ShowModal;

end;

procedure Tfrm_main.dxbarjadidItems1Click(Sender: TObject);
begin

  frm_anbar_jadid.ShowModal;

end;

procedure Tfrm_main.FormShow(Sender: TObject);
begin
/////////////////////////////////////////////////////////////////////////////////////

  L_karbar.Caption:='';
  Dm_sp_backup.ADOQuery_temp_bank.SQL.Text:='select * from T_bank_temp ';
  Dm_sp_backup.ADOQuery_temp_bank.Open;

  if Dm_sp_backup.ADOQuery_temp_bank.RecordCount>0 then
    Dm_sp_backup.ADOStoredProc_from_temp_bank_to_bank.ExecProc;

/////////////////////////////////////////////////////////////////////////////////////

  Dm_sp_backup.ADOQuery_temp_sh_hesab_banki.SQL.Text:=' select * from T_shomare_hesabe_banki_temp ';
  Dm_sp_backup.ADOQuery_temp_sh_hesab_banki.Open;

  if Dm_sp_backup.ADOQuery_temp_sh_hesab_banki.RecordCount>0 then
    Dm_sp_backup.ADOStoredProc_from_temp_sh_banki_to_sh_banki.ExecProc;

/////////////////////////////////////////////////////////////////////////////////////

  Dm_sp_backup.ADOQuery_temp_check_kharid.SQL.Text:='select * from T_temp_pardakht_check_kharid';
  Dm_sp_backup.ADOQuery_temp_check_kharid.Open;

  if Dm_sp_backup.ADOQuery_temp_check_kharid.RecordCount>0 then
    Dm_sp_backup.ADOStoredProc_from_temp_check_kharid_to_check_kharid.ExecProc;

/////////////////////////////////////////////////////////////////////////////////////

  Dm_sp_backup.ADOQuery_temp_check_forosh.SQL.Text:=' select * from T_temp_pardakht_check_forosh';
  Dm_sp_backup.ADOQuery_temp_check_forosh.Open;

  if Dm_sp_backup.ADOQuery_temp_check_forosh.RecordCount>0 then
    Dm_sp_backup.ADOStoredProc_from_temp_check_forosh_to_check_forosh.ExecProc;

/////////////////////////////////////////////////////////////////////////////////////

  Dm_sp_backup.ADOQuery_temp_mored_banki.SQL.Text:='select * from t_bank1_temp';
  Dm_sp_backup.ADOQuery_temp_mored_banki.Open;

  if Dm_sp_backup.ADOQuery_temp_mored_banki.RecordCount>0 then
     Dm_sp_backup.ADOStoredProc_from_temp_morede_banki_to_morede_benki.ExecProc;

////////////////////////////////////////////////////////////////////////////////////

  Dm_sp_backup.ADOQuery_temp_anbare_koli.SQL.Text:='select * from Tanbar_jens_kolli_temp';
  Dm_sp_backup.ADOQuery_temp_anbare_koli.Open;

  if Dm_sp_backup.ADOQuery_temp_anbare_koli.RecordCount>0 then
     Dm_sp_backup.ADOStoredProc_from_temp_Tanbar_jens_kolli_to_Tanbar_jens_kolli.ExecProc;

////////////////////////////////////////////////////////////////////////////////////

  Dm_sp_backup.ADOQuery_temp_daste_check.SQL.Text:='select * from T_daste_check_temp';
  Dm_sp_backup.ADOQuery_temp_daste_check.Open;

  if Dm_sp_backup.ADOQuery_temp_daste_check.RecordCount>0 then
     Dm_sp_backup.ADOStoredProc_from_daste_check_to_temp_daste_check.ExecProc;

////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////

  Dm_sp_backup.ADOQuery_gozaresh_vorod_va_khoroje_anbar_backup.SQL.Text:='select * from T_gozaresh_vorod_va_khoroje_anbar_backup';
  Dm_sp_backup.ADOQuery_gozaresh_vorod_va_khoroje_anbar_backup.Open;

  if Dm_sp_backup.ADOQuery_gozaresh_vorod_va_khoroje_anbar_backup.RecordCount>0 then
     Dm_sp_backup.ADOStoredProc_from_gozaresh_vorod_va_khoroje_anbar_backup_to_go.ExecProc;

////////////////////////////////////////////////////////////////////////////////////

  ADOQuery1.SQL.Text:='select * from t_pic';
  ADOQuery1.Open;
  Image2.Picture.LoadFromFile(ADOQuery1picname.Text);
  frm_main.WindowState:=wsMaximized;

  Frm_login.L_logof.Caption:='no';
  Frm_login.ShowModal;

  frm_main.ADOQ_amaliat.SQL.Text:='select * from T_amaliat where tarikh='+
  QuotedStr(frm_main.L_tarikh.Caption)+' and amaliat not like'+QuotedStr(' Œ—ÊÃ «“ ”Ì” „ ')+
  ' order by id,time_';
  frm_main.ADOQ_amaliat.Open;

  frm_main.ADOQ_amaliat.Last;


  frm_akharin_amaliate_ejra.ShowModal;


  l_last_op.Caption:=' Ê—Êœ »Â ”Ì” „ ';

  sabte_amaliat(' Ê—Êœ »Â ”Ì” „ ');


 set_name_register;
 LMDClock1.Top:=suiToolBar1.Top+suiToolBar1.Height;
 //l_last_op.Left:=Label6.Left+54;

end;

procedure Tfrm_main.N1Click(Sender: TObject);
begin

    frmjens_kharid.ShowModal;

end;

procedure Tfrm_main.MenuItem1Click(Sender: TObject);
begin

  frm_forosh_property.ShowModal;

end;

procedure Tfrm_main.MenuItem2Click(Sender: TObject);
begin

  frm_veiw_forosh_list.ShowModal;

end;

procedure Tfrm_main.MenuItem3Click(Sender: TObject);
begin

  frm_editgeymatjens.ShowModal;

end;

procedure Tfrm_main.MenuItem4Click(Sender: TObject);
begin

  Frm_moshakhasat_anbarha.ShowModal;

end;

procedure Tfrm_main.MenuItem5Click(Sender: TObject);
begin

  Frm_jadval_jensin_anbar.ShowModal;

end;

procedure Tfrm_main.MenuItem7Click(Sender: TObject);
begin

  Frm_shakhs_jadid.ShowModal;

end;

procedure Tfrm_main.MenuItem8Click(Sender: TObject);
begin

  frm_anbar_jadid.ShowModal;

end;

procedure Tfrm_main.MenuItem10Click(Sender: TObject);
begin
  frm_bede_bestan.ShowModal;
end;

procedure Tfrm_main.MenuItem11Click(Sender: TObject);
begin
  Frm_paskardancheck.ShowModal;
end;

procedure Tfrm_main.MenuItem12Click(Sender: TObject);
begin
  Frm_pardakht_bedehi.ShowModal;
end;

procedure Tfrm_main.MenuItem13Click(Sender: TObject);
begin
  Frm_search_inkharid.ShowModal;
end;

procedure Tfrm_main.MenuItem14Click(Sender: TObject);
begin
  Frm_search.ShowModal;
end;

procedure Tfrm_main.MenuItem15Click(Sender: TObject);
begin
  Frm_jadval_bedehkarha.ShowModal;
end;

procedure Tfrm_main.N8Click(Sender: TObject);
begin
  Frm_listanbarforosh.ShowModal;
end;

procedure Tfrm_main.N11Click(Sender: TObject);
begin
  gotochackhayepasnashode;
end;

procedure Tfrm_main.MenuItem22Click(Sender: TObject);
begin
  Frm_mmoshakhasat_shakhs.ShowModal;
end;

procedure Tfrm_main.N12Click(Sender: TObject);
begin
  frm_show_sefaresh.RadioGroup1.ItemIndex:=3;
 frm_show_sefaresh.show_sefaresh_hardo;
 frm_show_sefaresh.ShowModal;
end;

procedure Tfrm_main.ToolButton12Click(Sender: TObject);
begin
  if MessageBox(Handle,'Œ—ÊÃ «“ »—‰«„Â —«  «ÌÌœ „Ì‰„«ÌÌœø','Œ—ÊÃ «“ »—‰«„Â !',MB_ICONQUESTION or MB_YESNO or MB_RTLREADING or MB_RIGHT)=Idyes then
      close;
end;

procedure Tfrm_main.N13Click(Sender: TObject);
begin
    frm_editgeymatjens.ShowModal;
end;

procedure Tfrm_main.N14Click(Sender: TObject);
begin
  Frm_backup.ShowModal;
end;

procedure Tfrm_main.N15Click(Sender: TObject);
begin
  Frm_login_change.ShowModal;
end;

procedure Tfrm_main.N120Click(Sender: TObject);
begin
  Frm_saljadid.ShowModal;
end;

procedure Tfrm_main.N17Click(Sender: TObject);
begin
  frm_add_to_arshiv.ShowModal;
end;

procedure Tfrm_main.N18Click(Sender: TObject);
begin
  frm_recovery_from_arshiv.ShowModal;
end;

procedure Tfrm_main.dxbarjadidItems2Click(Sender: TObject);
begin
  Frm_saljadid.ShowModal;
end;

procedure Tfrm_main.ToolButton1Click(Sender: TObject);
var path :string;
begin
  path:=ExtractFilePath(Application.ExeName);
  path:=path;
  OpenPictureDialog1.InitialDir:=path;
  If OpenPictureDialog1.Execute then
   begin
    Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    ADOQuery1.SQL.Text:='update t_pic set picname='+QuotedStr(OpenPictureDialog1.FileName);
    ADOQuery1.ExecSQL;
   end;                
  
end;

procedure Tfrm_main.dxWinbomormaliItems1Click(Sender: TObject);
begin
  frm_bede_bestan.ShowModal;
end;

procedure Tfrm_main.dxWinbomormaliItems0Click(Sender: TObject);
begin
   frm_factor_roz.ShowModal;
end;

procedure Tfrm_main.N16Click(Sender: TObject);
begin
 frm_factor_roz.ShowModal;
end;

procedure Tfrm_main.dxWinbomormaliItems4Click(Sender: TObject);
begin
 frm_kharidhaye_shakhs.ShowModal;
end;

procedure Tfrm_main.dxWinXbargozareshItems9Click(Sender: TObject);
begin
 Frm_pardakht_shoma.ShowModal;
end;

procedure Tfrm_main.N19Click(Sender: TObject);
begin
  Frm_pardakht_shoma.ShowModal;
end;

procedure Tfrm_main.dxWinXbargozareshItems10Click(Sender: TObject);
begin
 frm_gozaresh_tarkibi.ShowModal;
end;

procedure Tfrm_main.dxWinXbargozareshItems11Click(Sender: TObject);
begin
 Frm_gozaresh_tarkibi_mpshtari.ShowModal;
end;

procedure Tfrm_main.N20Click(Sender: TObject);
begin
 Frm_gozaresh_tarkibi_mpshtari.ShowModal;
end;

procedure Tfrm_main.N21Click(Sender: TObject);
begin
 frm_gozaresh_tarkibi.ShowModal; 
end;

procedure Tfrm_main.dxbarjadidItems3Click(Sender: TObject);
begin
  Frm_sandog_jadid.ShowModal;
end;

procedure Tfrm_main.N22Click(Sender: TObject);
begin
 frm_yaddasht_jadid.ShowModal;
end;








procedure Tfrm_main.LMDSpeedButton5Click(Sender: TObject);
begin
   DataM_final.ADOQ_T_pardakht_check_kharid.Next;

end;

procedure Tfrm_main.LMDSpeedButton1Click(Sender: TObject);
begin
  DataM_final.ADOQ_T_pardakht_check_kharid.Next;
end;

procedure Tfrm_main.LMDSpeedButton6Click(Sender: TObject);
begin
    DataM_final.ADOQ_T_pardakht_check_kharid.Prior;
end;

procedure Tfrm_main.LMDSpeedButton2Click(Sender: TObject);
begin
  DataM_final.ADOQ_T_pardakht_check_kharid.Prior;
end;

procedure Tfrm_main.LMDSpeedButton4Click(Sender: TObject);
begin
  {show_yaddasht_rooz;
 frm_show_yaddasht.ShowModal;}
  frm_main.suiSide_check_shoma.StayOn:=false;
  frm_check_pardakhti_shoma.ShowModal;
end;

procedure Tfrm_main.LMDSpeedButton3Click(Sender: TObject);
begin
  if DataM_final.ADOQ_T_pardakht_check_kharid.RecordCount <=0 then
    MessageBox(Handle,'çòÌ »«  «—ÌŒ «„—Ê“ »—«Ì Å«” ‘œ‰ ÊÃÊœ ‰œ«—œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
    frm_check_pardakhti_shoma.ShowModal;
  end;
end;

procedure Tfrm_main.N23Click(Sender: TObject);
begin
  Frm_sefaresh_jadid.ShowModal;
end;

procedure Tfrm_main.dxbarjadidItems4Click(Sender: TObject);
begin
    frm_add_bank.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items0Click(Sender: TObject);
begin
  frm_onvane_hazineha.L_type.Caption:='jadid';
  frm_onvane_hazineha.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items1Click(Sender: TObject);
begin
    frm_sabte_hazine.ShowModal;
end;

procedure Tfrm_main.suiSide_check_kharidarPop(Sender: TObject);
begin
  show_chack_to_pas;
end;

procedure Tfrm_main.N26Click(Sender: TObject);
begin
 frm_add_bank.ShowModal;
end;

procedure Tfrm_main.dxbarjadidItems5Click(Sender: TObject);
begin
   frm_daste_check_jadid.ShowModal;
end;

procedure Tfrm_main.N27Click(Sender: TObject);
begin
 frm_moshkhasat_bank.ShowModal;
end;


procedure Tfrm_main.N28Click(Sender: TObject);
begin
 frm_daste_check_jadid.ShowModal;
end;

procedure Tfrm_main.dxbarjadidItems6Click(Sender: TObject);
begin
 Frm_add_vahed.ShowModal;
end;

procedure Tfrm_main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    frm_main.sabte_amaliat(' Œ—ÊÃ «“ ”Ì” „ ');
  //auto_back_up_after_close;
  //MessageBox(Handle,'‘„« «“ »—‰«„Â Œ«—Ã ‘œÌœ','Œ—ÊÃ «“ »—‰«„Â !',MB_ICONEXCLAMATION or MB_OK or MB_RTLREADING or MB_RIGHT);
end;

procedure Tfrm_main.dxWinXbargozareshItems12Click(Sender: TObject);
begin
  frm_check_pardakhti_shoma.ShowModal;
end;

procedure Tfrm_main.N29Click(Sender: TObject);
begin
  frm_check_pardakhti_shoma.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items8Click(Sender: TObject);
begin
  show_yaddasht_hardo;
  frm_show_yaddasht.typ_yaddasht;
  frm_show_yaddasht.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items7Click(Sender: TObject);
begin
  frm_show_sefaresh.RadioGroup1.ItemIndex:=3;
 frm_show_sefaresh.show_sefaresh_hardo;
 frm_show_sefaresh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items6Click(Sender: TObject);
begin
  Frm_login_change.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items5Click(Sender: TObject);
begin
  Frm_backup.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items3Click(Sender: TObject);
begin
  frm_shoe_hazine_onvan.ShowModal;
end;



procedure Tfrm_main.N30Click(Sender: TObject);
begin
  frmaddanbar.ShowModal;
end;

procedure Tfrm_main.N31Click(Sender: TObject);
begin
  show_yaddasht_hardo;
  frm_show_yaddasht.typ_yaddasht;
  frm_show_yaddasht.ShowModal;
end;

procedure Tfrm_main.N32Click(Sender: TObject);
begin
 show_calc;
end;

procedure Tfrm_main.dxbarjadidItems7Click(Sender: TObject);
begin
  frm_yaddasht_jadid.ShowModal;  
end;

procedure Tfrm_main.N33Click(Sender: TObject);
begin
  Frm_add_vahed.ShowModal;
end;



procedure Tfrm_main.N34Click(Sender: TObject);
begin
  frm_eslah_forosh.ShowModal;
end;



procedure Tfrm_main.N35Click(Sender: TObject);
begin
  Frm_auto_backup.ShowModal;
end;

procedure Tfrm_main.dxbarjadidItems8Click(Sender: TObject);
begin
 Frm_sefaresh_jadid.ShowModal;
end;

procedure Tfrm_main.N36Click(Sender: TObject);
begin
 Frm_sandog_jadid.ShowModal;
end;

procedure Tfrm_main.dxWinbomormaliItems5Click(Sender: TObject);
begin
 Frm_gozaresh_az_sandog.ShowModal;
end;

procedure Tfrm_main.N24Click(Sender: TObject);
begin
  Frm_gozaresh_az_sandog.ShowModal;
end;

procedure Tfrm_main.dxWinbomormaliItems6Click(Sender: TObject);
begin
   Frm_khorojha_az_sandog.L_type.Caption:='geyre_motefarege';
   Frm_khorojha_az_sandog.L_type_main.Caption:='sandog';

  DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name  order by sandog';
  DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;

  Frm_khorojha_az_sandog.ShowModal;
end;

procedure Tfrm_main.Timer1Timer(Sender: TObject);
begin
 auto_back_up_after_close;
end;

procedure Tfrm_main.ToolButton2Click(Sender: TObject);
begin
  frm_dabare.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items2Click(Sender: TObject);
begin
 frm_show_hazineha.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items4Click(Sender: TObject);
begin
  frm_onvane_hazineha.L_type.Caption:='eslah';
  frm_onvane_hazineha.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items10Click(Sender: TObject);
begin
  frm_eslah_sal.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items11Click(Sender: TObject);
begin
   frm_eslah_vahed.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items9Click(Sender: TObject);
begin
    show_calc;
end;

procedure Tfrm_main.dxWinXPBar1Items12Click(Sender: TObject);
begin
  frm_eslah_vahed_jens_anbar.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items13Click(Sender: TObject);
begin
  frm_eslahe_daste_checkha.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items14Click(Sender: TObject);
begin
  frm_eslah_pardakhthaye_kharidar.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items15Click(Sender: TObject);
begin
  frm_eslah_pardakhtha_be_foroshnde.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items16Click(Sender: TObject);
begin
    frm_eslah_kharid.ShowModal;
end;



procedure Tfrm_main.dxWinXPBar2Items0Click(Sender: TObject);
begin
  Frm_paskardancheck.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar2Items1Click(Sender: TObject);
begin
  gotochechhayepasshode;
  Frm_jadval_checkhaye_pasnashode.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar2Items3Click(Sender: TObject);
begin
  frm_jadval_checkha.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar2Items4Click(Sender: TObject);
begin
  frm_check_pardakhti_shoma.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_maliItems0Click(Sender: TObject);
begin
  Frm_gozaresh_az_sandog.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_maliItems1Click(Sender: TObject);
begin
  Frm_jadval_bedehkarha.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_maliItems2Click(Sender: TObject);
begin
   Frm_jedvalbedeh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_maliItems3Click(Sender: TObject);
begin
  frm_list_pardakht_ha.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_maliItems4Click(Sender: TObject);
begin
  Frm_pardakht_shoma.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems0Click(Sender: TObject);
begin
  Frm_search_inkharid.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems1Click(Sender: TObject);
begin
  Frm_search.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems2Click(Sender: TObject);
begin
  Frm_gozaresh_tarkibi_mpshtari.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems3Click(Sender: TObject);
begin
  frm_gozaresh_tarkibi.ShowModal;
end;

procedure Tfrm_main.dxWinX_esahe_kharid_va_foroshItems0Click(
  Sender: TObject);
begin
  frm_eslah_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinX_esahe_kharid_va_foroshItems1Click(
  Sender: TObject);
begin
 frm_eslah_kharid.ShowModal;
end;

procedure Tfrm_main.dxWinX_esahe_kharid_va_foroshItems2Click(
  Sender: TObject);
begin
  frm_eslah_pardakhthaye_kharidar.ShowModal;
end;

procedure Tfrm_main.dxWinX_esahe_kharid_va_foroshItems3Click(
  Sender: TObject);
begin
  frm_eslah_pardakhtha_be_foroshnde.ShowModal;
end;

procedure Tfrm_main.dxWinX_esahe_kharid_va_foroshItems4Click(
  Sender: TObject);
begin
  frm_entekhabe_noe_virayesh_geymat.ShowModal;
end;

procedure Tfrm_main.dxWinXp_slahe_gheireItems0Click(Sender: TObject);
begin
  Frm_mmoshakhasat_shakhs.ShowModal;
end;

procedure Tfrm_main.dxWinXp_slahe_gheireItems1Click(Sender: TObject);
begin
  frm_moshkhasat_bank.ShowModal;
end;



procedure Tfrm_main.dxWinXp_slahe_gheireItems3Click(Sender: TObject);
begin
  frm_eslah_sal.ShowModal;
end;

procedure Tfrm_main.dxWinXp_slahe_gheireItems4Click(Sender: TObject);
begin
  frm_eslah_vahed.ShowModal;
end;

procedure Tfrm_main.dxWinXp_slahe_gheireItems5Click(Sender: TObject);
begin
  frm_eslah_vahed_jens_anbar.ShowModal;
end;

procedure Tfrm_main.dxWinXp_slahe_gheireItems6Click(Sender: TObject);
begin
  Frm_login_change.ShowModal;
end;

procedure Tfrm_main.dxWinXp_slahe_gheireItems7Click(Sender: TObject);
begin
  Frm_auto_backup.ShowModal;
end;

procedure Tfrm_main.dxWinXP_gheireItems3Click(Sender: TObject);
begin
  show_calc;
end;

procedure Tfrm_main.dxWinXP_gheireItems0Click(Sender: TObject);
begin
  frm_show_sefaresh.RadioGroup1.ItemIndex:=3;
  frm_show_sefaresh.show_sefaresh_hardo;
  frm_show_sefaresh.ShowModal;
end;

procedure Tfrm_main.dxWinXP_gheireItems1Click(Sender: TObject);
begin
  frm_show_yaddasht.RadioGroup1.ItemIndex:=3;
  frm_main.show_yaddasht_hardo;
  frm_show_yaddasht.typ_yaddasht;
  frm_show_yaddasht.ShowModal;
end;

procedure Tfrm_main.Timer_backTimer(Sender: TObject);
begin
  auto_back_up_after_close;
end;

procedure Tfrm_main.dxWinXPBar_checkItems5Click(Sender: TObject);
begin
  frm_add_bank1.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_maliItems5Click(Sender: TObject);
begin
  frm_sode_foroshe_ajnas.ShowModal;
end;

procedure Tfrm_main.dxWinX_esahe_kharid_va_foroshItems5Click(
  Sender: TObject);
begin
  frm_eslah_bank.ShowModal;
end;

procedure Tfrm_main.dxWinb_naghdiItems3Click(Sender: TObject);
begin
//Variz be bank
  frm_add_bank1.L_type2.Caption:='variz_be_bank';
  frm_add_bank1.L_sandog.Visible:=false;

  frm_add_bank1.DBLookupComboBox3.Visible:=false;

  frm_add_bank1.ShowModal;

end;

procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems4Click(Sender: TObject);
begin
  frm_amaliate_roz.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems5Click(Sender: TObject);
begin
  frm_moshakhasat.ShowModal;
end;



procedure Tfrm_main.dxWinXbarkharidItems1Click(Sender: TObject);
begin
  frm_factore_kharid.ShowModal;
end;

procedure Tfrm_main.dxWinXbarkharidItems2Click(Sender: TObject);
begin
  frm_jens_foroshandeha.ShowModal;
end;

procedure Tfrm_main.dxWinXbarkharidItems3Click(Sender: TObject);
begin
  Frm_foroshandegan_jens.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_maliItems6Click(Sender: TObject);
begin
  frm_taraze_mali.ShowModal;
end;

procedure Tfrm_main.dxbarjadidItems9Click(Sender: TObject);
begin
   frm_daste_check_jadid2.ShowModal;
end;

procedure Tfrm_main.dxWinXbaaranbarItems4Click(Sender: TObject);
begin
  frm_jabejaei_first.ShowModal;
end;

procedure Tfrm_main.Button2Click(Sender: TObject);
begin
  frm_menoye_mavarede_jadid.ShowModal;
end;

procedure Tfrm_main.PopupMenu1Popup(Sender: TObject);
begin
  frm_menoye_mavarede_jadid.ShowModal;
end;



procedure Tfrm_main.dxWinX_esahe_kharid_va_foroshItems6Click(
  Sender: TObject);
begin
  frm_eslahe_bedehi_kharidaran.ShowModal;
end;

procedure Tfrm_main.dxWinX_esahe_kharid_va_foroshItems7Click(
  Sender: TObject);
begin
  frm_eslahe_bedehi_foroshandegan.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems6Click(Sender: TObject);
begin
  frm_gozaresh_az_vorodi_khoroji_anbar.ShowModal;
end;



procedure Tfrm_main.dxWinXP_gheireItems4Click(Sender: TObject);
begin
  Frm_backup.ShowModal;
end;

procedure Tfrm_main.dxWinXP_gheireItems5Click(Sender: TObject);
begin
 ShellExecute(Handle,'open','sndvol32.exe','','',SW_SHOWNORMAL);
end;

procedure Tfrm_main.dxWinXP_gheireItems6Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure Tfrm_main.ToolButton3Click(Sender: TObject);
begin
  _taghvim.Label1.Caption:='bbbbb';
_Taghvim.ShowModal;
if _taghvim._str_date<>'' then
begin
  Frm_login.Egettarikh.Text:=_Taghvim._str_date;
  L_tarikh.Caption:=_Taghvim._str_date;

  L_roze_hafte.Caption:=_Taghvim.roz_hafte;

   MessageBox(Handle,pchar('  «—ÌŒ << '+L_tarikh.Caption+' >> ° »Â ⁄‰Ê«‰  «—ÌŒ «„—Ê“ –ŒÌ—Â ‘œ.'),' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
   frm_main.l_last_op.Caption:=' €ÌÌ—  «—ÌŒ ”Ì” „ «“ '+L_tarikh.Caption+'»Â ';
   frm_main.l_last_op.Caption:=frm_main.l_last_op.Caption+L_tarikh.Caption;
   sabte_amaliat(l_last_op.Caption+'Ê –ŒÌ—Â »Â ⁄‰Ê«‰  «—ÌŒ Ã«—Ì ”Ì” „ ');

end;
end;



procedure Tfrm_main.dxWinXP_gheireItems7Click(Sender: TObject);
begin
 ShellExecute(Handle,'open','wmplayer.exe','','',SW_SHOWMAXIMIZED);
end;

procedure Tfrm_main.ToolButton4Click(Sender: TObject);
begin
  frm_main.backup;
  MessageBox(Handle,pchar('Å‘ Ì»«‰ êÌ—Ì «“ Å«Ìê«Â œ«œÂ «‰Ã«„ ‘œ'),' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;

procedure Tfrm_main.ToolButton5Click(Sender: TObject);
begin
 ShellExecute(Handle,'open','help\Hesabdars Help.chm','','',SW_SHOWMAXIMIZED);  
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_maliItems7Click(Sender: TObject);
begin
  Frm_search_bank.ShowModal;
end;



procedure Tfrm_main.dxWinb_naghdiItems4Click(Sender: TObject);
begin
//sandogh be bank
   Frm_khorojha_az_sandog.L_type.Caption:='geyre_motefarege';
   Frm_khorojha_az_sandog.L_type_main.Caption:='bank';

  DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name  order by sandog';
  DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;

   Frm_khorojha_az_sandog.ShowModal;

end;

procedure Tfrm_main.dxWinb_naghdiItems5Click(Sender: TObject);
begin
//Az bank be sandogh
  frm_add_bank1.L_type2.Caption:='bardasht-be_sandog';
  frm_add_bank1.L_sandog.Visible:=true;

  frm_add_bank1.DBLookupComboBox3.Visible:=true;
  GroupBox5.Enabled:=true;

  frm_add_bank1.ShowModal;

end;

procedure Tfrm_main.dxWinb_naghdiItems6Click(Sender: TObject);
begin
//Entegal beine sandogh
   Frm_khorojha_az_sandog.L_type.Caption:='geyre_motefarege';
   Frm_khorojha_az_sandog.L_type_main.Caption:='sandog';

  DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name  order by sandog';
  DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;

  Frm_khorojha_az_sandog.ShowModal;

end;

procedure Tfrm_main.LMDGlobalHotKey1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   ShellExecute(Handle,'open','help\Hesabdars Help.chm','','',SW_SHOWMAXIMIZED);
end;

procedure Tfrm_main.LMDGlobalHotKey2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  show_calc;
end;

procedure Tfrm_main.LMDGlobalHotKey3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 ShellExecute(Handle,'open','explorer.exe','','',SW_SHOWMAXIMIZED);
end;

procedure Tfrm_main.LMDGlobalHotKey4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 ShellExecute(Handle,'open','wmplayer.exe','','',SW_SHOWMAXIMIZED);
end;

procedure Tfrm_main.dxWinXP_gheireItems8Click(Sender: TObject);
begin
 ShellExecute(Handle,'open','explorer.exe','','',SW_SHOWMAXIMIZED);
end;

procedure Tfrm_main.dxWinb_naghdiItems8Click(Sender: TObject);
begin
//Bardasht az bank

  frm_add_bank1.L_type2.Caption:='bardashte-motefarege_besandoge_bardasht';
  frm_add_bank1.L_sandog.Visible:=false;

  frm_add_bank1.DBLookupComboBox3.Visible:=false;

  frm_add_bank1.ShowModal;

end;

procedure Tfrm_main.dxWinb_naghdiItems7Click(Sender: TObject);
begin
//bardasht az sandogh ha
   Frm_khorojha_az_sandog.L_type.Caption:='motefarege';
   Frm_khorojha_az_sandog.L_type_main.Caption:='sandog';

  DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name where sandog<>'+QuotedStr('?????? ??????')+
      ' order by sandog';

  DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;

  Frm_khorojha_az_sandog.ShowModal;

end;

procedure Tfrm_main.dxWinXP_gheireItems2Click(Sender: TObject);
begin
  frm_rahnemaye_mianbor.ShowModal;
end;

procedure Tfrm_main.dxWinXbarforoshItems1Click(Sender: TObject);
begin
  frm_forosh_fishi.ShowModal;
end;

procedure Tfrm_main.dxWinXbarforoshItems2Click(Sender: TObject);
begin
 frm_factor_roz.ShowModal;
end;

procedure Tfrm_main.dxWinX_esahe_kharid_va_foroshItems8Click(
  Sender: TObject);
begin
  frm_editgeymatjens.b_eslahe_geymate_forosh.Visible:=false;
  frm_editgeymatjens.b_eslahe_geymate_kharid.Visible:=true;

  frm_editgeymatjens.l_type.Caption:='eslahe_geymate_kharid';
  frm_editgeymatjens.ShowModal;
end;

procedure Tfrm_main.dxbarjadidItems10Click(Sender: TObject);
begin
  frm_karbar.l_type_.Caption:='new';
  frm_karbar.Caption:=' ⁄—Ì› ò«—»— ÃœÌœ';
  frm_karbar.suiBtaeed.Visible:=false;  
  frm_karbar.ShowModal;
end;

procedure Tfrm_main.dxWinXp_slahe_gheireItems9Click(Sender: TObject);
begin
  frm_karbar.l_type_.Caption:='edite';
  frm_karbar.Caption:='«’·«Õ ò«—»—';
  frm_karbar.suiBtaeed.Visible:=true;
  frm_karbar.ShowModal;
end;

procedure Tfrm_main.dxWinXp_slahe_gheireItems10Click(Sender: TObject);
begin
  frm_sathe_dastrasi.ShowModal;
end;

procedure Tfrm_main.ToolButton6Click(Sender: TObject);
begin
  Frm_login.L_logof.Caption:='yes';
  Frm_login.ShowModal;
end;

procedure Tfrm_main.dxWinXbaaranbarItems5Click(Sender: TObject);
begin
  frm_liste_geymat.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_checkItems0Click(Sender: TObject);
begin
//Pass kardan
  Frm_paskardancheck.ShowModal;

end;

procedure Tfrm_main.dxWinb_naghdiItems0Click(Sender: TObject);
begin
  //Bedehi az kharidar
  frm_bede_bestan.ShowModal;

end;

procedure Tfrm_main.dxWinb_naghdiItems1Click(Sender: TObject);
begin
  //pard be foroshande
  Frm_pardakht_bedehi.ShowModal;

end;

procedure Tfrm_main.dxWinb_naghdiItems2Click(Sender: TObject);
begin
//variz be sarmaye
   frm_variz_be_sarmaye.ShowModal;

end;

procedure Tfrm_main.dxWinXPBarhazineItems4Click(Sender: TObject);
begin
//Eslah hazine onvan
 frm_onvane_hazineha.L_type.Caption:='eslah';
  frm_onvane_hazineha.ShowModal;

end;

procedure Tfrm_main.dxWinXPBarhazineItems3Click(Sender: TObject);
begin
//mablagh pardakhti hazine
  frm_show_hazine_anjirestan.ShowModal;

end;

procedure Tfrm_main.dxWinXPBarhazineItems0Click(Sender: TObject);
begin
//onvane hazine jadid
frm_onvane_hazineha.L_type.Caption:='jadid';
  frm_onvane_hazineha.ShowModal;

end;

procedure Tfrm_main.dxWinXPBarhazineItems1Click(Sender: TObject);
begin
//sabte hazine
    frm_sabte_hazine.ShowModal;
end;

procedure Tfrm_main.dxWinXPBarhazineItems2Click(Sender: TObject);
begin

  //hazine sabt shode
  frm_show_hazineha.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_checkItems4Click(Sender: TObject);
begin
//Check pardakhti
  frm_check_pardakhti_shoma.ShowModal;

end;

procedure Tfrm_main.dxWinXPBar_checkItems3Click(Sender: TObject);
begin
//check daryafti
  frm_jadval_checkha.ShowModal;

end;

procedure Tfrm_main.dxWinXPBar_checkItems2Click(Sender: TObject);
begin
//pass nashode
  gotochackhayepasnashode;

  Frm_jadval_checkhaye_pasnashode.ShowModal;

end;

procedure Tfrm_main.dxWinXPBar_checkItems1Click(Sender: TObject);
begin
//Pass shode
  gotochechhayepasshode;
  Frm_jadval_checkhaye_pasnashode.ShowModal;

end;

procedure Tfrm_main.suiSide_check_shomaPop(Sender: TObject);
begin
  show_chack_shoma_to_pas;
end;

procedure Tfrm_main.FormCreate(Sender: TObject);
begin
  //attach_database;

  ConnectToDatabase();
end;

procedure Tfrm_main.dxbarjadidItems11Click(Sender: TObject);
begin
     Frm_anjirestan_jadid.ShowModal;
end;

procedure Tfrm_main.dxWinXp_slahe_gheireItems8Click(Sender: TObject);
begin
  Frm_mmoshakhasat_anjirestan.ShowModal;
end;

procedure Tfrm_main.dxWinXp_slahe_gheireItems2Click(Sender: TObject);
begin
   frm_eslahe_jens.ShowModal;
end;

procedure Tfrm_main.dxWinXp_slahe_gheireItems11Click(Sender: TObject);
begin
  frm_eslahe_daste_checkha.ShowModal;
end;

procedure Tfrm_main.dxWinXPBarhazineItems5Click(Sender: TObject);
begin
   frm_anjirestan_jamavari.ShowModal;
end;

end.
