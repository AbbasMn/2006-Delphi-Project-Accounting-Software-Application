unit unt_pardakht_shoma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, DBCtrls, ExtCtrls, SUIForm, DB, Grids,
  DBGrids, SUIDBCtrls;

type
  TFrm_pardakht_shoma = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    suiButton7: TsuiButton;
    suiButton6: TsuiButton;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    dbsal2: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    dbsal: TDBLookupComboBox;
    scmah: TComboBox;
    GroupBox3: TGroupBox;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    E_name: TEdit;
    suiDBGrid1: TsuiDBGrid;
    Label4: TLabel;
    Label8: TLabel;
    e_cod: TEdit;
    RadioGroup2: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure gotoprint;
    procedure suiButton7Click(Sender: TObject);
    procedure check;
    procedure suiButton6Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure E_nameChange(Sender: TObject);
    procedure e_codChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pardakht_shoma: TFrm_pardakht_shoma;

implementation

uses unt_datamodule1, Unt_prinr_tasfie, unt_login, Unt_search,
  Unt_mmoshakhasat_shakhs;

{$R *.dfm}
procedure TFrm_pardakht_shoma.check;
var st:pchar;
begin
    if RadioGroup1.ItemIndex=0 then
     begin
       DataModule1.ADOpardakhtbedehi.SQL.Text:='select * from t_pardakht_bedehi where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);

       DataModule1.ADOpardakhtbedehi.Open;
       if  DataModule1.ADOpardakhtbedehi.RecordCount <=0 then
        begin
          st:=pchar('‘„« »Â ‘Œ’'+'<< '+DataModule1.ADOQuery3shahrforoshande.AsString+' >>'+'œ— ÿÊ· ò· ”« ·Â« '+'Å—œ«Œ Ì ‰œ«‘ Â «Ìœ.');
          MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
        end
       else
        begin
          Frm_prinr_tasfie.QRLabel_type.Caption:='œ— ò· ”«·Â« ';
          Frm_prinr_tasfie.QRLtarikh.Caption :=frm_login.Egettarikh.Text ;
          gotoprint;
        end;

     end;
   if RadioGroup1.ItemIndex=1 then
     begin
     if (dbsal2.Text='') then
       MessageBox(Handle,'„‘Œ’«  “„«‰Ì Å—œ«Œ  «‰ Œ«» ‰‘œÂ «‰œ ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
     else
      begin
         DataModule1.ADOpardakhtbedehi.SQL.Text:='select * from t_pardakht_bedehi where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
         ' and tarikh like '+QuotedStr(dbsal2.Text+'%')+' order by tarikh';

         DataModule1.ADOpardakhtbedehi.Open;
       if  DataModule1.ADOpardakhtbedehi.RecordCount <=0 then
         begin
          st:=pchar('‘„« »Â ‘Œ’'+'<< '+DataModule1.ADOQuery3shahrforoshande.AsString+' >>'+'œ— ÿÊ·  «—ÌŒ ”«·'+' << '+dbsal2.Text +' >>'+'Å—œ«Œ Ì ‰œ«‘ Â «Ìœ.');

          MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
         end
        else
          begin
            Frm_prinr_tasfie.QRLabel_type.Caption:='œ— ”«· '+dbsal2.Text;
            Frm_prinr_tasfie.QRLtarikh.Caption :=frm_login.Egettarikh.Text ;
            gotoprint;
          end;
        end;
      end;
   if RadioGroup1.ItemIndex=2 then
   begin
   if (dbsal.Text='') or (scmah.Text='') then
       MessageBox(Handle,'„‘Œ’«  “„«‰Ì Å—œ«Œ  «‰ Œ«» ‰‘œÂ «‰œ ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
   else
   begin
      DataModule1.ADOpardakhtbedehi.SQL.Text:='select * from t_pardakht_bedehi where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+

      ' and tarikh like '+QuotedStr(dbsal.Text+'/'+Frm_search.getmonth(scmah.Text)+'%')+' order by tarikh';

      DataModule1.ADOpardakhtbedehi.Open;
       if  DataModule1.ADOpardakhtbedehi.RecordCount <=0 then
        begin
          st:=pchar('‘„« »Â ‘Œ’'+'<< '+DataModule1.ADOQuery3shahrforoshande.AsString+' >>'+'œ— ÿÊ·  «—ÌŒ'+' << '+dbsal.Text+' --- '+scmah.Text+' >>'+'Å—œ«Œ Ì ‰œ«‘ Â «Ìœ.');
          MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
        end
      else
      begin
       Frm_prinr_tasfie.QRLabel_type.Caption:='œ— ”«· '+dbsal.Text+' „«Â '+scmah.Text;
       Frm_prinr_tasfie.QRLtarikh.Caption :=frm_login.Egettarikh.Text ;
       gotoprint;
      end;
    end;
    end;
end;

procedure TFrm_pardakht_shoma.gotoprint;
begin
 if RadioGroup1.ItemIndex=0 then
 begin
  DataModule1.ADOpardakhtbedehi.SQL.Text:='select * from t_pardakht_bedehi where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' order by tarikh';
  DataModule1.ADOpardakhtbedehi.Open;

  DataModule1.ADOQuery_jame_pardakht_shhoma.SQL.Text:='select sum(mablagh)as kol_ from t_pardakht_bedehi where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
  DataModule1.ADOQuery_jame_pardakht_shhoma.Open;

  if RadioGroup2.ItemIndex=0 then
   Frm_prinr_tasfie.QuickRep1.Preview
  else
   Frm_prinr_tasfie.QuickRep1.Print;
 end;
 if RadioGroup1.ItemIndex=1 then
 begin
   DataModule1.ADOpardakhtbedehi.SQL.Text:='select * from t_pardakht_bedehi where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+
  ' and tarikh like '+QuotedStr(dbsal2.Text+'%')+'order by tarikh';

  DataModule1.ADOpardakhtbedehi.Open;
  DataModule1.ADOQuery_jame_pardakht_shhoma.SQL.Text:='select sum(mablagh)as kol_ from t_pardakht_bedehi where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+

  ' and tarikh like '+QuotedStr(dbsal2.Text+'%');

   DataModule1.ADOQuery_jame_pardakht_shhoma.Open;
  if RadioGroup2.ItemIndex=0 then
   Frm_prinr_tasfie.QuickRep1.Preview
  else
   Frm_prinr_tasfie.QuickRep1.Print;
 end;
 if RadioGroup1.ItemIndex=2 then
 begin

  DataModule1.ADOpardakhtbedehi.SQL.Text:='select * from t_pardakht_bedehi where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+

  ' and tarikh like '+QuotedStr(dbsal.Text+'/'+Frm_search.getmonth(scmah.Text)+'%');
  DataModule1.ADOpardakhtbedehi.Open;

  DataModule1.ADOQuery_jame_pardakht_shhoma.SQL.Text:='select sum(mablagh)as kol_ from t_pardakht_bedehi where shahrforoshande='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+

  ' and tarikh like '+QuotedStr(dbsal.Text+'/'+Frm_search.getmonth(scmah.Text)+'%');

   DataModule1.ADOQuery_jame_pardakht_shhoma.Open;
  if RadioGroup2.ItemIndex=0 then
   Frm_prinr_tasfie.QuickRep1.Preview
  else
   Frm_prinr_tasfie.QuickRep1.Print;

 end;

end;

procedure TFrm_pardakht_shoma.FormShow(Sender: TObject);
begin
  Frm_mmoshakhasat_shakhs.show_foroshandegan;
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;
  RadioGroup1.ItemIndex:=0;
  RadioGroup2.ItemIndex:=0;
   if RadioGroup1.ItemIndex=0 then
    begin
      GroupBox4.Visible:=false;
      GroupBox2.Visible:=false;
    end;
  if RadioGroup1.ItemIndex=1 then
    begin
      GroupBox4.Visible:=true;
      GroupBox2.Visible:=false;
    end;
    if RadioGroup1.ItemIndex=2 then
    begin
      GroupBox4.Visible:=false;
      GroupBox2.Visible:=true;
    end;

    E_name.Clear;
    e_cod.Clear;

    E_name.SetFocus;
end;

procedure TFrm_pardakht_shoma.DBLookupComboBox1Click(Sender: TObject);
begin
{  DataModule1.ADOQuery2.SQL.Text:='select distinct foroshande from t_shahr_foroshande where shahr='+QuotedStr(DataModule1.ADOQuery3shahr.AsString);
  DataModule1.ADOQuery2.Open}
end;

procedure TFrm_pardakht_shoma.suiButton7Click(Sender: TObject);
begin
 Close;
end;

procedure TFrm_pardakht_shoma.suiButton6Click(Sender: TObject);
begin
if (DataModule1.ADOQuery3shahrforoshande.AsString='') then


    MessageBox(Handle,' ‘Œ’ —« «‰ Œ«» ‰„«ÌÌœ.',' ÊÃÂ !',MB_OK or MB_RTLREADING or MB_ICONEXCLAMATION or MB_RIGHT)
  else
  begin
   check;
  end;
end;

procedure TFrm_pardakht_shoma.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then
    begin
      GroupBox4.Visible:=false;
      GroupBox2.Visible:=false;
    end;
  if RadioGroup1.ItemIndex=1 then
    begin
      GroupBox4.Visible:=true;
      GroupBox2.Visible:=false;
    end;
    if RadioGroup1.ItemIndex=2 then
    begin
      GroupBox4.Visible:=false;
      GroupBox2.Visible:=true;
    end;
end;



procedure TFrm_pardakht_shoma.E_nameChange(Sender: TObject);
begin
  DataModule1.ADOQuery3.Locate('shahrforoshande',E_name.Text,[loPartialKey]);
end;

procedure TFrm_pardakht_shoma.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

procedure TFrm_pardakht_shoma.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
