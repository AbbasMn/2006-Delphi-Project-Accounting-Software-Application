unit unt_jabejaei_first;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, DB, StdCtrls, SUIButton, ExtCtrls;

type
  Tfrm_jabejaei_first = class(TForm)
    suiDBGrid2: TsuiDBGrid;
    suiDBGrid1: TsuiDBGrid;
    Datasanbarname: TDataSource;
    DataSource1: TDataSource;
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
    Label8: TLabel;
    esearch: TEdit;
    Label3: TLabel;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure type_;
    function check_param:boolean;
    procedure suibtaeedClick(Sender: TObject);
    function check_tedad:boolean;
    procedure RadioGroup_jens_typeClick(Sender: TObject);
    procedure clear;
    procedure esearchChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
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
  end;

var
  frm_jabejaei_first: Tfrm_jabejaei_first;

implementation

uses Untdmanbarexit, Untdmlistha, Untviewanbar, unt_jabejaei_second,
  unt_pish_kharid, unt_add_jens_to_pishkharid;

{$R *.dfm}
procedure Tfrm_jabejaei_first.clear;
begin
    Edit_jozi_tedadjozi.Text:='';
    Edit_koli_tedadkoli.Text:='';
    Edit_ko_jozi_tedadkoli.Text:='';
    Edit_ko_jozi_tedadjozi.Text:='';
    esearch.Clear;
    Edit1.Clear;
end;

function Tfrm_jabejaei_first.check_tedad:boolean;
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
            frm_jabejaei_second.l_tedad_koli_jabejaei.Caption:=Edit_koli_tedadkoli.Text;
            frm_jabejaei_second.l_tedad_jozi_jabejaei.Caption:='0';
            frm_jabejaei_second.l_tedad_kole_jabejaei.Caption:=FloatToStr(StrTofloat(Edit_koli_tedadkoli.Text)*Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.Asfloat);
           end;
     end;
  end;

  if RadioGroup_jens_type.ItemIndex=1 then
  begin
  if frm_viewanbar.alamat_ashar('') then
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
              frm_jabejaei_second.l_tedad_koli_jabejaei.Caption:='0';
              frm_jabejaei_second.l_tedad_jozi_jabejaei.Caption:=Edit_jozi_tedadjozi.Text;
              frm_jabejaei_second.l_tedad_kole_jabejaei.Caption:=Edit_jozi_tedadjozi.Text;
            end
            else
            begin
              frm_jabejaei_second.l_tedad_koli_jabejaei.Caption:=FloatToStr(StrToint(Edit_jozi_tedadjozi.Text)div Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsInteger);
              frm_jabejaei_second.l_tedad_jozi_jabejaei.Caption:=FloatToStr(StrToInt(Edit_jozi_tedadjozi.Text)mod Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.AsInteger);
              frm_jabejaei_second.l_tedad_kole_jabejaei.Caption:=Edit_jozi_tedadjozi.Text;
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
        frm_jabejaei_second.l_tedad_koli_jabejaei.Caption:=Edit_ko_jozi_tedadkoli.Text;
        frm_jabejaei_second.l_tedad_jozi_jabejaei.Caption:=Edit_ko_jozi_tedadjozi.Text;
        frm_jabejaei_second.l_tedad_kole_jabejaei.Caption:=FloatToStr(StrTofloat(Edit_ko_jozi_tedadkoli.Text)*Dmlistha.ADOlistanbarforoshtedad_jozi_da_koli.Asfloat+StrTofloat(Edit_ko_jozi_tedadjozi.Text));
      end;
  end;



end;


function Tfrm_jabejaei_first.check_param:boolean;
var i,j:integer;
    s:string;
    val,val2:real;    
begin
   check_param:=true;
   if (Dmanbarexite.ADOanbarnamename.AsString ='') or (Dmlistha.ADOlistanbarforosh.RecordCount=0) then
   begin
         MessageBox(Handle,'‰«„ „ò«‰ Ê Ã‰” —« «‰ Œ«» ‰„«ÌÌœ ',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
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

      if not frm_viewanbar.alamat_ashar(Edit_jozi_tedadjozi.Text) then
      begin
        Edit_jozi_tedadjozi.Text:='';
        Edit_jozi_tedadjozi.SetFocus;
        exit;
      end;
           
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

procedure Tfrm_jabejaei_first.type_;
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


procedure Tfrm_jabejaei_first.FormShow(Sender: TObject);
begin
  Dmanbarexite.ADOanbarname.SQL.Text:='select * from tanbar_names where name<>'+QuotedStr('«‰»«— „Ã«“Ì')+
  ' and name<>'+QuotedStr('«‰»«— ÷«Ì⁄« ')+' and name<>'+QuotedStr('«‰»«— «›  «ÕÌÂ')+
  ' order by name';
  Dmanbarexite.ADOanbarname.Open;
  RadioGroup_jens_type.ItemIndex:=1;
  type_;
  Clear;

  Edit1.SetFocus;
  frm_jabejaei_first.WindowState:=wsMaximized;
end;



procedure Tfrm_jabejaei_first.suibtaeedClick(Sender: TObject);
begin
 if check_param then
 begin
   if check_tedad then
   begin
    frm_jabejaei_second.L_code_cala.Caption:=Dmlistha.ADOlistanbarforoshcalacod.AsString;
    frm_jabejaei_second.ShowModal;
   end;
 end;
end;

procedure Tfrm_jabejaei_first.RadioGroup_jens_typeClick(Sender: TObject);
begin
  type_;
end;

procedure Tfrm_jabejaei_first.esearchChange(Sender: TObject);
begin
  Dmlistha.ADOlistanbarforosh.Locate('calaname',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_jabejaei_first.Edit1Change(Sender: TObject);
begin
  Dmanbarexite.ADOanbarname.Locate('name',Edit1.Text,[loPartialKey]);
end;

procedure Tfrm_jabejaei_first.Edit_koli_tedadkoliKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_jabejaei_first.Edit_ko_jozi_tedadkoliKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_jabejaei_first.Edit_ko_jozi_tedadjoziKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_jabejaei_first.Edit_jozi_tedadjoziKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_jabejaei_first.Edit_jozi_tedadjoziChange(Sender: TObject);
begin
Frm_add_jens_to_pishkharid.check(Edit_jozi_tedadjozi.Text);
end;

end.
