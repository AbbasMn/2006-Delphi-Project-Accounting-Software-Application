unit unt_eslahe_forosh_takhif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, DB;

type
  Tfrm_eslahe_forosh_takhif = class(TForm)
    Label3: TLabel;
    RadioGroup_jens_type: TRadioGroup;
    g_darsad: TGroupBox;
    Label1: TLabel;
    e_darsad: TEdit;
    Button1: TButton;
    g_geymat: TGroupBox;
    Label2: TLabel;
    E_geymat: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    L_bedehkae: TLabel;
    L_bestankar: TLabel;
    Label6: TLabel;
    DataSource2: TDataSource;
    DBText_t_jam: TDBText;
    Label7: TLabel;
    DBText1: TDBText;
    DataSource1: TDataSource;
    Label8: TLabel;
    DBText2: TDBText;
    Label10: TLabel;
    DBT_mab_gabl: TDBText;
    Label9: TLabel;
    DBT_m_check: TDBText;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    procedure RadioGroup_jens_typeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bedeh_talab_after_eslah;
    procedure Button1Click(Sender: TObject);
    procedure E_geymatChange(Sender: TObject);
    procedure E_geymatKeyPress(Sender: TObject; var Key: Char);
    procedure e_darsadKeyPress(Sender: TObject; var Key: Char);
    procedure e_darsadChange(Sender: TObject);

    procedure execute_eslahe_takhfife_forosh_stored_procedure;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_forosh_takhif: Tfrm_eslahe_forosh_takhif;

implementation

uses unt_DataM_final, Untviewanbar, unt_pish_forosh, Untdmlistha,
  unt_datamodule2, unt_eslah_forosh, unt_main, unt_datam_sp_eslahe_forosh;

{$R *.dfm}
procedure Tfrm_eslahe_forosh_takhif.execute_eslahe_takhfife_forosh_stored_procedure;
var check,kol_pardakht,nagd,arzesh_kole_ajnas,takhfife_jadid,takhfife_gadim,darsade_jadid,talab_eslah,bedeh_eslah,par:real;
begin
      arzesh_kole_ajnas:=Dmlistha.ADOmohasebe_foroshkol_.AsFloat;

      check:=DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat;


      nagd:=DataM_final.ADOQ_t_pardakht_nagd_foroshnagd.asfloat;

      kol_pardakht:=check+nagd;

      takhfife_gadim:=DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat;


      takhfife_jadid:=StrToFloat(E_geymat.Text);




  if(trim(e_darsad.Text)='') or (trim(e_darsad.Text)='0')then
    e_darsad.Text:='0';

 { DataModule2.adotasfie.SQL.Text:='update bedeh_bestan set bedeh='+L_bedehkae.Caption+
  ',talab='+L_bestankar.Caption+
  '  where code='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+
  ' and sh_khaid='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString+
  ' and tarikh='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString);

  DataModule2.adotasfie.ExecSQL;

  DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh'+
  ' set mablagh_takhfif='+E_geymat.Text+',darsade_takhfif='+e_darsad.Text+
  ' where cod_kharidar='+DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;
  DataM_final.ADOQ_takhfife_forosh.ExecSQL; }
                                                                                               

  talab_eslah:=0;
  bedeh_eslah:=0;

  if arzesh_kole_ajnas >=(kol_pardakht+takhfife_jadid)then// section 1
  begin
    if takhfife_jadid>=takhfife_gadim then //1-1
    begin
      bedeh_eslah:=takhfife_jadid-takhfife_gadim;
      talab_eslah:=0;
      par:=11;
    end
    else
    begin //1-2
      if(arzesh_kole_ajnas)>(kol_pardakht+takhfife_gadim)then
      begin
        bedeh_eslah:=takhfife_gadim-takhfife_jadid;
      end;

      if(arzesh_kole_ajnas)=(kol_pardakht+takhfife_gadim)then
      begin
        bedeh_eslah:=takhfife_gadim-takhfife_jadid;
      end;

      if(arzesh_kole_ajnas)<(kol_pardakht+takhfife_gadim)then
      begin
        talab_eslah:=(kol_pardakht+takhfife_gadim)-arzesh_kole_ajnas;
        bedeh_eslah:=arzesh_kole_ajnas-(kol_pardakht+takhfife_jadid);

      end;
                  
      par:=12;
    end;
  end

  else  // section2
  begin
    if arzesh_kole_ajnas<(kol_pardakht+takhfife_gadim)then//2-1
    begin
      if takhfife_jadid>=takhfife_gadim then //2-1-1
      begin
        bedeh_eslah:=0;
        talab_eslah:=takhfife_jadid-takhfife_gadim;
        par:=211;
      end
      else
      begin //2-1-2
        bedeh_eslah:=0;
        talab_eslah:=takhfife_gadim-takhfife_jadid;
        par:=212;
      end;
    end;
    ///////////////
    if arzesh_kole_ajnas=(kol_pardakht+takhfife_gadim)then//2-2
    begin
      if takhfife_jadid>=takhfife_gadim then //2-2-1
      begin
        bedeh_eslah:=0;
        talab_eslah:=takhfife_jadid-takhfife_gadim;
        par:=221;
      end
      else
      begin //2-2-2
        bedeh_eslah:=takhfife_gadim-takhfife_jadid;
        talab_eslah:=0;
        par:=222;
      end;
    end;
   ///////////////
    if arzesh_kole_ajnas>(kol_pardakht+takhfife_gadim)then//2-3
    begin
      if takhfife_jadid>=takhfife_gadim then //2-3-1
      begin
        bedeh_eslah:=arzesh_kole_ajnas-(kol_pardakht+takhfife_gadim);
        talab_eslah:=(kol_pardakht+takhfife_jadid)-(arzesh_kole_ajnas);
        par:=231;
      end
      else
      begin //2-3-2
        bedeh_eslah:=takhfife_gadim-takhfife_jadid;
        talab_eslah:=0;
        par:=232;
      end;
    end;
  end;

  {if par=11 then
  begin
      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+
      FloatToStr(bedeh_eslah)+
      ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;

  end;

  if par=12 then
  begin
      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+
      FloatToStr(bedeh_eslah)+',talab=talab-'+
      FloatToStr(talab_eslah)+
      ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
  end;

  if par=211 then
  begin
      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab+'+
      FloatToStr(talab_eslah)+
      ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
  end;

  if par=212 then
  begin
      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab-'+
      FloatToStr(talab_eslah)+
      ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
  end;

  if par=221 then
  begin
      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab+'+
      FloatToStr(talab_eslah)+
      ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
  end;

  if par=222 then
  begin
      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+
      FloatToStr(bedeh_eslah)+
      ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
  end;

  if par=231 then
  begin
      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+
      FloatToStr(bedeh_eslah)+',talab=talab+'+FloatToStr(talab_eslah)+
      ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
  end;

  if par=232 then
  begin
      DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+
      FloatToStr(bedeh_eslah)+
      ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;
  end;}

/////////////////////////////////////////////////
  frm_main.l_last_op.Caption:='«’·«Õ „»·€  Œ›Ì› ›«ò Ê— ›—Ê‘ »Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString+' »« ‘„«—Â '+DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;



  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[0].Value:=bedeh_eslah;//@bedeh_eslah float,
  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[1].Value:=talab_eslah;//@talab_eslah float,

  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[2].Value:=L_bedehkae.Caption;//@bedehkar float,
  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[3].Value:=L_bestankar.Caption;//@bestankar float,

  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[4].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshcode.AsString;//@code_kharidar float,

  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[5].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshshomare.AsString;//@sh_factor float,
  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[6].Value:=DataM_final.ADOQ_t_sh_facrorhaye_foroshtarikh.AsString;//@tatikh_forosh nvarchar(12),

  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[7].Value:=dataM_final.ADOQ_t_sh_facrorhaye_foroshshahrforoshande.AsString;//@shahrforoshande nvarchar(50),

  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[8].Value:=par;//@par float,

  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[9].Value:=frm_main.l_last_op.Caption+' «“ '+FloatToStr(takhfife_gadim)+' »Â '+FloatToStr(takhfife_jadid);//@amaliat nvarchar(1000),
  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[10].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[11].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)
  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[12].Value:=E_geymat.Text;//@mablagh_takhfif float,
  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.Parameters[13].Value:=e_darsad.Text;//@darsade_takhfif float
  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_forosh_takhfif.ExecProc;

  MessageBox(Handle,'„»·€ ÃœÌœ  Œ›Ì› –ŒÌ—Â ê—œÌœ',' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;

///////////////////////////////

procedure Tfrm_eslahe_forosh_takhif.bedeh_talab_after_eslah;
var check,kol_pardakht,nagd,arzesh_kole_ajnas,takhfife_gabl,takhfife_jadid,darsade_jadid:real;
begin

    takhfife_gabl:=DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsFloat;
    
    arzesh_kole_ajnas:=Dmlistha.ADOmohasebe_foroshkol_.AsFloat;
     
      check:=DataM_final.ADOQ_T_jame_pardakht_check_foroshcheck_kol.AsFloat;


      nagd:=DataM_final.ADOQ_t_pardakht_nagd_foroshnagd.asfloat;

      kol_pardakht:=check+nagd;

      if RadioGroup_jens_type.ItemIndex=1 then /// mablag change
      begin
        if (trim(E_geymat.Text)='')then
        begin
          takhfife_jadid:=0;
          darsade_jadid:=0;
          e_darsad.Text:='';
          E_geymat.Text:='';
        end
        else
        begin
          takhfife_jadid:=StrToFloat(E_geymat.Text);
          //darsade_jadid:=round(100*(StrToFloat(E_geymat.Text)/arzesh_kole_ajnas));
          darsade_jadid:=100*(StrToFloat(E_geymat.Text)/arzesh_kole_ajnas);
          e_darsad.Text:=FloatToStr(darsade_jadid);
        end;
      end
      else /// darsad change
      begin
        if (trim(e_darsad.Text)='') then
        begin
          darsade_jadid:=0;
          takhfife_jadid:=0;
          e_darsad.Text:='';          
          E_geymat.Text:=FloatToStr(takhfife_jadid);
        end
        else
        begin
          takhfife_jadid:=arzesh_kole_ajnas*(StrToFloat(e_darsad.Text)/100);
          E_geymat.Text:=FloatToStr(takhfife_jadid);
          darsade_jadid:=StrToFloat(e_darsad.Text);
        end;
      end;

       /////////////////////////

        //if arzesh_kole_ajnas < takhfife_jadid then
       // begin
            //MessageBox(Handle,'„»·€  Œ›Ì› ‰„Ì  Ê«‰œ «“ «—“‘ ò· «Ã‰«” »Ì‘ — »«‘œ','Œÿ« !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);;
           //e_darsad.Text:='0';
           //E_geymat.Text:='0';
           //takhfife_jadid:=0;
        //end
        //else
        //begin
          /////////////////////////////////////////////////////
          kol_pardakht:=kol_pardakht+takhfife_jadid;
          /////////////////////////////////////////////////////
         if kol_pardakht>arzesh_kole_ajnas then
         begin
            L_bestankar.Caption:=FloatToStr(kol_pardakht-arzesh_kole_ajnas);
            L_bedehkae.Caption:='0';
         end;

         if kol_pardakht<arzesh_kole_ajnas then
         begin
            L_bedehkae.Caption:=FloatToStr(arzesh_kole_ajnas-kol_pardakht);
            L_bestankar.Caption:='0';
         end;

         if kol_pardakht=arzesh_kole_ajnas then
          begin
            L_bestankar.Caption:='0';
            L_bedehkae.Caption:='0';
          end;
        //end;

end;
//////////////////////////////////////////////

procedure Tfrm_eslahe_forosh_takhif.RadioGroup_jens_typeClick(Sender: TObject);
begin
 if RadioGroup_jens_type.ItemIndex=0 then
 begin
  g_darsad.Visible:=true;
  e_darsad.SetFocus;
  g_geymat.Visible:=false;
 end
 else
 begin
  g_darsad.Visible:=false;
  g_geymat.Visible:=True;
  E_geymat.SetFocus;
 end;

 if trim(e_darsad.Text)='' then
 begin
      E_geymat.Text:='';
 end;

 if trim(E_geymat.Text)='' then
 begin
      e_darsad.Text:='';
 end

end;

procedure Tfrm_eslahe_forosh_takhif.FormShow(Sender: TObject);
begin


  
 RadioGroup_jens_type.ItemIndex:=1;
 if RadioGroup_jens_type.ItemIndex=0 then
 begin
  g_darsad.Visible:=true;
  e_darsad.SetFocus;
  e_darsad.Text:=DataM_final.ADOQ_takhfife_foroshdarsade_takhfif.AsString;
  E_geymat.Text:=DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsString;
  g_geymat.Visible:=false;
 end
 else
 begin
  g_darsad.Visible:=false;
  g_geymat.Visible:=True;
  E_geymat.SetFocus;
  E_geymat.Text:=DataM_final.ADOQ_takhfife_foroshmablagh_takhfif.AsString;
  e_darsad.Text:=DataM_final.ADOQ_takhfife_foroshdarsade_takhfif.AsString;
 end;
  bedeh_talab_after_eslah;  
end;

procedure Tfrm_eslahe_forosh_takhif.Button1Click(Sender: TObject);
begin


  if RadioGroup_jens_type.ItemIndex=0 then
  begin
    if trim(e_darsad.Text)='' then
    begin
      E_geymat.Text:='';
      MessageBox(Handle,'œ—’œ  Œ›Ì› —« Ê«—œ ‰„«ÌÌÌœ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end
    else
    begin
          if StrToFloat(E_geymat.Text)>Dmlistha.ADOmohasebe_foroshkol_.AsFloat then
            MessageBox(Handle,'„»·€  Œ›Ì› ‰„Ì  Ê«‰œ «“ «—“‘ ò· «Ã‰«” »Ì‘ — »«‘œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
          else
          begin
            execute_eslahe_takhfife_forosh_stored_procedure;
            close;
          end;
    end;
  end
  else
  begin
    if trim(E_geymat.Text)='' then
    begin
      e_darsad.Text:='';
      MessageBox(Handle,'„»·€  Œ›Ì› —« Ê«—œ ‰„«ÌÌÌœ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end
    else
    begin
          if StrToFloat(E_geymat.Text)>Dmlistha.ADOmohasebe_foroshkol_.AsFloat then
            MessageBox(Handle,'„»·€  Œ›Ì› ‰„Ì  Ê«‰œ «“ «—“‘ ò· «Ã‰«” »Ì‘ — »«‘œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
          else
          begin
            execute_eslahe_takhfife_forosh_stored_procedure;
            close;
          end;
    end;
 end;
end;

procedure Tfrm_eslahe_forosh_takhif.E_geymatChange(Sender: TObject);
begin
  bedeh_talab_after_eslah;
end;

procedure Tfrm_eslahe_forosh_takhif.E_geymatKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh_takhif.e_darsadKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh_takhif.e_darsadChange(Sender: TObject);
begin
if frm_viewanbar.alamat_ashar(e_darsad.Text) then
  bedeh_talab_after_eslah
else
begin
 e_darsad.Text:='';
 e_darsad.SetFocus;
end;
end;

end.
