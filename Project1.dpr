program Project1;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fmPrincipal},
  uCadEndereco in 'uCadEndereco.pas' {frmEndereco: TFrame},
  uCadForm in 'uCadForm.pas' {fmForm},
  uCadFornecedor in 'uCadFornecedor.pas' {fmCadFornecedor},
  uCadFuncionario in 'uCadFuncionario.pas' {fmCadFuncionario},
  uDm in 'uDm.pas' {dm: TDataModule},
  uClasseGeral in 'Classes\uClasseGeral.pas',
  uCadCliente in 'uCadCliente.pas' {fmCadCliente},
  uCadProduto in 'uCadProduto.pas' {fmCadProduto},
  uCadGrupo in 'uCadGrupo.pas' {fmCadGrupo},
  uCadMarca in 'uCadMarca.pas' {fmCadMarca},
  uCadEmpresa in 'uCadEmpresa.pas' {fmCadEmpresa},
  uCadFormaPgt in 'uCadFormaPgt.pas' {fmCadFormaPgt},
  uCadLogin in 'uCadLogin.pas' {fmCadLogin},
  uValidaCpf in 'Classes\uValidaCpf.pas',
  uCadCnpj in 'uCadCnpj.pas' {fmCadCnpj};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.CreateForm(TfmCadLogin, fmCadLogin);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.