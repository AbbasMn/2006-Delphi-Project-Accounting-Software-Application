unit unt_vrode_geymate_koli_jadid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, PDJ_XPC, ExtCtrls,math;

type
  Tfrm_vrode_geymate_koli_jadid = class(TForm)
    GroupBox1: TGroupBox;
    Ljensname: TLabel;
    Lgeymatghabli: TLabel;
    Lcodjens: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    L_name_sherkat: TLabel;
    Label7: TLabel;
    L_kharid_jens: TLabel;
    RadioGroup2: TRadioGroup;
    G_darsad: TGroupBox;
    Label8: TLabel;
    E_darsad_sod: TEdit;
    RadioGroup1: TRadioGroup;
    pmolaforforosh: TPDJXPMemo;
    suiBno: TsuiButton;
    suiBok: TsuiButton;
    G_gheire_darsad: TGroupBox;
    Label1: TLabel;
    Egeymatjadid: TEdit;
    l_type: TLabel;
    procedure FormShow(Sender: TObject);
    procedure type_;
    procedure RadioGroup2Click(Sender: TObject);
    procedure EgeymatjadidChange(Sender: TObject);
    procedure EgeymatjadidKeyPress(Sender: TObject; var Key: Char);
    procedure E_darsad_sodChange(Sender: TObject);
    procedure E_darsad_sodKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure suiBnoClick(Sender: TObject);
    procedure clear;
    procedure suiBokClick(Sender: TObject);
    procedure editgeymat;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_vrode_geymate_koli_jadid: Tfrm_vrode_geymate_koli_jadid;

implementation

uses unt_main, unt_datam_sp_eslahe_forosh, Unteditgeymatjenspas;

{$R *.dfm}
procedure Tfrm_vrode_geymate_koli_jadid.editgeymat;
var tarikh,cod:string;
    st:pchar;
    geymat,par:real;

begin
    par:=0;
    
    tarikh:=frm_main.L_tarikh.Caption;
    cod:=Lcodjens.Caption;
    if RadioGroup2.ItemIndex=1 then
    begin
      if (Ljensname.Caption='') or (trim(Egeymatjadid.Text)='') then
        MessageBox(Handle,'��� � ���� ���� ���� ���  ���� ���� ���','��� !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
      else
       begin
          par:=0;
          geymat:=strtofloat(trim(Egeymatjadid.Text));

         st:=pchar(trim(' ���� ���� ��� ��� �� �����'+tarikh+' �� '+' '+Lgeymatghabli.Caption+' '+ ' �� '+' '+trim(Egeymatjadid.Text)+' '+'����� ���ǘ��'));


         frm_main.l_last_op.Caption:=' ����� ���� ���� ��� ��� '+Ljensname.Caption;

//////////////////////////////////////////////////////////////////////////////


          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[0].Value:=frm_editgeymatjens.l_review.Caption;//@id float,
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[1].Value:=tarikh;//@tarikh_eslah nvarchar(12),
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[2].Value:=geymat;//@geymat float,
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[3].Value:=trim(pmolaforforosh.Text);//@molahezat_geymat nvarchar(250),
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[4].Value:=par;//@par float,
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[5].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[6].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[7].Value:=frm_main.l_last_op.Caption+' (������ �� ���� ���� ���� ���� ����) '+pmolaforforosh.Text;//@amaliat nvarchar(1000)
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.ExecProc;

//////////////////////////////////////////////////////////////////////////////

         if L_type.Caption='jens_taki' then
          frm_editgeymatjens.showanbar('')
         else
          frm_editgeymatjens.showanbar(L_name_sherkat.Caption);

         Egeymatjadid.Text:='';
         MessageBox(Handle,st,'����!',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
         clear;
         Close;
       end;
    end
    else
    begin
      if (Ljensname.Caption='')or (trim(E_darsad_sod.Text)='') then
        MessageBox(Handle,'��� � ���� ������/����  ���� ���� ��� ���� ���� ���','��� !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
      else
      begin
        par:=0;

        geymat:=StrToFloat(Lgeymatghabli.Caption);



       if RadioGroup1.ItemIndex=0 then
        geymat:=geymat+roundto((StrToFloat(E_darsad_sod.Text)/100)*geymat,0)
       else
        geymat:=geymat-roundto((StrToFloat(E_darsad_sod.Text)/100)*geymat,0); 




        frm_main.l_last_op.Caption:=' ����� ���� ���� ��� ��� '+Ljensname.Caption;

        st:=pchar(trim(' ���� ���� ��� '+tarikh+' �� '+' '+Lgeymatghabli.Caption+ ' �� '+' '+FloatToStr(geymat)+' '+' ����� ���ǘ�� '));


//////////////////////////////////////////////////////////////////////////////


          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[0].Value:=frm_editgeymatjens.l_review.Caption;//@id float,
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[1].Value:=tarikh;//@tarikh_eslah nvarchar(12),
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[2].Value:=geymat;//@geymat float,
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[3].Value:=trim(pmolaforforosh.Text);//@molahezat_geymat nvarchar(250),
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[4].Value:=par;//@par float,
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[5].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[6].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.Parameters[7].Value:=pmolaforforosh.Text;//@amaliat nvarchar(1000)
          datam_sp_eslahe_forosh.ADOStoredProc_eslahe_geymat_geymat.ExecProc;

//////////////////////////////////////////////////////////////////////////////

         if L_type.Caption='jens_taki' then
          frm_editgeymatjens.showanbar('')
         else
          frm_editgeymatjens.showanbar(L_name_sherkat.Caption);

        E_darsad_sod.Text:='';

        MessageBox(Handle,st,'����!',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
         clear;
         Close;        
      end;
    end;
end;
//////////////////

procedure Tfrm_vrode_geymate_koli_jadid.clear;
begin
 Egeymatjadid.Text:='';
 pmolaforforosh.Text:='';
end;

procedure Tfrm_vrode_geymate_koli_jadid.type_;
begin
  if RadioGroup2.ItemIndex=0 then
  begin
    G_darsad.Visible:=true;
    G_gheire_darsad.Visible:=false;
  end
  else
  begin
    G_darsad.Visible:=false;
    G_gheire_darsad.Visible:=true;
  end;
end;

procedure Tfrm_vrode_geymate_koli_jadid.FormShow(Sender: TObject);
begin
  RadioGroup2.ItemIndex:=1;
  RadioGroup1.ItemIndex:=0;
  type_;
end;

procedure Tfrm_vrode_geymate_koli_jadid.RadioGroup2Click(Sender: TObject);
begin
  type_;
end;

procedure Tfrm_vrode_geymate_koli_jadid.EgeymatjadidChange(
  Sender: TObject);
begin
pmolaforforosh.Text:=' ���� ���� ��� ��� �� �����'+frm_main.L_tarikh.Caption+' �� '+' '+Lgeymatghabli.Caption+' '+' �� '+' '+trim(Egeymatjadid.Text)+' '+'����� ���ǘ��';
end;

procedure Tfrm_vrode_geymate_koli_jadid.EgeymatjadidKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_vrode_geymate_koli_jadid.E_darsad_sodChange(
  Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then
    pmolaforforosh.Text:=' ���� ���� ��� ��� �� �����'+frm_main.L_tarikh.Caption+' '+trim(E_darsad_sod.Text)+' '+'���� ������ ����'
  else
    pmolaforforosh.Text:=' ���� ���� ��� ��� �� �����'+frm_main.L_tarikh.Caption+' '+trim(E_darsad_sod.Text)+' '+'���� ���� ����';
end;

procedure Tfrm_vrode_geymate_koli_jadid.E_darsad_sodKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_vrode_geymate_koli_jadid.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then
    pmolaforforosh.Text:=' ���� ���� ��� ��� �� �����'+frm_main.L_tarikh.Caption+' '+trim(E_darsad_sod.Text)+' '+'���� ������ ����'
  else
    pmolaforforosh.Text:=' ���� ���� ��� ��� �� �����'+frm_main.L_tarikh.Caption+' '+trim(E_darsad_sod.Text)+' '+'���� ���� ����';
end;

procedure Tfrm_vrode_geymate_koli_jadid.suiBnoClick(Sender: TObject);
begin
  clear;
  close;
end;

procedure Tfrm_vrode_geymate_koli_jadid.suiBokClick(Sender: TObject);
begin
  editgeymat;
end;

end.
