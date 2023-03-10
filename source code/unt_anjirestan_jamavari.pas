unit unt_anjirestan_jamavari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, SUIDBCtrls, LMDControl,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, DBCtrls, SUIImagePanel, SUIGroupBox, ExtCtrls, SUIForm,
  DB, Mask, SUIButton;

type
  Tfrm_anjirestan_jamavari = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    suiGroupBox2: TsuiGroupBox;
    Label8: TLabel;
    Label_shahr: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    LMDSpeedButton_22: TLMDSpeedButton;
    LMDSpeedButton3: TLMDSpeedButton;
    suiDBGrid1: TsuiDBGrid;
    DBText_arzesh_kol: TDBText;
    Timer1: TTimer;
    LMDSpeedButton_: TLMDSpeedButton;
    GroupBox5: TGroupBox;
    suiDBGrid2: TsuiDBGrid;
    DataSource5: TDataSource;
    GroupBox2: TGroupBox;
    suiButton4: TsuiButton;
    MaskEditrooz: TMaskEdit;
    MaskEditmah: TMaskEdit;
    MaskEditsal: TMaskEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    L_sh_darj_factor: TLabel;
    E_sh_darj_factor: TEdit;
    GroupBox1: TGroupBox;
    L_type: TLabel;
    l_jans_name: TLabel;
    Label3: TLabel;
    L_barcod: TLabel;
    Label12: TLabel;
    GroupBox_koli: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    l_vahed_koli: TLabel;
    L_vahed_jozi: TLabel;
    l_tedad_J_dar_k: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Edit_g_vahed_koli: TEdit;
    Edit_tedad_vahed_koli: TEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    Edit_tedad_jozei_dar_koli: TEdit;
    GroupBox_jozei: TGroupBox;
    Label7: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    L_vahed_joji_jozi: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    RadioGroup_vahed_type: TRadioGroup;
    RadioGroup_jens_type: TRadioGroup;
    suiButton11: TsuiButton;
    e_code_sherkati: TEdit;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Label14: TLabel;
    Edit1: TEdit;
    E_barcod: TEdit;
    Label15: TLabel;
    GroupBox_jens_anbar: TGroupBox;
    btnListMahsol: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    Button2: TButton;
    suiButton1: TsuiButton;
    procedure insert_kharid_to_temp(shakhs,jens,tedad_jozei,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_koli,geymat_koli,
                                    tedad_j_dar_kol,type_,tarikh,sh_factor,code,barcod,code_sherkati:string);

    procedure geymat_kol;

    procedure delete_jens;
    procedure delete_hame_ajnas(s:string);
    procedure LMDSpeedButton_22Click(Sender: TObject);
    procedure LMDSpeedButton3Click(Sender: TObject);
    procedure insert_type;
    procedure LMDSpeedButton_addClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure insert_kharid_to_main(shakhs,jens,tedad_jozei,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_koli,geymat_koli,
                                    tedad_j_dar_kol,type_,tarikh,sh_factor,code,barcod,code_sherkati:string);
    procedure change_foroshande;
    procedure Button12Click(Sender: TObject);
    procedure e_kerayeKeyPress(Sender: TObject; var Key: Char);
    procedure E_darsad_sodKeyPress(Sender: TObject; var Key: Char);
    procedure e_keraye_darsadiKeyPress(Sender: TObject; var Key: Char);

    function check_exists_jens_in_pishkarid(jens,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati:string; var id:string):boolean;

   procedure update_tedade_jens_dar_pish_kharid(id,tedad_jozi,tedad_koli,geymate_jozi:string);

  procedure update_tedade_jens_dar_ezafe_kardane_jens_be_kharid_dar_eslahe_kharid(id,tedad_jozi,tedad_koli,geymate_jozi:string);

  function check_exists_jens_in_ajnase_kharid(sh_factor,shakhs,jens,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati:string; var id:string;var tedade_kol:string):boolean;

  procedure execute_eslahe_kharid_ezafe(shakhs,jens,tedad_jozei,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_koli,geymat_koli,
                                    tedad_j_dar_kol,type_,tarikh,sh_factor,code,barcod,code_sherkati:string);
    procedure btnListMahsolClick(Sender: TObject);
    procedure LMDSpeedButton_Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup_jens_typeClick(Sender: TObject);
    procedure RadioGroup_vahed_typeClick(Sender: TObject);
    procedure jens_type;
    procedure e_code_sherkatiChange(Sender: TObject);
    procedure E_barcodChange(Sender: TObject);
    procedure E_barcodExit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit_g_vahed_koliKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_tedad_vahed_koliKeyPress(Sender: TObject;
      var Key: Char);
    procedure Edit_tedad_jozei_dar_koliKeyPress(Sender: TObject;
      var Key: Char);
    procedure suiButton11Click(Sender: TObject);
    function check(s:string):boolean;
    procedure get_public_parametr;
    function check_param:boolean;
    procedure clear;
    function check_sh_fac:boolean;
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure execute_kharid_store_procedure;
    procedure suiButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    tedad_koli,tedad_jozei,
  geymat_koli,vahed_koli,vahed_jozei,jens,geymat_jozei,t_j_dar_koli,type_:string;

  sh_factor:string;
    { Public declarations }

  end;

var
  frm_anjirestan_jamavari: Tfrm_anjirestan_jamavari;

implementation

uses Untdmlistha, unt_datamodule1, untjens_kharid,
  unt_add_jens_to_pishkharid, Math, unt_entekhab_check, unt_DataM_final,
  unt_eslah_kharid, unt_eslah_forosh_add_jens, unt_eslah_kharid_add_jens,
  unt_main, unt_eslah_forosh, Unt_dmanbar, unt_datam_sp_eslahe_forosh,
  Untdmanbarexit, unt_Dm_zayeat_marjoei, unt_eslahe_pish_kharid,
  unt_pish_kharid, unt_login, Taghvim, Unt_sefaresh_jadid,
  unt_show_jens_baraye_entekhab_kharid, unt_DataM_sp, unt_Dm_sp_backup,
  unt_tozihat, Untaddanbar;

{$R *.dfm}
procedure Tfrm_anjirestan_jamavari.execute_kharid_store_procedure;
var time_,nagd:string;
begin

   if RadioGroup2.ItemIndex=1 then
   begin
    DataModule1.ADOQ_sh_factor_kharid.SQL.Text:='select * from T_shomare_factor_kharid where shahrforoshande='+QuotedStr(DataModule1.ADOQuery4shahrforoshande.AsString);
    DataModule1.ADOQ_sh_factor_kharid.Open;

    sh_factor:=DataModule1.ADOQ_sh_factor_kharidshomare.AsString;
   end
   else
    sh_factor:=E_sh_darj_factor.Text;

    
 time_:=frm_main.LMDClock1.Digital.Caption;
 nagd:='0';

 if RadioGroup2.ItemIndex=0 then
 begin
  DataM_sp.ADOStoredProc_kharid.Parameters[8].Value:=0;  //@type_sh_factor
 end
 else
   DataM_sp.ADOStoredProc_kharid.Parameters[8].Value:=1;  //@type_sh_factor



  frm_main.l_last_op.Caption:='??? ??? ???? ????? ?? ????????? '+DataModule1.ADOQuery4shahrforoshande.AsString;

  DataM_sp.ADOStoredProc_kharid.Parameters[0].Value:=DataModule1.ADOQuery4shahrforoshande.AsString;  //@shahrforoshande
  DataM_sp.ADOStoredProc_kharid.Parameters[1].Value:=time_;  //@time
  DataM_sp.ADOStoredProc_kharid.Parameters[2].Value:=MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text;;  //@tarikh
  DataM_sp.ADOStoredProc_kharid.Parameters[3].Value:=sh_factor;  //@sh_factor
  DataM_sp.ADOStoredProc_kharid.Parameters[4].Value:=DataModule1.ADOQuery4code.AsString; //@code
  DataM_sp.ADOStoredProc_kharid.Parameters[5].Value:='0';  //@talab
  DataM_sp.ADOStoredProc_kharid.Parameters[6].Value:='0';  //@bedeh


  DataM_sp.ADOStoredProc_kharid.Parameters[7].Value:='0';  //@nagd

  DataM_sp.ADOStoredProc_kharid.Parameters[9].Value:=frm_main.l_last_op.Caption+' ?? ????? ?????? '+sh_factor;//@amaliat nvarchar(1000)
  DataM_sp.ADOStoredProc_kharid.Parameters[10].Value:='0';  //@keraye
  DataM_sp.ADOStoredProc_kharid.Parameters[11].Value:=trim(Memo1.Text);//@tozihat_forosh  nvarchar
  DataM_sp.ADOStoredProc_kharid.Parameters[12].Value:='';//@sandog nvarchar(30)
  DataM_sp.ADOStoredProc_kharid.Parameters[13].Value:='';//@tozih nvarchar(150),
  DataM_sp.ADOStoredProc_kharid.Parameters[14].Value:='';//@type_sandog nvarchar(6),
  DataM_sp.ADOStoredProc_kharid.ExecProc;


  MessageBox(Handle,'?????? ??? ???? ??? ????? ??','???? !',MB_ok or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );


            delete_hame_ajnas('ok');
            geymat_kol;

            frmaddanbar.ShowModal;

end;

////////////////////





function Tfrm_anjirestan_jamavari.check_sh_fac:boolean;
begin
  check_sh_fac:=true;

  if(RadioGroup2.ItemIndex=0)then
  begin
    if(trim(E_sh_darj_factor.Text)='')then
    begin
     check_sh_fac:=false;
     MessageBox(Handle,'????? ?????? ?? ???? ????.','???! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );

    end
    else
    begin
      DataM_final.ADOQ_t_sh_facrorhaye_kharid.SQL.Text:='select * from t_sh_facrorhaye_kharid where shomare='+
      E_sh_darj_factor.Text+' and shahrforoshande='+QuotedStr(DataModule1.ADOQuery4shahrforoshande.AsString);
      DataM_final.ADOQ_t_sh_facrorhaye_kharid.open;

      if DataM_final.ADOQ_t_sh_facrorhaye_kharid.RecordCount>0 then
      begin
        check_sh_fac:=false;
        MessageBox(Handle,'????? ?????? ???? ??? ?  ???? ???? ??? ???.','???! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
      end;
    end;

   end;
end;




procedure Tfrm_anjirestan_jamavari.clear;
begin
    Edit_g_vahed_koli.Text:='';
    Edit1.Text:='';
    Edit2.Text:='';
    Edit3.Text:='';
    Edit_tedad_vahed_koli.Text:='';
    Edit_tedad_jozei_dar_koli.Text:='';
    e_code_sherkati.Clear;
end;



function Tfrm_anjirestan_jamavari.check_param:boolean;
var s:pchar;
     st:string;
begin

  if Edit_g_vahed_koli.Text='' then
    Edit_g_vahed_koli.Text:='0';

  if Edit_tedad_vahed_koli.Text='' then
     Edit_tedad_vahed_koli.Text:='0';

  if Edit_tedad_jozei_dar_koli.Text='' then
     Edit_tedad_jozei_dar_koli.Text:='0';


   if Edit3.Text='' then
    Edit3.Text:='0';

   if Edit2.Text=''then
    Edit2.Text:='0';

   st:='';
   check_param:=true;
   if RadioGroup_jens_type.ItemIndex=0 then
   begin
     if (trim(l_jans_name.Caption)='')or(trim(l_jans_name.Caption)='??? ?????? ????') then
       st:=' ??? ??? ';
       check_param:=false;
   end
   else
     begin
       if (trim(l_jans_name.Caption)='')or(trim(l_jans_name.Caption)='??? ?????? ????') then
        begin
          st:=' ??? ??? ';
          check_param:=false;
        end;
     end;


   if RadioGroup_vahed_type.ItemIndex=0 then
   begin
      if RadioGroup_jens_type.ItemIndex=1 then
      begin
        if DBLookupComboBox4.Text='' then
          begin
           st:=st+' ???? ??? ??? ';
           check_param:=false;
          end;

        if DBLookupComboBox3.Text='' then
         begin
            st:=st+' ???? ???? ??? ';
            check_param:=false;
         end;

        if StrToFloat(Edit_tedad_jozei_dar_koli.Text)=0 then
          begin
            st:=st+'????? ???? ???? ?? ???? ??? ?';
            check_param:=false;
          end;
      end;

      if RadioGroup_jens_type.ItemIndex=0 then
      begin
        if l_vahed_koli.Caption='' then
          begin
           st:=st+' ???? ??? ??? ';
           check_param:=false;
          end;

        if L_vahed_jozi.Caption='' then
         begin
            st:=st+' ???? ???? ??? ';
            check_param:=false;
         end;

        if (l_tedad_J_dar_k.Caption='0')or(l_tedad_J_dar_k.Caption='') then
          begin
            st:=st+'????? ???? ???? ?? ???? ??? ?';
            check_param:=false;
          end;
      end;

      if Edit_g_vahed_koli.Text='' then
        begin
          {st:=st+'???? ???? ??? ??? ';
          check_param:=false;}
        end;

      if StrToFloat(Edit_g_vahed_koli.Text)=0 then
        begin
          {st:=st+' ???? ???? ??? ??? ';
          check_param:=false; }
        end;
      if StrToFloat(Edit_tedad_vahed_koli.Text)=0 then
        begin
          st:=st+'????? ???? ??? ???  ';
          check_param:=false;
        end;

      st:=st+'?? ???? ??????';
   end;

   if RadioGroup_vahed_type.ItemIndex=1 then
   begin
       if RadioGroup_jens_type.ItemIndex=1 then
       begin
        if DBLookupComboBox2.Text='' then
          begin
            st:=st+'???? ???? ??? ';
            check_param:=false;
          end;
       end;

       if RadioGroup_jens_type.ItemIndex=0 then
       begin
        if L_vahed_joji_jozi.Caption='' then
          begin
            st:=st+'???? ???? ??? ';
            check_param:=false;
          end;
       end;

       if StrToFloat(Edit3.Text)=0 then
          begin
            //st:=st+' ???? ?? ???? ???? ';
            //check_param:=false;
          end;
       if StrToFloat(Edit2.Text)=0 then
         begin
            st:=st+' ????? ????? ???? ';
            check_param:=false;
         end;
       st:=st+'?? ???? ??????';
   end;

  if  st<>'?? ???? ??????' then
  begin
     check_param:=false;
     s:=pchar(st);
    MessageBox(Handle,s,'???! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
  end
  else
  begin
    check_param:=true;
   // close;
  end;

end;



procedure TFrm_anjirestan_jamavari.get_public_parametr;
var t,temp2:string;
    temp:real;
begin
  if RadioGroup_jens_type.ItemIndex=0 then
    begin
      jens:=l_jans_name.Caption;
    end
    else
    begin
      jens:=l_jans_name.Caption;/////////////////////////////////////////////////////////////////
    end;

  if RadioGroup_vahed_type.ItemIndex=0 then
    begin
       type_:='koli';

       if RadioGroup_jens_type.ItemIndex=1 then
       begin
        vahed_koli:=DBLookupComboBox4.Text;
        vahed_jozei:=DBLookupComboBox3.Text;
        t_j_dar_koli:=Edit_tedad_jozei_dar_koli.Text;
       end
       else
       begin
        vahed_koli:=l_vahed_koli.Caption;
        vahed_jozei:=L_vahed_jozi.Caption;
        t_j_dar_koli:=l_tedad_J_dar_k.Caption;
       end;

       geymat_koli:=Edit_g_vahed_koli.Text;
       tedad_koli:=Edit_tedad_vahed_koli.Text;



       if Edit_tedad_jozei_dar_koli.Text='0' then
           t:='1'
       else
        t:=Edit_tedad_jozei_dar_koli.Text;

       temp:=RoundTo(StrToFloat(geymat_koli) / StrToFloat(t),0);

       tedad_jozei:=FloatToStr(StrToFloat(tedad_koli)*StrToFloat(t));
       temp2:=FloatToStr(temp);

       tedad_jozei:=FloatToStr(StrToFloat(tedad_koli)*StrToFloat(t_j_dar_koli));
       geymat_jozei:=temp2;
    end;
  if RadioGroup_vahed_type.ItemIndex=1 then
    begin
       type_:='jozi';

       if RadioGroup_jens_type.ItemIndex=1 then
       begin
        vahed_jozei:=DBLookupComboBox2.Text;
       end
       else
       begin
        vahed_jozei:=L_vahed_joji_jozi.Caption
       end;
       tedad_jozei:=Edit2.Text;
       geymat_jozei:=Edit3.Text;
       geymat_koli:='';
       vahed_koli:='';
       tedad_koli:='';
       t_j_dar_koli:='';
    end;


end;




function Tfrm_anjirestan_jamavari.check(s:string):boolean;
var i,j:integer;
begin
    check:=true;
    j:=0;
   for i:=1 to StrLen(PChar(s)) do
     begin
        if s[i]='.' then
          j:=j+1;
     end;
   if j>1 then
     begin
       MessageBox(Handle,'????? ???? ?????? ??? ?? ??? ???? ???? ???.','????! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
       check:=false;
     end;
end;




procedure Tfrm_anjirestan_jamavari.jens_type;
begin
   if RadioGroup_jens_type.ItemIndex=0 then
   begin
     GroupBox_jens_anbar.Visible:=true;


     Label14.Visible:=False;
     Label15.Visible:=False;
     E_barcod.Visible:=false;
     Edit1.Visible:=false;


     l_jans_name.Caption:='????? ?????? ????';

     e_code_sherkati.Clear;

     E_barcod.Text:='';

     l_vahed_koli.Caption:='';
     L_vahed_jozi.Caption:='';
     L_vahed_joji_jozi.Caption:='';
     l_tedad_J_dar_k.Caption:='';

     l_vahed_koli.Visible:=true;
     L_vahed_jozi.Visible:=true;
     L_vahed_joji_jozi.Visible:=true;
     l_tedad_J_dar_k.Visible:=true;

     DBLookupComboBox3.Visible:=false;
     DBLookupComboBox4.Visible:=false;
     DBLookupComboBox2.Visible:=false;

     Edit_tedad_jozei_dar_koli.Visible:=false;
     RadioGroup_vahed_type.Enabled:=false;
   end
   else
   begin
     GroupBox_jens_anbar.Visible:=false;

     Label14.Visible:=True;
     Label15.Visible:=True;
     E_barcod.Visible:=True;
     Edit1.Visible:=True;


     E_barcod.Text:='';
     E_barcod.SetFocus;
     Edit1.Text:='';
     l_jans_name.Caption:='????? ?????? ????';

     e_code_sherkati.Clear;

     l_vahed_koli.Caption:='';
     L_vahed_jozi.Caption:='';
     l_tedad_J_dar_k.Caption:='';
     L_vahed_joji_jozi.Caption:='';

     l_vahed_koli.Visible:=false;
     L_vahed_jozi.Visible:=false;
     L_vahed_joji_jozi.Visible:=false;
     l_tedad_J_dar_k.Visible:=false;

     DBLookupComboBox3.Visible:=true;
     DBLookupComboBox4.Visible:=true;
     DBLookupComboBox2.Visible:=true;

     Edit_tedad_jozei_dar_koli.Visible:=true;
     RadioGroup_vahed_type.Enabled:=true;
   end;
end;



procedure Tfrm_anjirestan_jamavari.execute_eslahe_kharid_ezafe(shakhs,jens,tedad_jozei,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_koli,geymat_koli,
                                    tedad_j_dar_kol,type_,tarikh,sh_factor,code,barcod,code_sherkati:string);
var check,kol_pardakht,nagd,g_kol:string;
    kol_gabl:string;
    bedeh_eslah,talab_eslah,par,temp:real;
    x,type_jozi_koli,type_exist:Real;
    temp2,t,id,tedade_kol:String;
begin

    id:='-1';
   { Dmlistha.ADOmohasebe_kharid.SQL.Text:='select sum(kol)as kol_ from  jens_ '+
    '  where shahrforoshande='+QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
    Dmlistha.ADOmohasebe_kharid.Open;
    sleep(2000);}
    

    if (frm_eslah_kharid_add_jens.DBT_m_check.Caption='0') or (frm_eslah_kharid_add_jens.DBT_m_check.Caption='') then
             check:='0'
         else
          check:=frm_eslah_kharid_add_jens.DBT_m_check.Caption;

    if (frm_eslah_kharid_add_jens.DBT_mab_gabl.Caption='') or(frm_eslah_kharid_add_jens.DBT_mab_gabl.Caption='0')then
      nagd:='0'
    else
      nagd:=frm_eslah_kharid_add_jens.DBT_mab_gabl.Caption;

    if (frm_eslah_kharid_add_jens.DBText_t_jam.Caption='0') or(frm_eslah_kharid_add_jens.DBText_t_jam.Caption='') then
      g_kol:='0'
    else
      g_kol:=frm_eslah_kharid_add_jens.DBText_t_jam.Caption;

          kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat);


   if geymat_jozi='' then
     geymat_jozi:='0';

  if tedad_koli='' then
     tedad_koli:='0';

  if tedad_jozei='' then
     tedad_jozei:='0';

  if geymat_koli='' then
     geymat_koli:='0';

  if geymat_jozi='' then
     geymat_jozi:='0';

  if tedad_j_dar_kol='' then
     tedad_j_dar_kol:='0';

     temp:=(StrToFloat(tedad_j_dar_kol)*StrToFloat(tedad_koli)+StrToFloat(tedad_jozei))*StrToFloat(geymat_jozi);
       //////////////
       g_kol:=FloatToStr(StrToFloat(g_kol)+temp);
       //////////////

         if StrToFloat(kol_pardakht)>StrToFloat(g_kol) then
         begin
          frm_eslah_kharid_add_jens.L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(g_kol));
          frm_eslah_kharid_add_jens.L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<StrToFloat(g_kol) then
         begin
           frm_eslah_kharid_add_jens.L_bedehkae.Caption:=FloatToStr(StrToFloat(g_kol)-StrToFloat(kol_pardakht));
           frm_eslah_kharid_add_jens.L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=StrToFloat(g_kol) then
         begin
          frm_eslah_kharid_add_jens.L_bestankar.Caption:='0';
          frm_eslah_kharid_add_jens.L_bedehkae.Caption:='0';
         end;

    {if (frm_eslah_kharid_add_jens.DBText_t_jam.Caption='0') or(frm_eslah_kharid_add_jens.DBText_t_jam.Caption='') then
      g_kol:='0'
    else
      g_kol:=frm_eslah_kharid_add_jens.DBText_t_jam.Caption; }

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

      kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat);
      


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

       bedeh_eslah:=StrToFloat(g_kol)-(StrToFloat(kol_pardakht));

       par:=3;
      end;

//////////////////////////////////////////////////////////


  code_sherkati:=UpperCase(code_sherkati);

  temp2:='0';

if not check_exists_jens_in_ajnase_kharid(sh_factor,shakhs,jens,geymat_jozi,vahed_koli,vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati,id,tedade_kol) then
begin
   type_exist:=1;
  if type_='jozi' then
  begin
     type_jozi_koli:=1;
     temp:=  StrToFloat(geymat_jozi);
     temp2:=FloatToStr(temp);
     x:=StrToFloat(tedad_jozei)* StrToFloat(geymat_jozi);
        {Dmlistha.ADOkharidha.SQL.Text:='INSERT INTO jens_(code_sherkati,SHAHRFOROSHANDE,'+
                                                       'JENS,'+
                                                       'TeDAD,'+
                                                       'GhEYMAT,'+
                                                       'KOL,'+
                                                       'vahed_koli,vahed_jozei,tedad_koli,geymat_koli,tedad_jozi_dar_koli,tarikh,sh_factor,code,teded_jozi,barcod)'+
                                                       'values('+QuotedStr(code_sherkati)+','+QuotedStr(shakhs)+
                                                       ','+QuotedStr(jens)+
                                                       ','+QuotedStr(tedad_jozei)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(FloatToStr(x))+
                                                       ','+QuotedStr(vahed_koli)+
                                                       ','+QuotedStr(vahed_jozei)+
                                                       ','+QuotedStr(tedad_koli)+
                                                       ','+QuotedStr(geymat_koli)+
                                                       ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(tarikh)+','+sh_factor+
                                                       ','+code+','+tedad_jozei+','+QuotedStr(barcod)+')';
                                                       Dmlistha.ADOkharidha.ExecSQL; }

  end;

  if type_='koli' then
     begin
      type_jozi_koli:=2;
          t:=tedad_j_dar_kol;
       if tedad_j_dar_kol='0' then
           t:='1';
       temp:= RoundTo(StrToFloat(geymat_koli) / StrToFloat(t),-1);

       tedad_jozei:=FloatToStr(StrToFloat(tedad_koli)*StrToFloat(t));
       
       x:=StrToFloat(tedad_koli)* StrToFloat(geymat_koli);

       temp2:=FloatToStr(temp);
       {Dmlistha.ADOkharidha.SQL.Text:='INSERT INTO jens_(code_sherkati,SHAHRFOROSHANDE,'+
                                                       'JENS,'+
                                                       'TeDAD,'+
                                                       'GhEYMAT,'+
                                                       'KOL,'+
                                                       'vahed_koli,vahed_jozei,tedad_koli,geymat_koli,tedad_jozi_dar_koli,tarikh,sh_factor,code,teded_jozi,barcod)'+
                                                       'values('+QuotedStr(code_sherkati)+','+ QuotedStr(shakhs)+
                                                       ','+QuotedStr(jens)+
                                                       ','+QuotedStr(tedad_jozei)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(FloatToStr(x))+
                                                       ','+QuotedStr(vahed_koli)+
                                                       ','+QuotedStr(vahed_jozei)+
                                                       ','+QuotedStr(tedad_koli)+
                                                       ','+QuotedStr(geymat_koli)+
                                                       ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(tarikh)+','+sh_factor+','+code+','+QuotedStr('0')+','+QuotedStr(barcod)+')';
                                                       Dmlistha.ADOkharidha.ExecSQL; }
     end;

   { Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='insert into T_anbar_majazi(tedad_koli,vahed_koli,geymat_koli,tedad_jozi_da_koli,vahed_jozi,geymat_forosh_koli'+
     ',calaname,tedadanbar,anbarname,geymatkharid,geymatforosh,molahezatforosh,barcod,code_sherkati,shakhs_sherkat,sh_factor,tarikh)' +

     'values('+QuotedStr(tedad_koli)+','+QuotedStr(vahed_koli)+','+QuotedStr(geymat_koli)+
     ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(vahed_jozei)+','+QuotedStr(geymat_koli)+
     ','+QuotedStr(jens)+','+QuotedStr(tedad_jozei)+','+QuotedStr('????? ?????')+
     ','+QuotedStr(geymat_jozi)+','+QuotedStr(geymat_jozi)+','+QuotedStr('????? ?? ????? ????? ???? ????')+','+
     QuotedStr(barcod)+','+QuotedStr(code_sherkati)+','+QuotedStr(shakhs)+','+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+','+QuotedStr(frm_main.L_tarikh.Caption)+')';
     Dmlistha.ADOQuery_anbar_majazi.ExecSQL;}

end
else
begin
    type_exist:=2;

    {update_tedade_jens_dar_ezafe_kardane_jens_be_kharid_dar_eslahe_kharid(id,tedad_jozei,tedad_koli,geymat_jozi);

     Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update T_anbar_majazi set tedadanbar=tedadanbar+'+tedad_jozei+
     ',tedad_koli=tedad_koli+'+tedad_koli+
     ' where calaname='+

    QuotedStr(jens)+' and vahed_koli='+QuotedStr(vahed_koli)+
    ' and  vahed_jozi='+QuotedStr(vahed_jozei)+' and tedad_jozi_da_koli='+
    tedad_j_dar_kol+' and geymatkharid='+geymat_jozi+
    ' and sh_factor='+sh_factor+
    ' and shakhs_sherkat='+QuotedStr(shakhs)+
    ' and tedad_koli='+tedad_koli+
    ' and tedadanbar='+tedade_kol;
    Dmlistha.ADOQuery_anbar_majazi.ExecSQL; }



end;
   //////////// khoroji //////////////
   { Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(jens)+','+
    tedad_jozei+','+
    inttostr(0)+','+
    QuotedStr(vahed_koli)+','+
    QuotedStr(vahed_jozei)+','+

    tedad_koli+','+
    tedad_j_dar_kol+','+
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+','+

    tedad_jozei+','+


    QuotedStr(' ????? ????? ????? ?? ?????? ???? ????? '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' ??????? '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(barcod)+','+
    QuotedStr(code_sherkati)+','+

    QuotedStr('????? ?????')+','+
    QuotedStr(frm_main.LMDClock1.Digital.Caption)+','+
    QuotedStr('????? - ????? ???? ????? ?? ?????? ????')+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;  }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////
      frm_main.l_last_op.Caption:=' ????? ???? ????? '+jens+' ?? ???? ?? ????? ?????? '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
      ' ?? '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;



   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[0].Value:=frm_eslah_kharid_add_jens.L_bedehkae.Caption;//@bedehkar float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[1].Value:=frm_eslah_kharid_add_jens.L_bestankar.Caption;//@bestankar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[2].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;//@code_kharidar float,

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[3].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;//@sh_factor float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[4].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidtarikh.AsString;//@tatikh_forosh nvarchar(12),

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[5].Value:=jens;//@calaname nvarchar(41),




   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[6].Value:=StrTofloat(tedad_jozei);//@tedade_jozi float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[7].Value:='0';//@calacod float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[8].Value:=vahed_koli;//@vahed_koli nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[9].Value:=vahed_jozei;//@vahed_jozi nvarchar(31),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[10].Value:=StrToFloat(tedad_koli);//@tedade_koli_forosh float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[11].Value:=tedad_j_dar_kol;//@tedad_jozi_da_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[12].Value:=StrToFloat(tedad_jozei);//@tedad_kole_jabejaei float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[13].Value:=' ????? ????? ????? ?? ?????? ???? ????? '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' ??????? '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@tozihe_anbar nvarchar(200),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[14].Value:=barcod;//@barcod nvarchar(15),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[15].Value:=code_sherkati;//@code_sherkati nvarchar(11),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[16].Value:='????? ?????';//@anbarname nvarchar(30),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[17].Value:='????? - ????? ???? ????? ?? ?????? ????';//@type_kh_az_anbar nvarchar(100),



   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[18].Value:=frm_main.l_last_op.Caption;//@amaliat nvarchar(1000),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[19].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[20].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12)

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[21].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@shahrforoshande nvarchar(100),


   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[22].Value:=bedeh_eslah;//@bedeh_eslah float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[23].Value:=talab_eslah;//@talab_eslah float
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[24].Value:=par;//@par float

   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[25].Value:='????? ?? ????? ????? ???? ????';//@tozihe_anbare_majazi nvarchar(200),
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[26].Value:=type_exist;//@type_exist float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[27].Value:=type_exist;//@type_jozi_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[28].Value:=temp2;//@temp2 float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[29].Value:=geymat_koli;//@geymat_koli float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[30].Value:=geymat_jozi;//@geymate_jozi float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[31].Value:=StrToFloat(id);//@id float,
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.Parameters[32].Value:=x;//@x float
   datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_ezafe_jens.ExecProc;

   clear;

   if type_exist=2 then
     MessageBox(Handle,'?? ???? ?? ?????? ???? ??? ???? ?????? ????? ?? ??? ?? ?????? ???? ???? ??? ??? .????? ???? ??? ????? ?? ????? ???? ????? ??.','???',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);

   MessageBox(Handle,pchar('????? ??????? ?? ????? ?????? ????? ??.'),'????!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);

end;
////////////////////////////////////////////////

function Tfrm_anjirestan_jamavari.check_exists_jens_in_ajnase_kharid(sh_factor,shakhs,jens,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati:string; var id:string;var tedade_kol:string):boolean;
begin
  check_exists_jens_in_ajnase_kharid:=false;
  
  Dmlistha.ADOkharidha.SQL.Text:='select * from jens_  where jens='+
  QuotedStr(jens)+
  ' and vahed_koli='+QuotedStr(vahed_koli)+
  ' and  vahed_jozei='+QuotedStr(vahed_jozei)+' and tedad_jozi_dar_koli='+
  tedad_j_dar_kol+' and gheymat='+geymat_jozi+
  ' and barcod='+QuotedStr(barcod)+
  ' and code_sherkati='+QuotedStr(code_sherkati)+
  ' and sh_factor='+sh_factor+
  ' and shahrforoshande='+QuotedStr(shakhs);


  Dmlistha.ADOkharidha.Open;

  if Dmlistha.ADOkharidha.RecordCount >0 then
  begin
    check_exists_jens_in_ajnase_kharid:=true;
    id:=Dmlistha.ADOkharidhaid.AsString;
    tedade_kol:=Dmlistha.ADOkharidhatedad.AsString;
  end;

end;

/////////
procedure Tfrm_anjirestan_jamavari.update_tedade_jens_dar_ezafe_kardane_jens_be_kharid_dar_eslahe_kharid(id,tedad_jozi,tedad_koli,geymate_jozi:string);
begin
  Dmlistha.ADOkharidha.SQL.Text:='update jens_ set TeDAD=TeDAD+'+tedad_jozi+
  ',tedad_koli=tedad_koli+'+tedad_koli+
  ',teded_jozi=teded_jozi+'+tedad_jozi+',kol=kol+'+FloatToStr(StrToFloat(tedad_jozi)*StrToFloat(geymate_jozi))+
  ' where id='+id;
  Dmlistha.ADOkharidha.ExecSQL;
end;


///////////
procedure Tfrm_anjirestan_jamavari.update_tedade_jens_dar_pish_kharid(id,tedad_jozi,tedad_koli,geymate_jozi:string);
begin
  DataM_final.ADOQuery_pish_kharid.SQL.Text:='update t_kharid_temp set TeDAD=TeDAD+'+tedad_jozi+
  ',tedad_koli=tedad_koli+'+tedad_koli+
  ',teded_jozi=teded_jozi+'+tedad_jozi+',kol=kol+'+FloatToStr(StrToFloat(tedad_jozi)*StrToFloat(geymate_jozi))+
  ' where id='+id;
  DataM_final.ADOQuery_pish_kharid.ExecSQL;

  suiDBGrid1.Visible:=false;
  suiDBGrid1.Visible:=true;
end;

function Tfrm_anjirestan_jamavari.check_exists_jens_in_pishkarid(jens,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati:string; var id:string):boolean;
begin
  check_exists_jens_in_pishkarid:=false;
  DataM_final.ADOQuery_pish_kharid2.SQL.Text:='select * from t_kharid_temp where jens='+
  QuotedStr(jens)+
  ' and vahed_koli='+QuotedStr(vahed_koli)+
  ' and  vahed_jozei='+QuotedStr(vahed_jozei)+' and tedad_jozi_dar_koli='+
  tedad_j_dar_kol+' and gheymat='+geymat_jozi+
  ' and barcod='+QuotedStr(barcod)+
  ' and code_sherkati='+QuotedStr(code_sherkati);


  DataM_final.ADOQuery_pish_kharid2.Open;

  if DataM_final.ADOQuery_pish_kharid2.RecordCount >0 then
  begin
    check_exists_jens_in_pishkarid:=true;
    id:=DataM_final.ADOQuery_pish_kharid2id.AsString;
  end;

end;
//////////////


procedure Tfrm_anjirestan_jamavari.change_foroshande;
begin
    DataModule1.ADOQuery_pish_kharid.SQL.Text:='select * from t_kharid_temp';
    DataModule1.ADOQuery_pish_kharid.Open;
   if DataModule1.ADOQuery_pish_kharid.RecordCount >0 then
   begin
    delete_hame_ajnas('ok');
    geymat_kol;

    DataModule1.ADOQuery_pish_kharid.SQL.Text:='select * from t_kharid_temp';
    DataModule1.ADOQuery_pish_kharid.Open;
    MessageBox(Handle,'????? ????? ?????? ??????????????? ???? ??? ??? ?????. ','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   end;
end;

procedure Tfrm_anjirestan_jamavari.insert_kharid_to_main(shakhs,jens,tedad_jozei,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_koli,geymat_koli,
                                    tedad_j_dar_kol,type_,tarikh,sh_factor,code,barcod,code_sherkati:string);
var temp,x:Real;
    temp2,t,id,tedade_kol:String;
begin
  code_sherkati:=UpperCase(code_sherkati);

  if tedad_koli='' then
     tedad_koli:='0';

  if tedad_jozei='' then
     tedad_jozei:='0';

  if geymat_koli='' then
     geymat_koli:='0';

  if geymat_jozi='' then
     geymat_jozi:='0';

  if tedad_j_dar_kol='' then
     tedad_j_dar_kol:='0';

if not check_exists_jens_in_ajnase_kharid(sh_factor,shakhs,jens,geymat_jozi,vahed_koli,vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati,id,tedade_kol) then
begin

  if type_='jozi' then
  begin
     temp:=  StrToFloat(geymat_jozi);
     temp2:=FloatToStr(temp);
     x:=StrToFloat(tedad_jozei)* StrToFloat(geymat_jozi);
        Dmlistha.ADOkharidha.SQL.Text:='INSERT INTO jens_(code_sherkati,SHAHRFOROSHANDE,'+
                                                       'JENS,'+
                                                       'TeDAD,'+
                                                       'GhEYMAT,'+
                                                       'KOL,'+
                                                       'vahed_koli,vahed_jozei,tedad_koli,geymat_koli,tedad_jozi_dar_koli,tarikh,sh_factor,code,teded_jozi,barcod)'+
                                                       'values('+QuotedStr(code_sherkati)+','+QuotedStr(shakhs)+
                                                       ','+QuotedStr(jens)+
                                                       ','+QuotedStr(tedad_jozei)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(FloatToStr(x))+
                                                       ','+QuotedStr(vahed_koli)+
                                                       ','+QuotedStr(vahed_jozei)+
                                                       ','+QuotedStr(tedad_koli)+
                                                       ','+QuotedStr(geymat_koli)+
                                                       ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(tarikh)+','+sh_factor+
                                                       ','+code+','+tedad_jozei+','+QuotedStr(barcod)+')';
                                                       Dmlistha.ADOkharidha.ExecSQL;

  end;

  if type_='koli' then
     begin
          t:=tedad_j_dar_kol;
       if tedad_j_dar_kol='0' then
           t:='1';
       temp:= RoundTo(StrToFloat(geymat_koli) / StrToFloat(t),-1);

       tedad_jozei:=FloatToStr(StrToFloat(tedad_koli)*StrToFloat(t));
       
       x:=StrToFloat(tedad_koli)* StrToFloat(geymat_koli);
       temp2:=FloatToStr(temp);
       Dmlistha.ADOkharidha.SQL.Text:='INSERT INTO jens_(code_sherkati,SHAHRFOROSHANDE,'+
                                                       'JENS,'+
                                                       'TeDAD,'+
                                                       'GhEYMAT,'+
                                                       'KOL,'+
                                                       'vahed_koli,vahed_jozei,tedad_koli,geymat_koli,tedad_jozi_dar_koli,tarikh,sh_factor,code,teded_jozi,barcod)'+
                                                       'values('+QuotedStr(code_sherkati)+','+ QuotedStr(shakhs)+
                                                       ','+QuotedStr(jens)+
                                                       ','+QuotedStr(tedad_jozei)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(FloatToStr(x))+
                                                       ','+QuotedStr(vahed_koli)+
                                                       ','+QuotedStr(vahed_jozei)+
                                                       ','+QuotedStr(tedad_koli)+
                                                       ','+QuotedStr(geymat_koli)+
                                                       ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(tarikh)+','+sh_factor+','+code+','+QuotedStr('0')+','+QuotedStr(barcod)+')';
                                                       Dmlistha.ADOkharidha.ExecSQL;
     end;

  clear;


     Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='insert into T_anbar_majazi(tedad_koli,vahed_koli,geymat_koli,tedad_jozi_da_koli,vahed_jozi,geymat_forosh_koli'+
     ',calaname,tedadanbar,anbarname,geymatkharid,geymatforosh,molahezatforosh,barcod,code_sherkati,shakhs_sherkat,sh_factor,tarikh)' +

     'values('+QuotedStr(tedad_koli)+','+QuotedStr(vahed_koli)+','+QuotedStr(geymat_koli)+
     ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(vahed_jozei)+','+QuotedStr(geymat_koli)+
     ','+QuotedStr(jens)+','+QuotedStr(tedad_jozei)+','+QuotedStr('????? ?????')+
     ','+QuotedStr(geymat_jozi)+','+QuotedStr(geymat_jozi)+','+QuotedStr('????? ?? ????? ????? ???? ????')+','+
     QuotedStr(barcod)+','+QuotedStr(code_sherkati)+','+QuotedStr(shakhs)+','+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+','+QuotedStr(frm_main.L_tarikh.Caption)+')';
     Dmlistha.ADOQuery_anbar_majazi.ExecSQL;

end
else
begin
    update_tedade_jens_dar_ezafe_kardane_jens_be_kharid_dar_eslahe_kharid(id,tedad_jozei,tedad_koli,geymat_jozi);

     Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update T_anbar_majazi set tedadanbar=tedadanbar+'+tedad_jozei+
     ',tedad_koli=tedad_koli+'+tedad_koli+
     ' where calaname='+

    QuotedStr(jens)+' and vahed_koli='+QuotedStr(vahed_koli)+
    ' and  vahed_jozi='+QuotedStr(vahed_jozei)+' and tedad_jozi_da_koli='+
    tedad_j_dar_kol+' and geymatkharid='+geymat_jozi+
    ' and sh_factor='+sh_factor+
    ' and shakhs_sherkat='+QuotedStr(shakhs)+
    ' and tedad_koli='+tedad_koli+
    ' and tedadanbar='+tedade_kol;
    Dmlistha.ADOQuery_anbar_majazi.ExecSQL;

 MessageBox(Handle,'?? ???? ?? ?????? ???? ??? ???? ?????? ????? ?? ??? ?? ?????? ???? ???? ??? ??? .????? ???? ??? ????? ?? ????? ???? ????? ??.','???',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);    

end;
   //////////// khoroji //////////////
    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(jens)+','+
    tedad_jozei+','+
    inttostr(0)+','+
    QuotedStr(vahed_koli)+','+
    QuotedStr(vahed_jozei)+','+

    tedad_koli+','+
    tedad_j_dar_kol+','+
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+','+

    tedad_jozei+','+


    QuotedStr(' ????? ????? ????? ?? ?????? ???? ????? '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' ??????? '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(barcod)+','+
    QuotedStr(code_sherkati)+','+

    QuotedStr('????? ?????')+','+
    QuotedStr(frm_main.LMDClock1.Digital.Caption)+','+
    QuotedStr('????? - ????? ???? ????? ?? ?????? ????')+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;

  end;

//////////////////////////////////////


procedure Tfrm_anjirestan_jamavari.insert_type;
var tarikh:string;
begin

    tarikh:=MaskEditsal.Text+'/'+MaskEditmah.Text+'/'+MaskEditrooz.Text;
    insert_kharid_to_temp(
    DataModule1.ADOQuery4shahrforoshande.AsString,

    jens,

    tedad_jozei,

    geymat_jozei,

    vahed_koli,

    vahed_jozei,

    tedad_koli,

    geymat_koli,

    t_j_dar_koli,type_,
    tarikh,sh_factor,DataModule1.ADOQuery4code.AsString,L_barcod.Caption,e_code_sherkati.Text);


    DataM_final.ADOQuery_pish_kharid.SQL.Text:='select * from t_kharid_temp order by id';
    DataM_final.ADOQuery_pish_kharid.Open;

    geymat_kol;

end;


procedure Tfrm_anjirestan_jamavari.delete_hame_ajnas(s:string);
begin
   frmjens_kharid.show_temp1;
   if  DataM_final.ADOQuery_pish_kharid.RecordCount <=0 then
   MessageBox(Handle,'?????? ???? ??? ???? ?????','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
   while  DataM_final.ADOQuery_pish_kharid.RecordCount >0 do
     begin
      DataM_final.ADOQuery_pish_kharid.First;
      DataM_final.ADOQuery_pish_kharid.Delete;
    end;

      frmjens_kharid.show_temp1;
   if s='no' then
     MessageBox(Handle,'?? ???? ????? ?????? ???????  ????? ?????? ??? ??? ????? !','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;
end;
procedure Tfrm_anjirestan_jamavari.delete_jens;
begin
 if  DataM_final.ADOQuery_pish_kharid.RecordCount <=0 then
 begin
   MessageBox(Handle,'?????? ???? ??? ???? ?????','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);

 end
 else
 begin
   DataM_final.ADOQuery_pish_kharid.Delete;
      frmjens_kharid.show_temp1;
   if  DataM_final.ADOQuery_pish_kharid.RecordCount <=0 then

 end;
end;
procedure Tfrm_anjirestan_jamavari.geymat_kol;
begin
   Dmlistha.ADOQuery_tedad_pishkharid.SQL.Text:='select sum(kol) as kol_,count(*) as tedad from t_kharid_temp';
   Dmlistha.ADOQuery_tedad_pishkharid.Open;
end;


procedure Tfrm_anjirestan_jamavari.insert_kharid_to_temp(shakhs,jens,tedad_jozei,geymat_jozi,vahed_koli,
                                    vahed_jozei,tedad_koli,geymat_koli,
                                    tedad_j_dar_kol,type_,tarikh,sh_factor,code,barcod,code_sherkati:string);
var temp,x:Real;
    temp2,t,id:String;
begin

  {code_sherkati:='';

     tedad_koli:='0';

     tedad_jozei:='99999999';

     geymat_koli:='0';

     geymat_jozi:='0'; }

  if tedad_j_dar_kol='' then
     tedad_j_dar_kol:='0';
 id:='0';
if not check_exists_jens_in_pishkarid(jens,geymat_jozi,vahed_koli,vahed_jozei,tedad_j_dar_kol,barcod,code_sherkati,id) then
begin /////// new jens

  if type_='jozi' then
  begin
     temp:=StrToFloat(geymat_jozi);
     temp2:=FloatToStr(temp);
     x:=StrToFloat(tedad_jozei)* StrToFloat(geymat_jozi);



        DataM_final.ADOQuery_pish_kharid.SQL.Text:='INSERT INTO t_kharid_temp(code_sherkati,SHAHRFOROSHANDE,'+
                                                       'JENS,'+
                                                       'TeDAD,'+
                                                       'GhEYMAT,'+
                                                       'geymat_jadid,'+
                                                       'KOL,'+
                                                       'vahed_koli,vahed_jozei,tedad_koli,geymat_koli,'+
                                                       'tedad_jozi_dar_koli,tarikh,sh_factor,code,teded_jozi,barcod,geymatforosh_koli)'+
                                                       'values('+QuotedStr(code_sherkati)+','+QuotedStr(shakhs)+
                                                       ','+QuotedStr(jens)+
                                                       ','+QuotedStr(tedad_jozei)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(FloatToStr(x))+
                                                       ','+QuotedStr(vahed_koli)+
                                                       ','+QuotedStr(vahed_jozei)+
                                                       ','+QuotedStr(tedad_koli)+
                                                       ','+QuotedStr(geymat_koli)+
                                                       ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(tarikh)+','+sh_factor+
                                                       ','+code+','+tedad_jozei+','+QuotedStr(barcod)+','+QuotedStr(temp2)+')';
                                                       DataM_final.ADOQuery_pish_kharid.ExecSQL;

  end;

  if type_='koli' then
     begin
          t:=tedad_j_dar_kol;
       if tedad_j_dar_kol='0' then
           t:='1';
       temp:= RoundTo(StrToFloat(geymat_koli) / StrToFloat(t),-1);

       tedad_jozei:=FloatToStr(StrToFloat(tedad_koli)*StrToFloat(t));

       //x:=StrToFloat(tedad_jozei)* temp;

       x:=StrToFloat(geymat_koli)*StrToFloat(tedad_koli);

       temp2:=FloatToStr(temp);
       DataM_final.ADOQuery_pish_kharid.SQL.Text:='INSERT INTO t_kharid_temp(code_sherkati,SHAHRFOROSHANDE,'+
                                                       'JENS,'+
                                                       'TeDAD,'+
                                                       'GhEYMAT,'+
                                                       'geymat_jadid,'+
                                                       'KOL,'+
                                                       'vahed_koli,vahed_jozei,tedad_koli,geymat_koli,tedad_jozi_dar_koli,tarikh,sh_factor,code,teded_jozi,barcod,geymatforosh_koli)'+
                                                       'values('+QuotedStr(code_sherkati)+','+ QuotedStr(shakhs)+
                                                       ','+QuotedStr(jens)+
                                                       ','+QuotedStr(tedad_jozei)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(temp2)+
                                                       ','+QuotedStr(FloatToStr(x))+
                                                       ','+QuotedStr(vahed_koli)+
                                                       ','+QuotedStr(vahed_jozei)+
                                                       ','+QuotedStr(tedad_koli)+
                                                       ','+QuotedStr(geymat_koli)+
                                                       ','+QuotedStr(tedad_j_dar_kol)+','+QuotedStr(tarikh)+','+sh_factor+','+code+','+QuotedStr('0')+','+QuotedStr(barcod)+','+QuotedStr(temp2)+')';
                                                       DataM_final.ADOQuery_pish_kharid.ExecSQL;
     end;
  clear;
end /////// new jens
else

begin /////// exsits jens
  if MessageBox(Handle,'?? ???? ?? ?????? ???? ??? ???? ?????? ????? ?? ??? ?? ?????? ???? ???? ??? ??? .????? ???? ??? ????? ?? ????? ???? ????? ?????','???',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING)=id_yes then
  begin
    update_tedade_jens_dar_pish_kharid(id,tedad_jozei,tedad_koli,geymat_jozi);
    clear;
  end;
 
end; /////// exsits jens

end;
////////////////////



procedure Tfrm_anjirestan_jamavari.LMDSpeedButton_22Click(Sender: TObject);
begin
  delete_jens;
  geymat_kol;
  //sleep(500);

end;

procedure Tfrm_anjirestan_jamavari.LMDSpeedButton3Click(Sender: TObject);
begin
 delete_hame_ajnas('ok');
 geymat_kol;
    frmjens_kharid.show_temp1;

end;

procedure Tfrm_anjirestan_jamavari.LMDSpeedButton_addClick(Sender: TObject);
begin
   frmjens_kharid.show_temp1;

  if DataM_final.ADOQuery_pish_kharid.RecordCount >50 then
          MessageBox(Handle,' ?? ?? ???????  ?? ????  ????? ( 50 ) ??? ????? ???? ???? ?????? .','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
    L_type.Caption:='kharid';
    ShowModal;

    geymat_kol;
  end;
end;

procedure Tfrm_anjirestan_jamavari.FormShow(Sender: TObject);
begin

WindowState:=wsMaximized;

 DataModule1.ADOQuery4.SQL.Text:='select * from  t_shahr_foroshande where type_ ='+QuotedStr('?????????')+
  ' order by shahrforoshande';
  DataModule1.ADOQuery4.Open;



    Frm_sefaresh_jadid.showjens;

  Dmlistha.ADOQuery_vahed.SQL.Text:='select * from t_vahed order by vahed';
  Dmlistha.ADOQuery_vahed.Open;

  RadioGroup_jens_type.ItemIndex:=0;
  jens_type;

  RadioGroup_vahed_type.ItemIndex:=0;

  if RadioGroup_vahed_type.ItemIndex=0 then
  begin
    GroupBox_koli.Visible:=true;
    GroupBox_jozei.Visible:=false;
  end
  else
  begin
    GroupBox_koli.Visible:=false;
    GroupBox_jozei.Visible:=true;
  end;
  
  l_jans_name.Caption:='????? ?????? ????';
  L_barcod.Caption:='';
  Edit2.Text:='';
  Edit1.Text:='';
  Edit3.Text:='';
  e_code_sherkati.Clear;







  geymat_kol;


  WindowState:=wsMaximized;


end;



procedure Tfrm_anjirestan_jamavari.Button12Click(Sender: TObject);
begin
  if  DataM_final.ADOQuery_pish_kharid.RecordCount <=0 then
 begin
   MessageBox(Handle,'????? ???? ???? ???? ???','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end
 else
 begin

 end;
end;

procedure Tfrm_anjirestan_jamavari.e_kerayeKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_anjirestan_jamavari.E_darsad_sodKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;



procedure Tfrm_anjirestan_jamavari.e_keraye_darsadiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;


procedure Tfrm_anjirestan_jamavari.btnListMahsolClick(Sender: TObject);
begin
  frm_show_jens_baraye_entekhab_kharid.ShowModal;
end;


procedure Tfrm_anjirestan_jamavari.LMDSpeedButton_Click(Sender: TObject);
begin
  if DataM_final.ADOQuery_pish_kharid.RecordCount=0 then
  begin
   MessageBox(Handle,'?????? ???? ?????? ???? ?????','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   Exit;
  end;

  {if CheckBox1.Checked or CheckBox2.Checked  then
  begin
   MessageBox(Handle,'?? ???? ????? ????? ? ??? ?? ??? ??????? ?????? ?????? ????? ????????? ??? ????. ','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   Exit;
  end;}

  if DataM_final.ADOQuery_pish_kharidgeymat_jadid.AsFloat<>DataM_final.ADOQuery_pish_kharidgheymat.AsFloat then
  begin
   MessageBox(Handle,'?? ???? ????? ????? ? ??? ?? ??? ??????? ?????? ?????? ????? ????????? ??? ????. ????? ?? ??? ??? ??? ?? ??? ????? ??? ????? ?? ?????? ?????? ','???? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   Exit;
  end;

  frm_eslahe_pish_kharid.E_barcod.Text:=DataM_final.ADOQuery_pish_kharidbarcod.AsString;
  frm_eslahe_pish_kharid.Edit1.Text:=DataM_final.ADOQuery_pish_kharidjens.AsString;
  frm_eslahe_pish_kharid.e_code_sherkati.Text:=DataM_final.ADOQuery_pish_kharidcode_sherkati.AsString;

  frm_eslahe_pish_kharid.l_id.Caption:=DataM_final.ADOQuery_pish_kharidid.AsString;

  if DataM_final.ADOQuery_pish_kharidtedad_jozi_dar_koli.AsFloat=0 then
  begin
    frm_eslahe_pish_kharid.Edit3.Text:=DataM_final.ADOQuery_pish_kharidgheymat.AsString;
    frm_eslahe_pish_kharid.Edit2.Text:=DataM_final.ADOQuery_pish_kharidteded_jozi.AsString;
    frm_eslahe_pish_kharid.CheckBox1.checked:=false;
    frm_eslahe_pish_kharid.DBLookupComboBox2.visible:=false;
    frm_eslahe_pish_kharid.L_vahed_joji_jozi.Caption:=DataM_final.ADOQuery_pish_kharidvahed_jozei.AsString;
    frm_eslahe_pish_kharid.GroupBox_jozei.Visible:=true;
    frm_eslahe_pish_kharid.GroupBox_koli.Visible:=false;
  end
  else
  begin
    frm_eslahe_pish_kharid.Edit_g_vahed_koli.Text:=DataM_final.ADOQuery_pish_kharidgeymat_koli.AsString;
    frm_eslahe_pish_kharid.Edit_tedad_vahed_koli.Text:=DataM_final.ADOQuery_pish_kharidtedad_koli.AsString;
    frm_eslahe_pish_kharid.Edit_tedad_jozei_dar_koli.Text:=DataM_final.ADOQuery_pish_kharidtedad_jozi_dar_koli.AsString;
    frm_eslahe_pish_kharid.CheckBox2.checked:=false;

    frm_eslahe_pish_kharid.DBLookupComboBox3.visible:=false;
    frm_eslahe_pish_kharid.DBLookupComboBox4.visible:=false;
    frm_eslahe_pish_kharid.l_vahed_koli.Caption:=DataM_final.ADOQuery_pish_kharidvahed_koli.AsString;
    frm_eslahe_pish_kharid.L_vahed_jozi.Caption:=DataM_final.ADOQuery_pish_kharidvahed_jozei.AsString;

    frm_eslahe_pish_kharid.GroupBox_jozei.Visible:=false;
    frm_eslahe_pish_kharid.GroupBox_koli.Visible:=true;
  end;

  frm_eslahe_pish_kharid.l_type.Caption:='jamavari';
  frm_eslahe_pish_kharid.ShowModal;
end;

procedure Tfrm_anjirestan_jamavari.RadioGroup1Click(Sender: TObject);
begin
    if RadioGroup1.ItemIndex =0  then
    begin
      suiButton4.Enabled :=false;
      MaskEditrooz.Enabled :=false;
      MaskEditmah.Enabled :=false;
      MaskEditsal.Enabled :=false;
      MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
      MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
      MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];
    end
  else
    begin
      suiButton4.Enabled :=true;
      MaskEditrooz.Enabled :=true;
      MaskEditmah.Enabled :=true;
      MaskEditsal.Enabled :=true;
      suiButton4.Click;
    end;

end;

procedure Tfrm_anjirestan_jamavari.suiButton4Click(Sender: TObject);
begin
_Taghvim.ShowModal;
if _taghvim._str_date<>'' then
begin
  MaskEditsal.Text:=_Taghvim._str_date[1]+_Taghvim._str_date[2]+ _Taghvim._str_date[3]+_Taghvim._str_date[4];
  MaskEditMah.Text:=_Taghvim._str_date[6]+_Taghvim._str_date[7];
  MaskEditRooz.Text:=_Taghvim._str_date[9]+_Taghvim._str_date[10];
end;
end;

procedure Tfrm_anjirestan_jamavari.RadioGroup2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex=0 then
  begin
    L_sh_darj_factor.Visible:=true;
    E_sh_darj_factor.Visible:=true;
  end
  else
  begin
    L_sh_darj_factor.Visible:=false;
    E_sh_darj_factor.Visible:=false;
  end;
end;

procedure Tfrm_anjirestan_jamavari.RadioGroup_jens_typeClick(
  Sender: TObject);
begin
   if RadioGroup_jens_type.ItemIndex=0 then
   begin
     GroupBox_jens_anbar.Visible:=true;

     Label14.Visible:=false;
     Label15.Visible:=false;
     E_barcod.Visible:=false;
     Edit1.Visible:=false;

     l_jans_name.Caption:='????? ?????? ????';
     e_code_sherkati.Clear;

     E_barcod.Text:='';     

     l_vahed_koli.Caption:='';
     L_vahed_jozi.Caption:='';
     L_vahed_joji_jozi.Caption:='';
     l_tedad_J_dar_k.Caption:='';

     l_vahed_koli.Visible:=true;
     L_vahed_jozi.Visible:=true;
     L_vahed_joji_jozi.Visible:=true;
     l_tedad_J_dar_k.Visible:=true;

     DBLookupComboBox3.Visible:=false;
     DBLookupComboBox4.Visible:=false;
     DBLookupComboBox2.Visible:=false;

     Edit_tedad_jozei_dar_koli.Visible:=false;
     RadioGroup_vahed_type.Enabled:=false;
   end
   else
   begin
     GroupBox_jens_anbar.Visible:=false;

     Label14.Visible:=true;
     Label15.Visible:=true;
     E_barcod.Visible:=true;
     Edit1.Visible:=true;


     E_barcod.Text:='';
     E_barcod.SetFocus;
     Edit1.Text:='';
     l_jans_name.Caption:='????? ?????? ????';

     e_code_sherkati.Clear;

     l_vahed_koli.Caption:='';
     L_vahed_jozi.Caption:='';
     l_tedad_J_dar_k.Caption:='';
     L_vahed_joji_jozi.Caption:='';     

     l_vahed_koli.Visible:=false;
     L_vahed_jozi.Visible:=false;
     L_vahed_joji_jozi.Visible:=false;
     l_tedad_J_dar_k.Visible:=false;

     DBLookupComboBox3.Visible:=true;
     DBLookupComboBox4.Visible:=true;
     DBLookupComboBox2.Visible:=true;

     Edit_tedad_jozei_dar_koli.Visible:=true;
     RadioGroup_vahed_type.Enabled:=true;
   end;

end;

procedure Tfrm_anjirestan_jamavari.RadioGroup_vahed_typeClick(
  Sender: TObject);
begin
 if RadioGroup_vahed_type.ItemIndex=0 then
  begin
    GroupBox_koli.Visible:=true;
    GroupBox_jozei.Visible:=false;
  end
  else
  begin
    GroupBox_koli.Visible:=false;
    GroupBox_jozei.Visible:=true;
  end;
end;

procedure Tfrm_anjirestan_jamavari.e_code_sherkatiChange(Sender: TObject);
begin
  e_code_sherkati.Text:=UpperCase(e_code_sherkati.Text);
end;

procedure Tfrm_anjirestan_jamavari.E_barcodChange(Sender: TObject);
begin
L_barcod.Caption:=E_barcod.Text;
end;

procedure Tfrm_anjirestan_jamavari.E_barcodExit(Sender: TObject);
begin
L_barcod.Caption:=E_barcod.Text;
end;

procedure Tfrm_anjirestan_jamavari.Edit1Change(Sender: TObject);
begin
l_jans_name.Caption:=Edit1.Text;
end;

procedure Tfrm_anjirestan_jamavari.Edit1Exit(Sender: TObject);
begin
l_jans_name.Caption:=Edit1.Text;
end;

procedure Tfrm_anjirestan_jamavari.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_anjirestan_jamavari.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_anjirestan_jamavari.Edit_g_vahed_koliKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_anjirestan_jamavari.Edit_tedad_vahed_koliKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_anjirestan_jamavari.Edit_tedad_jozei_dar_koliKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_anjirestan_jamavari.suiButton11Click(Sender: TObject);
var tarikh:string;
begin
   if RadioGroup2.ItemIndex=1 then
   begin
    DataModule1.ADOQ_sh_factor_kharid.SQL.Text:='select * from T_shomare_factor_kharid where shahrforoshande='+QuotedStr(DataModule1.ADOQuery4shahrforoshande.AsString);
    DataModule1.ADOQ_sh_factor_kharid.Open;

    sh_factor:=DataModule1.ADOQ_sh_factor_kharidshomare.AsString;
   end
   else
    sh_factor:=E_sh_darj_factor.Text;


    if check_sh_fac then
    begin

      if (check(Edit2.Text)) then
      begin
        if check_param then
        begin
          get_public_parametr;
          insert_type;
        end;

      end;
  end;
end;

procedure Tfrm_anjirestan_jamavari.FormActivate(Sender: TObject);
begin
suiButton4.Enabled :=false;
MaskEditrooz.Enabled :=false;
MaskEditmah.Enabled :=false;
MaskEditsal.Enabled :=false;
MaskEditrooz.Text :=frm_login.Egettarikh.Text[9]+frm_login.Egettarikh.Text[10];
MaskEditmah.Text :=frm_login.Egettarikh.Text[6]+frm_login.Egettarikh.Text[7];
MaskEditsal.Text :=frm_login.Egettarikh.Text[1]+frm_login.Egettarikh.Text[2]+frm_login.Egettarikh.Text[3]+frm_login.Egettarikh.Text[4];

end;

procedure Tfrm_anjirestan_jamavari.Button2Click(Sender: TObject);
begin
  Memo1.Text:='';
end;

procedure Tfrm_anjirestan_jamavari.suiButton1Click(Sender: TObject);
begin
 execute_kharid_store_procedure;
end;

end.
