unit unt_sleep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, PDJ_XPPB, ExtCtrls, SUIProgressBar, te_controls,
  StdCtrls;

type
  Tfrm_sleep = class(TForm)
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Timer2: TTimer;
    l_payam: TLabel;
    l_matne_payam: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    payam_:string;
    time_:integer;
  end;

var
  frm_sleep: Tfrm_sleep;

implementation

{$R *.dfm}


procedure Tfrm_sleep.Timer1Timer(Sender: TObject);
begin
  if(ProgressBar1.Position<ProgressBar1.Max)then
    ProgressBar1.StepIt
  else
    close;
end;

procedure Tfrm_sleep.FormShow(Sender: TObject);
begin
  l_payam.Caption:='';
  l_matne_payam.Caption:=payam_;

  ProgressBar1.Position:=0;
  ProgressBar1.Min:=0;
  ProgressBar1.Max:=time_;
  ProgressBar1.Step:=1000;
  Timer1.Enabled:=True; 

  Timer2.Enabled:=True;
end;

procedure Tfrm_sleep.Timer2Timer(Sender: TObject);
begin
  if l_payam.Caption='' then
    l_payam.Caption:=' '+'.'+''
  else
  if (l_payam.Caption=' '+'.'+'') then
    l_payam.Caption:=' '+'. .'+''
  else
  if (l_payam.Caption=' '+'. .'+'') then
    l_payam.Caption:=' '+'. . .'+''
  else
  if (l_payam.Caption=' '+'. . .'+'') then
    l_payam.Caption:='';
end;

end.
