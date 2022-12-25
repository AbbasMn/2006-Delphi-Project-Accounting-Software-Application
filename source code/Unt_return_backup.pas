unit Unt_return_backup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, ExtCtrls, SUIForm, te_dialogs;

type
  TFrm_return_backup = class(TForm)
    TeOpenDialog1: TTeOpenDialog;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Epathofnewfile: TEdit;
    suiBselect: TsuiButton;
    Edit1: TEdit;
    Edit2: TEdit;
    suiBtaeed: TsuiButton;
    suibexit: TsuiButton;
    procedure suibexitClick(Sender: TObject);
    procedure suiBselectClick(Sender: TObject);
    procedure returnbackup;
    procedure suiBtaeedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_return_backup: TFrm_return_backup;

implementation

uses unt_datamodule1, unt_datamodule2, Unt_dmanbar, Untdmanbarexit,
  Untdmlistha, unt_main;


{$R *.dfm}
procedure TFrm_return_backup.returnbackup;
var
  Path,s:String;
  x,y:LongBool;
begin
  if (Epathofnewfile.Text='') then
    MessageBox(Handle,'›«Ì· Å‘ Ì»«‰ —« «‰ Œ«» ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT)
  else
    begin
      s:=ExtractFilePath(Application.ExeName);
      s:=s+'kharid_jens.mdb';
      Edit1.Text:=path;
      Edit2.Text:=s;
      if MessageBox(Handle,' »«  «ÌÌœ ›«Ì· Å‘ Ì»«‰ Ã«Ìê“Ì‰ ›«Ì· ›⁄·Ì „Ì‘Êœ Ã«Ìê“Ì‰Ì ›«Ì· Å‘ Ì»«‰ Å«Ìê«Â œ«œÂ —«  «ÌÌœ „Ì ò‰Ìœø','Over write ?',MB_YESNO or MB_ICONQUESTION )=id_yes then
        begin
        ///////// close connection ///////////
        frm_main.ADOConnection1.Close;


        /////////////////
        x:=CopyFile(PChar(Epathofnewfile.Text),PChar(s),LongBool(0));
        ////////////////
        ///////// open connection ///////////
        frm_main.ADOConnection1.open;
        Edit2.Text:=IntToStr(integer(x));
        
        
        //////////////////////////////////////
          MessageBox(Handle,'›«Ì· Å‘ Ì»«‰ »«“ Ì«»Ì ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
        end;
    end;

end;

procedure TFrm_return_backup.suibexitClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_return_backup.suiBselectClick(Sender: TObject);
begin
  if teopenDialog1.Execute then
    Epathofnewfile.Text:=TeOpenDialog1.Files.Text;
end;

procedure TFrm_return_backup.suiBtaeedClick(Sender: TObject);
begin
  returnbackup;

end;

end.
