unit unt_eslahe_keraye_kharid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,math, DBCtrls, DB;

type
  Tfrm_eslahe_keraye_kharid = class(TForm)
    G_darsad: TGroupBox;
    L_ker_mablaghi: TLabel;
    L_geymat_kharid: TLabel;
    L_ker_drsadi: TLabel;
    e_keraye: TEdit;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    e_keraye_darsadi: TEdit;
    Label9: TLabel;
    DBText_t_jam: TDBText;
    DataSource2: TDataSource;
    Label1: TLabel;
    DBText1: TDBText;
    DataSource1: TDataSource;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure e_keraye_darsadiKeyPress(Sender: TObject; var Key: Char);
    procedure e_kerayeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_keraye_kharid: Tfrm_eslahe_keraye_kharid;

implementation

uses unt_DataM_final, unt_pish_kharid, Untdmlistha,
  unt_add_jens_to_pishkharid, unt_datam_sp_eslahe_forosh, unt_main;

{$R *.dfm}

procedure Tfrm_eslahe_keraye_kharid.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    L_ker_drsadi.Visible:=true;
    L_ker_mablaghi.Visible:=false;
    e_keraye.Visible:=false;
    e_keraye_darsadi.Visible:=true;
  end
  else
  begin
    L_ker_drsadi.Visible:=false;
    L_ker_mablaghi.Visible:=true;
    e_keraye.Visible:=true;
    e_keraye_darsadi.Visible:=false;
  end;
end;

procedure Tfrm_eslahe_keraye_kharid.FormShow(Sender: TObject);
begin

  if Dmlistha.ADOmohasebe_keraye_kharidkeraye.AsFloat=0 then
  begin
   {e_keraye.Text:='0';
   e_keraye_darsadi.Text:='0';}
  end
  else
  begin
    {e_keraye.Text:=Dmlistha.ADOmohasebe_keraye_kharidkeraye.AsString;
    e_keraye_darsadi.Text:=FloatToStr(round((Dmlistha.ADOmohasebe_keraye_kharidkeraye.AsFloat/Dmlistha.ADOmohasebe_kharidkol_.AsFloat)*100));}
  end;

  RadioGroup1.ItemIndex:=1;
  if RadioGroup1.ItemIndex=0 then
  begin
    L_ker_drsadi.Visible:=true;
    L_ker_mablaghi.Visible:=false;
    e_keraye.Visible:=false;
    e_keraye_darsadi.Visible:=true;
  end
  else
  begin
    L_ker_drsadi.Visible:=false;
    L_ker_mablaghi.Visible:=true;
    e_keraye.Visible:=true;
    e_keraye_darsadi.Visible:=false;
  end;
end;

procedure Tfrm_eslahe_keraye_kharid.Button1Click(Sender: TObject);
var id,sum_tedad:real;
ker_kol,darsad,tedad,g_kharid,g_jadid:real;
begin
if Frm_add_jens_to_pishkharid.check(e_keraye_darsadi.Text) then
begin
        if RadioGroup1.ItemIndex=0 then
        begin
          if trim(e_keraye_darsadi.Text)='' then
          begin
            MessageBox(Handle,'œ—’œ «—“‘ ò· «Ã‰«” —« Ê«—œ ‰„«ÌÌœ','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
            e_keraye_darsadi.SetFocus;
          end
          else
            begin
              if Dmlistha.ADOmohasebe_kharidkol_.AsFloat=0 then
                ker_kol:=0
              else
                ker_kol:=round(Dmlistha.ADOmohasebe_kharidkol_.AsFloat*StrToFloat(e_keraye_darsadi.Text)/100);
            end;
        end
        else
        begin
          if trim(e_keraye.Text)='' then
          begin
            MessageBox(Handle,'„»·€ ò—«ÌÂ —« Ê«—œ ‰„«ÌÌœ','Œÿ« !', MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
            e_keraye.SetFocus;
          end
          else
            ker_kol:=StrToFloat(e_keraye.Text);
        end;

//////////////////////////////////////////////////////////////////////////////////////////////////

    Dmlistha.ADOkharidha2.SQL.Text:='select * from jens_ where shahrforoshande='+
    QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
    ' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;

    Dmlistha.ADOkharidha2.Open;
    Dmlistha.ADOkharidha2.First;
        sum_tedad:=0;
        while not Dmlistha.ADOkharidha2.Eof do
        begin
          sum_tedad:=sum_tedad+Dmlistha.ADOkharidha2tedad.AsFloat;
          Dmlistha.ADOkharidha2.Next;
        end;

          {Dmlistha.ADOkharidha2.SQL.Text:='update jens_ set keraye=tedad*'+FloatToStr(ceil(ker_kol/sum_tedad))+' where shahrforoshande='+
          QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
          ' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
          Dmlistha.ADOkharidha2.ExecSQL; }


    frm_main.l_last_op.Caption:='«’·«Õ ò—«ÌÂ Å—œ«Œ Ì »—«Ì ›«ò Ê— Œ—Ìœ »« ‘„«—Â '+
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' «“ '+
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;

    datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_keraye.Parameters[0].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;//@sh_factor float,
    datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_keraye.Parameters[1].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString;//@shahrforoshande nvarchar(100),


    datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_keraye.Parameters[2].Value:='«’·«Õ ò—«ÌÂ Å—œ«Œ Ì »—«Ì ›«ò Ê— Œ—Ìœ »« ‘„«—Â '+
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+' «“ '+
    DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString+
    ' «“ „»·€ '+Dmlistha.ADOmohasebe_kharidkol_.AsString+' »Â „»·€ '+FloatToStr(ker_kol);//@amaliat nvarchar(1000),

    datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_keraye.Parameters[3].Value:=frm_main.LMDClock1.Digital.Caption;//@time nvarchar(10),
    datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_keraye.Parameters[4].Value:=frm_main.L_tarikh.Caption;//@tarikh nvarchar(12),

    datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_keraye.Parameters[5].Value:=ker_kol;//    @keraye_jadid  float,
    datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_keraye.Parameters[6].Value:=DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;//@code float,


    datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_keraye.Parameters[7].Value:=ceil(ker_kol/sum_tedad);//@ker_per float
    datam_sp_eslahe_forosh.ADOStoredProc_eslahe_kharid_keraye.ExecProc;

    MessageBox(Handle,'ò—«ÌÂ Å—œ«Œ Ì »—«Ì ‘„«—Â ›«ò Ê— «’·«Õ ‘œ',' ÊÃÂ !', MB_OK or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);




    Dmlistha.ADOkharidha.SQL.Text:='select * from jens_ where shahrforoshande='+
    QuotedStr(DataM_final.ADOQ_t_sh_facrorhaye_kharidshahrforoshande.AsString)+
    ' and sh_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString;
    Dmlistha.ADOkharidha.Open;


    Dmlistha.ADOmohasebe_keraye_kharid.SQL.Text:='select * from t_keraye   where shomare_factor='+DataM_final.ADOQ_t_sh_facrorhaye_kharidshomare.AsString+
    ' and code='+DataM_final.ADOQ_t_sh_facrorhaye_kharidcode.AsString;
    Dmlistha.ADOmohasebe_keraye_kharid.open;


    close;
end;
end;

procedure Tfrm_eslahe_keraye_kharid.e_keraye_darsadiKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_keraye_kharid.e_kerayeKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
