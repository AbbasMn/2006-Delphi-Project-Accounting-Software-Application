unit unt_eslahe_marjoei;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls;

type
  Tfrm_eslahe_marjoei = class(TForm)
    Label4: TLabel;
    L_jam_jadid: TLabel;
    GroupBox_jens: TGroupBox;
    Label13: TLabel;
    DBText_t_koli: TDBText;
    Label5: TLabel;
    DBText_t_jozi_dar_koli: TDBText;
    DBText_t_jam: TDBText;
    DBText_jens: TDBText;
    DBText1_g_kol_gadim: TDBText;
    Label3: TLabel;
    Label16: TLabel;
    DBText2: TDBText;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Edit_t_koli_jadid_: TEdit;
    Edit_t_jozi_jadid: TEdit;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label14: TLabel;
    DBText8: TDBText;
    Label15: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    g_bede_talab_marjo: TGroupBox;
    Label12: TLabel;
    L_bestankar: TLabel;
    L_bedehkae: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bedeh_talab_after_eslah;
    procedure Edit_t_koli_jadid_Change(Sender: TObject);
    procedure Edit_t_jozi_jadidChange(Sender: TObject);
    procedure Edit_t_koli_jadid_KeyPress(Sender: TObject; var Key: Char);
    procedure Edit_t_jozi_jadidKeyPress(Sender: TObject; var Key: Char);
    procedure teded_kol_jadid;
    procedure eslah;
    procedure Button1Click(Sender: TObject);
    procedure execute_eslahe_zayeate_jens(par,tedade_kol_anbar:real; vorod_az_anbar:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_marjoei: Tfrm_eslahe_marjoei;

implementation

uses unt_Dm_zayeat_marjoei, unt_DataM_final, Untdmlistha, unt_DataM_sp,
  unt_main;

{$R *.dfm}

procedure Tfrm_eslahe_marjoei.execute_eslahe_zayeate_jens(par,tedade_kol_anbar:real; vorod_az_anbar:string);
var
    tedad_kol,tedad_jozi_dar_koli,tedad_koli_mabda,tedad_koli_magsad,tedad_jozi,t_k,t_gabl,t_k_jabejaei:real;
    arzesh_kole_ajnas,kol_pardakht,par2:real;
    talab_eslah,bedeh_eslah,check,nagd,takhfife_jadid,takhfife_gadim:real;

begin
     tedad_kol:=StrToFloat(L_jam_jadid.Caption);
     tedad_jozi_dar_koli:=Dm_zayeat_marjoei.ADOQ_marjoeitedad_jozi_da_koli.AsFloat;
     t_gabl:=Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsFloat;


/////////////////////////////
           if (par=3)or(par=1)then
            t_k_jabejaei:=Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsFloat-StrToFloat(L_jam_jadid.Caption)
           else
            t_k_jabejaei:=StrToFloat(L_jam_jadid.Caption)-Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsFloat;


            //////////////////////
            if  tedad_jozi_dar_koli<>0 then
             tedad_jozi:=t_k_jabejaei-(int(t_k_jabejaei/tedad_jozi_dar_koli)*tedad_jozi_dar_koli)
            else
              tedad_jozi:=t_k_jabejaei;

            if tedad_jozi_dar_koli<>0 then
              t_k:=int(t_k_jabejaei/tedad_jozi_dar_koli)
            else
              t_k:=0;

              /////////////////////


     if (par=3)or(par=1)then
     begin

          if tedad_jozi_dar_koli<>0 then
            tedad_koli_mabda:=int((t_gabl-(t_gabl-tedad_kol))/ tedad_jozi_dar_koli)
          else
            tedad_koli_mabda:=0;

          if tedad_jozi_dar_koli<>0 then
            tedad_koli_magsad:=int((tedade_kol_anbar+(t_gabl-tedad_kol))/ tedad_jozi_dar_koli)
          else
            tedad_koli_magsad:=0;
     end
     else
     begin
          if tedad_jozi_dar_koli<>0 then
            tedad_koli_mabda:=int((tedade_kol_anbar-(tedad_kol-t_gabl))/ tedad_jozi_dar_koli)
          else
            tedad_koli_mabda:=0;

          if tedad_jozi_dar_koli<>0 then
            tedad_koli_magsad:=int(((tedad_kol-t_gabl)+t_gabl)/ tedad_jozi_dar_koli)
          else
            tedad_koli_magsad:=0;
     end;
///////////////////////////////////////////////////////////////////////////////////////

    if (DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsString='0') or (DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsString='') then
             check:=0
         else
          check:=DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsFloat;

    if (DataM_final.ADOQ_t_pardakht_nagd_kharidnagd.AsString='') or(DataM_final.ADOQ_t_pardakht_nagd_kharidnagd.AsString='0')then
      nagd:=0
    else
      nagd:=DataM_final.ADOQ_t_pardakht_nagd_kharidnagd.AsFloat;



   arzesh_kole_ajnas:=Dmlistha.ADOmohasebe_kharidkol_.AsFloat;

   kol_pardakht:=check+nagd;

   takhfife_gadim:=Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsFloat*Dm_zayeat_marjoei.ADOQ_marjoeigeymatkharid.AsFloat;
   takhfife_jadid:=StrToFloat(L_jam_jadid.Caption)*Dm_zayeat_marjoei.ADOQ_marjoeigeymatkharid.AsFloat;

  talab_eslah:=0;
  bedeh_eslah:=0;

  if arzesh_kole_ajnas >=(kol_pardakht+takhfife_jadid)then// section 1
  begin
    if takhfife_jadid>=takhfife_gadim then //1-1
    begin
      bedeh_eslah:=takhfife_jadid-takhfife_gadim;
      talab_eslah:=0;
      par2:=11;
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
                  
      par2:=12;
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
        par2:=211;
      end
      else
      begin //2-1-2
        bedeh_eslah:=0;
        talab_eslah:=takhfife_gadim-takhfife_jadid;
        par2:=212;
      end;
    end;
    ///////////////
    if arzesh_kole_ajnas=(kol_pardakht+takhfife_gadim)then//2-2
    begin
      if takhfife_jadid>=takhfife_gadim then //2-2-1
      begin
        bedeh_eslah:=0;
        talab_eslah:=takhfife_jadid-takhfife_gadim;
        par2:=221;
      end
      else
      begin //2-2-2
        bedeh_eslah:=takhfife_gadim-takhfife_jadid;
        talab_eslah:=0;
        par2:=222;
      end;
    end;
   ///////////////
    if arzesh_kole_ajnas>(kol_pardakht+takhfife_gadim)then//2-3
    begin
      if takhfife_jadid>=takhfife_gadim then //2-3-1
      begin
        bedeh_eslah:=arzesh_kole_ajnas-(kol_pardakht+takhfife_gadim);
        talab_eslah:=(kol_pardakht+takhfife_jadid)-(arzesh_kole_ajnas);
        par2:=231;
      end
      else
      begin //2-3-2
        bedeh_eslah:=takhfife_gadim-takhfife_jadid;
        talab_eslah:=0;
        par2:=232;
      end;
    end;
  end;
 /////////////////////////////


           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[0].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[2].Value:=Dm_zayeat_marjoei.ADOQ_marjoeicalacod.AsString;//@calacod float,
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[3].Value:=vorod_az_anbar;//@anbarname_mabda nvarchar(30)
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[4].Value:=tedad_koli_mabda;//@tedad_koli_mabda  float,
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[5].Value:=t_k_jabejaei;//@tedad_kole_jabejaei float,
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[6].Value:=' ÇÕáÇÍ ÊÚÏÇÏ ãÑÌæÚí ÌäÓ '+Dm_zayeat_marjoei.ADOQ_marjoeicalaname.AsString+' ÇÒ ÊÚÏÇÏ ˜á '+Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsString+' Èå ÊÚÏÇÏ ˜á '+L_jam_jadid.Caption;//@amaliat nvarchar(1000)
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[7].Value:=Dm_zayeat_marjoei.ADOQ_marjoeicalaname.AsString;//@calaname	nvarchar(41),
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[8].Value:=Dm_zayeat_marjoei.ADOQ_marjoeivahed_koli.AsString;//@vahed_koli	nvarchar(31),
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[9].Value:=Dm_zayeat_marjoei.ADOQ_marjoeitedad_jozi_da_koli.AsFloat;//@tedad_jozi_da_koli	float,
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[10].Value:=Dm_zayeat_marjoei.ADOQ_marjoeivahed_jozi.AsString;//@vahed_jozi	nvarchar(31),
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[11].Value:=Dm_zayeat_marjoei.ADOQ_marjoeibarcod.AsString;//@barcod	nvarchar(15),
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[12].Value:=Dm_zayeat_marjoei.ADOQ_marjoeishakhs_sherkat.AsString;//@shakhs_sherkat	nvarchar(51),
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[13].Value:=Dm_zayeat_marjoei.ADOQ_marjoeicode_sherkati.AsString;//@code_sherkati	nvarchar(11)


           if (par=3)or(par=1)then
           begin
            DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[14].Value:='æÑæÏ Èå ÚáÊ ÇÕáÇÍ æ ˜ÇåÔ ÊÚÏÇÏ ãÑÌæÚí ÌäÓ ÏÑ ÝÇ˜ÊæÑ ÔãÇÑå '+Dm_zayeat_marjoei.ADOQ_marjoeish_kharid_marjoei.AsString+' ÎÑíÏ ÇÒ '+Dm_zayeat_marjoei.ADOQ_marjoeishakhs_sherkat.AsString;//@tozihe_kho_az_anbar nvarchar(200),
            DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[15].Value:='æÑæÏí - ÇÕáÇÍ ÊÚÏÇÏ ãÑÌæÚí ÌäÓ';//@type_kh_az_anbar nvarchar(100),
           end
           else
           begin
            DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[14].Value:='ÎÑæÌ Èå ÚáÊ ÇÕáÇÍ æ ÇÝÒÇíÔ ÊÚÏÇÏ ãÑÌæÚí ÌäÓ ÏÑ ÝÇ˜ÊæÑ ÔãÇÑå '+Dm_zayeat_marjoei.ADOQ_marjoeish_kharid_marjoei.AsString+' ÎÑíÏ ÇÒ '+Dm_zayeat_marjoei.ADOQ_marjoeishakhs_sherkat.AsString;//@tozihe_kho_az_anbar nvarchar(200),
            DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[15].Value:='ÎÑæÌí - ÇÕáÇÍ ÊÚÏÇÏ ãÑÌæÚí ÌäÓ';//@type_kh_az_anbar nvarchar(100),
           end;

           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[16].Value:=tedad_jozi;//@tedade_jozi float
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[17].Value:=t_k;//@tedade_koli float
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[18].Value:=Dm_zayeat_marjoei.ADOQ_marjoeiid_dar_anbare_koli.AsFloat;//@id_mabda_dar_anbar float
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[19].Value:=par;//@par float
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[20].Value:=Dm_zayeat_marjoei.ADOQ_marjoeiid.AsFloat;//@id_dar_marjoei float
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[21].Value:=Dm_zayeat_marjoei.ADOQ_marjoeish_kharid_marjoei.AsFloat;//@sh_factor float
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[22].Value:=tedad_koli_magsad;//@tedad_koli_magsad

           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[23].Value:=L_bedehkae.Caption;//@bedehkar float,
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[24].Value:=L_bestankar.Caption;//@bestankar float,

           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[25].Value:=bedeh_eslah;//@bedeh_eslah float,
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[26].Value:=talab_eslah;//@talab_eslah float,

           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[27].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;//@code_kharidar float,
           DataM_sp.ADOStoredProc_eslahe_marjoei.Parameters[28].Value:=par2;//@Par2 float


           DataM_sp.ADOStoredProc_eslahe_marjoei.ExecProc;

            MessageBox(Handle,'ÊÚÏÇÏ ãÑÌæÚí ÌäÓ ÇäÊÎÇÈí ÇÕáÇÍ ÑÏíÏ','ÊæÌå ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
end;


procedure Tfrm_eslahe_marjoei.eslah;
var t_k,t_j,t_k_j,par:real;
    pch:pchar;
begin

  par:=0;
  if (trim(Edit_t_koli_jadid_.Text)='') then
    t_k:=0
  else
    t_k:=StrToFloat(Edit_t_koli_jadid_.Text);

  if (trim(Edit_t_jozi_jadid.Text)='') then
    t_j:=0
  else
    t_j:=StrToFloat(Edit_t_jozi_jadid.Text);

  t_k_j:=(t_k*Dm_zayeat_marjoei.ADOQ_marjoeitedad_jozi_da_koli.AsFloat)+t_j;

  Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where '+
  ' id='+Dm_zayeat_marjoei.ADOQ_marjoeiid_dar_anbare_koli.AsString;
  Dmlistha.ADOlistanbarforosh.Open;

  if Dmlistha.ADOlistanbarforosh.RecordCount=0 then
    MessageBox(Handle,'ÌäÓ ÇÒ åí ã˜Çäí¡ Èå ÚäæÇä ãÑÌæÚí ËÈÊ äÔÏå ÇÓÊ áÐÇ ÞÇÏÑ Èå ÇÕáÇÍ äãí ÈÇÔíÏ','ÎØÇ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT )
  else
  begin
      
    if (t_k_j>Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsFloat) then  /// bishtar az tedade anbar kol
    begin
     if(Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat+Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsFloat) < t_k_j then
     begin
         pch:=pchar('ÈÇ ÊæÌå Èå ÊÚÏÇÏ ÌäÓ ãæÌæÏ ÏÑ ã˜Çäí ˜å ÌäÓ ÈÚäæÇä ãÑÌæÚí ÇÒ Âä ËÈÊ ÑÏíÏå ÇÓÊ¡ ÍÏÇ˜ËÑ ãí ÊæÇä ÊÚÏÇÏ << '+FloatToStr(Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat)+' >> Èå ÊÚÏÇÏ ËÈÊ ÔÏå ÌäÓ ãÑÌæÚí ÇÖÇÝå äãæÏ');
         MessageBox(Handle,pch,'ÎØÇ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
         Exit;
     end;
    end;


      if (t_k_j=0) then // hazfe zayeat va bargashte kamel be anbar
      begin
         par:=1;
         execute_eslahe_zayeate_jens(par,Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat,Dmlistha.ADOlistanbarforoshanbarname.AsString);
         close;
      end
      else
      begin
        if t_k_j > Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsFloat then  // ezafe shodan az anbar be Æ
        begin
          par:=2;
          execute_eslahe_zayeate_jens(par,Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat,Dmlistha.ADOlistanbarforoshanbarname.AsString);
          close;
        end
        else
        begin
          if t_k_j < Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsFloat then  // ezafe shodan az zayeat be anbar
          begin
            par:=3;
            execute_eslahe_zayeate_jens(par,Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat,Dmlistha.ADOlistanbarforoshanbarname.AsString);
            close;
          end
          else
            begin
              if t_k_j=Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsFloat then  // bedone tagir
                MessageBox(Handle,'ÊÚÏÇÏ ÌäÓ ãÑÌæÚí æÇÑÏ ÔÏå ÈÇ ÊÚÏÇÏ ËÈÊ ÔÏå Èå ÕæÑÊ ÞÈá ÈÑÇÈÑ ãí ÈÇÔÏ','ÊæÌå! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
            end;
        end;
      end;


  end;

end;


procedure Tfrm_eslahe_marjoei.teded_kol_jadid;
var t_k,t_j:real;
begin
  if (trim(Edit_t_koli_jadid_.Text)='') then
    t_k:=0
  else
    t_k:=StrToFloat(Edit_t_koli_jadid_.Text);

  if (trim(Edit_t_jozi_jadid.Text)='') then
    t_j:=0
  else
    t_j:=StrToFloat(Edit_t_jozi_jadid.Text);

   L_jam_jadid.Caption:=FloatToStr((t_k*Dm_zayeat_marjoei.ADOQ_marjoeitedad_jozi_da_koli.AsFloat)+t_j); 
end;


procedure Tfrm_eslahe_marjoei.bedeh_talab_after_eslah;
var check,kol_pardakht,nagd:string;
begin
    if (DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsString='0') or (DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsString='') then
             check:='0'
         else
          check:=DataM_final.ADOQ_T_jame_pardakht_check_kharidcheck_kol.AsString;

    if (DataM_final.ADOQ_t_pardakht_nagd_kharidnagd.AsString='') or(DataM_final.ADOQ_t_pardakht_nagd_kharidnagd.AsString='0')then
      nagd:='0'
    else
      nagd:=DataM_final.ADOQ_t_pardakht_nagd_kharidnagd.AsString;

          kol_pardakht:=FloatToStr(StrToFloat(check)+StrToFloat(nagd)+Dm_zayeat_marjoei.ADOQ_jame_arzeshe_marjoeikol_.AsFloat-(Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsFloat*Dm_zayeat_marjoei.ADOQ_marjoeigeymatkharid.AsFloat)+(StrToFloat(L_jam_jadid.caption)*Dm_zayeat_marjoei.ADOQ_marjoeigeymatkharid.AsFloat));
          sleep(100);

         if StrToFloat(kol_pardakht)>StrToFloat(Dmlistha.ADOmohasebe_kharidkol_.AsString) then
         begin
          L_bestankar.Caption:=FloatToStr(StrToFloat(kol_pardakht)-StrToFloat(Dmlistha.ADOmohasebe_kharidkol_.AsString));
          L_bedehkae.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)<StrToFloat(Dmlistha.ADOmohasebe_kharidkol_.AsString) then
         begin
           L_bedehkae.Caption:=FloatToStr(StrToFloat(Dmlistha.ADOmohasebe_kharidkol_.AsString)-StrToFloat(kol_pardakht));
           L_bestankar.Caption:='0';
         end;

         if StrToFloat(kol_pardakht)=StrToFloat(Dmlistha.ADOmohasebe_kharidkol_.AsString) then
         begin
          L_bestankar.Caption:='0';
          L_bedehkae.Caption:='0';

         end;
end;

//////////////

procedure Tfrm_eslahe_marjoei.FormShow(Sender: TObject);
begin
  if Dm_zayeat_marjoei.ADOQ_marjoeitedad_jozi_da_koli.AsFloat<>0 then
  begin
    Edit_t_koli_jadid_.Text:=Dm_zayeat_marjoei.ADOQ_marjoeitedad_koli.AsString;
    Edit_t_jozi_jadid.Text:=FloatToStr(Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsFloat-(Dm_zayeat_marjoei.ADOQ_marjoeitedad_koli.AsFloat*Dm_zayeat_marjoei.ADOQ_marjoeitedad_jozi_da_koli.AsFloat));
  end
  else
  begin
    Edit_t_koli_jadid_.Text:='0';
    Edit_t_jozi_jadid.Text:=Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsString;
  end;
  L_jam_jadid.Caption:=Dm_zayeat_marjoei.ADOQ_marjoeitedadanbar.AsString;
  bedeh_talab_after_eslah;
end;

procedure Tfrm_eslahe_marjoei.Edit_t_koli_jadid_Change(Sender: TObject);
begin
  teded_kol_jadid;
  bedeh_talab_after_eslah;
end;

procedure Tfrm_eslahe_marjoei.Edit_t_jozi_jadidChange(Sender: TObject);
begin
  teded_kol_jadid;
  bedeh_talab_after_eslah;
end;

procedure Tfrm_eslahe_marjoei.Edit_t_koli_jadid_KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_marjoei.Edit_t_jozi_jadidKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_marjoei.Button1Click(Sender: TObject);
begin
  eslah;
end;

end.
