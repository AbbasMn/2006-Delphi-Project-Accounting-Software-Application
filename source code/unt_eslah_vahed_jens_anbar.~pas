unit unt_eslah_vahed_jens_anbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, SUIDBCtrls, DB, SUIButton;

type
  Tfrm_eslah_vahed_jens_anbar = class(TForm)
    DataSource1: TDataSource;
    GroupBox3: TGroupBox;
    L_name: TLabel;
    Label6: TLabel;
    DBText_cod: TDBText;
    DBText_jens: TDBText;
    Label8: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    suiDBGrid1: TsuiDBGrid;
    esearch: TEdit;
    e_v_koli: TEdit;
    e_v_jozi: TEdit;
    suibtaeed: TsuiButton;
    L_v_k: TLabel;
    L_v_j: TLabel;
    l_t_j_dar_k: TLabel;
    l_review: TLabel;
    procedure FormShow(Sender: TObject);
    procedure esearchChange(Sender: TObject);
    procedure eslah;
    procedure suibtaeedClick(Sender: TObject);
    procedure update_;
    procedure execute_eslahe_vahede_jense_anbar_store_procedure;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah_vahed_jens_anbar: Tfrm_eslah_vahed_jens_anbar;

implementation

uses Untviewanbar, Untdmanbarexit, Untdmlistha, unt_main, Unt_dmanbar,
  unt_DataM_sp;

{$R *.dfm}

procedure Tfrm_eslah_vahed_jens_anbar.execute_eslahe_vahede_jense_anbar_store_procedure;
begin
    frm_main.l_last_op.Caption:=' «’·«Õ Ê«Õœ Ã‰” '+Dmanbarexite.ADOQ_vahedhaye_jenscalaname.AsString;


    DataM_sp.ADOStoredProc_eslahe_vahed_jense_anbar.Parameters[0].Value:=L_v_k.Caption;//@vahede_koli_gadim nvarchar(30),
    DataM_sp.ADOStoredProc_eslahe_vahed_jense_anbar.Parameters[1].Value:=trim(e_v_koli.Text);//@vahede_koli_jadid nvarchar(30),
    DataM_sp.ADOStoredProc_eslahe_vahed_jense_anbar.Parameters[2].Value:=L_v_j.Caption;//@vahede_jozei_gadim nvarchar(30),
    DataM_sp.ADOStoredProc_eslahe_vahed_jense_anbar.Parameters[3].Value:=trim(e_v_jozi.Text);//@vahede_jozei_jadid nvarchar(30),

    DataM_sp.ADOStoredProc_eslahe_vahed_jense_anbar.Parameters[4].Value:=L_name.Caption;//@calaname nvarchar(40),

    DataM_sp.ADOStoredProc_eslahe_vahed_jense_anbar.Parameters[5].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
    DataM_sp.ADOStoredProc_eslahe_vahed_jense_anbar.Parameters[6].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),
    DataM_sp.ADOStoredProc_eslahe_vahed_jense_anbar.Parameters[7].Value:=StrToFloat(l_t_j_dar_k.Caption);//@t_j_dar_k float,
    DataM_sp.ADOStoredProc_eslahe_vahed_jense_anbar.Parameters[8].Value:=frm_main.l_last_op.Caption+' «“ Ê«Õœ ò·Ì '+
  Dmanbarexite.ADOQ_vahedhaye_jensvahed_koli.AsString+' »Â '+e_v_koli.Text+' «“ Ê«Õœ Ã“∆Ì '+
  Dmanbarexite.ADOQ_vahedhaye_jensvahed_jozi.AsString+' »Â '+e_v_jozi.Text;//@amaliat nvarchar(1000)
    DataM_sp.ADOStoredProc_eslahe_vahed_jense_anbar.ExecProc;

end;
procedure Tfrm_eslah_vahed_jens_anbar.update_;
begin
  frm_main.l_last_op.Caption:=' «’·«Õ Ê«Õœ Ã‰” '+L_name.Caption;
  frm_main.sabte_amaliat(frm_main.l_last_op.Caption+' «“ Ê«Õœ ò·Ì '+
  Dmanbarexite.ADOQ_vahedhaye_jensvahed_koli.AsString+' »Â '+e_v_koli.Text+' «“ Ê«Õœ Ã“∆Ì '+
  Dmanbarexite.ADOQ_vahedhaye_jensvahed_jozi.AsString+' »Â '+e_v_jozi.Text);
  
  Dmanbarexite.ADOQ_vahedhaye_jens.SQL.Text:='update Tanbar_jens_kolli set vahed_koli='+
  QuotedStr(trim(e_v_koli.Text))+',vahed_jozi='+QuotedStr(trim(e_v_jozi.Text))+
  ' where calaname='+QuotedStr(L_name.Caption)+' and vahed_koli='+QuotedStr(L_v_k.Caption)+
  ' and vahed_jozi='+QuotedStr(L_v_j.Caption);
  Dmanbarexite.ADOQ_vahedhaye_jens.ExecSQL;

  Dmlistha.adolistforosh.SQL.Text:='update forosh_jens set vahed_koli='+
  QuotedStr(trim(e_v_koli.Text))+',vahed_jozei='+QuotedStr(trim(e_v_jozi.Text))+
  ' where jens='+QuotedStr(L_name.Caption)+' and vahed_koli='+QuotedStr(L_v_k.Caption)+
  ' and vahed_jozei='+QuotedStr(L_v_j.Caption);
  Dmlistha.adolistforosh.ExecSQL;

  Dmlistha.ADOkharidha.SQL.Text:='update jens_ set vahed_koli='+
  QuotedStr(trim(e_v_koli.Text))+',vahed_jozei='+QuotedStr(trim(e_v_jozi.Text))+
  ' where jens='+QuotedStr(L_name.Caption)+' and vahed_koli='+QuotedStr(L_v_k.Caption)+
  ' and vahed_jozei='+QuotedStr(L_v_j.Caption);
  Dmlistha.ADOkharidha.ExecSQL;

  Dmlistha.ADOQuery_anbar_majazi.SQL.Text:='update t_anbar_majazi set vahed_koli='+
  QuotedStr(trim(e_v_koli.Text))+',vahed_jozi='+QuotedStr(trim(e_v_jozi.Text))+
  ' where calaname='+QuotedStr(L_name.Caption)+' and vahed_koli='+QuotedStr(L_v_k.Caption)+
  ' and vahed_jozi='+QuotedStr(L_v_j.Caption);
  Dmlistha.ADOQuery_anbar_majazi.ExecSQL;

  Dmanbar.ADOQ_gozaresh_anbar.SQL.Text:='update  T_gozaresh_vorod_va_khoroje_anbar set vahed_koli='+QuotedStr(trim(e_v_koli.Text))+
  ',vahed_jozei='+QuotedStr(trim(e_v_jozi.Text))+
  ' where jens='+QuotedStr(L_name.Caption)+' and vahed_koli='+QuotedStr(L_v_k.Caption)+
  ' and vahed_jozei='+QuotedStr(L_v_j.Caption);
  Dmanbar.ADOQ_gozaresh_anbar.ExecSQL;
end;

procedure Tfrm_eslah_vahed_jens_anbar.eslah;
var k,j,flag:boolean;
    error_typ:string;
begin
    if Dmanbarexite.ADOQ_vahedhaye_jensvahed_koli.AsString='' then
      k:=false
    else
      k:=True;

    if Dmanbarexite.ADOQ_vahedhaye_jensvahed_jozi.AsString='' then
      j:=false
    else
      j:=True;

    if (e_v_koli.Text='')and(e_v_jozi.Text='')then
      MessageBox(Handle,'Õœ«ﬁ· Ìò Ê«Õœ »«Ìœ »—«Ì Ã‰” „‰ŸÊ— ê—œœ.','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING)
    else
    begin
      flag:=true;
      if (e_v_koli.Text='')and(k)then
      begin
        flag:=false;
        error_typ:='k_khali';
      end;
      if (e_v_koli.Text<>'')and(not k)then
      begin
        flag:=false;
        error_typ:='no_k';
      end;
      if (e_v_jozi.Text='')and(j)then
      begin
        flag:=false;
        error_typ:='j_khali';
      end;
      if (e_v_jozi.Text<>'')and(not j)then
      begin
        flag:=false;
        error_typ:='no_j';
      end;
      if  flag then
      begin
        //update_;
        execute_eslahe_vahede_jense_anbar_store_procedure;

         Dmanbarexite.ADOQ_vahedhaye_jens.SQL.Text:='select calaname,calacod,vahed_koli,vahed_jozi,tedad_jozi_da_koli '+
         ' from Tanbar_jens_kolli group by calaname,calacod,vahed_koli,vahed_jozi,tedad_jozi_da_koli order by calaname,calacod';
         Dmanbarexite.ADOQ_vahedhaye_jens.Open;

        MessageBox(Handle,'Ê«Õœ Â«Ì Ã‰” «‰ Œ«»Ì «’·«Õ ê—œÌœ.',' ÊÃÂ! ',MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT );
      end
      else
      begin
        if error_typ='k_khali' then
        begin
            MessageBox(Handle,'Ê«Õœ ò·Ì »«Ìœ Ê«—œ ‘Êœ.','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING);
            e_v_koli.SetFocus;
        end;
        if error_typ='no_k' then
        begin
            MessageBox(Handle,'Ê«Õœ ò·Ì ‰»«Ìœ Ê«—œ ‘Êœ.','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING);
            e_v_koli.Text:='';
        end;
        if error_typ='j_khali' then
        begin
            MessageBox(Handle,'Ê«Õœ Ã“∆Ì »«Ìœ Ê«—œ ‘Êœ.','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING);
            e_v_jozi.SetFocus;
        end;
        if error_typ='no_j' then
        begin
            MessageBox(Handle,'Ê«Õœ Ã“∆Ì ‰»«Ìœ Ê«—œ ‘Êœ.','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING);
            e_v_jozi.Text:='';
        end;
      end;
    end;
end;

procedure Tfrm_eslah_vahed_jens_anbar.FormShow(Sender: TObject);
begin
  Dmanbarexite.ADOQ_vahedhaye_jens.SQL.Text:='select calaname,calacod,vahed_koli,vahed_jozi,tedad_jozi_da_koli '+
  ' from Tanbar_jens_kolli group by calaname,calacod,vahed_koli,vahed_jozi,tedad_jozi_da_koli order by calaname,calacod';
  Dmanbarexite.ADOQ_vahedhaye_jens.Open;

  esearch.Clear;

  e_v_koli.Clear;
  e_v_jozi.Clear;
  
  esearch.SetFocus;
end;

procedure Tfrm_eslah_vahed_jens_anbar.esearchChange(Sender: TObject);
begin
  Dmanbarexite.ADOQ_vahedhaye_jens.Locate('calaname',esearch.Text,[loPartialKey]);
end;

procedure Tfrm_eslah_vahed_jens_anbar.suibtaeedClick(Sender: TObject);
begin
if Dmanbarexite.ADOQ_vahedhaye_jens.RecordCount <=0 then
  MessageBox(Handle,'—òÊ—œÌ »—«Ì »—Ê“ —”«‰Ì ÊÃÊœ ‰œ«—œ',' ÊÃÂ!',MB_OK or MB_ICONEXCLAMATION  or MB_RTLREADING or MB_RIGHT)
else
begin
  l_review.Caption:=intToStr(Dmanbarexite.ADOQ_vahedhaye_jens.RecNo);
  eslah;
  Dmanbarexite.ADOQ_vahedhaye_jens.RecNo:=StrToInt(l_review.Caption);
end;
end;

end.
