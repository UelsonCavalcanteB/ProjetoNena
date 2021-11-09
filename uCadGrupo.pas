unit uCadGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadForm, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.Mask, Vcl.DBCtrls, System.Actions, Vcl.ActnList,
  IBX.IBCustomDataSet;

type
  TfmCadGrupo = class(TfmForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GID: TIntegerField;
    GDESCRICAO: TIBStringField;
    GMARKUP: TIBBCDField;
    GEX: TIBStringField;
    GATIVO: TIBStringField;
    GIDUSUARIO: TIntegerField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSairClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure GNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    sTIPO : String;
  public
    { Public declarations }
  end;

var
  fmCadGrupo: TfmCadGrupo;

implementation

{$R *.dfm}
Uses udm;

procedure TfmCadGrupo.btEditarClick(Sender: TObject);
begin
  inherited;
   if G.State in [dsEdit] then
    G.Edit;
  STIPO := 'E';
end;

procedure TfmCadGrupo.btExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Desejá excluir o registro selecionado?','Confirmação',mb_yesno+MB_ICONINFORMATION) = mryes then
  begin
    dm.qPes.Close;
    dm.qPes.SQL.Clear;
    dm.qPes.SQL.Add('update grupos set EX = 1 where ID = ' + QuotedStr(GID.Text));
    dm.qPes.Open;
    dm.IBTransaction1.Commit;
  end;
end;

procedure TfmCadGrupo.btNovoClick(Sender: TObject);
begin
  inherited;
  if G.State in [dsInsert] then
    G.Open;
  DBEdit2.SetFocus;
  STipo := 'I';
  G.Insert;
end;

procedure TfmCadGrupo.btPesquisarClick(Sender: TObject);
var
  Cod: Integer;
  Tip : String;
begin
  inherited;
  //
  if edCodigo.Text = '' then
    cod := 0
  else
    cod := strtoint(edCodigo.Text);
  if rgStatus.ItemIndex = 0 then
    Tip := 'S';
  if rgStatus.ItemIndex = 1 then
    Tip := 'N' ;
  if rgStatus.ItemIndex = -1 then
    Tip := 'E';
  G.Close;
  G.SelectSQL.Clear;
  G.SelectSQL.Add(' select *  from  GRUPOS '+
                            ' where EX = 0 '+
                            ' and (id = :idCli or :idCli = 0) '+
                            ' and (Ativo = :Atv or :atv = ''E'') '+
                            ' and (DESCRICAO  like  ''%'+edNome.Text+'%'')');
  G.ParamByName('idCli').AsInteger := Cod;
  G.ParamByName('Atv').AsString := Tip;
  G.Open;

end;

procedure TfmCadGrupo.btSairClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(fmCadGrupo);
end;

procedure TfmCadGrupo.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if STipo = 'I' then
  begin
    // Inseri o cadastro do cliente na tabela
    if GDESCRICAO.Text = '' then
    begin
      Application.MessageBox('O campo descrição não preenchido!','Atenção');
      DBEdit2.SetFocus;
      exit;
    end;

    if G.State in [dsInsert, dsEdit] then
      G.Post;
    dm.IBTransaction1.Commit;
    btSalvar.Enabled := True;
    G.Open;
    if Application.MessageBox('Desejá inserir um novo registro?','Confirmação',mb_yesno+MB_ICONINFORMATION) = mryes then
    begin
      G.Open;
      DBEdit2.SetFocus;
      btNovoClick(Application);
    end;
  end;
end;

procedure TfmCadGrupo.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TfmCadGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;
  G.Close;
  FreeAndNil(fmCadGrupo);
end;

procedure TfmCadGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  G.Open;
  sTipo := 'E';
end;

procedure TfmCadGrupo.GNewRecord(DataSet: TDataSet);
begin
  inherited;
  GATIVO.Value := 'S';
  GEX.Value    := '0';
end;

end.
