unit Unit_loguin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TForm_loguin = class(TForm)
    APanel: TPanel;
    Image1: TImage;
    Pnl_Usuario: TPanel;
    Nome_Usuário: TLabel;
    Senha: TLabel;
    Pnl_senha: TPanel;
    PnlAcessar: TPanel;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Edtusuario: TEdit;
    DataSource1: TDataSource;
    Btn_Mostrarsenha: TBitBtn;
    Edt_Senha: TEdit;
    procedure FormResize(Sender: TObject);
    procedure PnlAcessarMouseLeave(Sender: TObject);
    procedure FormMouseLeave(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_MostrarsenhaClick(Sender: TObject);
    procedure Btn_MostrarsenhaMouseLeave(Sender: TObject);
    procedure Edt_SenhaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtusuarioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_loguin: TForm_loguin;

implementation

{$R *.dfm}

uses Unit_Menu, Unit_Logado, Unit_DM, Unit_Historico, Unit_insp1;




Procedure CentralizarPanel(Form_loguin: TForm; APanel: TPanel);
begin
  APanel.Left := (Form_loguin.ClientWidth div 2) - (APanel.Width div 2);
  APanel.Top := (Form_loguin.ClientHeight div 2) - (APanel.Height div 2);

  APanel.Update;
  Form_loguin.Update;
end;

procedure TForm_loguin.Btn_MostrarsenhaClick(Sender: TObject);
begin
Edt_Senha.PasswordChar:=#0;
end;

procedure TForm_loguin.Btn_MostrarsenhaMouseLeave(Sender: TObject);
begin
Edt_Senha.PasswordChar:='*';
end;

procedure TForm_loguin.EdtusuarioKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, 'a'..'z', 'A'..'Z'])then
begin
ShowMessage( key + ' - ' + 'É um caracter inválido, digite apenas letras');
key := #0;
end;
end;


procedure TForm_loguin.Edt_SenhaKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in [#8, '0'..'9']) then
begin
ShowMessage(key + ' - ' + ' é um caracter inválido, digite apenas números');
// Descarta as entradas
Key := #0;
end;

end;

procedure TForm_loguin.FormMouseLeave(Sender: TObject);
begin
PnlAcessar.Color:= clLime;
end;

procedure TForm_loguin.FormResize(Sender: TObject);
begin
  CentralizarPanel(Self, APanel);
end;



procedure TForm_loguin.FormShow(Sender: TObject);
begin
  DM.Ado_Loguin.open;
end;

procedure TForm_loguin.PnlAcessarMouseLeave(Sender: TObject);
begin
PnlAcessar.Color:= clBlue;
end;

procedure TForm_loguin.SpeedButton1Click(Sender: TObject);

begin
 if (Edtusuario.Text='') OR (Edt_Senha.Text ='') then
 begin
   ShowMessage('OS CAMPOS DEVEM SER PREENCHIDOS') ;
   Edtusuario.SetFocus;
   Edtusuario.Clear;
   Edt_Senha.Clear;

 end
 ELSE

 BEGIN

    DM.Ado_Loguin.SQL.Clear;
    DM.Ado_Loguin.SQL.Text := 'SELECT * FROM Loguin WHERE Nome = :paramusuario and Senha = :paramsenha ';
    DM.Ado_Loguin.Parameters.ParamByName('paramusuario').Value :=Edtusuario .Text; // editUsuario é um TEdit pro usuario digitar o nome de usuário
    DM.Ado_Loguin.Parameters.ParamByName('paramsenha').Value :=Edt_Senha .Text; // editSenha é um TEdit
    DM.Ado_Loguin.Open;

//    if DM.Ado_Loguin.Parameters.ParamByName('paramusuario').Value  <>
//    (DM.Ado_Loguin.Parameters.ParamByName('paramsenha').Value) then
//     begin
//      Refresh;
//     end
//
//     else
  if (DM.Ado_Loguin.IsEmpty) then // se está vazio, significa que não encontrou usuário com esse nome ou senha
     begin
      ShowMessage('Nome de Usuário ou Senha Incorretos');
      Edtusuario.Clear;
      Edt_Senha.Clear;

      Exit;
     end

  else
    ShowMessage('ACESSSO AO SISTEMA');

  DM.Ado_Loguin.Close;
    begin
      Form_Logado:=TForm_Logado.Create(Self);

  Try
    Form_Logado.ShowModal ;

    Finally
    Form_Logado.Release;
    Form_Logado := nil;

  End;
  end
 END;







end;


end.
