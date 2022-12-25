unit unt_list_pardakht_ha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, SUIButton, StdCtrls, SUITabControl, SUIPageControl,
  ExtCtrls, SUIForm, DB, Grids, DBGrids, SUIDBCtrls;

type
  Tfrm_list_pardakht_ha = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    suiButton6: TsuiButton;
    suiButton7: TsuiButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    dbsal: TDBLookupComboBox;
    scmah: TComboBox;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    dbsal2: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    GroupBox1: TGroupBox;
    suiDBGrid1: TsuiDBGrid;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    e_cod: TEdit;
    Label8: TLabel;
    E_name: TEdit;
    Label4: TLabel;
    procedure suiButton7Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    function show_pardakhtha:boolean;
    procedure suiButton6Click(Sender: TObject);
    procedure jame_pardakhtha;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure E_nameChange(Sender: TObject);
    procedure e_codKeyPress(Sender: TObject; var Key: Char);
    procedure e_codChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_list_pardakht_ha: Tfrm_list_pardakht_ha;

implementation

uses unt_datamodule1, unt_datamodule2, unt_factor_pardakhtha, unt_main,
  unt_login, Unt_search, Math, unt_DataM_final, Unt_mmoshakhasat_shakhs;

{$R *.dfm}
procedure Tfrm_list_pardakht_ha.jame_pardakhtha;
var po:string;
begin
  if RadioGroup1.ItemIndex=0 then
    begin
      DataModule1.ADOQuery_jame_pardakht_kharidar.SQL.Text:='select sum(mablagh)as kol_ from t_pardakht_bedehi_kharidar where shahrforoshande='+
      QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString);
      DataModule1.ADOQuery_jame_pardakht_kharidar.Open;
      frm_factor_pardakhtha.QRLabel_tar.Caption:='œ— ò· ”«· Â«';
    end;
  if RadioGroup1.ItemIndex=1 then
    begin
      DataModule1.ADOQuery_jame_pardakht_kharidar.SQL.Text:='select sum(mablagh)as kol_ from t_pardakht_bedehi_kharidar where shahrforoshande='+
      QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and tarikh like '+QuotedStr(dbsal2.Text+'%');
      DataModule1.ADOQuery_jame_pardakht_kharidar.Open;
      frm_factor_pardakhtha.QRLabel_tar.Caption:='œ— ”«· '+ dbsal2.text;
    end;
  if RadioGroup1.ItemIndex=2 then
    begin
      DataModule1.ADOQuery_jame_pardakht_kharidar.SQL.Text:='select sum(mablagh)as kol_ from t_pardakht_bedehi_kharidar where shahrforoshande='+
      QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and tarikh like '+QuotedStr(dbsal.Text+'/'+Frm_search.getmonth(scmah.Text)+'%');
      DataModule1.ADOQuery_jame_pardakht_kharidar.Open;
      frm_factor_pardakhtha.QRLabel_tar.Caption:='œ— ”«· '+ dbsal.text+ ' „«Â '+ scmah.Text;
    end;


end;
function Tfrm_list_pardakht_ha.show_pardakhtha:boolean;
var po:string;
st:pchar;
begin
show_pardakhtha:=false;

     If RadioGroup1.ItemIndex=0 then
     begin
      DataModule1.ADOpardakhtbedehi_kharidar.SQL.Text:='select * from t_pardakht_bedehi_kharidar where shahrforoshande='+
       QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' order by tarikh';
      DataModule1.ADOpardakhtbedehi_kharidar.open;
        if  DataModule1.ADOpardakhtbedehi_kharidar.RecordCount <=0 then
        begin
          st:=pchar('‘Œ’'+'<< '+DataModule1.ADOQuery3shahrforoshande.AsString+' >>'+'œ— ò· ”« ·Â« '+'Å—œ«Œ Ì ‰œ«‘ Â «‰œ.');
          MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
        end
      else
      begin
        frm_factor_pardakhtha.QRLtarikh.Caption :=frm_login.Egettarikh.Text ;
        show_pardakhtha:=true;
      end;
     end;

     If RadioGroup1.ItemIndex=1 then
     begin
      if dbsal2.Text='' then
         MessageBox(Handle,'„‘Œ’«  “„«‰Ì Å—œ«Œ  «‰ Œ«» ‰‘œÂ «‰œ ',' ÊÃÂ !',MB_OK or MB_RTLREADING or MB_RIGHT)
      else
        begin
          DataModule1.ADOpardakhtbedehi_kharidar.SQL.Text:='select * from t_pardakht_bedehi_kharidar where shahrforoshande='+
          QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and tarikh like '+QuotedStr(dbsal2.Text+'%')+' order by tarikh';
          DataModule1.ADOpardakhtbedehi_kharidar.open;
          if  DataModule1.ADOpardakhtbedehi_kharidar.RecordCount <=0 then
            begin
              st:=pchar('‘Œ’'+'<< '+DataModule1.ADOQuery3shahrforoshande.AsString+' >>'+'œ— ÿÊ·  «—ÌŒ'+' << '+dbsal2.Text+' >>'+'Å—œ«Œ Ì ‰œ«‘ Â «‰œ.');
              MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
            end
          else
          begin
            frm_factor_pardakhtha.QRLtarikh.Caption :=frm_login.Egettarikh.Text ;
            show_pardakhtha:=true;
          end;
     end;
  end;
     If RadioGroup1.ItemIndex=2 then
     begin
      if (dbsal.Text='') or (scmah.Text='') then
        MessageBox(Handle,'„‘Œ’«  “„«‰Ì Å—œ«Œ  «‰ Œ«» ‰‘œÂ «‰œ ',' ÊÃÂ !',MB_OK or MB_RTLREADING or MB_RIGHT)
      else
      begin
          DataModule1.ADOpardakhtbedehi_kharidar.SQL.Text:='select * from t_pardakht_bedehi_kharidar where shahrforoshande='+
          QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' and tarikh like '+QuotedStr(dbsal.Text+'/'+Frm_search.getmonth(scmah.Text)+'%')+' order by tarikh';
          DataModule1.ADOpardakhtbedehi_kharidar.open;
          if  DataModule1.ADOpardakhtbedehi_kharidar.RecordCount <=0 then
          begin
            st:=pchar('‘Œ’'+'<< '+DataModule1.ADOQuery3shahrforoshande.AsString+' >>'+'œ— ÿÊ·  «—ÌŒ'+' << '+dbsal.Text+' --- '+scmah.Text+' >>'+'Å—œ«Œ Ì ‰œ«‘ Â «‰œ.');
            MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
          end
        else
          begin
            frm_factor_pardakhtha.QRLtarikh.Caption :=frm_login.Egettarikh.Text ;
            show_pardakhtha:=true;
          end;
        end;
     
  end;
end;
procedure Tfrm_list_pardakht_ha.suiButton7Click(Sender: TObject);
begin
 close;
end;

procedure Tfrm_list_pardakht_ha.DBLookupComboBox1Click(Sender: TObject);
begin
{  DataModule1.ADOQuery2.SQL.Text:='select distinct foroshande from t_shahr_foroshande where shahr='+QuotedStr(DataModule1.ADOQuery3shahr.AsString);
  DataModule1.ADOQuery2.Open;}
end;

procedure Tfrm_list_pardakht_ha.suiButton6Click(Sender: TObject);
begin
 if ( DataModule1.ADOQuery3shahrforoshande.AsString='')  then
    MessageBox(Handle,'‘Â— Ê ‘Œ’ —« «‰ Œ«» ‰„«ÌÌœ.',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
  begin
    jame_pardakhtha;
    if show_pardakhtha then
    begin
      if RadioGroup2.ItemIndex=0 then
        frm_factor_pardakhtha.QuickRep1.Preview
      else
        frm_factor_pardakhtha.QuickRep1.Print;
    end;
  end;
end;

procedure Tfrm_list_pardakht_ha.FormShow(Sender: TObject);
begin
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;

  Frm_mmoshakhasat_shakhs.show_kharidaran;
  
   RadioGroup1.ItemIndex:=0;
   RadioGroup2.ItemIndex:=0;

   if RadioGroup1.ItemIndex=0 then
    begin
      GroupBox4.Visible:=false;
      GroupBox2.Visible:=false;
      frm_factor_pardakhtha.QRLabel_tar.Caption:='œ— ò· ”«· Â«';
    end;
  if RadioGroup1.ItemIndex=1 then
    begin
      GroupBox4.Visible:=true;
      GroupBox2.Visible:=false;
      frm_factor_pardakhtha.QRLabel_tar.Caption:='œ— ”«· '+dbsal2.text;
    end;
    if RadioGroup1.ItemIndex=2 then
    begin
      GroupBox4.Visible:=false;
      GroupBox2.Visible:=true;
      frm_factor_pardakhtha.QRLabel_tar.Caption:='œ— ”«· '+dbsal.text+ ' „«Â '+scmah.Text;
    end;

    E_name.Clear;
    e_cod.Clear;
    E_name.SetFocus;
end;

procedure Tfrm_list_pardakht_ha.RadioGroup1Click(Sender: TObject);
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

procedure Tfrm_list_pardakht_ha.E_nameChange(Sender: TObject);
begin
  DataModule1.ADOQuery3.Locate('shahrforoshande',E_name.Text,[loPartialKey]);
end;

procedure Tfrm_list_pardakht_ha.e_codKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_list_pardakht_ha.e_codChange(Sender: TObject);
begin
 if e_cod.Text<>'' then
  DataModule1.ADOQuery3.Locate('code',e_cod.Text,[loPartialKey]);
end;

end.
