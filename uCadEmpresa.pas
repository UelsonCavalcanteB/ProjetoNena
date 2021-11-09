unit uCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfmCadEmpresa = class(TForm)
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    btNovo: TToolButton;
    ToolButton2: TToolButton;
    btEditar: TToolButton;
    ToolButton4: TToolButton;
    btExcluir: TToolButton;
    ToolButton6: TToolButton;
    btSalvar: TToolButton;
    ToolButton8: TToolButton;
    btImp: TToolButton;
    ToolButton10: TToolButton;
    btSair: TToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    Panel1: TPanel;
    dsG: TDataSource;
    TabSheet7: TTabSheet;
    Label60: TLabel;
    DBEdit56: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Label61: TLabel;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    Label62: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit59: TDBEdit;
    Label63: TLabel;
    DBEdit60: TDBEdit;
    Label64: TLabel;
    DBComboBox2: TDBComboBox;
    Label65: TLabel;
    DBEdit61: TDBEdit;
    Label66: TLabel;
    DBEdit62: TDBEdit;
    Label67: TLabel;
    DBEdit63: TDBEdit;
    Label68: TLabel;
    DBEdit64: TDBEdit;
    Label69: TLabel;
    DBEdit65: TDBEdit;
    Label70: TLabel;
    Panel2: TPanel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Panel3: TPanel;
    TabSheet4: TTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBMemo2: TDBMemo;
    TabSheet5: TTabSheet;
    Label46: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    TabSheet6: TTabSheet;
    DBGrid1: TDBGrid;
    dsC: TDataSource;
    procedure btSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadEmpresa: TfmCadEmpresa;

implementation

{$R *.dfm}
Uses uDm;

procedure TfmCadEmpresa.btSairClick(Sender: TObject);
begin
  freeandNil(fmCadEmpresa);
end;

procedure TfmCadEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

end.
