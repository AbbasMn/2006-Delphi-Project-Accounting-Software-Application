unit unt_splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, LMDControl, LMDBaseControl,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton;

type
  Tfrm_splash = class(TForm)
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Image2: TImage;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_splash: Tfrm_splash;

implementation

uses unt_main, Taghvim, unt_login;

{$R *.dfm}

procedure Tfrm_splash.FormShow(Sender: TObject);
var t:HRGN;
begin
    Timer1.Enabled:=true;
    t:=CreateRoundRectRgn(0,0,Width,Height,50,50);
    SetWindowRgn(Handle,t,true); 
end;

procedure Tfrm_splash.Timer1Timer(Sender: TObject);
begin
  close;
end;



end.
