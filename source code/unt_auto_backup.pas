unit unt_auto_backup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, ExtCtrls, SUIForm, te_dialogs;

type
  TFrm_auto_backup = class(TForm)
    TeDirectoryDialog1: TTeDirectoryDialog;
    GroupBox1: TGroupBox;
    suiBtaeed: TsuiButton;
    suibexit: TsuiButton;
    suiBselect: TsuiButton;
    Epathofnewfile: TEdit;
    procedure suiBselectClick(Sender: TObject);
    procedure suiBtaeedClick(Sender: TObject);
    procedure suibexitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_auto_backup: TFrm_auto_backup;

implementation

uses Unt_Datamarchive, unt_main;

{$R *.dfm}

procedure TFrm_auto_backup.suiBselectClick(Sender: TObject);
begin
    if TeDirectoryDialog1.Execute then
    Epathofnewfile.Text:=TeDirectoryDialog1.Directory;
end;

procedure TFrm_auto_backup.suiBtaeedClick(Sender: TObject);
var s,nn,path,time_:string;
begin
    time_:=frm_main.LMDClock1.Digital.Caption;
  if (Epathofnewfile.Text='') then
    MessageBox(Handle,' „”Ì—Ì —« òÂ „Ì ŒÊ«ÂÌœ ›«Ì· Å‘ Ì»«‰ œ— ¬‰ òÅÌ ‘Êœ «‰ Œ«» ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
    begin
    s:=Epathofnewfile.Text;
    if StrLen(pchar(s))>260 then
    begin
      MessageBox(Handle,pchar('ÿÊ· „”Ì— «‰ Œ«»Ì << '+s +' >> »Ì‘ — «“ 260 ò«—«ò — „Ì »«‘œ ° „”Ì— œÌê—Ì —« «‰ Œ«» ‰„«ÌÌœ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      s:='no';
    end
    else
     begin

      frm_main.ADOQ_backup.SQL.Text:='select * from T_backup_path where path='+QuotedStr(s);
      frm_main.ADOQ_backup.Open;

      if frm_main.ADOQ_backup.RecordCount>0 then
        MessageBox(Handle,pchar('„”Ì— «‰ Œ«»Ì ﬁ»·« Ê«—œ ‘œÂ «” '),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
      else
      begin

        nn:=frm_main.format_for_naming_backup_file;

        CreateDirectory(pchar('\\?\'+s+'\'+nn),0);

        path:=s+'\'+nn;

        frm_main.ADOQ_backup.SQL.Text:='insert into T_backup_path(path,make,backup_media_name)'+
        ' values('+QuotedStr(s)+','+QuotedStr('yes')+','+QuotedStr('hesabdar-backup-'+nn+'-'+time_)+')';
        frm_main.ADOQ_backup.ExecSQL;
      
        frm_main.ADOStoredProc_make_backup_device.Parameters[0].Value:='disk';//@devtype varchar(20),      /* disk, tape, or diskette */
        frm_main.ADOStoredProc_make_backup_device.Parameters[1].Value:='hesabdar-backup-'+nn+'-'+time_;//@logicalname   sysname,      /* logical name of the device */
        frm_main.ADOStoredProc_make_backup_device.Parameters[2].Value:=path+'\'+'hesabdar-backup-'+nn+'.back';//@physicalname  nvarchar(260),     /* physical name of the device */
        //frm_main.ADOStoredProc_make_backup_device.Parameters[3].Value:='';//@cntrltype  smallint = null,  /* controller type - ignored. */
        //frm_main.ADOStoredProc_make_backup_device.Parameters[4].Value:='';//@devstatus  varchar(40) = 'noskip'  /* device characteristics */
        frm_main.ADOStoredProc_make_backup_device.ExecProc;

        frm_main.l_last_op.Caption:='  €ÌÌ— „”Ì— –ŒÌ—Â ›«Ì· Å‘ Ì»«‰ ';
        frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' »Â '+Epathofnewfile.Text);

        MessageBox(Handle,pchar('„”Ì— ÃœÌœ »—«Ì –ŒÌ—Â Å‘ Ì»«‰ Å«Ìê«Â œ«œÂ –ŒÌ—Â ‘œ'),' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
        Close;
      end;
     end;
    end;
end;

procedure TFrm_auto_backup.suibexitClick(Sender: TObject);
begin
 close;
end;

procedure TFrm_auto_backup.FormShow(Sender: TObject);
begin
  Epathofnewfile.Clear;
end;

end.
