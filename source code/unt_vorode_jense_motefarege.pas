unit unt_vorode_jense_motefarege;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, DBCtrls, StdCtrls, ExtCtrls, DB;

type
  Tfrm_vorode_jense_motefarege = class(TForm)
    GroupBox3: TGroupBox;
    l_jans_name: TLabel;
    Label1: TLabel;
    L_barcod: TLabel;
    RadioGroup_vahed_type: TRadioGroup;
    RadioGroup_jens_type: TRadioGroup;
    GroupBox_jens_anbar: TGroupBox;
    Button1: TButton;
    GroupBox_jozei: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    suiButton3: TsuiButton;
    suiButton2223: TsuiButton;
    GroupBox_koli: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Edit_g_vahed_koli: TEdit;
    Edit_tedad_vahed_koli: TEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    Edit_tedad_jozei_dar_koli: TEdit;
    GroupBox_jens_jadid: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    E_barcod: TEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    CheckBox1: TCheckBox;
    Label12: TLabel;
    e_code_sherkati: TEdit;
    CheckBox2: TCheckBox;
    l_vahed_koli: TLabel;
    L_vahed_jozi: TLabel;
    l_tedad_J_dar_k: TLabel;
    L_vahed_joji_jozi: TLabel;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    L_kharid_az: TLabel;
    procedure FormShow(Sender: TObject);
    procedure jens_type;
    procedure vahed_type;
    procedure Edit_g_vahed_koliKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_tedad_jozei_dar_koliKeyPress(Sender: TObject;
      var Key: Char);
    procedure Edit_tedad_vahed_koliKeyPress(Sender: TObject;
      var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton2223Click(Sender: TObject);
    procedure RadioGroup_jens_typeClick(Sender: TObject);
    procedure RadioGroup_vahed_typeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure E_barcodChange(Sender: TObject);
    function check(s:string):boolean;
    procedure clear;
    function check_param:boolean;
    procedure suiButton3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure get_public_parametr;
    procedure add_to_virtual_anbar;
    procedure CheckBox1Click(Sender: TObject);

    procedure insert_gozaresh_vorode_motefarege;
    procedure execute_vorode_motefarege_stored_procedure;
    procedure e_code_sherkatiChange(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);

  private
    { Private declarations }
  public
  tedad_koli,tedad_jozei,
  geymat_koli,vahed_koli,vahed_jozei,jens,geymat_jozei,t_j_dar_koli,type_:string;
    { Public declarations }
  end;

var
  frm_vorode_jense_motefarege: Tfrm_vorode_jense_motefarege;

implementation

uses Unt_sefaresh_jadid, Untdmlistha, unt_show_jens_baraye_entekhab_kharid,
  unt_add_jens_to_pishkharid,math, unt_pish_kharid, unt_datamodule1,
  untjens_kharid, unt_DataM_final, unt_entekhab_foroshande, unt_main,
  Unt_dmanbar, Untdmanbarexit, unt_DataM_sp, Untaddanbar;

  /// tedade jozi dar koli feli=4 gabli=6
  {$R *.dfm}
procedure Tfrm_vorode_jense_motefarege.execute_vorode_motefarege_stored_procedure;
var time_,shakhs_sherkat:string;
    i:integer;
    t_k,g_k,t_j_d_k:real;
begin
    time_:=frm_main.LMDClock1.Digital.Caption;

    if tedad_koli='' then
      t_k:=0
    else
      t_k:=StrToFloat(tedad_koli);

      if geymat_koli='' then
        g_k:=0
      else
        g_k:=StrToFloat(geymat_koli);

      if t_j_dar_koli='' then
        t_j_d_k:=0
      else
        t_j_d_k:=StrToFloat(t_j_dar_koli);

    frm_main.l_last_op.Caption:=' Ê—Êœ Ã‰” '+jens+' »Â «‰»«— „Ã«“Ì »Â ’Ê—  À»  „ÊÃÊœÌ ﬁ»·Ì ';

    shakhs_sherkat:=L_kharid_az.Caption;

    {i:=StrLen(pchar(shakhs_sherkat));
    if (i<=49) and (shakhs_sherkat[i]<>'*') then
      shakhs_sherkat:=shakhs_sherkat+'*'; }

    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[0].Value:=time_;;//@time nvarchar(10),
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[1].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[2].Value:=g_k;//@geymat_koli float,
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[3].Value:=geymat_jozei;//@geymat float,
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[4].Value:=E_barcod.Text;//@barcod nvarchar(15),
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[5].Value:=shakhs_sherkat;//@shakhs_sherkat nvarchar(50),


    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[6].Value:=jens;//@jens nvarchar(40),
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[7].Value:=tedad_jozei;//@tedad float,
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[8].Value:=0;//@calacod float,
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[9].Value:=vahed_koli;//@vahed_koli nvarchar(30),
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[10].Value:=vahed_jozei;//@vahed_jozei nvarchar(30),
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[11].Value:=t_k;//@tedad_koli float,
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[12].Value:=t_j_d_k;//@tedad_jozi_dar_koli float,
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[13].Value:=0;//@sh_factor float,
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[14].Value:=tedad_jozei;//@tedad_kol float,
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[15].Value:=' Ê—Êœ Ã‰” „ÊÃÊœ «“ ﬁ»· »Â «‰»«— „Ã«“Ì ';//@tozih nvarchar(200),
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[16].Value:=e_code_sherkati.Text;//@code_sherkati nvarchar(10),
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[17].Value:='«‰»«— „Ã«“Ì';//@anbarname nvarchar(30),
    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[18].Value:='Ê—ÊœÌ - Ã‰” „ÊÃÊœ «“ ﬁ»·';//@type nvarchar(100),

    DataM_sp.ADOStoredProc_vorode_motefarege.Parameters[19].Value:=frm_main.l_last_op.Caption;//@amaliat nvarchar(1000)
    DataM_sp.ADOStoredProc_vorode_motefarege.ExecProc;

end;

/////////////

procedure Tfrm_vorode_jense_motefarege.insert_gozaresh_vorode_motefarege;
var time_:string;
begin

    time_:=frm_main.LMDClock1.Digital.Caption;
   //////////// khoroji //////////////
    Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='insert into T_gozaresh_vorod_va_khoroje_anbar'+
    '(jens,tedad,calacod,vahed_koli,vahed_jozei'+
    ',tedad_koli,tedad_jozi_dar_koli,sh_factor'+
    ',tedad_kol,tozih,tarikh,barcod,code_sherkati'+
    ',anbarname,time_,type_)'+

    ' values('+
    QuotedStr(DataM_final.ADOQuery_pish_kharidjens.AsString)+','+
    DataM_final.ADOQuery_pish_kharidteded_jozi.AsString+','+
    inttostr(0)+','+
    QuotedStr(DataM_final.ADOQuery_pish_kharidvahed_koli.AsString)+','+
    QuotedStr(DataM_final.ADOQuery_pish_kharidvahed_jozei.AsString)+','+

    DataM_final.ADOQuery_pish_kharidtedad_koli.AsString+','+
    DataM_final.ADOQuery_pish_kharidtedad_jozi_dar_koli.AsString+','+
    intToStr(0)+','+

    DataM_final.ADOQuery_pish_kharidtedad.AsString+','+


    QuotedStr(' Ê—Êœ Ã‰” „ÊÃÊœ «“ ﬁ»· »Â «‰»«— „Ã«“Ì ')+','+
    QuotedStr(frm_main.L_tarikh.Caption)+','+
    QuotedStr(DataM_final.ADOQuery_pish_kharidbarcod.AsString)+','+
    QuotedStr(DataM_final.ADOQuery_pish_kharidcode_sherkati.AsString)+','+

    QuotedStr('«‰»«— „Ã«“Ì')+','+
    QuotedStr(time_)+','+
    QuotedStr('Ê—ÊœÌ - Ã‰” „ÊÃÊœ «“ ﬁ»·')+
    ')';

    Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;

    //////////////////////////////////////
end;

procedure Tfrm_vorode_jense_motefarege.add_to_virtual_anbar;
var   cala,g_kharid,g_forosh,molahezat,
      g_kharid_koli,g_forosh_koli,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_da_koli,barcod,shakhs_sherkat,code_sherkati:string;
      i,j,tedad:integer;
begin
   DataM_final.ADOQuery_pish_kharid.SQL.Text:='select * from t_kharid_temp';
   DataM_final.ADOQuery_pish_kharid.Open;


 shakhs_sherkat:=L_kharid_az.Caption;

 i:=StrLen(pchar(shakhs_sherkat));
 if (i<=49) and (shakhs_sherkat[i]<>'*') then
 begin
  //if not CheckBox1.Checked then
    shakhs_sherkat:=shakhs_sherkat+'*';
 end;


 {if StrLen(pchar(shakhs_sherkat))<=30 then
 begin
  if not CheckBox1.Checked then
    shakhs_sherkat:=shakhs_sherkat+' - „ÊÃÊœ «“ ﬁ»·';
 end
 else
 begin
  if not CheckBox1.Checked then
    shakhs_sherkat:=shakhs_sherkat+'*'; 
 end;}


 DataM_final.ADOQuery_pish_kharid.First;

   while not(DataM_final.ADOQuery_pish_kharid.Eof) do
   begin
      tedad:=DataM_final.ADOQuery_pish_kharidtedad.AsInteger;
      cala:=DataM_final.ADOQuery_pish_kharidjens.AsString;
      g_kharid:=DataM_final.ADOQuery_pish_kharidgheymat.AsString;
      g_forosh:=DataM_final.ADOQuery_pish_kharidgeymat_jadid.AsString;
      g_kharid_koli:=DataM_final.ADOQuery_pish_kharidgeymat_koli.AsString;
      g_forosh_koli:=g_kharid_koli;
      tedad_koli:=DataM_final.ADOQuery_pish_kharidtedad_koli.AsString;
      tedad_jozi_da_koli:=DataM_final.ADOQuery_pish_kharidtedad_jozi_dar_koli.AsString;
      vahed_koli:=DataM_final.ADOQuery_pish_kharidvahed_koli.AsString;
      vahed_jozei:=DataM_final.ADOQuery_pish_kharidvahed_jozei.AsString;
      barcod:=DataM_final.ADOQuery_pish_kharidbarcod.AsString;
      code_sherkati:=DataM_final.ADOQuery_pish_kharidcode_sherkati.AsString;
      molahezat:='Ã‰” œ— «‰»«— „Ã«“Ì ﬁ—«— œ«—œ';


     Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='insert into T_anbar_majazi(calacod,sh_factor,tarikh,tedad_koli,vahed_koli,geymat_koli,tedad_jozi_da_koli,vahed_jozi,geymat_forosh_koli'+
     ',calaname,tedadanbar,anbarname,geymatkharid,geymatforosh,molahezatforosh,barcod,shakhs_sherkat,code_sherkati)' +
     'values('+inttostr(0)+','+inttostr(0)+','+QuotedStr(frm_main.L_tarikh.Caption)+','+
     QuotedStr(tedad_koli)+','+QuotedStr(vahed_koli)+','+QuotedStr(g_kharid_koli)+','+QuotedStr(tedad_jozi_da_koli)+','+QuotedStr(vahed_jozei)+','+QuotedStr(g_forosh_koli)+
     ','+QuotedStr(cala)+','+IntToStr(tedad)+','+QuotedStr('«‰»«— „Ã«“Ì')+
     ','+QuotedStr(g_kharid)+','+QuotedStr(g_forosh)+','+QuotedStr(molahezat)+','+QuotedStr(barcod)+','+QuotedStr(shakhs_sherkat)+','+QuotedStr(code_sherkati)+')';
     Dmlistha.ADOQuery_anbar_majazi.ExecSQL;
     DataM_final.ADOQuery_pish_kharid.Next;
  end;
end;


procedure Tfrm_vorode_jense_motefarege.get_public_parametr;
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

       temp:=RoundTo(StrToFloat(geymat_koli) / StrToFloat(t),-1);

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


function Tfrm_vorode_jense_motefarege.check_param:boolean;
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
     if (trim(l_jans_name.Caption)='')or(trim(l_jans_name.Caption)='Ã‰” «‰ Œ«» ‰‘œÂ') then
       st:=' ‰«„ Ã‰” ';
       check_param:=false;
   end
   else
     begin
       if (trim(l_jans_name.Caption)='')or(trim(l_jans_name.Caption)='Ã‰” «‰ Œ«» ‰‘œÂ') then
        begin
          st:=' ‰«„ Ã‰” ';
          check_param:=false;
        end;
     end;

 {if L_kharid_az.Caption='' then

          begin
           st:=st+' ‰«„ ›—Ê‘‰œÂ Ã‰” ';
           check_param:=false;
          end; }

   if RadioGroup_vahed_type.ItemIndex=0 then
   begin
      if RadioGroup_jens_type.ItemIndex=1 then
      begin
        if DBLookupComboBox4.Text='' then
          begin
           st:=st+' Ê«Õœ ò·Ì Ã‰” ';
           check_param:=false;
          end;

        if DBLookupComboBox3.Text='' then
         begin
            st:=st+' Ê«Õœ Ã“∆Ì Ã‰” ';
            check_param:=false;
         end;
         
        if StrToFloat(Edit_tedad_jozei_dar_koli.Text)=0 then
          begin
            st:=st+' ⁄œ«œ Ê«Õœ Ã“∆Ì œ— Ê«Õœ ò·Ì °';
            check_param:=false;
          end;
      end;

      if RadioGroup_jens_type.ItemIndex=0 then
      begin
        if l_vahed_koli.Caption='' then
          begin
           st:=st+' Ê«Õœ ò·Ì Ã‰” ';
           check_param:=false;
          end;

        if L_vahed_jozi.Caption='' then
         begin
            st:=st+' Ê«Õœ Ã“∆Ì Ã‰” ';
            check_param:=false;
         end;
         
        if (l_tedad_J_dar_k.Caption='0')or(l_tedad_J_dar_k.Caption='') then
          begin
            st:=st+' ⁄œ«œ Ê«Õœ Ã“∆Ì œ— Ê«Õœ ò·Ì °';
            check_param:=false;
          end;
      end;

      if Edit_g_vahed_koli.Text='' then
        begin
          st:=st+'ﬁÌ„  Ê«Õœ ò·Ì Ã‰” ';
          check_param:=false;
        end;

      if StrToFloat(Edit_g_vahed_koli.Text)=0 then
        begin
          st:=st+' ﬁÌ„  Ê«Õœ ò·Ì Ã‰” ';
          check_param:=false;
        end;
      if StrToFloat(Edit_tedad_vahed_koli.Text)=0 then
        begin
          st:=st+' ⁄œ«œ Ê«Õœ ò·Ì Ã‰”  ';
          check_param:=false;
        end;

      st:=st+'—« Ê«—œ ‰„«ÌÌœ';
   end;

   if RadioGroup_vahed_type.ItemIndex=1 then
   begin
       if RadioGroup_jens_type.ItemIndex=1 then
       begin
        if DBLookupComboBox2.Text='' then
          begin
            st:=st+'Ê«Õœ Ã“∆Ì Ã‰” ';
            check_param:=false;
          end;
       end;

       if RadioGroup_jens_type.ItemIndex=0 then
       begin
        if L_vahed_joji_jozi.Caption='' then
          begin
            st:=st+'Ê«Õœ Ã“∆Ì Ã‰” ';
            check_param:=false;
          end;
       end;

       if StrToFloat(Edit3.Text)=0 then
          begin
            st:=st+' ﬁÌ„  Â— Ê«Õœ Ã“∆Ì ';
            check_param:=false;
          end;
       if StrToFloat(Edit2.Text)=0 then
         begin
            st:=st+'  ⁄œ«œ Ã‰” Ã“∆Ì ';
            check_param:=false;
         end;
       st:=st+'—« Ê«—œ ‰„«ÌÌœ';
   end;

  if  st<>'—« Ê«—œ ‰„«ÌÌœ' then
  begin
     check_param:=false;
     s:=pchar(st);
    MessageBox(Handle,s,'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
  end
  else
  begin
    check_param:=true;
    Exit;
  end;
end;

procedure Tfrm_vorode_jense_motefarege.clear;
begin
    l_jans_name.Caption:='Ã‰” «‰ Œ«» ‰‘œÂ';

    L_vahed_joji_jozi.Caption:='';
    L_kharid_az.Caption:='';

    l_vahed_koli.Caption:='';
    L_vahed_joji_jozi.Caption:='';

    Edit_g_vahed_koli.Text:='';
    Edit1.Text:='';
    Edit2.Text:='';
    Edit3.Text:='';
    Edit_tedad_vahed_koli.Text:='';
    Edit_tedad_jozei_dar_koli.Text:='';
    e_code_sherkati.Clear;

    RadioGroup1.ItemIndex:=0;
    RadioGroup_jens_type.ItemIndex:=0;
    jens_type;
    RadioGroup_vahed_type.ItemIndex:=0;
    vahed_type;

    L_barcod.Caption:='';
    Edit2.Text:='';
    Edit1.Text:='';
    Edit3.Text:='';    
end;

function Tfrm_vorode_jense_motefarege.check(s:string):boolean;
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
       MessageBox(Handle,'⁄·«„  ‰ﬁÿÂ «⁄‘«—Ì ›ﬁÿ Ìò »«— »«Ìœ Ê«—œ ‘Êœ.',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
       check:=false;
     end;
end;


procedure Tfrm_vorode_jense_motefarege.vahed_type;
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

procedure Tfrm_vorode_jense_motefarege.jens_type;
begin
   if RadioGroup_jens_type.ItemIndex=0 then
   begin
     GroupBox_jens_anbar.Visible:=true;
     GroupBox_jens_jadid.Visible:=false;
     l_jans_name.Caption:='Ã‰” «‰ Œ«» ‰‘œÂ';
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
     GroupBox_jens_jadid.Visible:=true;
     E_barcod.Text:='';
     E_barcod.SetFocus;
     Edit1.Text:='';
     l_jans_name.Caption:='Ã‰” «‰ Œ«» ‰‘œÂ';

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

procedure Tfrm_vorode_jense_motefarege.FormShow(Sender: TObject);
begin
  //L_kharid_az.Caption:='„ ›—ﬁÂ';

  //L_kharid_az.Caption:='„ÊÃÊœ «“ ﬁ»·';

  RadioGroup1.ItemIndex:=0;
  L_kharid_az.Caption:='';

  {checkBox1.Checked;
  CheckBox2.Checked; }

  Frm_sefaresh_jadid.showjens;

 Dmlistha.ADOQuery_vahed.SQL.Text:='select * from t_vahed order by vahed';
 Dmlistha.ADOQuery_vahed.Open;

  clear;

end;

procedure Tfrm_vorode_jense_motefarege.Edit_g_vahed_koliKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_vorode_jense_motefarege.Edit_tedad_jozei_dar_koliKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_vorode_jense_motefarege.Edit_tedad_vahed_koliKeyPress(
  Sender: TObject; var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_vorode_jense_motefarege.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_vorode_jense_motefarege.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_vorode_jense_motefarege.suiButton2223Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_vorode_jense_motefarege.RadioGroup_jens_typeClick(
  Sender: TObject);
begin
  jens_type;
end;

procedure Tfrm_vorode_jense_motefarege.RadioGroup_vahed_typeClick(
  Sender: TObject);
begin
  vahed_type;
end;

procedure Tfrm_vorode_jense_motefarege.Button1Click(Sender: TObject);
begin
  frm_show_jens_baraye_entekhab_kharid.ShowModal;
end;

procedure Tfrm_vorode_jense_motefarege.E_barcodChange(Sender: TObject);
begin
L_barcod.Caption:=E_barcod.Text;
end;

procedure Tfrm_vorode_jense_motefarege.suiButton3Click(Sender: TObject);
begin
if (check(Edit2.Text)) then
begin
  if check_param then
  begin
    get_public_parametr;
    execute_vorode_motefarege_stored_procedure;

    Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='select * from t_anbar_majazi';;
    Dmlistha.ADOQuery_anbar_majazi.Open;

    frmaddanbar.type_:='eftetahie';
      
    frmaddanbar.update_record_and_insert_to_kolli('«‰»«— «›  «ÕÌÂ');

 end;
end;
end;

procedure Tfrm_vorode_jense_motefarege.Edit1Change(Sender: TObject);
begin
 l_jans_name.Caption:=Edit1.Text;
end;

procedure Tfrm_vorode_jense_motefarege.CheckBox1Click(Sender: TObject);
begin
 {if CheckBox1.Checked then
  L_kharid_az.Caption:='„ÊÃÊœ «“ ﬁ»·'
 else
 if L_kharid_az.Caption='„ÊÃÊœ «“ ﬁ»·' then
  L_kharid_az.Caption:=''; }

end;

procedure Tfrm_vorode_jense_motefarege.e_code_sherkatiChange(
  Sender: TObject);
begin
  e_code_sherkati.Text:=UpperCase(e_code_sherkati.Text);
end;

procedure Tfrm_vorode_jense_motefarege.CheckBox2Click(Sender: TObject);
begin
 {if not CheckBox2.Checked then
    L_kharid_az.Caption:='„ÊÃÊœ «“ ﬁ»·';}
end;

procedure Tfrm_vorode_jense_motefarege.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then
     L_kharid_az.Caption:='';

 if RadioGroup1.ItemIndex=1 then
     frm_entekhab_foroshande.ShowModal;
end;

end.
