unit unt_bedeh_bestan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIButton, DBCtrls, SUIPageControl, SUITabControl,
  ExtCtrls, SUIForm, DB, Mask, Grids, DBGrids, SUIDBCtrls;

type
  Tfrm_bede_bestan = class(TForm)
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Lname: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    suiButton: TsuiButton;
    RadioGroup1: TRadioGroup;
    Edit6: TEdit;
    suiButton7: TsuiButton;
    suiButton6: TsuiButton;
    Edit9: TEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    suiDBGrid1: TsuiDBGrid;
    E_name: TEdit;
    Label8: TLabel;
    e_cod: TEdit;
    l_review: TLabel;
    procedure suiButton7Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure getthemes;
    procedure suiButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure insert_nagd_tosandog(t:string);
    procedure show;
    procedure updatebedehi(bedeh:real;talab:real;time_:string);
    procedure insertpardakhtbedehi(t:string);
    procedure E_nameChange(Sender: TObject);
    function max_bedehi(var bedeh:real;var talab:real):boolean;
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure e_codChange(Sender: TObject);
    procedure exexute_pardakhte_bedehitavasote_moshtari_storeprocedure1(b_j,t_j:real;type_:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_bede_bestan: Tfrm_bede_bestan;

implementation

uses unt_datamodule1, Taghvim, unt_datamodule2, unt_main, unt_login,
  Unt_shakhs_jadid, unt_elsah, unt_sandog_jadid,
  Unt_DataModule_gozaresh_tarkibi, Unt_mmoshakhasat_shakhs,
  unt_DataM_final, Unt_pardakht_bedehi, unt_DataM_sp;

{$R *.dfm}
procedure Tfrm_bede_bestan.exexute_pardakhte_bedehitavasote_moshtari_storeprocedure1(b_j,t_j:real;type_:string);
var time_,tarikh,amaliat:string;
begin
        time_:=frm_main.LMDClock1.Digital.Caption;
        tarikh:=Edit6.Text;
        if type_='a' then
          amaliat:=' Å—œ«Œ  »œÂÌ  Ê”ÿ '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+' »Â „»·€ '+Edit9.Text+' '+'„»·€ << '+FloatToStr(t_j)+' >> «“ ÿ·» '+' Ê „»·€ << '+FloatToStr(b_j)+' >> «“ »œÂÌ  ò„ ‘œ. ';
        if type_='b' then
          amaliat:=' Å—œ«Œ  »œÂÌ  Ê”ÿ '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+' »Â „»·€ '+Edit9.Text+' '+' „»·€ << '+FloatToStr(b_j)+' >> «“ »œÂÌ  ò„ ‘œ. ';
        if type_='c' then
          amaliat:=' Å—œ«Œ  »œÂÌ  Ê”ÿ '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+' »Â „»·€ '+Edit9.Text+' '+' „»·€ << '+FloatToStr(b_j)+' >> «“ »œÂÌ  ò„ ‘œ. ';


          DataM_sp.ADOStoredProc_pardakht_bedehi_kharidar.Parameters[0].Value:=DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;//@shahrforoshande nvarchar(50),
          DataM_sp.ADOStoredProc_pardakht_bedehi_kharidar.Parameters[1].Value:=time_;//@time nvarchar(10),
          DataM_sp.ADOStoredProc_pardakht_bedehi_kharidar.Parameters[2].Value:=tarikh;//@tarikh nvarchar(12),

          DataM_sp.ADOStoredProc_pardakht_bedehi_kharidar.Parameters[3].Value:=DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.asstring;//@code float,


          DataM_sp.ADOStoredProc_pardakht_bedehi_kharidar.Parameters[4].Value:='œ—Ì«›  ‰ﬁœÌ œ— Å—œ«Œ  »œÂÌ  Ê”ÿ '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;//@tozih nvarchar(150),
          DataM_sp.ADOStoredProc_pardakht_bedehi_kharidar.Parameters[5].Value:='Ê—ÊœÌ';//@type nvarchar(6),
          DataM_sp.ADOStoredProc_pardakht_bedehi_kharidar.Parameters[6].Value:=Edit9.Text;//@mablag float,
          DataM_sp.ADOStoredProc_pardakht_bedehi_kharidar.Parameters[7].Value:=DBLookupComboBox3.Text;//@sandog nvarchar(30),

          DataM_sp.ADOStoredProc_pardakht_bedehi_kharidar.Parameters[8].Value:=b_j;//@b_j float,
          DataM_sp.ADOStoredProc_pardakht_bedehi_kharidar.Parameters[9].Value:=t_j;//@t_j float,
          DataM_sp.ADOStoredProc_pardakht_bedehi_kharidar.Parameters[10].Value:='';//@noe_pardakht nvarchar(10),
          DataM_sp.ADOStoredProc_pardakht_bedehi_kharidar.Parameters[11].Value:=amaliat;//@amaliat nvarchar(1000)
          DataM_sp.ADOStoredProc_pardakht_bedehi_kharidar.ExecProc;
          //frm_main.backup;

          frm_main.l_last_op.Caption:=' Å—œ«Œ  »œÂÌ  Ê”ÿ '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;

          MessageBox(Handle,pchar(amaliat),' ÊÃÂ!',MB_OK + MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
end;

////////////////////
function Tfrm_bede_bestan.max_bedehi(var bedeh:real;var talab:real):boolean;
var mb:pchar;
begin
  DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='select code_shakhs,shahrforoshande,'+
  'sum(bedehkar) as bedeh,sum(bestankar) as talab from '+
  ' T_bestankar_bedehkar_kharidar where shahrforoshande='+QuotedStr(Lname.Caption)+
  '  group by code_shakhs,shahrforoshande ';
  DataM_final.ADOQ_bedeh_be_kharidar2.Open;

  bedeh:=DataM_final.ADOQ_bedeh_be_kharidar2bedeh.Value;
  talab:=DataM_final.ADOQ_bedeh_be_kharidar2talab.Value;
  
  if (DataM_final.ADOQ_bedeh_be_kharidar2bedeh.Value) < StrToFloat(Edit9.Text) then
  begin
    max_bedehi:=false;
    mb:=pchar('„»·€ Ê«—œ ‘œÂ «“ ò· »œÂÌ ‘Œ’ = '+DataM_final.ADOQ_bedeh_be_kharidar2bedeh.AsString+' »Ì‘ — „Ì»«‘œ. ');
    MessageBox(Handle,mb,'Œÿ« !',MB_OK + MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
  end
  else
    max_bedehi:=true;
end;

procedure Tfrm_bede_bestan.show;
begin
  DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='select code_shakhs,shahrforoshande,'+
  ' sum(bedehkar)as bedeh,sum(bestankar)as talab from '+
  ' T_bestankar_bedehkar_kharidar '+
  ' group by code_shakhs,shahrforoshande order by shahrforoshande';
  DataM_final.ADOQ_bedeh_be_kharidar.Open;
  frm_bede_bestan.Lname.Caption:=DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;
end;
procedure Tfrm_bede_bestan.updatebedehi(bedeh:real;talab:real;time_:string);
var b_j,t_j:real;
    st:pchar;
begin
  if talab >0 then
  begin
    st:=pchar('‘Œ’  <<  '+Lname.Caption+' >> „»·€ << '+FloatToStr(talab)+' >> «“ ‘„« ÿ·»ò«— „Ì »«‘œ° „»·€ Å—œ«Œ Ì «“ „»·€ ÿ·» Œ—Ìœ«— ò„ ‘Êœø(œ— ’Ê— Ì òÂ „»·€ Å—œ«Œ Ì Œ—Ìœ«— «“ „»·€ ÿ·» «Ê «“‘„« »Ì‘ — »«‘œ ÿ·» Œ—Ìœ«— «“ ‘„« ’›— ‘œÂ Ê „«»ﬁÌÂ Å—œ«Œ  «“ »œÂÌ Œ—Ìœ«— ò„ „Ì ‘Êœ).');
    if  MessageBox(Handle,st,' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
    begin
              if StrToFloat(Edit9.Text)<= talab then
              begin
                t_j:=StrToFloat(Edit9.Text);
                b_j:=0;
              end
              else
              begin
                t_j:=talab;
                b_j:=StrToFloat(Edit9.Text)-talab;
              end;

       { DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+FloatToStr(b_j)+
        ',talab=talab-'+FloatToStr(t_j)+',tarikh_akharin_pardakht='+QuotedStr(Edit6.Text)+' where shahrforoshande='+QuotedStr(Lname.Caption);
        DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;


        DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
        ' where cod_kharidar='+DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString+' and tarikh='+QuotedStr(Edit6.Text)+' and time_ >'+QuotedStr(time_);
        DataM_final.ADOQ_takhfife_forosh.ExecSQL;

        DataM_final.ADOQ_takhfife_forosh.SQL.Text:='update T_takhfife_forosh set bedehi_az_gabl=bedehi_az_gabl-'+FloatToStr(b_j)+
        ' where cod_kharidar='+DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString+' and tarikh>'+QuotedStr(Edit6.Text);
        DataM_final.ADOQ_takhfife_forosh.ExecSQL;

        insert_nagd_tosandog(time_);
        insertpardakhtbedehi(time_);

        frm_main.l_last_op.Caption:=' Å—œ«Œ  »œÂÌ  Ê”ÿ '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;
        frm_main.sabte_amaliat(' Å—œ«Œ  »œÂÌ  Ê”ÿ '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+' »Â „»·€ '+Edit9.Text+' '+'„»·€ << '+FloatToStr(t_j)+' >> «“ ÿ·» '+' Ê „»·€ << '+FloatToStr(b_j)+' >> «“ »œÂÌ  ò„ ‘œ. ');

        st:=pchar('„»·€ << '+FloatToStr(t_j)+' >> «“ ÿ·» '+' Ê „»·€ << '+FloatToStr(b_j)+' >> «“ »œÂÌ << '+Lname.Caption+' >> ò„ ‘œ. ' );
        MessageBox(Handle,st,' ÊÃÂ!',MB_OK + MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT); }
        exexute_pardakhte_bedehitavasote_moshtari_storeprocedure1(b_j,t_j,'a');

    end
    else
    begin
        t_j:=0;
        b_j:=StrToFloat(Edit9.Text);
        {DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+FloatToStr(b_j)+
        ',talab=talab-'+FloatToStr(t_j)+',tarikh_akharin_pardakht='+QuotedStr(Edit6.Text)+' where shahrforoshande='+QuotedStr(Lname.Caption);
        DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;

                insert_nagd_tosandog(time_);
                insertpardakhtbedehi(time_);

                frm_main.l_last_op.Caption:=' Å—œ«Œ  »œÂÌ  Ê”ÿ '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;
                frm_main.sabte_amaliat(' Å—œ«Œ  »œÂÌ  Ê”ÿ '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+' »Â „»·€ '+Edit9.Text+' '+' „»·€ << '+FloatToStr(b_j)+' >> «“ »œÂÌ  ò„ ‘œ. ');

        st:=pchar(' „»·€ << '+FloatToStr(b_j)+' >> «“ »œÂÌ << '+Lname.Caption+' >> ò„ ‘œ. ' );
        MessageBox(Handle,st,' ÊÃÂ!',MB_OK + MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT); }
        exexute_pardakhte_bedehitavasote_moshtari_storeprocedure1(b_j,t_j,'b');
    end;
  end
  else
  begin
        t_j:=0;
        b_j:=StrToFloat(Edit9.Text);
        {DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+FloatToStr(b_j)+
        ',talab=talab-'+FloatToStr(t_j)+',tarikh_akharin_pardakht='+QuotedStr(Edit6.Text)+' where shahrforoshande='+QuotedStr(Lname.Caption);
        DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;

                insert_nagd_tosandog(time_);
                insertpardakhtbedehi(time_);

                frm_main.l_last_op.Caption:=' Å—œ«Œ  »œÂÌ  Ê”ÿ '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;
                frm_main.sabte_amaliat(' Å—œ«Œ  »œÂÌ  Ê”ÿ '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+' »Â „»·€ '+Edit9.Text+' '+' „»·€ << '+FloatToStr(b_j)+' >> «“ »œÂÌ  ò„ ‘œ. ');                

        st:=pchar(' „»·€ << '+FloatToStr(b_j)+' >> «“ »œÂÌ << '+Lname.Caption+' >> ò„ ‘œ. ' );
        MessageBox(Handle,st,' ÊÃÂ!',MB_OK + MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT); }
        exexute_pardakhte_bedehitavasote_moshtari_storeprocedure1(b_j,t_j,'c');
  end;

end;
procedure Tfrm_bede_bestan.insertpardakhtbedehi(t:string);
begin
  DataModule1.ADOpardakhtbedehi_kharidar.SQL.Text:='insert into t_pardakht_bedehi_kharidar(noe,shahrforoshande,tarikh,mablagh,time_)values('+
  QuotedStr('')+','+QuotedStr(Lname.Caption)+','+QuotedStr(Edit6.Text)+','+Edit9.Text+','+QuotedStr(t)+')';
  DataModule1.ADOpardakhtbedehi_kharidar.ExecSQL;

end;



procedure Tfrm_bede_bestan.insert_nagd_tosandog(t:string);
var x:string;
begin
   x:=Edit6.Text;
   DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.SQL.Text:='insert into T_vorod_khoroj_sandogha(cod_kharidar,tozih,type,tarikh,mablag,sandog,time_)'+
   'values('+DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString+','+
   QuotedStr('œ—Ì«›  ‰ﬁœÌ œ— Å—œ«Œ  »œÂÌ  Ê”ÿ '+Lname.Caption)+
   ','+QuotedStr('Ê—ÊœÌ')+','+QuotedStr(x)+
   ','+Edit9.Text+
   ','+QuotedStr(DBLookupComboBox3.Text)+','+QuotedStr(t)+')';
   DataModule_gozaresh_tarkibi.ADOQuery_daryaft_be_sandog.ExecSQL;
end;
procedure Tfrm_bede_bestan.getthemes;
begin                                                                                 

end;

/////////////

procedure Tfrm_bede_bestan.suiButton7Click(Sender: TObject);
begin
 close;
end;

procedure Tfrm_bede_bestan.suiButton6Click(Sender: TObject);
var st:pchar;
   bedeh,talab:real;
   t,tar:string;
   pch:pchar;
begin
bedeh:=0;
talab:=0;
t:=frm_main.LMDClock1.Digital.Caption;
tar:=Edit6.Text;
if trim(Edit9.Text)='' then
  Edit9.Text:='0';
if (StrToFloat(Edit9.Text)=0)or(Lname.Caption='')or(DBLookupComboBox3.Text='') then

        MessageBox(Handle,'«ÿ·«⁄«  —« ò«„· Ê«—œ ‰„«ÌÌœ','Œÿ« !',MB_OK + MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
else
  begin
    if Frm_shakhs_jadid.check_exsist_shakhs(Lname.Caption) then
      begin//1
          DataM_final.ADOQ_t_sh_facrorhaye_forosh2.SQL.Text:='select * from  t_sh_facrorhaye_forosh where shahrforoshande='+
          QuotedStr(DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString)+' order by shomare';
          DataM_final.ADOQ_t_sh_facrorhaye_forosh2.open;

          DataM_final.ADOQ_t_sh_facrorhaye_forosh2.First;

         if (DataM_final.ADOQ_t_sh_facrorhaye_forosh2tarikh.AsString>tar)or((DataM_final.ADOQ_t_sh_facrorhaye_forosh2tarikh.AsString=tar)and(DataM_final.ADOQ_t_sh_facrorhaye_forosh2time.AsString>t)) then
          begin
            pch:=pchar(' «Ê·Ì‰ ›—Ê‘ œ—  «—ÌŒ '+DataM_final.ADOQ_t_sh_facrorhaye_forosh2tarikh.AsString+' Ê œ— ”«⁄  '+DataM_final.ADOQ_t_sh_facrorhaye_forosh2time.AsString+'»Â Œ—Ìœ«— «‰ Œ«»Ì «‰Ã«„ ‘œÂ ° ·–« ‰„Ì  Ê«‰Ìœ  «—ÌŒ Å—œ«Œ  »œÂÌ —« ﬁ»· «“  «—ÌŒ Ê ”«⁄  –ò— ‘œÂ ﬁ—«— œÂÌœ');
            MessageBox(Handle,pch,'Œÿ« !',MB_OK + MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
          end
          else
          begin///2
               {DataM_final.ADOQ_takhfife_forosh2.SQL.Text:='select * from  T_takhfife_forosh  where cod_kharidar='+
                DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString+
                ' and tarikh='+QuotedStr(Edit6.Text)+' and time_ <'+QuotedStr(t);
                DataM_final.ADOQ_takhfife_forosh2.open;

                if DataM_final.ADOQ_takhfife_forosh2.RecordCount=0 then
                begin
                  DataM_final.ADOQ_takhfife_forosh2.SQL.Text:='select * from  T_takhfife_forosh  where cod_kharidar='+
                  DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString+
                  ' and tarikh>'+QuotedStr(Edit6.Text);
                  DataM_final.ADOQ_takhfife_forosh2.open;
                end;

                if DataM_final.ADOQ_takhfife_forosh2.RecordCount>0 then
                begin
                  DataM_final.ADOQ_takhfife_forosh2.First;

                  if (DataM_final.ADOQ_takhfife_forosh2bedehi_az_gabl.AsFloat)<StrToFloat(Edit9.Text) then
                  begin
                    pch:=pchar(' »Â œ·Ì· «Ì‰òÂ „»·€ »œÂÌ «“ ﬁ»· «Ê·Ì‰ ›«ò Ê— ›—Ê‘ œ—  «—ÌŒ «‰ Œ«»Ì Å—œ«Œ  Ê ”«⁄  ¬‰ = '+DataM_final.ADOQ_takhfife_forosh2bedehi_az_gabl.AsString+' ò„ — «“ „»·€ Å—œ«Œ  »œÂÌ = '+Edit9.Text+' „Ì »«‘œ ‰„Ì  Ê«‰Ìœ Å—œ«Œ  —« »«  «—ÌŒ «‰ Œ«»Ì À»  ‰„«ÌÌœ');
                    MessageBox(Handle,pch,'Œÿ« !',MB_OK + MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
                  end
                  else
                  begin ///3
                    if max_bedehi(bedeh,talab) then
                    begin
                      st:=pchar('Å—œ«Œ  »œÂÌ  Ê”ÿ   <<  '+Lname.Caption+' >> —«  «ÌÌœ „Ì‰„«ÌÌœø');
                      if   MessageBox(Handle,st,' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
                      begin
                        insertpardakhtbedehi(t);
                        updatebedehi(bedeh,talab,t);
                        insert_nagd_tosandog(t);
                        frm_main.l_last_op.Caption:=' Å—œ«Œ  »œÂÌ  Ê”ÿ '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;
                        frm_main.sabte_amaliat(' Å—œ«Œ  »œÂÌ  Ê”ÿ '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+' »Â „»·€ '+Edit9.Text);
                        show;
                        Edit9.Text:='';
                      end
                      else
                        MessageBox(Handle,'Å—œ«Œ  »œÂÌ À»  ‰‘œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
                end;
               end;///3


///////////////////////////////////////////////////////////
                end
                else
          begin///3}
          if max_bedehi(bedeh,talab) then
            begin
              st:=pchar('Å—œ«Œ  »œÂÌ  Ê”ÿ   <<  '+Lname.Caption+' >> —«  «ÌÌœ „Ì‰„«ÌÌœø');
              if   MessageBox(Handle,st,' ÊÃÂ !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING )=id_yes then
              begin
                l_review.Caption:=DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString;
                updatebedehi(bedeh,talab,t);
                show;
                Edit9.Text:='';

                DataM_final.ADOQ_bedeh_be_kharidar.Locate('code_shakhs',l_review.Caption,[loPartialKey]);
              end
              else
                MessageBox(Handle,'Å—œ«Œ  »œÂÌ À»  ‰‘œ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
            end;
          //end;///3
          end ///2
      end //1
      else
      begin
        st:=pchar(' ‘Œ’ »« „‘Œ’«   <<  '+Lname.Caption+' >> ÊÃÊœ ‰œ«—œ');
        MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
     end;
  end;
end;


procedure Tfrm_bede_bestan.suiButtonClick(Sender: TObject);
begin
   _taghvim.ShowModal;
if _taghvim._str_date<>'' then   
  Edit6.Text:=_taghvim._str_date;
end;

procedure Tfrm_bede_bestan.FormShow(Sender: TObject);
begin
  suiButton.Enabled:=false;
  RadioGroup1.ItemIndex:=0;
  Edit6.Text:=frm_main.L_tarikh.Caption;
  show;

  DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name where sandog<>'+
  QuotedStr('»—œ«‘  „ ›—ﬁÂ')+' and  sandog<>'+
  QuotedStr('”—„«ÌÂ')+' order by sandog';
  DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;

  Edit9.Text:='';
  e_cod.Clear;
  E_name.Clear;  
  E_name.SetFocus;

end;

procedure Tfrm_bede_bestan.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    suiButton.Enabled:=false;
    Edit6.Text:=Frm_login.Egettarikh.Text;
  end
  else
   begin
    suiButton.Enabled:=true;
    suiButton.Click;
   end;
end;

procedure Tfrm_bede_bestan.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_bede_bestan.E_nameChange(Sender: TObject);
begin
  DataM_final.ADOQ_bedeh_be_kharidar.Locate('shahrforoshande',E_name.Text,[loPartialKey]);
end;

procedure Tfrm_bede_bestan.e_codKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_bede_bestan.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataM_final.ADOQ_bedeh_be_kharidar.Locate('code_shakhs',e_cod.Text,[loPartialKey]);
end;

end.
