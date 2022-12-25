unit unt_rahnemaye_mianbor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDGraphicControl, LMDScrollText, ExtCtrls, SUIButton, StdCtrls,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton;

type
  Tfrm_rahnemaye_mianbor = class(TForm)
    LMDSpeedButton3: TLMDSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure LMDSpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rahnemaye_mianbor: Tfrm_rahnemaye_mianbor;

implementation

{$R *.dfm}

procedure Tfrm_rahnemaye_mianbor.FormShow(Sender: TObject);
var t:HRGN;
begin
    t:=CreateRoundRectRgn(0,0,Width,Height,50,50);
    SetWindowRgn(Handle,t,true);

end;

procedure Tfrm_rahnemaye_mianbor.Timer1Timer(Sender: TObject);
begin
  close;
end;

procedure Tfrm_rahnemaye_mianbor.LMDSpeedButton3Click(Sender: TObject);
begin
  Close;
end;

end.
