unit unt_anbarhaye_havie_jens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, SUIButton, StdCtrls, ExtCtrls, Grids, DBGrids, SUIDBCtrls,
  ADODB;

type
  Tfrm_anbarhaye_havie_jens = class(TForm)
    Label3: TLabel;
    suiDBGrid2: TsuiDBGrid;
    suiDBGrid1: TsuiDBGrid;
    GroupBox2: TGroupBox;
    RadioGroup_jens_type: TRadioGroup;
    GroupBox_jozi: TGroupBox;
    Label2: TLabel;
    Edit_jozi_tedadjozi: TEdit;
    GroupBox_koli_jozi: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Edit_ko_jozi_tedadkoli: TEdit;
    Edit_ko_jozi_tedadjozi: TEdit;
    GroupBox_koli: TGroupBox;
    Label1: TLabel;
    Edit_koli_tedadkoli: TEdit;
    suibtaeed: TsuiButton;
    Edit1: TEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    l_type: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure RadioGroup_jens_typeClick(Sender: TObject);
    procedure type_;
    procedure FormShow(Sender: TObject);
    procedure clear;
    procedure suibtaeedClick(Sender: TObject);
    function check_param:boolean;
    function check_tedad:boolean;
    procedure Edit_koli_tedadkoliKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_ko_jozi_tedadkoliKeyPress(Sender: TObject;
      var Key: Char);
    procedure Edit_ko_jozi_tedadjoziKeyPress(Sender: TObject;
      var Key: Char);
    procedure Edit_jozi_tedadjoziKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_jozi_tedadjoziChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cala_name,code_sherkati,shakhs_sherkat,barcod:string;
    geymat_kharid,sh_factor:real;

  end;

var
  frm_anbarhaye_havie_jens: Tfrm_anbarhaye_havie_jens;

implementation

uses
   Untviewanbar, unt_main, Untdmlistha, Untdmanbarexit,
  unt_Dm_zayeat_marjoei, unt_sabte_marjo_zayeat;


{$R *.dfm}

function Tfrm_anbarhaye_havie_jens.check_tedad:boolean;
var num :real;
begin
  check_tedad:=true;

  if RadioGroup_jens_type.ItemIndex=0 then
  begin
    if Dmlistha.ADOlistanbarforoshtedad_koli.AsFloat<=0 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ ò·Ì Ã‰” «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì  ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_koli_tedadkoli.Text:='';
     end
     else
     begin
         num:=Dmlistha.ADOlistanbarforoshtedad_koli.AsFloat-StrTofloat(Edit_koli_tedadkoli.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,' ⁄œ«œ Ê«—œ ‘œÂ »—«Ì Ã«»Â Ã«ÌÌ  »Ì‘ — «“ „ﬁœ«— „ÊÃÊœ œ— „ò«‰ «‰ Œ«»Ì  „Ì»«‘œ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_koli_tedadkoli.Text:='';
           end
           else
           begin
            frm_sabte_marjo_zayeat.l_tedad_koli_jabejaei.Caption:=Edit_koli_tedadkoli.Text;
            frm_sabte_marjo_zayeat.l_tedad_jozi_jabejaei.Caption:='0';
            frm_sabte_marjo_zayeat.l_tedad_kole_jabejaei.Caption:=FloatToStr(StrTofloat(Edit_koli_tedadkoli.Text)*Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.Asfloat);
            frm_sabte_marjo_zayeat.l_arzesh_ajnas.Caption:=FloatToStr(StrTofloat(frm_sabte_marjo_zayeat.l_tedad_kole_jabejaei.Caption)*Dmlistha.ADOlistanbarforoshgeymatkharid.AsFloat);
           end;
     end;
  end;

  if RadioGroup_jens_type.ItemIndex=1 then
  begin
  if frm_viewanbar.alamat_ashar(Edit_jozi_tedadjozi.Text) then
  begin
     if Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat<=0 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì  ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_jozi_tedadjozi.Text:='';
     end
     else
     begin
         num:=Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat-StrTofloat(Edit_jozi_tedadjozi.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,'  ⁄œ«œ Ê«—œ ‘œÂ »—«Ì Ã«»Â Ã«ÌÌ  Ã‰” »Â ’Ê—  Ã“∆Ì »Ì‘ — «“ „ﬁœ«— Ã“∆Ì „ÊÃÊœ œ— „ò«‰ «‰ Œ«»Ì  „Ì »«‘œ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_jozi_tedadjozi.Text:='';
           end
           else
           begin
            if  Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsFloat=0 then
            begin
              frm_sabte_marjo_zayeat.l_tedad_koli_jabejaei.Caption:='0';
              frm_sabte_marjo_zayeat.l_tedad_jozi_jabejaei.Caption:=Edit_jozi_tedadjozi.Text;
              frm_sabte_marjo_zayeat.l_tedad_kole_jabejaei.Caption:=Edit_jozi_tedadjozi.Text;
              frm_sabte_marjo_zayeat.l_arzesh_ajnas.Caption:=FloatToStr(StrTofloat(frm_sabte_marjo_zayeat.l_tedad_kole_jabejaei.Caption)*Dmlistha.ADOlistanbarforoshgeymatkharid.AsFloat);
            end
            else
            begin
              frm_sabte_marjo_zayeat.l_tedad_koli_jabejaei.Caption:=FloatToStr(StrToint(Edit_jozi_tedadjozi.Text)div Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsInteger);
              frm_sabte_marjo_zayeat.l_tedad_jozi_jabejaei.Caption:=FloatToStr(StrToInt(Edit_jozi_tedadjozi.Text)mod Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsInteger);
              frm_sabte_marjo_zayeat.l_tedad_kole_jabejaei.Caption:=Edit_jozi_tedadjozi.Text;
              frm_sabte_marjo_zayeat.l_arzesh_ajnas.Caption:=FloatToStr(StrTofloat(frm_sabte_marjo_zayeat.l_tedad_kole_jabejaei.Caption)*Dmlistha.ADOlistanbarforoshgeymatkharid.AsFloat);              
            end
           end;
      end;
  end
  else
    begin
       check_tedad:=false;
       Edit_jozi_tedadjozi.Text:='';
    end;
  end;

  if RadioGroup_jens_type.ItemIndex=2 then
  begin
  if frm_viewanbar.alamat_ashar(Edit_ko_jozi_tedadjozi.Text) then
  begin
    if Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat<=0 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ Ã‰” Ã“∆Ì «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì  ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_ko_jozi_tedadjozi.Text:='';
     end
     else
     begin
         num:=Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat-StrToFloat(Edit_ko_jozi_tedadjozi.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,'  ⁄œ«œ Ê«—œ ‘œÂ »—«Ì Ã«»Â Ã«ÌÌ  Ã‰” »Â ’Ê—  Ã“∆Ì »Ì‘ — «“ „ﬁœ«— Ã“∆Ì „ÊÃÊœ œ— „ò«‰ «‰ Œ«»Ì  „Ì »«‘œ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_ko_jozi_tedadjozi.Text:='';
           end;
     end;
   end
     else
     begin
       Edit_ko_jozi_tedadjozi.Text:='';
       check_tedad:=false;
     end;

    if Dmlistha.ADOlistanbarforoshtedad_koli.AsFloat<=0 then
     begin
        check_tedad:=false;
        MessageBox(Handle,' ⁄œ«œ ò·Ì Ã‰” «‰ Œ«» ‘œÂ œ— „ò«‰ «‰ Œ«»Ì  ’›— „Ì »«‘œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Edit_ko_jozi_tedadkoli.Text:='';
     end
     else
     begin
         num:=Dmlistha.ADOlistanbarforoshtedad_koli.AsFloat-StrTofloat(Edit_ko_jozi_tedadkoli.Text);
          if  num < 0 then
           begin
            MessageBox(Handle,' ⁄œ«œ Ê«—œ ‘œÂ »—«Ì Ã«»Â Ã«ÌÌ  Ã‰” »Â ’Ê—  ò·Ì »Ì‘ — «“ „ﬁœ«— ò·Ì œ— „ò«‰ «‰ Œ«»Ì  „Ì »«‘œ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_ko_jozi_tedadkoli.Text:='';
           end;

     end;

     if Edit_ko_jozi_tedadkoli.Text='' then
        Edit_ko_jozi_tedadkoli.Text:='0';

     if Edit_ko_jozi_tedadjozi.Text='' then
        Edit_ko_jozi_tedadjozi.Text:='0';

    if (StrTofloat(Edit_ko_jozi_tedadkoli.Text)*Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.Asfloat+ StrTofloat(Edit_ko_jozi_tedadjozi.Text) > Dmlistha.ADOlistanbarforoshtedadanbar.AsFloat) then
      begin
            MessageBox(Handle,'  ⁄œ«œ Ê«—œ ‘œÂ »—«Ì Ã«»Â Ã«ÌÌ  Ã‰” »Â ’Ê—  Ã“∆Ì  Ê ò·Ì »Ì‘ — «“ „ﬁœ«— Ã“∆Ì „ÊÃÊœ œ— „ò«‰ «‰ Œ«»Ì  „Ì »«‘œ','Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
            check_tedad:=false;
            Edit_ko_jozi_tedadjozi.Text:='' ;
            Edit_ko_jozi_tedadkoli.Text:='';
      end
      else
      begin
        frm_sabte_marjo_zayeat.l_tedad_koli_jabejaei.Caption:=Edit_ko_jozi_tedadkoli.Text;
        frm_sabte_marjo_zayeat.l_tedad_jozi_jabejaei.Caption:=Edit_ko_jozi_tedadjozi.Text;
        frm_sabte_marjo_zayeat.l_tedad_kole_jabejaei.Caption:=FloatToStr(StrTofloat(Edit_ko_jozi_tedadkoli.Text)*Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.Asfloat+StrTofloat(Edit_ko_jozi_tedadjozi.Text));
        frm_sabte_marjo_zayeat.l_arzesh_ajnas.Caption:=FloatToStr(StrTofloat(frm_sabte_marjo_zayeat.l_tedad_kole_jabejaei.Caption)*Dmlistha.ADOlistanbarforoshgeymatkharid.AsFloat);        
      end;
  end;
end;


function Tfrm_anbarhaye_havie_jens.check_param:boolean;
var i,j:integer;
    s:string;
    val,val2:real;
begin
   check_param:=true;
   if (Dm_zayeat_marjoei.ADOQ_anbarhaye_havie_jensanbarname.AsString ='') or (Dm_zayeat_marjoei.ADOQ_anbarhaye_havie_jens.RecordCount=0) then
   begin
         MessageBox(Handle,'Ã‰” «‰ Œ«»Ì œ— ÂÌç Ìò «“ „ò«‰Â« ÊÃÊœ ‰œ«—œ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
         check_param:=false;
   end
else
begin
   if RadioGroup_jens_type.ItemIndex=0 then
   begin
     if trim(Edit_koli_tedadkoli.Text)='' then
      val:=0
     else
      val:=StrToFloat(trim(Edit_koli_tedadkoli.Text));

     if val=0 then
      begin
         check_param:=false;
         MessageBox(Handle,' ⁄œ«œ Ã‰” ò·Ì —« Ê«—œ ‰„«ÌÌœ .',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
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
      end;

      if Dmlistha.ADOlistanbarforoshvahed_koli.AsString<>'' then
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
      end;
   end;
end;
end;

procedure Tfrm_anbarhaye_havie_jens.clear;
begin
    Edit_jozi_tedadjozi.Text:='';
    Edit_koli_tedadkoli.Text:='';
    Edit_ko_jozi_tedadkoli.Text:='';
    Edit_ko_jozi_tedadjozi.Text:='';
    Edit1.Clear;
end;

procedure Tfrm_anbarhaye_havie_jens.type_;
begin
  if RadioGroup_jens_type.ItemIndex=0 then
  begin
    GroupBox_koli.Visible:=true;
    GroupBox_jozi.Visible:=false;
    GroupBox_koli_jozi.Visible:=false;
  end;

  if RadioGroup_jens_type.ItemIndex=1 then
  begin
    GroupBox_koli.Visible:=false;
    GroupBox_jozi.Visible:=true;
    GroupBox_koli_jozi.Visible:=false;
  end;

  if RadioGroup_jens_type.ItemIndex=2 then
  begin
    GroupBox_koli.Visible:=false;
    GroupBox_jozi.Visible:=false;
    GroupBox_koli_jozi.Visible:=true;
  end;
end;


procedure Tfrm_anbarhaye_havie_jens.Edit1Change(Sender: TObject);
begin
  Dm_zayeat_marjoei.ADOQ_anbarhaye_havie_jens.Locate('anbarname',Edit1.Text,[loPartialKey]);
end;

procedure Tfrm_anbarhaye_havie_jens.RadioGroup_jens_typeClick(
  Sender: TObject);
begin
  type_;
end;

procedure Tfrm_anbarhaye_havie_jens.FormShow(Sender: TObject);
begin

      Dm_zayeat_marjoei.ADOQ_anbarhaye_havie_jens.SQL.Text:='select anbarname from Tanbar_jens_kolli where '+
      ' anbarname<>'+QuotedStr('«‰»«— ÷«Ì⁄« ')+' and anbarname<>'+QuotedStr('«‰»«— «›  «ÕÌÂ')+
      ' and calaname='+QuotedStr(frm_anbarhaye_havie_jens.cala_name)+
      ' and shakhs_sherkat='+QuotedStr(frm_anbarhaye_havie_jens.shakhs_sherkat)+
      ' and code_sherkati='+QuotedStr(frm_anbarhaye_havie_jens.code_sherkati)+
      ' and barcod='+QuotedStr(frm_anbarhaye_havie_jens.barcod)+

      ' and tedad_jozi_da_koli='+Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+
      ' and vahed_jozi='+QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+
      ' and vahed_koli='+QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+
      ' and geymatkharid='+FloatToStr(frm_anbarhaye_havie_jens.geymat_kharid) +

      ' and tedadanbar>0'+
      ' group by anbarname'+
      ' order by anbarname';
      Dm_zayeat_marjoei.ADOQ_anbarhaye_havie_jens.Open;

      sleep(200);

      Dmlistha.ADOlistanbarforosh.SQL.Text:='select * from Tanbar_jens_kolli where anbarname='+
      QuotedStr(Dm_zayeat_marjoei.ADOQ_anbarhaye_havie_jensanbarname.AsString)+
      ' and calaname='+QuotedStr(frm_anbarhaye_havie_jens.cala_name)+
      ' and shakhs_sherkat='+QuotedStr(frm_anbarhaye_havie_jens.shakhs_sherkat)+
      ' and code_sherkati='+QuotedStr(frm_anbarhaye_havie_jens.code_sherkati)+
      ' and barcod='+QuotedStr(frm_anbarhaye_havie_jens.barcod)+
      ' and geymatkharid='+FloatToStr(frm_anbarhaye_havie_jens.geymat_kharid)+

      ' and tedad_jozi_da_koli='+Dmlistha.ADOkharidhatedad_jozi_dar_koli.AsString+
      ' and vahed_jozi='+QuotedStr(Dmlistha.ADOkharidhavahed_jozei.AsString)+
      ' and vahed_koli='+QuotedStr(Dmlistha.ADOkharidhavahed_koli.AsString)+
      ' order by calaname,calacod';
      Dmlistha.ADOlistanbarforosh.Open;
      
  RadioGroup_jens_type.ItemIndex:=1;
  type_;
  Clear;

  Edit1.SetFocus;
  frm_anbarhaye_havie_jens.WindowState:=wsMaximized;
end;

procedure Tfrm_anbarhaye_havie_jens.suibtaeedClick(Sender: TObject);
begin
 if check_param then
 begin
   if check_tedad then
   begin
      frm_sabte_marjo_zayeat.ShowModal;
      close;
   end;
 end;
end;

procedure Tfrm_anbarhaye_havie_jens.Edit_koli_tedadkoliKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_anbarhaye_havie_jens.Edit_ko_jozi_tedadkoliKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_anbarhaye_havie_jens.Edit_ko_jozi_tedadjoziKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_anbarhaye_havie_jens.Edit_jozi_tedadjoziKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_anbarhaye_havie_jens.Edit_jozi_tedadjoziChange(
  Sender: TObject);
begin
frm_viewanbar.alamat_ashar(Edit_jozi_tedadjozi.Text)
end;

end.
