unit Unit_cadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Data.Win.ADODB, Vcl.ExtCtrls;

type
  TFrmCadusuario = class(TForm)
    Pnl_cadastro: TPanel;
    Pnl_titulo_cad: TPanel;
    Btn_Alterar: TBitBtn;
    Btn_Gravar: TBitBtn;
    Btn_Cancelar: TBitBtn;
    Btn_Novo: TBitBtn;
    Btn_Apagar: TBitBtn;
    Btn_Fechar: TBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edt_Codigo: TDBEdit;
    Edt_nome: TDBEdit;
    Edt_cargo: TDBEdit;
    Edt_senha: TDBEdit;
    DsListagem: TDataSource;
    Dts_Grid: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Btn_NovoClick(Sender: TObject);
    procedure Edt_CodigoChange(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_ApagarClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edt_nomeKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_cargoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmCadusuario: TFrmCadusuario;

implementation

{$R *.dfm}

uses Unit_DM, Unit_Menu, Unit_Historico, Unit_insp1, Unit_Logado, Unit_loguin;

procedure TFrmCadusuario.Btn_AlterarClick(Sender: TObject);
begin
DM.Qry_grid_Usu.close;
DM.Qry_grid_Usu.open;
end;

procedure TFrmCadusuario.Btn_ApagarClick(Sender: TObject);
begin

if MessageDlg ('Deseja Excluir Este Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
begin

DM.Qry_Listagem.Delete;
end;
end;

procedure TFrmCadusuario.Btn_FecharClick(Sender: TObject);
begin
FrmCadusuario.Close;
end;

procedure TFrmCadusuario.Btn_GravarClick(Sender: TObject);

begin
if (Edt_nome .Text='') OR (Edt_Senha.Text ='') or (Edt_cargo.Text='') then
 begin
   ShowMessage('OS CAMPOS DEVEM SER PREENCHIDOS') ;
    Edt_nome.SetFocus;
    Edt_nome.Clear;
    Edt_cargo .Clear;
    Edt_Senha.Clear;

    Exit
 end
 else



DM.Qry_Listagem.Post;
DM.Qry_grid_Usu.close;
DM.Qry_grid_Usu.open;




  ShowMessage('Cadastro Gravado com Sucesso!');


end;


procedure TFrmCadusuario.Btn_NovoClick(Sender: TObject);
begin
 DM.Qry_Listagem.append;
 Edt_nome.SetFocus;
 Edt_nome.Text:='';
 Edt_cargo.Text:='';
 Edt_senha.Text:='';

end;

procedure TFrmCadusuario.DBGrid1CellClick(Column: TColumn);
var
Cod: integer;
begin
  DM.Qry_Listagem.close;
  dm.Qry_Listagem.Open;
  Cod:= DM.Qry_grid_Usu.FieldByName('Cod_func').AsInteger ;
// DM.Qry_Listagem.Close;
//DM.Qry_Listagem.Edit;
//  DM.Qry_Listagem.Open;
//
  DM.Qry_Listagem.Locate('Cod_func',Cod,[]);




end;

procedure TFrmCadusuario.DBGrid1DblClick(Sender: TObject);

begin
//Cod: integer;
//begin
// Cod:= DM.Qry_Listagem.FieldByName('Cod_func').AsInteger;
// DM.Qry_Listagem.Close;
//  DM.Qry_Listagem.open;
//
// DM.Qry_Listagem.Locate('Cod_func',Cod,[]);
// DM.Qry_Listagem.Edit;

end;

procedure TFrmCadusuario.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 with DBGrid1 do
  begin
    if Odd( DataSource.DataSet.RecNo) then
      Canvas.Brush.Color := clLtGray
    else
      Canvas.Brush.Color := clAqua ;

    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TFrmCadusuario.Edt_cargoKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, 'a'..'z', 'A'..'Z'])then
begin
ShowMessage( key + ' - ' + '� um caracter inv�lido, digite apenas letras');
key := #0;
end;
end;

procedure TFrmCadusuario.Edt_CodigoChange(Sender: TObject);
begin
Edt_Codigo.Color:=clYellow;
end;

procedure TFrmCadusuario.Edt_nomeKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, 'a'..'z', 'A'..'Z'])then
begin
ShowMessage( key + ' - ' + '� um caracter inv�lido, digite apenas letras');
key := #0;
end;
end;

procedure TFrmCadusuario.Edt_senhaKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, '0'..'9']) then
begin
ShowMessage(key + ' - ' + ' � um caracter inv�lido, digite apenas n�meros');
// Descarta as entradas
Key := #0;
end;
end;

procedure TFrmCadusuario.FormShow(Sender: TObject);
begin
DM.Qry_Listagem.open;

DM.Qry_grid_Usu.close;
DM.Qry_grid_Usu.open;

end;



end.
