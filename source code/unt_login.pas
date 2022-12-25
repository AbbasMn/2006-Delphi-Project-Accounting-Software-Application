unit unt_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, ExtCtrls, SUIForm;

type
  TFrm_login = class(TForm)
    GroupBox1: TGroupBox;
    suiBtaeed: TsuiButton;
    suibexit: TsuiButton;
    Elogin: TEdit;
    Label1: TLabel;
    Egettarikh: TEdit;
    Edit1: TEdit;
    e_username: TEdit;
    L_name_register: TLabel;
    Label2: TLabel;
    L_logof: TLabel;
    procedure suibexitClick(Sender: TObject);
    function getloginfromdatabase:string;
    function login:boolean;
    function getserialhardfrmbatabase:string;
    function bug_forosh:boolean;
    function checkserialhard:string;
    function bugoafserial:boolean;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    function gettarikh:boolean;
    function bug_kharid:boolean;
    function bug_tarikh:boolean;
    procedure taeed;
    procedure suiBtaeedClick(Sender: TObject);
    procedure auto_back_up;
    procedure show_sotoh;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_login: TFrm_login;

implementation

uses unt_main, Untdmlistha, DB, Untserial, Taghvim,
  Unt_DataModule_gozaresh_tarkibi, unt_datamodule2, Unt_show_sefaresh,
  unt_show_yaddasht, Unt_Datamarchive, Unt_backup, unt_auto_backup,
  unt_splash,unt_DataM_final, unt_akharin_amaliate_ejra,
  unt_DataM_dastrasi;
  {Emami Vahid Maghaze ===>volser=F0F451AF}
  {Hashemi Ali  SYSTEM  ===>volser=A2C2F6AC}
{my HOME  SYSTEM  ===>volser=D8857F22}
///////////////////////////////////////////////
{HASAN POR  STORE SYSTEM  ===>volser=50B37BB2}
{HASAN POR  HOME  SYSTEM  ===>volser=1CAAD43B}
{PEIRAVI    HOME  SYSTEM  ===>volser=60CD54BC}
{kharidar    HOME  SYSTEM  ===>volser=54073C93}
{My labtob  SYSTEM  ===>volser=FE4CA15F}

  {$R *.dfm}
procedure TFrm_login.show_sotoh;
begin

  DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='select * from T_dastresi where karbar='+QuotedStr(trim(e_username.Text));
  DataM_dastrasi.ADOQ_dastrasi.Open;


  ///////////////  kharid  ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','kharid_kharid',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbarkharid.Items[0].Visible:=true
  else
    frm_main.dxWinXbarkharid.Items[0].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','kharid_factor',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbarkharid.Items[1].Visible:=true
  else
    frm_main.dxWinXbarkharid.Items[1].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','kharid_az_for',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbarkharid.Items[2].Visible:=true
  else
    frm_main.dxWinXbarkharid.Items[2].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','kharid_jens',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbarkharid.Items[3].Visible:=true
  else
    frm_main.dxWinXbarkharid.Items[3].Visible:=false;

 frm_main.dxWinXbarkharid.Collapsed:=true;
  ///////////////  forosh ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','forosh_forosh',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbarforosh.Items[0].Visible:=true
  else
    frm_main.dxWinXbarforosh.Items[0].Visible:=false;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','forosh_sarie',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbarforosh.Items[1].Visible:=true
  else
    frm_main.dxWinXbarforosh.Items[1].Visible:=false;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','forosh_factor',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbarforosh.Items[2].Visible:=true
  else
    frm_main.dxWinXbarforosh.Items[2].Visible:=false;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','forosh_jens',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbarforosh.Items[3].Visible:=true
  else
    frm_main.dxWinXbarforosh.Items[3].Visible:=false;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','forosh_foroshha',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbarforosh.Items[4].Visible:=true
  else
    frm_main.dxWinXbarforosh.Items[4].Visible:=false;

  frm_main.dxWinXbarforosh.Collapsed:=true;
  ///////////////  makan ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','makan_majazi',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbaaranbar.Items[0].Visible:=true
  else
    frm_main.dxWinXbaaranbar.Items[0].Visible:=false;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','makan_har_makan',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbaaranbar.Items[1].Visible:=true
  else
    frm_main.dxWinXbaaranbar.Items[1].Visible:=false;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','makan_makanha',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbaaranbar.Items[2].Visible:=true
  else
    frm_main.dxWinXbaaranbar.Items[2].Visible:=false;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','makan_jabejaei',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbaaranbar.Items[3].Visible:=true
  else
    frm_main.dxWinXbaaranbar.Items[3].Visible:=false;



  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','makan_eftetah',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXbaaranbar.Items[4].Visible:=true
  else
    frm_main.dxWinXbaaranbar.Items[4].Visible:=false;

  frm_main.dxWinXbaaranbar.Collapsed:=true;
  ///////////////  hazine ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','hazine_jadid',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBarhazine.Items[0].Visible:=true
  else
    frm_main.dxWinXPBarhazine.Items[0].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','hazine_sabt',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBarhazine.Items[1].Visible:=true
  else
    frm_main.dxWinXPBarhazine.Items[1].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','hazine_sabt_shode',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBarhazine.Items[2].Visible:=true
  else
    frm_main.dxWinXPBarhazine.Items[2].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','hazine_mabalegh',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBarhazine.Items[3].Visible:=true
  else
    frm_main.dxWinXPBarhazine.Items[3].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','hazine_eslah',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBarhazine.Items[4].Visible:=true
  else
    frm_main.dxWinXPBarhazine.Items[4].Visible:=false;

  frm_main.dxWinXPBarhazine.Collapsed:=true;
  ///////////////  eslahe mali ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_geymate_forosh',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBareslahe_mali.Items[0].Visible:=true
  else
    frm_main.dxWinXPBareslahe_mali.Items[0].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_geymate_kharid',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBareslahe_mali.Items[1].Visible:=true
  else
    frm_main.dxWinXPBareslahe_mali.Items[1].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_forosh',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBareslahe_mali.Items[2].Visible:=true
  else
    frm_main.dxWinXPBareslahe_mali.Items[2].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_kharid',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBareslahe_mali.Items[3].Visible:=true
  else
    frm_main.dxWinXPBareslahe_mali.Items[3].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_pardakhte_kharidar',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBareslahe_mali.Items[4].Visible:=true
  else
    frm_main.dxWinXPBareslahe_mali.Items[4].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_pardakht_be_foroshande',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBareslahe_mali.Items[5].Visible:=true
  else
    frm_main.dxWinXPBareslahe_mali.Items[5].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_kharidar',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBareslahe_mali.Items[6].Visible:=true
  else
    frm_main.dxWinXPBareslahe_mali.Items[6].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_foroshande',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBareslahe_mali.Items[7].Visible:=true
  else
    frm_main.dxWinXPBareslahe_mali.Items[7].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_banki',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBareslahe_mali.Items[8].Visible:=true
  else
    frm_main.dxWinXPBareslahe_mali.Items[8].Visible:=false;

  frm_main.dxWinXPBareslahe_mali.Collapsed:=true;
  ///////////////  geyre ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_sefareshat',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXP_gheire.Items[0].Visible:=true
  else
    frm_main.dxWinXP_gheire.Items[0].Visible:=false;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_yaddasht',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXP_gheire.Items[1].Visible:=true
  else
    frm_main.dxWinXP_gheire.Items[1].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mianbor',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXP_gheire.Items[2].Visible:=true
  else
    frm_main.dxWinXP_gheire.Items[2].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mashinhesab',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXP_gheire.Items[3].Visible:=true
  else
    frm_main.dxWinXP_gheire.Items[3].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_seda',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXP_gheire.Items[4].Visible:=true
  else
    frm_main.dxWinXP_gheire.Items[4].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_printer',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXP_gheire.Items[5].Visible:=true
  else
    frm_main.dxWinXP_gheire.Items[5].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mediaplayer',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXP_gheire.Items[6].Visible:=true
  else
    frm_main.dxWinXP_gheire.Items[6].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_explorer',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXP_gheire.Items[7].Visible:=true
  else
    frm_main.dxWinXP_gheire.Items[7].Visible:=false;

  frm_main.dxWinXP_gheire.Collapsed:=true;
  ///////////////  geyre mali ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_shakhs',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXp_slahe_gheire.Items[1].Visible:=true
  else
    frm_main.dxWinXp_slahe_gheire.Items[1].Visible:=false;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_jens',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXp_slahe_gheire.Items[2].Visible:=true
  else
    frm_main.dxWinXp_slahe_gheire.Items[2].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_bank',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXp_slahe_gheire.Items[3].Visible:=true
  else
    frm_main.dxWinXp_slahe_gheire.Items[3].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_sh_hesab',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXp_slahe_gheire.Items[4].Visible:=true
  else
    frm_main.dxWinXp_slahe_gheire.Items[4].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_vahede_jens',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXp_slahe_gheire.Items[5].Visible:=true
  else
    frm_main.dxWinXp_slahe_gheire.Items[5].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_vahed',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXp_slahe_gheire.Items[6].Visible:=true
  else
    frm_main.dxWinXp_slahe_gheire.Items[6].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_sal',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXp_slahe_gheire.Items[7].Visible:=true
  else
    frm_main.dxWinXp_slahe_gheire.Items[7].Visible:=false;

  frm_main.dxWinXp_slahe_gheire.Collapsed:=true;
  ///////////////  nagdi ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_daryafte_bedehi',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinb_naghdi.Items[0].Visible:=true
  else
    frm_main.dxWinb_naghdi.Items[0].Visible:=false;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_pardakhte_bedehi',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinb_naghdi.Items[1].Visible:=true
  else
    frm_main.dxWinb_naghdi.Items[1].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_varize_sarmaye',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinb_naghdi.Items[2].Visible:=true
  else
    frm_main.dxWinb_naghdi.Items[2].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_variz_be_bank',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinb_naghdi.Items[3].Visible:=true
  else
    frm_main.dxWinb_naghdi.Items[3].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_entegal_az_san_be_bank',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinb_naghdi.Items[4].Visible:=true
  else
    frm_main.dxWinb_naghdi.Items[4].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_entegal_az_bank_be_sandog',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinb_naghdi.Items[5].Visible:=true
  else
    frm_main.dxWinb_naghdi.Items[5].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_beine_sandogha',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinb_naghdi.Items[6].Visible:=true
  else
    frm_main.dxWinb_naghdi.Items[6].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_bardasht_az_bank',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinb_naghdi.Items[7].Visible:=true
  else
    frm_main.dxWinb_naghdi.Items[7].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_bardasht_az_sandog',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinb_naghdi.Items[8].Visible:=true
  else
    frm_main.dxWinb_naghdi.Items[8].Visible:=false;

   frm_main.dxWinb_naghdi.Collapsed:=true;

  ///////////////  jadid ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_shakhs',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxbarjadid.Items[1].Visible:=true
  else
    frm_main.dxbarjadid.Items[1].Visible:=false;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_sandog',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxbarjadid.Items[2].Visible:=true
  else
    frm_main.dxbarjadid.Items[2].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_makan',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxbarjadid.Items[3].Visible:=true
  else
    frm_main.dxbarjadid.Items[3].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_bank',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxbarjadid.Items[4].Visible:=true
  else
    frm_main.dxbarjadid.Items[4].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_sh_hesab',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxbarjadid.Items[5].Visible:=true
  else
    frm_main.dxbarjadid.Items[5].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_check',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxbarjadid.Items[6].Visible:=true
  else
    frm_main.dxbarjadid.Items[6].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_vahed',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxbarjadid.Items[7].Visible:=true
  else
    frm_main.dxbarjadid.Items[7].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_sefaresh',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxbarjadid.Items[8].Visible:=true
  else
    frm_main.dxbarjadid.Items[8].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_yaddasht',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxbarjadid.Items[9].Visible:=true
  else
    frm_main.dxbarjadid.Items[9].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_sal',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxbarjadid.Items[10].Visible:=true
  else
    frm_main.dxbarjadid.Items[10].Visible:=false;

  frm_main.dxbarjadid.Collapsed:=true;
  ///////////////  gozaresh mali ////////////////

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_sandog',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_mali.Items[0].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_mali.Items[0].Visible:=false;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_bedehkar',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_mali.Items[1].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_mali.Items[1].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_talabkar',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_mali.Items[2].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_mali.Items[2].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_pardakhte_kharidar',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_mali.Items[3].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_mali.Items[3].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_pardakhte_shoma',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_mali.Items[4].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_mali.Items[4].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_sod',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_mali.Items[5].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_mali.Items[5].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_taraz',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_mali.Items[6].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_mali.Items[6].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_banki',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_mali.Items[7].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_mali.Items[7].Visible:=false;

  frm_main.dxWinXPBar_gozaresh_mali.Collapsed:=true;
  ///////////////  check ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','check_pas_kardan',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
  begin
    frm_main.dxWinXPBar_check.Items[0].Visible:=true;
    frm_main.suiSide_check_kharidar.Visible:=true;
  end
  else
  begin
    frm_main.dxWinXPBar_check.Items[0].Visible:=false;
    frm_main.suiSide_check_kharidar.Visible:=false;
  end;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','check_pass_shode',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_check.Items[1].Visible:=true
  else
    frm_main.dxWinXPBar_check.Items[1].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','check_pass_nashode',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_check.Items[2].Visible:=true
  else
    frm_main.dxWinXPBar_check.Items[2].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','check_hame',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_check.Items[3].Visible:=true
  else
    frm_main.dxWinXPBar_check.Items[3].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','check_pardakhti',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
  begin
    frm_main.dxWinXPBar_check.Items[4].Visible:=true;
    frm_main.suiSide_check_shoma.Visible:=true;
  end
  else
  begin
    frm_main.dxWinXPBar_check.Items[4].Visible:=false;
    frm_main.suiSide_check_shoma.Visible:=false;
  end;

  frm_main.dxWinXPBar_check.Collapsed:=true;
  ///////////////  koli ////////////////

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_kharid',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_koli.Items[0].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_koli.Items[0].Visible:=false;


  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_forosh',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_koli.Items[1].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_koli.Items[1].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_vorod_khoroj',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_koli.Items[2].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_koli.Items[2].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_kharidar',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_koli.Items[3].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_koli.Items[3].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_forohande',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_koli.Items[4].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_koli.Items[4].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_ashkhas',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_koli.Items[5].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_koli.Items[5].Visible:=false;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_roz',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    frm_main.dxWinXPBar_gozaresh_koli.Items[6].Visible:=true
  else
    frm_main.dxWinXPBar_gozaresh_koli.Items[6].Visible:=false;

 frm_main.dxWinXPBar_gozaresh_koli.Collapsed:=true;
end;


procedure TFrm_login.auto_back_up;
begin
  Datamarchive.ADOQuery_backup_path.SQL.Text:='select * from T_backup_path';
  Datamarchive.ADOQuery_backup_path.Open;

  if Datamarchive.ADOQuery_backup_path.Fields[0].AsString='' then
  begin
      MessageBox(Handle,'»—«Ì  ÂÌÂ ›«Ì· Å‘ Ì»«‰ Å«Ìê«Â œ«œÂ »Â ’Ê—  ŒÊœò«— Â‰ê«„ Œ—ÊÃ «“ »—‰«„Â ° „”Ì— –ŒÌ—Â ›«Ì· —« «‰ Œ«» ‰„«ÌÌœ .',' ÊÃÂ!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      Frm_auto_backup.ShowModal;
  end
  else
   begin
    frm_main.LMDClock1.Top:=frm_main.suiToolBar1.Top+frm_main.suiToolBar1.Height;
   end;
end;
procedure TFrm_login.taeed;
begin
if Elogin.Text<>'' then
      Edit1.Text:='notexite';

    if trim(e_username.Text)='' then
    begin
      MessageBox(Handle,'‰«„ ò«—»—Ì —« Ê«—œ ‰„«ÌÌœ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      exit;
    end;

    if Elogin.Text='' then
    begin
      MessageBox(Handle,'—„“ ⁄»Ê— —« Ê«—œ ‰„«ÌÌœ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      exit;
    end;
      if login then
        begin
            show_sotoh;
            if trim(e_username.Text)<>'admin' then
            begin
              frm_main.dxWinXp_slahe_gheire.Items[0].Visible:=false;
              frm_main.dxbarjadid.Items[0].Visible:=false;
            end
            else
            begin
              frm_main.dxWinXp_slahe_gheire.Items[0].Visible:=true;
              frm_main.dxbarjadid.Items[0].Visible:=true;
            end;

            if frm_main.suiSide_check_shoma.Visible=true then
              frm_main.show_chack_shoma_to_pas;

            if frm_main.suiSide_check_kharidar.Visible=true then
              frm_main.show_chack_to_pas;

           if DataM_final.ADOQ_T_pardakht_check_forosh.RecordCount >=1 then
             begin
                frm_main.suiSide_check_kharidar.Pop();
                frm_main.suiSide_check_kharidar.StayOn:=true;
             end;

           if DataM_final.ADOQ_T_pardakht_check_kharid.RecordCount >=1 then
             begin
                frm_main.suiSide_check_shoma.Pop();
                frm_main.suiSide_check_shoma.StayOn:=true;
             end;

            frm_main.show_yaddasht_rooz;
            frm_show_yaddasht.typ_yaddasht;
          if DataModule_gozaresh_tarkibi.ADOQuery_yaddasht.RecordCount >=1 then
          begin
            frm_show_yaddasht.ShowModal
          end;


           DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.SQL.Text:='select * from t_sefaresh where tarikh_residegi='+QuotedStr(Egettarikh.Text)+'and anjam='+QuotedStr('«‰Ã«„ ‰‘œ')+' order by tarikh_sefaresh,shakhs,tarikh_residegi';
           DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.Open;
           if DataModule_gozaresh_tarkibi.ADOQuery_sefaresh.RecordCount >=1 then
             begin
               frm_show_sefaresh.RadioGroup1.ItemIndex:=2;
               frm_show_sefaresh.show_sefaresh_emroz;
               frm_show_sefaresh.WindowState:=wsMaximized;
               frm_show_sefaresh.ShowModal;
            end;
          close;
        end
        else
        begin
         {MessageBox(Handle,'òœ Ê—ÊœÌ «‘ »«Â «”  ‘„« «Ã«“Â Ê—Êœ ‰œ«—Ìœ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
         close;}
        end;
end;
function TFrm_login.bug_tarikh:boolean;
begin
  bug_tarikh:=false;
  if (Egettarikh.Text[1]+Egettarikh.Text[2]+Egettarikh.Text[3]+Egettarikh.Text[4]>='1391')and(Egettarikh.Text[6]+Egettarikh.Text[7]>='06') then
  begin
     MessageBox(Handle,'« „«„  «—ÌŒ «” ›«œÂ «“ ‰—„ «›“«— ','copy right !',MB_OK or MB_ICONEXCLAMATION );
    bug_tarikh:=true;
  end;
end;
//////////////////  tarikh check ///////////////////
function TFrm_login.gettarikh:boolean;
begin

  _taghvim.Label1.Caption:='bbbbb';
  _Taghvim.ShowModal;
if _taghvim._str_date<>'' then
begin
  Egettarikh.Text:=_taghvim._str_date;
   frm_main.L_tarikh.Caption:=Frm_login.Egettarikh.Text;
   frm_main.L_roze_hafte.Caption:=_Taghvim.roz_hafte;
  gettarikh :=True;

  if bug_tarikh then
    begin
      if frm_main.Showing then
        frm_main.Close;
      close;
    end
end;



if Egettarikh.Text='' then
begin
     MessageBox(Handle,' «—ÌŒ «„—Ê“ —« Ê«—œ ‰„«ÌÌœ ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
     gettarikh :=False ;
end;



end;
/////////////////////////////////////////////
function TFrm_login.checkserialhard:string;
begin
  ////////// check serial hard ///////////
   { Dmlistha.ADOlogin.SQL.Text:='select* from t_login';
    Dmlistha.ADOlogin.Open;
    if (Dmlistha.ADOloginserial.AsString='') then
      begin
        Dmlistha.ADOlogin.SQL.Text:='update t_login set serial='+QuotedStr(frmgetserial.gethardserial('c'));
        Dmlistha.ADOlogin.ExecSQL;
      end
    else }
      checkserialhard:=frmgetserial.gethardserial('c');
  ///////////////////////////////////////
end;
function TFrm_login.bugoafserial:boolean;
var s:string;
begin
  bugoafserial:=false;
{Emami Vahid Maghaze ===>volser=F0F451AF}
  {HASAN POR  STORE SYSTEM  ===>volser=50B37BB2}
  {HASAN POR  HOME  SYSTEM  ===>volser=1CAAD43B}
  //S:='volser=60CD54BC';  //for peiravi HOME SYSTEM

 {Hashemi Ali  SYSTEM  ===>volser=A2C2F6AC}
{my HOME  SYSTEM  ===>volser=D8857F22}
{kharidar    HOME  SYSTEM  ===>volser=54073C93}
{My labtob  SYSTEM  ===>volser=FE4CA15F}
{sherkat ====>volser=1CB987AA}
  
   S:='volser=F0F451AF';
    if not(s=checkserialhard) then
      begin
        MessageBox(Handle,'ÿ»ﬁ ﬁÊ«‰Ì‰ ÕﬁÊﬁÌ ‰—„ «›“«—° ‘„« ‰„Ì  Ê«‰Ìœ «“ «Ì‰ ‰—„ «›“«— «” ›«œÂ ‰„«ÌÌœ','Copy Right',MB_OK or MB_ICONWARNING or MB_RIGHT or MB_RTLREADING);
        bugoafserial:=true;
      end;
end;
{******************************************************}
function TFrm_login.bug_forosh:boolean;
begin
  bug_forosh:=false;
  Dmlistha.adolistforosh.SQL.Text:='select * from forosh_jens';
  Dmlistha.adolistforosh.Open;
  if Dmlistha.adolistforosh.RecordCount > 5000 then
    begin
      bug_forosh:=true;
      MessageBox(Handle,'ÿ»ﬁ ﬁÊ«‰Ì‰ ÕﬁÊﬁÌ ‰—„ «›“«—° ‘„« ‰„Ì  Ê«‰Ìœ «“ «Ì‰ ‰—„ «›“«— «” ›«œÂ ‰„«ÌÌœ','Copy Right Of Sels',MB_OK or MB_ICONWARNING or MB_RIGHT or MB_RTLREADING);
      close;
    end;
end;
function TFrm_login.bug_kharid:boolean;
begin
  bug_kharid:=false;
  Dmlistha.ADOkharidha.SQL.Text:='select * from jens_';
  Dmlistha.ADOkharidha.Open;
  if Dmlistha.ADOkharidha.RecordCount > 5000 then
    begin
      bug_kharid:=true;
      MessageBox(Handle,'ÿ»ﬁ ﬁÊ«‰Ì‰ ÕﬁÊﬁÌ ‰—„ «›“«—° ‘„« ‰„Ì  Ê«‰Ìœ «“ «Ì‰ ‰—„ «›“«— «” ›«œÂ ‰„«ÌÌœ','Copy right Of Buys',MB_OK or MB_ICONWARNING or MB_RIGHT or MB_RTLREADING);
      close;
    end;
end;
{******************************************************}
function TFrm_login.getserialhardfrmbatabase:string;
begin
  {Dmlistha.ADOlogin.SQL.Text:='select * from t_login';
  Dmlistha.ADOlogin.Open;
  getserialhardfrmbatabase:=Dmlistha.ADOloginserial.AsString; }
end;
function TFrm_login.login:boolean;
var pass:string;
begin
   login:=false;
   pass:=getloginfromdatabase;

   if pass='not exists' then
   begin
    exit;
   end
   else
    begin
      if Elogin.Text=pass then
      begin
        login:=true;
        frm_main.L_karbar.Caption:=Dmlistha.ADOloginkarbar.AsString;
      end
      else
      begin
        login:=false;
        MessageBox(Handle,'—„“ ⁄»Ê— Ê«—œ ‘œÂ ‰«œ—”  „Ì»«‘œ.','Œÿ«!',MB_OK or MB_ICONWARNING or MB_RIGHT or MB_RTLREADING);
      end;
   end;
end;
function TFrm_login.getloginfromdatabase:string;
begin
  Dmlistha.ADOlogin.SQL.Text:='select * from t_login where username='+QuotedStr(e_username.Text);
  Dmlistha.ADOlogin.Open;

  if Dmlistha.ADOlogin.RecordCount<=0 then
  begin
      getloginfromdatabase:='not exists';
      MessageBox(Handle,'ò«—»—Ì »« ‰«„ ò«—»—Ì Ê«—œ ‘œÂ ÊÃÊœ ‰œ«—œ.','Œÿ«!',MB_OK or MB_ICONWARNING or MB_RIGHT or MB_RTLREADING);
      Exit;
  end
  else
  begin
    getloginfromdatabase:=Dmlistha.ADOloginlogin.AsString;
  end;
end;

procedure TFrm_login.suibexitClick(Sender: TObject);
begin
    Edit1.Text:='exite';
    close;
end;

procedure TFrm_login.FormShow(Sender: TObject);
begin

  //e_username.Clear;
  e_username.Text:='admin';
  Elogin.Clear;

  e_username.SetFocus;
  
  if Frm_login.L_logof.Caption='no' then
  begin
   Egettarikh.Text :='';
   while not gettarikh do
    gettarikh;

    MessageBox(Handle,'«” ›«œÂ ¬“„«Ì‘Ì «“ ‰—„ «›“«—'+'   ! BETA VERSION    ','Copy Right',MB_OK or MB_ICONWARNING or MB_RIGHT or MB_RTLREADING);

    if bug_tarikh then
    begin
      if frm_main.Showing then
        frm_main.Close;
      close;
    end;

    {if bugoafserial then
    begin
      if frm_main.Showing then
        frm_main.Close;
    close;
    end;}

    if bug_kharid then
    begin
      if frm_main.Showing then
        frm_main.Close;
      close;
    end;

    if bug_forosh then
    begin
      if frm_main.Showing then
        frm_main.Close;
      close;
    end;
   end;

  //////////////////////////////
end;

procedure TFrm_login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Edit1.Text='exite' then
      frm_main.Close;
  /////////////////////////
  if Edit1.Text='notexite' then
      if not login then
          frm_main.Close;
  if (Edit1.Text='') then
          frm_main.Close;
  auto_back_up;
end;

procedure TFrm_login.FormActivate(Sender: TObject);
begin
  Edit1.Text:='';
end;

procedure TFrm_login.suiBtaeedClick(Sender: TObject);
begin
  taeed;
end;

end.
