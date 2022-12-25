unit Unt_backup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, StdCtrls, te_dialogs, SUIButton;

type
  TFrm_backup = class(TForm)
    TeDirectoryDialog1: TTeDirectoryDialog;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Epathofnewfile: TEdit;
    suiBselect: TsuiButton;
    suiBtaeed: TsuiButton;
    suibexit: TsuiButton;
    procedure suiBselectClick(Sender: TObject);
    procedure suibexitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure suiBtaeedClick(Sender: TObject);
    procedure makebackup;
    function format_for_naming_backup_file:string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_backup: TFrm_backup;

implementation

uses unt_main, Unt_Datamarchive, unt_auto_backup;

{$R *.dfm}
function TFrm_backup.format_for_naming_backup_file:string;
var tarikh,time_:string;
begin
  tarikh:=frm_main.L_tarikh.Caption;
  tarikh[5]:='-';
  tarikh[8]:='-';
  format_for_naming_backup_file:=frm_main.L_roze_hafte.Caption+' '+tarikh;
end;

procedure TFrm_backup.makebackup;
var
  Path,s,nn,time_:String;
  st:pchar;
begin
  time_:=frm_main.LMDClock1.Digital.Caption;

  time_[3]:='-';
  time_[6]:='-';

  Datamarchive.ADOQuery_backup_path.SQL.Text:='select * from T_backup_path';
  Datamarchive.ADOQuery_backup_path.Open;

  //if (Epathofnewfile.Text='') then
  s:=Datamarchive.ADOQuery_backup_pathpath.AsString;
  if (s='') then
  begin
    MessageBox(Handle,' „”Ì—Ì —« òÂ „Ì ŒÊ«ÂÌœ ›«Ì· Å‘ Ì»«‰ œ— ¬‰ òÅÌ ‘Êœ «‰ Œ«» ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
    Frm_auto_backup.ShowModal;
  end
  else
    begin
      ////////////////////

      Path:=ExtractFilePath(Application.ExeName);
      Path:=Path+'sql server db\kharid_jens.mdf';

      nn:=format_for_naming_backup_file;

      CreateDirectory(pchar('\\?\'+s+'\'+nn),0);

      nn:=nn+'\'+' ”«⁄  '+time_;
      

      CreateDirectory(pchar('\\?\'+s+'\'+nn),0);

      s:=s+'\'+nn+'\kharid_jens.mdf';

      CopyFile(PChar(Path),PChar(s),LongBool(0));

    /////////////////////
      Path:=ExtractFilePath(Application.ExeName);
      Path:=Path+'sql server db\kharid_jens.mdl';

      s:=s+'\'+nn+'\kharid_jens.mdl';

      CopyFile(PChar(Path),PChar(s),LongBool(0));




      {if FileExists(PChar(s)) then
         begin
          st:=pchar(' „ÊÃÊœ „Ì»«‘œ „«Ì·Ìœ ›«Ì· Ã«Ìê“Ì‰ ‘Êœ ø  << '+s+' >> ›«Ì· ');
          if MessageBox(Handle,st,'Over write ?',MB_YESNO or MB_ICONQUESTION )=id_yes then
             begin
               CopyFile(PChar(Path),PChar(s),LongBool(0));

               frm_main.l_last_op.Caption:=' –ŒÌ—Â ›«Ì· Å‘ Ì»«‰ ';
               frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' œ— „”Ì— '+Epathofnewfile.Text);

               MessageBox(Handle,'⁄„·Ì«  »Â —Ê“ —”«‰Ì ›«Ì· Å‘ Ì»«‰ «‰Ã«„ ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
               Epathofnewfile.Text:='';
             end;
          end
      else
          begin
            CopyFile(PChar(Path),PChar(s),LongBool(0));
            st:=pchar('⁄„·Ì«   ÂÌÂ ›«Ì· Å‘ Ì»«‰ »« „Ê›ﬁÌ  «‰Ã«„ ‘œ '+' ===>     '+s);
            MessageBox(Handle,st,' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
          end;}
      end;
end;

procedure TFrm_backup.suiBselectClick(Sender: TObject);
begin
  if TeDirectoryDialog1.Execute then
    Epathofnewfile.Text:=TeDirectoryDialog1.Directory;
end;

procedure TFrm_backup.suibexitClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_backup.FormShow(Sender: TObject);
begin
  Epathofnewfile.Text:='';

end;

procedure TFrm_backup.suiBtaeedClick(Sender: TObject);
begin
  makebackup;
end;

end.
