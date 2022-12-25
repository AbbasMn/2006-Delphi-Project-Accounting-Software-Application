unit unt_karbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, DB, StdCtrls, SUIButton;

type
  Tfrm_karbar = class(TForm)
    suiDBGrid2: TsuiDBGrid;
    DataSource2: TDataSource;
    Label2: TLabel;
    L_name_register: TLabel;
    Elogin: TEdit;
    e_username: TEdit;
    suibexit: TsuiButton;
    suiB: TsuiButton;
    Label1: TLabel;
    e_karbar: TEdit;
    l_id: TLabel;
    l_type_: TLabel;
    suiBtaeed1: TsuiButton;
    suiBtaeed: TsuiButton;
    procedure suibexitClick(Sender: TObject);
    procedure suiBClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure suiBtaeed1Click(Sender: TObject);
    procedure suiBtaeedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_karbar: Tfrm_karbar;

implementation

uses Untdmlistha, unt_DataM_dastrasi, unt_sathe_dastrasi;

{$R *.dfm}

procedure Tfrm_karbar.suibexitClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_karbar.suiBClick(Sender: TObject);
begin

    if trim(e_karbar.Text)='' then
    begin
      MessageBox(Handle,'��� �����(������� ����� �� ��� �����) �� ���� ������','��� !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      exit;
    end;

    if trim(e_username.Text)='' then
    begin
      MessageBox(Handle,'��� ������ �� ���� ������','��� !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      exit;
    end;

    if Elogin.Text='' then
    begin
      MessageBox(Handle,'��� ���� �� ���� ������','��� !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      exit;
    end;

    Dmlistha.ADOlogin2.SQL.Text:='select * from t_login where karbar='+QuotedStr(trim(e_karbar.Text));

    if l_type_.Caption='edite' then
      Dmlistha.ADOlogin2.SQL.Text:=Dmlistha.ADOlogin2.SQL.Text+' and karbar<>'+QuotedStr(Dmlistha.ADOloginkarbar.AsString);
      
    Dmlistha.ADOlogin2.Open;

    if (Dmlistha.ADOlogin2.RecordCount>0) then
    begin
      MessageBox(Handle,'��� ����� ����� ���� ��� ���.','���!',MB_OK or MB_ICONWARNING or MB_RIGHT or MB_RTLREADING);
      Exit;
    end;


    Dmlistha.ADOlogin2.SQL.Text:='select * from t_login where username='+QuotedStr(trim(e_username.Text));

    if l_type_.Caption='edite' then
      Dmlistha.ADOlogin2.SQL.Text:=Dmlistha.ADOlogin2.SQL.Text+' and username<>'+QuotedStr(Dmlistha.ADOloginusername.AsString);
      
    Dmlistha.ADOlogin2.Open;

    if (Dmlistha.ADOlogin2.RecordCount>0) then
    begin
      MessageBox(Handle,'��� ������ ����� ���� ��� ���.','���!',MB_OK or MB_ICONWARNING or MB_RIGHT or MB_RTLREADING);
      Exit;
    end;



    if l_type_.Caption='new' then
    begin
      Dmlistha.ADOlogin2.SQL.Text:='insert into t_login (karbar,username,login) values('+QuotedStr(trim(e_karbar.Text))+
      ','+QuotedStr(trim(e_username.Text))+','+QuotedStr(Elogin.Text)+')';
      Dmlistha.ADOlogin2.ExecSQL;

      DataM_dastrasi.ADOQ_gozinehaye_dastrasi.SQL.Text:='select * from t_gozineye_dastresi';
      DataM_dastrasi.ADOQ_gozinehaye_dastrasi.Open;

      DataM_dastrasi.ADOQ_gozinehaye_dastrasi.First;

      while not DataM_dastrasi.ADOQ_gozinehaye_dastrasi.eof do
      begin
        DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='insert into T_dastresi(karbar,dastresi)'+
        ' values ('+QuotedStr(trim(e_username.Text))+','+QuotedStr(DataM_dastrasi.ADOQ_gozinehaye_dastrasidastrasi.AsString)+')';
        DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
        DataM_dastrasi.ADOQ_gozinehaye_dastrasi.Next;
      end;

      Elogin.Clear;
      e_username.Clear;
      e_karbar.Clear;

      Dmlistha.ADOlogin.SQL.Text:='select * from t_login order by karbar';
      Dmlistha.ADOlogin.Open;
      MessageBox(Handle,'����� ���� ����� �����.','����!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
    end;

    if l_type_.Caption='edite' then
    begin
      if Dmlistha.ADOlogin.RecordCount>0 then
      begin
          if(Dmlistha.ADOloginusername.AsString='admin')and(trim(e_username.Text)<>'admin') then
          begin
            MessageBox(Handle,'��� ������ admin ������� ����� �� ����','���!',MB_OK or MB_ICONWARNING or MB_RIGHT or MB_RTLREADING);
            exit;
          end;

        l_id.Caption:=Dmlistha.ADOloginid.AsString;

        Dmlistha.ADOlogin2.SQL.Text:='update t_login set karbar='+QuotedStr(trim(e_karbar.Text))+
        ',username='+QuotedStr(trim(e_username.Text))+',login='+QuotedStr(Elogin.Text)+
        ' where id='+l_id.Caption;
        Dmlistha.ADOlogin2.ExecSQL;

        DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='update T_dastresi set karbar='+
        QuotedStr(trim(e_karbar.Text))+' where karbar='+QuotedStr(Dmlistha.ADOloginkarbar.AsString);
        DataM_dastrasi.ADOQ_dastrasi.ExecSQL;
      
        Dmlistha.ADOlogin.SQL.Text:='select * from t_login order by karbar';
        Dmlistha.ADOlogin.Open;

        Dmlistha.ADOlogin.Locate('id',l_id.Caption,[loPartialKey]);

        MessageBox(Handle,'����� ������� ����� �����.','����!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
      end;
    end;
    

    


end;

procedure Tfrm_karbar.FormShow(Sender: TObject);
begin
    Dmlistha.ADOlogin.SQL.Text:='select * from t_login order by karbar';
    Dmlistha.ADOlogin.Open;

  if frm_karbar.l_type_.Caption='new' then
  begin
      Elogin.Clear;
      e_username.Clear;
      e_karbar.Clear;    
  end;
end;

procedure Tfrm_karbar.suiBtaeed1Click(Sender: TObject);
begin
  if(Dmlistha.ADOloginusername.AsString='admin') then
    MessageBox(Handle,'����� admin ���� ��� ��� ����','���!',MB_OK or MB_ICONWARNING or MB_RIGHT or MB_RTLREADING)
  else
  begin
      if Dmlistha.ADOlogin.RecordCount>0 then
      begin
        l_id.Caption:=Dmlistha.ADOloginid.AsString;

        DataM_dastrasi.ADOQ_dastrasi.SQL.Text:='delete from T_dastresi  where karbar='+
        QuotedStr(Dmlistha.ADOloginkarbar.AsString);
        DataM_dastrasi.ADOQ_dastrasi.ExecSQL;        
   
        Dmlistha.ADOlogin2.SQL.Text:='delete from t_login where id='+l_id.Caption;
        Dmlistha.ADOlogin2.ExecSQL;



        Dmlistha.ADOlogin.SQL.Text:='select * from t_login order by karbar';
        Dmlistha.ADOlogin.Open;

        MessageBox(Handle,'����� ������� ��� �����.','����!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
      end;

  end;
end;

procedure Tfrm_karbar.suiBtaeedClick(Sender: TObject);
begin
      if Dmlistha.ADOlogin.RecordCount>0 then
      begin
          if(Dmlistha.ADOloginusername.AsString='admin') then
          begin
            MessageBox(Handle,'����� admin �� ��� ���� ��� ����� ������ ����.','���!',MB_OK or MB_ICONWARNING or MB_RIGHT or MB_RTLREADING);
            exit;
          end;
          frm_sathe_dastrasi.L_karbar.Caption:=Dmlistha.ADOloginusername.AsString;
          frm_sathe_dastrasi.L_karbar1.Caption:=Dmlistha.ADOloginkarbar.AsString;          
          frm_sathe_dastrasi.ShowModal;
      end;
end;

end.
