unit unt_eslah_kharid_add_jens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB;

type
  Tfrm_eslah_kharid_add_jens = class(TForm)
    GroupBox1: TGroupBox;
    Label9: TLabel;
    DBText_t_jam: TDBText;
    Label10: TLabel;
    DBT_mab_gabl: TDBText;
    Label4: TLabel;
    DBT_m_check: TDBText;
    L_kol_gabl: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    L_bestankar: TLabel;
    L_bedehkae: TLabel;
    Button1: TButton;
    Button2: TButton;
    DataSource3: TDataSource;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Label6: TLabel;
    DBText1: TDBText;
    DataSource4: TDataSource;
    procedure bedeh_talab_after_eslah;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure update_bedeh_talab_va_bedehi_kol_kharidar;
    procedure update_bedehi_kharidar_pas_az_bedekar_shodan;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah_kharid_add_jens: Tfrm_eslah_kharid_add_jens;

implementation

uses unt_eslah_kharid, Untviewanbar, Untdmlistha,
  unt_add_jens_to_pishkharid, unt_DataM_final, unt_datamodule2,
  unt_datamodule1, unt_Dm_zayeat_marjoei;

{$R *.dfm}
procedure Tfrm_eslah_kharid_add_jens.update_bedehi_kharidar_pas_az_bedekar_shodan;
var g_kol,kol_gabl,nagd,check,kol_pardakht:string;
    bedeh_eslah,talab_eslah:real;
begin
    if (frm_eslah_kharid_add_jens.DBText_t_jam.Caption='0') or(frm_eslah_kharid_add_jens.DBText_t_jam.Caption='') then
      g_kol:='0'
    else
      g_kol:=frm_eslah_kharid_add_jens.DBText_t_jam.Caption;

    if (frm_eslah_kharid_add_jens.L_kol_gabl.Caption='0') or(frm_eslah_kharid_add_jens.L_kol_gabl.Caption='') then
      kol_gabl:='0'
    else
      kol_gabl:=frm_eslah_kharid_add_jens.L_kol_gabl.Caption;

      ///////////////////////////////////////////////////////////
    if (frm_eslah_kharid_add_jens.DBT_m_check.Caption='0') or (frm_eslah_kharid_add_jens.DBT_m_check.Caption='') then
             check:='0'
         else
          check:=frm_eslah_kharid_add_jens.DBT_m_check.Caption;

    if (frm_eslah_kharid_add_jens.DBT_mab_gabl.Caption='') or(frm_eslah_kharid_add_jens.DBT_mab_gabl.Caption='0')then
      nagd:='0'
    else
      nagd:=frm_eslah_kharid_add_jens.DBT_mab_gabl.Caption;

      kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd));
      


      /////////////////////////////////////////////////////////////
      if(StrToFloat(kol_pardakht)<=StrToFloat(kol_gabl))then //1
      begin
       bedeh_eslah:=StrToFloat(g_kol)-StrToFloat(kol_gabl);
       
       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh+'+
       FloatToStr(bedeh_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
      end;

      if(StrToFloat(kol_pardakht)>StrToFloat(kol_gabl))and(StrToFloat(kol_pardakht)>=StrToFloat(g_kol))then//2
      begin
       talab_eslah:=StrToFloat(g_kol)-StrToFloat(kol_gabl);
       
       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set talab=talab-'+
       FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
      end;

      if(StrToFloat(kol_pardakht)>StrToFloat(kol_gabl))and(StrToFloat(kol_pardakht)<StrToFloat(g_kol))then//3
      begin
       talab_eslah:=StrToFloat(kol_pardakht)-StrToFloat(kol_gabl);

       bedeh_eslah:=StrToFloat(g_kol)-StrToFloat(kol_pardakht);

       DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='update T_bede_kol_be_foroshande set bedeh=bedeh+'+
       FloatToStr(bedeh_eslah)+',talab=talab-'+
       FloatToStr(talab_eslah)+' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString);
       DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;
      end;
end;

////////////////////
procedure Tfrm_eslah_kharid_add_jens.update_bedeh_talab_va_bedehi_kol_kharidar;
begin

  DataModule1.ADObedehi.SQL.Text:='update T_bedehi set bedeh='+frm_eslah_kharid_add_jens.L_bedehkae.Caption+
  ',talab='+frm_eslah_kharid_add_jens.L_bestankar.Caption+
  '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString+
  ' and sh_khaid='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
  ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString);

  DataModule1.ADObedehi.ExecSQL;

end;
///////////////////
procedure Tfrm_eslah_kharid_add_jens.bedeh_talab_after_eslah;
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

          kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat);
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

/////////////////////

procedure Tfrm_eslah_kharid_add_jens.Button2Click(Sender: TObject);
begin
  frm_eslah_kharid.aghlame_factor;
  close;
end;

procedure Tfrm_eslah_kharid_add_jens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 frm_eslah_kharid.aghlame_factor;
end;

procedure Tfrm_eslah_kharid_add_jens.Button1Click(Sender: TObject);
begin
  Frm_add_jens_to_pishkharid.L_type.Caption:='eslah';
  Frm_add_jens_to_pishkharid.ShowModal;
  sleep(300);
  frm_eslah_kharid.aghlame_factor;
  frm_eslah_kharid.mablagh_nagd_check_ghabli_sh_faktor;

  Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye   where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
  ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
  Dmlistha.ADOmohasebe_keraye_kharid.open;
  close;
end;

procedure Tfrm_eslah_kharid_add_jens.FormShow(Sender: TObject);
begin
  bedeh_talab_after_eslah;
end;

end.
