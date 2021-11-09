unit uCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadForm, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.Mask, Vcl.DBCtrls, uCadEndereco, System.Actions,
  Vcl.ActnList;

type
  TfmCadCliente = class(TfmForm)
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
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Panel1: TPanel;
    frmEndereco1: TfrmEndereco;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
    Var STipo : String;
  public
    { Public declarations }
  end;

var
  fmCadCliente: TfmCadCliente;

implementation

{$R *.dfm}
uses udm;


procedure TfmCadCliente.btEditarClick(Sender: TObject);
begin
  inherited;
  if dm.ib_cliente.State in [dsInsert, dsEdit] then
    dm.IB_Cliente.Edit;
  STIPO := 'E';
end;

procedure TfmCadCliente.btExcluirClick(Sender: TObject);
begin
  inherited;
  // Excluir o cadastro do cliente
  if dm.IB_ClienteID.AsInteger > 0 then
  begin
    if Application.MessageBox('Desejá excluir o registro selecionado?','Confirmação',mb_yesno+MB_ICONINFORMATION) = mryes then
    begin
      dm.qPes.Close;
      dm.qPes.SQL.Clear;
      dm.qPes.SQL.Add('update CLIENTE  set X = 1 where ID = ' +QuotedStr(DBEdit1.Text));
      DM.qPes.Open;
      DM.IBTransaction1.Commit;
      DM.IB_Cliente.Close;
      DM.IB_Cliente.Open;
    end;
  end;
end;

procedure TfmCadCliente.btNovoClick(Sender: TObject);
begin
  inherited;
  if dm.ib_cliente.State in [dsInsert] then
    dm.IB_Cliente.Open;
  STipo := 'I';
  dm.ib_cliente.Insert;
  DBEdit2.Text := formatdatetime('dd/mm/yyyy',date);

end;

procedure TfmCadCliente.btSairClick(Sender: TObject);
begin
  //inherited;
  FreeAndNil(fmCadCliente);
end;

procedure TfmCadCliente.btSalvarClick(Sender: TObject);
begin
  inherited;
  
 if dm.Ib_EnderecoRUA.Text = '' then
 begin
   Application.MessageBox('Campo endereço não preenchido!','Atenção');
   frmEndereco1.DBEdit2.SetFocus;
   exit;
 end;
 if dm.IB_Cliente.State in [dsEdit] then
  dm.IB_Cliente.Edit;
 // dm.IB_Cliente.Post;
 dm.IBTransaction1.Commit;
 dm.IB_Cliente.Open;

end;

procedure TfmCadCliente.DBEdit14Exit(Sender: TObject);
begin
  inherited;
  if STipo = 'I' then
  begin
    // Inseri o cadastro do cliente na tabela
    if dm.IB_ClienteNOME.Text = '' then
    begin
      Application.MessageBox('Campo nome do cliente não preenchido!','Atenção');
      DBEdit2.SetFocus;
      exit;
    end;
    //
    if dm.IB_ClienteDATA_NASCIMENTO.text = '' then
    begin
      Application.MessageBox('Campo data de nascimento não preenchido!','Atenção');
      dbEdit6.SetFocus;
      exit;
    end;

    if dm.IB_Cliente.State in [dsInsert, dsEdit] then
      dm.IB_Cliente.Post;
    dm.IBTransaction1.Commit;
    btSalvar.Enabled := True;
    dm.IB_Cliente.Open;

    if Application.MessageBox('Deseja incluir no cadastro do cliente o seu endereço?','Confirmação',mb_yesno+MB_ICONINFORMATION) = mryes then
    begin
      dm.Ib_Endereco.Close;
      dm.Ib_Endereco.ParamByName('IdCli').Value := dm.IB_ClienteID.Value;
      dm.Ib_Endereco.Open;
      dm.Ib_Endereco.Insert;
      frmEndereco1.Panel1.Enabled := True;
      frmEndereco1.DBEdit2.Enabled := True;
      frmEndereco1.DBEdit3.Enabled := True;
      frmEndereco1.DBEdit4.Enabled := True;

    end;

  end;
  if Stipo = 'E' then
  begin
   if dm.ib_endereco.State in [dsEdit] then
    dm.Ib_Endereco.Open;
    dm.Ib_Endereco.Close;
    dm.Ib_Endereco.ParamByName('IdCli').Value := dm.IB_ClienteID.Value;
    dm.Ib_Endereco.Open;
    dm.Ib_Endereco.Edit;
    frmEndereco1.Panel1.Enabled := True;
    frmEndereco1.DBEdit2.Enabled := True;
    frmEndereco1.DBEdit3.Enabled := True;
    frmEndereco1.DBEdit4.Enabled := True;
  end;

//  dm.Ib_EnderecoIDCLIENTE.Value := dm.IB_ClienteID.Value;
//  dm.Ib_Endereco.Post;

end;

procedure TfmCadCliente.DBGrid1DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // Mudar a cor da linha conforme o status do cliente
  if (gdSelected in state) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color := clWindowText;

  if dm.IB_ClienteINATIVO.Value = 'S' then
  begin
    DBGrid1.Canvas.Brush.Color := clWindow;
    dbgrid1.Canvas.Font.Color := clWindowText;

  end else begin
    DBGrid1.Canvas.Brush.Color := $000000EA;
    dbgrid1.Canvas.Font.Color := clWindowText;
  end;
   if dm.IB_ClienteINATIVO.Value = '' then
  begin
    DBGrid1.Canvas.Brush.Color := clWindow;
    dbgrid1.Canvas.Font.Color := clWindowText;
  end;

  DBGrid1.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawDataCell(rect,dbgrid1.Columns[datacol].Field,state);
end;

procedure TfmCadCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;
  FreeAndNil(fmCadCliente);
end;

procedure TfmCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
  dm.IB_Cliente.Open;
  STipo := 'E'
end;

procedure TfmCadCliente.PageControl1Change(Sender: TObject);
begin
  inherited;
  dm.Ib_Endereco.Close;
  dm.Ib_Endereco.ParamByName('IdCli').Value := dm.IB_ClienteID.Value;
  dm.ib_endereco.Open;
end;

end.
