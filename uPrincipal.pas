unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TfmPrincipal = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Image1: TImage;
    ActionList1: TActionList;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    Grupo1: TMenuItem;
    N1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Funcionarios1: TMenuItem;
    Pedidos1: TMenuItem;
    Pediso1: TMenuItem;
    ConsultadeOramento1: TMenuItem;
    N2: TMenuItem;
    Venda1: TMenuItem;
    ConsultadeVenda1: TMenuItem;
    N3: TMenuItem;
    Financeiro1: TMenuItem;
    ContasReceber1: TMenuItem;
    Contasapagar1: TMenuItem;
    Consultas1: TMenuItem;
    Consultaspedidos1: TMenuItem;
    Configuraes1: TMenuItem;
    Paramtros1: TMenuItem;
    StatusBar1: TStatusBar;
    SpeedButton5: TSpeedButton;
    N4: TMenuItem;
    Marca1: TMenuItem;
    Parametrosdosistema1: TMenuItem;
    N5: TMenuItem;
    FormasdePagamento1: TMenuItem;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Sair1: TMenuItem;
    procedure Produtos1Click(Sender: TObject);
    procedure Funcionarios1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure Marca1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Parametrosdosistema1Click(Sender: TObject);
    procedure FormasdePagamento1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Sair1Click(Sender: TObject);

  private
    { Private declarations }
    sFechar : STRING;
  public
    { Public declarations }

  end;

var
  fmPrincipal: TfmPrincipal;

implementation

{$R *.dfm}
uses uDm,uCadLogin, uCadFornecedor, uCadFuncionario, uCadCliente, uCadGrupo, uCadEndereco, uCadMarca, uCadProduto, uCadEmpresa, uCadFormaPgt;



procedure TfmPrincipal.Action1Execute(Sender: TObject);
begin
 close;
end;

procedure TfmPrincipal.Clientes1Click(Sender: TObject);
begin
  // Chama o formulário de cadastro de cliente
 // sTipo := 'C';
  if (fmCadCliente = nil) then
    fmCadCliente := TfmCadCliente.Create(Application);
  fmCadCliente.Show;
end;

procedure TfmPrincipal.FormActivate(Sender: TObject);
begin
  sFechar := 'F';
end;

procedure TfmPrincipal.FormasdePagamento1Click(Sender: TObject);
begin
  if (fmCadFormaPgt = Nil) then
    fmCadFormaPgt := TfmCadFormaPgt.Create(Application);
  fmCadFormaPgt.Show;

end;

procedure TfmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
 // FreeAndNil(fmPrincipal);
end;


procedure TfmPrincipal.FormCreate(Sender: TObject);
begin
  sFechar := 'T';
end;

procedure TfmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if sFechar = 'F' then
  begin
    if (key = VK_Escape) then
      close;
  end;
end;

procedure TfmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    close;

end;

procedure TfmPrincipal.Fornecedores1Click(Sender: TObject);
begin
  if (fmCadFornecedor = nil) then
    fmCadFornecedor := TfmCadFornecedor.Create(Application);
  fmCadFornecedor.Show;
end;

procedure TfmPrincipal.Funcionarios1Click(Sender: TObject);
begin
  // Chamando o formulário de cadastro de produtos
  if (fmCadFuncionario = nil) then
    fmCadFuncionario := TfmCadFuncionario.Create(Application);
  fmCadFuncionario.Show;
end;

procedure TfmPrincipal.Grupo1Click(Sender: TObject);
begin
  // Chamando formulario de grupo
  if (fmCadGrupo = Nil) then
    fmCadGrupo := TfmCadGrupo.Create(Application);
  fmCadGrupo.Show;
end;

procedure TfmPrincipal.Marca1Click(Sender: TObject);
begin
  // Chamando o formulario de Marcas
  if (fmCadMarca = Nil) then
    fmCadMarca := TfmCadMarca.Create(Application);
  fmCadMarca.Show;
end;

procedure TfmPrincipal.Parametrosdosistema1Click(Sender: TObject);
begin
  // Chama o formulario de parâmetros
  if (fmCadEmpresa = nil) then
     fmCadEmpresa := TfmCadEmpresa.Create(Application);
   fmCadEmpresa.Show;
 
end;

procedure TfmPrincipal.Produtos1Click(Sender: TObject);
begin
 // Chamando o formulário de cadastro de produtos
  if (fmCadProduto = nil) then
    fmCadProduto := TfmCadProduto.Create(Application);
  fmCadProduto.Show;
end;

procedure TfmPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

end.
