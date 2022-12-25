unit Untgetserial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm2 = class(TForm)
  function gethardserial(const driveletter:char ):string;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
function TForm1.gethardserial(const driveletter:char ):string;
 var notused:DWORD;
     vf:DWORD;
     vinfo:array[0..max_path] of Char;
     vsn:DWORD;
begin
   GetVolumeInformation(pchar(driveletter + ':\'),nil,SIZEOF(vinfo),@vsn,notused,vf,nil,0);
   result:=format('lable=%s volser=%8.8x',[vinfo,vsn]);

end;

end.
 