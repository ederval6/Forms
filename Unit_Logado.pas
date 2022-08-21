unit Unit_Logado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Data.DB, Vcl.Mask, Vcl.DBCtrls;

type
  TForm_Logado = class(TForm)
    Pnl_status: TPanel;
    Pnl_principal: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    Pnl_Verde: TPanel;
    Button1: TButton;
    Image1: TImage;
    Label2: TLabel;
    label_lista: TLabel;
    Btn_Historico: TButton;
    DTS_Inicio: TDataSource;
    Edt_Lote: TDBEdit;
    DBComboBox1: TDBComboBox;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_HistoricoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Logado: TForm_Logado;

implementation

{$R *.dfm}

uses Unit_Menu, Unit_DM, Unit_insp1, Unit_loguin, Unit_Historico;

procedure TForm_Logado.Btn_HistoricoClick(Sender: TObject);
begin
  UFrm_Historico := TUFrm_Historico.Create(Self);

  Try
    UFrm_Historico.ShowModal ;

    Finally
    UFrm_Historico.Release;
    UFrm_Historico := nil;

  End;
end;

procedure TForm_Logado.Button1Click(Sender: TObject);
begin
Pnl_Verde.Visible:= not Pnl_Verde.Visible;
 Form_Menu:= TForm_Menu.Create(Self);

  Try
    Form_Menu.ShowModal ;

    Finally
    Form_Menu.Release;
    Form_Menu := nil;

  End;
end;

procedure TForm_Logado.FormShow(Sender: TObject);
begin
DM.ADO_LOGADO.Open;
end;

procedure TForm_Logado.Timer1Timer(Sender: TObject);
begin
 StatusBar1.Panels[1].Text:= ' Data: ' +
 FormatDateTime(' dddd, dd " de " mmmm " de " yyyy ',Now);
 StatusBar1.Panels[0].Text:= ' Hora: '+(TimeToStr(Now));
end;

end.
