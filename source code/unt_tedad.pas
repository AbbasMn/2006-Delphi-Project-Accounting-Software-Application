unit unt_tedad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, SUIButton;

type
  Tfrm_tedad = class(TForm)
    l_ghaza: TLabel;
    l_type: TLabel;
    l_barcod: TLabel;
    GroupBox_koli: TGroupBox;
    Label1: TLabel;
    Edit_koli_tedadkoli: TEdit;
    GroupBox_jozi: TGroupBox;
    GroupBox_koli_jozi: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Edit_ko_jozi_tedadkoli: TEdit;
    Edit_ko_jozi_tedadjozi: TEdit;
    Label2: TLabel;
    Edit_jozi_tedadjozi: TEdit;
    RadioGroup_jens_type: TRadioGroup;
    suibtaeed1: TsuiButton;
    Rg_geymat: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure Edit_jozi_tedadjoziKeyPress(Sender: TObject; var Key: Char);

    function check_tedad:boolean;

     function insert_pish_forosh:boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure RadioGroup_jens_typeClick(Sender: TObject);
    procedure forosh_type;
    function check_param:boolean;
    function check_tedad_:boolean;
    procedure suibtaeed1Click(Sender: TObject);
    procedure Edit_ko_jozi_tedadjoziKeyPress(Sender: TObject;
      var Key: Char);
    procedure Edit_ko_jozi_tedadkoliKeyPress(Sender: TObject;
      var Key: Char);
    procedure Edit_koli_tedadkoliKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_koli_tedadkoliChange(Sender: TObject);
    procedure Edit_jozi_tedadjoziChange(Sender: TObject);
    procedure Edit_ko_jozi_tedadkoliChange(Sender: TObject);
    procedure Edit_ko_jozi_tedadjoziChange(Sender: TObject);
    procedure Rg_geymatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tedad: Tfrm_tedad;

implementation

uses Untdmanbarexit, Untviewanbar, Unt_DataModule_gozaresh_tarkibi,
  unt_datamodule1, unt_forosh_property, unt_forosh_fishi, unt_pish_forosh,
  DB;

{$R *.dfm}
function Tfrm_tedad.check_tedad_:boolean;
var num :real;
begin
  check_tedad_:=true;

  if RadioGroup_jens_type.ItemIndex=0 then
  begin
    if Dmanbarexite.ADOanbarcala.Fields[10].AsFloat<=0 then
     begin
        check_tedad_:=false;
        MessageBox(Handle,' ⁄œ«œ ò·Ì Ã‰” «‰ Œ«» ‘œÂ œ— «‰»«— ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_koli_tedadkoli.Text:='';
     end
     else
     begin
         num:=Dmanbarexite.ADOanbarcala.Fields[10].AsFloat-StrTofloat(Edit_koli_tedadkoli.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,pchar(' ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ »Ì‘ — «“ „ﬁœ«— ò·Ì „ÊÃÊœ = '+Dmanbarexite.ADOanbarcala.Fields[10].AsString+' œ— „ò«‰ «‰ Œ«»Ì  „Ì»«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad_:=false;
            Edit_koli_tedadkoli.Text:='';
           end;
     end;
  end;

  if RadioGroup_jens_type.ItemIndex=1 then
  begin
  if frm_viewanbar.alamat_ashar(Edit_jozi_tedadjozi.Text) then
  begin
     if Dmanbarexite.ADOanbarcala.Fields[1].AsFloat<=0 then
     begin
        check_tedad_:=false;
        MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_jozi_tedadjozi.Text:='';
     end
     else
     begin

          num:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat-StrTofloat(Edit_jozi_tedadjozi.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,pchar('  ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ Ã‰” »Â ’Ê—  Ã“∆Ì »Ì‘ — «“ „ﬁœ«— Ã“∆Ì „ÊÃÊœ œ— „ò«‰ «‰ Œ«»Ì = '+Dmanbarexite.ADOanbarcala.Fields[1].AsString+' „Ì »«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad_:=false;
            Edit_jozi_tedadjozi.Text:='';
           end;

      end;
  end
  else
    begin
       check_tedad_:=false;
       Edit_jozi_tedadjozi.Text:='';
    end;
  end;

  if RadioGroup_jens_type.ItemIndex=2 then
  begin
  if frm_viewanbar.alamat_ashar(Edit_ko_jozi_tedadjozi.Text) then
  begin
    if Dmanbarexite.ADOanbarcala.Fields[1].AsFloat<=0 then
     begin
        check_tedad_:=false;
        MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì  ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_ko_jozi_tedadjozi.Text:='';
     end
     else
     begin
         num:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat-StrToFloat(Edit_ko_jozi_tedadjozi.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,pchar('  ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ Ã‰” »Â ’Ê—  Ã“∆Ì »Ì‘ — «“ „ﬁœ«— Ã“∆Ì „ÊÃÊœ œ— „ò«‰ «‰ Œ«»Ì = '+Dmanbarexite.ADOanbarcala.Fields[1].AsString+' „Ì »«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad_:=false;
            Edit_ko_jozi_tedadjozi.Text:='';
           end;
     end;
   end
     else
     begin
       Edit_ko_jozi_tedadjozi.Text:='';
       check_tedad_:=false;
     end;

    if Dmanbarexite.ADOanbarcala.Fields[10].AsFloat<=0 then
     begin
        check_tedad_:=false;
        MessageBox(Handle,' ⁄œ«œ ò·Ì Ã‰” «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì  ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_ko_jozi_tedadkoli.Text:='';
     end
     else
     begin
         num:=Dmanbarexite.ADOanbarcala.Fields[10].AsFloat-StrTofloat(Edit_ko_jozi_tedadkoli.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,pchar(' ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ »Ì‘ — «“ „ﬁœ«— ò·Ì „ÊÃÊœ = '+Dmanbarexite.ADOanbarcala.Fields[10].AsString+' œ— „ò«‰ «‰ Œ«»Ì  „Ì»«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad_:=false;
            Edit_ko_jozi_tedadkoli.Text:='';
           end;
     end;

     if Edit_ko_jozi_tedadkoli.Text='' then
        Edit_ko_jozi_tedadkoli.Text:='0';

     if Edit_ko_jozi_tedadjozi.Text='' then
        Edit_ko_jozi_tedadjozi.Text:='0';

    if (StrTofloat(Edit_ko_jozi_tedadkoli.Text)*Dmanbarexite.ADOanbarcala.Fields[13].Asfloat+ StrTofloat(Edit_ko_jozi_tedadjozi.Text) > Dmanbarexite.ADOanbarcala.Fields[1].AsFloat) then
      begin
            MessageBox(Handle,pchar('  ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ Ã‰” »Â ’Ê—  Ã“∆Ì  Ê ò·Ì »Ì‘ — «“ „ﬁœ«— Ã“∆Ì „ÊÃÊœ œ— „ò«‰ «‰ Œ«»Ì = '+Dmanbarexite.ADOanbarcala.Fields[1].AsString+' „Ì »«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad_:=false;
            Edit_ko_jozi_tedadjozi.Text:='' ;
            Edit_ko_jozi_tedadkoli.Text:='';
      end;
  end;


  end;
////////////////
function Tfrm_tedad.check_param:boolean;
var i,j:integer;
    s:string;
    val,val2:real;     
begin
   check_param:=true;
   if RadioGroup_jens_type.ItemIndex=0 then
   begin
     if trim(Edit_koli_tedadkoli.Text)='' then
      val:=0
     else
      val:=StrToFloat(trim(Edit_koli_tedadkoli.Text));

     if val=0 then
      begin
         {check_param:=false;
         MessageBox(Handle,' ⁄œ«œ Ã‰” ò·Ì —« Ê«—œ ‰„«ÌÌœ .',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
         exit; }
         close;
      end;
   end;


   if RadioGroup_jens_type.ItemIndex=1 then
   begin
     if trim(Edit_jozi_tedadjozi.Text)='' then
      val:=0
     else
      val:=StrToFloat(trim(Edit_jozi_tedadjozi.Text));

      if val=0 then
      begin
         check_param:=false;
         MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì —« Ê«—œ ‰„«ÌÌœ .',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
         exit;
      end;


      if Dmanbarexite.ADOanbarcalavahed_koli.AsString<>'' then
      begin
        s:=Edit_jozi_tedadjozi.Text;
        for i:=1 to StrLen(PChar(s)) do
        begin
          if s[i]='.' then
            j:=j+1;
        end;
        if j>=1 then
        begin
          check_param:=false;
          MessageBox(Handle,'çÊ‰ Ã‰” œ«—Ì Ê«Õœ ò·Ì „Ì »«‘œ Ê«—œ ‰„Êœ‰ ⁄œœ «⁄‘«—Ì »—«Ì  ⁄œ«œ Ã“∆Ì Ã‰” „Ã«“ ‰„Ì »«‘œ.',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
          exit;
        end;
      end;
   end;

   if RadioGroup_jens_type.ItemIndex=2 then
   begin
     if trim(Edit_ko_jozi_tedadkoli.Text)='' then
      val:=0
     else
      val:=StrToFloat(trim(Edit_ko_jozi_tedadkoli.Text));

     if trim(Edit_ko_jozi_tedadjozi.Text)='' then
      val2:=0
     else
      val2:=StrToFloat(trim(Edit_ko_jozi_tedadjozi.Text));


      if (val=0) or(val2=0) then
      begin
         check_param:=false;
         MessageBox(Handle,' ⁄œ«œ Ã‰” ò·Ì Ê  ⁄œ«œ Ã‰” Ã“∆Ì —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
         Edit_ko_jozi_tedadkoli.SetFocus;
         exit;
      end;
   end;
end;



///////////////////////
procedure Tfrm_tedad.forosh_type;
begin
  if ((RadioGroup_jens_type.ItemIndex=0)or (RadioGroup_jens_type.ItemIndex=2))and(Dmanbarexite.ADOanbarcalavahed_koli.AsString='') then
  begin
    GroupBox_koli.Visible:=false;
    GroupBox_jozi.Visible:=true;
    GroupBox_koli_jozi.Visible:=false;
    Edit_jozi_tedadjozi.SetFocus;
    RadioGroup_jens_type.ItemIndex:=1;  
    exit;
  end;

  if RadioGroup_jens_type.ItemIndex=0 then
  begin
   if Dmanbarexite.ADOanbarcalavahed_koli.AsString<>'' then
   begin
    GroupBox_koli.Visible:=true;
    GroupBox_jozi.Visible:=false;
    GroupBox_koli_jozi.Visible:=false;
    Edit_koli_tedadkoli.SetFocus;
   end;
  end;

  if RadioGroup_jens_type.ItemIndex=1 then
  begin
    GroupBox_koli.Visible:=false;
    GroupBox_jozi.Visible:=true;
    GroupBox_koli_jozi.Visible:=false;
    Edit_jozi_tedadjozi.SetFocus;
  end;

  if RadioGroup_jens_type.ItemIndex=2 then
  begin
   if Dmanbarexite.ADOanbarcalavahed_koli.AsString<>'' then
   begin
    GroupBox_koli.Visible:=false;
    GroupBox_jozi.Visible:=false;
    GroupBox_koli_jozi.Visible:=true;
    Edit_ko_jozi_tedadkoli.SetFocus;
   end;
  end;
end;
/////////////
 function Tfrm_tedad.insert_pish_forosh:boolean;
var stcommand_insert,update_tasfie,barcod,calacalacod,anbarname,calaname,geymat_kharid,olaviat:String;
   tedad_koli_bealave_jozi,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_dar_koli,geymat_koli,geymat_kol_forosh_jens,tedad_jozi,geymat_jozi:string;
   s:pchar;
begin
   insert_pish_forosh:=true;

  if frm_tedad.l_type.Caption='chelo' then
  begin
    vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

    geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

    vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;

    if Rg_geymat.ItemIndex=0 then
      geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh.AsString
    else
      geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh_koli.AsString;


    calacalacod:=Dmanbarexite.ADOanbarcalacalacod.AsString;

    anbarname:=Dmanbarexite.ADOanbarcalaanbarname.AsString;
  end;







    // geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));

  if frm_tedad.l_type.Caption='chelo' then
  begin
    calacalacod:=Dmanbarexite.ADOanbarcalacalacod.AsString;
  end;


  ///////////////////////////////////////////////////////////////////////////////////////////

 if RadioGroup_jens_type.ItemIndex=0 then
 begin
    if vahed_koli<>'' then
    begin
      tedad_koli:=trim(Edit_koli_tedadkoli.text);
      tedad_koli_bealave_jozi:=floatToStr(StrTofloat(tedad_koli)*StrTofloat(tedad_jozi_dar_koli));
      geymat_koli:=Dmanbarexite.ADOanbarcala.Fields[15].AsString;
      geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));
      tedad_jozi:='0';
    end
    else
    begin
    end;




 end;

  if RadioGroup_jens_type.ItemIndex=1 then
 begin
     vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

     geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

    if vahed_koli<>'' then
      tedad_koli:=FloatToStr(int(StrToFloat(Edit_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli)))
    else
      tedad_koli:='0';

     vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;


     //////
    if vahed_koli<>'' then
      tedad_koli:=FloatToStr(int(StrToFloat(Edit_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli)))
    else
      tedad_koli:='0';


     if vahed_koli='' then
     begin
      tedad_jozi:=Edit_jozi_tedadjozi.Text;
      tedad_koli_bealave_jozi:=Edit_jozi_tedadjozi.Text;
     end
     else
     begin
      tedad_jozi:=FloatToStr(StrToFloat(Edit_jozi_tedadjozi.Text)-(StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_koli));
      tedad_koli_bealave_jozi:=Edit_jozi_tedadjozi.Text;
     end;

     //////



    if Rg_geymat.ItemIndex=0 then
      geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh.AsString
    else
      geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh_koli.AsString;

     geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));

 end;

  if RadioGroup_jens_type.ItemIndex=2 then
 begin
     vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

     geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

     tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

     tedad_koli:=FloatToStr(StrToFloat(Edit_ko_jozi_tedadkoli.Text));

     tedad_koli:=FloatToStr(StrToFloat(tedad_koli)+int(StrToFloat(Edit_ko_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli)));



     vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;

     tedad_jozi:=FloatToStr(StrToFloat(Edit_ko_jozi_tedadjozi.Text)-(int(StrToFloat(Edit_ko_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_jozi_dar_koli)));

    if Rg_geymat.ItemIndex=0 then
      geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh.AsString
    else
      geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh_koli.AsString;

     tedad_koli_bealave_jozi:=FloatToStr((StrToFloat(tedad_koli)*StrToFloat(tedad_jozi_dar_koli))+StrToFloat(tedad_jozi));

     geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));
 end;

  ///////////////////////////////////////////////////////////////////////////////////////////
   
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='select * from forosh_temp where calacod='+calacalacod+
   ' and anbarname=';

   if frm_tedad.l_type.Caption='chelo' then
    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:=DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text+QuotedStr(Dmanbarexite.ADOanbarcalaanbarname.AsString);

    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Open;

if DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.RecordCount>0 then
begin
  if frm_tedad.l_type.Caption='chelo' then
  begin
    if  (DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad.AsFloat+StrToFloat(tedad_jozi))>Dmanbarexite.ADOanbarcalatedadanbar.AsFloat then
      begin
       Edit_jozi_tedadjozi.Clear;
       if l_barcod.Caption<>'yes' then
        Edit_jozi_tedadjozi.SetFocus;

         Frm_pish_forosh.show_pish_forosh;
         frm_forosh_fishi.mohasebe_geymat_kol;
         frm_forosh_fishi.bede_talab_temp_check_forosh;

        MessageBox(Handle,'<<  ⁄œ«œ Ê«—œ ‘œÂ Ã‰” (€Ì—Â) +  ⁄œ«œ Ã‰”Ì (€Ì—Â) «‰ Œ«» ‘œÂ »—«Ì ›—Ê‘ >> «“  ⁄œ«œ „ÊÃÊœ  »Ì‘ — „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        exit;
      end;
  end;


/////////////////////////////////////////////////////////////////////




    stcommand_insert:='';
    /////////

   tedad_jozi:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)+DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad.AsFloat);

    /////////////////

    if vahed_koli<>'' then
    begin
      tedad_koli:=FloatToStr(int((DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_kol.AsFloat+StrToFloat(tedad_koli_bealave_jozi))/StrToFloat(tedad_jozi_dar_koli)));
      tedad_jozi:=FloatToStr(StrToFloat(tedad_jozi)-(StrToFloat(tedad_koli)-DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_koli.AsFloat)*StrToFloat(tedad_jozi_dar_koli));
    end
    else
    begin
      //tedad_koli:='0';
      //tedad_jozi:=FloatToStr(DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad.AsFloat+StrToFloat(tedad_jozi));
    end;

    /////////////////


    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='update forosh_temp set '+

    ' tedad_koli='+tedad_koli+


    ',tedad='+tedad_jozi+


    ',tedad_kol=tedad_kol+'+tedad_koli_bealave_jozi+


    ',geymat_jens='+FloatToStr((DataModule_gozaresh_tarkibi.ADOQuery_show_pish_foroshtedad_kol.AsFloat+StrToFloat(tedad_koli_bealave_jozi))*StrToFloat(geymat_jozi))+

    ',geymat_vahed='+geymat_jozi+

    ' where calacod='+calacalacod+
    ' and anbarname='+QuotedStr(anbarname);

    DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;
    insert_pish_forosh:=true;

//////////////////////////////////////////////////////////////////////////
end//ezafe bar mojodi
else
begin
      insert_pish_forosh:=false;
  if frm_tedad.l_type.Caption='chelo' then
  begin
    vahed_koli:=Dmanbarexite.ADOanbarcalavahed_koli.AsString;

    geymat_koli:=Dmanbarexite.ADOanbarcalageymat_koli.AsString;

    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcalatedad_jozi_da_koli.AsString;

    vahed_jozei:=Dmanbarexite.ADOanbarcalavahed_jozi.AsString;

    if Rg_geymat.ItemIndex=0 then
      geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh.AsString
    else
      geymat_jozi:=Dmanbarexite.ADOanbarcalageymatforosh_koli.AsString;

    calacalacod:=Dmanbarexite.ADOanbarcalacalacod.AsString;

    anbarname:=Dmanbarexite.ADOanbarcalaanbarname.AsString;

    calaname:=Dmanbarexite.ADOanbarcalacalaname.AsString;

    barcod:=Dmanbarexite.ADOanbarcalabarcod.AsString;

    geymat_kharid:=Dmanbarexite.ADOanbarcalageymatkharid.AsString;

    olaviat:='1';
  end;


  {if frm_tedad.l_type.Caption='khorak' then
  begin
    vahed_koli:=Dmanbarexite.ADOanbarcala3vahed_koli.AsString;

    geymat_koli:=Dmanbarexite.ADOanbarcala3geymat_koli.AsString;

    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcala3tedad_jozi_da_koli.AsString;

    vahed_jozei:=Dmanbarexite.ADOanbarcala3vahed_jozi.AsString;

    geymat_jozi:=Dmanbarexite.ADOanbarcala3geymatforosh.AsString;

    calacalacod:=Dmanbarexite.ADOanbarcala3calacod.AsString;

    anbarname:=Dmanbarexite.ADOanbarcala3anbarname.AsString;

    calaname:=Dmanbarexite.ADOanbarcala3calaname.AsString;

    barcod:=Dmanbarexite.ADOanbarcala3barcod.AsString;

    geymat_kharid:=Dmanbarexite.ADOanbarcala3geymatkharid.AsString;

    olaviat:='2';
  end;


  if frm_tedad.l_type.Caption='gheyre' then
  begin
    vahed_koli:=Dmanbarexite.ADOanbarcala4vahed_koli.AsString;

    geymat_koli:=Dmanbarexite.ADOanbarcala4geymat_koli.AsString;

    tedad_jozi_dar_koli:=Dmanbarexite.ADOanbarcala4tedad_jozi_da_koli.AsString;

    vahed_jozei:=Dmanbarexite.ADOanbarcala4vahed_jozi.AsString;

    geymat_jozi:=Dmanbarexite.ADOanbarcala4geymatforosh.AsString;

    calacalacod:=Dmanbarexite.ADOanbarcala4calacod.AsString;

    anbarname:=Dmanbarexite.ADOanbarcala4anbarname.AsString;

    calaname:=Dmanbarexite.ADOanbarcala4calaname.AsString;

    barcod:=Dmanbarexite.ADOanbarcala4barcod.AsString;

    geymat_kharid:=Dmanbarexite.ADOanbarcala4geymatkharid.AsString;

    olaviat:='3';
  end; }
      ////////////////////////////////////////////////////////////////


    {if vahed_koli<>'' then
      tedad_koli:=FloatToStr(int(StrToFloat(Edit_jozi_tedadjozi.Text)/StrToFloat(tedad_jozi_dar_koli)))
    else
      tedad_koli:='0';



     if vahed_koli='' then
     begin
      tedad_jozi:=Edit_jozi_tedadjozi.Text;
      tedad_koli_bealave_jozi:=Edit_jozi_tedadjozi.Text;
     end
     else
     begin
      tedad_jozi:=FloatToStr(StrToFloat(Edit_jozi_tedadjozi.Text)-(StrToFloat(tedad_jozi_dar_koli))*StrToFloat(tedad_koli));
      tedad_koli_bealave_jozi:=Edit_jozi_tedadjozi.Text;
     end; }


  geymat_kol_forosh_jens:=FloatToStr(StrToFloat(tedad_koli_bealave_jozi)*StrToFloat(geymat_jozi));


  stcommand_insert:='';
  /////////
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='insert into forosh_temp (anbarname,tedad_kol,vahed_koli,vahed_jozei,tedad_koli,tedad_jozi_dar_koli,geymat_koli'+
  ',shahrforoshande,jens,'+
     'geymat_vahed,tedad,geymat_jens,calacod,geymate_kharid,barcod,sh_factor,tarikh,code_sherkati) values (:anbarname,:tedad_kol,:vahed_koli,:vahed_jozei,:tedad_koli,:tedad_jozi_dar_koli,:geymat_koli,'+
     ':shahrforoshande,:jens,:geymat_vahed,:tedad,:geymat_jens,:calacod,:geymate_kharid,:barcod,:sh_factor,:tarikh,:code_sherkati)';

     //,sh_fish,olaviat

     //,:sh_fish,:olaviat

  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('anbarname').Value:=anbarname;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tedad_kol').Value:=tedad_koli_bealave_jozi;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('vahed_koli').Value:=vahed_koli;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('vahed_jozei').Value:=vahed_jozei;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tedad_koli').Value:=tedad_koli;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tedad_jozi_dar_koli').Value:=tedad_jozi_dar_koli;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('geymat_koli').Value:=geymat_koli;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('shahrforoshande').Value:=DataModule1.ADOQuery3shahrforoshande.AsString;

  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('jens').Value:=calaname;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('geymat_vahed').Value:=geymat_jozi;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tedad').Value:=StrTofloat(tedad_jozi);
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('calacod').Value:=calacalacod;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('geymat_jens').Value:=geymat_kol_forosh_jens;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('barcod').Value:=barcod;
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('geymate_kharid').Value:=geymat_kharid;

   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('sh_factor').Value:=frm_forosh_fishi.sh_fctor;
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('tarikh').Value:=frm_forosh_fishi.tarikh;
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('code_sherkati').Value:=Dmanbarexite.ADOanbarcalacode_sherkati.AsString;

   {DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('sh_fish').Value:=frm_forosh_fishi.sh_fish;
   DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.Parameters.ParamByName('olaviat').Value:=olaviat; }
  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;

  insert_pish_forosh:=true;


end;
end;











////////////////

function Tfrm_tedad.check_tedad:boolean;
var num :real;
begin
  check_tedad:=true;

  if RadioGroup_jens_type.ItemIndex=0 then
  begin
    if Dmanbarexite.ADOanbarcala.Fields[10].AsFloat<=0 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ ò·Ì Ã‰” «‰ Œ«» ‘œÂ œ— «‰»«— ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_koli_tedadkoli.Text:='';
        Edit_koli_tedadkoli.SetFocus;
        exit;
     end
     else
     begin
         num:=Dmanbarexite.ADOanbarcala.Fields[10].AsFloat-StrTofloat(Edit_koli_tedadkoli.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,pchar(' ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ »Ì‘ — «“ „ﬁœ«— ò·Ì „ÊÃÊœ = '+Dmanbarexite.ADOanbarcala.Fields[10].AsString+' œ— „ò«‰ «‰ Œ«»Ì  „Ì»«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_koli_tedadkoli.Text:='';
            Edit_koli_tedadkoli.SetFocus;
            exit;
           end;
     end;
  end;

  if RadioGroup_jens_type.ItemIndex=1 then
  begin
  if frm_viewanbar.alamat_ashar(Edit_jozi_tedadjozi.Text) then
  begin
     if Dmanbarexite.ADOanbarcala.Fields[1].AsFloat<=0 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_jozi_tedadjozi.Text:='';
        Edit_jozi_tedadjozi.SetFocus;
        exit;
     end
     else
     begin

          num:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat-StrTofloat(Edit_jozi_tedadjozi.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,pchar('  ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ Ã‰” »Â ’Ê—  Ã“∆Ì »Ì‘ — «“ „ﬁœ«— Ã“∆Ì „ÊÃÊœ œ— „ò«‰ «‰ Œ«»Ì = '+Dmanbarexite.ADOanbarcala.Fields[1].AsString+' „Ì »«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_jozi_tedadjozi.Text:='';
            Edit_jozi_tedadjozi.SetFocus;
            exit;
           end;
      end;
  end
  else
    begin
       check_tedad:=false;
       Edit_jozi_tedadjozi.Text:='';
       Edit_jozi_tedadjozi.SetFocus;
       exit;
    end;
  end;

  if RadioGroup_jens_type.ItemIndex=2 then
  begin
  if frm_viewanbar.alamat_ashar(Edit_ko_jozi_tedadjozi.Text) then
  begin
    if Dmanbarexite.ADOanbarcala.Fields[1].AsFloat<=0 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì  ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_ko_jozi_tedadjozi.Text:='';
        Edit_ko_jozi_tedadjozi.SetFocus;
        exit;
     end
     else
     begin
         num:=Dmanbarexite.ADOanbarcala.Fields[1].AsFloat-StrToFloat(Edit_ko_jozi_tedadjozi.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,pchar('  ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ Ã‰” »Â ’Ê—  Ã“∆Ì »Ì‘ — «“ „ﬁœ«— Ã“∆Ì „ÊÃÊœ œ— „ò«‰ «‰ Œ«»Ì = '+Dmanbarexite.ADOanbarcala.Fields[1].AsString+' „Ì »«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_ko_jozi_tedadjozi.Text:='';
            Edit_ko_jozi_tedadjozi.SetFocus;
            exit;
           end;
     end;
   end
     else
     begin
       Edit_ko_jozi_tedadjozi.Text:='';
       Edit_ko_jozi_tedadjozi.SetFocus;
       check_tedad:=false;
     end;

    if Dmanbarexite.ADOanbarcala.Fields[10].AsFloat<=0 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ ò·Ì Ã‰” «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì  ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_ko_jozi_tedadkoli.Text:='';
        Edit_ko_jozi_tedadkoli.SetFocus;
        exit;
     end
     else
     begin
         num:=Dmanbarexite.ADOanbarcala.Fields[10].AsFloat-StrTofloat(Edit_ko_jozi_tedadkoli.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,pchar(' ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ »Ì‘ — «“ „ﬁœ«— ò·Ì „ÊÃÊœ = '+Dmanbarexite.ADOanbarcala.Fields[10].AsString+' œ— „ò«‰ «‰ Œ«»Ì  „Ì»«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_ko_jozi_tedadkoli.Text:='';
            Edit_ko_jozi_tedadkoli.SetFocus;
            exit;
           end;
     end;

     if Edit_ko_jozi_tedadkoli.Text='' then
        Edit_ko_jozi_tedadkoli.Text:='0';

     if Edit_ko_jozi_tedadjozi.Text='' then
        Edit_ko_jozi_tedadjozi.Text:='0';

    if (StrTofloat(Edit_ko_jozi_tedadkoli.Text)*Dmanbarexite.ADOanbarcala.Fields[13].Asfloat+ StrTofloat(Edit_ko_jozi_tedadjozi.Text) > Dmanbarexite.ADOanbarcala.Fields[1].AsFloat) then
      begin
            MessageBox(Handle,pchar('  ⁄œ«œ Ê«—œ ‘œÂ »—«Ì ›—Ê‘ Ã‰” »Â ’Ê—  Ã“∆Ì  Ê ò·Ì »Ì‘ — «“ „ﬁœ«— Ã“∆Ì „ÊÃÊœ œ— „ò«‰ «‰ Œ«»Ì = '+Dmanbarexite.ADOanbarcala.Fields[1].AsString+' „Ì »«‘œ '),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_ko_jozi_tedadjozi.Text:='' ;
            Edit_ko_jozi_tedadkoli.Text:='';
            Edit_ko_jozi_tedadkoli.SetFocus;
      end;
  end;


end;

/////////////

procedure Tfrm_tedad.FormShow(Sender: TObject);
begin
  RadioGroup_jens_type.ItemIndex:=1;
  Rg_geymat.ItemIndex:=0;
  if l_barcod.Caption='no' then
  begin
    Edit_jozi_tedadjozi.Clear;
  end
  else
  begin
    Edit_jozi_tedadjozi.Clear;
  end;

 if RadioGroup_jens_type.ItemIndex=0 then
  Edit_koli_tedadkoli.SetFocus;



end;

procedure Tfrm_tedad.Edit_jozi_tedadjoziKeyPress(Sender: TObject;
  var Key: Char);
var x:real;
  begin
if key=#13 then
begin
if frm_viewanbar.alamat_ashar(Edit_jozi_tedadjozi.Text) then
begin
  if trim(Edit_jozi_tedadjozi.Text)='' then
    x:=0
  else
    x:=StrToFloat(Edit_jozi_tedadjozi.Text);

  if x=0 then
  begin
    frm_tedad.Close;
  end
  else
  begin
    

      if StrToFloat(trim(Edit_jozi_tedadjozi.Text))>0 then
      begin
        if check_tedad then
        begin
          if insert_pish_forosh then
          begin
            Frm_pish_forosh.show_pish_forosh;
            frm_forosh_fishi.mohasebe_geymat_kol;
            frm_forosh_fishi.bede_talab_temp_check_forosh;
            close;
          end;
        end;
      end;

  end;
end
else
begin
  Edit_jozi_tedadjozi.SetFocus;
  Edit_jozi_tedadjozi.Clear;
end;
end;

   if not (key in['0'..'9','.',#8]) then
   key:=#0;

end;

procedure Tfrm_tedad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //frm_forosh_fishi.E_barcod_khan.SetFocus;

end;

procedure Tfrm_tedad.Timer1Timer(Sender: TObject);
begin
 frm_tedad.close;
end;

procedure Tfrm_tedad.RadioGroup_jens_typeClick(Sender: TObject);
begin
  forosh_type;
end;

procedure Tfrm_tedad.suibtaeed1Click(Sender: TObject);
begin
 if check_param then
 begin
   if check_tedad then
   begin
         insert_pish_forosh;
            Frm_pish_forosh.show_pish_forosh;
            frm_forosh_fishi.mohasebe_geymat_kol;
            frm_forosh_fishi.bede_talab_temp_check_forosh;
            close;
   end;
 end;
end;

procedure Tfrm_tedad.Edit_ko_jozi_tedadjoziKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_tedad.Edit_ko_jozi_tedadkoliKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_tedad.Edit_koli_tedadkoliKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
begin
 if check_param then
 begin
   if check_tedad then
   begin
         insert_pish_forosh;
            Frm_pish_forosh.show_pish_forosh;
            frm_forosh_fishi.mohasebe_geymat_kol;
            frm_forosh_fishi.bede_talab_temp_check_forosh;
            close;
   end;
 end;
end;

   if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_tedad.Edit_koli_tedadkoliChange(Sender: TObject);
begin
  if not frm_viewanbar.alamat_ashar(Edit_koli_tedadkoli.Text)then
  begin
    Edit_koli_tedadkoli.Clear;
    Edit_koli_tedadkoli.SetFocus;
  end;
end;

procedure Tfrm_tedad.Edit_jozi_tedadjoziChange(Sender: TObject);
begin
  if not frm_viewanbar.alamat_ashar(Edit_jozi_tedadjozi.Text)then
  begin
    Edit_jozi_tedadjozi.Clear;
    Edit_jozi_tedadjozi.SetFocus;
  end;
end;

procedure Tfrm_tedad.Edit_ko_jozi_tedadkoliChange(Sender: TObject);
begin
  if not frm_viewanbar.alamat_ashar(Edit_ko_jozi_tedadkoli.Text)then
  begin
    Edit_ko_jozi_tedadkoli.Clear;
    Edit_ko_jozi_tedadkoli.SetFocus;
  end;
end;

procedure Tfrm_tedad.Edit_ko_jozi_tedadjoziChange(Sender: TObject);
begin
  if not frm_viewanbar.alamat_ashar(Edit_ko_jozi_tedadjozi.Text)then
  begin
    Edit_ko_jozi_tedadjozi.Clear;
    Edit_ko_jozi_tedadjozi.SetFocus;
  end;
end;

procedure Tfrm_tedad.Rg_geymatClick(Sender: TObject);
begin
  if RadioGroup_jens_type.ItemIndex=1 then
    Edit_jozi_tedadjozi.SetFocus;

  if RadioGroup_jens_type.ItemIndex=0 then
    Edit_koli_tedadkoli.SetFocus;

  if RadioGroup_jens_type.ItemIndex=2 then
    Edit_ko_jozi_tedadkoli.SetFocus;
end;

end.
