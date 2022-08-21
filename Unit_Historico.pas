unit Unit_Historico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TUFrm_Historico = class(TForm)
    Pnl_1: TPanel;
    Pnl_Central: TPanel;
    DBGrid1: TDBGrid;
    Ds_Historico: TDataSource;
    Btn_Fechar: TBitBtn;
    Edt_Pesquisar: TEdit;
    Btn_Pesquisar: TBitBtn;
    Label6: TLabel;
    Label9: TLabel;
    dtpInicial: TDateTimePicker;
    Data_Final: TDateTimePicker;
    cbxCampo: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure Edt_PesquisarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UFrm_Historico: TUFrm_Historico;

implementation

{$R *.dfm}

uses Unit_DM, Unit_insp1, Unit_Logado, Unit_loguin, Unit_Menu;

procedure TUFrm_Historico.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TUFrm_Historico.Edt_PesquisarKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then // #13 é o símbolo que representa a tecla Enter
   begin
     if (cbxCampo.Text <> EmptyStr) and //Verifico se o comboBox foi preenchido
      (Edt_Pesquisar.Text <> EmptyStr) then //verifico se o edit possui algum valor
     begin
       With  DM.Ado_Historico do
       begin
         Close;
       Btn_Pesquisar.Caption :='select * from Inicio Where '+
                      cbxCampo.Text+ ' LIKE '+QuotedStr(Edt_Pesquisar.Text+'%');
         Open;
       end;
     end;
   end;
end;

procedure TUFrm_Historico.FormShow(Sender: TObject);
var
   I: Integer;
begin
   DM.Ado_Historico.open;
   dtpInicial.Date:=Date - 30;
    Data_Final .Date:=Date;


   for I := 0 to (DM.Ado_Historico.FieldCount)-1 do
   begin
     if DM. Ado_Historico.Fields[I].DataType in [ftString,ftWideString,ftFixedChar] then
       cbxCampo.Items.Add(DM.Ado_Historico.Fields[I].FieldName);
   end;
   cbxCampo.ItemIndex:=0;
 end;
end.
