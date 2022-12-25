unit unt_eslah_forosh_add_jens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, StdCtrls;

type
  Tfrm_eslah_forosh_add_jens = class(TForm)
    GroupBox1: TGroupBox;
    Label9: TLabel;
    DBText_t_jam: TDBText;
    Label10: TLabel;
    DBT_mab_gabl: TDBText;
    Label4: TLabel;
    DBT_m_check: TDBText;
    Label2: TLabel;
    L_bedehkae: TLabel;
    L_bestankar: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    L_kol_gabl: TLabel;
    Label20: TLabel;
    DBText2: TDBText;
    DataSource5: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure bedeh_talab_after_eslah;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah_forosh_add_jens: Tfrm_eslah_forosh_add_jens;

implementation

uses unt_eslah_forosh, Untviewanbar, Untdmlistha, unt_DataM_final;

{$R *.dfm}
procedure Tfrm_eslah_forosh_add_jens.bedeh_talab_after_eslah;
var check,kol_pardakht,nagd,g_kol:string;
begin
    if (DBT_m_check.Caption='0') or (DBT_m_check.Caption='') then
             check:='0'
         else
          check:=DBT_m_check.Caption;

    if (DBT_mab_gabl.Caption='') or(DBT_mab_gabl.Caption='0')then
      nagd:='0'
    else
      nagd:=DBT_mab_gabl.Caption;

    if (DBText_t_jam.Caption='0') or(DBText_t_jam.Caption='') then
      g_kol:='0'
    else
      g_kol:=DBText_t_jam.Caption;

          kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat);
          sleep(100);

         if StrToFloat(kol_pardakht)>StrToFloat(g_kol) then
         begin
          L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(g_kol));
          L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<StrToFloat(g_kol) then
         begin
           L_bedehkae.Caption:=FloatToStr(StrToFloat(g_kol)-StrToFloat(kol_pardakht));
           L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=StrToFloat(g_kol) then
         begin
          L_bestankar.Caption:='0';
          L_bedehkae.Caption:='0';

         end;
end;

procedure Tfrm_eslah_forosh_add_jens.FormShow(Sender: TObject);
begin
  //frm_eslah_forosh.mablagh_nagd_check_ghabli_sh_faktor;
  bedeh_talab_after_eslah;
end;

procedure Tfrm_eslah_forosh_add_jens.Button1Click(Sender: TObject);
begin
  frm_viewanbar.ShowModal;
  close;
end;

procedure Tfrm_eslah_forosh_add_jens.Button2Click(Sender: TObject);
begin
  frm_eslah_forosh.aghlame_factor;
  close;
end;

procedure Tfrm_eslah_forosh_add_jens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frm_eslah_forosh.aghlame_factor;
end;

end.
