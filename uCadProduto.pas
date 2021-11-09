unit uCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadForm, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.DBCtrls, Vcl.Mask, System.Actions, Vcl.ActnList,
  IBX.IBCustomDataSet;

type
  TfmCadProduto = class(TfmForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    DBEdit12: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label17: TLabel;
    DBEdit10: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    Label21: TLabel;
    DBEdit14: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadProduto: TfmCadProduto;

implementation

{$R *.dfm}

uses udm;

procedure TfmCadProduto.btSairClick(Sender: TObject);
begin
  //inherited;
  FreeAndNil(fmCadProduto);
end;

procedure TfmCadProduto.DBEdit11Exit(Sender: TObject);
begin
  inherited;
  if dm.IB_ProdutoUNIDADE.AsInteger = 0 then
  begin
    Application.MessageBox('Campo Unidade n�o preenchido!','Aten��o');
    DBEdit11.SetFocus;
    exit;
  end;
  dm.IB_ProdutoESTOQUE.text := dm.IB_ProdutoUNIDADE.Value;
end;

procedure TfmCadProduto.DBEdit7Exit(Sender: TObject);
Var
  mkt : real;
begin
  inherited;
  if dm.IB_ProdutoUnidade.value = '0' then
  begin
    Application.MessageBox('Campo unidade n�o preenchido!','Aten��o');
    DBEdit11.SetFocus;
    exit;
  end;
  if dm.IB_ProdutoMARKUP.AsInteger = 0 then
  begin
    Application.MessageBox('Campo % Margem n�o preechido!','Aten��o');
    DBEdit7.SetFocus;
    exit;
  end;
//  mkt := (dm.IB_ProdutoPRECOCUSTO.AsFloat)/(100 (dm.IB_ProdutoMARKUP.asfloat*strtofloat)/100);
//  dm.IB_ProdutoPRECOVENDA.asfloat := mkt;
end;

procedure TfmCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // inherited;
  FreeAndNil(fmCadProduto);
//  AcTion := Cafree;
end;

procedure TfmCadProduto.FormCreate(Sender: TObject);
begin
  inherited;
  dm.IB_Produto.Open;
  //dm.ib_grupo.Open;
 // dm.Ib_Fornecedor.Open;
 // dm.Ib_Fornecedor.FetchAll;
 // dm.ib_marca.Open;
 // dm.ib_marca.FetchAll;
 // dm.ib_grupo.FetchAll;
end;

end.