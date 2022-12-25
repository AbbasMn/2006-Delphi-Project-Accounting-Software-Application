unit unt_sathe_dastrasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIButton;

type
  Tfrm_sathe_dastrasi = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    forosh_forosh: TCheckBox;
    forosh_sarie: TCheckBox;
    forosh_factor: TCheckBox;
    forosh_jens: TCheckBox;
    forosh_foroshha: TCheckBox;
    GroupBox3: TGroupBox;
    nagdi_daryafte_bedehi: TCheckBox;
    nagdi_pardakhte_bedehi: TCheckBox;
    nagdi_varize_sarmaye: TCheckBox;
    CheckBox13: TCheckBox;
    nagdi_variz_be_bank: TCheckBox;
    nagdi_entegal_az_san_be_bank: TCheckBox;
    nagdi_entegal_az_bank_be_sandog: TCheckBox;
    nagdi_beine_sandogha: TCheckBox;
    kharid_jens: TCheckBox;
    kharid_az_for: TCheckBox;
    kharid_factor: TCheckBox;
    kharid_kharid: TCheckBox;
    GroupBox4: TGroupBox;
    check_pas_kardan: TCheckBox;
    check_pass_shode: TCheckBox;
    check_pass_nashode: TCheckBox;
    check_hame: TCheckBox;
    check_pardakhti: TCheckBox;
    GroupBox5: TGroupBox;
    gozaesh_mali_sandog: TCheckBox;
    gozaesh_mali_bedehkar: TCheckBox;
    gozaesh_mali_talabkar: TCheckBox;
    gozaesh_mali_pardakhte_kharidar: TCheckBox;
    gozaesh_mali_pardakhte_shoma: TCheckBox;
    gozaesh_mali_sod: TCheckBox;
    gozaesh_mali_taraz: TCheckBox;
    gozaesh_mali_banki: TCheckBox;
    GroupBox6: TGroupBox;
    hazine_jadid: TCheckBox;
    hazine_sabt: TCheckBox;
    hazine_sabt_shode: TCheckBox;
    hazine_mabalegh: TCheckBox;
    hazine_eslah: TCheckBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    makan_majazi: TCheckBox;
    makan_har_makan: TCheckBox;
    makan_makanha: TCheckBox;
    makan_jabejaei: TCheckBox;
    makan_eftetah: TCheckBox;
    GroupBox10: TGroupBox;
    geyre_mali_shakhs: TCheckBox;
    geyre_mali_jens: TCheckBox;
    geyre_mali_bank: TCheckBox;
    geyre_mali_sh_hesab: TCheckBox;
    geyre_mali_vahede_jens: TCheckBox;
    geyre_mali_vahed: TCheckBox;
    GroupBox11: TGroupBox;
    koli_kharid: TCheckBox;
    koli_forosh: TCheckBox;
    CheckBox72: TCheckBox;
    koli_vorod_khoroj: TCheckBox;
    koli_ashkhas: TCheckBox;
    koli_kharidar: TCheckBox;
    koli_forohande: TCheckBox;
    GroupBox12: TGroupBox;
    geyre_sefareshat: TCheckBox;
    geyre_yaddasht: TCheckBox;
    geyre_mianbor: TCheckBox;
    CheckBox80: TCheckBox;
    geyre_mashinhesab: TCheckBox;
    geyre_seda: TCheckBox;
    geyre_printer: TCheckBox;
    geyre_mediaplayer: TCheckBox;
    geyre_explorer: TCheckBox;
    jadid_sh_hesab: TCheckBox;
    jadid_bank: TCheckBox;
    jadid_makan: TCheckBox;
    jadid_shakhs: TCheckBox;
    jadid_yaddasht: TCheckBox;
    jadid_sandog: TCheckBox;
    jadid_sefaresh: TCheckBox;
    jadid_vahed: TCheckBox;
    jadid_check: TCheckBox;
    GroupBox9: TGroupBox;
    eslahe_mali_geymate_forosh: TCheckBox;
    eslahe_mali_geymate_kharid: TCheckBox;
    eslahe_mali_forosh: TCheckBox;
    CheckBox55: TCheckBox;
    eslahe_mali_kharid: TCheckBox;
    eslahe_mali_pardakhte_kharidar: TCheckBox;
    eslahe_mali_pardakht_be_foroshande: TCheckBox;
    eslahe_mali_kharidar: TCheckBox;
    eslahe_mali_foroshande: TCheckBox;
    nagdi_bardasht_az_bank: TCheckBox;
    jadid_sal: TCheckBox;
    eslahe_mali_banki: TCheckBox;
    geyre_mali_sal: TCheckBox;
    koli_roz: TCheckBox;
    nagdi_bardasht_az_sandog: TCheckBox;
    L_karbar1: TLabel;
    L_g_text: TLabel;
    suiBtaeed1: TsuiButton;
    L_karbar: TLabel;
    procedure suiBtaeed1Click(Sender: TObject);
    procedure get_dastresi_from_db;
    procedure FormShow(Sender: TObject);
    procedure kharid_kharidClick(Sender: TObject);
    procedure kharid_factorClick(Sender: TObject);
    procedure kharid_az_forClick(Sender: TObject);
    procedure kharid_jensClick(Sender: TObject);
    procedure forosh_foroshClick(Sender: TObject);
    procedure forosh_sarieClick(Sender: TObject);
    procedure forosh_factorClick(Sender: TObject);
    procedure forosh_jensClick(Sender: TObject);
    procedure forosh_foroshhaClick(Sender: TObject);
    procedure makan_majaziClick(Sender: TObject);
    procedure makan_har_makanClick(Sender: TObject);
    procedure makan_makanhaClick(Sender: TObject);
    procedure makan_jabejaeiClick(Sender: TObject);
    procedure makan_eftetahClick(Sender: TObject);
    procedure hazine_jadidClick(Sender: TObject);
    procedure hazine_sabtClick(Sender: TObject);
    procedure hazine_sabt_shodeClick(Sender: TObject);
    procedure hazine_mabaleghClick(Sender: TObject);
    procedure hazine_eslahClick(Sender: TObject);
    procedure nagdi_daryafte_bedehiClick(Sender: TObject);
    procedure nagdi_pardakhte_bedehiClick(Sender: TObject);
    procedure nagdi_varize_sarmayeClick(Sender: TObject);
    procedure nagdi_variz_be_bankClick(Sender: TObject);
    procedure nagdi_entegal_az_san_be_bankClick(Sender: TObject);
    procedure nagdi_entegal_az_bank_be_sandogClick(Sender: TObject);
    procedure nagdi_beine_sandoghaClick(Sender: TObject);
    procedure nagdi_bardasht_az_bankClick(Sender: TObject);
    procedure nagdi_bardasht_az_sandogClick(Sender: TObject);
    procedure eslahe_mali_geymate_foroshClick(Sender: TObject);
    procedure eslahe_mali_geymate_kharidClick(Sender: TObject);
    procedure eslahe_mali_foroshClick(Sender: TObject);
    procedure eslahe_mali_kharidClick(Sender: TObject);
    procedure eslahe_mali_pardakhte_kharidarClick(Sender: TObject);
    procedure eslahe_mali_pardakht_be_foroshandeClick(Sender: TObject);
    procedure eslahe_mali_kharidarClick(Sender: TObject);
    procedure eslahe_mali_foroshandeClick(Sender: TObject);
    procedure eslahe_mali_bankiClick(Sender: TObject);
    procedure geyre_sefareshatClick(Sender: TObject);
    procedure geyre_yaddashtClick(Sender: TObject);
    procedure geyre_mianborClick(Sender: TObject);
    procedure geyre_mashinhesabClick(Sender: TObject);
    procedure geyre_sedaClick(Sender: TObject);
    procedure geyre_printerClick(Sender: TObject);
    procedure geyre_mediaplayerClick(Sender: TObject);
    procedure geyre_explorerClick(Sender: TObject);
    procedure geyre_mali_shakhsClick(Sender: TObject);
    procedure geyre_mali_jensClick(Sender: TObject);
    procedure geyre_mali_bankClick(Sender: TObject);
    procedure geyre_mali_sh_hesabClick(Sender: TObject);
    procedure geyre_mali_vahede_jensClick(Sender: TObject);
    procedure geyre_mali_vahedClick(Sender: TObject);
    procedure geyre_mali_salClick(Sender: TObject);
    procedure jadid_shakhsClick(Sender: TObject);
    procedure jadid_sandogClick(Sender: TObject);
    procedure jadid_makanClick(Sender: TObject);
    procedure jadid_bankClick(Sender: TObject);
    procedure jadid_sh_hesabClick(Sender: TObject);
    procedure jadid_checkClick(Sender: TObject);
    procedure jadid_vahedClick(Sender: TObject);
    procedure jadid_sefareshClick(Sender: TObject);
    procedure jadid_yaddashtClick(Sender: TObject);
    procedure jadid_salClick(Sender: TObject);
    procedure gozaesh_mali_sandogClick(Sender: TObject);
    procedure gozaesh_mali_bedehkarClick(Sender: TObject);
    procedure gozaesh_mali_talabkarClick(Sender: TObject);
    procedure gozaesh_mali_pardakhte_kharidarClick(Sender: TObject);
    procedure gozaesh_mali_pardakhte_shomaClick(Sender: TObject);
    procedure gozaesh_mali_sodClick(Sender: TObject);
    procedure gozaesh_mali_tarazClick(Sender: TObject);
    procedure gozaesh_mali_bankiClick(Sender: TObject);
    procedure check_pas_kardanClick(Sender: TObject);
    procedure check_pass_shodeClick(Sender: TObject);
    procedure check_pass_nashodeClick(Sender: TObject);
    procedure check_hameClick(Sender: TObject);
    procedure check_pardakhtiClick(Sender: TObject);
    procedure koli_kharidClick(Sender: TObject);
    procedure koli_foroshClick(Sender: TObject);
    procedure koli_vorod_khorojClick(Sender: TObject);
    procedure koli_kharidarClick(Sender: TObject);
    procedure koli_forohandeClick(Sender: TObject);
    procedure koli_ashkhasClick(Sender: TObject);
    procedure koli_rozClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    s:string;
  end;

var
  frm_sathe_dastrasi: Tfrm_sathe_dastrasi;

implementation

uses unt_DataM_dastrasi, unt_eslah_forosh;

{$R *.dfm}
procedure Tfrm_sathe_dastrasi.get_dastresi_from_db;
begin
  DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='select * from T_dastresi where karbar='+QuotedStr(L_karbar.Caption);
  DataM_dastrasi.ADOQ_dastrasi.Open;


  ///////////////  kharid  ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','kharid_kharid',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    kharid_kharid.Checked:=True
  else
    kharid_kharid.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','kharid_factor',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    kharid_factor.Checked:=True
  else
    kharid_factor.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','kharid_az_for',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    kharid_az_for.Checked:=True
  else
    kharid_az_for.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','kharid_jens',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    kharid_jens.Checked:=True
  else
    kharid_jens.Checked:=False;

  ///////////////  forosh ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','forosh_forosh',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    forosh_forosh.Checked:=True
  else
    forosh_forosh.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','forosh_sarie',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    forosh_sarie.Checked:=True
  else
    forosh_sarie.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','forosh_factor',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    forosh_factor.Checked:=True
  else
    forosh_factor.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','forosh_jens',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    forosh_jens.Checked:=True
  else
    forosh_jens.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','forosh_foroshha',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    forosh_foroshha.Checked:=True
  else
    forosh_foroshha.Checked:=False;

  ///////////////  makan ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','makan_majazi',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    makan_majazi.Checked:=True
  else
    makan_majazi.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','makan_har_makan',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    makan_har_makan.Checked:=True
  else
    makan_har_makan.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','makan_makanha',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    makan_makanha.Checked:=True
  else
    makan_makanha.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','makan_jabejaei',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    makan_jabejaei.Checked:=True
  else
    makan_jabejaei.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','makan_eftetah',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    makan_eftetah.Checked:=True
  else
    makan_eftetah.Checked:=False;

  ///////////////  hazine ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','hazine_jadid',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    hazine_jadid.Checked:=True
  else
    hazine_jadid.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','hazine_sabt',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    hazine_sabt.Checked:=True
  else
    hazine_sabt.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','hazine_sabt_shode',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    hazine_sabt_shode.Checked:=True
  else
    hazine_sabt_shode.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','hazine_mabalegh',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    hazine_mabalegh.Checked:=True
  else
    hazine_mabalegh.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','hazine_eslah',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    hazine_eslah.Checked:=True
  else
    hazine_eslah.Checked:=False;

  ///////////////  eslahe mali ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_geymate_forosh',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    eslahe_mali_geymate_forosh.Checked:=True
  else
    eslahe_mali_geymate_forosh.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_geymate_kharid',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    eslahe_mali_geymate_kharid.Checked:=True
  else
    eslahe_mali_geymate_kharid.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_forosh',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    eslahe_mali_forosh.Checked:=True
  else
    eslahe_mali_forosh.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_kharid',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    eslahe_mali_kharid.Checked:=True
  else
    eslahe_mali_kharid.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_pardakhte_kharidar',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    eslahe_mali_pardakhte_kharidar.Checked:=True
  else
    eslahe_mali_pardakhte_kharidar.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_pardakht_be_foroshande',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    eslahe_mali_pardakht_be_foroshande.Checked:=True
  else
    eslahe_mali_pardakht_be_foroshande.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_kharidar',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    eslahe_mali_kharidar.Checked:=True
  else
    eslahe_mali_kharidar.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_foroshande',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    eslahe_mali_foroshande.Checked:=True
  else
    eslahe_mali_foroshande.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','eslahe_mali_banki',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    eslahe_mali_banki.Checked:=True
  else
    eslahe_mali_banki.Checked:=False;

  ///////////////  geyre ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_sefareshat',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_sefareshat.Checked:=True
  else
    geyre_sefareshat.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_yaddasht',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_yaddasht.Checked:=True
  else
    geyre_yaddasht.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mianbor',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_mianbor.Checked:=True
  else
    geyre_mianbor.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mashinhesab',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_mashinhesab.Checked:=True
  else
    geyre_mashinhesab.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_seda',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_seda.Checked:=True
  else
    geyre_seda.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_printer',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_printer.Checked:=True
  else
    geyre_printer.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mediaplayer',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_mediaplayer.Checked:=True
  else
    geyre_mediaplayer.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_explorer',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_explorer.Checked:=True
  else
    geyre_explorer.Checked:=False;

  ///////////////  geyre mali ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_shakhs',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_mali_shakhs.Checked:=True
  else
    geyre_mali_shakhs.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_jens',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_mali_jens.Checked:=True
  else
    geyre_mali_jens.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_bank',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_mali_bank.Checked:=True
  else
    geyre_mali_bank.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_sh_hesab',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_mali_sh_hesab.Checked:=True
  else
    geyre_mali_sh_hesab.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_vahede_jens',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_mali_vahede_jens.Checked:=True
  else
    geyre_mali_vahede_jens.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_vahed',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_mali_vahed.Checked:=True
  else
    geyre_mali_vahed.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','geyre_mali_sal',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    geyre_mali_sal.Checked:=True
  else
    geyre_mali_sal.Checked:=False;

  ///////////////  nagdi ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_daryafte_bedehi',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    nagdi_daryafte_bedehi.Checked:=True
  else
    nagdi_daryafte_bedehi.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_pardakhte_bedehi',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    nagdi_pardakhte_bedehi.Checked:=True
  else
    nagdi_pardakhte_bedehi.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_varize_sarmaye',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    nagdi_varize_sarmaye.Checked:=True
  else
    nagdi_varize_sarmaye.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_variz_be_bank',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    nagdi_variz_be_bank.Checked:=True
  else
    nagdi_variz_be_bank.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_entegal_az_san_be_bank',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    nagdi_entegal_az_san_be_bank.Checked:=True
  else
    nagdi_entegal_az_san_be_bank.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_entegal_az_bank_be_sandog',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    nagdi_entegal_az_bank_be_sandog.Checked:=True
  else
    nagdi_entegal_az_bank_be_sandog.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_beine_sandogha',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    nagdi_beine_sandogha.Checked:=True
  else
    nagdi_beine_sandogha.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_bardasht_az_bank',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    nagdi_bardasht_az_bank.Checked:=True
  else
    nagdi_bardasht_az_bank.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','nagdi_bardasht_az_sandog',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    nagdi_bardasht_az_sandog.Checked:=True
  else
    nagdi_bardasht_az_sandog.Checked:=False;

  ///////////////  jadid ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_shakhs',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    jadid_shakhs.Checked:=True
  else
    jadid_shakhs.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_sandog',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    jadid_sandog.Checked:=True
  else
    jadid_sandog.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_makan',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    jadid_makan.Checked:=True
  else
    jadid_makan.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_bank',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    jadid_bank.Checked:=True
  else
    jadid_bank.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_sh_hesab',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    jadid_sh_hesab.Checked:=True
  else
    jadid_sh_hesab.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_check',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    jadid_check.Checked:=True
  else
    jadid_check.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_sefaresh',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    jadid_sefaresh.Checked:=True
  else
    jadid_sefaresh.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_yaddasht',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    jadid_yaddasht.Checked:=True
  else
    jadid_yaddasht.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','jadid_sal',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    jadid_sal.Checked:=True
  else
    jadid_sal.Checked:=False;

  ///////////////  gozaresh mali ////////////////

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_sandog',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    gozaesh_mali_sandog.Checked:=True
  else
    gozaesh_mali_sandog.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_bedehkar',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    gozaesh_mali_bedehkar.Checked:=True
  else
    gozaesh_mali_bedehkar.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_talabkar',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    gozaesh_mali_talabkar.Checked:=True
  else
    gozaesh_mali_talabkar.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_pardakhte_kharidar',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    gozaesh_mali_pardakhte_kharidar.Checked:=True
  else
    gozaesh_mali_pardakhte_kharidar.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_pardakhte_shoma',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    gozaesh_mali_pardakhte_shoma.Checked:=True
  else
    gozaesh_mali_pardakhte_shoma.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_sod',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    gozaesh_mali_sod.Checked:=True
  else
    gozaesh_mali_sod.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_taraz',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    gozaesh_mali_taraz.Checked:=True
  else
    gozaesh_mali_taraz.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','gozaesh_mali_banki',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    gozaesh_mali_banki.Checked:=True
  else
    gozaesh_mali_banki.Checked:=False;

  ///////////////  check ////////////////
  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','check_pas_kardan',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    check_pas_kardan.Checked:=True
  else
    check_pas_kardan.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','check_pass_shode',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    check_pass_shode.Checked:=True
  else
    check_pass_shode.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','check_pass_nashode',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    check_pass_nashode.Checked:=True
  else
    check_pass_nashode.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','check_hame',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    check_hame.Checked:=True
  else
    check_hame.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','check_pardakhti',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    check_pardakhti.Checked:=True
  else
    check_pardakhti.Checked:=False;

  ///////////////  koli ////////////////

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_kharid',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    koli_kharid.Checked:=True
  else
    koli_kharid.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_forosh',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    koli_forosh.Checked:=True
  else
    koli_forosh.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_vorod_khoroj',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    koli_vorod_khoroj.Checked:=True
  else
    koli_vorod_khoroj.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_kharidar',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    koli_kharidar.Checked:=True
  else
    koli_kharidar.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_forohande',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    koli_forohande.Checked:=True
  else
    koli_forohande.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_ashkhas',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    koli_ashkhas.Checked:=True
  else
    koli_ashkhas.Checked:=False;

  DataM_dastrasi.ADOQ_dastrasi.Locate('dastresi','koli_roz',[]);
  if DataM_dastrasi.ADOQ_dastrasipermit.AsBoolean=true then
    koli_roz.Checked:=True
  else
    koli_roz.Checked:=False;
end;

procedure Tfrm_sathe_dastrasi.suiBtaeed1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_sathe_dastrasi.FormShow(Sender: TObject);
begin
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.kharid_kharidClick(Sender: TObject);
begin
  if kharid_kharid.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('kharid_kharid');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('kharid_kharid');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;

end;

procedure Tfrm_sathe_dastrasi.kharid_factorClick(Sender: TObject);
begin
  if kharid_factor.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('kharid_factor');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('kharid_factor');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.kharid_az_forClick(Sender: TObject);
begin
  if kharid_az_for.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('kharid_az_for');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('kharid_az_for');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.kharid_jensClick(Sender: TObject);
begin
  if kharid_jens.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('kharid_jens');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('kharid_jens');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.forosh_foroshClick(Sender: TObject);
begin
  if forosh_forosh.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('forosh_forosh');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('forosh_forosh');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.forosh_sarieClick(Sender: TObject);
begin
  if forosh_sarie.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('forosh_sarie');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('forosh_sarie');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.forosh_factorClick(Sender: TObject);
begin
  if forosh_factor.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('forosh_factor');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('forosh_factor');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.forosh_jensClick(Sender: TObject);
begin
  if forosh_jens.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('forosh_jens');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('forosh_jens');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.forosh_foroshhaClick(Sender: TObject);
begin
  if forosh_foroshha.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('forosh_foroshha');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('forosh_foroshha');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.makan_majaziClick(Sender: TObject);
begin
  if makan_majazi.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('makan_majazi');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('makan_majazi');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.makan_har_makanClick(Sender: TObject);
begin
  if makan_har_makan.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('makan_har_makan');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('makan_har_makan');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.makan_makanhaClick(Sender: TObject);
begin
  if makan_makanha.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('makan_makanha');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('makan_makanha');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.makan_jabejaeiClick(Sender: TObject);
begin
  if makan_jabejaei.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('makan_jabejaei');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('makan_jabejaei');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.makan_eftetahClick(Sender: TObject);
begin
  if makan_eftetah.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('makan_eftetah');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('makan_eftetah');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.hazine_jadidClick(Sender: TObject);
begin
  if hazine_jadid.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('hazine_jadid');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('hazine_jadid');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.hazine_sabtClick(Sender: TObject);
begin
  if hazine_sabt.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('hazine_sabt');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('hazine_sabt');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.hazine_sabt_shodeClick(Sender: TObject);
begin
  if hazine_sabt_shode.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('hazine_sabt_shode');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('hazine_sabt_shode');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.hazine_mabaleghClick(Sender: TObject);
begin
  if hazine_mabalegh.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('hazine_mabalegh');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('hazine_mabalegh');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.hazine_eslahClick(Sender: TObject);
begin
  if hazine_eslah.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('hazine_eslah');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('hazine_eslah');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.nagdi_daryafte_bedehiClick(Sender: TObject);
begin
  if nagdi_daryafte_bedehi.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_daryafte_bedehi');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_daryafte_bedehi');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.nagdi_pardakhte_bedehiClick(Sender: TObject);
begin
  if nagdi_pardakhte_bedehi.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_pardakhte_bedehi');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_pardakhte_bedehi');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.nagdi_varize_sarmayeClick(Sender: TObject);
begin
  if nagdi_varize_sarmaye.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_varize_sarmaye');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_varize_sarmaye');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.nagdi_variz_be_bankClick(Sender: TObject);
begin
  if nagdi_variz_be_bank.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_variz_be_bank');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_variz_be_bank');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.nagdi_entegal_az_san_be_bankClick(
  Sender: TObject);
begin
  if nagdi_entegal_az_san_be_bank.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_entegal_az_san_be_bank');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_entegal_az_san_be_bank');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.nagdi_entegal_az_bank_be_sandogClick(
  Sender: TObject);
begin
  if nagdi_entegal_az_bank_be_sandog.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_entegal_az_bank_be_sandog');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_entegal_az_bank_be_sandog');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.nagdi_beine_sandoghaClick(Sender: TObject);
begin
  if nagdi_beine_sandogha.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_beine_sandogha');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_beine_sandogha');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.nagdi_bardasht_az_bankClick(Sender: TObject);
begin
  if nagdi_bardasht_az_bank.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_bardasht_az_bank');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_bardasht_az_bank');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.nagdi_bardasht_az_sandogClick(
  Sender: TObject);
begin
  if nagdi_bardasht_az_sandog.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_bardasht_az_sandog');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('nagdi_bardasht_az_sandog');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.eslahe_mali_geymate_foroshClick(
  Sender: TObject);
begin
  if eslahe_mali_geymate_forosh.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_geymate_forosh');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_geymate_forosh');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.eslahe_mali_geymate_kharidClick(
  Sender: TObject);
begin
  if eslahe_mali_geymate_kharid.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_geymate_kharid');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_geymate_kharid');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.eslahe_mali_foroshClick(Sender: TObject);
begin
  if eslahe_mali_forosh.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_forosh');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_forosh');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.eslahe_mali_kharidClick(Sender: TObject);
begin
  if eslahe_mali_kharid.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_kharid');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_kharid');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.eslahe_mali_pardakhte_kharidarClick(
  Sender: TObject);
begin
  if eslahe_mali_pardakhte_kharidar.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_pardakhte_kharidar');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_pardakhte_kharidar');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.eslahe_mali_pardakht_be_foroshandeClick(
  Sender: TObject);
begin
  if eslahe_mali_pardakht_be_foroshande.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_pardakht_be_foroshande');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_pardakht_be_foroshande');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.eslahe_mali_kharidarClick(Sender: TObject);
begin
  if eslahe_mali_kharidar.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_kharidar');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_kharidar');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.eslahe_mali_foroshandeClick(Sender: TObject);
begin
  if eslahe_mali_foroshande.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_foroshande');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_foroshande');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.eslahe_mali_bankiClick(Sender: TObject);
begin
  if eslahe_mali_banki.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_banki');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('eslahe_mali_banki');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_sefareshatClick(Sender: TObject);
begin
  if geyre_sefareshat.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_sefareshat');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_sefareshat');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_yaddashtClick(Sender: TObject);
begin
  if geyre_yaddasht.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_yaddasht');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_yaddasht');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_mianborClick(Sender: TObject);
begin
  if geyre_mianbor.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mianbor');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mianbor');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_mashinhesabClick(Sender: TObject);
begin
  if geyre_mashinhesab.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mashinhesab');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mashinhesab');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_sedaClick(Sender: TObject);
begin
  if geyre_seda.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_seda');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_seda');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_printerClick(Sender: TObject);
begin
  if geyre_printer.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_printer');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_printer');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_mediaplayerClick(Sender: TObject);
begin
  if geyre_mediaplayer.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mediaplayer');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mediaplayer');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_explorerClick(Sender: TObject);
begin
  if geyre_explorer.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_explorer');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_explorer');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_mali_shakhsClick(Sender: TObject);
begin
  if geyre_mali_shakhs.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_shakhs');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_shakhs');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_mali_jensClick(Sender: TObject);
begin
  if geyre_mali_jens.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_jens');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_jens');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_mali_bankClick(Sender: TObject);
begin
  if geyre_mali_bank.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_bank');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_bank');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_mali_sh_hesabClick(Sender: TObject);
begin
  if geyre_mali_sh_hesab.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_sh_hesab');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_sh_hesab');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_mali_vahede_jensClick(Sender: TObject);
begin
  if geyre_mali_vahede_jens.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_vahede_jens');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_vahede_jens');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_mali_vahedClick(Sender: TObject);
begin
  if geyre_mali_vahed.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_vahed');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_vahed');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.geyre_mali_salClick(Sender: TObject);
begin
  if geyre_mali_sal.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_sal');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('geyre_mali_sal');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.jadid_shakhsClick(Sender: TObject);
begin
  if jadid_shakhs.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_shakhs');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_shakhs');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.jadid_sandogClick(Sender: TObject);
begin
  if jadid_sandog.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_sandog');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_sandog');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.jadid_makanClick(Sender: TObject);
begin
  if jadid_makan.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_makan');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_makan');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.jadid_bankClick(Sender: TObject);
begin
  if jadid_bank.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_bank');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_bank');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.jadid_sh_hesabClick(Sender: TObject);
begin
  if jadid_sh_hesab.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_sh_hesab');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_sh_hesab');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.jadid_checkClick(Sender: TObject);
begin
  if jadid_check.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_check');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_check');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.jadid_vahedClick(Sender: TObject);
begin
  if jadid_vahed.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_vahed');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_vahed');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.jadid_sefareshClick(Sender: TObject);
begin
  if jadid_sefaresh.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_sefaresh');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_sefaresh');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.jadid_yaddashtClick(Sender: TObject);
begin
  if jadid_yaddasht.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_yaddasht');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_yaddasht');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.jadid_salClick(Sender: TObject);
begin
  if jadid_sal.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_sal');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('jadid_sal');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.gozaesh_mali_sandogClick(Sender: TObject);
begin
  if gozaesh_mali_sandog.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_sandog');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_sandog');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.gozaesh_mali_bedehkarClick(Sender: TObject);
begin
  if gozaesh_mali_bedehkar.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_bedehkar');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_bedehkar');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.gozaesh_mali_talabkarClick(Sender: TObject);
begin
  if gozaesh_mali_talabkar.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_talabkar');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_talabkar');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.gozaesh_mali_pardakhte_kharidarClick(
  Sender: TObject);
begin
  if gozaesh_mali_pardakhte_kharidar.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_pardakhte_kharidar');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_pardakhte_kharidar');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.gozaesh_mali_pardakhte_shomaClick(
  Sender: TObject);
begin
  if gozaesh_mali_pardakhte_shoma.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_pardakhte_shoma');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_pardakhte_shoma');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.gozaesh_mali_sodClick(Sender: TObject);
begin
  if gozaesh_mali_sod.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_sod');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_sod');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.gozaesh_mali_tarazClick(Sender: TObject);
begin
  if gozaesh_mali_taraz.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_taraz');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_taraz');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.gozaesh_mali_bankiClick(Sender: TObject);
begin
  if gozaesh_mali_banki.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_banki');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('gozaesh_mali_banki');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.check_pas_kardanClick(Sender: TObject);
begin
  if check_pas_kardan.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('check_pas_kardan');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('check_pas_kardan');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.check_pass_shodeClick(Sender: TObject);
begin
  if check_pass_shode.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('check_pass_shode');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('check_pass_shode');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.check_pass_nashodeClick(Sender: TObject);
begin
  if check_pass_nashode.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('check_pass_nashode');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('check_pass_nashode');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.check_hameClick(Sender: TObject);
begin
  if check_hame.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('check_hame');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('check_hame');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.check_pardakhtiClick(Sender: TObject);
begin
  if check_pardakhti.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('check_pardakhti');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('check_pardakhti');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.koli_kharidClick(Sender: TObject);
begin
  if koli_kharid.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_kharid');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_kharid');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.koli_foroshClick(Sender: TObject);
begin
  if koli_forosh.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_forosh');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_forosh');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.koli_vorod_khorojClick(Sender: TObject);
begin
  if koli_vorod_khoroj.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_vorod_khoroj');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_vorod_khoroj');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.koli_kharidarClick(Sender: TObject);
begin
  if koli_kharidar.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_kharidar');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_kharidar');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.koli_forohandeClick(Sender: TObject);
begin
  if koli_forohande.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_forohande');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_forohande');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.koli_ashkhasClick(Sender: TObject);
begin
  if koli_ashkhas.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_ashkhas');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_ashkhas');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

procedure Tfrm_sathe_dastrasi.koli_rozClick(Sender: TObject);
begin
  if koli_roz.Checked then
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(1)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_roz');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end
  else
  begin
    DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set permit='+IntToStr(0)+
    ' where karbar='+QuotedStr(L_karbar.Caption)+' and dastresi='+QuotedStr('koli_roz');
    DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
  end;
  //frm_eslah_forosh.waiting('����� ����� ������ !',1000);
  get_dastresi_from_db;
end;

end.
