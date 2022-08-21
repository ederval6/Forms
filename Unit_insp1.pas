unit Unit_insp1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, System.ImageList,
  Vcl.ImgList, Vcl.Mask, Vcl.DBCtrls, Datasnap.DBClient,JPEG;

type
  TForm_Insp1 = class(TForm)
    Ds_Inspecao: TDataSource;
    Opg_Imag_Insp: TOpenDialog;
    Panel1: TPanel;
    Lbl_Inspecao: TLabel;
    Lbl_Tpoblemas: TLabel;
    Lbl_Nproblemas: TLabel;
    Lbl_Cproblemas: TLabel;
    Lbl_Inspecionado: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Pnl_Bloco4: TPanel;
    Btn_Salvar: TBitBtn;
    Btn_Alterar: TBitBtn;
    Btn_Excluir: TBitBtn;
    Btn_Inserir: TBitBtn;
    Btn_Novo: TBitBtn;
    Btn_Inser_Img: TBitBtn;
    Edt_Codigo: TDBEdit;
    Cb_TProblemas: TDBComboBox;
    Cb_Nproblemas: TDBComboBox;
    Cb_Cproblemas: TDBComboBox;
    Pnl_Bloco1: TPanel;
    Pnl_Bboco2: TPanel;
    Pnl_Bloco3: TPanel;
    Pnl_Titulo: TPanel;
    Db_Chec_sim: TDBCheckBox;
    Db_Chec_nao: TDBCheckBox;
    Edt_Imagem: TDBEdit;
    Edt_Inspecionado: TDBComboBox;
    Btn_Fechar: TBitBtn;
    Image1: TImage;
    Edt_Descricao: TDBMemo;
    Ds_Insp_Grid: TDataSource;
    procedure Btn_sairClick(Sender: TObject);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure Db_tiposprobelmasChange(Sender: TObject);
    procedure Btn_SalvarClick(Sender: TObject);
    procedure Btn_NovoClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_InserirClick(Sender: TObject);
    procedure Btn_InserirEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Btn_Inser_ImgClick(Sender: TObject);
    procedure Edt_ImagemChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Edt_ImagemExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Btn_Inser_ImgEnter(Sender: TObject);
    procedure Ds_InspecaoStateChange(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Cb_TProblemasChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Insp1: TForm_Insp1;

implementation

{$R *.dfm}

uses Unit_Logado, Unit_loguin, Unit_Menu, Unit_DM, Unit_Historico;

procedure TForm_Insp1.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TForm_Insp1.Btn_AlterarClick(Sender: TObject);
begin
//Form_Insp1.Edt_Codigo.Text:=DBGrid1.Fields[0].Value;
//Form_Insp1.Cb_TProblemas.Text:=DBGrid1.Fields[1].Value;
//Form_Insp1.Cb_Nproblemas.Text:=DBGrid1.Fields[2].Value;
//Form_Insp1.Cb_Cproblemas.Text:=DBGrid1.Fields[3].Value;
//Form_Insp1.Edt_Inspecionado.Text:=DBGrid1.Fields[4].Value;
//Form_Insp1.Edt_Descricao.Text:=DBGrid1.Fields[5].Value;
//Form_Insp1.Edt_Chec.Text:=DBGrid1.Fields[6].Value;
//Form_Insp1.Edt_Quantidade.Text:=DBGrid1.Fields[7].Value;
////Form_Insp1.Image1.Picture.LoadFromFile(DBGrid1.Fields[8].Value);
//Form_Insp1.Edt_Imagem.Text:=DBGrid1.Fields[8].OldValue ;
//
//  DM.ADO_Inspecao.edit;

end;

procedure TForm_Insp1.Btn_ExcluirClick(Sender: TObject);
begin
if MessageDlg('Deseja Excluir Este Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
begin
DM.ADO_Inspecao.Delete;
end;

end;

procedure TForm_Insp1.Btn_FecharClick(Sender: TObject);
begin
close;
end;

procedure TForm_Insp1.Btn_InserirClick(Sender: TObject);
begin

//  DM.ADO_Inspecao.Close;
//  DM.ADO_Inspecao.Open;
//  DM.ADO_Inspecao.Append;
//  DM.ADO_Inspecao.FieldByName('Cod_Inspecao').Value := IntToStr(StrToInt(Edt_Codigo.Text)) ;
//  DM.ADO_Inspecao.FieldByName('Insp_Tproblemas').Value := Cb_TProblemas.Text;
//  DM.ADO_Inspecao.FieldByName('Insp_Nproblema').Value :=Cb_Nproblemas.Text;
//  DM.ADO_Inspecao.FieldByName('Insp_Cproblema').Value :=Cb_Cproblemas.Text;
//  DM.ADO_Inspecao.FieldByName('Insp_Inspecionado').Value := Edt_Inspecionado.Text;
//  DM.ADO_Inspecao.FieldByName('Insp_Descricao').Value := Edt_Descricao.Text;
//  DM.ADO_Inspecao.FieldByName('Insp_checar').Value:= Edt_Chec.Text;
//  DM.ADO_Inspecao.FieldByName('Insp_Quantiade').Value := IntToStr(StrToInt(Edt_Quantidade.Text)) ;
//
//  DM.ADO_Inspecao.FieldByName('Imag_descricao').Value :=Edt_Imagem.Text;
// // Edt_Imagem.text:=ExtractFilePath(Opg_Imag_Insp.FileName);
  // DM.ADO_Inspecao.FieldByName('Insp_imagens').AsInteger := StrToInt(Edt_Cod_Imagem.Text) ;






 end;


procedure TForm_Insp1.Btn_InserirEnter(Sender: TObject);
begin
// if Edt_Codigo.Text='' then
// begin
//
//  ADO_Inspecao.Append;
//
// end;
end;

procedure TForm_Insp1.Btn_Inser_ImgClick(Sender: TObject);
 var origem: string;

begin
// if ( Opg_Imag_Insp.Execute()) then
// begin
//  Image1.Picture.LoadFromFile(Opg_Imag_Insp.FileName);
//  origem:= Opg_Imag_Insp.FileName;
//  Delete(origem,1 ,Length(ExtractFilePath(Opg_Imag_Insp.FileName)));
//  DM.ADO_InspecaoImag_descricao.Value:=origem;
//  end;
 dm.ADO_Inspecao.Open;
if ( Opg_Imag_Insp.Execute = true) then
 begin
  Image1.Picture.LoadFromFile(Opg_Imag_Insp.FileName);
  Edt_Imagem.Field.Value:= ExtractFilePath(Opg_Imag_Insp.FileName) +
   ExtractFileName (Opg_Imag_Insp.FileName);

 end;



  

  end;



procedure TForm_Insp1.Btn_Inser_ImgEnter(Sender: TObject);

//var origem: string;

begin
// if ( Opg_Imag_Insp.Execute = true) then
// begin
//  Image1.Picture.LoadFromFile(Opg_Imag_Insp.FileName);
//  Edt_Imagem.Field.Value:= ExtractFilePath(Opg_Imag_Insp.FileName) +
//   ExtractFileName (Opg_Imag_Insp.FileName);
//end;
end;

procedure TForm_Insp1.Btn_NovoClick(Sender: TObject);
begin

  DM.ADO_Inspecao.append;
 // DM.ADO_Inspecao.Last;

 Edt_Codigo.Text:='';
 Cb_TProblemas.Text:='';
 Cb_Cproblemas.Text:='';
 Cb_Nproblemas.Text:='';
 Edt_Inspecionado.Text:='';
 Edt_Descricao.Text:='';
 Db_Chec_sim.Caption :='';
 Db_Chec_nao.Caption:='';
 Edt_Imagem.Text:='';



//Edt_Cod_Imagem.Text:='';

end;

procedure TForm_Insp1.Btn_sairClick(Sender: TObject);
begin
Close;
end;

procedure TForm_Insp1.Btn_SalvarClick(Sender: TObject);
//var
//Validacao : Boolean;
//informa: TStringBuilder;

begin
 if Db_Chec_sim.Checked = false then
 begin
  ShowMessage('O CAMPO N�O PODE FICAR VAZIO');
  Db_Chec_sim.SetFocus;
 end
 else

 if Cb_TProblemas.Text ='' then
 begin
   ShowMessage('O CAMPO N�O PODE FICAR VAZIO')
 end
 ELSE
 if Cb_Nproblemas .Text ='' then
 begin
   ShowMessage('O CAMPO N�O PODE FICAR VAZIO')
 end
 ELSE

   if Cb_Cproblemas .Text ='' then
 begin
   ShowMessage('O CAMPO N�O PODE FICAR VAZIO')

 END
 ELSE
 if Edt_Inspecionado .Text ='' then
 begin
   ShowMessage('O CAMPO N�O PODE FICAR VAZIO')
 end
 else
 if Edt_Imagem .Text ='' then
 begin
   ShowMessage('O CAMPO N�O PODE FICAR VAZIO');
   Exit;
 end
 else
 begin




  DM.ADO_Inspecao.Post;

  DM.Ado_Insp_Grid.close;
  DM.Ado_Insp_Grid.open;



  ShowMessage('Cadastro salvo com Sucesso!');
 end;



 end;



procedure TForm_Insp1.Cb_TProblemasChange(Sender: TObject);
begin


end;

// Edt_Imagem.Field.Value:=Edt_Codigo.Field.Value;



procedure TForm_Insp1.DBGrid1CellClick(Column: TColumn);

begin



//DM.ADO_Inspecao.close;
//  dm.ADO_Inspecao.Open;
// Cod:= DM.ADO_Inspecao.FieldByName('Cod_Inspecao,Insp_Tproblemas').AsInteger ;
////
////
// DM.ADO_Inspecao.Locate('Cod_Inspecao',Cod,[]);

end;

procedure TForm_Insp1.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin

 begin

    if ( Db_Chec_sim.Checked = true )then
   begin
   with DbGrid1 do begin
    if  Ds_Inspecao.DataSet.State in [dsEdit, dsInsert, dsBrowse] then
    DBGrid1. Canvas.Brush.Color:=clRed ;
   end;
   end;
 end;
end;

procedure TForm_Insp1.DBGrid1Exit(Sender: TObject); var img:string;
begin


end;

procedure TForm_Insp1.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

    if dm.ADO_InspecaoImag_descricao.Value <> '' then
    begin
//      DM.Ado_Insp_Grid.close;
//
//      dm.ADO_Inspecao.close;

      Image1.Picture.LoadFromFile(dm.ADO_InspecaoImag_descricao.AsString);
      dm.ADO_Inspecao.Open;
       DM.Ado_Insp_Grid.open;



    end;
end;

procedure TForm_Insp1.Db_tiposprobelmasChange(Sender: TObject);
begin
//Db_tiposprobelmas.Text:=ComboBox1.Text;
end;

procedure TForm_Insp1.Ds_InspecaoStateChange(Sender: TObject);
begin
Btn_Inser_Img.Enabled:= Ds_Inspecao.State in [dsInsert, dsEdit];

end;

procedure TForm_Insp1.Edt_ImagemChange(Sender: TObject);
begin
//Edt_Imagem.Field.Value:=Edt_Codigo.Field.Value;
end;

procedure TForm_Insp1.Edt_ImagemExit(Sender: TObject);
begin
// With DM.ADO_Inspecao do
// begin
//   Close;
//   SQL.Clear;
//   SQL.Add('Select Imag_descricao FROM  Imagem');
//   Parameters.ParamByName(' Imag_descricao').Value:=Edt_Imagem.Text;
// end;
end;

procedure TForm_Insp1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM.ADO_Inspecao.Close;

if Db_Chec_sim.Checked = true then
begin
//  Edt_Codigo.Enabled:=False;
  DM.ADO_Inspecao.Close;
  DM.DMConexao.Close;
  Db_Chec_nao.Enabled:=False;

end


end;

procedure TForm_Insp1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  Perform(WM_NEXTDLGCTL,0,0);


end;

procedure TForm_Insp1.FormShow(Sender: TObject);
begin


DM.ADO_Inspecao.Open ;



if Db_Chec_sim.Checked = true then
begin

  Db_Chec_nao.Enabled:=False;
end









end;

end.
