unit unt_entekhbe_sherkat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, SUIDBCtrls, StdCtrls;

type
  Tfrm_entekhbe_sherkat = class(TForm)
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    Label4: TLabel;
    E_name: TEdit;
    L_type: TLabel;
    Button1: TButton;
    procedure E_nameChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_entekhbe_sherkat: Tfrm_entekhbe_sherkat;

implementation

uses unt_datamodule1, Unt_mmoshakhasat_shakhs, Untlistkharidhayeshakhspas,
  Unteditgeymatjenspas, unt_vrode_geymate_jadid,
  unt_emale_darsadie_geymat_roye_hame, Untdmanbarexit;

{$R *.dfm}

procedure Tfrm_entekhbe_sherkat.E_nameChange(Sender: TObject);
begin
  DataModule1.ADOQuery3.Locate('shahrforoshande',E_name.Text,[loPartialKey]);
end;

procedure Tfrm_entekhbe_sherkat.FormShow(Sender: TObject);
begin
   Frm_mmoshakhasat_shakhs.show_foroshandegan;
end;

procedure Tfrm_entekhbe_sherkat.Button1Click(Sender: TObject);
begin
  frm_vrode_geymate_jadid.L_name_sherkat.Caption:=DataModule1.ADOQuery3shahrforoshande.AsString;
  frm_emale_darsadie_geymat_roye_hame.L_sherkat.Caption:=DataModule1.ADOQuery3shahrforoshande.AsString;
  
 if L_type.Caption='taki' then
 begin
  frm_editgeymatjens.l_type.Caption:='sherkat_taki';
  frm_editgeymatjens.showanbar(DataModule1.ADOQuery3shahrforoshande.AsString);
  frm_editgeymatjens.L_name_sherkat.Caption:=' «Ã‰«” Œ—Ìœ«—Ì ‘œÂ «“ ‘Œ’ Ì« ‘—ò  '+DataModule1.ADOQuery3shahrforoshande.AsString;
  frm_editgeymatjens.ShowModal;
 end;
 if L_type.Caption='sherkat_hame_darsadi' then
 begin
  frm_editgeymatjens.l_type.Caption:='sherkat_hame_darsadi';
  frm_editgeymatjens.showanbar(DataModule1.ADOQuery3shahrforoshande.AsString);
  frm_editgeymatjens.L_name_sherkat.Caption:=' «Ã‰«” Œ—Ìœ«—Ì ‘œÂ «“ ‘Œ’ Ì« ‘—ò  '+DataModule1.ADOQuery3shahrforoshande.AsString;
  frm_editgeymatjens.ShowModal;  
 end;

 if L_type.Caption='forosh_fishi' then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' and shakhs_sherkat='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
  close;
 end;
end;

procedure Tfrm_entekhbe_sherkat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frm_vrode_geymate_jadid.L_name_sherkat.Caption:=DataModule1.ADOQuery3shahrforoshande.AsString;
  frm_emale_darsadie_geymat_roye_hame.L_sherkat.Caption:=DataModule1.ADOQuery3shahrforoshande.AsString;
  
 if L_type.Caption='taki' then
 begin
  frm_editgeymatjens.l_type.Caption:='sherkat_taki';
  frm_editgeymatjens.showanbar(DataModule1.ADOQuery3shahrforoshande.AsString);
  frm_editgeymatjens.L_name_sherkat.Caption:=' «Ã‰«” Œ—Ìœ«—Ì ‘œÂ «“ ‘Œ’ Ì« ‘—ò  '+DataModule1.ADOQuery3shahrforoshande.AsString;
  frm_editgeymatjens.ShowModal;
 end;
 if L_type.Caption='sherkat_hame_darsadi' then
 begin
  frm_editgeymatjens.l_type.Caption:='sherkat_hame_darsadi';
  frm_editgeymatjens.showanbar(DataModule1.ADOQuery3shahrforoshande.AsString);
  frm_editgeymatjens.L_name_sherkat.Caption:=' «Ã‰«” Œ—Ìœ«—Ì ‘œÂ «“ ‘Œ’ Ì« ‘—ò  '+DataModule1.ADOQuery3shahrforoshande.AsString;
  frm_editgeymatjens.ShowModal;  
 end;
 
 if L_type.Caption='forosh_fishi' then
 begin
  Dmanbarexite.ADOanbarcala.SQL.Text:='select * from Tanbar_jens_kolli where anbarname<>'+
  QuotedStr('«‰»«— „Ã«“Ì')+' and shakhs_sherkat='+QuotedStr(DataModule1.ADOQuery3shahrforoshande.AsString)+' order by calaname,calacod';
  Dmanbarexite.ADOanbarcala.Open;
 end;
end;

end.
