unit Untaddanbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Mask, StdCtrls, SUIButton, SUIEdit, SUIPageControl,
  SUITabControl, ExtCtrls, SUIForm, PDJ_XPB, PDJ_XPRB, DB, PDJ_XPC, Grids,
  DBGrids, SUIDBCtrls, LMDControl, LMDBaseControl, LMDBaseGraphicButton,
  LMDCustomSpeedButton, LMDSpeedButton;

type
  Tfrmaddanbar = class(TForm)
    DataSanbar: TDataSource;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    suiButton5: TsuiButton;
    pmmollahezat: TPDJXPMemo;
    banbarenseraf: TsuiButton;
    btaeed: TsuiButton;
    GroupBox7: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText_id: TDBText;
    DBText_g: TDBText;
    DBText_tedad_kol: TDBText;
    DBText_gey_koli: TDBText;
    DBText_tedad_jozi_dar_koli: TDBText;
    suiDBGrid1: TsuiDBGrid;
    suiDBGrid2: TsuiDBGrid;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    LMDSpeedButton1: TLMDSpeedButton;
    LMDSpeedButton2: TLMDSpeedButton;
    Label8: TLabel;
    esearch: TEdit;
    function akharin_code_cala:real;
    procedure bexiteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btaeedClick(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure banbarenserafClick(Sender: TObject);

    function  checkifcalaexistinkol(var cod:integer;var g_jozi:real;var tedad_jozi:integer;var tedad_koli:integer;code_sherkat,anbar:string):boolean;
    procedure getinsertparametr;
    procedure LMDSpeedButton1Click(Sender: TObject);
    procedure LMDSpeedButton2Click(Sender: TObject);
    procedure update_record_and_insert_to_kolli(ss:string);
    procedure show_majazi;

    procedure esearchChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        //////////////////////
     type_:string;

     jensname,jenscod,anbarname,jenstedadanbar,jenstedadkharid,kharidgeymat:string;
     foroshandename,foroshandeshahr,kharidyear,kharidmonth,khariddate:string;
     kharidtarikh,kharidmol,vorodyear,vorodmonth,voroddate:string;
     vorodtarikh:string;
   /////////////////////
    anbaropration:boolean;
    tedadjensanbar:integer;
  end;

var
  frmaddanbar: Tfrmaddanbar;

implementation

uses Unt_dmanbar, untjens_kharid, Untdmanbarexit, Unt_edit_kharid_jens,
  unt_main, Unteditgeymatjenspas, Untdmlistha, unt_datamodule1,
  unt_DataM_sp, unt_vorode_jense_motefarege, unt_DataM_joziate_taraz;
{$R *.dfm}



procedure Tfrmaddanbar.show_majazi;
begin
  Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='select * from t_anbar_majazi';;
  Dmlistha.ADOQuery_anbar_majazi.Open;
end;
procedure Tfrmaddanbar.update_record_and_insert_to_kolli(ss:string);
var id,geymat_gabl_jozi,geymat_jaddid,t_k:real;
    s:pchar;
    anbar,jens,code_sherkat:string;
    cod,tedad_jozi,x,tedad_kol:integer;
begin
  cod:=0;
  geymat_gabl_jozi:=0;
  tedad_jozi:=0;
  tedad_kol:=0;
  id:=frmaddanbar.akharin_code_cala+1;

  x:=StrToInt(Dmlistha.ADOQuery_anbar_majaziid.AsString);

  if (ss='')  then
      MessageBox(Handle,'„ò«‰ —« «‰ Œ«» ‰„«ÌÌœ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
    else
  begin
     anbar:=ss;
     jens:=Dmlistha.ADOQuery_anbar_majazicalaname.AsString;
     geymat_jaddid:=StrTofloat(Dmlistha.ADOQuery_anbar_majazigeymatforosh.AsString);

     t_k:=Dmlistha.ADOQuery_anbar_majazitedadanbar.AsFloat;
     
     {Dmanbar.ADOinserttoanbar.SQL.Text:='update t_anbar_majazi set calacod='+floatToStr(id)+',anbarname='+QuotedStr(anbar)+
     ',molahezatforosh='+QuotedStr(pmmollahezat.Text)+' where id='+IntToStr(StrToInt(DBText_id.Caption));
     Dmanbar.ADOinserttoanbar.ExecSQL; }

     if type_='eftetahie' then
     begin

        DataM_joziate_taraz.ADOQ_ajnase_vorodi_be_eftetahie.SQL.Text:='begin tran insert into T_aezeshe_ajnase_vorodi_be_anbare_eftetahie(calaname,tedadanbar,geymatkharid) '+
        ' values('+QuotedStr(Dmlistha.ADOQuery_anbar_majazicalaname.AsString)+','+FloatToStr(t_k)+','+Dmlistha.ADOQuery_anbar_majazigeymatkharid.AsString+')'+' commit tran';
        DataM_joziate_taraz.ADOQ_ajnase_vorodi_be_eftetahie.ExecSQL;

             
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[0].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[2].Value:=Dmlistha.ADOQuery_anbar_majaziid.AsString;//@id_dar_majazi float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[3].Value:=id;//@calacode	float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[4].Value:=' Ã‰” „ÊÃÊœ «“ ﬁ»· ';//@molaheze_forosh  nvarchar(250),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[5].Value:=anbar;//@anbarname_mgsad  nvarchar(30),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[6].Value:=Dmlistha.ADOQuery_anbar_majazitedad_koli.AsString;//@tedad_koli_magsad float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[7].Value:=t_k;//@tedad_kole_jabejaei float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[8].Value:=t_k;//@tedade_jozie float,


        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[9].Value:=Dmlistha.ADOQuery_anbar_majazicalaname.AsString;//@calaname	nvarchar(41),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[10].Value:=Dmlistha.ADOQuery_anbar_majazish_factor.AsString;//@sh_factor     float,

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[11].Value:=Dmlistha.ADOQuery_anbar_majazivahed_koli.AsString;//@vahed_koli	nvarchar(31),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[12].Value:=Dmlistha.ADOQuery_anbar_majazitedad_jozi_da_koli.AsString;//@tedad_jozi_da_koli	float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[13].Value:=Dmlistha.ADOQuery_anbar_majazivahed_jozi.AsString;//@vahed_jozi	nvarchar(31),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[14].Value:=Dmlistha.ADOQuery_anbar_majazibarcod.AsString;//@barcod	nvarchar(15),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[15].Value:=Dmlistha.ADOQuery_anbar_majazishakhs_sherkat.AsString;//@shakhs_sherkat	nvarchar(51),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[16].Value:=Dmlistha.ADOQuery_anbar_majazicode_sherkati.AsString;//@code_sherkati	nvarchar(11),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[17].Value:=' Ê—Êœ Ã‰” „ÊÃÊœ «“ ﬁ»· ‘Œ’/‘—ò  '+Dmlistha.ADOQuery_anbar_majazishakhs_sherkat.AsString+' Ê –ŒÌ—Â »« òœÃ‰” '+FloatToStr(id);//@tozihe_vo_be_anbar nvarchar(200),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[18].Value:='Ê—ÊœÌ - Ã‰” „ÊÃÊœ «“ ﬁ»·';//@type_vo_be_anbar nvarchar(100)
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.ExecProc;

        s:=pchar('Ã‰” << '+jens+' >> »Â << '+ anbar+' >> Ê«—œ ‘œ.');
        MessageBox(Handle,s,' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);

        frm_vorode_jense_motefarege.clear;
        exit;
     end;



    if checkifcalaexistinkol(cod,geymat_gabl_jozi,tedad_jozi,tedad_kol,Dmlistha.ADOQuery_anbar_majazishakhs_sherkat.AsString,anbar)=false then // jens no exist in anbar -------> add to selected anbar
      begin

//////////////////////////////////////////////////////////////////////////////////////////////////////////

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[0].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[2].Value:=Dmlistha.ADOQuery_anbar_majaziid.AsString;//@id_dar_majazi float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[3].Value:=id;//@calacode	float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[4].Value:=pmmollahezat.Text;//@molaheze_forosh  nvarchar(250),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[5].Value:=anbar;//@anbarname_mgsad  nvarchar(30),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[6].Value:=Dmlistha.ADOQuery_anbar_majazitedad_koli.AsString;//@tedad_koli_magsad float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[7].Value:=t_k;//@tedad_kole_jabejaei float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[8].Value:=t_k;//@tedade_jozie float,


        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[9].Value:=Dmlistha.ADOQuery_anbar_majazicalaname.AsString;//@calaname	nvarchar(41),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[10].Value:=Dmlistha.ADOQuery_anbar_majazish_factor.AsString;//@sh_factor     float,

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[11].Value:=Dmlistha.ADOQuery_anbar_majazivahed_koli.AsString;//@vahed_koli	nvarchar(31),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[12].Value:=Dmlistha.ADOQuery_anbar_majazitedad_jozi_da_koli.AsString;//@tedad_jozi_da_koli	float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[13].Value:=Dmlistha.ADOQuery_anbar_majazivahed_jozi.AsString;//@vahed_jozi	nvarchar(31),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[14].Value:=Dmlistha.ADOQuery_anbar_majazibarcod.AsString;//@barcod	nvarchar(15),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[15].Value:=Dmlistha.ADOQuery_anbar_majazishakhs_sherkat.AsString;//@shakhs_sherkat	nvarchar(51),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[16].Value:=Dmlistha.ADOQuery_anbar_majazicode_sherkati.AsString;//@code_sherkati	nvarchar(11),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[17].Value:='Ê—Êœ Ã‰” ÃœÌœ  Ê”ÿ Œ—Ìœ Ã‰” «“ '+Dmlistha.ADOQuery_anbar_majazishakhs_sherkat.AsString+' »« ‘„«—Â ›«ò Ê— '+Dmlistha.ADOQuery_anbar_majazish_factor.AsString+' »Â «‰»«— „Ã«“Ì Ê ”Å” Ê—Êœ «“ «‰»«— „Ã«“Ì »Â „ò«‰ ›⁄·Ì Ê À»  »« òœ ÃœÌœ '+FloatToStr(id);//@tozihe_vo_be_anbar nvarchar(200),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[18].Value:='Ê—ÊœÌ - Œ—Ìœ';//@type_vo_be_anbar nvarchar(100)
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.ExecProc;

//////////////////////////////////////////////////////////////////////////////////////////////////////////


       s:=pchar('Ã‰” << '+jens+' >> »Â << '+ anbar+' >> Ê«—œ ‘œ.');
       MessageBox(Handle,s,' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);

       frm_vorode_jense_motefarege.clear;
      end
    else
      begin
      s:=pchar('Ã‰” Œ—Ìœ«—Ì ‘œÂ  << '+jens+' >> œ— << '+anbar + ' >> »« ﬁÌ„  ›—Ê‘ " '+floatToStr(geymat_gabl_jozi)+' " Ê »Â  ⁄œ«œ "'+IntToStr(tedad_jozi)+' " '+'Œ—Ìœ«—Ì ‘œÂ «“ ‘—ò (‘Œ’) <<'+' '+Dmanbarexite.ADOanbarcalashakhs_sherkat.AsString+'>> '+' «“ ﬁ»· „ÊÃÊœ „Ì »«‘œ !  ⁄œ«œ Ã‰” Œ—Ìœ«—Ì ‘œÂ —« »Â  ⁄œ«œ „ÊÃÊœ œ— „ò«‰ «÷«›Â „Ì ‰„«ÌÌœ ø(»« «÷«›Â ‘œ‰  ⁄œ«œ Ã‰” Œ—Ìœ«—Ì ‘œÂ »Â  ⁄œ«œ Ã‰” „ÊÃÊœ ° ﬁÌ„  Œ—Ìœ Ê ›—Ê‘ Ã‰” »—«»— »« ﬁÌ„  Œ—Ìœ ÃœÌœ  ‰ŸÌ„ „Ì ê—œœ).');
        if MessageBox(Handle,s,' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RTLREADING or MB_RIGHT)=id_yes then
        begin
          t_k:=Dmlistha.ADOQuery_anbar_majazitedadanbar.AsFloat;
////////////////////////////////////////////////////////////////////////////////////////////////////

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[0].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[2].Value:=Dmlistha.ADOQuery_anbar_majaziid.AsString;//@id_dar_majazi float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[3].Value:=cod;//@calacode	float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[4].Value:=' ﬁÌ„  ›—Ê‘ ﬁ»·Ì Ã‰” „Ê ÃÊœ œ— „ò«‰'+floatToStr(geymat_gabl_jozi)+'  '+'ﬁÌ„  ›—Ê‘ ÃœÌœ Ã‰” (ﬁÌ„  Œ—Ìœ ÃœÌœ ) :'+(DBText_g.Caption);//@molahezatgeymat  nvarchar(250),


        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[5].Value:=anbar;//@anbarname_mgsad  nvarchar(30),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[6].Value:=Dmlistha.ADOQuery_anbar_majazitedad_koli.AsString;//@tedad_koli_magsad float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[7].Value:=t_k;;//@tedad_kole_jabejaei float,

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[8].Value:=t_k;;//@tedade_jozie float,


        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[9].Value:=Dmlistha.ADOQuery_anbar_majazicalaname.AsString;//@calaname	nvarchar(41),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[10].Value:=Dmlistha.ADOQuery_anbar_majazish_factor.AsString;//@sh_factor     float,

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[11].Value:=Dmlistha.ADOQuery_anbar_majazivahed_koli.AsString;//@vahed_koli	nvarchar(31),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[12].Value:=Dmlistha.ADOQuery_anbar_majazitedad_jozi_da_koli.AsString;//@tedad_jozi_da_koli	float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[13].Value:=Dmlistha.ADOQuery_anbar_majazivahed_jozi.AsString;//@vahed_jozi	nvarchar(31),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[14].Value:=Dmlistha.ADOQuery_anbar_majazibarcod.AsString;//@barcod	nvarchar(15),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[15].Value:=Dmlistha.ADOQuery_anbar_majazishakhs_sherkat.AsString;//@shakhs_sherkat	nvarchar(51),
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[16].Value:=Dmlistha.ADOQuery_anbar_majazicode_sherkati.AsString;//@code_sherkati	nvarchar(11),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[17].Value:=' Ê—Êœ Ã‰” „ÊÃÊœ «“ ﬁ»· Œ—Ìœ «“ '+Dmlistha.ADOQuery_anbar_majazishakhs_sherkat.AsString+' »« ‘„«—Â ›«ò Ê— '+Dmlistha.ADOQuery_anbar_majazish_factor.AsString+' »Â «‰»«— „Ã«“Ì Ê ”Å” Ê—Êœ «“ «‰»«— „Ã«“Ì »Â „ò«‰ ›⁄·Ì Ê «÷«›Â ‘œ‰ »Â  ⁄œ«œ „ÊÃÊœ «“ ﬁ»· »« òœ '+IntToStr(cod);//@tozihe_vo_be_anbar nvarchar(200),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[18].Value:='Ê—ÊœÌ - Œ—Ìœ';//@type_vo_be_anbar nvarchar(100),

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[19].Value:=Dmlistha.ADOQuery_anbar_majazigeymat_koli.AsString;//@geymat_koli float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[20].Value:=Dmlistha.ADOQuery_anbar_majazigeymatkharid.AsString;//@geymatkharid float,

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[21].Value:=Dmlistha.ADOQuery_anbar_majazigeymatforosh.AsString;//@geymatforosh float,
        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.Parameters[22].Value:=Dmlistha.ADOQuery_anbar_majazigeymat_forosh_koli.AsString;//@geymat_forosh_koli float

        DataM_sp.ADOStoredProc_az_majazi_be_anbar_ezafe_shoda_be_tedade_mojod.ExecProc;



////////////////////////////////////////////////////////////////////////////////////////////////////          

          s:=pchar(' ⁄œ«œ Œ—Ìœ«—Ì ‘œÂ «“ Ã‰” << '+jens+' >> »« ﬁÌ„  Œ—Ìœ :" '+floattostr(geymat_jaddid)+' " »Â  ⁄œ«œ „ÊÃÊœ «“ Â„Ì‰ Ã‰” œ— „ò«‰ << '+anbar +' >> «÷«›Â ‘œ‰œ Ê ﬁÌ„  ›—Ê‘ Ã‰” «“ " '+floatToStr(geymat_gabl_jozi)+' " »Â " ' +floattostr(geymat_jaddid)+' "  €ÌÌ— ÅÌœ«ò—œ.');
          MessageBox(Handle,s,' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
          frm_vorode_jense_motefarege.clear;          
        end
        else
           begin
              s:=pchar('Ã‰” Œ—Ìœ«—Ì ‘œÂ  << '+jens+' >> œ— << '+anbar + ' >> »« òœ Ã‰” ÃœÌœ –ŒÌ—Â ‘Êœø');
              if MessageBox(Handle,s,' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RTLREADING or MB_RIGHT)=id_yes then
              begin


      //////////////////////////////////////////////////////////////////////////////////////////////////////////

                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[0].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),
                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[2].Value:=Dmlistha.ADOQuery_anbar_majaziid.AsString;//@id_dar_majazi float,
                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[3].Value:=id;//@calacode	float,
                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[4].Value:=pmmollahezat.Text;//@molaheze_forosh  nvarchar(250),

                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[5].Value:=anbar;//@anbarname_mgsad  nvarchar(30),
                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[6].Value:=Dmlistha.ADOQuery_anbar_majazitedad_koli.AsString;//@tedad_koli_magsad float,
                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[7].Value:=t_k;//@tedad_kole_jabejaei float,
                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[8].Value:=t_k;//@tedade_jozie float,

                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[9].Value:=Dmlistha.ADOQuery_anbar_majazicalaname.AsString;//@calaname	nvarchar(41),
                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[10].Value:=Dmlistha.ADOQuery_anbar_majazish_factor.AsString;//@sh_factor     float,

                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[11].Value:=Dmlistha.ADOQuery_anbar_majazivahed_koli.AsString;//@vahed_koli	nvarchar(31),

                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[12].Value:=Dmlistha.ADOQuery_anbar_majazitedad_jozi_da_koli.AsString;//@tedad_jozi_da_koli	float,
                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[13].Value:=Dmlistha.ADOQuery_anbar_majazivahed_jozi.AsString;//@vahed_jozi	nvarchar(31),

                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[14].Value:=Dmlistha.ADOQuery_anbar_majazibarcod.AsString;//@barcod	nvarchar(15),
                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[15].Value:=Dmlistha.ADOQuery_anbar_majazishakhs_sherkat.AsString;//@shakhs_sherkat	nvarchar(51),
                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[16].Value:=Dmlistha.ADOQuery_anbar_majazicode_sherkati.AsString;//@code_sherkati	nvarchar(11),

                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[17].Value:=' Ê—Êœ Ã‰” „ÊÃÊœ «“ ﬁ»· Œ—Ìœ «“ '+Dmlistha.ADOQuery_anbar_majazishakhs_sherkat.AsString+' »« ‘„«—Â ›«ò Ê— '+Dmlistha.ADOQuery_anbar_majazish_factor.AsString+' »Â «‰»«— „Ã«“Ì Ê ”Å” Ê—Êœ «“ «‰»«— „Ã«“Ì »Â „ò«‰ ›⁄·Ì Ê À»  »« òœ ÃœÌœ '+FloatToStr(id);//@tozihe_vo_be_anbar nvarchar(200),

                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.Parameters[18].Value:='Ê—ÊœÌ - Œ—Ìœ';//@type_vo_be_anbar nvarchar(100)
                DataM_sp.ADOStoredProc_az_majazi_be_anbar_jense_jadid.ExecProc;

//////////////////////////////////////////////////////////////////////////////////////////////////////////


                s:=pchar('Ã‰” << '+jens+' >> »Â << '+ anbar+' >> Ê«—œ ‘œ.');
                MessageBox(Handle,s,' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
                frm_vorode_jense_motefarege.clear;                
              end
              else
                if anbar<>'«‰»«— «›  «ÕÌÂ' then
                  MessageBox(Handle,'„ò«‰ œÌê—Ì —« »—«Ì Ê—Êœ Ã‰” «‰ Œ«» ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
           end;
      end;

  end;
  
end;

////////////////////////////////////////////////////////////
function Tfrmaddanbar.akharin_code_cala:real;
  begin
    Dmanbar.ADO_akharin_code_cala.SQL.Text:='select * from T_akharin_code_cala';
    Dmanbar.ADO_akharin_code_cala.Open;

    akharin_code_cala:=Dmanbar.ADO_akharin_code_calaakharin_code_cala.asfloat;
  end;
/////////////////
procedure Tfrmaddanbar.getinsertparametr;
var tarikh:string;
begin

  /////////////////////////////////////
  {tarikh:=frmjens_kharid.MaskEditsal.Text+'/'+frmjens_kharid.MaskEditmah.Text+'/'+frmjens_kharid.MaskEditrooz.Text;
  jensname:=frmjens_kharid.Edit1.Text;
  jenscod:=IntToStr(tedadjensanbar);
  anbarname:=dbanbar.Text;
  jenstedadanbar:=frmjens_kharid.Edit2.Text;
  jenstedadkharid:=frmjens_kharid.Edit2.Text;
  kharidgeymat:=IntToStr(StrToInt(trim(frmjens_kharid.Edit2.Text))*strtoint(trim(frmjens_kharid.Edit3.Text)));
  foroshandename:=frmjens_kharid.foroshandeforanbar;
  foroshandeshahr:=frmjens_kharid.shahrforanbar;
  kharidyear:=frmjens_kharid.MaskEditsal.Text;
  kharidmonth:=frmjens_kharid.MaskEditmah.Text;
  khariddate:=frmjens_kharid.MaskEditrooz.Text;
  kharidtarikh:=tarikh;
  kharidmol:=pmmollahezat.Text;
  vorodyear:=frmjens_kharid.MaskEditsal.Text;
  vorodmonth:=frmjens_kharid.MaskEditmah.Text;
  voroddate:=frmjens_kharid.MaskEditrooz.Text;
  vorodtarikh:=tarikh;}

///////////////////////////////////

end;
/////////////////////////////////////////////////////////////////////

//////////////


/////////////////////////////////////////////////////////////
function Tfrmaddanbar.checkifcalaexistinkol(var cod:integer;var g_jozi:real;var tedad_jozi:integer;var tedad_koli:integer;code_sherkat,anbar:string):boolean;
  begin
    Dmanbarexite.ADOanbarcala.SQL.Text:='select * from  Tanbar_jens_kolli where'+
    '  calaname='+QuotedStr(Dmlistha.ADOQuery_anbar_majazicalaname.AsString)+'and anbarname='+QuotedStr(anbar)+
    ' and tedad_jozi_da_koli='+Dmlistha.ADOQuery_anbar_majazitedad_jozi_da_koli.AsString+
    ' and vahed_koli='+QuotedStr(Dmlistha.ADOQuery_anbar_majazivahed_koli.AsString)+
    ' and vahed_jozi='+QuotedStr(Dmlistha.ADOQuery_anbar_majazivahed_jozi.AsString)+
    ' and code_sherkati='+QuotedStr(Dmlistha.ADOQuery_anbar_majazicode_sherkati.AsString)+
    ' and barcod='+QuotedStr(Dmlistha.ADOQuery_anbar_majazibarcod.AsString)+
    ' and shakhs_sherkat='+QuotedStr(code_sherkat);
    Dmanbarexite.ADOanbarcala.Open;
    if Dmanbarexite.ADOanbarcala.RecordCount > 0 then
    begin
      checkifcalaexistinkol:=true;  ///jens with this name exist in anbar
      cod:=Dmanbarexite.ADOanbarcalacalacod.AsInteger;
      g_jozi:=Dmanbarexite.ADOanbarcala.Fields[4].AsVariant;
      tedad_jozi:=Dmanbarexite.ADOanbarcala.Fields[1].AsInteger;
      tedad_koli:=Dmanbarexite.ADOanbarcala.Fields[10].AsInteger;
    end
    else
      checkifcalaexistinkol:=False;  //jens with this name no exist in anbar}
  end;
//////////////


procedure Tfrmaddanbar.bexiteClick(Sender: TObject);
  begin
    close;
  end;

procedure Tfrmaddanbar.FormShow(Sender: TObject);
  begin
   type_:='kharid';
   pmmollahezat.Text:='Ã‰” ¬„«œÂ ›—Ê‘ „Ì »«‘œ' ;
   Dmanbar.ADOanbarname.SQL.Text:='select distinct name from tanbar_names where name<>'+QuotedStr('«‰»«— „Ã«“Ì')+
   ' and name<>'+QuotedStr('«‰»«— ÷«Ì⁄« ')+' and name<>'+QuotedStr('«‰»«— «›  «ÕÌÂ');
   Dmanbar.ADOanbarname.Open;
   show_majazi;
   frmaddanbar.WindowState:=wsMaximized;
   esearch.Clear;
   esearch.SetFocus;
  end;

procedure Tfrmaddanbar.btaeedClick(Sender: TObject);
  begin
    if Dmlistha.ADOQuery_anbar_majazi.RecordCount <=0 then
      MessageBox(Handle,'Ã‰”Ì œ— «‰»«— „Ã«—Ì ÊÃÊœ ‰œ«—œ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
    else
    begin
      if Dmanbar.ADOanbarname.RecordCount >0 then
      begin
        update_record_and_insert_to_kolli(Dmanbar.ADOanbarnamename.AsString);
        show_majazi;
      end
       else
        MessageBox(Handle,'„ò«‰Ì »—«Ì Ê—Êœ Ã‰” »Â ¬‰ ÊÃÊœ ‰œ«—œ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
      end;
   { vorod;}/////add jens to anbar  in this time}
  end;
procedure Tfrmaddanbar.suiButton5Click(Sender: TObject);
  begin
    pmmollahezat.Text:='';
  end;

procedure Tfrmaddanbar.banbarenserafClick(Sender: TObject);
  begin
    anbaropration:=false;
   close;
  end;


procedure Tfrmaddanbar.LMDSpeedButton1Click(Sender: TObject);
begin
  Dmlistha.ADOQuery_anbar_majazi.Next;
end;

procedure Tfrmaddanbar.LMDSpeedButton2Click(Sender: TObject);
begin
   Dmlistha.ADOQuery_anbar_majazi.Prior;
end;

procedure Tfrmaddanbar.esearchChange(Sender: TObject);
begin
  Dmanbar.ADOanbarname.Locate('name',esearch.Text,[loPartialKey]);
end;

end.
