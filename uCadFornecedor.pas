unit uCadFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadForm, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.DBCtrls, Vcl.Mask, System.Actions, Vcl.ActnList,
  IBX.IBCustomDataSet, ACBrBase, ACBrSocket, ACBrConsultaCNPJ;

type
  TfmCadFornecedor = class(TfmForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    Label21: TLabel;
    DBEdit14: TDBEdit;
    Label22: TLabel;
    DBEdit15: TDBEdit;
    Label23: TLabel;
    DBEdit16: TDBEdit;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    Label14: TLabel;
    DBEdit18: TDBEdit;
    Label17: TLabel;
    DBEdit19: TDBEdit;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    DBUF: TDBComboBox;
    DBMemo1: TDBMemo;
    Label25: TLabel;
    GID: TIntegerField;
    GNOME: TIBStringField;
    GNOME_FANTASIA: TIBStringField;
    GCPF_CNPJ: TIBStringField;
    GINSCRICAO_ESTADUAL_RG: TIBStringField;
    GLOGRADOURO: TIBStringField;
    GNUMERO: TIBStringField;
    GCOMPLEMENTO: TIBStringField;
    GBAIRRO: TIBStringField;
    GCOD_CIDADE: TIntegerField;
    GUF: TIBStringField;
    GCEP: TIBStringField;
    GTELEFONE1: TIBStringField;
    GTELEFONE2: TIBStringField;
    GCELULAR: TIBStringField;
    GLIMITE_CREDITO: TIBBCDField;
    GEMAIL: TIntegerField;
    GOBSERVACAO: TIBStringField;
    GCOD_USUARIO_INCLUSAO: TIBStringField;
    GCOD_USUARIO_ALTERACAO: TIBStringField;
    GDATA_INCLUSAO: TDateField;
    GDATA_ALTERACAO: TDateField;
    GIE_MUNICIPAL: TIBStringField;
    GDS_EMAIL: TIBStringField;
    GEX: TIBStringField;
    GATIVO: TIBStringField;
    ACBrConsultaCNPJ: TACBrConsultaCNPJ;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure GNewRecord(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    sTipo : String;
  public
    { Public declarations }
  end;

var
  fmCadFornecedor: TfmCadFornecedor;

implementation

{$R *.dfm}

uses uDm, uCadCnpj;



procedure TfmCadFornecedor.btEditarClick(Sender: TObject);
begin
  inherited;
   if G.State in [dsEdit] then
    G.Edit;
end;

procedure TfmCadFornecedor.btExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Desejá excluir o registro selecionado?','Confirmação',mb_yesno+MB_ICONINFORMATION) = mryes then
  begin
    dm.qPes.Close;
    dm.qPes.SQL.Add('update forncedor set ex = 1 where ID = ' + QuotedStr(GID.Text));
    dm.qPes.Open;
    dm.IBTransaction1.Commit;
  end;
end;

procedure TfmCadFornecedor.btNovoClick(Sender: TObject);
begin
  inherited;
  if G.State in [dsInsert] then
    G.Open;
  DBEdit2.SetFocus;
  STipo := 'I';
  G.Insert;
  DBEdit2.Text := FormatDateTime('dd/mm/yyyy',date);
end;

procedure TfmCadFornecedor.btPesquisarClick(Sender: TObject);
Var
  Cod: Integer;
  Tip: String;
begin
  inherited;

end;

procedure TfmCadFornecedor.btSairClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(fmCadFornecedor);
end;

procedure TfmCadFornecedor.DBGrid1DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // Mudar a cor da linha conforme o status do cliente
  if (gdSelected in state) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color := clWindowText;

  if (GATIVO.Value = 'S') or (GATIVO.Value = '') then
  begin
    DBGrid1.Canvas.Brush.Color := clWindow;
    dbgrid1.Canvas.Font.Color := clWindowText;

  end else begin
    DBGrid1.Canvas.Brush.Color := $000000EA;
    dbgrid1.Canvas.Font.Color := clWindowText;
  end;

  DBGrid1.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawDataCell(rect,dbgrid1.Columns[datacol].Field,state);
end;

procedure TfmCadFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;
  G.Close;
  FreeAndNil(fmCadFornecedor);
end;

procedure TfmCadFornecedor.FormCreate(Sender: TObject);
begin
  //inherited;
  G.Open;
end;

procedure TfmCadFornecedor.GNewRecord(DataSet: TDataSet);
begin
  inherited;
  GATIVO.Value := 'S';
  GEX.Value    := '0';
end;

procedure TfmCadFornecedor.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if (fmCadCnpj = Nil) then
    fmCadCnpj := TfmCadCnpj.Create(Application);
  fmCadCnpj.Show;
end;

end.
