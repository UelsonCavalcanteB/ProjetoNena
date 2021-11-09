unit uCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadForm, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.Mask, Vcl.DBCtrls, uCadEndereco, System.Actions,
  Vcl.ActnList, ACBrValidador, IBX.IBCustomDataSet, ACBrBase, ACBrSocket,
  ACBrCEP, ACBrConsultaCPF;

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
    dsEndereco: TDataSource;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    Label17: TLabel;
    DBCod: TDBEdit;
    Label18: TLabel;
    dbEndereco: TDBEdit;
    Label21: TLabel;
    dbNumero: TDBEdit;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    Label23: TLabel;
    dbLogradouro: TDBEdit;
    Label24: TLabel;
    dbBairro: TDBEdit;
    Label25: TLabel;
    dbCidade: TDBEdit;
    btSalvarEnd: TSpeedButton;
    btEditarEnd: TSpeedButton;
    btExcluirEnd: TSpeedButton;
    DBUF: TDBComboBox;
    Label26: TLabel;
    DBGrid2: TDBGrid;
    GID: TIntegerField;
    GNOME: TIBStringField;
    GCADASTRO: TDateField;
    GCPF: TIBStringField;
    GRG: TIBStringField;
    GDATA_NASCIMENTO: TDateField;
    GEMAIL: TIBStringField;
    GNOME_PAI: TIBStringField;
    GNOME_MAE: TIBStringField;
    GTIPO: TIBStringField;
    GATIVO: TIBStringField;
    GEMAIL2: TIBStringField;
    GX: TIBStringField;
    GTELEFONE: TIBStringField;
    GTEL_RECADO: TIBStringField;
    GCELULAR: TIBStringField;
    GLIMITECREDITO: TIBBCDField;
    GIDUSUARIO: TIntegerField;
    ACBrCEP: TACBrCEP;
    btNovoEnd: TSpeedButton;
    ACBrValidador: TACBrValidador;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSalvarEndClick(Sender: TObject);
    procedure btEditarEndClick(Sender: TObject);
    procedure btExcluirEndClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure GNewRecord(DataSet: TDataSet);
    procedure DBEdit18Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btNovoEndClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
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
  if G.State in [dsInsert, dsEdit] then
    G.Edit;
  STIPO := 'E';
end;

procedure TfmCadCliente.btEditarEndClick(Sender: TObject);
begin
  inherited;
  if dm.ibEndCliente.State in [dsEdit]  then
    dm.ibEndCliente.Edit;
  dm.ibEndCliente.Post;
  dm.IBTransaction1.Commit;
end;

procedure TfmCadCliente.btExcluirClick(Sender: TObject);
begin
  inherited;
  // Excluir o cadastro do cliente
  if GID.AsInteger > 0 then
  begin
    if Application.MessageBox('Desej� excluir o registro selecionado?','Confirma��o',mb_yesno+MB_ICONINFORMATION) = mryes then
    begin
      dm.qPes.Close;
      dm.qPes.SQL.Clear;
      dm.qPes.SQL.Add('update CLIENTE  set X = 1 where ID = ' +QuotedStr(DBEdit1.Text));
      DM.qPes.Open;
      DM.IBTransaction1.Commit;
      G.Close;
      G.Open;
    end;
  end;
end;

procedure TfmCadCliente.btExcluirEndClick(Sender: TObject);
begin
  inherited;
  dm.qPes.Close;
  dm.qPes.SQL.Clear;
  if DM.Ib_EnderecoIDCLIENTE.Value <> 0 then
  begin
    dm.qPes.SQL.Add('update Cliente_endereco set ex = 1 where id = ' + QuotedStr(dm.Ib_EnderecoID.text));
    dm.qPes.Open;
    dm.IBTransaction1.Commit;
  end;
end;

procedure TfmCadCliente.btNovoClick(Sender: TObject);
begin
  inherited;
   if G.State in [dsInsert] then
    G.Open;
  DBEdit3.SetFocus;
 // DBEdit2.Text := formatdatetime('dd/mm/yyyy',date);
  STipo := 'I';
  btSalvar.Enabled := True;
  dm.ibEndCliente.Close;
  G.Insert;
  GCADASTRO.AsDateTime := date;
end;

procedure TfmCadCliente.btNovoEndClick(Sender: TObject);
begin
  inherited;
  // inserir um novo endere�o ao cliente
  if dm.ibEndCliente.State in [dsInsert, dsEdit]  then
    dm.ibEndCliente.Open;
  dm.ibEndCliente.Close;
  dm.ibEndCliente.ParamByName('idcli').Value := gid.AsInteger;
  dm.ibEndCliente.Open;
  dm.ibEndCliente.Insert;
end;

procedure TfmCadCliente.btPesquisarClick(Sender: TObject);
Var
  Cod : Integer;
  Tip: String;
begin
  inherited;
  //
  if edCodigo.Text = '' then
    cod := 0
  else
    Cod := strtoint(edCodigo.Text);
 { if edNome.Text <> '' then
  begin
    edCodigo.Clear;
    edNome.SetFocus;
  end;  }
  if rgStatus.ItemIndex = 0 then
    Tip := 'S';
  if rgStatus.ItemIndex = 1 then
      Tip := 'N';
  if rgStatus.ItemIndex = -1 then
    Tip := 'E';
  G.Close;
  G.SelectSQL.Clear;
  G.SelectSQL.Add(' select  *  from CLIENTE ' +
                  ' where CLIENTE.X = 0  '+
                  ' and (id = :idCli or :idCli = 0) '+
                  ' and (atIvo = :Atv or :atv = ''E'') '+
                  ' and (Nome  like  ''%'+edNome.Text+'%'') ' +
                  ' order by id');
  G.ParamByName('idCli').AsInteger := cod;
  G.ParamByName('Atv').AsString := Tip;
  G.Open;

end;

procedure TfmCadCliente.btSairClick(Sender: TObject);
begin
  //inherited;
  FreeAndNil(fmCadCliente);
end;

procedure TfmCadCliente.btSalvarClick(Sender: TObject);
begin
  inherited;

  if STipo = 'I' then
  begin
    // Inseri o cadastro do cliente na tabela
    if GNOME.Text = '' then
    begin
      Application.MessageBox('Campo nome do cliente n�o preenchido!','Aten��o');
      DBEdit2.SetFocus;
      exit;
    end;
    if GCPF.Value = '' then
    begin
      Application.MessageBox('Cpf n�o preenchido!','Aten��o');
      DBEdit4.SetFocus;
      exit;
    end;

    //
    if GDATA_NASCIMENTO.text = '' then
    begin
      Application.MessageBox('Campo data de nascimento n�o preenchido!','Aten��o');
      dbEdit6.SetFocus;
      exit;
    end;

    if G.State in [dsInsert, dsEdit] then
      G.Post;
      dm.ibEndCliente.Open;
      g.Refresh;

  end;
  if Stipo = 'E' then
  begin
    if G.State in [dsEdit] then
      G.Edit;
 G.Post;
 //dm.IBTransaction1.Commit;
 G.Open;
   if dm.ibEndCliente.State in [dsEdit] then
    dm.ibEndCliente.Open;
    dm.ibEndCliente.Close;
    dm.ibEndCliente.ParamByName('IdCli').Value := GID.Value;
    dm.ibEndCliente.Open;
    dm.ibEndCliente.Edit;


  end;
end;

procedure TfmCadCliente.btSalvarEndClick(Sender: TObject);
begin
 // inherited;
  // salva o endere�o do cliente
   if dm.ibEndCliente.State in [dsInsert, dsEdit]  then
    dm.ibEndCliente.Open;
  dm.ibEndClienteIDCLIENTE.AsInteger := GID.AsInteger;
  dm.ibEndCliente.Post;

  dm.ibEndCliente.Close;
  dm.ibEndCliente.ParamByName('idcli').Value := gid.AsInteger;
  dm.ibEndCliente.Open;

end;

procedure TfmCadCliente.DBEdit18Exit(Sender: TObject);
begin
  inherited;
  if trim(DBEdit18.Text) <> '' then
  begin
    ACBrCEP.BuscarPorCEP(DBEdit18.Text);
  end;
  if ACBrCEP.Enderecos.Count = 0 then
  begin
    Application.MessageBox('Endere�o n�o localizado!','Aten��o');
    DBEdit18.SetFocus;
    exit;
  end else
    DM.ibEndClienteRUA.Value := ACBrCEP.Enderecos[0].Logradouro;
    DM.ibEndClienteBAIRRO.AsString := ACBrCEP.Enderecos[0].Bairro;
    DM.ibEndClienteCIDADE.AsString := ACBrCEP.Enderecos[0].Municipio;
    dm.ibEndClienteLOGRADOURO.AsString := ACBrCEP.Enderecos[0].Complemento;
    dm.ibEndClienteUF.AsString         := ACBrCEP.Enderecos[0].UF;
    dbUF.Text := ACBrCEP.Enderecos[0].UF;
    dm.ibEndClienteCODMUNICIPIO.AsInteger := strtoint(ACBrCEP.Enderecos[0].IBGE_Municipio);

    dbNumero.SetFocus;

end;

procedure TfmCadCliente.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if GNOME.Text = '' then
  begin
    Application.MessageBox('Campo nome do cliente n�o preenchido!','Aten��o');
    DBEdit3.SetFocus;
    exit;
  end;
end;

procedure TfmCadCliente.DBEdit4Exit(Sender: TObject);
begin
  inherited;
 // Faz a valida��o do cpf caso seja preenchido
  ACBrValidador.Documento := DBEdit4.Text;
  if not ACBrValidador.Validar then
  begin
      Application.MessageBox('CPF inv�lido!','Aten��o');
     // DBEdit4.Font.Color := clRed;
      DBEdit4.SetFocus;
      exit;
  end
   else
   begin
      //Caso seja valdiado, muda a fonte do texto para clBlack e formata o valor.
      DBEdit4.Font.Color := clBlack;
      DBEdit4.Text := ACBrValidador.Formatar;
  end;

end;

procedure TfmCadCliente.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TfmCadCliente.FormActivate(Sender: TObject);
begin
  //inherited;

end;

procedure TfmCadCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;
  G.Close;
  FreeAndNil(fmCadCliente);
end;

procedure TfmCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
  G.Open;
 // G.Open;
  STipo := 'E'
end;

procedure TfmCadCliente.GNewRecord(DataSet: TDataSet);
begin
  inherited;
  GATIVO.Value := 'S';
  GTIPO.Value    := 'F';
  GX.Value       := '0';
end;

procedure TfmCadCliente.PageControl1Change(Sender: TObject);
begin
  inherited;
  if PageControl1.TabIndex = 1 then
  begin
    dm.ibEndCliente.Close;
    dm.ibEndCliente.ParamByName('idcli').AsInteger := GID.AsInteger;
    dm.ibEndCliente.Open;
  end else
    g.Close;
    g.Open;
end;

end.