unit uCadFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadForm, Data.DB, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ToolWin,
  Vcl.DBCtrls, Vcl.Mask, uCadEndereco, IBX.IBCustomDataSet;

type
  TfmCadFuncionario = class(TfmForm)
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
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    DBEdit15: TDBEdit;
    Label22: TLabel;
    DBEdit16: TDBEdit;
    Label23: TLabel;
    DBEdit17: TDBEdit;
    Panel1: TPanel;
    Label24: TLabel;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    DBEdit19: TDBEdit;
    Label26: TLabel;
    Edit3: TEdit;
    Label27: TLabel;
    DBEdit20: TDBEdit;
    Panel2: TPanel;
    DBComboBox1: TDBComboBox;
    Label28: TLabel;
    frmEndereco1: TfrmEndereco;
    TabSheet1: TTabSheet;
    GID: TIntegerField;
    GNOME: TIBStringField;
    GCPF: TIBStringField;
    GRG: TIBStringField;
    GDATA_NASCIMENTO: TDateField;
    GTELEFONE: TIBStringField;
    GCELULAR: TIBStringField;
    GNOME_MAE: TIBStringField;
    GNOME_PAI: TIBStringField;
    GCNH_TIPO: TIBStringField;
    GREGISTRO_CNH: TIBStringField;
    GDATA_CNH: TDateField;
    GDATAVALIDADE_CNH: TDateField;
    GCADASTRO: TDateField;
    GDATA_INATIVADO: TDateField;
    GCARTEIRA_IDENTIFICACAO: TIntegerField;
    GCARTEIRA_NUMERO: TIntegerField;
    GCARTEIRA_SERIE: TIntegerField;
    GCARTEIRA_UF: TIBStringField;
    GUSUARIO: TIBStringField;
    GSENHA: TIntegerField;
    GATIVO: TIBStringField;
    GEMAIL: TIBStringField;
    GEX: TIBStringField;
    GIDUSUARIO: TIntegerField;
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btSairClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadFuncionario: TfmCadFuncionario;

implementation

{$R *.dfm}
uses udm;

procedure TfmCadFuncionario.btEditarClick(Sender: TObject);
begin
  inherited;
  if G.State in [dsEdit] then
    G.Edit;

end;

procedure TfmCadFuncionario.btExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Desej� excluir o registro selecionado?','Confirma��o',mb_yesno+MB_ICONINFORMATION) = mryes then
  begin
    // mudar o ex do funcion�rio para 1
    dm.qPes.Close;
    DM.qPes.SQL.Clear;
    dm.qPes.SQL.Add('update funcionario set EX = 1 where ID = '+ QuotedStr(GID.Text));
    dm.qPes.Open;
    // Muda o endere�o funcion�rio para 1
    dm.qUp.Close;
    dm.qUp.SQL.Clear;
    dm.qUp.SQL.Add('update endereco set ex = 1 where idfuncionario = '+ QuotedStr(GID.Text));
    dm.qUp.Open;
    dm.IBTransaction1.Commit;
  end;
end;

procedure TfmCadFuncionario.btNovoClick(Sender: TObject);
begin
  inherited;
  if G.State in [dsInsert] then
    G.Open;
end;

procedure TfmCadFuncionario.btPesquisarClick(Sender: TObject);
var
  cod : Integer;
  Tip : string;
begin
  inherited;
  // realiza a pesquisa pelo c�digo
  if edCodigo.Text = '' then
    Cod := 0
  else
    cod := strtoint(edCodigo.Text);
  // faz a verifica��o pelo status
  if rgStatus.ItemIndex = 0 then
    Tip := 'S';
  if rgStatus.ItemIndex = 1 then
    Tip := 'N';
  if rgStatus.ItemIndex = -1 then
    Tip := 'E';
  // Faz a pesquisa sem mudar usando o mesmo componente
  G.Close;
  G.SelectSQL.Clear;
  G.SelectSQL.Add(' select * from  FUNCIONARIO '+
                                  ' where EX = 0 and (id = :idCli or :idCli = 0)'+
                                  ' and (ativo = :Atv or :atv = ''E'') '+
                                  ' and (Nome like ''%'+edNome.Text+'%'')');
  G.ParamByName('idCli').AsInteger := Cod;
  G.ParamByName('Atv').AsString := Tip;
  G.Open;
end;

procedure TfmCadFuncionario.btSairClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(fmCadFuncionario);
end;

procedure TfmCadFuncionario.btSalvarClick(Sender: TObject);
begin
  inherited;
  // realizando as verifica��es antes de Salvar
  if GNOME.Text = '' then
  begin
    Application.MessageBox('Campo nome do funcion�rio n�o preenchido!','Aten��o');
    DBEdit3.SetFocus;
    exit;
  end;
  if GCPF.Value = '' then
  begin
    Application.MessageBox('Campo CPF n�o preenchido','Aten��o');
    DBEdit4.SetFocus;
    exit;
  end;
  if G.State in [dsInsert, dsedit] then
    G.Post;
  dm.IBTransaction1.Commit;

end;

procedure TfmCadFuncionario.DBGrid1DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // Mudar a cor da linha conforme o status do cliente
  if (gdSelected in state) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color := clWindowText;

 if GATIVO.Value = 'N' then
  begin
    DBGrid1.Canvas.Brush.Color := $000000EA;//clWindow;
    dbgrid1.Canvas.Font.Color := clWindowText;

  end else begin
    DBGrid1.Canvas.Brush.Color := clWindow;
    dbgrid1.Canvas.Font.Color := clWindowText;
  end;

  DBGrid1.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawDataCell(rect,dbgrid1.Columns[datacol].Field,state);
end;

procedure TfmCadFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 // inherited;
  G.Close;
  FreeAndNil(fmCadFuncionario);
end;

procedure TfmCadFuncionario.FormCreate(Sender: TObject);
begin
  //inherited;
  G.Open;
end;

procedure TfmCadFuncionario.PageControl1Change(Sender: TObject);
begin
  inherited;
  edit3.Text := GSENHA.Text;
end;

end.
