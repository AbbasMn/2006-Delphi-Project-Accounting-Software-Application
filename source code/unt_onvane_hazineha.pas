unit unt_onvane_hazineha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, StdCtrls, te_controls, DB;

type
  Tfrm_onvane_hazineha = class(TForm)
    gr_onvan: TGroupBox;
    Label2: TLabel;
    GroupBox5: TGroupBox;
    suiDBGrid2: TsuiDBGrid;
    E_onvan: TTeMemo;
    Button1: TButton;
    DataSource1: TDataSource;
    Button2: TButton;
    L_type: TLabel;
    Button3: TButton;
    function exists_onvane_hazine:boolean;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_onvane_hazineha: Tfrm_onvane_hazineha;

implementation

uses unt_DataM_hazineha, unt_datamodule1, unt_eslah_forosh,
  Unt_DataModule_gozaresh_tarkibi, unt_DataM_final;



{$R *.dfm}

function Tfrm_onvane_hazineha.exists_onvane_hazine:boolean;
begin
  exists_onvane_hazine:=false;
  DataM_hazineha.ADOQ_onvane_hazineha2.SQL.Text:='select * from t_onvane_hazineha where onvane_hazine='+
  QuotedStr(trim(E_onvan.Text));

  if L_type.Caption<>'jadid' then
  begin
   DataM_hazineha.ADOQ_onvane_hazineha2.SQL.Text:=DataM_hazineha.ADOQ_onvane_hazineha2.SQL.Text+
   ' and onvane_hazine<>'+QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString);
  end;

  DataM_hazineha.ADOQ_onvane_hazineha2.Open;

  if DataM_hazineha.ADOQ_onvane_hazineha2.RecordCount>0 then
  begin
    exists_onvane_hazine:=true;
    MessageBox(Handle,'⁄‰Ê«‰ Ê«—œ ‘œÂ ﬁ»·« À»  ‘œÂ «” ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
  end;
end;

procedure Tfrm_onvane_hazineha.FormShow(Sender: TObject);
begin
  if L_type.Caption='jadid' then
  begin
    gr_onvan.Caption:='  À»  ⁄‰Ê«‰ Â“Ì‰Â ÃœÌœ  ';
  end
  else
  begin
    gr_onvan.Caption:='  «’·«Õ ⁄‰Ê«‰ Â“Ì‰Â «‰ Œ«»Ì  ';  
  end;
  DataM_hazineha.ADOQ_onvane_hazineha1.SQL.Text:='select * from t_onvane_hazineha order by onvane_hazine';
  DataM_hazineha.ADOQ_onvane_hazineha1.Open;
  E_onvan.Clear;  
end;

procedure Tfrm_onvane_hazineha.Button1Click(Sender: TObject);
var s,id:string;
begin

  if Trim(E_onvan.Text)='' then
  begin
    MessageBox(Handle,'⁄‰Ê«‰ Â“Ì‰Â ÃœÌœ —« Ê«—œ ‰„«ÌÌœ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
  end
  else
  if not exists_onvane_hazine then
  begin
   if  L_type.Caption='jadid' then
   begin
    DataM_hazineha.ADOQ_onvane_hazineha1.SQL.Text:='begin tran insert into t_onvane_hazineha(onvane_hazine)'+
    ' values('+QuotedStr(trim(E_onvan.Text))+')'+' commit tran';
    DataM_hazineha.ADOQ_onvane_hazineha1.ExecSQL;

    DataM_hazineha.ADOQ_onvane_hazineha1.SQL.Text:='select * from t_onvane_hazineha order by id,onvane_hazine';
    DataM_hazineha.ADOQ_onvane_hazineha1.Open;

    E_onvan.Clear;

    MessageBox(Handle,'⁄‰Ê«‰ Â“Ì‰Â ÃœÌœ –ŒÌ—Â ê—œÌœ',' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
    frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',5000);
   end
   else
   begin
    if DataM_hazineha.ADOQ_onvane_hazineha1.RecordCount>0 then
    begin
      s:=DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString;
      id:=DataM_hazineha.ADOQ_onvane_hazineha1id.AsString;

      DataM_hazineha.ADOQ_onvane_hazineha1.SQL.Text:='begin tran update t_onvane_hazineha set onvane_hazine='+
      QuotedStr(trim(E_onvan.Text))+' where onvane_hazine='+QuotedStr(s);


      DataM_hazineha.ADOQ_onvane_hazineha1.SQL.Text:=DataM_hazineha.ADOQ_onvane_hazineha1.SQL.Text+
      '   update T_Hazine_Anjirestan set calaname='+QuotedStr(trim(E_onvan.Text))+' where calaname='+QuotedStr(s)+
      '  commit tran';


      DataM_hazineha.ADOQ_onvane_hazineha1.ExecSQL;

      DataM_hazineha.ADOQ_onvane_hazineha1.SQL.Text:='select * from t_onvane_hazineha order by onvane_hazine';
      DataM_hazineha.ADOQ_onvane_hazineha1.Open;

      DataM_hazineha.ADOQ_onvane_hazineha1.Locate('id',id,[loPartialKey]);

      E_onvan.Clear;

      MessageBox(Handle,'⁄‰Ê«‰ Â“Ì‰Â «‰ Œ«»Ì «’·«Õ ê—œÌœ',' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
      //frm_eslah_forosh.waiting('·ÿ›« „‰ Ÿ— »„«‰Ìœ !',5000);
    end
    else
      MessageBox(Handle,'⁄‰Ê«‰ Â“Ì‰Â »—«Ì ÊÌ—«Ì‘ ÊÃÊœ ‰œ«—œ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
   end;

  end;


end;

procedure Tfrm_onvane_hazineha.Button3Click(Sender: TObject);
begin

    if DataM_hazineha.ADOQ_onvane_hazineha1.RecordCount>0 then
    begin
      //DataM_hazineha.ADOQ_show_hame_hazine_ha.SQL.Text:='select * from t_hazineha where onvane_hazine='+
      //QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString);

      DataM_hazineha.ADOQuery1.SQL.Text:='select * from T_Hazine_Anjirestan where calaname='+
      QuotedStr(DataM_hazineha.ADOQ_onvane_hazineha1onvane_hazine.AsString);

      DataM_hazineha.ADOQuery1.Open;

      if DataM_hazineha.ADOQuery1.RecordCount>0 then
        MessageBox(Handle,'»œ·Ì· «Ì‰òÂ Â“Ì‰Â «Ì /Â“Ì‰Â Â«ÌÌ »« ⁄‰Ê«‰ «‰ Œ«»Ì À»  ‘œÂ «‰œ ‰„Ì  Ê«‰Ìœ ⁄‰Ê«‰ Â“Ì‰Â —« Õ–› ‰„«ÌÌœ.»—«Ì Õ–› ⁄‰Ê«‰ »«Ìœ «» œ« «Ì‰ Â“Ì‰Â Â« —« Õ–› ‰„«ÌÌœ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
      else
      begin
        DataM_hazineha.ADOQ_onvane_hazineha1.Delete;
        DataM_hazineha.ADOQ_onvane_hazineha1.SQL.Text:='select * from t_onvane_hazineha order by onvane_hazine';
        DataM_hazineha.ADOQ_onvane_hazineha1.Open;
        MessageBox(Handle,'⁄‰Ê«‰ Â“Ì‰Â «‰ Œ«»Ì Õ–› ê—œÌœ.',' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
      end;
    end
    else
      MessageBox(Handle,'⁄‰Ê«‰ Â“Ì‰Â »—«Ì Õ–› ÊÃÊœ ‰œ«—œ','Œÿ«!',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
end;

procedure Tfrm_onvane_hazineha.Button2Click(Sender: TObject);
begin
  close;
end;

end.
