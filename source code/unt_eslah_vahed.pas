unit unt_eslah_vahed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, SUIDBCtrls, StdCtrls, SUIButton, ExtCtrls,
  SUIForm;

type
  Tfrm_eslah_vahed = class(TForm)
    DataSource1: TDataSource;
    L_name: TLabel;
    Label1: TLabel;
    Enewsal: TEdit;
    suiButton6: TsuiButton;
    Label2: TLabel;
    E_name: TEdit;
    suiDBGrid1: TsuiDBGrid;
    procedure suiButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_nameChange(Sender: TObject);
    procedure execute_eslahe_vahed_store_procedure;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah_vahed: Tfrm_eslah_vahed;

implementation

uses Untdmlistha, unt_add_jens_to_pishkharid, unt_main, Unt_dmanbar,
  unt_DataM_sp;

{$R *.dfm}
procedure Tfrm_eslah_vahed.execute_eslahe_vahed_store_procedure;
begin
frm_main.l_last_op.Caption:=' «’·«Õ Ê«Õœ Œ—Ìœ Ê ›—Ê‘ '+L_name.Caption+' »Â '+Enewsal.Text;

  DataM_sp.ADOStoredProc_eslehe_vahed.Parameters[0].Value:=L_name.Caption;//  @vahede_gadim nvarchar(30),
  DataM_sp.ADOStoredProc_eslehe_vahed.Parameters[1].Value:=Enewsal.Text;//@vahede_jadid nvarchar(30),
  DataM_sp.ADOStoredProc_eslehe_vahed.Parameters[2].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
  DataM_sp.ADOStoredProc_eslehe_vahed.Parameters[3].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

  DataM_sp.ADOStoredProc_eslehe_vahed.Parameters[4].Value:=frm_main.l_last_op.Caption;//@amaliat nvarchar(1000)
  DataM_sp.ADOStoredProc_eslehe_vahed.ExecProc;

end;
/////////////////
procedure Tfrm_eslah_vahed.suiButton6Click(Sender: TObject);
var s:pchar;
begin
if Dmlistha.ADOQuery_vahed.RecordCount <=0 then
  MessageBox(Handle,'—òÊ—œÌ »—«Ì »—Ê“ —”«‰Ì ÊÃÊœ ‰œ«—œ',' ÊÃÂ!',MB_OK or MB_ICONEXCLAMATION  or MB_RTLREADING or MB_RIGHT)
else
begin
if Enewsal.Text='' then
  MessageBox(Handle,'‰«„ Ê«Õœ  —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin
  Dmlistha.ADOQuery_vahed.SQL.Text:='select * from t_vahed where vahed='+QuotedStr(trim(Enewsal.Text));
  Dmlistha.ADOQuery_vahed.Open;

  if Dmlistha.ADOQuery_vahed.RecordCount > 0 then
  begin
     s:=pchar('Ê«Õœ Œ—Ìœ Ê ›—Ê‘ << '+Enewsal.Text+' >> Ê«—œ ‘œÂ «” ');
    MessageBox(Handle,s,' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    Frm_add_jens_to_pishkharid.show_vahed;
  end
  else
  begin
      {frm_main.l_last_op.Caption:=' «’·«Õ Ê«Õœ Œ—Ìœ Ê ›—Ê‘ '+L_name.Caption+' »Â '+Enewsal.Text;
      frm_main.sabte_amaliat(frm_main.l_last_op.Caption);

      Dmlistha.ADOQuery_vahed.SQL.Text:='update t_vahed set vahed='+QuotedStr(trim(Enewsal.Text))+
      ' where vahed='+QuotedStr(L_name.Caption);
      Dmlistha.ADOQuery_vahed.ExecSQL;

      ////////////////////////
          Dmlistha.ADOkharidha.SQL.Text:='update jens_ set vahed_koli='+QuotedStr(trim(Enewsal.Text))+
          ' where vahed_koli='+QuotedStr(L_name.Caption);
          Dmlistha.ADOkharidha.ExecSQL;

          Dmlistha.ADOkharidha.SQL.Text:='update jens_ set vahed_jozei='+QuotedStr(trim(Enewsal.Text))+
          ' where vahed_jozei='+QuotedStr(L_name.Caption);
          Dmlistha.ADOkharidha.ExecSQL;

      ///////////////////////
          Dmlistha.adolistforosh.SQL.Text:='update forosh_jens set vahed_koli='+QuotedStr(trim(Enewsal.Text))+
          ' where vahed_koli='+QuotedStr(L_name.Caption);
          Dmlistha.adolistforosh.ExecSQL;

          Dmlistha.adolistforosh.SQL.Text:='update forosh_jens set vahed_jozei='+QuotedStr(trim(Enewsal.Text))+
          ' where vahed_jozei='+QuotedStr(L_name.Caption);
          Dmlistha.adolistforosh.ExecSQL;

      ///////////////////////
          Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update t_anbar_majazi set vahed_koli='+QuotedStr(trim(Enewsal.Text))+
          ' where vahed_koli='+QuotedStr(L_name.Caption);
          Dmlistha.ADOQuery_anbar_majazi.ExecSQL;

          Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update t_anbar_majazi set vahed_jozi='+QuotedStr(trim(Enewsal.Text))+
          ' where vahed_jozi='+QuotedStr(L_name.Caption);
          Dmlistha.ADOQuery_anbar_majazi.ExecSQL;

      ///////////////////////
          Dmlistha.ADOlistanbarforosh.SQL.Text:='update Tanbar_jens_kolli set vahed_koli='+QuotedStr(trim(Enewsal.Text))+
          ' where vahed_koli='+QuotedStr(L_name.Caption);
          Dmlistha.ADOlistanbarforosh.ExecSQL;

          Dmlistha.ADOlistanbarforosh.SQL.Text:='update Tanbar_jens_kolli set vahed_jozi='+QuotedStr(trim(Enewsal.Text))+
          ' where vahed_jozi='+QuotedStr(L_name.Caption);
          Dmlistha.ADOlistanbarforosh.ExecSQL;

          Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='update  T_gozaresh_vorod_va_khoroje_anbar set vahed_jozei='+QuotedStr(trim(Enewsal.Text))+
          ' where vahed_jozei='+QuotedStr(L_name.Caption);
          Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;

          Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='update  T_gozaresh_vorod_va_khoroje_anbar set vahed_koli='+QuotedStr(trim(Enewsal.Text))+
          ' where vahed_koli='+QuotedStr(L_name.Caption);
          Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;

      Frm_add_jens_to_pishkharid.show_vahed;}
      execute_eslahe_vahed_store_procedure;
      MessageBox(Handle,'Ê«Õœ «‰ Œ«»Ì «’·«Õ ê—œÌœ.',' ÊÃÂ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
  end;
  Frm_add_jens_to_pishkharid.show_vahed;
end;
end;
end;

procedure Tfrm_eslah_vahed.FormShow(Sender: TObject);
begin
  Frm_add_jens_to_pishkharid.show_vahed;
  Enewsal.Clear;

  E_name.Clear;
  E_name.SetFocus;
end;

procedure Tfrm_eslah_vahed.E_nameChange(Sender: TObject);
begin
  Dmlistha.ADOQuery_vahed.Locate('vahed',E_name.Text,[loPartialKey]);
end;

end.
