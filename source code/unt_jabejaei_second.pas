unit unt_jabejaei_second;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, DB, StdCtrls, DBCtrls, SUIButton;

type
  Tfrm_jabejaei_second = class(TForm)
    Datasanbarname: TDataSource;
    suiDBGrid2: TsuiDBGrid;
    DBText_name: TDBText;
    Label8: TLabel;
    DataSource2: TDataSource;
    Label1: TLabel;
    DBText1: TDBText;
    DBText_shakhs_sherkat: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText_geymate_khaaid: TDBText;
    Label4: TLabel;
    DBText_geymate_forosh: TDBText;
    suibtaeed11: TsuiButton;
    suibtaeed: TsuiButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    l_tedad_kole_jabejaei: TLabel;
    l_tedad_jozi_jabejaei: TLabel;
    l_tedad_koli_jabejaei: TLabel;
    Label9: TLabel;
    DBText_tedade_jozi_dar_koli: TDBText;
    L_code_cala: TLabel;
    procedure FormShow(Sender: TObject);
    procedure suibtaeedClick(Sender: TObject);
    function check_exist_jens_ba_hamin_cod:boolean;
    procedure suibtaeed11Click(Sender: TObject);
    procedure jabejaei;
    procedure update_tedad_jens_mojod_dar_magsad_ba_hamin_cod;
    procedure insert_gozaresh_jabejaei_anbar_update(cod:string);
    procedure insert_gozaresh_jabejaei_anbar_sabt_ba_code_gabl(cod:string);
    procedure insert_gozaresh_jabejaei_anbar_sabt_ba_code_jadid(cod:string);

    procedure execute_update_tedad_jens_mojod_dar_magsad_ba_hamin_cod_stored_procedure;
  private
    { Private declarations }
  public
    { Public declarations }
    tedad_kol_dar_magsad:real;
  end;

var
  frm_jabejaei_second: Tfrm_jabejaei_second;

implementation

uses Untdmanbarexit, unt_ajnase_makane_magsad, Untdmlistha, Untaddanbar,
  Unt_dmanbar, unt_main, unt_jabejaei_first, unt_DataM_sp;

{$R *.dfm}
procedure Tfrm_jabejaei_second.execute_update_tedad_jens_mojod_dar_magsad_ba_hamin_cod_stored_procedure;
begin
  
end;
//////////////////
procedure Tfrm_jabejaei_second.insert_gozaresh_jabejaei_anbar_sabt_ba_code_jadid(cod:string);
var time_:string;
 tedade_koli,tedade_jozi:real;
begin

    time_:=frm_main.LMDClock1.Digital.Caption;

    Dmanbar.ADO_akharin_code_cala.SQL.Text:='update T_akharin_code_cala set akharin_code_cala=akharin_code_cala+1';
    Dmanbar.ADO_akharin_code_cala.ExecSQL;

    if Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsFloat<>0 then
      tedade_koli:=int(StrToFloat(l_tedad_kole_jabejaei.Caption)/Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsFloat)
    else
      tedade_koli:=0;

    tedade_jozi:=StrToFloat(l_tedad_kole_jabejaei.Caption)-(tedade_koli*Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsFloat);

   //////////// khoroji //////////////
    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(Dmlistha.ADOlistanbarforoshcalaname.AsString)+','+
    FloatToStr(tedade_jozi)+','+
    cod+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_koli.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_jozi.AsString)+','+

    FloatToStr(tedade_koli)+','+
    Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString+','+
    FloatToStr(0)+','+

    l_tedad_kole_jabejaei.Caption+','+


    QuotedStr(' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ��� �� �� ���� '+cod)+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshbarcod.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshcode_sherkati.AsString)+','+

    QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+','+
    QuotedStr(time_)+','+
    QuotedStr('����� - �������')+
    ')';


    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;

    //////////////////////////////////////


   //////////// vorodi //////////////
    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(Dmlistha.ADOlistanbarforoshcalaname.AsString)+','+
    FloatToStr(tedade_jozi)+','+
    cod+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_koli.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_jozi.AsString)+','+

    FloatToStr(tedade_koli)+','+
    Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString+','+
    FloatToStr(0)+','+

    l_tedad_kole_jabejaei.Caption+','+


    QuotedStr(' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ��� �� �� ���� '+cod)+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshbarcod.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshcode_sherkati.AsString)+','+

    QuotedStr(Dmanbarexite.ADOanbarname2name.AsString)+','+  
    QuotedStr(time_)+','+
    QuotedStr('����� - �������')+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;
end;
////////////

procedure Tfrm_jabejaei_second.insert_gozaresh_jabejaei_anbar_sabt_ba_code_gabl(cod:string);
var time_:string;
 tedade_koli,tedade_jozi:real;
begin

    time_:=frm_main.LMDClock1.Digital.Caption;

    if Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsFloat<>0 then
      tedade_koli:=int(StrToFloat(l_tedad_kole_jabejaei.Caption)/Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsFloat)
    else
      tedade_koli:=0;

    tedade_jozi:=StrToFloat(l_tedad_kole_jabejaei.Caption)-(tedade_koli*Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsFloat);
   //////////// khoroji //////////////
    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(Dmlistha.ADOlistanbarforoshcalaname.AsString)+','+
    FloatToStr(tedade_jozi)+','+
    cod+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_koli.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_jozi.AsString)+','+

    FloatToStr(tedade_koli)+','+
    Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString+','+
    FloatToStr(0)+','+

    l_tedad_kole_jabejaei.Caption+','+


    QuotedStr(' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ��� �� �� ���� ��� '+cod)+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshbarcod.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshcode_sherkati.AsString)+','+

    QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+','+
    QuotedStr(time_)+','+
    QuotedStr('����� - �������')+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;

    //////////////////////////////////////


   //////////// vorodi //////////////
    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(Dmlistha.ADOlistanbarforoshcalaname.AsString)+','+
    FloatToStr(tedade_jozi)+','+
    cod+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_koli.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_jozi.AsString)+','+

    FloatToStr(tedade_koli)+','+
    Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString+','+
    FloatToStr(0)+','+

    l_tedad_kole_jabejaei.Caption+','+


    QuotedStr(' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ��� �� �� ���� ��� '+cod)+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshbarcod.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshcode_sherkati.AsString)+','+

    QuotedStr(Dmanbarexite.ADOanbarname2name.AsString)+','+
    QuotedStr(time_)+','+
    QuotedStr('����� - �������')+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;
end;
///////////////////////////
procedure Tfrm_jabejaei_second.insert_gozaresh_jabejaei_anbar_update(cod:string);
var time_:string;
 tedade_koli,tedade_jozi:real;
begin

    time_:=frm_main.LMDClock1.Digital.Caption;

    if Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsFloat<>0 then
      tedade_koli:=int(StrToFloat(l_tedad_kole_jabejaei.Caption)/Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsFloat)
    else
      tedade_koli:=0;

    tedade_jozi:=StrToFloat(l_tedad_kole_jabejaei.Caption)-(tedade_koli*Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsFloat);
    
   //////////// khoroji //////////////
    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(Dmlistha.ADOlistanbarforoshcalaname.AsString)+','+
    FloatToStr(tedade_jozi)+','+
    cod+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_koli.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_jozi.AsString)+','+

    FloatToStr(tedade_koli)+','+
    Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString+','+
    FloatToStr(0)+','+

    l_tedad_kole_jabejaei.Caption+','+


    QuotedStr(' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ����� ��� ����� ��� �� ����� ��� ����� �� ��� � ��� �� �� ���� ��� '+cod)+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshbarcod.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshcode_sherkati.AsString)+','+

    QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+','+
    QuotedStr(time_)+','+
    QuotedStr('����� - �������')+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;

    //////////////////////////////////////


   //////////// vorodi //////////////
    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(Dmlistha.ADOlistanbarforoshcalaname.AsString)+','+
    FloatToStr(tedade_jozi)+','+
    cod+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_koli.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshvahed_jozi.AsString)+','+

    FloatToStr(tedade_koli)+','+
    Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString+','+
    FloatToStr(0)+','+

    l_tedad_kole_jabejaei.Caption+','+


    QuotedStr(' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ����� ��� ����� ��� �� ����� ��� ����� �� ��� � ��� �� �� ���� ��� '+cod)+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshbarcod.AsString)+','+
    QuotedStr(Dmlistha.ADOlistanbarforoshcode_sherkati.AsString)+','+

    QuotedStr(Dmanbarexite.ADOanbarname2name.AsString)+','+
    QuotedStr(time_)+','+
    QuotedStr('����� - �������')+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;
end;

procedure Tfrm_jabejaei_second.update_tedad_jens_mojod_dar_magsad_ba_hamin_cod;
var cod_jadid,tozihe_forosh:string;
    s:pchar;
    tedad_kol,tedad_jozi_dar_koli,tedad_koli_mabda,tedad_koli_magsad,tedad_jozi,t_k:real;
begin
     tedad_kol:=StrToFloat(l_tedad_kole_jabejaei.Caption);
     tedad_jozi_dar_koli:=StrToFloat(DBText_tedade_jozi_dar_koli.Caption);

     s:=pchar('��� ������� �� ���� �� �� ��ӡ�� ��� ���� ���� ���ϡ ����� ��� ���� �� ��� �� ����� ����� �� ��� ���� ����� ���Ͽ');
        if MessageBox(Handle,s,'���� !',MB_YESNO or MB_ICONQUESTION or MB_RTLREADING or MB_RIGHT)=id_yes then
        begin

          tozihe_forosh:='��� �� ����� '+frm_main.L_tarikh.Caption+' �� ������ ' +l_tedad_koli_jabejaei.Caption+' ���� ��� � �� ����� '+
          l_tedad_jozi_jabejaei.Caption+' ���� ���� '+' ����� �� ����� �� '+l_tedad_kole_jabejaei.Caption+' �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� ��� ���� �� �� � ����� ��� ���� �� ��� �� ����� ������ ���� ���  �� �� ��� ���� ����� �����';

          {insert_gozaresh_jabejaei_anbar_update(L_code_cala.Caption);}

          if tedad_jozi_dar_koli<>0 then
            tedad_koli_mabda:=int((Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat-tedad_kol)/ tedad_jozi_dar_koli)
          else
            tedad_koli_mabda:=0;

          if tedad_jozi_dar_koli<>0 then
            tedad_koli_magsad:=int((tedad_kol_dar_magsad+tedad_kol)/ tedad_jozi_dar_koli)
          else
            tedad_koli_magsad:=0;

                if  tedad_jozi_dar_koli<>0 then
                  tedad_jozi:=tedad_kol-(int(tedad_kol/tedad_jozi_dar_koli)*tedad_jozi_dar_koli)
                else
                  tedad_jozi:=tedad_kol;

         if tedad_jozi_dar_koli<>0 then
          t_k:=int(tedad_kol/tedad_jozi_dar_koli)
         else
          t_k:=0;

 //////////////////////////////////////////////////////////////////////////////////////////////////////////////

          frm_main.l_last_op.Caption:=' ���� ���� ��� '+DBText_name.Caption+' �� ����� ��� '+l_tedad_koli_jabejaei.Caption+' � ����� ���� '+l_tedad_jozi_jabejaei.Caption+
          ' ����� �� ����� �� '+l_tedad_kole_jabejaei.Caption;

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[0].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[2].Value:=L_code_cala.Caption;//@calacod float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[3].Value:=Dmanbarexite.ADOanbarname2name.AsString;//@anbarname_mgsad nvarchar(30),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[4].Value:=Dmanbarexite.ADOanbarnamename.AsString;//@anbarname_mabda nvarchar(30),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[5].Value:=tedad_koli_magsad;//@tedad_koli_magsad float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[6].Value:=tedad_koli_mabda;//@tedad_koli_mabda  float,

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[7].Value:=l_tedad_kole_jabejaei.Caption;//@tedad_kole_jabejaei float,

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[8].Value:=tozihe_forosh;//@tozihe nvarchar(250),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[9].Value:=frm_main.l_last_op.Caption+' �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ����� ��� ����� �� �� ����� ����� �� ���� ��� �� ��� ������� ';//@amaliat nvarchar(1000)

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[10].Value:=Dmlistha.ADOlistanbarforoshcalaname.AsString;//@calaname	nvarchar(41),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[11].Value:=Dmlistha.ADOlistanbarforoshgeymatkharid.AsString;//@geymatkharid	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[12].Value:=Dmlistha.ADOlistanbarforoshgeymatforosh.AsString;//@geymatforosh	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[13].Value:=Dmlistha.ADOlistanbarforoshmolahezatgeymat.AsString;//@molahezatgeymat	nvarchar(251),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[14].Value:=Dmlistha.ADOlistanbarforoshtarikhedit.AsString;//@tarikhedit	nvarchar(12),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[15].Value:=Dmlistha.ADOlistanbarforoshvahed_koli.AsString;//@vahed_koli	nvarchar(31),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[16].Value:=Dmlistha.ADOlistanbarforoshgeymat_koli.AsString;//@geymat_koli 	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[17].Value:=Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString;//@tedad_jozi_da_koli	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[18].Value:=Dmlistha.ADOlistanbarforoshvahed_jozi.AsString;//@vahed_jozi	nvarchar(31),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[19].Value:=Dmlistha.ADOlistanbarforoshgeymat_koli.AsString;//@geymat_forosh_koli	 float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[20].Value:=Dmlistha.ADOlistanbarforoshbarcod.AsString;//@barcod	nvarchar(15),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[21].Value:=Dmlistha.ADOlistanbarforoshshakhs_sherkat.AsString;//@shakhs_sherkat	nvarchar(51),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[22].Value:=Dmlistha.ADOlistanbarforoshcode_sherkati.AsString;//@code_sherkati	nvarchar(11)

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[23].Value:=' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ����� ��� ����� ��� �� ����� ��� ����� �� ��� � ��� �� �� ���� ��� '+L_code_cala.Caption;//@tozihe_kho_az_anbar nvarchar(200),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[24].Value:=' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ����� ��� ����� ��� �� ����� ��� ����� �� ��� � ��� �� �� ���� ��� '+L_code_cala.Caption;//@tozihe_vo_be_anbar nvarchar(200),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[25].Value:='����� - �������';//@type_kh_az_anbar nvarchar(100),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[26].Value:='����� - �������';//@type_vo_be_anbar nvarchar(100),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[27].Value:=tedad_jozi;//@tedade_jozi float
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.Parameters[28].Value:=t_k;//@tedade_koli float

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodan_be_tedad_mojod_ba_c.ExecProc;

          MessageBox(Handle,pchar('���� ���� ��� ����� ��'),'���� !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);           

         { Dmlistha.ADOlistanbarforosh.SQL.Text:='update Tanbar_jens_kolli set tedad_koli='+

          FloatToStr(tedad_koli)+

         ',tedadanbar=tedadanbar-'+l_tedad_kole_jabejaei.Caption+
          ' where anbarname='+QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+' and calacod='+L_code_cala.Caption;
          Dmlistha.ADOlistanbarforosh.ExecSQL;





          Dmlistha.ADOlistanbarforosh.SQL.Text:='update Tanbar_jens_kolli set tedad_koli='+

          FloatToStr(tedad_koli_magsad)+
          
          ',tedadanbar=tedadanbar+'+l_tedad_kole_jabejaei.Caption+',molahezatforosh='+QuotedStr(tozihe_forosh)+
          ' where anbarname='+QuotedStr(Dmanbarexite.ADOanbarname2name.AsString)+' and calacod='+L_code_cala.Caption;
          Dmlistha.ADOlistanbarforosh.ExecSQL;}


 //////////////////////////////////////////////////////////////////////////////////////////////////////////////

 
          Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
          QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+'order by calaname';
          Dmlistha.ADOlistanbarforosh.Open;




          Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
          QuotedStr(Dmanbarexite.ADOanbarname2name.AsString)+'order by calaname';
          Dmanbarexite.ADOanbarcala.Open;




        end
        else
        begin
          s:=pchar('��� �� �� ���� �� ��� ���� ����� ���Ͽ');
          if MessageBox(Handle,s,'���� !',MB_YESNO or MB_ICONQUESTION or MB_RTLREADING or MB_RIGHT)=id_yes then
          begin
            cod_jadid:=FloatToStr(frmaddanbar.akharin_code_cala+1);
            {insert_gozaresh_jabejaei_anbar_sabt_ba_code_jadid(cod_jadid);}
            tozihe_forosh:='��� �� ����� '+frm_main.L_tarikh.Caption+' �� ������ ' +l_tedad_koli_jabejaei.Caption+' ���� ��� � �� ����� '+
            l_tedad_jozi_jabejaei.Caption+' ���� ���� '+' ����� �� ����� �� '+l_tedad_kole_jabejaei.Caption+' �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� ��� ���� �� �� � �� �� ���� ����� �����';

              if  tedad_jozi_dar_koli<>0 then
                tedad_koli_magsad:=int(tedad_kol/tedad_jozi_dar_koli)
              else
                tedad_koli_magsad:=0;

                if  tedad_jozi_dar_koli<>0 then
                  tedad_koli_mabda:=int((Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat-tedad_kol)/ tedad_jozi_dar_koli)
                else
                  tedad_koli_mabda:=0;

                if  tedad_jozi_dar_koli<>0 then
                  tedad_jozi:=tedad_kol-(int(tedad_kol/tedad_jozi_dar_koli)*tedad_jozi_dar_koli)
                else
                  tedad_jozi:=tedad_kol;

         if tedad_jozi_dar_koli<>0 then
          t_k:=int(tedad_kol/tedad_jozi_dar_koli)
         else
          t_k:=0;            

 //////////////////////////////////////////////////////////////////////////////////////////////////////////////
                 frm_main.l_last_op.Caption:=' ���� ���� ��� '+DBText_name.Caption+' �� ����� ��� '+l_tedad_koli_jabejaei.Caption+' � ����� ���� '+l_tedad_jozi_jabejaei.Caption+
                ' ����� �� ����� �� '+l_tedad_kole_jabejaei.Caption;


           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[0].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[2].Value:=Dmanbarexite.ADOanbarname2name.AsString;//@anbarname_mgsad nvarchar(30),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[3].Value:=Dmanbarexite.ADOanbarnamename.AsString;//@anbarname_mabda nvarchar(30),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[4].Value:=tedad_koli_magsad;//@tedad_koli_magsad float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[5].Value:=tedad_koli_mabda;//@tedad_koli_mabda  float,

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[6].Value:=l_tedad_kole_jabejaei.Caption;//@tedad_kole_jabejaei float,

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[7].Value:=tozihe_forosh;//@tozihe nvarchar(250),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[8].Value:=frm_main.l_last_op.Caption+' �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ����� �� �� ����';//@amaliat nvarchar(1000),


           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[9].Value:=Dmlistha.ADOlistanbarforoshcalaname.AsString;//@calaname	nvarchar(41),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[10].Value:=Dmlistha.ADOlistanbarforoshgeymatkharid.AsString;//@geymatkharid	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[11].Value:=Dmlistha.ADOlistanbarforoshgeymatforosh.AsString;//@geymatforosh	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[12].Value:=Dmlistha.ADOlistanbarforoshmolahezatgeymat.AsString;//@molahezatgeymat	nvarchar(251),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[13].Value:=L_code_cala.Caption;//@calacod	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[14].Value:=cod_jadid;//@calacod_jadid	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[15].Value:=Dmlistha.ADOlistanbarforoshtarikhedit.AsString;//@tarikhedit	nvarchar(12),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[16].Value:=Dmlistha.ADOlistanbarforoshvahed_koli.AsString;//@vahed_koli	nvarchar(31),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[17].Value:=Dmlistha.ADOlistanbarforoshgeymat_koli.AsString;//@geymat_koli 	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[18].Value:=Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString;//@tedad_jozi_da_koli	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[19].Value:=Dmlistha.ADOlistanbarforoshvahed_jozi.AsString;//@vahed_jozi	nvarchar(31),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[20].Value:=Dmlistha.ADOlistanbarforoshgeymat_koli.AsString;//@geymat_forosh_koli	 float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[21].Value:=Dmlistha.ADOlistanbarforoshbarcod.AsString;//@barcod	nvarchar(15),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[22].Value:=Dmlistha.ADOlistanbarforoshshakhs_sherkat.AsString;//@shakhs_sherkat	nvarchar(51),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[23].Value:=Dmlistha.ADOlistanbarforoshcode_sherkati.AsString;//@code_sherkati	nvarchar(11)

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[24].Value:=' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ��� �� �� ���� '+cod_jadid;//@tozihe_kho_az_anbar nvarchar(200),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[25].Value:=' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ��� �� �� ���� '+cod_jadid;//@tozihe_vo_be_anbar nvarchar(200),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[26].Value:='����� - �������';//@type_kh_az_anbar nvarchar(100),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[27].Value:='����� - �������';//@type_vo_be_anbar nvarchar(100),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[28].Value:=tedad_jozi;//@tedade_jozi float
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[29].Value:=t_k;//@tedade_koli float
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.Parameters[30].Value:=Dmlistha.ADOlistanbarforoshgeymatforosh_koli.AsString;//@geymatforosh_koli float
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ezafe_shodane_jense_mojod_ba_cod.ExecProc;

           MessageBox(Handle,pchar('���� ���� ��� ����� ��'),'���� !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);           





         {       Dmanbarexite.ADOanbarcala.SQL.Text:='insert into Tanbar_jens_kolli( '+
                'calaname,tedadanbar,anbarname,'+
                'geymatkharid,geymatforosh,molahezatgeymat,'+
                'calacod,tarikhedit,molahezatforosh,'+
                'tedad_koli,vahed_koli,geymat_koli,'+
                'tedad_jozi_da_koli,vahed_jozi,'+
                'geymat_forosh_koli,barcod,shakhs_sherkat)'+
                ' values('+QuotedStr(Dmlistha.ADOlistanbarforoshcalaname.AsString)+','+l_tedad_kole_jabejaei.Caption+','+QuotedStr(Dmanbarexite.ADOanbarname2name.AsString)+
                ','+Dmlistha.ADOlistanbarforoshgeymatkharid.AsString+','+Dmlistha.ADOlistanbarforoshgeymatforosh.AsString+','+QuotedStr(Dmlistha.ADOlistanbarforoshmolahezatgeymat.AsString)+
                ','+cod_jadid+','+QuotedStr(Dmlistha.ADOlistanbarforoshtarikhedit.AsString)+','+QuotedStr(tozihe_forosh)+','+

                FloatToStr(tedad_koli_magsad)+


                ','+QuotedStr(Dmlistha.ADOlistanbarforoshvahed_koli.AsString)+','+Dmlistha.ADOlistanbarforoshgeymat_koli.AsString+

                ','+Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString+','+QuotedStr(Dmlistha.ADOlistanbarforoshvahed_jozi.AsString)+
                ','+Dmlistha.ADOlistanbarforoshgeymat_forosh_koli.AsString+','+QuotedStr(Dmlistha.ADOlistanbarforoshbarcod.AsString)+','+QuotedStr(Dmlistha.ADOlistanbarforoshshakhs_sherkat.AsString)+')';

                Dmanbarexite.ADOanbarcala.ExecSQL;




                Dmlistha.ADOlistanbarforosh.SQL.Text:='update Tanbar_jens_kolli set tedad_koli='+

                FloatToStr(tedad_koli_mabda)+

                ',tedadanbar=tedadanbar-'+l_tedad_kole_jabejaei.Caption+
                ' where anbarname='+QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+' and calacod='+L_code_cala.Caption;
                Dmlistha.ADOlistanbarforosh.ExecSQL;  }

 //////////////////////////////////////////////////////////////////////////////////////////////////////////////                

                Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
                QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+'order by calaname';
                Dmlistha.ADOlistanbarforosh.Open;


                Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
                QuotedStr(Dmanbarexite.ADOanbarname2name.AsString)+'order by calaname';
                Dmanbarexite.ADOanbarcala.Open;


          end
          else
           MessageBox(Handle,pchar('���� ���� ��� ����� ���'),'���� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
        end;
end;

procedure Tfrm_jabejaei_second.jabejaei;
var cod_jadid,tozihe_forosh:string;
    s:pchar;
    tedad_kol,tedad_jozi_dar_koli,tedad_koli_mabda,tedad_koli_magsad,tedad_jozi,t_k:real;
begin
     tedad_kol:=StrToFloat(l_tedad_kole_jabejaei.Caption);
     tedad_jozi_dar_koli:=StrToFloat(DBText_tedade_jozi_dar_koli.Caption);

      s:=pchar('��� ������� �� ���� �� �� �� �� ��� ���� ���� ����� � ��� ��� �� ��� ���� �� �� ���� ����� ��Ͽ(�� ���� ���� ���� ��� �� �� ���� �� ��� ���� ����� �� ����)');
        if MessageBox(Handle,s,'���� !',MB_YESNO or MB_ICONQUESTION or MB_RTLREADING or MB_RIGHT)=id_yes then
        begin ////////1
          cod_jadid:=FloatToStr(frmaddanbar.akharin_code_cala+1);
          {insert_gozaresh_jabejaei_anbar_sabt_ba_code_jadid(cod_jadid); }
          tozihe_forosh:='��� �� ����� '+frm_main.L_tarikh.Caption+' �� ������ ' +l_tedad_koli_jabejaei.Caption+' ���� ��� � �� ����� '+
          l_tedad_jozi_jabejaei.Caption+' ���� ���� '+' ����� �� ����� �� '+l_tedad_kole_jabejaei.Caption+' �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� ��� ���� �� �� � �� �� ���� ����� �����';


              if  tedad_jozi_dar_koli<>0 then
                tedad_koli_magsad:=int(tedad_kol/tedad_jozi_dar_koli)
              else
                tedad_koli_magsad:=0;

                if  tedad_jozi_dar_koli<>0 then
                  tedad_koli_mabda:=int((Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat-tedad_kol)/ tedad_jozi_dar_koli)
                else
                  tedad_koli_mabda:=0;

                if  tedad_jozi_dar_koli<>0 then
                  tedad_jozi:=tedad_kol-(int(tedad_kol/tedad_jozi_dar_koli)*tedad_jozi_dar_koli)
                else
                  tedad_jozi:=tedad_kol;

         if tedad_jozi_dar_koli<>0 then
          t_k:=int(tedad_kol/tedad_jozi_dar_koli)
         else
          t_k:=0;

 //////////////////////////////////////////////////////////////////////////////////////////////////////////////

            frm_main.l_last_op.Caption:=' ���� ���� ��� '+DBText_name.Caption+' �� ����� ��� '+l_tedad_koli_jabejaei.Caption+' � ����� ���� '+l_tedad_jozi_jabejaei.Caption+
            ' ����� �� ����� �� '+l_tedad_kole_jabejaei.Caption;

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[0].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[2].Value:=Dmanbarexite.ADOanbarname2name.AsString;//@anbarname_mgsad nvarchar(30),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[3].Value:=Dmanbarexite.ADOanbarnamename.AsString;//@anbarname_mabda nvarchar(30),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[4].Value:=tedad_koli_magsad;//@tedad_koli_magsad float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[5].Value:=tedad_koli_mabda;//@tedad_koli_mabda  float,

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[6].Value:=l_tedad_kole_jabejaei.Caption;//@tedad_kole_jabejaei float,

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[7].Value:=tozihe_forosh;//@tozihe nvarchar(250),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[8].Value:=frm_main.l_last_op.Caption+' �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString;//@amaliat nvarchar(1000),


           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[9].Value:=Dmlistha.ADOlistanbarforoshcalaname.AsString;//@calaname	nvarchar(41),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[10].Value:=Dmlistha.ADOlistanbarforoshgeymatkharid.AsString;//@geymatkharid	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[11].Value:=Dmlistha.ADOlistanbarforoshgeymatforosh.AsString;//@geymatforosh	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[12].Value:=Dmlistha.ADOlistanbarforoshmolahezatgeymat.AsString;//@molahezatgeymat	nvarchar(251),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[13].Value:=L_code_cala.Caption;//@calacod	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[14].Value:=cod_jadid;//@calacod_jadid	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[15].Value:=Dmlistha.ADOlistanbarforoshtarikhedit.AsString;//@tarikhedit	nvarchar(12),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[16].Value:=Dmlistha.ADOlistanbarforoshvahed_koli.AsString;//@vahed_koli	nvarchar(31),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[17].Value:=Dmlistha.ADOlistanbarforoshgeymat_koli.AsString;//@geymat_koli 	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[18].Value:=Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString;//@tedad_jozi_da_koli	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[19].Value:=Dmlistha.ADOlistanbarforoshvahed_jozi.AsString;//@vahed_jozi	nvarchar(31),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[20].Value:=Dmlistha.ADOlistanbarforoshgeymat_koli.AsString;//@geymat_forosh_koli	 float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[21].Value:=Dmlistha.ADOlistanbarforoshbarcod.AsString;//@barcod	nvarchar(15),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[22].Value:=Dmlistha.ADOlistanbarforoshshakhs_sherkat.AsString;//@shakhs_sherkat	nvarchar(51),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[23].Value:=Dmlistha.ADOlistanbarforoshcode_sherkati.AsString;//@code_sherkati	nvarchar(11)

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[24].Value:=' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ��� �� �� ���� '+cod_jadid;//@tozihe_kho_az_anbar nvarchar(200),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[25].Value:=' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ��� �� �� ���� '+cod_jadid;//@tozihe_vo_be_anbar nvarchar(200),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[26].Value:='����� - �������';//@type_kh_az_anbar nvarchar(100),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[27].Value:='����� - �������';//@type_vo_be_anbar nvarchar(100),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[28].Value:=tedad_jozi;//@tedade_jozi float
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.Parameters[29].Value:=t_k;//@tedade_koli float

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_jadid.ExecProc;
 
            MessageBox(Handle,pchar('���� ���� ��� ����� ��'),'���� !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING); 
            {Dmanbarexite.ADOanbarcala.SQL.Text:='insert into Tanbar_jens_kolli( '+
            'calaname,tedadanbar,anbarname,'+
            'geymatkharid,geymatforosh,molahezatgeymat,'+
            'calacod,tarikhedit,molahezatforosh,'+
            'tedad_koli,vahed_koli,geymat_koli,'+
            'tedad_jozi_da_koli,vahed_jozi,'+
            'geymat_forosh_koli,barcod,shakhs_sherkat)'+
            ' values('+QuotedStr(Dmlistha.ADOlistanbarforoshcalaname.AsString)+','+l_tedad_kole_jabejaei.Caption+','+QuotedStr(Dmanbarexite.ADOanbarname2name.AsString)+
            ','+Dmlistha.ADOlistanbarforoshgeymatkharid.AsString+','+Dmlistha.ADOlistanbarforoshgeymatforosh.AsString+','+QuotedStr(Dmlistha.ADOlistanbarforoshmolahezatgeymat.AsString)+
            ','+cod_jadid+','+QuotedStr(Dmlistha.ADOlistanbarforoshtarikhedit.AsString)+','+QuotedStr(tozihe_forosh)+','+

            FloatToStr(tedad_koli_magsad)+


            ','+QuotedStr(Dmlistha.ADOlistanbarforoshvahed_koli.AsString)+','+Dmlistha.ADOlistanbarforoshgeymat_koli.AsString+

            ','+Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString+','+QuotedStr(Dmlistha.ADOlistanbarforoshvahed_jozi.AsString)+
            ','+Dmlistha.ADOlistanbarforoshgeymat_forosh_koli.AsString+','+QuotedStr(Dmlistha.ADOlistanbarforoshbarcod.AsString)+','+QuotedStr(Dmlistha.ADOlistanbarforoshshakhs_sherkat.AsString)+')';

            Dmanbarexite.ADOanbarcala.ExecSQL;




            Dmlistha.ADOlistanbarforosh.SQL.Text:='update Tanbar_jens_kolli set tedad_koli='+

            FloatToStr(tedad_koli_mabda)+

            ',tedadanbar=tedadanbar-'+l_tedad_kole_jabejaei.Caption+
            ' where anbarname='+QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+' and calacod='+L_code_cala.Caption;
            Dmlistha.ADOlistanbarforosh.ExecSQL; }

            Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
            QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+'order by calaname';
            Dmlistha.ADOlistanbarforosh.Open;


            Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
            QuotedStr(Dmanbarexite.ADOanbarname2name.AsString)+'order by calaname';
            Dmanbarexite.ADOanbarcala.Open;
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////

        end//////1
        else
        begin////////2
          s:=pchar('��� �� �� ���� �� ��� ���� ����� ���Ͽ');
          if MessageBox(Handle,s,'���� !',MB_YESNO or MB_ICONQUESTION or MB_RTLREADING or MB_RIGHT)=id_yes then
          begin///3
            cod_jadid:=Dmlistha.ADOlistanbarforoshcalacod.AsString;
            {insert_gozaresh_jabejaei_anbar_sabt_ba_code_gabl(cod_jadid);}
            tozihe_forosh:='��� �� ����� '+frm_main.L_tarikh.Caption+' �� ������ ' +l_tedad_koli_jabejaei.Caption+' ���� ��� � �� ����� '+
            l_tedad_jozi_jabejaei.Caption+' ���� ���� '+' ����� �� ����� �� '+l_tedad_kole_jabejaei.Caption+' �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� ��� ���� �� �� � �� ���� �� ���� ��� ����� ����� �����';

              if  tedad_jozi_dar_koli<>0 then
                tedad_koli_magsad:=int(tedad_kol/tedad_jozi_dar_koli)
              else
                tedad_koli_magsad:=0;

                if  tedad_jozi_dar_koli<>0 then
                  tedad_koli_mabda:=int((Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat-tedad_kol)/ tedad_jozi_dar_koli)
                else
                  tedad_koli_mabda:=0;

                if  tedad_jozi_dar_koli<>0 then
                  tedad_jozi:=tedad_kol-(int(tedad_kol/tedad_jozi_dar_koli)*tedad_jozi_dar_koli)
                else
                  tedad_jozi:=tedad_kol;

         if tedad_jozi_dar_koli<>0 then
          t_k:=int(tedad_kol/tedad_jozi_dar_koli)
         else
          t_k:=0;
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////
            frm_main.l_last_op.Caption:=' ���� ���� ��� '+DBText_name.Caption+' �� ����� ��� '+l_tedad_koli_jabejaei.Caption+' � ����� ���� '+l_tedad_jozi_jabejaei.Caption+
            ' ����� �� ����� �� '+l_tedad_kole_jabejaei.Caption;


           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[0].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[2].Value:=L_code_cala.Caption;//@calacod float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[3].Value:=Dmanbarexite.ADOanbarname2name.AsString;//@anbarname_mgsad nvarchar(30),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[4].Value:=Dmanbarexite.ADOanbarnamename.AsString;//@anbarname_mabda nvarchar(30),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[5].Value:=tedad_koli_magsad;//@tedad_koli_magsad float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[6].Value:=tedad_koli_mabda;//@tedad_koli_mabda  float,

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[7].Value:=l_tedad_kole_jabejaei.Caption;//@tedad_kole_jabejaei float,

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[8].Value:=tozihe_forosh;//@tozihe nvarchar(250),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[9].Value:=frm_main.l_last_op.Caption+' �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString;//@amaliat nvarchar(1000)

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[10].Value:=Dmlistha.ADOlistanbarforoshcalaname.AsString;//@calaname	nvarchar(41),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[11].Value:=Dmlistha.ADOlistanbarforoshgeymatkharid.AsString;//@geymatkharid	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[12].Value:=Dmlistha.ADOlistanbarforoshgeymatforosh.AsString;//@geymatforosh	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[13].Value:=Dmlistha.ADOlistanbarforoshmolahezatgeymat.AsString;//@molahezatgeymat	nvarchar(251),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[14].Value:=Dmlistha.ADOlistanbarforoshtarikhedit.AsString;//@tarikhedit	nvarchar(12),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[15].Value:=Dmlistha.ADOlistanbarforoshvahed_koli.AsString;//@vahed_koli	nvarchar(31),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[16].Value:=Dmlistha.ADOlistanbarforoshgeymat_koli.AsString;//@geymat_koli 	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[17].Value:=Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString;//@tedad_jozi_da_koli	float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[18].Value:=Dmlistha.ADOlistanbarforoshvahed_jozi.AsString;//@vahed_jozi	nvarchar(31),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[19].Value:=Dmlistha.ADOlistanbarforoshgeymat_koli.AsString;//@geymat_forosh_koli	 float,
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[20].Value:=Dmlistha.ADOlistanbarforoshbarcod.AsString;//@barcod	nvarchar(15),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[21].Value:=Dmlistha.ADOlistanbarforoshshakhs_sherkat.AsString;//@shakhs_sherkat	nvarchar(51),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[22].Value:=Dmlistha.ADOlistanbarforoshcode_sherkati.AsString;//@code_sherkati	nvarchar(11)

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[23].Value:=' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ��� �� �� ���� ��� '+l_code_cala.Caption;//@tozihe_kho_az_anbar nvarchar(200),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[24].Value:=' ���� ���� ��� �� ��� '+Dmanbarexite.ADOanbarnamename.AsString+' �� ��� '+Dmanbarexite.ADOanbarname2name.AsString+' � ��� �� �� ���� ��� '+l_code_cala.Caption;//@tozihe_vo_be_anbar nvarchar(200),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[25].Value:='����� - �������';//@type_kh_az_anbar nvarchar(100),
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[26].Value:='����� - �������';//@type_vo_be_anbar nvarchar(100),

           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[27].Value:=tedad_jozi;//@tedade_jozi float
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[28].Value:=t_k;//@tedade_koli float
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.Parameters[29].Value:=Dmlistha.ADOlistanbarforoshgeymatforosh_koli.AsString;//@geymatforosh_koli float
           DataM_sp.ADOStoredProc_ja_be_jaeie_jens_ba_code_feli.ExecProc;

            MessageBox(Handle,pchar('���� ���� ��� ����� ��'),'���� !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);

            {Dmanbarexite.ADOanbarcala.SQL.Text:='insert into Tanbar_jens_kolli( '+
            'calaname,tedadanbar,anbarname,'+
            'geymatkharid,geymatforosh,molahezatgeymat,'+
            'calacod,tarikhedit,molahezatforosh,'+
            'tedad_koli,vahed_koli,geymat_koli,'+
            'tedad_jozi_da_koli,vahed_jozi,'+
            'geymat_forosh_koli,barcod,shakhs_sherkat)'+
            ' values('+QuotedStr(Dmlistha.ADOlistanbarforoshcalaname.AsString)+','+l_tedad_kole_jabejaei.Caption+','+QuotedStr(Dmanbarexite.ADOanbarname2name.AsString)+
            ','+Dmlistha.ADOlistanbarforoshgeymatkharid.AsString+','+Dmlistha.ADOlistanbarforoshgeymatforosh.AsString+','+QuotedStr(Dmlistha.ADOlistanbarforoshmolahezatgeymat.AsString)+
            ','+cod_jadid+','+QuotedStr(Dmlistha.ADOlistanbarforoshtarikhedit.AsString)+','+QuotedStr(tozihe_forosh)+','+

            FloatToStr(tedad_koli_magsad)+


            ','+QuotedStr(Dmlistha.ADOlistanbarforoshvahed_koli.AsString)+','+Dmlistha.ADOlistanbarforoshgeymat_koli.AsString+

            ','+Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsString+','+QuotedStr(Dmlistha.ADOlistanbarforoshvahed_jozi.AsString)+
            ','+Dmlistha.ADOlistanbarforoshgeymat_forosh_koli.AsString+','+QuotedStr(Dmlistha.ADOlistanbarforoshbarcod.AsString)+','+QuotedStr(Dmlistha.ADOlistanbarforoshshakhs_sherkat.AsString)+')';

            Dmanbarexite.ADOanbarcala.ExecSQL;


            Dmlistha.ADOlistanbarforosh.SQL.Text:='update Tanbar_jens_kolli set tedad_koli='+

            FloatToStr(tedad_koli_mabda)+

            ',tedadanbar=tedadanbar-'+l_tedad_kole_jabejaei.Caption+
            ' where anbarname='+QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+' and calacod='+L_code_cala.Caption;
            Dmlistha.ADOlistanbarforosh.ExecSQL;}

            Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
            QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+'order by calaname';
            Dmlistha.ADOlistanbarforosh.Open;


            Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
            QuotedStr(Dmanbarexite.ADOanbarname2name.AsString)+'order by calaname';
            Dmanbarexite.ADOanbarcala.Open;

 //////////////////////////////////////////////////////////////////////////////////////////////////////////////
          end///3
          else
            MessageBox(Handle,pchar('���� ���� ��� ����� ���'),'���� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);

        end;///////2


end;
function Tfrm_jabejaei_second.check_exist_jens_ba_hamin_cod:boolean;
begin
  check_exist_jens_ba_hamin_cod:=false;
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where calacod='+Dmlistha.ADOlistanbarforoshcalacod.AsString+
  ' and  anbarname='+QuotedStr(Dmanbarexite.ADOanbarname2name.AsString);
  Dmanbarexite.ADOanbarcala.Open;

  if Dmanbarexite.ADOanbarcala.RecordCount>0 then
  begin
    tedad_kol_dar_magsad:=Dmanbarexite.ADOanbarcalatedadanbar.AsFloat;
    check_exist_jens_ba_hamin_cod:=true;
  end
  else
    tedad_kol_dar_magsad:=0;
end;


procedure Tfrm_jabejaei_second.FormShow(Sender: TObject);
begin
  Dmanbarexite.ADOanbarname2.SQL.Text:='select * from tanbar_names where name<>'+
  QuotedStr(Dmanbarexite.ADOanbarnamename.AsString)+' and  name<>'+QuotedStr('����� �����')+
  ' and name<>'+QuotedStr('����� ������')+' and name<>'+QuotedStr('����� ��������')+
  ' order by name';
  Dmanbarexite.ADOanbarname2.Open;

end;

procedure Tfrm_jabejaei_second.suibtaeedClick(Sender: TObject);
begin

if Dmanbarexite.ADOanbarname2.RecordCount<>0 then
  frm_ajnase_makane_magsad.ShowModal
else
    MessageBox(Handle,pchar('��� ���� �� ���� ���� ������ ���� ���'),'��� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;

procedure Tfrm_jabejaei_second.suibtaeed11Click(Sender: TObject);
begin
if Dmanbarexite.ADOanbarname2.RecordCount=0  then
    MessageBox(Handle,pchar('��� ���� �� ���� ���� ������ ���� ���'),'��� !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin
  if not check_exist_jens_ba_hamin_cod then
  begin
    jabejaei;
    frm_jabejaei_first.clear;
    close;
  end
  else
  begin
    update_tedad_jens_mojod_dar_magsad_ba_hamin_cod;
    frm_jabejaei_first.clear;    
    close;
  end;
end;
end;

end.
