unit unt_eslahe_jens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, SUIDBCtrls, ExtCtrls;

type
  Tfrm_eslahe_jens = class(TForm)
    Label7: TLabel;
    Label1: TLabel;
    esearch: TEdit;
    Edit2: TEdit;
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    RadioGroup1: TRadioGroup;
    Label11: TLabel;
    E_name: TEdit;
    Label13: TLabel;
    e_cod_tolidi: TEdit;
    Label2: TLabel;
    e_barcod: TEdit;
    Button2: TButton;
    Button12123: TButton;
    l_id_view: TLabel;
    procedure cod_jans;
    procedure name_jans;
    procedure type_;
    procedure FormShow(Sender: TObject);
    procedure Button12123Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure update_jens;

    function check_exsists_jens_with_same_name:boolean;
    procedure RadioGroup1Click(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure e_cod_tolidiChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_jens: Tfrm_eslahe_jens;

implementation

uses Untdmlistha, unt_datam_sp_eslahe_forosh, unt_main;

{$R *.dfm}
procedure Tfrm_eslahe_jens.update_jens;
begin

  frm_main.l_last_op.Caption:=' «’·«Õ „‘Œ’«  Ã‰” '+Dmlistha.ADOQuery_show_jens_gr_by_codcalaname.AsString;

  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_jens.Parameters[0].Value:=Dmlistha.ADOQuery_show_jens_gr_by_codcalaname.AsString;//@name_gadim nvarchar(50),
  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_jens.Parameters[1].Value:=trim(E_name.Text);//@name_jadid nvarchar(50),

  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_jens.Parameters[2].Value:=trim(e_barcod.Text);//@barcod_jadid  nvarchar(20),
  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_jens.Parameters[3].Value:=trim(e_cod_tolidi.Text);//@code_sherkati_jadid nvarchar(15),

  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_jens.Parameters[4].Value:=Dmlistha.ADOQuery_show_jens_gr_by_codcalacod.AsString;//@code float,

  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_jens.Parameters[5].Value:=Dmlistha.ADOQuery_show_jens_gr_by_codshakhs_sherkat.AsString;//@shakhs_sherkat nvarchar(50),  

  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_jens.Parameters[6].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_jens.Parameters[7].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

  datam_sp_eslahe_forosh.ADOStoredProc_eslahe_jens.Parameters[8].Value:=frm_main.l_last_op.Caption+' »Â '+trim(E_name.Text)+' òœ ‘—ò Ì »Â '+
  e_cod_tolidi.Text+' »«— òœ »Â'+e_barcod.Text;//@amaliat nvarchar(1000)
    datam_sp_eslahe_forosh.ADOStoredProc_eslahe_jens.ExecProc;


  type_;

  MessageBox(Handle,'„‘Œ’«  ÃœÌœ Ã‰” –ŒÌ—Â ‘œ',' ÊÃÂ!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end;

function Tfrm_eslahe_jens.check_exsists_jens_with_same_name:boolean;
var pc:pchar;
begin
  check_exsists_jens_with_same_name:=false;

    Dmlistha.ADOlistanbarforosh2.SQL.Text:='select * from Tanbar_jens_kolli where calaname='+QuotedStr(trim(E_name.Text))+
    ' and calaname<>'+QuotedStr(Dmlistha.ADOQuery_show_jens_gr_by_codcalaname.AsString);
    Dmlistha.ADOlistanbarforosh2.Open;


  if Dmlistha.ADOlistanbarforosh2.RecordCount> 0 then
  begin
    check_exsists_jens_with_same_name:=true;

    pc:=pchar(' ‰«„ Ê«—œ ‘œÂ »—«Ì Ã‰”° »« ‰«„ Ã‰” œÌê—Ì »« „‘Œ’«  << '+Dmlistha.ADOlistanbarforosh2calaname.AsString+' Ê òœ Ã‰” : '+Dmlistha.ADOlistanbarforosh2calacod.AsString+' >> Ìò”«‰ „Ì »«‘œ');

    MessageBox(Handle,pc,'Œÿ« !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    Exit;
  end;
////////////////////////////////////////////////

  {Dmlistha.ADOlistanbarforosh2.SQL.Text:='select * from Tanbar_jens_kolli where code_sherkati='+QuotedStr(trim(e_cod_tolidi.Text))+
  ' and calaname<>'+QuotedStr(Dmlistha.ADOQuery_show_jens_gr_by_codcalaname.AsString);
  Dmlistha.ADOlistanbarforosh2.Open;

  if Dmlistha.ADOlistanbarforosh2.RecordCount> 0 then
  begin
    check_exsists_jens_with_same_name:=true;

    pc:=pchar(' òœ ‘—ò Ì( Ê·ÌœÌ) Ê«—œ ‘œÂ »—«Ì Ã‰”° »« òœ ‘—ò Ì( Ê·ÌœÌ) Ã‰” œÌê—Ì »« „‘Œ’«  << '+Dmlistha.ADOlistanbarforosh2calaname.AsString+ ' òœ ‘—ò Ì : '+Dmlistha.ADOlistanbarforosh2code_sherkati.AsString+' Ê òœ Ã‰” : '+Dmlistha.ADOlistanbarforosh2calacod.AsString+' >> Ìò”«‰ „Ì »«‘œ');

    MessageBox(Handle,pc,'Œÿ« !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    Exit;
  end; }
////////////////////////////////////////////////

  if (Trim(e_barcod.Text)<>'') then
  begin
    Dmlistha.ADOlistanbarforosh2.SQL.Text:='select * from Tanbar_jens_kolli where barcod='+QuotedStr(trim(e_barcod.Text))+
    ' and calaname<>'+QuotedStr(Dmlistha.ADOQuery_show_jens_gr_by_codcalaname.AsString);
    Dmlistha.ADOlistanbarforosh2.Open;

    if Dmlistha.ADOlistanbarforosh2.RecordCount> 0 then
    begin
      check_exsists_jens_with_same_name:=true;

      pc:=pchar('  »«—òœ Ê«—œ ‘œÂ »—«Ì Ã‰”° »« »«—òœ Ã‰” œÌê—Ì »« „‘Œ’«  << '+Dmlistha.ADOlistanbarforosh2calaname.AsString+ ' òœ ‘—ò Ì : '+Dmlistha.ADOlistanbarforosh2code_sherkati.AsString+' Ê òœ Ã‰” : '+Dmlistha.ADOlistanbarforosh2calacod.AsString+' >> Ìò”«‰ „Ì »«‘œ');

      MessageBox(Handle,pc,'Œÿ« !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
      Exit;
    end;
  end;
end;



procedure Tfrm_eslahe_jens.cod_jans;
begin
  Dmlistha.ADOQuery_show_jens_gr_by_cod.SQL.Text:='select calaname,shakhs_sherkat,calacod from Tanbar_jens_kolli '+
  ' group by calacod,calaname,shakhs_sherkat order by calacod,calaname,shakhs_sherkat';
  Dmlistha.ADOQuery_show_jens_gr_by_cod.Open;

end;


procedure Tfrm_eslahe_jens.name_jans;
begin
  Dmlistha.ADOQuery_show_jens_gr_by_cod.SQL.Text:='select calaname,shakhs_sherkat,calacod from Tanbar_jens_kolli'+
  ' group by calacod,calaname,shakhs_sherkat  order by calaname,calacod,shakhs_sherkat';
  Dmlistha.ADOQuery_show_jens_gr_by_cod.Open;
end;

procedure Tfrm_eslahe_jens.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
  type_;

  esearch.Clear;

  Edit2.Clear;

  esearch.SetFocus;

end;

procedure Tfrm_eslahe_jens.type_;
begin
 if RadioGroup1.ItemIndex=0 then
  name_jans;
 if RadioGroup1.ItemIndex=1 then
  cod_jans;
end;

procedure Tfrm_eslahe_jens.Button12123Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_eslahe_jens.Button2Click(Sender: TObject);
begin
  if Dmlistha.ADOQuery_show_jens_gr_by_cod.RecordCount > 0 then
  begin
    l_id_view.Caption:=Dmlistha.ADOQuery_show_jens_gr_by_codcalaname.AsString;
    if trim(E_name.Text)='' then
    begin
      MessageBox(Handle,'‰«„ ÃœÌœ »—«Ì Ã‰” »«Ìœ Ê«—œ ‘Êœ','Œÿ« !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
      E_name.SetFocus;
    end
    else
     if not check_exsists_jens_with_same_name then
     begin
       update_jens;
     end;

     Dmlistha.ADOQuery_show_jens_gr_by_cod.Locate('calaname',l_id_view.Caption,[loPartialKey]);
  end
  else
    MessageBox(Handle,'Ã‰”Ì »—«Ì ÊÌ—«Ì‘ „‘Œ’«  ÊÃÊœ ‰œ«—œ','Œÿ« !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
end;

procedure Tfrm_eslahe_jens.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

procedure Tfrm_eslahe_jens.esearchChange(Sender: TObject);
begin
 Dmlistha.ADOQuery_show_jens_gr_by_cod.Locate('calaname',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_eslahe_jens.Edit2Change(Sender: TObject);
begin
if trim(Edit2.Text)<>'' then
 Dmlistha.ADOQuery_show_jens_gr_by_cod.Locate('calacod',Edit2.Text,[loPartialKey]);
end;

procedure Tfrm_eslahe_jens.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_jens.e_cod_tolidiChange(Sender: TObject);
begin
  e_cod_tolidi.Text:=UpperCase(e_cod_tolidi.Text);
end;

end.
