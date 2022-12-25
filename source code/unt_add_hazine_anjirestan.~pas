unit unt_add_hazine_anjirestan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDControl, LMDBaseControl, LMDBaseGraphicButton,
  LMDCustomSpeedButton, LMDSpeedButton, ExtCtrls, Mask, SUIButton,
  StdCtrls, SUIForm, DB, DBCtrls;

type
  TFrm_add_hazine_anjirestan = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    GroupBox3: TGroupBox;
    L_type: TLabel;
    RadioGroup_vahed_type: TRadioGroup;
    RadioGroup_jens_type: TRadioGroup;
    GroupBox_jens_anbar: TGroupBox;
    GroupBox_jozei: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    suiButton3: TsuiButton;
    suiButton2: TsuiButton;
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
    Edit1: TEdit;
    Button1: TButton;
    l_jans_name: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    E_barcod: TEdit;
    L_barcod: TLabel;
    Label12: TLabel;
    e_code_sherkati: TEdit;
    l_vahed_koli: TLabel;
    L_vahed_jozi: TLabel;
    l_tedad_J_dar_k: TLabel;
    L_vahed_joji_jozi: TLabel;
    function  return1:boolean;
    procedure geymat_kol;
    procedure suiButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure jens_type;
    procedure vahed_type;
    procedure RadioGroup_jens_typeClick(Sender: TObject);
    procedure RadioGroup_vahed_typeClick(Sender: TObject);
    procedure show_vahed;
    procedure get_public_parametr;
    function check_param:boolean;
    procedure suiButton3Click(Sender: TObject);
    procedure clear;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function check(s:string):boolean;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure E_barcodChange(Sender: TObject);
    procedure E_barcodExit(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit_tedad_vahed_koliKeyPress(Sender: TObject;
      var Key: Char);
    procedure Edit_tedad_jozei_dar_koliKeyPress(Sender: TObject;
      var Key: Char);
    procedure Edit_g_vahed_koliKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure e_code_sherkatiChange(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit_tedad_vahed_koliChange(Sender: TObject);


  private
    { Private declarations }
  public
  tedad_koli,tedad_jozei,
  geymat_koli,vahed_koli,vahed_jozei,jens,geymat_jozei,t_j_dar_koli,type_:string;
    { Public declarations }
  end;

var
  Frm_add_hazine_anjirestan: TFrm_add_hazine_anjirestan;

implementation

uses Unt_dmanbar, Unt_sefaresh_jadid, Untdmlistha, unt_pish_kharid,
  unt_entekhab_check, untjens_kharid, unt_DataM_final, unt_eslah_kharid,
  unt_eslah_kharid_add_jens, unt_datamodule1,Math,
  unt_show_jens_baraye_entekhab_kharid, unt_main, Untviewanbar,
  unt_add_jens_to_pishkharid;


/// tedade jozi dar koli feli=4 gabli=6
  {$R *.dfm}


function TFrm_add_hazine_anjirestan.check(s:string):boolean;
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
///////////
procedure TFrm_add_hazine_anjirestan.clear;
begin
    Edit_g_vahed_koli.Text:='';
    Edit1.Text:='';
    Edit2.Text:='';
    Edit3.Text:='';
    Edit_tedad_vahed_koli.Text:='';
    Edit_tedad_jozei_dar_koli.Text:='';
    e_code_sherkati.Clear;
end;

function TFrm_add_hazine_anjirestan.check_param:boolean;
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
    close;
  end;

end;
procedure TFrm_add_hazine_anjirestan.get_public_parametr;
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
procedure TFrm_add_hazine_anjirestan.show_vahed;
begin
 Dmlistha.ADOQuery_vahed.SQL.Text:='select * from t_vahed order by vahed';
 Dmlistha.ADOQuery_vahed.Open;
end;
procedure TFrm_add_hazine_anjirestan.vahed_type;
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
procedure TFrm_add_hazine_anjirestan.jens_type;
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
procedure TFrm_add_hazine_anjirestan.geymat_kol;
var p:pchar;
     x:real;
begin
  if (Edit2.Text='') or (Edit3.Text='') then
    MessageBox(Handle,' ⁄œ«œ Ã‰” Ê ﬁÌ„  Ê«Õœ Ã‰” »«Ìœ Ê«—œ ‘Ê‰œ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
    x:=StrTofloat(Edit2.Text)* StrTofloat(Edit3.Text);
    p:=pchar('ﬁÌ„  ò· Œ—Ìœ    ==>>      '+floatToStr(x)+'  =  '+Edit2.Text +'   *   '+ Edit3.Text);
    MessageBox(Handle,p,'ﬁÌ„  ò· Œ—Ìœ «‰Ã«„ ‘œÂ',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
  end;
end;
function TFrm_add_hazine_anjirestan.return1:boolean;
  begin
    return1:=false;
    if (Edit1.Text='') or (trim(Edit2.Text) ='') or (trim(Edit3.Text) ='')then
       return1:=false
    else
      return1:=true;
end;

procedure TFrm_add_hazine_anjirestan.suiButton2Click(Sender: TObject);
begin
  clear;
  //return1;
  close;
end;

procedure TFrm_add_hazine_anjirestan.FormShow(Sender: TObject);
begin
  Frm_sefaresh_jadid.showjens;
  show_vahed;
  RadioGroup_jens_type.ItemIndex:=0;
  jens_type;
  RadioGroup_vahed_type.ItemIndex:=0;
  vahed_type;
  l_jans_name.Caption:='Ã‰” «‰ Œ«» ‰‘œÂ';
  L_barcod.Caption:='';  
  Edit2.Text:='';
  Edit1.Text:='';
  Edit3.Text:='';
  e_code_sherkati.Clear;
end;





procedure TFrm_add_hazine_anjirestan.RadioGroup_jens_typeClick(
  Sender: TObject);
begin
  jens_type;
end;

procedure TFrm_add_hazine_anjirestan.RadioGroup_vahed_typeClick(
  Sender: TObject);
begin
  vahed_type;
end;


procedure TFrm_add_hazine_anjirestan.suiButton3Click(Sender: TObject);
var tarikh,sh_factor:string;
begin
if (check(Edit2.Text)) then
begin
  if Frm_add_jens_to_pishkharid.check_param then
  begin
    get_public_parametr;
    frm_pish_kharid.insert_type;
   if L_type.Caption='eslah' then
    begin

      {frm_main.l_last_op.Caption:=' «÷«›Â ò—œ‰ Ã‰” '+jens+' »Â Œ—Ìœ »« ‘„«—Â ›«ò Ê— '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
      ' «“ '+DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;
      frm_main.sabte_amaliat(frm_main.l_last_op.Caption);

      MessageBox(Handle,pchar('Ã‰” «‰ Œ«»Ì »Â ‘„«—Â ›«ò Ê— «÷«›Â ‘œ.'),' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);}

    end

    else
    begin
     while frm_pish_kharid.DBText_arzesh_kol.Caption='' do
       frm_pish_kharid.geymat_kol;
    end;
   Close;
  end;
end;
end;


procedure TFrm_add_hazine_anjirestan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if L_type.Caption='eslah' then
    begin

     { frm_eslah_kharid_add_jens.update_bedeh_talab_va_bedehi_kol_kharidar;

      frm_eslah_kharid.aghlame_factor;

      frm_eslah_kharid_add_jens.update_bedehi_kharidar_pas_az_bedekar_shodan; }

    end;
end;

procedure TFrm_add_hazine_anjirestan.Edit1Change(Sender: TObject);
begin
  l_jans_name.Caption:=Edit1.Text;
end;

procedure TFrm_add_hazine_anjirestan.Edit1Exit(Sender: TObject);
begin
  l_jans_name.Caption:=Edit1.Text;
end;

procedure TFrm_add_hazine_anjirestan.Button1Click(Sender: TObject);
begin
  frm_show_jens_baraye_entekhab_kharid.ShowModal;
end;

procedure TFrm_add_hazine_anjirestan.E_barcodChange(Sender: TObject);
begin
  L_barcod.Caption:=E_barcod.Text;
end;

procedure TFrm_add_hazine_anjirestan.E_barcodExit(Sender: TObject);
begin
  L_barcod.Caption:=E_barcod.Text;
end;

procedure TFrm_add_hazine_anjirestan.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure TFrm_add_hazine_anjirestan.Edit_tedad_vahed_koliKeyPress(
  Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure TFrm_add_hazine_anjirestan.Edit_tedad_jozei_dar_koliKeyPress(
  Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_add_hazine_anjirestan.Edit_g_vahed_koliKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_add_hazine_anjirestan.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_add_hazine_anjirestan.e_code_sherkatiChange(
  Sender: TObject);
begin
  e_code_sherkati.Text:=UpperCase(e_code_sherkati.Text);
end;

procedure TFrm_add_hazine_anjirestan.Edit2Change(Sender: TObject);
begin
  if not frm_viewanbar.alamat_ashar(Edit2.Text)then
  begin
    Edit2.Clear;
    Edit2.SetFocus;
  end;
end;

procedure TFrm_add_hazine_anjirestan.Edit_tedad_vahed_koliChange(
  Sender: TObject);
begin
  if not frm_viewanbar.alamat_ashar(Edit_tedad_vahed_koli.Text)then
  begin
    Edit_tedad_vahed_koli.Clear;
    Edit_tedad_vahed_koli.SetFocus;
  end;
end;

end.
