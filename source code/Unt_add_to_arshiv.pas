unit Unt_add_to_arshiv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, ExtCtrls, SUIForm, SUIComboBox, Grids,
  DBGrids, DB, DBCtrls;

type
  Tfrm_add_to_arshiv = class(TForm)
    suiForm1: TsuiForm;
    GroupBox1: TGroupBox;
    lname: TLabel;
    Label1: TLabel;
    suiB1: TsuiButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    btaeedall: TsuiButton;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBGarshivforosh: TDBGrid;
    DBGarshivkharid: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    scsal: TDBLookupComboBox;
    DataSource_sal1: TDataSource;
    csal2: TDBLookupComboBox;
    Label5: TLabel;
    procedure addforoshtoarshiv;
    procedure addkharidtoarshiv;
    procedure showarshivforosh;
    procedure showarshivkharid;
    procedure suiB1Click(Sender: TObject);
    procedure btaeedallClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_add_to_arshiv: Tfrm_add_to_arshiv;

implementation

uses unt_main, Unt_Datamarchive, Untdmlistha, unt_datamodule1;

{$R *.dfm}
procedure Tfrm_add_to_arshiv.showarshivforosh;
begin
  Datamarchive.ADOqshowarshivforosh.SQL.Text:='select distinct forosh_tarikhyear  from forosh_jens where arshive='+QuotedStr('yes')+'order by forosh_tarikhyear' ;
  Datamarchive.ADOqshowarshivforosh.Open;
end;
procedure Tfrm_add_to_arshiv.showarshivkharid;
begin
   Datamarchive.ADOqshowarshivkharid.SQL.Text:='select  distinct tarikh_year from jens_  where arshive='+QuotedStr('yes')+' order by tarikh_year'  ;
   Datamarchive.ADOqshowarshivkharid.Open;
end;



procedure Tfrm_add_to_arshiv.addkharidtoarshiv;
var st:pchar;
    x:integer;
begin
  Datamarchive.ADOaddkharidtoarshiv.SQL.Text:='select * from jens_ where tarikh_year='+QuotedStr(csal2.Text)+' and arshive='+QuotedStr('no');
  Datamarchive.ADOaddkharidtoarshiv.Open;
  x:=Datamarchive.ADOaddkharidtoarshiv.RecordCount;
  if x<=0 then
   begin
    st:=pchar('Œ—ÌœÌ œ— ”«·  <<'+ csal2.text+' >>'+ '«‰Ã«„ ‰‘œÂ «”  Ì« ﬁ»·« »Â ¬—‘ÌÊ «÷«›Â ‘œÂ «” .');
    MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
   end
  else
    begin
      Datamarchive.ADOaddkharidtoarshiv.SQL.Clear;
      Datamarchive.ADOaddkharidtoarshiv.SQL.Text:='update   jens_ set arshive='+QuotedStr('yes')+'where tarikh_year='+QuotedStr(csal2.Text);
      Datamarchive.ADOaddkharidtoarshiv.ExecSQL;
      st:=pchar(' ⁄œ«œ '+IntToStr(x)+'Œ—Ìœ œ— ”«· << '+ csal2.text +' >>»Â ¬—‘ÌÊ «÷«›Â ‘œ‰œ');
      MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
    end;
end;
procedure Tfrm_add_to_arshiv.addforoshtoarshiv;
var st:pchar;
     x:integer;
begin
  Datamarchive.ADOforoshtoarshiv.SQL.Text:='select * from forosh_jens where forosh_tarikhyear='+QuotedStr(scsal.Text)+' and arshive='+QuotedStr('no');
  Datamarchive.ADOforoshtoarshiv.Open;
  x:=Datamarchive.ADOforoshtoarshiv.RecordCount;
  if x<=0 then
    begin
      st:=pchar('›—Ê‘Ì œ— ”«· << '+ scsal.text +' >> «‰Ã«„ ‰‘œÂ «”  Ì« ﬁ»·« »Â ¬—‘ÌÊ «÷«›Â ‘œÂ «” .');
      MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
    end
  else
    begin
      Datamarchive.ADOforoshtoarshiv.SQL.Clear;
      Datamarchive.ADOforoshtoarshiv.SQL.Text:='update forosh_jens set arshive='+QuotedStr('yes')+'where forosh_tarikhyear='+QuotedStr(scsal.Text);
      Datamarchive.ADOforoshtoarshiv.ExecSQL;
      st:=pchar(' ⁄œ«œ '+IntToStr(x)+' ›—Ê‘ œ— ”«· << '+ scsal.text +' >> »Â ¬—‘ÌÊ «÷«›Â ‘œ‰œ');
      MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );

    end;
end;

procedure Tfrm_add_to_arshiv.suiB1Click(Sender: TObject);
begin
  addforoshtoarshiv;
  showarshivforosh;

end;

procedure Tfrm_add_to_arshiv.btaeedallClick(Sender: TObject);
begin
  addkharidtoarshiv;
  showarshivkharid;

end;

procedure Tfrm_add_to_arshiv.FormShow(Sender: TObject);
begin
  DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
  DataModule1.ADOQsaljadid.Open;
  showarshivforosh;
  showarshivkharid;
end;

end.
