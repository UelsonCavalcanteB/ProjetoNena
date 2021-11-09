unit uCadLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  System.Actions, Vcl.ActnList;

type
  TfmCadLogin = class(TForm)
    pnBut: TPanel;
    btEntrar: TSpeedButton;
    btCancelar: TSpeedButton;
    pnCorpo: TPanel;
    Image1: TImage;
    Label1: TLabel;
    edUsuario: TEdit;
    edSenha: TEdit;
    Label2: TLabel;
    ActionList1: TActionList;
    procedure edUsuarioExit(Sender: TObject);
    procedure edSenhaChange(Sender: TObject);
    procedure btEntrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadLogin: TfmCadLogin;

implementation

{$R *.dfm}
uses udm, uPrincipal;

procedure TfmCadLogin.btEntrarClick(Sender: TObject);
var User, sen :string;
begin
  dm.qLogin.Close;
  dm.qLogin.ParamByName('edNome').AsString := edUsuario.Text;
  dm.qLogin.Open;
  user := dm.qLoginUSUARIO.Value;
  Sen := dm.qLoginSENHA.AsString;
  if (user = edusuario.Text) and (sen = edsenha.text) then
  begin
    FreeAndNil(fmCadLogin);
    try
        Application.CreateForm(TfmPrincipal, fmPrincipal);
        fmPrincipal.ShowModal;
      finally
        fmPrincipal.FreeOnRelease;
        fmPrincipal := Nil;
      end;
   { if fmPrincipal = Nil then
      fmPrincipal := TfmPrincipal.Create(Application);
    fmPrincipal.Show;
   }
  end else begin
    Application.MessageBox('Usuário ou senha invalída!','Atenção');
    edUsuario.Clear;
    edSenha.Clear;
    edUsuario.SetFocus;
  end;
  //if True then

end;

procedure TfmCadLogin.edSenhaChange(Sender: TObject);
begin
  if edSenha.Text = '' then
  begin
    Application.MessageBox('Senha do usuário não fornecida!','Atenção');
    edSenha.SetFocus;
    exit;
  end;
end;

procedure TfmCadLogin.edUsuarioExit(Sender: TObject);
begin
  if edusuario.Text = '' then
  begin
    Application.MessageBox('Campo usuário não preenchido','Atenção');
    edUsuario.SetFocus;
    exit;
  end;

end;

procedure TfmCadLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

end.
