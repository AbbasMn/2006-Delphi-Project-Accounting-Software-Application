unit unt_eslahe_bedehi_kharidaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, StdCtrls, ExtCtrls, SUIImagePanel,
  SUIGroupBox, DB, DBCtrls, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton, te_controls;

type
  Tfrm_eslahe_bedehi_kharidaran = class(TForm)
    suiGroupBox1: TsuiGroupBox;
    Label5: TLabel;
    esearch: TEdit;
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    GroupBox6: TGroupBox;
    Label9: TLabel;
    DBText_t_jam: TDBText;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    RadioGroup1: TRadioGroup;
    g_eslahe_bedeh: TGroupBox;
    Label3: TLabel;
    g_eslahe_talab: TGroupBox;
    Label4: TLabel;
    g_set_bedeh_with_talab: TGroupBox;
    Label6: TLabel;
    R_bedehi_typ_: TRadioGroup;
    R_talab_typ_: TRadioGroup;
    e_bedeh: TEdit;
    E_talab: TEdit;
    B_bedeh: TButton;
    b_talab: TButton;
    b_set_do: TButton;
    m_tozih: TTeMemo;
    Label7: TLabel;
    b_joziat: TButton;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    l_review: TLabel;
    Label15: TLabel;
    e_cod: TEdit;
    procedure FormShow(Sender: TObject);
    procedure showallbedehkarha;
    procedure esearchChange(Sender: TObject);
    procedure update_bedehi;
    procedure update_talab;
    procedure set_talab_with_bedehi;
    procedure e_bedehKeyPress(Sender: TObject; var Key: Char);
    procedure E_talabKeyPress(Sender: TObject; var Key: Char);
    procedure type_eslah;
    procedure RadioGroup1Click(Sender: TObject);
    procedure B_bedehClick(Sender: TObject);
    procedure b_talabClick(Sender: TObject);
    procedure b_set_doClick(Sender: TObject);
    procedure e_bedehChange(Sender: TObject);
    procedure E_talabChange(Sender: TObject);
    procedure sabte_tozihe_eslahe_bedehie_kharidar(s,type_:string);
    procedure b_joziatClick(Sender: TObject);
    procedure R_bedehi_typ_Click(Sender: TObject);
    procedure R_talab_typ_Click(Sender: TObject);
    procedure e_codChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    auto_tozih,tarikh:string;
    { Public declarations }
  end;

var
  frm_eslahe_bedehi_kharidaran: Tfrm_eslahe_bedehi_kharidaran;

implementation

uses unt_DataM_final, unt_datamodule2, unt_main,
  unt_joziate_eslahe_bedehe_kharidar, unt_DataM_sp;

{$R *.dfm}
procedure Tfrm_eslahe_bedehi_kharidaran.sabte_tozihe_eslahe_bedehie_kharidar(s,type_:string);
begin
  DataM_final.ADOQ_eslahe_bedehe_tozihe_kharidar.SQL.Text:='insert into t_tozihe_eslahe_bedehi_kharidar(tarikh,shakhs,tozih,type)'+
  ' values('+QuotedStr(tarikh)+','+QuotedStr(DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString)+
  ','+QuotedStr(s+'---'+m_tozih.Text)+','+QuotedStr(type_)+')';
  DataM_final.ADOQ_eslahe_bedehe_tozihe_kharidar.ExecSQL;
end;

procedure Tfrm_eslahe_bedehi_kharidaran.type_eslah;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    g_eslahe_bedeh.Visible:=True;
    g_eslahe_talab.Visible:=false;
    g_set_bedeh_with_talab.Visible:=false;
  end;

  if RadioGroup1.ItemIndex=1 then
  begin
    g_eslahe_bedeh.Visible:=false;
    g_eslahe_talab.Visible:=True;
    g_set_bedeh_with_talab.Visible:=false;
  end;

  if RadioGroup1.ItemIndex=2 then
  begin
    g_eslahe_bedeh.Visible:=false;
    g_eslahe_talab.Visible:=false;
    g_set_bedeh_with_talab.Visible:=True;
  end;
end;

procedure Tfrm_eslahe_bedehi_kharidaran.set_talab_with_bedehi;
begin
if DataM_final.ADOQ_bedeh_be_kharidar.RecordCount =0 then
  MessageBox(Handle,'Œ—Ìœ«—Ì »—«Ì «’·«Õ »œÂÌ Ê ÿ·» ò· ÊÃÊœ ‰œ«—œ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin
if DataM_final.ADOQ_bedeh_be_kharidartalab.AsFloat >= DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsFloat then
  begin
      {DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab-bedeh,bedeh=0 '+
      ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;}

      auto_tozih:='„»·€ »œÂÌ ò· = '+DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsString+' «“ „»·€ ÿ·» ò· = '+
      DataM_final.ADOQ_bedeh_be_kharidartalab.AsString+' ò„ ‘œ Ê »œÂÌ ò· ’›— ‘œ'+'('+'ÿ·» ò· = '+FloatToStr(DataM_final.ADOQ_bedeh_be_kharidartalab.AsFloat-DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsFloat)+')';

      frm_main.l_last_op.Caption:='ò„ ‘œ‰ »œÂÌ ò· «“ ÿ·» ò· »—«Ì Œ—Ìœ«—'+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;

      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[0].Value:=DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;//@shahrforoshande nvarchar(50),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[1].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[2].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[3].Value:=DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString;//@code  float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[4].Value:='kharidar';//@type nvarchar(50),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[5].Value:=' »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+auto_tozih;//@amaliat nvarchar(1000),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[6].Value:=31;//@par float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[7].Value:=(DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsFloat*-1);//@bedeh float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[8].Value:=(DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsFloat*-1);//@talab float
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[9].Value:=auto_tozih;//@tozih nvarchar(1000),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[10].Value:='ò„ ‘œ‰ »œÂÌ ò· «“ ÿ·» ò·';//@type2 float
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.ExecProc;

      showallbedehkarha;
      MessageBox(Handle,'„»·€ ò· »œÂÌ «“ „»·€ ò· ÿ·» ò„ ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
      DataM_final.ADOQ_bedeh_be_kharidar.Locate('code_shakhs',l_review.Caption,[loPartialKey]);



      {sabte_tozihe_eslahe_bedehie_kharidar(auto_tozih,'ò„ ‘œ‰ »œÂÌ ò· «“ ÿ·» ò·');


     frm_main.sabte_amaliat(' »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+auto_tozih); }
  end
  else
  begin
      {DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-talab,talab=0 '+
      ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;}

      auto_tozih:='„»·€ ÿ·» ò· = '+DataM_final.ADOQ_bedeh_be_kharidartalab.AsString+' «“ „»·€ »œÂÌ ò· = '+
      DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsString+' ò„ ‘œ Ê ÿ·» ò· ’›— ‘œ'+'('+'»œÂÌ ò· = '+FloatToStr(DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsFloat-DataM_final.ADOQ_bedeh_be_kharidartalab.AsFloat)+')';

      frm_main.l_last_op.Caption:='ò„ ‘œ‰ ÿ·» ò· «“ »œÂÌ ò· »—«Ì Œ—Ìœ«—'+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;


      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[0].Value:=DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;//@shahrforoshande nvarchar(50),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[1].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[2].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[3].Value:=DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString;//@code  float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[4].Value:='kharidar';//@type nvarchar(50),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[5].Value:=' »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+auto_tozih;//@amaliat nvarchar(1000),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[6].Value:=32;//@par float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[7].Value:=(DataM_final.ADOQ_bedeh_be_kharidartalab.AsFloat*-1);//@bedeh float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[8].Value:=(DataM_final.ADOQ_bedeh_be_kharidartalab.AsFloat*-1);//@talab float
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[9].Value:=auto_tozih;//@tozih nvarchar(1000),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[10].Value:='ò„ ‘œ‰ ÿ·» ò· «“ »œÂÌ ò·';//@type2 float
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.ExecProc;

      showallbedehkarha;
      MessageBox(Handle,'„»·€ ò· ÿ·» «“ „»·€ ò· »œÂÌ ò„ ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
      DataM_final.ADOQ_bedeh_be_kharidar.Locate('code_shakhs',l_review.Caption,[loPartialKey]);

      {sabte_tozihe_eslahe_bedehie_kharidar(auto_tozih,'ò„ ‘œ‰ ÿ·» ò· «“ »œÂÌ ò·');

      frm_main.sabte_amaliat(' »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+auto_tozih);}

  end;

end;
end;

procedure Tfrm_eslahe_bedehi_kharidaran.update_talab;
begin
if DataM_final.ADOQ_bedeh_be_kharidar.RecordCount =0 then
  MessageBox(Handle,'Œ—Ìœ«—Ì »—«Ì «’·«Õ »œÂÌ Ê ÿ·» ò· ÊÃÊœ ‰œ«—œ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin
  if R_talab_typ_.ItemIndex=1 then
  begin
    if(DataM_final.ADOQ_bedeh_be_kharidartalab.AsFloat<StrToFloat(E_talab.Text))then
      MessageBox(Handle,'„»·€ Ê«—œ ‘œÂ »—«Ì ò”— ‘œ‰ «“ ÿ·» »Ì‘ — «“ „»·€ ÿ·» „Ì »«‘œ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
    else
    begin
      DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab-'+E_talab.Text;
      DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:=DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text+
      ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;

      frm_main.l_last_op.Caption:='ò„ ‘œ‰ «“ ÿ·» »—«Ì Œ—Ìœ«—'+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;

      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[0].Value:=DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;//@shahrforoshande nvarchar(50),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[1].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[2].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[3].Value:=DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString;//@code  float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[4].Value:='kharidar';//@type nvarchar(50),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[5].Value:=' »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+auto_tozih;//@amaliat nvarchar(1000),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[6].Value:=22;//@par float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[7].Value:=0;//@bedeh float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[8].Value:=(StrToFloat(E_talab.Text)*-1);//@talab float
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[9].Value:=auto_tozih+' '+m_tozih.Text;//@tozih nvarchar(1000),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[10].Value:='ò„ ‘œ‰ «“ ÿ·»';//@type2 float
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.ExecProc;

      {sabte_tozihe_eslahe_bedehie_kharidar(auto_tozih,'ò„ ‘œ‰ «“ ÿ·»');


      frm_main.sabte_amaliat(' »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+auto_tozih); }

      showallbedehkarha;
      MessageBox(Handle,'„»·€ ÿ·» ò· Œ—Ìœ«— «’·«Õ ê—œÌœ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
      DataM_final.ADOQ_bedeh_be_kharidar.Locate('code_shakhs',l_review.Caption,[loPartialKey]);


      E_talab.Clear;
    end;

  end
  else
  begin
    DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set talab=talab+'+E_talab.Text;

    {DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:=DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text+
    ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString);
    DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL; }

    frm_main.l_last_op.Caption:='«÷«›Â ‘œ‰ »Â ÿ·» »—«Ì Œ—Ìœ«—'+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;

      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[0].Value:=DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;//@shahrforoshande nvarchar(50),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[1].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[2].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[3].Value:=DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString;//@code  float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[4].Value:='kharidar';//@type nvarchar(50),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[5].Value:=' »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+auto_tozih;//@amaliat nvarchar(1000),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[6].Value:=21;//@par float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[7].Value:=0;//@bedeh float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[8].Value:=(StrToFloat(E_talab.Text));//@talab float
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[9].Value:=auto_tozih+' '+m_tozih.Text;//@tozih nvarchar(1000),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[10].Value:='«÷«›Â ‘œ‰ »Â ÿ·»';//@type2 float
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.ExecProc;

    {sabte_tozihe_eslahe_bedehie_kharidar(auto_tozih,'«÷«›Â ‘œ‰ »Â ÿ·»');


    frm_main.sabte_amaliat(' »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+auto_tozih); }

    showallbedehkarha;

    MessageBox(Handle,'„»·€ ÿ·» ò· Œ—Ìœ«— «’·«Õ ê—œÌœ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);    
    DataM_final.ADOQ_bedeh_be_kharidar.Locate('code_shakhs',l_review.Caption,[loPartialKey]);


    E_talab.Clear;
  end;
  


end;
end;

procedure Tfrm_eslahe_bedehi_kharidaran.update_bedehi;
begin

if DataM_final.ADOQ_bedeh_be_kharidar.RecordCount =0 then
  MessageBox(Handle,'Œ—Ìœ«—Ì »—«Ì «’·«Õ »œÂÌ Ê ÿ·» ò· ÊÃÊœ ‰œ«—œ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin
  if R_bedehi_typ_.ItemIndex=1 then
  begin
    if(DataM_final.ADOQ_bedeh_be_kharidarbedeh.AsFloat<StrToFloat(e_bedeh.Text))then
      MessageBox(Handle,'„»·€ Ê«—œ ‘œÂ »—«Ì ò”— ‘œ‰ «“ »œÂ »Ì‘ — «“ „»·€ »œÂ „Ì »«‘œ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
    else
    begin
      {DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh-'+e_bedeh.Text;
      DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:=DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text+
      ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString);
      DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL;}

      frm_main.l_last_op.Caption:='ò„ ‘œ‰ «“ »œÂÌ »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;

      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[0].Value:=DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;//@shahrforoshande nvarchar(50),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[1].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[2].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[3].Value:=DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString;//@code  float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[4].Value:='kharidar';//@type nvarchar(50),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[5].Value:=' »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+auto_tozih;//@amaliat nvarchar(1000),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[6].Value:=12;//@par float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[7].Value:=(StrToFloat(e_bedeh.Text)*-1);//@bedeh float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[8].Value:=0;//@talab float
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[9].Value:=auto_tozih+' '+m_tozih.Text;//@tozih nvarchar(1000),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[10].Value:='ò„ ‘œ‰ «“ »œÂÌ';//@type2 float
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.ExecProc;

      {sabte_tozihe_eslahe_bedehie_kharidar(auto_tozih,'ò„ ‘œ‰ «“ »œÂÌ');


      frm_main.sabte_amaliat(' »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+auto_tozih);}

      showallbedehkarha;
      MessageBox(Handle,'„»·€ »œÂ ò· Œ—Ìœ«— «’·«Õ ê—œÌœ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
      DataM_final.ADOQ_bedeh_be_kharidar.Locate('code_shakhs',l_review.Caption,[loPartialKey]);
      e_bedeh.Clear;
    end;

  end
  else
  begin
    {DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:='update T_bede_kol_be_kharidar set bedeh=bedeh+'+e_bedeh.Text;

    DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text:=DataM_final.ADOQ_bedeh_be_kharidar2.SQL.Text+
    ' where shahrforoshande='+QuotedStr(DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString);
    DataM_final.ADOQ_bedeh_be_kharidar2.ExecSQL; }

     frm_main.l_last_op.Caption:='«÷«›Â ‘œ‰ »Â »œÂÌ »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;    

      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[0].Value:=DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;//@shahrforoshande nvarchar(50),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[1].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[2].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[3].Value:=DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString;//@code  float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[4].Value:='kharidar';//@type nvarchar(50),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[5].Value:=' »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+auto_tozih;//@amaliat nvarchar(1000),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[6].Value:=11;//@par float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[7].Value:=(StrToFloat(e_bedeh.Text));//@bedeh float,
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[8].Value:=0;//@talab float
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[9].Value:=auto_tozih+' '+m_tozih.Text;//@tozih nvarchar(1000),
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.Parameters[10].Value:='«÷«›Â ‘œ‰ »Â »œÂÌ';//@type2 float
      DataM_sp.ADOStoredProc_tagire_bestankar_bedehkar.ExecProc;

    {sabte_tozihe_eslahe_bedehie_kharidar(auto_tozih,'«÷«›Â ‘œ‰ »Â »œÂÌ');


    frm_main.sabte_amaliat(' »—«Ì Œ—Ìœ«— '+DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString+auto_tozih);}

    showallbedehkarha;
    MessageBox(Handle,'„»·€ »œÂ ò· Œ—Ìœ«— «’·«Õ ê—œÌœ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);    
    DataM_final.ADOQ_bedeh_be_kharidar.Locate('code_shakhs',l_review.Caption,[loPartialKey]);

    e_bedeh.Clear;
  end;

end
end;


procedure Tfrm_eslahe_bedehi_kharidaran.showallbedehkarha;
begin
  {DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='select * from T_bede_kol_be_kharidar '+
  ' where type_='+QuotedStr('Œ—Ìœ«—')+' or type_='+QuotedStr('Œ—Ìœ«—/›—Ê‘‰œÂ')+
  ' order by shahrforoshande';
  DataM_final.ADOQ_bedeh_be_kharidar.Open; }

  DataM_final.ADOQ_bedeh_be_kharidar.SQL.Text:='select code_shakhs,shahrforoshande,'+
  ' sum(bedehkar)as bedeh,sum(bestankar)as talab from '+
  ' T_bestankar_bedehkar_kharidar '+
  ' group by code_shakhs,shahrforoshande order by shahrforoshande';
  DataM_final.ADOQ_bedeh_be_kharidar.Open;

end;



procedure Tfrm_eslahe_bedehi_kharidaran.FormShow(Sender: TObject);
begin
  esearch.Text:='';
  esearch.SetFocus;

  e_cod.Clear;

  tarikh:=frm_main.L_tarikh.Caption;

  auto_tozih:='';
  e_bedeh.Clear;
  E_talab.Clear;
  m_tozih.Clear;
  
  RadioGroup1.ItemIndex:=0;
  type_eslah;

  R_bedehi_typ_.ItemIndex:=0;
  R_talab_typ_.ItemIndex:=0;

  showallbedehkarha;
end;

procedure Tfrm_eslahe_bedehi_kharidaran.esearchChange(Sender: TObject);
begin
 DataM_final.ADOQ_bedeh_be_kharidar.Locate('shahrforoshande',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_eslahe_bedehi_kharidaran.e_bedehKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_bedehi_kharidaran.E_talabKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_bedehi_kharidaran.RadioGroup1Click(Sender: TObject);
begin
  type_eslah;
end;

procedure Tfrm_eslahe_bedehi_kharidaran.B_bedehClick(Sender: TObject);
begin
if DataM_final.ADOQ_bedeh_be_kharidar.RecordCount>0 then
begin
  if (trim(e_bedeh.Text)='')  then
    e_bedeh.Text:='0';
  if StrToFloat(e_bedeh.Text)=0 then
    MessageBox(Handle,'„»·€ «÷«›Â / ò”— ‘Ê‰œÂ »Â/«“ »œÂÌ —« Ê«—œ ‰„«ÌÌœ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
   begin
    l_review.Caption:=DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString;
        update_bedehi;

   end;
end;   
end;

procedure Tfrm_eslahe_bedehi_kharidaran.b_talabClick(Sender: TObject);
begin
if DataM_final.ADOQ_bedeh_be_kharidar.RecordCount>0 then
begin
  if (trim(E_talab.Text)='')  then
      E_talab.Text:='0';
  if StrToFloat(E_talab.Text)=0 then
    MessageBox(Handle,'„»·€ «÷«›Â / ò”— ‘Ê‰œÂ »Â/«“ ÿ·» —« Ê«—œ ‰„«ÌÌœ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
    l_review.Caption:=DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString;
        update_talab;

  end;
end;  
end;

procedure Tfrm_eslahe_bedehi_kharidaran.b_set_doClick(Sender: TObject);
begin
if DataM_final.ADOQ_bedeh_be_kharidar.RecordCount>0 then
begin
  l_review.Caption:=DataM_final.ADOQ_bedeh_be_kharidarcode_shakhs.AsString;
   set_talab_with_bedehi;
 //  DataM_final.ADOQ_bedeh_be_kharidar.Locate('code_shakhs',l_review.Caption,[loPartialKey]);
//   MessageBox(Handle,'„»·€ ÿ·» ò· Ê „»·€ »œÂÌ ò· «’·«Õ ê—œÌœ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;
end;

procedure Tfrm_eslahe_bedehi_kharidaran.e_bedehChange(Sender: TObject);
begin
if e_bedeh.Text<>'' then
begin
  if R_bedehi_typ_.ItemIndex=0 then
    auto_tozih:=' „»·€ '+e_bedeh.Text+' »Â »œÂÌ ò· = '+DBText1.Caption+' «÷«›Â ‘œ '+'('+'»œÂÌ ò· = '+FloatToStr(StrToFloat(DBText1.Caption)+StrToFloat(e_bedeh.Text))+')'
  else
    auto_tozih:=' „»·€ '+e_bedeh.Text+' «“ »œÂÌ ò· = '+DBText1.Caption+ ' ò„ ‘œ '+'('+'»œÂÌ ò· = '+FloatToStr(StrToFloat(DBText1.Caption)-StrToFloat(e_bedeh.Text))+')';
end;
end;

procedure Tfrm_eslahe_bedehi_kharidaran.E_talabChange(Sender: TObject);
begin
if E_talab.Text<>'' then
begin
  if R_talab_typ_.ItemIndex=0 then
    auto_tozih:=' „»·€ '+E_talab.Text+' »Â ÿ·» ò· = ' +DBText2.Caption+' «÷«›Â ‘œ '+'('+'ÿ·» ò· = '+FloatToStr(StrToFloat(DBText2.Caption)+StrToFloat(E_talab.Text))+')'
  else
    auto_tozih:=' „»·€ '+E_talab.Text+' «“ ÿ·» ò· = '+DBText2.Caption+ ' ò„ ‘œ '+'('+'ÿ·» ò· = '+FloatToStr(StrToFloat(DBText2.Caption)-StrToFloat(E_talab.Text))+')';
end;
end;

procedure Tfrm_eslahe_bedehi_kharidaran.b_joziatClick(Sender: TObject);
var s:string;
begin
  s:=DataM_final.ADOQ_bedeh_be_kharidarshahrforoshande.AsString;
  frm_joziate_eslahe_bedehe_kharidar.show_slahat_for_bedehe_kharidar(s);

  frm_joziate_eslahe_bedehe_kharidar.ShowModal;

end;

procedure Tfrm_eslahe_bedehi_kharidaran.R_bedehi_typ_Click(
  Sender: TObject);
begin
if e_bedeh.Text<>'' then
begin
  if R_bedehi_typ_.ItemIndex=0 then
    auto_tozih:=' „»·€ '+e_bedeh.Text+' »Â »œÂÌ ò· = '+DBText1.Caption+' «÷«›Â ‘œ '+'('+'»œÂÌ ò· = '+FloatToStr(StrToFloat(DBText1.Caption)+StrToFloat(e_bedeh.Text))+')'
  else
    auto_tozih:=' „»·€ '+e_bedeh.Text+' «“ »œÂÌ ò· = '+DBText1.Caption+ ' ò„ ‘œ '+'('+'»œÂÌ ò· = '+FloatToStr(StrToFloat(DBText1.Caption)-StrToFloat(e_bedeh.Text))+')';
end;
end;

procedure Tfrm_eslahe_bedehi_kharidaran.R_talab_typ_Click(Sender: TObject);
begin
if E_talab.Text<>'' then
begin
  if R_talab_typ_.ItemIndex=0 then
    auto_tozih:=' „»·€ '+E_talab.Text+' »Â ÿ·» ò· = ' +DBText2.Caption+' «÷«›Â ‘œ '+'('+'ÿ·» ò· = '+FloatToStr(StrToFloat(DBText2.Caption)+StrToFloat(E_talab.Text))+')'
  else
    auto_tozih:=' „»·€ '+E_talab.Text+' «“ ÿ·» ò· = '+DBText2.Caption+ ' ò„ ‘œ '+'('+'ÿ·» ò· = '+FloatToStr(StrToFloat(DBText2.Caption)-StrToFloat(E_talab.Text))+')';
end; 
end;

procedure Tfrm_eslahe_bedehi_kharidaran.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
   DataM_final.ADOQ_bedeh_be_kharidar.Locate('code_shakhs',e_cod.Text,[loPartialKey]); 
end;

procedure Tfrm_eslahe_bedehi_kharidaran.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
