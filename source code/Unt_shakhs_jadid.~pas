unit Unt_shakhs_jadid;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, SUIEdit, SUIPageControl, SUITabControl,
  ExtCtrls, SUIForm, te_controls, te_db_controls;

type
  TFrm_shakhs_jadid = class(TForm)
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label18: TLabel;
    Label3: TLabel;
    etelephon: TsuiEdit;
    etelephonhamrah: TsuiEdit;
    epost: TsuiEdit;
    suiButton8: TsuiButton;
    suiButton2: TsuiButton;
    eadress: TTeMemo;
    RadioGroup1: TRadioGroup;
    G_shakhs: TGroupBox;
    Label4: TLabel;
    suiEdit3: TsuiEdit;
    suiEdit2: TsuiEdit;
    suiEdit1: TsuiEdit;
    Label1: TLabel;
    Label2: TLabel;
    G_sherkat: TGroupBox;
    Label6: TLabel;
    e_sherkat: TsuiEdit;
    Label5: TLabel;
    L_f1_type: TLabel;
    Label7: TLabel;
    suiEdit4: TsuiEdit;
    ComboBox1: TComboBox;
    procedure insert_shahr;
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure clear;
    procedure etelephonKeyPress(Sender: TObject; var Key: Char);
    procedure etelephonhamrahKeyPress(Sender: TObject; var Key: Char);
    function check_exsist_shakhs(s1:string):boolean;
    procedure typ_;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure execute_shakhse_jadid_stored_procedure;
    procedure suiEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure suiEdit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_shakhs_jadid: TFrm_shakhs_jadid;

implementation

uses unt_main, unt_datamodule1, unt_datamodule2, unt_DataM_final,
  Unt_mmoshakhasat_shakhs, unt_DataM_sp, DB;

  /// tole filde shahrforoshandedar db=50

  ///  tole filde shahr=10 gabli=15
  ///  tole filde family=15 gabli=15
  ///  tole filde nam=10 gabli=15

  /// baraye mavarede khas dar eslahe moshakhasat=49
  {$R *.dfm}
procedure TFrm_shakhs_jadid.execute_shakhse_jadid_stored_procedure;
var s,st1,type_,type1_,noe,akharin_cod:string;
    st:pchar;
    f:boolean;
begin

         { DataModule1.ADOQuery3.SQL.Text:='select * from t_shahr_foroshande order by code';
          DataModule1.ADOQuery3.Open;
          DataModule1.ADOQuery3.Last;

          if DataModule1.ADOQuery3code.AsString<>'' then
            akharin_cod:=DataModule1.ADOQuery3code.AsString
          else
            akharin_cod:='0';  }



  f:=false;
  if RadioGroup1.ItemIndex=0 then
  begin
     if (trim(suiEdit1.Text)<>'') and (trim(suiEdit2.Text)<>'')and (trim(suiEdit3.Text)<>'')and(trim(ComboBox1.Text)<>'') then
         f:=true;
     noe:='shakhs';
  end
  else
  begin
    if (trim(e_sherkat.Text)<>'')and (trim(ComboBox1.Text)<>'')and(trim(suiEdit4.Text)<>'') then
      f:=true;
      noe:='sherkat';
  end;

  if f then
  begin
      ////check not exist recod
       type_:=ComboBox1.Text;
       if RadioGroup1.ItemIndex=0 then
       begin
        akharin_cod:=trim(suiEdit1.Text);
        st1:=trim(suiEdit2.Text)+' '+trim(suiEdit3.Text);
        //+' '+trim(suiEdit1.Text)
        end
       else
       begin
        akharin_cod:=trim(suiEdit4.Text);
        st1:=trim(e_sherkat.Text);
       end;

        s:='select * from t_shahr_foroshande where code='+akharin_cod;
        DataModule1.ADOQuery3.SQL.Text:=s;
        DataModule1.ADOQuery3.Active:=true;
        type1_:=DataModule1.ADOQuery3type_.AsString;

        if DataModule1.ADOQuery3.RecordCount=0 then
        begin

///////////////////////////////////////////////////////////////////////////////////////////////////
        s:='select * from t_shahr_foroshande where shahrforoshande='+QuotedStr(st1);
        DataModule1.ADOQuery3.SQL.Text:=s;
        DataModule1.ADOQuery3.Active:=true;
        type1_:=DataModule1.ADOQuery3type_.AsString;
       /////////////

       /////////////

       //akharin_cod:=FloatToStr(StrToFloat(akharin_cod)+1);
       if DataModule1.ADOQuery3.RecordCount<=0 then
        begin

           /////////////////////////////////
           DataM_sp.ADOStoredProc_shakhse_jadid.Parameters[0].Value:=st1;//@shahrforoshande nvarchar(50),
           DataM_sp.ADOStoredProc_shakhse_jadid.Parameters[1].Value:=eadress.Text;//@adress nvarchar(200),
           DataM_sp.ADOStoredProc_shakhse_jadid.Parameters[2].Value:=etelephon.Text;//@telephon nvarchar(12),
           DataM_sp.ADOStoredProc_shakhse_jadid.Parameters[3].Value:=etelephonhamrah.Text;//@telephonhamrah nvarchar(12),
           DataM_sp.ADOStoredProc_shakhse_jadid.Parameters[4].Value:=epost.Text;//@email nvarchar(30),
           DataM_sp.ADOStoredProc_shakhse_jadid.Parameters[5].Value:=type_;//@type nvarchar(30),

           DataM_sp.ADOStoredProc_shakhse_jadid.Parameters[6].Value:=akharin_cod;//@code float
           DataM_sp.ADOStoredProc_shakhse_jadid.ExecProc;

           //frm_main.backup;

          if noe='shakhs' then
          begin
            suiEdit1.SetFocus;
            st:=pchar('‘Œ’ ÃœÌœ »«„‘Œ’«  << '+suiEdit2.Text+' '+suiEdit3.Text+' >> –ŒÌ—Â ‘œ');
          end
          else
          begin
            suiEdit4.SetFocus;
            st:=pchar('‘—ò  („Ê””Â)ÃœÌœ »«„‘Œ’«  << '+e_sherkat.Text+' >> –ŒÌ—Â ‘œ');;
          end;

          MessageBox(Handle,st,' ÊÃÂ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
          clear;
        end
        else
          begin
            if noe='shakhs' then
              st:=pchar(' ‘Œ’ »« „‘Œ’«  << '+suiEdit2.Text+' '+suiEdit3.Text+' '+suiEdit1.Text+'>>'+' »« ‰ﬁ‘ <<'+type1_+'>>'+' „ÊÃÊœ „Ì»«‘œ.»—«Ì  €ÌÌ— ‰ﬁ‘ ‘Œ’ «‰ Œ«»Ì »Â ﬁ”„  «’·«Õ „‘Œ’«  ‘Œ’ „—«Ã⁄Â ‰„«ÌÌœ.')
            else
              st:=pchar('‘—ò  („Ê””Â) »«„‘Œ’«  << '+e_sherkat.Text+'>>'+' »« ‰ﬁ‘ <<'+type1_+'>>'+' „ÊÃÊœ „Ì»«‘œ.»—«Ì  €ÌÌ— ‰ﬁ‘ ‘—ò („Ê””Â)«‰ Œ«»Ì »Â ﬁ”„  «’·«Õ „‘Œ’«  „—«Ã⁄Â ‰„«ÌÌœ.');
            MessageBox(Handle,st,'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
          end;
       end
       else
       begin
         st:=pchar(' òœ '+akharin_cod+' ﬁ»·« »—«Ì '+DataModule1.ADOQuery3shahrforoshande.AsString+' Ê«—œ ‘œÂ «” ');
        MessageBox(Handle,st,'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
       end;


   end
     else
      begin
        if noe='shakhs' then
          MessageBox(Handle,'òœ «‘ —«ò° ‰«„ Ê ‰«„ Œ«‰Ê«œêÌ Ê ‰ﬁ‘ »«Ìœ Ê«—œ ‘Ê‰œ. ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
        else
          MessageBox(Handle,'òœ «‘ —«ò° ‰«„ ‘—ò („Ê””Â)Ê ‰ﬁ‘ »«Ìœ Ê«—œ ‘Êœ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      end;

end;

///////////////////////
procedure TFrm_shakhs_jadid.typ_;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    G_shakhs.Visible:=true;
    G_sherkat.Visible:=false;
    suiEdit1.SetFocus;
  end
  else
  begin
    G_shakhs.Visible:=false;
    G_sherkat.Visible:=true;
    suiEdit4.SetFocus;
  end;
end;
function TFrm_shakhs_jadid.check_exsist_shakhs(s1:string):boolean;
begin
    DataModule1.ADOQuery4.sql.Text:='select * from t_shahr_foroshande where shahrforoshande='+QuotedStr(s1);
    DataModule1.ADOQuery4.Open;
   if  DataModule1.ADOQuery4.RecordCount <=0 then
       check_exsist_shakhs:=false
   else
       check_exsist_shakhs:=true;
end;
procedure TFrm_shakhs_jadid.clear;
begin
  suiEdit4.Text :='';
  suiEdit1.Text :='';
  suiEdit3.Text :='';
  suiEdit2.Text:='';
  eadress.Lines.Text:='';
  etelephon.Text:='';
  etelephonhamrah.Text:='';
  epost.Text:='';
  e_sherkat.Clear;
end;
procedure TFrm_shakhs_jadid.insert_shahr;
var s,st1,type_,type1_,noe:string;
    st:pchar;
    f:boolean;
begin
  f:=false;
  if RadioGroup1.ItemIndex=0 then
  begin
     if (trim(suiEdit1.Text)<>'') and (trim(suiEdit2.Text)<>'')and (trim(suiEdit3.Text)<>'')and(trim(ComboBox1.Text)<>'') then
         f:=true;
     noe:='shakhs';
  end
  else
  begin
    if (trim(e_sherkat.Text)<>'')and (trim(ComboBox1.Text)<>'') then
      f:=true;
      noe:='sherkat';
  end;

  if f then
  begin
      ////check not exist recod
       type_:=ComboBox1.Text;
       if RadioGroup1.ItemIndex=0 then
        st1:=trim(suiEdit2.Text)+' '+trim(suiEdit3.Text)+' '+trim(suiEdit1.Text)
       else
        st1:=trim(e_sherkat.Text);
       s:='select * from t_shahr_foroshande where shahrforoshande='+QuotedStr(st1);
        DataModule1.ADOQuery3.SQL.Text:=s;
        DataModule1.ADOQuery3.Active:=true;
        type1_:=DataModule1.ADOQuery3type_.AsString;
       /////////////

       /////////////

       if DataModule1.ADOQuery3.RecordCount<=0 then
        begin
          DataModule1.ADOQuery3.SQL.Text:='insert into t_shahr_foroshande(shahrforoshande,adress,telephon,telephonhamrah,email,type_)'+
          ' values('+QuotedStr(trim(st1))+
          ','+QuotedStr(eadress.Text)+','+QuotedStr(etelephon.Text)+','+QuotedStr(etelephonhamrah.Text)+
          ','+QuotedStr(epost.Text)+','+QuotedStr(type_)+')';
          DataModule1.ADOQuery3.ExecSQL;

          DataModule1.ADOQuery3.SQL.Text:='select * from t_shahr_foroshande where shahrforoshande='+QuotedStr(trim(st1));
          DataModule1.ADOQuery3.Open;

          DataModule1.ADOQ_sh_factor.SQL.Text:='insert into T_shomare_factor(shahrforoshande,type_)values('+QuotedStr(st1)+','+QuotedStr(type_)+')';
          DataModule1.ADOQ_sh_factor.ExecSQL;

          DataModule1.ADOQ_sh_factor_kharid.SQL.Text:='insert into T_shomare_factor_kharid(shahrforoshande,type_)values('+QuotedStr(st1)+','+QuotedStr(type_)+')';
          DataModule1.ADOQ_sh_factor_kharid.ExecSQL;


          DataModule1.ADOQuery3.SQL.Text:='select * from t_shahr_foroshande where shahrforoshande='+QuotedStr(trim(st1));
          DataModule1.ADOQuery3.Open;

          DataM_final.ADOQ_bedeh_be_foroshnse.SQL.Text:='insert into T_bede_kol_be_foroshande(code_shakhs,shahrforoshande,type_)values('+
          DataModule1.ADOQuery3code.AsString+','+
          QuotedStr(st1)+','+QuotedStr(type_)+')';
          DataM_final.ADOQ_bedeh_be_foroshnse.ExecSQL;



          DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='insert into T_bede_kol_be_kharidar(code_shakhs,shahrforoshande,type_)values('+
          DataModule1.ADOQuery3code.AsString+','+
          QuotedStr(st1)+','+QuotedStr(type_)+')';
          DataM_final.ADOQ_bedeh_be_kharidar.ExecSQL;



          if noe='shakhs' then
            st:=pchar('‘Œ’ ÃœÌœ »«„‘Œ’«  << '+suiEdit2.Text+' '+suiEdit3.Text+' '+suiEdit1.Text+' >> –ŒÌ—Â ‘œ')
          else
            st:=pchar('‘—ò  („Ê””Â)ÃœÌœ »«„‘Œ’«  << '+e_sherkat.Text+' >> –ŒÌ—Â ‘œ');


          /////////////////////////
           { Frm_mmoshakhasat_shakhs.show_kharidaran;

            Frm_mmoshakhasat_shakhs.show_foroshandegan; }
          ////////////////////////

          MessageBox(Handle,st,' ÊÃÂ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
          clear;
        end
        else
          begin
            if noe='shakhs' then
              st:=pchar(' ‘Œ’ »« „‘Œ’«  << '+suiEdit2.Text+' '+suiEdit3.Text+' '+suiEdit1.Text+'>>'+' »« ‰ﬁ‘ <<'+type1_+'>>'+' „ÊÃÊœ „Ì»«‘œ.»—«Ì  €ÌÌ— ‰ﬁ‘ ‘Œ’ «‰ Œ«»Ì »Â ﬁ”„  «’·«Õ „‘Œ’«  ‘Œ’ „—«Ã⁄Â ‰„«ÌÌœ.')
            else
              st:=pchar('‘—ò  („Ê””Â) »«„‘Œ’«  << '+e_sherkat.Text+'>>'+' »« ‰ﬁ‘ <<'+type1_+'>>'+' „ÊÃÊœ „Ì»«‘œ.»—«Ì  €ÌÌ— ‰ﬁ‘ ‘—ò („Ê””Â)«‰ Œ«»Ì »Â ﬁ”„  «’·«Õ „‘Œ’«  „—«Ã⁄Â ‰„«ÌÌœ.');
            MessageBox(Handle,st,'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
          end;
      /////////////////////////   check not exist recod   ////////////////
      ////////////////////////////////////////////////////////////////////
   end
     else
      begin
        if noe='shakhs' then
          MessageBox(Handle,'òœ «‘ —«ò° ‰«„ Ê ‰«„ Œ«‰Ê«œêÌ Ê ‰ﬁ‘ »«Ìœ Ê«—œ ‘Ê‰œ. ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
        else
          MessageBox(Handle,'‰«„ ‘—ò („Ê””Â)Ê ‰ﬁ‘ »«Ìœ Ê«—œ ‘Êœ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      end;
end;
///////////////

procedure TFrm_shakhs_jadid.suiButton2Click(Sender: TObject);
begin
//  insert_shahr;
  execute_shakhse_jadid_stored_procedure;
end;

procedure TFrm_shakhs_jadid.suiButton8Click(Sender: TObject);
begin
  close;
end;

procedure TFrm_shakhs_jadid.suiButton1Click(Sender: TObject);
begin
  MessageBox(Handle,'‘Œ’ ÃœÌœÌ «÷«›Â ‰‘œ',' ÊÃÂ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
  clear;
end;

procedure TFrm_shakhs_jadid.etelephonKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_shakhs_jadid.etelephonhamrahKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_shakhs_jadid.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
  typ_;
  suiEdit1.SetFocus;
end;

procedure TFrm_shakhs_jadid.RadioGroup1Click(Sender: TObject);
begin
  typ_;
end;

procedure TFrm_shakhs_jadid.suiEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_shakhs_jadid.suiEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
