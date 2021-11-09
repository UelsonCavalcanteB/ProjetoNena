unit uDm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Datasnap.Provider, Data.SqlExpr, Datasnap.DBClient, IBX.IBCustomDataSet,
  IBX.IBQuery, IBX.IBDatabase;

type
  Tdm = class(TDataModule)
    Conexao: TIBDatabase;
    IBTransaction1: TIBTransaction;
    sqlPesPedido: TIBQuery;
    dsPesPedido: TDataSource;
    sqlPesPedidoIDPEDIDO: TIntegerField;
    sqlPesPedidoNOME: TIBStringField;
    sqlPesPedidoIDPRODUTO: TIntegerField;
    sqlPesPedidoDESCRICAO: TIBStringField;
    sqlPesPedidoQTDE: TIBBCDField;
    sqlPesPedidoVALOR: TIBBCDField;
    sqlPesPedidoTOTAL: TIBBCDField;
    sqlPesPedidoTOTAL1: TIBBCDField;
    sqlPesPedidoDATAPEDIDO: TDateField;
    IB_Produto: TIBDataSet;
    Ds_Produto: TDataSource;
    Ib_Endereco: TIBDataSet;
    Ds_endereco: TDataSource;
    Ib_EnderecoID: TIntegerField;
    Ib_EnderecoRUA: TIBStringField;
    Ib_EnderecoNUMERO: TIntegerField;
    Ib_EnderecoCEP: TIBStringField;
    Ib_EnderecoLOGRADOURO: TIBStringField;
    Ib_EnderecoBAIRRO: TIBStringField;
    Ib_EnderecoCIDADE: TIBStringField;
    Ib_EnderecoUF: TIBStringField;
    Ib_EnderecoIDCLIENTE: TIntegerField;
    Ib_EnderecoIDFUNCIONARIO: TIntegerField;
    Ib_EnderecoIDFORNECEDOR: TIntegerField;
    qPes: TIBQuery;
    dsPesq: TDataSource;
    Ib_EnderecoEX: TIBStringField;
    qUp: TIBQuery;
    dsUp: TDataSource;
    IB_ProdutoID: TIBStringField;
    IB_ProdutoCODBARRA: TIBStringField;
    IB_ProdutoNOME: TIBStringField;
    IB_ProdutoNOME_REDUZIDO: TIBStringField;
    IB_ProdutoUNIDADE: TIBStringField;
    IB_ProdutoDATA_CADASTRO: TDateField;
    IB_ProdutoIDGRUPO: TIntegerField;
    IB_ProdutoIDFORNECEDOR: TIntegerField;
    IB_ProdutoIDMARCA: TIntegerField;
    IB_ProdutoULTIMACOMPRA: TDateField;
    IB_ProdutoPRECOCUSTO: TIBBCDField;
    IB_ProdutoPRECOVENDA: TIBBCDField;
    IB_ProdutoULTIMAVENDA: TDateField;
    IB_ProdutoESTOQUE: TIBBCDField;
    IB_ProdutoESTOQUEMINIMO: TIBBCDField;
    IB_ProdutoPROMOCAO: TIBStringField;
    IB_ProdutoINI_PROMOCAO: TDateField;
    IB_ProdutoFIM_PROMOCAO: TDateField;
    IB_ProdutoPESO: TIBBCDField;
    IB_ProdutoCOMISSAO: TIBBCDField;
    IB_ProdutoFOTO: TIBStringField;
    IB_ProdutoULTIMACOMPRA_ANTERIOR: TDateField;
    IB_ProdutoPRECOCUSTO_ANTERIOR: TIBBCDField;
    IB_ProdutoPRECOVENDA_ANTERIOR: TIBBCDField;
    IB_ProdutoCUSTOMEDIO: TIBBCDField;
    IB_ProdutoDATA_REMARCACAO_CUSTO: TDateField;
    IB_ProdutoDATA_REMARCACAO_VENDA: TDateField;
    IB_ProdutoPRECO_PROMOCAO: TIBBCDField;
    IB_ProdutoDATA_PROMOCAO: TDateField;
    IB_ProdutoGERA_ETQ_CODBAR: TIBStringField;
    IB_ProdutoCST: TIBStringField;
    IB_ProdutoCLASSIFICACAO_FISCAL: TIBStringField;
    IB_ProdutoNBM: TIBStringField;
    IB_ProdutoNCM: TIBStringField;
    IB_ProdutoPER_ALIQUOTA: TIBBCDField;
    IB_ProdutoPERC_IPI: TIBBCDField;
    IB_ProdutoPERC_REDUCAO: TIBBCDField;
    IB_ProdutoULTIMA_ALTERACAO: TDateField;
    IB_ProdutoPRECOVENDA_NOVO: TIBBCDField;
    IB_ProdutoDESCONTO_PRECOVENDA: TIBBCDField;
    IB_ProdutoPISCOFINS: TIBStringField;
    IB_ProdutoREFERENCIA_FORNECEDOR: TIBStringField;
    IB_ProdutoMARGEM_DESCONTO: TIBBCDField;
    IB_ProdutoTAMANHO: TIBStringField;
    IB_ProdutoULTIMA_COMPRA: TDateField;
    IB_ProdutoREFERENCIA: TIBStringField;
    IB_ProdutoSITUACAO_TRIBUTARIA: TIBStringField;
    IB_ProdutoFLAG_SIS: TIBStringField;
    IB_ProdutoFLAG_ACEITO: TIBStringField;
    IB_ProdutoFLAG_EST: TIBStringField;
    IB_ProdutoCSOSN: TIBStringField;
    IB_ProdutoMARKUP: TIBBCDField;
    IB_ProdutoCOD_ORIGINAL: TIBStringField;
    IB_ProdutoGT: TIBStringField;
    IB_ProdutoOBS: TBlobField;
    IB_ProdutoIDUSUARIO: TIntegerField;
    Ib_EnderecoIDUSUARIO: TIntegerField;
    ibEmpresa: TIBDataSet;
    ib_fpg: TIBDataSet;
    dsfpg: TDataSource;
    ib_fpgID: TIntegerField;
    ib_fpgDESCRICAO: TIBStringField;
    ib_fpgATIVO: TIBStringField;
    ib_fpgEX: TIBStringField;
    qLogin: TIBQuery;
    dsLogin: TDataSource;
    qLoginUSUARIO: TIBStringField;
    qLoginSENHA: TIntegerField;
    ibEndCliente: TIBDataSet;
    ibEndClienteID: TIntegerField;
    ibEndClienteRUA: TIBStringField;
    ibEndClienteNUMERO: TIntegerField;
    ibEndClienteCEP: TIBStringField;
    ibEndClienteLOGRADOURO: TIBStringField;
    ibEndClienteBAIRRO: TIBStringField;
    ibEndClienteCIDADE: TIBStringField;
    ibEndClienteUF: TIBStringField;
    ibEndClienteIDCLIENTE: TIntegerField;
    ibEndClienteEX: TIBStringField;
    ibEndClienteIDUSUARIO: TIntegerField;
    ibEndClienteCODMUNICIPIO: TIntegerField;
    ibEmpresaID: TIntegerField;
    ibEmpresaRAZAO: TIBStringField;
    ibEmpresaFANTASIA: TIBStringField;
    ibEmpresaEND_EMPRESA: TIBStringField;
    ibEmpresaNUMERO: TIBStringField;
    ibEmpresaBAIRRO: TIBStringField;
    ibEmpresaCOMPLEMENTO: TIBStringField;
    ibEmpresaCIDADE: TIBStringField;
    ibEmpresaUF: TIBStringField;
    ibEmpresaCEP: TIBStringField;
    ibEmpresaFONE: TIBStringField;
    ibEmpresaFONE2: TIBStringField;
    ibEmpresaFONE3: TIBStringField;
    ibEmpresaFAX: TIBStringField;
    ibEmpresaEMAIL: TIBStringField;
    ibEmpresaWEB: TIBStringField;
    ibEmpresaCNPJ: TIBStringField;
    ibEmpresaIE: TIBStringField;
    ibEmpresaIM: TIBStringField;
    ibEmpresaLOGO: TIBStringField;
    ibEmpresaPIS: TIBBCDField;
    ibEmpresaIRRF: TIBBCDField;
    ibEmpresaCNAE: TIntegerField;
    ibEmpresaISS: TIBBCDField;
    ibEmpresaREGIME_TRIBUTARIO: TIBStringField;
    ibEmpresaOBSERV1: TIBStringField;
    ibEmpresaOBSERV2: TIBStringField;
    ibEmpresaCOFINS: TIBBCDField;
    ibEmpresaCPMF: TIBBCDField;
    ibEmpresaLUCROLIQUIDO: TIBBCDField;
    ibEmpresaALIQ_ICM_SUPER_SIMPLES: TIBBCDField;
    ibEmpresaCARGA: TIntegerField;
    ibEmpresaULTIMO_PG: TDateField;
    ibEmpresaICMS_SSIMPLES: TIBBCDField;
    ibEmpresaNFE_CERTIFICADO: TIBStringField;
    ibEmpresaDECIMAIS: TIntegerField;
    ibEmpresaSMTP_SERVER: TIBStringField;
    ibEmpresaSMTP_PORTA: TIntegerField;
    ibEmpresaSMTP_USER: TIBStringField;
    ibEmpresaSMTP_PASS: TIBStringField;
    ibEmpresaSMTP_EMAIL: TIBStringField;
    ibEmpresaSMTP_SERVER_SSL: TIBStringField;
    ibEmpresaSPED_DIR: TIBStringField;
    ibEmpresaDAS_SSIMPLES: TIBBCDField;
    ibEmpresaLUCRO_PRESUMIDO_PERC: TIBBCDField;
    ibEmpresaSUFRAMA: TIBStringField;
    ibEmpresaUSUARIO_ALTERACAO: TIBStringField;
    ibEmpresaULTIMA_ALTERACAO: TDateField;
    ibEmpresaRAMO_ATIVIDADE_ID: TIntegerField;
    ibEmpresaMICRO_EMPRESA_ESTADUAL: TIBStringField;
    ibEmpresaSUBSTITUTO_TRIBUTARIO: TIBStringField;
    ibEmpresaCONTRIBUINTE_IPI: TIBStringField;
    ibEmpresaOPTANTE_SIMPLES: TIBStringField;
    ibEmpresaSUPER_SIMPLES: TIBStringField;
    ibEmpresaIPI: TIBBCDField;
    ibEmpresaPERMITE_CRED_ICMS: TIBStringField;
    ibEmpresaCOD_REGIME_TRIBUTARIO: TIntegerField;
    ibEmpresaINICIO_ATIVIDADE: TDateField;
    ibEmpresaMATRIZ: TIBStringField;
    ibEmpresaNUMERONOTAFISCAL: TIntegerField;
    ibEmpresaCODIGO_MUNICIPIO: TIBStringField;
    ibEmpresaATIVO: TIBStringField;
    ibEmpresaEX: TIBStringField;
    ibContador: TIBDataSet;
    ibContadorID: TIntegerField;
    ibContadorNOME: TIBStringField;
    ibContadorCPF: TIBStringField;
    ibContadorCRC: TIBStringField;
    ibContadorCNPJ: TIBStringField;
    ibContadorENDE: TIBStringField;
    ibContadorNMRO: TIBStringField;
    ibContadorCOMP: TIBStringField;
    ibContadorBAIR: TIBStringField;
    ibContadorCEP: TIBStringField;
    ibContadorCIDA: TIBStringField;
    ibContadorUF: TIBStringField;
    ibContadorFON1: TIBStringField;
    ibContadorFON2: TIBStringField;
    ibContadorMAIL: TIBStringField;
    ibContadorIDEMPRESA: TIntegerField;
    ibContadorATIVO: TIBStringField;
    ibContadorEX: TIBStringField;
    Fornecedor: TIBDataSet;
    FornecedorID: TIntegerField;
    FornecedorNOME: TIBStringField;
    FornecedorNOME_FANTASIA: TIBStringField;
    FornecedorCPF_CNPJ: TIBStringField;
    FornecedorINSCRICAO_ESTADUAL_RG: TIBStringField;
    FornecedorLOGRADOURO: TIBStringField;
    FornecedorNUMERO: TIBStringField;
    FornecedorCOMPLEMENTO: TIBStringField;
    FornecedorBAIRRO: TIBStringField;
    FornecedorCOD_CIDADE: TIntegerField;
    FornecedorUF: TIBStringField;
    FornecedorCEP: TIBStringField;
    FornecedorTELEFONE1: TIBStringField;
    FornecedorTELEFONE2: TIBStringField;
    FornecedorCELULAR: TIBStringField;
    FornecedorLIMITE_CREDITO: TIBBCDField;
    FornecedorEMAIL: TIntegerField;
    FornecedorOBSERVACAO: TIBStringField;
    FornecedorCOD_USUARIO_INCLUSAO: TIBStringField;
    FornecedorCOD_USUARIO_ALTERACAO: TIBStringField;
    FornecedorDATA_INCLUSAO: TDateField;
    FornecedorDATA_ALTERACAO: TDateField;
    FornecedorIE_MUNICIPAL: TIBStringField;
    FornecedorDS_EMAIL: TIBStringField;
    FornecedorEX: TIBStringField;
    FornecedorATIVO: TIBStringField;
    procedure Ib_EnderecoNewRecord(DataSet: TDataSet);
    procedure ib_fpgNewRecord(DataSet: TDataSet);
    procedure ibEndClienteNewRecord(DataSet: TDataSet);
    procedure ibEmpresaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.ibEmpresaNewRecord(DataSet: TDataSet);
begin
  ibEmpresaATIVO.Value := 'S';
  ibEmpresaEX.Value    := '0';
end;

procedure Tdm.ibEndClienteNewRecord(DataSet: TDataSet);
begin
  ibEndClienteEX.Value := '0';

end;

procedure Tdm.Ib_EnderecoNewRecord(DataSet: TDataSet);
begin
  Ib_EnderecoEX.Value := '0';
end;

procedure Tdm.ib_fpgNewRecord(DataSet: TDataSet);
begin
  ib_fpgATIVO.Value := 'S';
  ib_fpgEX.Value    := '0';
end;

end.
