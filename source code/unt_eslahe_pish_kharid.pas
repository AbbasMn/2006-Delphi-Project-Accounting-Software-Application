unit unt_eslahe_pish_kharid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, DBCtrls, ExtCtrls, StdCtrls, DB;

type
  Tfrm_eslahe_pish_kharid = class(TForm)
    GroupBox_jens_jadid: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    E_barcod: TEdit;
    GroupBox_jozei: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    L_vahed_joji_jozi: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    suiButton3: TsuiButton;
    suiButton2: TsuiButton;
    Label12: TLabel;
    e_code_sherkati: TEdit;
    GroupBox_koli: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
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
    DataSource2: TDataSource;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    l_id: TLabel;
    l_type: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Edit_g_vahed_koliKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_tedad_vahed_koliKeyPress(Sender: TObject;
      var Key: Char);
    procedure Edit_tedad_jozei_dar_koliKeyPress(Sender: TObject;
      var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton3Click(Sender: TObject);
    function check(s:string):boolean;
    function check_param:boolean;
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_pish_kharid: Tfrm_eslahe_pish_kharid;

implementation

uses Untdmlistha, unt_add_jens_to_pishkharid, unt_DataM_final,
  untjens_kharid;

{$R *.dfm}


//////////////////////////////
function Tfrm_eslahe_pish_kharid.check(s:string):boolean;
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
       MessageBox(Handle,'����� ���� ������ ��� � ��� ���� ���� ���.','����! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
       check:=false;
     end;
end;
///////////

function Tfrm_eslahe_pish_kharid.check_param:boolean;
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

   if (trim(Edit1.Text)='') then
   begin
       st:=' ��� ��� ';
       check_param:=false;
   end;


   if GroupBox_koli.Visible=true then
   begin
      if CheckBox2.Checked then
      begin
        if DBLookupComboBox4.Text='' then
          begin
           st:=st+' ���� ��� ��� ';
           check_param:=false;
          end;

        if DBLookupComboBox3.Text='' then
         begin
            st:=st+' ���� ���� ��� ';
            check_param:=false;
         end;
      end;
               
        if StrToFloat(Edit_tedad_jozei_dar_koli.Text)=0 then
          begin
            st:=st+'����� ���� ���� �� ���� ��� �';
            check_param:=false;
          end;


      if not CheckBox2.Checked then
      begin
        if l_vahed_koli.Caption='' then
          begin
           st:=st+' ���� ��� ��� ';
           check_param:=false;
          end;

        if L_vahed_jozi.Caption='' then
         begin
            st:=st+' ���� ���� ��� ';
            check_param:=false;
         end;
      end;

      if Edit_g_vahed_koli.Text='' then
        begin
          if (l_type.Caption='kharid')then
          begin
            st:=st+'���� ���� ��� ��� ';
            check_param:=false;
          end
          else
            Edit_g_vahed_koli.Text:='0';

        end;

      if StrToFloat(Edit_g_vahed_koli.Text)=0 then
        begin
          if (l_type.Caption='kharid')then
          begin
            st:=st+' ���� ���� ��� ��� ';
            check_param:=false;
          end;
        end;

      if StrToFloat(Edit_tedad_vahed_koli.Text)=0 then
        begin
          st:=st+'����� ���� ��� ���  ';
          check_param:=false;
        end;

      st:=st+'�� ���� ������';
   end;

   if GroupBox_jozei.Visible=true then
   begin
       if CheckBox1.Checked then
       begin
        if DBLookupComboBox2.Text='' then
          begin
            st:=st+'���� ���� ��� ';
            check_param:=false;
          end;
       end;

       if not CheckBox1.Checked then
       begin
        if L_vahed_joji_jozi.Caption='' then
          begin
            st:=st+'���� ���� ��� ';
            check_param:=false;
          end;
       end;

       if StrToFloat(Edit3.Text)=0 then
          begin
            if (l_type.Caption='kharid')then
            begin
              st:=st+' ���� �� ���� ���� ';
              check_param:=false;
            end;
          end;

       if StrToFloat(Edit2.Text)=0 then
         begin
            st:=st+' ����� ��� ���� ';
            check_param:=false;
         end;
       st:=st+'�� ���� ������';
   end;

  if  st<>'�� ���� ������' then
  begin
     check_param:=false;
     s:=pchar(st);
    MessageBox(Handle,s,'���! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
  end
  else
  begin
    check_param:=true;
    close;
  end;

end;

//////////////////////////////////////////////////////////
procedure Tfrm_eslahe_pish_kharid.FormShow(Sender: TObject);
begin
 Dmlistha.ADOQuery_vahed.SQL.Text:='select * from t_vahed order by vahed';
 Dmlistha.ADOQuery_vahed.Open;
end;

procedure Tfrm_eslahe_pish_kharid.Edit_g_vahed_koliKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0
end;

procedure Tfrm_eslahe_pish_kharid.Edit_tedad_vahed_koliKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9','.',#8]) then
   key:=#0
end;

procedure Tfrm_eslahe_pish_kharid.Edit_tedad_jozei_dar_koliKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0
end;

procedure Tfrm_eslahe_pish_kharid.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0
end;

procedure Tfrm_eslahe_pish_kharid.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9','.',#8]) then
   key:=#0
end;

procedure Tfrm_eslahe_pish_kharid.suiButton3Click(Sender: TObject);
var s:string;
begin
  if check_param then
  begin
    if GroupBox_jozei.Visible=true then
    begin
      s:='update t_kharid_temp set jens='+QuotedStr(trim(Edit1.Text))+
      ',barcod='+QuotedStr(trim(E_barcod.Text))+',code_sherkati='+QuotedStr(trim(e_code_sherkati.Text))+
      ',gheymat='+Edit3.Text+',geymat_jadid='+Edit3.Text+
      ',tedad='+Edit2.Text+',teded_jozi='+Edit2.Text+',kol='+FloatToStr(StrToFloat(Edit3.Text)* StrToFloat(Edit2.Text));
     if CheckBox1.Checked then
       s:=s+',vahed_jozei='+QuotedStr(trim(DBLookupComboBox2.Text));

     s:=s+' where id='+l_id.Caption;

      DataM_final.ADOQuery_pish_kharid.SQL.Text:=s;
      DataM_final.ADOQuery_pish_kharid.ExecSQL;
    end
    else
    begin
      s:='update t_kharid_temp set jens='+QuotedStr(trim(Edit1.Text))+
      ',barcod='+QuotedStr(trim(E_barcod.Text))+',code_sherkati='+QuotedStr(trim(e_code_sherkati.Text))+

      ',gheymat='+FloatToStr(int(StrToFloat(Edit_g_vahed_koli.Text)/StrToFloat(Edit_tedad_jozei_dar_koli.Text)))+
      ',geymat_jadid='+FloatToStr(int(StrToFloat(Edit_g_vahed_koli.Text)/StrToFloat(Edit_tedad_jozei_dar_koli.Text)))+

      ',tedad='+FloatToStr(StrToFloat(Edit_tedad_vahed_koli.Text)*StrToFloat(Edit_tedad_jozei_dar_koli.Text))+
      ',teded_jozi='+FloatToStr(StrToFloat(Edit_tedad_vahed_koli.Text)*StrToFloat(Edit_tedad_jozei_dar_koli.Text))+

      ',tedad_koli='+Edit_tedad_vahed_koli.Text+
      ',geymat_koli='+Edit_g_vahed_koli.Text+
      

      ',tedad_jozi_dar_koli='+Edit_tedad_jozei_dar_koli.Text+
      
      ',kol='+FloatToStr(StrToFloat(Edit_tedad_vahed_koli.Text)*StrToFloat(Edit_g_vahed_koli.Text));

     if CheckBox2.Checked then
       s:=s+',vahed_jozei='+QuotedStr(trim(DBLookupComboBox3.Text))+',vahed_koli='+QuotedStr(trim(DBLookupComboBox4.Text));

     s:=s+' where id='+l_id.Caption;

      DataM_final.ADOQuery_pish_kharid.SQL.Text:=s;
      DataM_final.ADOQuery_pish_kharid.ExecSQL;
    
    end;
      frmjens_kharid.show_temp1;
      DataM_final.ADOQuery_pish_kharid.Locate('id',l_id.Caption,[loPartialKey]);
      close;
  end;
end;

procedure Tfrm_eslahe_pish_kharid.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
  begin
     DBLookupComboBox3.visible:=true;
    DBLookupComboBox4.visible:=true;
    l_vahed_koli.visible:=false;
    L_vahed_jozi.visible:=false;
  end
  else
  begin
    DBLookupComboBox3.visible:=false;
    DBLookupComboBox4.visible:=false;
    l_vahed_koli.visible:=true;
    L_vahed_jozi.visible:=true;
  end;
end;

procedure Tfrm_eslahe_pish_kharid.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    DBLookupComboBox2.visible:=true;
    L_vahed_joji_jozi.visible:=false;
  end
  else
  begin
    DBLookupComboBox2.visible:=false;
    L_vahed_joji_jozi.visible:=true;
  end;
end;

procedure Tfrm_eslahe_pish_kharid.suiButton2Click(Sender: TObject);
begin
  close;  
end;

end.
