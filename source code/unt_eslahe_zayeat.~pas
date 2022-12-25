unit unt_eslahe_zayeat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB;

type
  Tfrm_eslahe_zayeat = class(TForm)
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
    Label1: TLabel;
    DBText2: TDBText;
    DataSource1: TDataSource;
    Label4: TLabel;
    L_jam_jadid: TLabel;
    Button1: TButton;
    procedure Edit_t_koli_jadid_KeyPress(Sender: TObject; var Key: Char);
    procedure Edit_t_jozi_jadidKeyPress(Sender: TObject; var Key: Char);

    procedure teded_kol_jadid;
    procedure Edit_t_koli_jadid_Change(Sender: TObject);
    procedure Edit_t_jozi_jadidChange(Sender: TObject);

    procedure eslah;
    procedure Button1Click(Sender: TObject);

    procedure execute_eslahe_zayeate_jens(par,tedade_kol_anbar:real; vorod_az_anbar:string);
    procedure FormShow(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_zayeat: Tfrm_eslahe_zayeat;

implementation

uses unt_Dm_zayeat_marjoei, Untdmlistha, unt_DataM_sp, unt_main,
  Untdmanbarexit, unt_DataM_final;



{$R *.dfm}


procedure Tfrm_eslahe_zayeat.execute_eslahe_zayeate_jens(par,tedade_kol_anbar:real; vorod_az_anbar:string);
var
    tedad_kol,tedad_jozi_dar_koli,tedad_koli_mabda,tedad_koli_magsad,tedad_jozi,t_k,t_gabl,t_k_jabejaei:real;
begin
     tedad_kol:=StrToFloat(L_jam_jadid.Caption);
     tedad_jozi_dar_koli:=Dm_zayeat_marjoei.ADOQ_zayeattedad_jozi_da_koli.AsFloat;
     t_gabl:=Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsFloat;

/////////////////////////////
           if (par=3)or(par=1)then
            t_k_jabejaei:=Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsFloat-StrToFloat(L_jam_jadid.Caption)
           else
            t_k_jabejaei:=StrToFloat(L_jam_jadid.Caption)-Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsFloat;


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
/////////////////////////////


           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[0].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[2].Value:=Dm_zayeat_marjoei.ADOQ_zayeatcalacod.AsString;//@calacod float,

           if (par=3)or(par=1)then
            DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[3].Value:= vorod_az_anbar//@anbarname_mgsad nvarchar(30),
           else
            DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[3].Value:='«‰»«— ÷«Ì⁄« ';//@anbarname_mgsad nvarchar(30),

           if (par=3)or(par=1)then
            DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[4].Value:='«‰»«— ÷«Ì⁄« '//@anbarname_mabda nvarchar(30)
           else
            DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[4].Value:=vorod_az_anbar;//@anbarname_mabda nvarchar(30)

           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[5].Value:=tedad_koli_magsad;//@tedad_koli_magsad float,
           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[6].Value:=tedad_koli_mabda;//@tedad_koli_mabda  float,

           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[7].Value:=t_k_jabejaei;//@tedad_kole_jabejaei float,
           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[8].Value:=' «’·«Õ  ⁄œ«œ ÷«Ì⁄«  Ã‰” '+Dm_zayeat_marjoei.ADOQ_zayeatcalaname.AsString+' «“  ⁄œ«œ ò· '+Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsString+' »Â  ⁄œ«œ ò· '+L_jam_jadid.Caption;//@amaliat nvarchar(1000)

           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[9].Value:=Dm_zayeat_marjoei.ADOQ_zayeatcalaname.AsString;//@calaname	nvarchar(41),



           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[10].Value:=Dm_zayeat_marjoei.ADOQ_zayeatvahed_koli.AsString;//@vahed_koli	nvarchar(31),

           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[11].Value:=Dm_zayeat_marjoei.ADOQ_zayeattedad_jozi_da_koli.AsFloat;//@tedad_jozi_da_koli	float,
           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[12].Value:=Dm_zayeat_marjoei.ADOQ_zayeatvahed_jozi.AsString;//@vahed_jozi	nvarchar(31),

           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[13].Value:=Dm_zayeat_marjoei.ADOQ_zayeatbarcod.AsString;//@barcod	nvarchar(15),
           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[14].Value:=Dm_zayeat_marjoei.ADOQ_zayeatshakhs_sherkat.AsString;//@shakhs_sherkat	nvarchar(51),
           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[15].Value:=Dm_zayeat_marjoei.ADOQ_zayeatcode_sherkati.AsString;//@code_sherkati	nvarchar(11)


           if (par=3)or(par=1)then
           begin
            DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[16].Value:=' Œ—ÊÃ «“ «‰»«— ÷«Ì⁄«  »Â ⁄·  «’·«Õ Ê ò«Â‘ ÷«Ì⁄«  Ã‰” œ— ›«ò Ê— ‘„«—Â '+Dm_zayeat_marjoei.ADOQ_zayeatsh_kharid_zayeat.AsString+' Œ—Ìœ «“ '+Dm_zayeat_marjoei.ADOQ_zayeatshakhs_sherkat.AsString;//@tozihe_kho_az_anbar nvarchar(200),
            DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[17].Value:=' Ê—Êœ »Â „ò«‰ '+vorod_az_anbar+' »Â ⁄·  «’·«Õ Ê ò«Â‘ ÷«Ì⁄«  Ã‰” œ— ›«ò Ê— ‘„«—Â '+Dm_zayeat_marjoei.ADOQ_zayeatsh_kharid_zayeat.AsString+' Œ—Ìœ «“ '+Dm_zayeat_marjoei.ADOQ_zayeatshakhs_sherkat.AsString;//@tozihe_vo_be_anbar nvarchar(200),

            DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[18].Value:='Œ—ÊÃÌ - «’·«Õ ÷«Ì⁄«  Ã‰”';//@type_kh_az_anbar nvarchar(100),
            DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[19].Value:='Ê—ÊœÌ - «’·«Õ ÷«Ì⁄«  Ã‰”';//@type_vo_be_anbar nvarchar(100),
           end
           else
           begin
            DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[16].Value:=' Œ—ÊÃ «“ „ò«‰ '+vorod_az_anbar+' »Â ⁄·  «’·«Õ Ê «›“«Ì‘ ÷«Ì⁄«  Ã‰” œ— ›«ò Ê— ‘„«—Â '+Dm_zayeat_marjoei.ADOQ_zayeatsh_kharid_zayeat.AsString+' Œ—Ìœ «“ '+Dm_zayeat_marjoei.ADOQ_zayeatshakhs_sherkat.AsString;//@tozihe_kho_az_anbar nvarchar(200),
            DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[17].Value:='Ê—Êœ »Â «‰»«— ÷«Ì⁄«  »Â ⁄·  «’·«Õ Ê «›“«Ì‘ ÷«Ì⁄«  Ã‰” œ— ›«ò Ê— ‘„«—Â ' +Dm_zayeat_marjoei.ADOQ_zayeatsh_kharid_zayeat.AsString+' Œ—Ìœ «“ '+Dm_zayeat_marjoei.ADOQ_zayeatshakhs_sherkat.AsString;//@tozihe_vo_be_anbar nvarchar(200),

            DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[18].Value:='Œ—ÊÃÌ - «’·«Õ ÷«Ì⁄«  Ã‰”';//@type_kh_az_anbar nvarchar(100),
            DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[19].Value:='Ê—ÊœÌ - «’·«Õ ÷«Ì⁄«  Ã‰”';//@type_vo_be_anbar nvarchar(100),
           end;

           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[20].Value:=tedad_jozi;//@tedade_jozi float
           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[21].Value:=t_k;//@tedade_koli float

           if (par=3)or(par=1)then
           begin
             DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[22].Value:=Dm_zayeat_marjoei.ADOQ_zayeatid_dar_anbare_koli.AsFloat;//@id_magsad_dar_anbar float,
             DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[23].Value:=Dm_zayeat_marjoei.ADOQ_zayeatid.AsFloat;//@id_mabda_dar_anbar float
           end
           else
           begin
             DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[22].Value:=Dm_zayeat_marjoei.ADOQ_zayeatid.AsFloat;//@id_magsad_dar_anbar float,
             DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[23].Value:=Dm_zayeat_marjoei.ADOQ_zayeatid_dar_anbare_koli.AsFloat;//@id_mabda_dar_anbar float
           end;

           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[24].Value:=par;//@par float
           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[25].Value:=Dm_zayeat_marjoei.ADOQ_zayeatid.AsFloat;//@id_dar_zayeat float
           DataM_sp.ADOStoredProc_eslahe_zayeat.Parameters[26].Value:=Dm_zayeat_marjoei.ADOQ_zayeatsh_kharid_zayeat.AsFloat;//@sh_factor float


           DataM_sp.ADOStoredProc_eslahe_zayeat.ExecProc;

            MessageBox(Handle,' ⁄œ«œ ÷«Ì⁄«  Ã‰” «‰ Œ«»Ì «’·«Õ ê—œÌœ',' ÊÃÂ ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
end;

procedure Tfrm_eslahe_zayeat.eslah;
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

  t_k_j:=(t_k*Dm_zayeat_marjoei.ADOQ_zayeattedad_jozi_da_koli.AsFloat)+t_j;

  Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where '+
  ' id='+Dm_zayeat_marjoei.ADOQ_zayeatid_dar_anbare_koli.AsString;
  Dmlistha.ADOlistanbarforosh.Open;

  if Dmlistha.ADOlistanbarforosh.RecordCount=0 then
    MessageBox(Handle,'Ã‰” «“ ÂÌç „ò«‰Ì ° »Â «‰»«— ÷«Ì⁄«  Ê«—œ ‰‘œÂ «”  œ— ‰ ÌÃÂ ﬁ«œ— »Â «’·«Õ ‰„Ì »«‘Ìœ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT )
  else
  begin
    if (t_k_j>Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsFloat) then  /// bishtar az tedade anbar kol
    begin
     if(Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat+Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsFloat) < t_k_j then
     begin
         pch:=pchar('»—«Ì «›“«Ì‘  ⁄œ«œ ÷«Ì⁄«  Ã‰”° Õœ«òÀ— „Ì  Ê«‰ »Â  ⁄œ«œ ›⁄·Ì Ã‰” „ÊÃÊœ œ— „ò«‰Ì òÂ ÷«Ì⁄«  «“ ¬‰ »Â «‰»«— ÷«Ì⁄«  Ê«—œ ‘œÂ «‰œ°»Â  ⁄œ«œ ÷«Ì⁄«  ›⁄·Ì «÷«›Â ‰„Êœ << Õœ «òÀ— '+FloatToStr(Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat)+' >>');
         MessageBox(Handle,pch,'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
         Exit;
     end;
    end;

    Dmlistha.ADOlistanbarforosh2.SQL.Text:='select * from Tanbar_jens_kolli where '+
    ' anbarname='+QuotedStr('«‰»«— ÷«Ì⁄« ')+
    ' and sh_kharid_zayeat='+Dm_zayeat_marjoei.ADOQ_zayeatsh_kharid_zayeat.AsString+
    ' and shakhs_sherkat='+QuotedStr(Dm_zayeat_marjoei.ADOQ_zayeatshakhs_sherkat.AsString)+
    ' and calaname='+QuotedStr(Dm_zayeat_marjoei.ADOQ_zayeatcalaname.AsString)+
    ' and calacod ='+Dm_zayeat_marjoei.ADOQ_zayeatcalacod.AsString;
    Dmlistha.ADOlistanbarforosh2.Open;


    if (Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsFloat>Dmlistha.ADOlistanbarforosh2tedadanbar.AsFloat) then /// az zayeat forokhte shode
    begin
      pch:=pchar('»œ·Ì· ›—Ê‘ Ã‰”  „Ê—œ ‰Ÿ— «“ «‰»«— ÷«Ì⁄«  ° ‰„Ì  Ê«‰  ⁄œ«œ ÷«Ì⁄«  Ã‰” —« «’·«Õ ò—œ');
      MessageBox(Handle,pch,'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
      Exit;
    end;
    
    {if (Dmlistha.ADOlistanbarforosh2tedadanbar.AsFloat)<(Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsFloat-t_k_j) then /// kamtar az tedade anbar zayeat
    begin
      pch:=pchar('»œ·Ì· ò«Â‘  ⁄œ«œ ÷«Ì⁄«  Ã‰”° „Ì  Ê«‰ Õœ«òÀ— »Â  ⁄œ«œ Ã‰” „ÊÃÊœ œ— «‰»«— ÷«Ì⁄« °«“ ÷«Ì⁄«  ›⁄·Ì Ã‰” ò”— ‰„Êœ << Õœ«òÀ— '+Dmlistha.ADOlistanbarforosh2tedadanbar.AsString+' „Ì  Ê«‰ «“ «‰»«— ÷«Ì⁄«  ò”— ò—œ >>');
      MessageBox(Handle,pch,'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
      Exit;
    end; }



      if (t_k_j=0) then // hazfe zayeat va bargashte kamel be anbar
      begin
         par:=1;
         execute_eslahe_zayeate_jens(par,Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat,Dmlistha.ADOlistanbarforoshanbarname.AsString);
         close;
      end
      else
      begin
        if t_k_j > Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsFloat then  // ezafe shodan az anbar be zayeat
        begin
          par:=2;
          execute_eslahe_zayeate_jens(par,Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat,Dmlistha.ADOlistanbarforoshanbarname.AsString);
          close;
        end
        else
        begin
          if t_k_j < Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsFloat then  // ezafe shodan az zayeat be anbar
          begin
            par:=3;
            execute_eslahe_zayeate_jens(par,Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat,Dmlistha.ADOlistanbarforoshanbarname.AsString);
            close;
          end
          else
            begin
              if t_k_j=Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsFloat then  // bedone tagir
                MessageBox(Handle,' ⁄œ«œ ÷«Ì⁄«  ÃœÌœ »«  ⁄œ«œ ÷«Ì⁄«  ﬁ»·Ì Ã‰” »—«»— «” ',' ÊÃÂ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
            end;
        end;
      end;


  end;

end;

procedure Tfrm_eslahe_zayeat.teded_kol_jadid;
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

   L_jam_jadid.Caption:=FloatToStr((t_k*Dm_zayeat_marjoei.ADOQ_zayeattedad_jozi_da_koli.AsFloat)+t_j); 
end;


procedure Tfrm_eslahe_zayeat.Edit_t_koli_jadid_KeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_zayeat.Edit_t_jozi_jadidKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_zayeat.Edit_t_koli_jadid_Change(Sender: TObject);
begin
  teded_kol_jadid;
end;

procedure Tfrm_eslahe_zayeat.Edit_t_jozi_jadidChange(Sender: TObject);
begin
  teded_kol_jadid;
end;

procedure Tfrm_eslahe_zayeat.Button1Click(Sender: TObject);
begin
  eslah;
end;

procedure Tfrm_eslahe_zayeat.FormShow(Sender: TObject);
begin
  if Dm_zayeat_marjoei.ADOQ_zayeattedad_jozi_da_koli.AsFloat<>0 then
  begin
    Edit_t_koli_jadid_.Text:=Dm_zayeat_marjoei.ADOQ_zayeattedad_koli.AsString;
    Edit_t_jozi_jadid.Text:=FloatToStr(Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsFloat-(Dm_zayeat_marjoei.ADOQ_zayeattedad_koli.AsFloat*Dm_zayeat_marjoei.ADOQ_zayeattedad_jozi_da_koli.AsFloat));
  end
  else
  begin
    Edit_t_koli_jadid_.Text:='0';
    Edit_t_jozi_jadid.Text:=Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsString;
  end;
  L_jam_jadid.Caption:=Dm_zayeat_marjoei.ADOQ_zayeattedadanbar.AsString;
end;

end.
