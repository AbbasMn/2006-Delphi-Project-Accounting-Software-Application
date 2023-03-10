unit unt_eslah_pardakhthaye_kharidar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, SUIDBCtrls, Mask,
  DB, SUIButton;

type
  Tfrm_eslah_pardakhthaye_kharidar = class(TForm)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    suiDBGrid1: TsuiDBGrid;
    E_name: TEdit;
    GroupBox3: TGroupBox;
    RadioGroup1: TRadioGroup;
    G_mah: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    dbsal: TDBLookupComboBox;
    scmah: TComboBox;
    G_tarikh: TGroupBox;
    RadioGroup2: TRadioGroup;
    MaskEditrooz: TMaskEdit;
    MaskEditmah: TMaskEdit;
    MaskEditsal: TMaskEdit;
    DataSource2: TDataSource;
    suiDBGrid2: TsuiDBGrid;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    E_mablagh: TEdit;
    Label5: TLabel;
    e_t_roz: TMaskEdit;
    e_t_mah: TMaskEdit;
    e_t_sal: TMaskEdit;
    L_id: TLabel;
    L_mablagh: TLabel;
    suiButton6: TsuiButton;
    suiButton7: TsuiButton;
    l_tarikh: TLabel;
    l_time: TLabel;
    Label10: TLabel;
    e_cod: TEdit;
    l_review: TLabel;
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure show_mah;
    procedure show_tarikh;
    procedure dbsalClick(Sender: TObject);
    procedure scmahChange(Sender: TObject);
    procedure E_nameChange(Sender: TObject);
    procedure MaskEditroozChange(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure update_pardakht;
    procedure updatebedehi(bedeh:real;feli:real;tarikh_feli,time_:string);
    procedure suiButton6Click(Sender: TObject);
    procedure update_nagd_tosandog;
    function max_bedehi(var bedeh:real;feli:real):boolean;
    procedure E_mablaghKeyPress(Sender: TObject; var Key: Char);
    procedure e_t_rozKeyPress(Sender: TObject; var Key: Char);
    procedure e_t_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_t_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure e_codChange(Sender: TObject);
    procedure e_t_rozExit(Sender: TObject);
    procedure e_t_mahExit(Sender: TObject);
    procedure show_salha;
    procedure e_t_salExit(Sender: TObject);

    procedure execute_eslahe_pardakhte_moshtari_stored_procedure(bedeh:real;feli:real;tarikh_feli,time_:string);

  private
    { Private declarations }
  public
    { Public declarations }
    sandog:string;
  end;

var
  frm_eslah_pardakhthaye_kharidar: Tfrm_eslah_pardakhthaye_kharidar;

implementation

uses unt_login, Taghvim, unt_datamodule1, Unt_mmoshakhasat_shakhs,
  untjens_kharid, Unt_search, Unt_DataModule_gozaresh_tarkibi,
  unt_DataM_final, unt_main, unt_datam_sp_eslahe_forosh,
  unt_gozaresh_az_sandog;

{$R *.dfm}

procedure Tfrm_eslah_pardakhthaye_kharidar.execute_eslahe_pardakhte_moshtari_stored_procedure(bedeh:real;feli:real;tarikh_feli,time_:string);
var b_j,t_j,type_,par:real;
    st,pch:pchar;
    tarikh,id_avalin,tarikh_g:string;
    bestankar,bedehkar,mab_jadid,mab_gadim:real;
begin
    tarikh:=e_t_sal.Text+'/'+e_t_mah.Text+'/'+e_t_roz.Text;

  DataM_final.ADOQ_bestankar_bedehkae_kharidar.SQL.Text:='select * from T_bestankar_bedehkar_kharidar '+
  ' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and code_shakhs='+DataModule1.ADOQuery3code.AsString+
  ' and tarikh='+QuotedStr(DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString)+
  ' and time_='+QuotedStr(DataModule1.ADOpardakhtbedehi_kharidartime_.AsString);
  DataM_final.ADOQ_bestankar_bedehkae_kharidar.Open;

  bestankar:=DataM_final.ADOQ_bestankar_bedehkae_kharidarbestankar.AsFloat;
  bedehkar:=DataM_final.ADOQ_bestankar_bedehkae_kharidarbedehkar.AsFloat;

  mab_jadid:=StrToFloat(E_mablagh.Text);
  mab_gadim:=StrToFloat(L_mablagh.Caption);
  ///////////////////////////////////////////////////////////////////////

  if bestankar=0 then
  begin
    if mab_jadid>=mab_gadim then
      par:=1
    else
      par:=2
  end

  else

  begin
    if mab_jadid>=mab_gadim then
      par:=3
    else
      begin
        if (mab_jadid-mab_gadim)<bedehkar then
          par:=4
        else
          par:=5;
      end;
  end;

  ///////////////////////////////////////////////////////////////////////

  if StrToFloat(E_mablagh.Text)<=feli then
  begin
    b_j:=feli-StrToFloat(E_mablagh.Text);
    type_:=1;
    {DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+FloatToStr(b_j)+
    ',tarikh_akharin_pardakht='+QuotedStr(tarikh)+' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
    DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL; }
  end
  else
  begin
    b_j:=StrToFloat(E_mablagh.Text)-feli;
    type_:=2;
    {DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+FloatToStr(b_j)+
    ',tarikh_akharin_pardakht='+QuotedStr(tarikh)+' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
    DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL; }
  end;
////////////////////////////////////////////////////

  {DataModule1.ADOpardakhtbedehi_kharidar.SQL.Text:='update t_pardakht_bedehi_kharidar set mablagh='+E_mablagh.Text+
  ',tarikh='+QuotedStr(tarikh)+' where id='+L_id.Caption;
  DataModule1.ADOpardakhtbedehi_kharidar.ExecSQL; }
//////////////////////////////////////////////////////
    tarikh_g:=l_tarikh.Caption;

   {DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='update T_vorod_khoroj_sandogha set tarikh='+
   QuotedStr(tarikh)+',mablag='+E_mablagh.Text+',tozih=tozih+'+QuotedStr(' ???? ??????? ????? ????? ???? ???? ?????? = '+L_mablagh.Caption)+
   ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+
   ' and tarikh='+
   QuotedStr(tarikh_g)+' and tozih='+QuotedStr('?????? ???? ?? ?????? ???? ???? '+trim(DataModule1.ADOQuery3shahrforoshande.AsString))+
   ' and mablag='+L_mablagh.Caption+' and time_='+QuotedStr(l_time.Caption);
   DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.ExecSQL;}
///////////////////////////////////////////////////////////////////////
      frm_main.l_last_op.Caption:=' ????? ?????? ???? ???? '+DataModule1.ADOQuery3shahrforoshande.AsString+' ??? ??? ?? ????? '+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString;

       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[0].Value:=DataModule1.ADOQuery3shahrforoshande.AsString;//@shahrforoshande nvarchar(50),
       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[1].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[2].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[3].Value:=tarikh_g;//@tarikh_gadim nvarchar(12),
       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[4].Value:=tarikh;//@tarikh_jadid nvarchar(12),

       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[5].Value:=StrToFloat(E_mablagh.Text);//@mablagh_jadid float,
       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[6].Value:=StrToFloat(L_mablagh.Caption);//@mablagh_gadim float,

       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[7].Value:=l_time.Caption;//@time_gadim nvarchar(10),

       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[8].Value:=DataModule1.ADOQuery3code.AsString;//@code_kharidar float,

       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[9].Value:=StrToFloat(L_id.Caption);//@id float,

       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[10].Value:=type_;//@type nvarchar(6),

       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[11].Value:=' ?????? ???? ?? ?????? ???? ???? '+DataModule1.ADOQuery3shahrforoshande.AsString+' ???? ??? = '+DataModule1.ADOpardakhtbedehi_kharidarmablagh.AsString;//@tozih_sandog nvarchar(150),
       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[12].Value:=b_j;//@b_j float,

       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[13].Value:=' ????? ?????? ???? ???? '+DataModule1.ADOQuery3shahrforoshande.AsString+
       ' ?? ???? '+L_mablagh.Caption+' ?? ???? '+
       E_mablagh.Text+'?? '+' ?? ????? '+

       DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString+'?? ????? '+e_t_sal.Text+'/'+e_t_mah.Text+'/'+e_t_roz.Text;//@amaliat nvarchar(1000)

       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[14].Value:=par ;//@par float
       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.Parameters[15].Value:=bedehkar ;//@bedehi float

       datam_sp_eslahe_forosh.ADOStoredProc_eslahe_pardakhte_bedehi_tavasote_moshtar.ExecProc;

       MessageBox(Handle,'?????? ??????? ????? ??.','????!',MB_OK + MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);  
end;
//////////////////////////////////////////
procedure Tfrm_eslah_pardakhthaye_kharidar.show_salha;
begin
    DataModule1.ADOpardakhtbedehi_kharidar.SQL.Text:='select * from t_pardakht_bedehi_kharidar where shahrforoshande='+
    QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' order by tarikh,id';
    DataModule1.ADOpardakhtbedehi_kharidar.open;
    if DataModule1.ADOpardakhtbedehi_kharidar.RecordCount >0 then
    begin
     frm_eslah_pardakhthaye_kharidar.L_id.Caption:=DataModule1.ADOpardakhtbedehi_kharidarid.AsString;
     frm_eslah_pardakhthaye_kharidar.L_mablagh.Caption:=DataModule1.ADOpardakhtbedehi_kharidarmablagh.AsString;
     frm_eslah_pardakhthaye_kharidar.E_mablagh.Text:=DataModule1.ADOpardakhtbedehi_kharidarmablagh.AsString;
     frm_eslah_pardakhthaye_kharidar.l_tarikh.Caption:=DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString;
     frm_eslah_pardakhthaye_kharidar.l_time.Caption:=DataModule1.ADOpardakhtbedehi_kharidartime_.AsString;

     frm_eslah_pardakhthaye_kharidar.e_t_roz.Text:=DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[9]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[10];
     frm_eslah_pardakhthaye_kharidar.e_t_mah.Text:=DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[6]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[7];
     frm_eslah_pardakhthaye_kharidar.e_t_sal.Text:=DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[1]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[2]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[3]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[4];
    end
    else
    begin
      frm_eslah_pardakhthaye_kharidar.L_id.Caption:='-1';
     frm_eslah_pardakhthaye_kharidar.E_mablagh.Text:='';
     frm_eslah_pardakhthaye_kharidar.l_tarikh.Caption:='';
     frm_eslah_pardakhthaye_kharidar.e_t_roz.Text:='';
     frm_eslah_pardakhthaye_kharidar.e_t_mah.Text:='';
     frm_eslah_pardakhthaye_kharidar.e_t_sal.Text:='';
     frm_eslah_pardakhthaye_kharidar.l_time.Caption:='';
    end;
end;










////////////
procedure Tfrm_eslah_pardakhthaye_kharidar.updatebedehi(bedeh:real;feli:real;tarikh_feli,time_:string);
var b_j,t_j:real;
    st,pch:pchar;
    tarikh,id_avalin:string;
begin
    tarikh:=e_t_sal.Text+'/'+e_t_mah.Text+'/'+e_t_roz.Text;
  if StrToFloat(E_mablagh.Text)<=feli then
  begin
    b_j:=feli-StrToFloat(E_mablagh.Text);

    DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+FloatToStr(b_j)+
    ',tarikh_akharin_pardakht='+QuotedStr(tarikh)+' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
    DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;



    {if tarikh_feli=tarikh then ///true
    begin

      DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+FloatToStr(b_j)+
      ',tarikh_akharin_pardakht='+QuotedStr(tarikh)+' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;

      DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+FloatToStr(b_j)+
      ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh>'+QuotedStr(tarikh_feli);
      DataM_final.ADOQ_takhfife_forosh.ExecSQL;

      DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+FloatToStr(b_j)+
      ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(tarikh_feli)+' and time_ >='+QuotedStr(time_);
      DataM_final.ADOQ_takhfife_forosh.ExecSQL;

      update_pardakht;
      update_nagd_tosandog;

    end;


    if tarikh_feli>tarikh then  ///true
    begin

      DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+FloatToStr(b_j)+
      ',tarikh_akharin_pardakht='+QuotedStr(tarikh)+' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;

       DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+FloatToStr(b_j)+
      ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh>'+QuotedStr(tarikh);
      DataM_final.ADOQ_takhfife_forosh.ExecSQL;

      DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+FloatToStr(b_j)+
      ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(tarikh)+' and time_ >='+QuotedStr(time_);
      DataM_final.ADOQ_takhfife_forosh.ExecSQL;

      update_pardakht;
      update_nagd_tosandog;
    end;


    if tarikh_feli<tarikh then  ///true  
    begin

      DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+FloatToStr(b_j)+
      ',tarikh_akharin_pardakht='+QuotedStr(tarikh)+' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;


      DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+FloatToStr(b_j)+
      ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(tarikh_feli)+' and time_ >='+QuotedStr(time_);
      DataM_final.ADOQ_takhfife_forosh.ExecSQL;

      DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+FloatToStr(b_j)+
      ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh>'+QuotedStr(tarikh_feli)+' and tarikh<'+QuotedStr(tarikh);
      DataM_final.ADOQ_takhfife_forosh.ExecSQL;

      DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+FloatToStr(b_j)+
      ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(tarikh)+' and time_ <'+QuotedStr(time_);
      DataM_final.ADOQ_takhfife_forosh.ExecSQL;

      DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+FloatToStr(b_j)+
      ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(tarikh)+' and time_ >='+QuotedStr(time_);
      DataM_final.ADOQ_takhfife_forosh.ExecSQL;

      DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl+'+FloatToStr(b_j)+
      ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh>'+QuotedStr(tarikh);
      DataM_final.ADOQ_takhfife_forosh.ExecSQL;

      update_pardakht;
      update_nagd_tosandog;      

    end;

            MessageBox(Handle,'?????? ??????? ????? ??.','????!',MB_OK + MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);}
  end
  else
  begin
    b_j:=StrToFloat(E_mablagh.Text)-feli;

    DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+FloatToStr(b_j)+
    ',tarikh_akharin_pardakht='+QuotedStr(tarikh)+' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
    DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;



    {if tarikh_feli=tarikh then ///true
    begin

    DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+FloatToStr(b_j)+
    ',tarikh_akharin_pardakht='+QuotedStr(tarikh)+' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
    DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;


      DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
      ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh>'+QuotedStr(tarikh_feli);
      DataM_final.ADOQ_takhfife_forosh.ExecSQL;

      DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
      ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(tarikh_feli)+' and time_ >='+QuotedStr(time_);
      DataM_final.ADOQ_takhfife_forosh.ExecSQL;

      update_pardakht;
      update_nagd_tosandog;

      MessageBox(Handle,'?????? ??????? ????? ??.','????!',MB_OK + MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
    end;


    if tarikh_feli>tarikh then
    begin
      DataM_final.ADOQ_takhfife_forosh2.SQL.Text:='select * from  T_takhfife_forosh  where cod_kharidar='+
      DataModule1.ADOQuery3code.AsString+' and tarikh>='+QuotedStr(tarikh);
      DataM_final.ADOQ_takhfife_forosh2.open;

      DataM_final.ADOQ_takhfife_forosh2.First;

      if (DataM_final.ADOQ_takhfife_forosh2bedehi_az_gabl.AsFloat)<b_j then
      begin
        pch:=pchar(' ?? ???? ????? ???? ???? ?? ??? ????? ?????? ???? ?? ????? ??????? ?????? ? ???? ?? = '+DataM_final.ADOQ_takhfife_forosh2bedehi_az_gabl.AsString+' ???? ?? ???? ????? ??? ?? ?????? = '+FloatToStr(b_j)+' ?? ???? ??? ?????? ?????? ?? ?? ????? ??????? ?????? ??????');
        MessageBox(Handle,pch,'??? !',MB_OK + MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      end
      else
      begin

        DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+FloatToStr(b_j)+
        ',tarikh_akharin_pardakht='+QuotedStr(tarikh)+' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
        DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;

        DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
        ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh>'+QuotedStr(tarikh);
        DataM_final.ADOQ_takhfife_forosh.ExecSQL;

        DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
        ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(tarikh)+' and time_ >='+QuotedStr(time_);
        DataM_final.ADOQ_takhfife_forosh.ExecSQL;

        update_pardakht;
        update_nagd_tosandog;
        MessageBox(Handle,'?????? ??????? ????? ??.','????!',MB_OK + MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);

      end;
    end;


    if tarikh_feli<tarikh then
    begin
      DataM_final.ADOQ_takhfife_forosh2.SQL.Text:='select * from  T_takhfife_forosh  where cod_kharidar='+
      DataModule1.ADOQuery3code.AsString+' and tarikh>='+QuotedStr(tarikh);
      DataM_final.ADOQ_takhfife_forosh2.open;

      DataM_final.ADOQ_takhfife_forosh2.First;

      if DataM_final.ADOQ_takhfife_forosh2.RecordCount>0 then
      begin//ooo
        if (DataM_final.ADOQ_takhfife_forosh2bedehi_az_gabl.AsFloat)<b_j then
        begin
          pch:=pchar(' ?? ???? ????? ???? ???? ?? ??? ????? ?????? ???? ?? ????? ??????? ?????? ? ???? ?? = '+DataM_final.ADOQ_takhfife_forosh2bedehi_az_gabl.AsString+' ???? ?? ???? ????? ??? ?? ?????? = '+FloatToStr(b_j)+' ?? ???? ??? ?????? ?????? ?? ?? ????? ??????? ?????? ??????');
          MessageBox(Handle,pch,'??? !',MB_OK + MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
        end
        else
        begin

          DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+FloatToStr(b_j)+
          ',tarikh_akharin_pardakht='+QuotedStr(tarikh)+' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
          DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;

          DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
          ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(tarikh_feli)+' and time_ >='+QuotedStr(time_);
          DataM_final.ADOQ_takhfife_forosh.ExecSQL;

          DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
          ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh>'+QuotedStr(tarikh_feli)+' and tarikh<'+QuotedStr(tarikh);
          DataM_final.ADOQ_takhfife_forosh.ExecSQL;

          DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
          ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(tarikh)+' and time_ <'+QuotedStr(time_);
          DataM_final.ADOQ_takhfife_forosh.ExecSQL;

          DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
          ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(tarikh)+' and time_ >='+QuotedStr(time_);
          DataM_final.ADOQ_takhfife_forosh.ExecSQL;

          DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
          ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh>'+QuotedStr(tarikh);
          DataM_final.ADOQ_takhfife_forosh.ExecSQL;

          update_pardakht;
          update_nagd_tosandog;
          MessageBox(Handle,'?????? ??????? ????? ??.','????!',MB_OK + MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);

        end;
      end//ooo
      else
      begin
          DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+FloatToStr(b_j)+
          ',tarikh_akharin_pardakht='+QuotedStr(tarikh)+' where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
          DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;

          DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
          ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(tarikh_feli)+' and time_ >='+QuotedStr(time_);
          DataM_final.ADOQ_takhfife_forosh.ExecSQL;

          DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
          ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh>'+QuotedStr(tarikh_feli)+' and tarikh<'+QuotedStr(tarikh);
          DataM_final.ADOQ_takhfife_forosh.ExecSQL;

          DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
          ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(tarikh)+' and time_ <'+QuotedStr(time_);
          DataM_final.ADOQ_takhfife_forosh.ExecSQL;

          DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
          ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh='+QuotedStr(tarikh)+' and time_ >='+QuotedStr(time_);
          DataM_final.ADOQ_takhfife_forosh.ExecSQL;

          DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
          ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+' and tarikh>'+QuotedStr(tarikh);
          DataM_final.ADOQ_takhfife_forosh.ExecSQL;

          update_pardakht;
          update_nagd_tosandog;
          MessageBox(Handle,'?????? ??????? ????? ??.','????!',MB_OK + MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
      end;
    end;}
  end;
end;

function Tfrm_eslah_pardakhthaye_kharidar.max_bedehi(var bedeh:real;feli:real):boolean;
var mb:pchar;
begin
  DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='select code_shakhs,shahrforoshande,'+
  'sum(bedehkar) as bedeh,sum(bestankar) as talab from '+
  ' T_bestankar_bedehkar_kharidar where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and code_shakhs='+DataModule1.ADOQuery3code.AsString+
  '  group by code_shakhs,shahrforoshande ';  
  DataM_final.ADOQ_bedeh_be_kharidar2.Open;

  bedeh:=DataM_final.ADOQ_bedeh_be_kharidar2bedeh.Value;
  if (StrToFloat(E_mablagh.Text) > (bedeh+feli)) then
  begin
    max_bedehi:=false;
    mb:=pchar('???? ???? ??? ???? ???? ?? ???? ?? ??? << '+FloatToStr(bedeh+feli)+' >> ???? ');
    MessageBox(Handle,mb,'??? !',MB_OK + MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
  end
  else
    max_bedehi:=true;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.update_nagd_tosandog;
 var   tarikh_j,tarikh_g:string;
begin
    tarikh_j:=e_t_sal.Text+'/'+e_t_mah.Text+'/'+e_t_roz.Text;
    tarikh_g:=l_tarikh.Caption;

   DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='update T_vorod_khoroj_sandogha set tarikh='+
   QuotedStr(tarikh_j)+',mablag='+E_mablagh.Text+',tozih=tozih+'+QuotedStr(' ???? ??????? ????? ????? ???? ???? ?????? = '+L_mablagh.Caption)+
   ' where cod_kharidar='+DataModule1.ADOQuery3code.AsString+
   ' and tarikh='+
   QuotedStr(tarikh_g)+' and tozih='+QuotedStr('?????? ???? ?? ?????? ???? ???? '+trim(DataModule1.ADOQuery3shahrforoshande.AsString))+
   ' and mablag='+L_mablagh.Caption+' and time_='+QuotedStr(l_time.Caption);
   DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.ExecSQL;
end;


procedure Tfrm_eslah_pardakhthaye_kharidar.update_pardakht;
var tarikh:string;
begin
    tarikh:=e_t_sal.Text+'/'+e_t_mah.Text+'/'+e_t_roz.Text;
  DataModule1.ADOpardakhtbedehi_kharidar.SQL.Text:='update t_pardakht_bedehi_kharidar set mablagh='+E_mablagh.Text+
  ',tarikh='+QuotedStr(tarikh)+' where id='+L_id.Caption;
  DataModule1.ADOpardakhtbedehi_kharidar.ExecSQL;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.show_tarikh;
var tarikh:string;
begin
    tarikh:=MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text;
    DataModule1.ADOpardakhtbedehi_kharidar.SQL.Text:='select * from t_pardakht_bedehi_kharidar where shahrforoshande='+
    QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and tarikh='+QuotedStr(tarikh)+' order by tarikh,id';
    DataModule1.ADOpardakhtbedehi_kharidar.open;
    if DataModule1.ADOpardakhtbedehi_kharidar.RecordCount >0 then
    begin
     frm_eslah_pardakhthaye_kharidar.L_id.Caption:=DataModule1.ADOpardakhtbedehi_kharidarid.AsString;
     frm_eslah_pardakhthaye_kharidar.L_mablagh.Caption:=DataModule1.ADOpardakhtbedehi_kharidarmablagh.AsString;
     frm_eslah_pardakhthaye_kharidar.E_mablagh.Text:=DataModule1.ADOpardakhtbedehi_kharidarmablagh.AsString;
     frm_eslah_pardakhthaye_kharidar.l_tarikh.Caption:=DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString;
     frm_eslah_pardakhthaye_kharidar.l_time.Caption:=DataModule1.ADOpardakhtbedehi_kharidartime_.AsString;

     frm_eslah_pardakhthaye_kharidar.e_t_roz.Text:=DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[9]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[10];
     frm_eslah_pardakhthaye_kharidar.e_t_mah.Text:=DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[6]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[7];
     frm_eslah_pardakhthaye_kharidar.e_t_sal.Text:=DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[1]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[2]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[3]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[4];
    end
    else
    begin
      frm_eslah_pardakhthaye_kharidar.L_id.Caption:='-1';
     frm_eslah_pardakhthaye_kharidar.E_mablagh.Text:='';
     frm_eslah_pardakhthaye_kharidar.l_tarikh.Caption:='';
     frm_eslah_pardakhthaye_kharidar.e_t_roz.Text:='';
     frm_eslah_pardakhthaye_kharidar.e_t_mah.Text:='';
     frm_eslah_pardakhthaye_kharidar.e_t_sal.Text:='';
     frm_eslah_pardakhthaye_kharidar.l_time.Caption:='';
    end;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.show_mah;
begin
    DataModule1.ADOpardakhtbedehi_kharidar.SQL.Text:='select * from t_pardakht_bedehi_kharidar where shahrforoshande='+
    QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and tarikh like'+QuotedStr(dbsal.Text+'/'+Frm_search.getmonth(scmah.Text)+'%')+' order by tarikh,id';
    DataModule1.ADOpardakhtbedehi_kharidar.open;
    if DataModule1.ADOpardakhtbedehi_kharidar.RecordCount >0 then
    begin
     frm_eslah_pardakhthaye_kharidar.L_id.Caption:=DataModule1.ADOpardakhtbedehi_kharidarid.AsString;
     frm_eslah_pardakhthaye_kharidar.L_mablagh.Caption:=DataModule1.ADOpardakhtbedehi_kharidarmablagh.AsString;
     frm_eslah_pardakhthaye_kharidar.l_tarikh.Caption:=DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString;
     frm_eslah_pardakhthaye_kharidar.E_mablagh.Text:=DataModule1.ADOpardakhtbedehi_kharidarmablagh.AsString;
     frm_eslah_pardakhthaye_kharidar.l_time.Caption:=DataModule1.ADOpardakhtbedehi_kharidartime_.AsString;

     frm_eslah_pardakhthaye_kharidar.e_t_roz.Text:=DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[9]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[10];
     frm_eslah_pardakhthaye_kharidar.e_t_mah.Text:=DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[6]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[7];
     frm_eslah_pardakhthaye_kharidar.e_t_sal.Text:=DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[1]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[2]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[3]+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString[4];
    end
    else
    begin
      frm_eslah_pardakhthaye_kharidar.L_id.Caption:='-1';
     frm_eslah_pardakhthaye_kharidar.E_mablagh.Text:='';
     frm_eslah_pardakhthaye_kharidar.l_tarikh.Caption:='';
     frm_eslah_pardakhthaye_kharidar.e_t_roz.Text:='';
     frm_eslah_pardakhthaye_kharidar.e_t_mah.Text:='';
     frm_eslah_pardakhthaye_kharidar.e_t_sal.Text:='';
     frm_eslah_pardakhthaye_kharidar.l_time.Caption:='';     
    end;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.RadioGroup1Click(
  Sender: TObject);
begin
   if RadioGroup1.ItemIndex=0 then
    begin
      G_tarikh.Visible:=false;
      G_mah.Visible:=true;
      show_mah;
    end;
  if RadioGroup1.ItemIndex=1 then
    begin
      G_tarikh.Visible:=true;
      G_mah.Visible:=false;
      show_tarikh;
    end;
  if RadioGroup1.ItemIndex=2 then
    begin
      G_tarikh.Visible:=false;
      G_mah.Visible:=false;
      show_salha;
    end;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.RadioGroup2Click(
  Sender: TObject);
begin
    if RadioGroup2.ItemIndex =0  then
    begin
      MaskEditrooz.Enabled :=false;
      MaskEditmah.Enabled :=false;
      MaskEditsal.Enabled :=false;
      MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
      MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
      MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
    end
  else
    begin
      _Taghvim.ShowModal;
      if _taghvim._str_date<>'' then
      begin
        MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
        MaskEditMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
        MaskEditRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
      end;
    end;
    show_tarikh;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.FormShow(Sender: TObject);
begin
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;
  Frm_mmoshakhasat_shakhs.show_kharidaran; 
  RadioGroup1.ItemIndex:=1;
  RadioGroup2.ItemIndex:=0;
  MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
  MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
  MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
  show_tarikh;

  E_name.Clear;


  E_name.SetFocus;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.dbsalClick(Sender: TObject);
begin
  show_mah;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.scmahChange(Sender: TObject);
begin
  show_mah;
end;



procedure Tfrm_eslah_pardakhthaye_kharidar.E_nameChange(Sender: TObject);
begin
 DataModule1.ADOQuery3.Locate('shahrforoshande',E_name.Text,[loPartialKey]);
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.MaskEditroozChange(
  Sender: TObject);
begin
  show_tarikh;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.suiButton7Click(
  Sender: TObject);
begin
  close;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.suiButton6Click(
  Sender: TObject);
var   bedeh,talab,mojodi,mablag:real;
tar:string;
pch:pchar;
begin
bedeh:=0;
talab:=0;
if DataModule1.ADOpardakhtbedehi_kharidar.RecordCount <=0 then
  MessageBox(Handle,'??????? ???? ?????? ???? ?????.','??? !',MB_OK + MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
else
begin
  if (E_mablagh.Text='')or(e_t_roz.Text='')or(e_t_mah.Text='')or(e_t_sal.Text='')or(DataModule1.ADOQuery3shahrforoshande.AsString='')or(StrLen(pchar(e_t_sal.Text))<4) then
    MessageBox(Handle,'?????? ?????? ? ???? ??????? ? ? ????? ???? ???? ???.','??? !',MB_OK + MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
  begin
     tar:=e_t_sal.Text+'/'+e_t_mah.Text+'/'+e_t_roz.Text;

     DataM_final.ADOQ_t_sh_facrorhaye_forosh2.SQL.Text:='select * from  t_sh_facrorhaye_forosh where shahrforoshande='+
     QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' order by shomare';
     DataM_final.ADOQ_t_sh_facrorhaye_forosh2.open;

     DataM_final.ADOQ_t_sh_facrorhaye_forosh2.First;

      if (DataM_final.ADOQ_t_sh_facrorhaye_forosh2tarikh.AsString>tar)or((DataM_final.ADOQ_t_sh_facrorhaye_forosh2tarikh.AsString=tar)and(DataM_final.ADOQ_t_sh_facrorhaye_forosh2time.AsString>l_time.Caption)) then
      begin
        pch:=pchar(' ????? ???? ?? ????? '+DataM_final.ADOQ_t_sh_facrorhaye_forosh2tarikh.AsString+' ? ?? ???? '+DataM_final.ADOQ_t_sh_facrorhaye_forosh2time.AsString+'?? ?????? ??????? ????? ??? ? ??? ??? ?????? ????? ?????? ???? ?? ??? ?? ????? ? ???? ??? ??? ???? ????');
        MessageBox(Handle,pch,'??? !',MB_OK + MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      end
    else
    begin//////
      if max_bedehi(bedeh,strtofloat(L_mablagh.Caption)) then
      begin


        mojodi:=Frm_gozaresh_az_sandog.mojodi_kol(sandog);

        if trim(E_mablagh.Text)='' then
          mablag:=0
        else
          mablag:=StrToFloat(E_mablagh.Text);

      if mablag<DataModule1.ADOpardakhtbedehi_kharidarmablagh.AsFloat then

        if mojodi<(DataModule1.ADOpardakhtbedehi_kharidarmablagh.AsFloat-mablag) then
        begin
          MessageBox(Handle,pchar('????? ?? ?? ?????? ???? ???? ?? ?? ??? ?? ?????? ?????? ?? ???? ?? ?? ???? ??? ???  << '+sandog+' >> = << '+FloatToStr(mojodi)+' >> ????? ?? ????.'),'???! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
          Exit;
        end;

       l_review.Caption:=DataModule1.ADOpardakhtbedehi_kharidarid.AsString;

       

       execute_eslahe_pardakhte_moshtari_stored_procedure(bedeh,StrToFloat(L_mablagh.Caption),l_tarikh.Caption,l_time.Caption);



      {frm_main.l_last_op.Caption:=' ????? ?????? ???? ???? '+DataModule1.ADOQuery3shahrforoshande.AsString+' ??? ??? ?? ????? '+DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString;

       frm_main.sabte_amaliat(' ????? ?????? ???? ???? '+DataModule1.ADOQuery3shahrforoshande.AsString+
       ' ?? ???? '+L_mablagh.Caption+' ?? ???? '+
       E_mablagh.Text+'?? '+' ?? ????? '+

       DataModule1.ADOpardakhtbedehi_kharidartarikh.AsString+'?? ????? '+e_t_sal.Text+'/'+e_t_mah.Text+'/'+e_t_roz.Text);

       updatebedehi(bedeh,StrToFloat(L_mablagh.Caption),l_tarikh.Caption,l_time.Caption);
        update_pardakht;
        update_nagd_tosandog;
        MessageBox(Handle,'?????? ??????? ????? ??.','????!',MB_OK + MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);}

        if RadioGroup1.ItemIndex=0 then
        begin
          show_mah;
        end;
        if RadioGroup1.ItemIndex=1 then
        begin
          show_tarikh;
        end;

        if RadioGroup1.ItemIndex=2 then
        begin
          show_salha;
        end;

        DataModule1.ADOpardakhtbedehi_kharidar.Locate('id',l_review.Caption,[loPartialKey]);
      end;
    end;/////////
  end;
end;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.E_mablaghKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;



procedure Tfrm_eslah_pardakhthaye_kharidar.e_t_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.e_t_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.e_t_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.e_t_rozExit(Sender: TObject);
begin
  if StrLen(pchar(e_t_roz.Text))=1 then
    e_t_roz.Text:='0'+e_t_roz.Text;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.e_t_mahExit(Sender: TObject);
begin
  if StrLen(pchar(e_t_mah.Text))=1 then
    e_t_mah.Text:='0'+e_t_mah.Text;
end;

procedure Tfrm_eslah_pardakhthaye_kharidar.e_t_salExit(Sender: TObject);
begin
  IF e_t_sal.Text='' then
    e_t_sal.Text:='0';
  IF StrToInt(e_t_sal.Text)<1000 then
  begin
    MessageBox(Handle,'??? ???? ???? ???? ????','??? !',MB_OK + MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
    e_t_sal.SetFocus;
  end;
end;

end.
