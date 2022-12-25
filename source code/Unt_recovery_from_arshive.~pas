unit Unt_recovery_from_arshive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, SUIComboBox, ExtCtrls, SUIForm, Grids,
  DBGrids, DB, DBCtrls;

type
  Tfrm_recovery_from_arshiv = class(TForm)
    suiForm1: TsuiForm;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    lname: TLabel;
    Label1: TLabel;
    suiB1: TsuiButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    btaeedall: TsuiButton;
    GroupBox3: TGroupBox;
    DBGarshivforosh: TDBGrid;
    GroupBox4: TGroupBox;
    DBGarshivkharid: TDBGrid;
    csal2: TDBLookupComboBox;
    scsal: TDBLookupComboBox;
    DataSource_sal1: TDataSource;
    Label5: TLabel;
    procedure recoveryforosh_from_arshiv;
    procedure recoverykharid_from_arshiv;
    procedure suiB1Click(Sender: TObject);
    procedure btaeedallClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_recovery_from_arshiv: Tfrm_recovery_from_arshiv;

implementation

uses Unt_Datamarchive, Unt_add_to_arshiv, unt_datamodule1;

{$R *.dfm}

procedure Tfrm_recovery_from_arshiv.recoveryforosh_from_arshiv;
var st:pchar;
begin
  Datamarchive.ADOforoshtoarshiv.SQL.Text:='select * from forosh_jens where forosh_tarikhyear='+QuotedStr(scsal.Text)+' and arshive='+QuotedStr('yes');
  Datamarchive.ADOforoshtoarshiv.Open;
  if Datamarchive.ADOforoshtoarshiv.RecordCount<=0 then
  begin
    st:=pchar('›—Ê‘Â«Ì ”«· << '+scsal.text +'>> œ— ¬—‘ÌÊ ‰—„ «›“«— À»  ‰‘œÂ «‰œ');
    MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end
  else
    begin
      Datamarchive.ADOforoshtoarshiv.SQL.Clear;
      Datamarchive.ADOforoshtoarshiv.SQL.Text:='update forosh_jens set arshive='+QuotedStr('no')+'where forosh_tarikhyear='+QuotedStr(scsal.Text);
      Datamarchive.ADOforoshtoarshiv.ExecSQL;
      st:=pchar('›—Ê‘Â«Ì ”«· << '+ scsal.text +' >> «“ ¬—‘ÌÊ ‰—„ «›“«— Œ«—Ã ‘œ‰œ');
      MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
    end;
end;
/////////////////////////////////////////
procedure Tfrm_recovery_from_arshiv.recoverykharid_from_arshiv;
var st:pchar;
begin
  Datamarchive.ADOaddkharidtoarshiv.SQL.Text:='select * from jens_ where tarikh_year='+QuotedStr(csal2.Text)+' and arshive='+QuotedStr('yes');
  Datamarchive.ADOaddkharidtoarshiv.Open;
  if Datamarchive.ADOaddkharidtoarshiv.RecordCount<=0 then
  begin
    st:=pchar('Œ—ÌœÂ«Ì ”«· << '+csal2.text +' >> œ— ¬—‘ÌÊ ‰—„ «›“«— À»  ‰‘œÂ «‰œ');
    MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING );
  end
  else
    begin
      Datamarchive.ADOaddkharidtoarshiv.SQL.Clear;
      Datamarchive.ADOaddkharidtoarshiv.SQL.Text:='update   jens_ set arshive='+QuotedStr('no')+'where tarikh_year='+QuotedStr(csal2.Text);
      Datamarchive.ADOaddkharidtoarshiv.ExecSQL;
       st:=pChar('  Œ—ÌœÂ«Ì ”«· << '+ csal2.text +' >> «“ ¬—‘ÌÊ ‰—„ «›“«— Œ«—Ã ‘œ‰œ');
      MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING );
    end;
end;

procedure Tfrm_recovery_from_arshiv.suiB1Click(Sender: TObject);
begin
  recoveryforosh_from_arshiv;
  frm_add_to_arshiv.showarshivforosh;
end;

procedure Tfrm_recovery_from_arshiv.btaeedallClick(Sender: TObject);
begin
  recoverykharid_from_arshiv;
  frm_add_to_arshiv.showarshivkharid;
end;

procedure Tfrm_recovery_from_arshiv.FormShow(Sender: TObject);
begin
    DataModule1.ADOQsaljadid.SQL.Text:='select * from t_salha order by sal';
    DataModule1.ADOQsaljadid.Open;
    frm_add_to_arshiv.showarshivforosh;
    frm_add_to_arshiv.showarshivkharid;
end;

end.
