unit Unit_DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Datasnap.DBClient,
  Datasnap.Provider;

type
  TDM = class(TDataModule)
    DMConexao: TADOConnection;
    ADO_Inspecao: TADOQuery;
    ADO_InspecaoCod_Inspecao: TAutoIncField;
    ADO_InspecaoInsp_Tproblemas: TStringField;
    ADO_InspecaoInsp_Nproblema: TStringField;
    ADO_InspecaoInsp_Cproblema: TStringField;
    ADO_InspecaoInsp_Inspecionado: TStringField;
    ADO_InspecaoInsp_Descricao: TStringField;
    ADO_InspecaoInsp_checar: TStringField;
    ADO_InspecaoImag_descricao: TStringField;
    ADO_LOGADO: TADOQuery;
    ADO_LOGADOl_lote: TIntegerField;
    ADO_LOGADOM_descricao: TStringField;
    Dts_Historico: TDataSource;
    Ado_Historico: TADOQuery;
    Ado_Loguin: TADOQuery;
    Ado_LoguinNome: TStringField;
    Ado_LoguinSenha: TIntegerField;
    Qry_Listagem: TADOQuery;
    Qry_ListagemCod_func: TAutoIncField;
    Qry_ListagemNome: TStringField;
    Qry_ListagemCargo: TStringField;
    Qry_ListagemSenha: TIntegerField;
    Ado_HistoricoCod_Modelo: TAutoIncField;
    Ado_HistoricoCod_func: TAutoIncField;
    Ado_HistoricoCargo: TStringField;
    Ado_HistoricoM_descricao: TStringField;
    Ado_HistoricoNome: TStringField;
    Ado_HistoricoI_DataInicial: TWideStringField;
    Ado_HistoricoI_Finalizar: TStringField;
    Ado_HistoricoI_Historico: TStringField;
    Ado_HistoricoI_horaInicial: TWideStringField;
    Qry_grid_Usu: TADOQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    Ado_Insp_Grid: TADOQuery;
    procedure ADO_InspecaoBeforeInsert(DataSet: TDataSet);
    procedure ADO_InspecaoAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit_insp1, Unit_Logado, Unit_loguin, Unit_Menu, Unit_Historico,
  Unit_cadastroUsuario;

{$R *.dfm}

procedure TDM.ADO_InspecaoAfterScroll(DataSet: TDataSet);
var img:string;
begin
//  img:= DM.ADO_Inspecao.FieldByName('Imag_descricao').AsString;
//  Edt_Imagem.Text:=img;
//  Image1.Picture.LoadFromFile(img);
end;

procedure TDM.ADO_InspecaoBeforeInsert(DataSet: TDataSet);
begin
//DM.ADO_Inspecao.Last;


end;

end.
