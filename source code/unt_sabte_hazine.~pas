unit unt_sabte_hazine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, SUIDBCtrls, StdCtrls, ExtCtrls, DBCtrls;

type
  Tfrm_sabte_hazine = class(TForm)
    GroupBox5: TGroupBox;
    suiDBGrid2: TsuiDBGrid;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    RadioGroup11: TRadioGroup;
    E_tarikh: TEdit;
    Label7: TLabel;
    Memo1: TMemo;
    E_mablag: TEdit;
    L_bes: TLabel;
    Button2: TButton;
    Button1: TButton;
    Label2: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DataSource3: TDataSource;
    GroupBox2: TGroupBox;
    suiDBGrid1: TsuiDBGrid;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    E_name: TEdit;
    Label10: TLabel;
    e_cod: TEdit;
    DataSource2: TDataSource;
    suiDBGrid3: TsuiDBGrid;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbl_anjirestan: TLabel;
    lbl_hazine: TLabel;
    lbl_hazine_be: TLabel;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup11Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure E_mablagKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure E_nameChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure e_codChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sabte_hazine: Tfrm_sabte_hazine;

implementation

uses unt_login, Taghvim, unt_DataM_hazineha,
  Unt_DataModule_gozaresh_tarkibi, unt_gozaresh_az_sandog, unt_main,
  unt_khoroj_az_sandog, unt_eslah_forosh, Unt_mmoshakhasat_shakhs,
  unt_datamodule1, Untdmlistha, Untdmanbarexit, Untviewanbar;

{$R *.dfm}

procedure Tfrm_sabte_hazine.FormShow(Sender: TObject);
begin
 Dmlistha.ADOQuery_vahed.SQL.Text:='select * from t_vahed order by vahed';
 Dmlistha.ADOQuery_vahed.Open;

 

  DataModule1.ADOQuery3.SQL.Text:='select * from  t_shahr_foroshande where type_<>'+QuotedStr('Œ—Ìœ«—')+
  ' and type_ not like '+QuotedStr('%Œ—Ìœ«—/›—Ê‘‰œÂ%')+' and type_ not like '+QuotedStr('%›—Ê‘‰œÂ%')+
  ' and type_ <>'+QuotedStr('«‰ÃÌ—” «‰')+
  ' order by shahrforoshande';
  DataModule1.ADOQuery3.Open;


 DataModule1.ADOQuery4.SQL.Text:='select * from  t_shahr_foroshande where type_ ='+QuotedStr('«‰ÃÌ—” «‰')+
  ' order by shahrforoshande';
  DataModule1.ADOQuery4.Open;



  E_name.Clear;
  e_cod.Clear;
  e_cod.SetFocus;


    DataM_hazineha.ADOQ_onvane_hazineha1.SQL.Text:='select * from t_onvane_hazineha order by onvane_hazine';
    DataM_hazineha.ADOQ_onvane_hazineha1.Open;

  DataModule_gozaresh_tarkibi.ADOQuery_sandog.SQL.Text:='select * from T_sandog_name where sandog<>'+QuotedStr('»—œ«‘  „ ›—ﬁÂ')+
      ' order by sandog';

  DataModule_gozaresh_tarkibi.ADOQuery_sandog.Open;


  RadioGroup11.ItemIndex:=0;
  E_tarikh.Text:=Frm_login.Egettarikh.Text;

  Memo1.Text:='';
  E_mablag.Clear;
end;

procedure Tfrm_sabte_hazine.RadioGroup11Click(Sender: TObject);
begin
if RadioGroup11.ItemIndex=1 then
  Begin
    _taghvim.ShowModal;
    E_tarikh.Text:=_taghvim._str_date;
    if E_tarikh.Text='' then
      E_tarikh.Text:=Frm_login.Egettarikh.Text;
  end
  else
  E_tarikh.Text:=Frm_login.Egettarikh.Text;
end;

procedure Tfrm_sabte_hazine.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_sabte_hazine.E_mablagKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_sabte_hazine.Button1Click(Sender: TObject);
var mojodi:real;
    time_:string;
begin


  time_:=frm_main.LMDClock1.Digital.Caption;

  if (lbl_anjirestan.Caption='')or(lbl_hazine.Caption='')or(lbl_hazine_be.Caption='')or(DBLookupComboBox3.Text='')or(trim(E_mablag.Text)='') or(E_tarikh.Text='')or(trim(E_mablag.Text)='0') then
    MessageBox(Handle,'‰«„ «‰ÃÌ—” «‰° ⁄‰Ê«‰ Â“Ì‰Â° ‘Œ’ œ—Ì«›  ò‰‰œÂ Â“Ì‰Â Ê  «—ÌŒ À»  Â“Ì‰Â Ê „»·€ Â“Ì‰Â Ê. ’‰œÊﬁ »—«Ì Å—œ«Œ  Â“Ì‰Â »«Ìœ Ê«—œ ‘Ê‰œ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
  begin

     mojodi:=Frm_gozaresh_az_sandog.mojodi_kol(DBLookupComboBox3.Text);

      if mojodi<StrToFloat(E_mablag.Text) then
      begin
        MessageBox(Handle,pchar('„»·€ Ê«—œ ‘œÂ «“ „ÊÃÊœÌ ›⁄·Ì ’‰œÊﬁ «‰ Œ«»Ì << '+FloatToStr(mojodi)+' >> »Ì‘ — „Ì »«‘œ'),'Œÿ«! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
        Exit;
      end;

        DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.SQL.Text:='begin tran insert into T_Hazine_Anjirestan (sandog,time_,calaname,shakhs_sherkat,tarikhedit,vahed_jozi,'+
  'geymatforosh_koli,code_sherkati,barcod)'+
  ' values ('+ QuotedStr(DBLookupComboBox3.Text)+','+QuotedStr(time_)+
  ','+QuotedStr(lbl_hazine.Caption)+','+QuotedStr(lbl_anjirestan.Caption)+','+QuotedStr(E_tarikh.Text) +
  ','+QuotedStr(DBLookupComboBox2.Text)+','+trim(E_mablag.Text)+','+QuotedStr(lbl_hazine_be.Caption)+','+QuotedStr(Memo1.Text)+')'+


    '  insert into T_vorod_khoroj_sandogha(time_,tozih,type,tarikh,mablag,sandog)'+
    'values('+QuotedStr(time_)+','+QuotedStr(' Å—œ«Œ  Â“Ì‰Â '+lbl_hazine.Caption+' »—«Ì «‰ÃÌ—” «‰ '+lbl_anjirestan.Caption+' »Â '+
    lbl_hazine_be.Caption+'  Ê÷ÌÕ« :  '+Memo1.Text)+
    ','+QuotedStr('Œ—ÊÃÌ')+
    ','+QuotedStr(E_tarikh.Text)+','+E_mablag.Text+
    ','+QuotedStr(DBLookupComboBox3.Text)+')'+' commit tran';

  DataModule_gozaresh_tarkibi.ADOQuery_show_pish_forosh.ExecSQL;


  

    {DataM_hazineha.ADOQ_show_hame_hazine_ha.SQL.Text:='begin tran insert into t_hazineha(onvane_hazine,mablag,sharh,tarikh,sandog,time_)'+
    ' values('+QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString)+
    ','+E_mablag.Text+','+QuotedStr(trim(Memo1.Text))+','+QuotedStr(E_tarikh.Text)+','+QuotedStr(DBLookupComboBox3.Text)+','+QuotedStr(time_)+')';

     DataM_hazineha.ADOQ_show_hame_hazine_ha.SQL.Text:=DataM_hazineha.ADOQ_show_hame_hazine_ha.SQL.Text+
     '  insert into T_vorod_khoroj_sandogha(time_,tozih,type,tarikh,mablag,sandog)'+
    'values('+QuotedStr(time_)+','+QuotedStr(' Å—œ«Œ  »—«Ì Â“Ì‰Â '+DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString+' '+Memo1.Text)+
    ','+QuotedStr('Œ—ÊÃÌ')+
    ','+QuotedStr(E_tarikh.Text)+','+E_mablag.Text+
    ','+QuotedStr(DBLookupComboBox3.Text)+')'+' commit tran';

    DataM_hazineha.ADOQ_show_hame_hazine_ha.ExecSQL;  }

    MessageBox(Handle,'Â“Ì‰Â Ê«—œ ‘œÂ À»  ê—œÌœ',' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);

    Memo1.Clear;
    E_mablag.Clear;
    //frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',5000);
  end;  
end;

procedure Tfrm_sabte_hazine.E_nameChange(Sender: TObject);
begin
  DataModule1.ADOQuery3.Locate('shahrforoshande',E_name.Text,[loPartialKey]);
end;

procedure Tfrm_sabte_hazine.e_codKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_sabte_hazine.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

end.
