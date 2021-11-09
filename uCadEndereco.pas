unit uCadEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmEndereco = class(TFrame)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    btSalvar: TSpeedButton;
    btEditar: TSpeedButton;
    btExcluir: TSpeedButton;
    DBComboBox1: TDBComboBox;
    procedure btSalvarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;
 VAR sTipo : String;
implementation

{$R *.dfm}
Uses udm;
 Var CadId : integer;


procedure TfrmEndereco.btSalvarClick(Sender: TObject);
begin
  if sTipo = 'C' then
  begin
    if dm.ibEndCliente.State in [dsInsert, dsEdit]  then
      dm.ibEndCliente.Open;
    //dm.ibEndClienteIDCLIENTE.Value := GID.Value;
    dm.ibEndCliente.Post;
    dm.IBTransaction1.Commit;

  end;
 { if dm.Ib_Endereco.State in [dsInsert, dsEdit]  then
    dm.Ib_Endereco.Open;
  dm.Ib_EnderecoIDCLIENTE.Value := dm.IB_ClienteID.Value;
  dm.Ib_Endereco.Post;
  dm.IBTransaction1.Commit;
  dm.IB_Cliente.Open;
  dm.Ib_Endereco.Close;
  dm.Ib_Endereco.ParamByName('IdCli').Value := dm.IB_ClienteID.Value;
  dm.Ib_Endereco.Open;     }

end;

procedure TfrmEndereco.btEditarClick(Sender: TObject);
begin
  if dm.Ib_Endereco.State in [dsEdit]  then
    dm.Ib_Endereco.Edit;
  dm.Ib_Endereco.Post;
  dm.IBTransaction1.Commit;
end;

procedure TfrmEndereco.btExcluirClick(Sender: TObject);
begin
  dm.qPes.Close;
  dm.qPes.SQL.Clear;
  if DM.Ib_EnderecoIDCLIENTE.Value <> 0 then
  begin
    dm.qPes.SQL.Add('update endereco set ex = 1 where id = ' + QuotedStr(dm.Ib_EnderecoID.text));
    dm.qPes.Open;
    dm.IBTransaction1.Commit;
  end;
end;

end.