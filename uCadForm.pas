unit uCadForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.ToolWin, ACBrValidador,
  IBX.IBCustomDataSet;

type
  TfmForm = class(TForm)
    ToolBar1: TToolBar;
    btNovo: TToolButton;
    ToolButton2: TToolButton;
    btEditar: TToolButton;
    ToolButton4: TToolButton;
    ImageList1: TImageList;
    btExcluir: TToolButton;
    ToolButton6: TToolButton;
    btSalvar: TToolButton;
    ToolButton8: TToolButton;
    btImp: TToolButton;
    ToolButton10: TToolButton;
    btSair: TToolButton;
    Label1: TLabel;
    Label2: TLabel;
    pnPesquisa: TPanel;
    lbNome: TLabel;
    btPesquisar: TSpeedButton;
    lbCodigo: TLabel;
    edNome: TEdit;
    edCodigo: TEdit;
    rgStatus: TRadioGroup;
    PageControl1: TPageControl;
    tbDados: TTabSheet;
    tbCadastro: TTabSheet;
    pnLegenda: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    Action1: TAction;
    dsG: TDataSource;
    G: TIBDataSet;
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action1Execute(Sender: TObject);
    procedure edNomeExit(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edNomeChange(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  fmForm: TfmForm;

implementation

{$R *.dfm}

uses udm;

procedure TfmForm.Action1Execute(Sender: TObject);
begin
  close;
end;

procedure TfmForm.btNovoClick(Sender: TObject);
begin
 PageControl1.TabIndex := 1;

end;

procedure TfmForm.btSairClick(Sender: TObject);
begin
  FreeAndNil(fmForm);
end;

procedure TfmForm.btSalvarClick(Sender: TObject);
begin
//  PageControl1.TabIndex := 0;
end;

procedure TfmForm.edCodigoExit(Sender: TObject);
begin
  btPesquisar.OnClick(Application);
end;

procedure TfmForm.edNomeChange(Sender: TObject);
begin
  btPesquisar.OnClick(Application);
end;

procedure TfmForm.edNomeExit(Sender: TObject);
begin
  btPesquisar.OnClick(Application);
end;

procedure TfmForm.FormActivate(Sender: TObject);
begin
  btPesquisar.OnClick(Application);
end;

procedure TfmForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfmForm.FormCreate(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
  PageControl1Change(Application);
end;

procedure TfmForm.PageControl1Change(Sender: TObject);
begin
  // Habilita menus
  if PageControl1.TabIndex = 1 then
  begin
    btNovo.Enabled     := False;
    btEditar.Enabled   := False;
    btExcluir.Enabled  := False;
    btImp.Enabled      := False;
    btSalvar.Enabled   := True;
    btSair.Enabled     := True;

  end;
  if PageControl1.TabIndex = 0 then
  begin
    btNovo.Enabled      := True;
    btEditar.Enabled    := True;
    btExcluir.Enabled   := True;
    btImp.Enabled       := True;
    btSalvar.Enabled    := True;
    btSair.Enabled      := True;
  end;
end;

end.