unit uCadMarca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadForm, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.DBCtrls, Vcl.Mask, IBX.IBCustomDataSet,
  System.Actions, Vcl.ActnList;

type
  TfmCadMarca = class(TfmForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GID: TIntegerField;
    GDESCRICAO: TIBStringField;
    GATIVO: TIBStringField;
    GEX: TIBStringField;
    GIDUSUARIO: TIntegerField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure GNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    sTipo : String;
  public
    { Public declarations }
  end;

var
  fmCadMarca: TfmCadMarca;

implementation

{$R *.dfm}
uses udm;

procedure TfmCadMarca.btEditarClick(Sender: TObject);
begin
  inherited;
  if G.State in [dsEdit] then
    G.Edit;
  STIPO := 'E';
end;

procedure TfmCadMarca.btExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Desej� excluir o registro selecionado?','Confirma��o',mb_yesno+MB_ICONINFORMATION) = mryes then
  begin
    dm.qPes.Close;
    dm.qPes.SQL.Clear;
    dm.qPes.SQL.Add('update marcas set EX = 1 where ID = ' + QuotedStr(GID.Text));
    dm.qPes.Open;
    dm.IBTransaction1.Commit;
  end;
end;

procedure TfmCadMarca.btNovoClick(Sender: TObject);
begin
  inherited;
  if G.State in [dsInsert] then
    G.Open;
  DBEdit2.SetFocus;
  STipo := 'I';
  G.Insert;

end;

procedure TfmCadMarca.btPesquisarClick(Sender: TObject);
var
  Tip: String;
  Cod: Integer;
begin
  inherited;
  // montar os filtros de pesquisas
  if edCodigo.Text = '' then
    Cod := 0
  else
    Cod := strtoint(edCodigo.Text);
   if rgStatus.ItemIndex = 0 then
    Tip := 'S';
  if rgStatus.ItemIndex = 1 then
    Tip := 'N';
  if rgStatus.ItemIndex = -1 then
    Tip := 'E';
  G.Close;
  G.SelectSQL.Clear;
  G.SelectSQL.Add(' select *  from  MARCAS '+
                  ' where EX = 0  '+
                  ' and (id = :idCli or :idCli = 0) '+
                  ' and (Ativo = :Atv or :atv = ''E'') '+
                  ' and (Descricao  like  ''%'+edNome.Text+'%'')');
  G.ParamByName('idCli').AsInteger := Cod;
  G.ParamByName('Atv').AsString := Tip;
  G.Open;
end;

procedure TfmCadMarca.btSairClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(fmCadMarca);
end;

procedure TfmCadMarca.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if STipo = 'I' then
  begin
    // Inseri o cadastro do cliente na tabela
    if G.State in [dsInsert, dsEdit] then
      G.Post;
    dm.IBTransaction1.Commit;
    btSalvar.Enabled := True;
    G.Open;
    if Application.MessageBox('Desej� inserir um novo registro?','Confirma��o',mb_yesno+MB_ICONINFORMATION) = mryes then
    begin
      G.Open;
      DBEdit2.SetFocus;
      btNovoClick(Application);
    end;
  end;
end;

procedure TfmCadMarca.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TfmCadMarca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;
  G.Close;
  FreeAndNil(fmCadMarca);
end;

procedure TfmCadMarca.FormCreate(Sender: TObject);
begin
  inherited;
  G.Open;
  sTipo := 'E';
end;

procedure TfmCadMarca.GNewRecord(DataSet: TDataSet);
begin
  inherited;
  GATIVO.Value := 'S';
  GEX.Value := '0';
end;

end.