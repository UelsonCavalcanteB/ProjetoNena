unit uCadFormaPgt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadForm, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.DBCtrls, Vcl.Mask, System.Actions, Vcl.ActnList,
  IBX.IBCustomDataSet;

type
  TfmCadFormaPgt = class(TfmForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GID: TIntegerField;
    GDESCRICAO: TIBStringField;
    GATIVO: TIBStringField;
    GEX: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure GNewRecord(DataSet: TDataSet);
    procedure btPesquisarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadFormaPgt: TfmCadFormaPgt;

implementation

{$R *.dfm}
Uses udm;

procedure TfmCadFormaPgt.Action1Execute(Sender: TObject);
begin
 // inherited;
 FreeAndNil(fmCadFormaPgt);
end;

procedure TfmCadFormaPgt.btPesquisarClick(Sender: TObject);
Var
  Cod: Integer;
  Tip: String;
begin
  inherited;
  //
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
  G.SelectSQL.Add(' select *  from FORMAS_DE_PAGAMENTO '+
                  ' WHERE EX = 0' +
                  ' and (id = :idCli or :idCli = 0) '+
                  ' and (Ativo = :Atv or :atv = ''E'') '+
                  ' and (DESCRICAO  like  ''%'+edNome.Text+'%'')');
  G.ParamByName('idCli').AsInteger := cod;
  G.ParamByName('Atv').AsString := Tip;
  G.Open;
end;

procedure TfmCadFormaPgt.btSairClick(Sender: TObject);
begin
 // inherited;
  FreeAndNil(fmCadFormaPgt);
end;

procedure TfmCadFormaPgt.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if G.State in [dsInsert] then
    G.Open;
  G.Post;
    dm.IBTransaction1.Commit;

end;

procedure TfmCadFormaPgt.DBGrid1DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   // Mudar a cor da linha conforme o status do cliente
  if (gdSelected in state) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color := clWindowText;

  if (GATIVO.Value = 'S') then
  begin
    DBGrid1.Canvas.Brush.Color := clWindow;
    dbgrid1.Canvas.Font.Color := clWindowText;

  end else begin
    DBGrid1.Canvas.Brush.Color := $000000EA;
    dbgrid1.Canvas.Font.Color := clWindowText;
  end;
   if GATIVO.Value = '' then
  begin
    DBGrid1.Canvas.Brush.Color := clWindow;
    dbgrid1.Canvas.Font.Color := clWindowText;
  end;

  DBGrid1.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawDataCell(rect,dbgrid1.Columns[datacol].Field,state);
end;

procedure TfmCadFormaPgt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // inherited;
  G.Close;
  FreeAndNil(fmCadFormaPgt);
end;

procedure TfmCadFormaPgt.FormCreate(Sender: TObject);
begin
  inherited;
  G.Open;
end;

procedure TfmCadFormaPgt.GNewRecord(DataSet: TDataSet);
begin
  GATIVO.Value := 'S';
  GEX.Value := '0';

end;

end.
