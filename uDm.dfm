object dm: Tdm
  OldCreateOrder = False
  Height = 449
  Width = 860
  object Conexao: TIBDatabase
    Connected = True
    DatabaseName = 'C:\NenaModas\BD\DB.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 32
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = Conexao
    Left = 80
    Top = 16
  end
  object sqlPesPedido: TIBQuery
    Database = Conexao
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      ''
      
        'select itenspedidos.idpedido, cliente.nome, itenspedidos.idprodu' +
        'to, itenspedidos.descricao,'
      
        'itenspedidos.qtde, itenspedidos.valor, itenspedidos.total, pedid' +
        'o.total, pedido.datapedido'
      'from pedido'
      'left join itenspedidos on itenspedidos.idpedido = pedido.id'
      'left join cliente on cliente.id = pedido.idcliente'
      
        'where (:idPedi = 0  or pedido.id = :idpedi ) and  (cliente.id = ' +
        ':idcli or :idcli = 0)'
      'order by pedido.id')
    Left = 776
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idPedi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idpedi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcli'
        ParamType = ptUnknown
      end>
    object sqlPesPedidoIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      Origin = '"ITENSPEDIDOS"."IDPEDIDO"'
    end
    object sqlPesPedidoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTE"."NOME"'
      Size = 100
    end
    object sqlPesPedidoIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = '"ITENSPEDIDOS"."IDPRODUTO"'
    end
    object sqlPesPedidoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"ITENSPEDIDOS"."DESCRICAO"'
      Size = 100
    end
    object sqlPesPedidoQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = '"ITENSPEDIDOS"."QTDE"'
      Precision = 18
      Size = 2
    end
    object sqlPesPedidoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"ITENSPEDIDOS"."VALOR"'
      DisplayFormat = '#0.00'
      Precision = 18
      Size = 2
    end
    object sqlPesPedidoTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"ITENSPEDIDOS"."TOTAL"'
      DisplayFormat = '#0.00'
      Precision = 18
      Size = 2
    end
    object sqlPesPedidoTOTAL1: TIBBCDField
      FieldName = 'TOTAL1'
      Origin = '"PEDIDO"."TOTAL"'
      Precision = 18
      Size = 2
    end
    object sqlPesPedidoDATAPEDIDO: TDateField
      FieldName = 'DATAPEDIDO'
      Origin = '"PEDIDO"."DATAPEDIDO"'
    end
  end
  object dsPesPedido: TDataSource
    DataSet = sqlPesPedido
    Left = 776
    Top = 72
  end
  object IB_Produto: TIBDataSet
    Database = Conexao
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTOS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into PRODUTOS'
      
        '  (ID, CODBARRA, NOME, NOME_REDUZIDO, UNIDADE, DATA_CADASTRO, ID' +
        'GRUPO, '
      
        '   IDFORNECEDOR, IDMARCA, ULTIMACOMPRA, PRECOCUSTO, PRECOVENDA, ' +
        'ULTIMAVENDA, '
      
        '   ESTOQUE, ESTOQUEMINIMO, PROMOCAO, INI_PROMOCAO, FIM_PROMOCAO,' +
        ' PESO, '
      
        '   COMISSAO, FOTO, ULTIMACOMPRA_ANTERIOR, PRECOCUSTO_ANTERIOR, P' +
        'RECOVENDA_ANTERIOR, '
      
        '   CUSTOMEDIO, DATA_REMARCACAO_CUSTO, DATA_REMARCACAO_VENDA, PRE' +
        'CO_PROMOCAO, '
      
        '   DATA_PROMOCAO, GERA_ETQ_CODBAR, CST, CLASSIFICACAO_FISCAL, NB' +
        'M, NCM, '
      
        '   PER_ALIQUOTA, PERC_IPI, PERC_REDUCAO, ULTIMA_ALTERACAO, PRECO' +
        'VENDA_NOVO, '
      
        '   DESCONTO_PRECOVENDA, PISCOFINS, REFERENCIA_FORNECEDOR, MARGEM' +
        '_DESCONTO, '
      
        '   TAMANHO, ULTIMA_COMPRA, REFERENCIA, SITUACAO_TRIBUTARIA, FLAG' +
        '_SIS, FLAG_ACEITO, '
      '   FLAG_EST, CSOSN, MARKUP, COD_ORIGINAL, GT, OBS)'
      'values'
      
        '  (:ID, :CODBARRA, :NOME, :NOME_REDUZIDO, :UNIDADE, :DATA_CADAST' +
        'RO, :IDGRUPO, '
      
        '   :IDFORNECEDOR, :IDMARCA, :ULTIMACOMPRA, :PRECOCUSTO, :PRECOVE' +
        'NDA, :ULTIMAVENDA, '
      
        '   :ESTOQUE, :ESTOQUEMINIMO, :PROMOCAO, :INI_PROMOCAO, :FIM_PROM' +
        'OCAO, :PESO, '
      
        '   :COMISSAO, :FOTO, :ULTIMACOMPRA_ANTERIOR, :PRECOCUSTO_ANTERIO' +
        'R, :PRECOVENDA_ANTERIOR, '
      
        '   :CUSTOMEDIO, :DATA_REMARCACAO_CUSTO, :DATA_REMARCACAO_VENDA, ' +
        ':PRECO_PROMOCAO, '
      
        '   :DATA_PROMOCAO, :GERA_ETQ_CODBAR, :CST, :CLASSIFICACAO_FISCAL' +
        ', :NBM, '
      
        '   :NCM, :PER_ALIQUOTA, :PERC_IPI, :PERC_REDUCAO, :ULTIMA_ALTERA' +
        'CAO, :PRECOVENDA_NOVO, '
      
        '   :DESCONTO_PRECOVENDA, :PISCOFINS, :REFERENCIA_FORNECEDOR, :MA' +
        'RGEM_DESCONTO, '
      
        '   :TAMANHO, :ULTIMA_COMPRA, :REFERENCIA, :SITUACAO_TRIBUTARIA, ' +
        ':FLAG_SIS, '
      
        '   :FLAG_ACEITO, :FLAG_EST, :CSOSN, :MARKUP, :COD_ORIGINAL, :GT,' +
        ' :OBS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CODBARRA,'
      '  NOME,'
      '  NOME_REDUZIDO,'
      '  UNIDADE,'
      '  DATA_CADASTRO,'
      '  IDGRUPO,'
      '  IDFORNECEDOR,'
      '  IDMARCA,'
      '  ULTIMACOMPRA,'
      '  PRECOCUSTO,'
      '  PRECOVENDA,'
      '  ULTIMAVENDA,'
      '  ESTOQUE,'
      '  ESTOQUEMINIMO,'
      '  PROMOCAO,'
      '  INI_PROMOCAO,'
      '  FIM_PROMOCAO,'
      '  PESO,'
      '  COMISSAO,'
      '  FOTO,'
      '  ULTIMACOMPRA_ANTERIOR,'
      '  PRECOCUSTO_ANTERIOR,'
      '  PRECOVENDA_ANTERIOR,'
      '  CUSTOMEDIO,'
      '  DATA_REMARCACAO_CUSTO,'
      '  DATA_REMARCACAO_VENDA,'
      '  PRECO_PROMOCAO,'
      '  DATA_PROMOCAO,'
      '  GERA_ETQ_CODBAR,'
      '  CST,'
      '  CLASSIFICACAO_FISCAL,'
      '  NBM,'
      '  NCM,'
      '  PER_ALIQUOTA,'
      '  PERC_IPI,'
      '  PERC_REDUCAO,'
      '  ULTIMA_ALTERACAO,'
      '  PRECOVENDA_NOVO,'
      '  DESCONTO_PRECOVENDA,'
      '  PISCOFINS,'
      '  REFERENCIA_FORNECEDOR,'
      '  MARGEM_DESCONTO,'
      '  TAMANHO,'
      '  ULTIMA_COMPRA,'
      '  REFERENCIA,'
      '  SITUACAO_TRIBUTARIA,'
      '  FLAG_SIS,'
      '  FLAG_ACEITO,'
      '  FLAG_EST,'
      '  CSOSN,'
      '  MARKUP,'
      '  COD_ORIGINAL,'
      '  GT,'
      '  OBS'
      'from PRODUTOS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from PRODUTOS')
    ModifySQL.Strings = (
      'update PRODUTOS'
      'set'
      '  ID = :ID,'
      '  CODBARRA = :CODBARRA,'
      '  NOME = :NOME,'
      '  NOME_REDUZIDO = :NOME_REDUZIDO,'
      '  UNIDADE = :UNIDADE,'
      '  DATA_CADASTRO = :DATA_CADASTRO,'
      '  IDGRUPO = :IDGRUPO,'
      '  IDFORNECEDOR = :IDFORNECEDOR,'
      '  IDMARCA = :IDMARCA,'
      '  ULTIMACOMPRA = :ULTIMACOMPRA,'
      '  PRECOCUSTO = :PRECOCUSTO,'
      '  PRECOVENDA = :PRECOVENDA,'
      '  ULTIMAVENDA = :ULTIMAVENDA,'
      '  ESTOQUE = :ESTOQUE,'
      '  ESTOQUEMINIMO = :ESTOQUEMINIMO,'
      '  PROMOCAO = :PROMOCAO,'
      '  INI_PROMOCAO = :INI_PROMOCAO,'
      '  FIM_PROMOCAO = :FIM_PROMOCAO,'
      '  PESO = :PESO,'
      '  COMISSAO = :COMISSAO,'
      '  FOTO = :FOTO,'
      '  ULTIMACOMPRA_ANTERIOR = :ULTIMACOMPRA_ANTERIOR,'
      '  PRECOCUSTO_ANTERIOR = :PRECOCUSTO_ANTERIOR,'
      '  PRECOVENDA_ANTERIOR = :PRECOVENDA_ANTERIOR,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  DATA_REMARCACAO_CUSTO = :DATA_REMARCACAO_CUSTO,'
      '  DATA_REMARCACAO_VENDA = :DATA_REMARCACAO_VENDA,'
      '  PRECO_PROMOCAO = :PRECO_PROMOCAO,'
      '  DATA_PROMOCAO = :DATA_PROMOCAO,'
      '  GERA_ETQ_CODBAR = :GERA_ETQ_CODBAR,'
      '  CST = :CST,'
      '  CLASSIFICACAO_FISCAL = :CLASSIFICACAO_FISCAL,'
      '  NBM = :NBM,'
      '  NCM = :NCM,'
      '  PER_ALIQUOTA = :PER_ALIQUOTA,'
      '  PERC_IPI = :PERC_IPI,'
      '  PERC_REDUCAO = :PERC_REDUCAO,'
      '  ULTIMA_ALTERACAO = :ULTIMA_ALTERACAO,'
      '  PRECOVENDA_NOVO = :PRECOVENDA_NOVO,'
      '  DESCONTO_PRECOVENDA = :DESCONTO_PRECOVENDA,'
      '  PISCOFINS = :PISCOFINS,'
      '  REFERENCIA_FORNECEDOR = :REFERENCIA_FORNECEDOR,'
      '  MARGEM_DESCONTO = :MARGEM_DESCONTO,'
      '  TAMANHO = :TAMANHO,'
      '  ULTIMA_COMPRA = :ULTIMA_COMPRA,'
      '  REFERENCIA = :REFERENCIA,'
      '  SITUACAO_TRIBUTARIA = :SITUACAO_TRIBUTARIA,'
      '  FLAG_SIS = :FLAG_SIS,'
      '  FLAG_ACEITO = :FLAG_ACEITO,'
      '  FLAG_EST = :FLAG_EST,'
      '  CSOSN = :CSOSN,'
      '  MARKUP = :MARKUP,'
      '  COD_ORIGINAL = :COD_ORIGINAL,'
      '  GT = :GT,'
      '  OBS = :OBS'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_PRODUTOS_ID'
    Left = 22
    Top = 178
    object IB_ProdutoID: TIBStringField
      FieldName = 'ID'
      Origin = '"PRODUTOS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object IB_ProdutoCODBARRA: TIBStringField
      FieldName = 'CODBARRA'
      Origin = '"PRODUTOS"."CODBARRA"'
      Size = 13
    end
    object IB_ProdutoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PRODUTOS"."NOME"'
      Size = 60
    end
    object IB_ProdutoNOME_REDUZIDO: TIBStringField
      FieldName = 'NOME_REDUZIDO'
      Origin = '"PRODUTOS"."NOME_REDUZIDO"'
      Size = 25
    end
    object IB_ProdutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PRODUTOS"."UNIDADE"'
      Size = 3
    end
    object IB_ProdutoDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = '"PRODUTOS"."DATA_CADASTRO"'
      EditMask = '!99/99/0000;1;_'
    end
    object IB_ProdutoIDGRUPO: TIntegerField
      FieldName = 'IDGRUPO'
      Origin = '"PRODUTOS"."IDGRUPO"'
    end
    object IB_ProdutoIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = '"PRODUTOS"."IDFORNECEDOR"'
    end
    object IB_ProdutoIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
      Origin = '"PRODUTOS"."IDMARCA"'
    end
    object IB_ProdutoULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = '"PRODUTOS"."ULTIMACOMPRA"'
      EditMask = '!99/99/0000;1;_'
    end
    object IB_ProdutoPRECOCUSTO: TIBBCDField
      FieldName = 'PRECOCUSTO'
      Origin = '"PRODUTOS"."PRECOCUSTO"'
      DisplayFormat = '#0.00'
      Precision = 18
      Size = 3
    end
    object IB_ProdutoPRECOVENDA: TIBBCDField
      FieldName = 'PRECOVENDA'
      Origin = '"PRODUTOS"."PRECOVENDA"'
      DisplayFormat = '#0.00'
      Precision = 18
      Size = 3
    end
    object IB_ProdutoULTIMAVENDA: TDateField
      FieldName = 'ULTIMAVENDA'
      Origin = '"PRODUTOS"."ULTIMAVENDA"'
      EditMask = '!99/99/0000;1;_'
    end
    object IB_ProdutoESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Origin = '"PRODUTOS"."ESTOQUE"'
      Precision = 18
      Size = 3
    end
    object IB_ProdutoESTOQUEMINIMO: TIBBCDField
      FieldName = 'ESTOQUEMINIMO'
      Origin = '"PRODUTOS"."ESTOQUEMINIMO"'
      Precision = 18
      Size = 3
    end
    object IB_ProdutoPROMOCAO: TIBStringField
      FieldName = 'PROMOCAO'
      Origin = '"PRODUTOS"."PROMOCAO"'
      FixedChar = True
      Size = 1
    end
    object IB_ProdutoINI_PROMOCAO: TDateField
      FieldName = 'INI_PROMOCAO'
      Origin = '"PRODUTOS"."INI_PROMOCAO"'
      EditMask = '!99/99/0000;1;_'
    end
    object IB_ProdutoFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = '"PRODUTOS"."FIM_PROMOCAO"'
      EditMask = '!99/99/0000;1;_'
    end
    object IB_ProdutoPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"PRODUTOS"."PESO"'
      Precision = 18
      Size = 3
    end
    object IB_ProdutoCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"PRODUTOS"."COMISSAO"'
      Precision = 18
      Size = 3
    end
    object IB_ProdutoFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"PRODUTOS"."FOTO"'
      Size = 80
    end
    object IB_ProdutoULTIMACOMPRA_ANTERIOR: TDateField
      FieldName = 'ULTIMACOMPRA_ANTERIOR'
      Origin = '"PRODUTOS"."ULTIMACOMPRA_ANTERIOR"'
    end
    object IB_ProdutoPRECOCUSTO_ANTERIOR: TIBBCDField
      FieldName = 'PRECOCUSTO_ANTERIOR'
      Origin = '"PRODUTOS"."PRECOCUSTO_ANTERIOR"'
      Precision = 18
      Size = 3
    end
    object IB_ProdutoPRECOVENDA_ANTERIOR: TIBBCDField
      FieldName = 'PRECOVENDA_ANTERIOR'
      Origin = '"PRODUTOS"."PRECOVENDA_ANTERIOR"'
      Precision = 18
      Size = 3
    end
    object IB_ProdutoCUSTOMEDIO: TIBBCDField
      FieldName = 'CUSTOMEDIO'
      Origin = '"PRODUTOS"."CUSTOMEDIO"'
      Precision = 18
      Size = 3
    end
    object IB_ProdutoDATA_REMARCACAO_CUSTO: TDateField
      FieldName = 'DATA_REMARCACAO_CUSTO'
      Origin = '"PRODUTOS"."DATA_REMARCACAO_CUSTO"'
    end
    object IB_ProdutoDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Origin = '"PRODUTOS"."DATA_REMARCACAO_VENDA"'
    end
    object IB_ProdutoPRECO_PROMOCAO: TIBBCDField
      FieldName = 'PRECO_PROMOCAO'
      Origin = '"PRODUTOS"."PRECO_PROMOCAO"'
      Precision = 18
      Size = 3
    end
    object IB_ProdutoDATA_PROMOCAO: TDateField
      FieldName = 'DATA_PROMOCAO'
      Origin = '"PRODUTOS"."DATA_PROMOCAO"'
    end
    object IB_ProdutoGERA_ETQ_CODBAR: TIBStringField
      FieldName = 'GERA_ETQ_CODBAR'
      Origin = '"PRODUTOS"."GERA_ETQ_CODBAR"'
      FixedChar = True
      Size = 1
    end
    object IB_ProdutoCST: TIBStringField
      FieldName = 'CST'
      Origin = '"PRODUTOS"."CST"'
      Size = 10
    end
    object IB_ProdutoCLASSIFICACAO_FISCAL: TIBStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Origin = '"PRODUTOS"."CLASSIFICACAO_FISCAL"'
    end
    object IB_ProdutoNBM: TIBStringField
      FieldName = 'NBM'
      Origin = '"PRODUTOS"."NBM"'
    end
    object IB_ProdutoNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"PRODUTOS"."NCM"'
    end
    object IB_ProdutoPER_ALIQUOTA: TIBBCDField
      FieldName = 'PER_ALIQUOTA'
      Origin = '"PRODUTOS"."PER_ALIQUOTA"'
      Precision = 18
      Size = 2
    end
    object IB_ProdutoPERC_IPI: TIBBCDField
      FieldName = 'PERC_IPI'
      Origin = '"PRODUTOS"."PERC_IPI"'
      Precision = 18
      Size = 2
    end
    object IB_ProdutoPERC_REDUCAO: TIBBCDField
      FieldName = 'PERC_REDUCAO'
      Origin = '"PRODUTOS"."PERC_REDUCAO"'
      Precision = 18
      Size = 2
    end
    object IB_ProdutoULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
      Origin = '"PRODUTOS"."ULTIMA_ALTERACAO"'
    end
    object IB_ProdutoPRECOVENDA_NOVO: TIBBCDField
      FieldName = 'PRECOVENDA_NOVO'
      Origin = '"PRODUTOS"."PRECOVENDA_NOVO"'
      Precision = 18
      Size = 3
    end
    object IB_ProdutoDESCONTO_PRECOVENDA: TIBBCDField
      FieldName = 'DESCONTO_PRECOVENDA'
      Origin = '"PRODUTOS"."DESCONTO_PRECOVENDA"'
      Precision = 18
      Size = 3
    end
    object IB_ProdutoPISCOFINS: TIBStringField
      FieldName = 'PISCOFINS'
      Origin = '"PRODUTOS"."PISCOFINS"'
      Size = 1
    end
    object IB_ProdutoREFERENCIA_FORNECEDOR: TIBStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Origin = '"PRODUTOS"."REFERENCIA_FORNECEDOR"'
      Size = 30
    end
    object IB_ProdutoMARGEM_DESCONTO: TIBBCDField
      FieldName = 'MARGEM_DESCONTO'
      Origin = '"PRODUTOS"."MARGEM_DESCONTO"'
      Precision = 18
      Size = 3
    end
    object IB_ProdutoTAMANHO: TIBStringField
      FieldName = 'TAMANHO'
      Origin = '"PRODUTOS"."TAMANHO"'
      Size = 6
    end
    object IB_ProdutoULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
      Origin = '"PRODUTOS"."ULTIMA_COMPRA"'
    end
    object IB_ProdutoREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = '"PRODUTOS"."REFERENCIA"'
      Size = 30
    end
    object IB_ProdutoSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = '"PRODUTOS"."SITUACAO_TRIBUTARIA"'
      Size = 1
    end
    object IB_ProdutoFLAG_SIS: TIBStringField
      FieldName = 'FLAG_SIS'
      Origin = '"PRODUTOS"."FLAG_SIS"'
      Size = 1
    end
    object IB_ProdutoFLAG_ACEITO: TIBStringField
      FieldName = 'FLAG_ACEITO'
      Origin = '"PRODUTOS"."FLAG_ACEITO"'
      Size = 3
    end
    object IB_ProdutoFLAG_EST: TIBStringField
      FieldName = 'FLAG_EST'
      Origin = '"PRODUTOS"."FLAG_EST"'
      Size = 1
    end
    object IB_ProdutoCSOSN: TIBStringField
      FieldName = 'CSOSN'
      Origin = '"PRODUTOS"."CSOSN"'
      Size = 60
    end
    object IB_ProdutoMARKUP: TIBBCDField
      FieldName = 'MARKUP'
      Origin = '"PRODUTOS"."MARKUP"'
      Precision = 18
      Size = 2
    end
    object IB_ProdutoCOD_ORIGINAL: TIBStringField
      FieldName = 'COD_ORIGINAL'
      Origin = '"PRODUTOS"."COD_ORIGINAL"'
    end
    object IB_ProdutoGT: TIBStringField
      FieldName = 'GT'
      Origin = '"PRODUTOS"."GT"'
    end
    object IB_ProdutoOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"PRODUTOS"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object IB_ProdutoIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Origin = '"PRODUTOS"."IDUSUARIO"'
    end
  end
  object Ds_Produto: TDataSource
    DataSet = IB_Produto
    Left = 70
    Top = 194
  end
  object Ib_Endereco: TIBDataSet
    Database = Conexao
    Transaction = IBTransaction1
    OnNewRecord = Ib_EnderecoNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ENDERECO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ENDERECO'
      
        '  (ID, RUA, NUMERO, CEP, LOGRADOURO, BAIRRO, CIDADE, UF, IDCLIEN' +
        'TE, IDFUNCIONARIO, '
      '   IDFORNECEDOR, EX,  IDUSUARIO)'
      'values'
      
        '  (:ID, :RUA, :NUMERO, :CEP, :LOGRADOURO, :BAIRRO, :CIDADE, :UF,' +
        ' :IDCLIENTE, '
      '   :IDFUNCIONARIO, :IDFORNECEDOR, :EX, :IDUSUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  RUA,'
      '  NUMERO,'
      '  CEP,'
      '  LOGRADOURO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  IDCLIENTE,'
      '  IDFUNCIONARIO,'
      '  IDFORNECEDOR,'
      '  EX,'
      '  IDUSUARIO'
      'from ENDERECO '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select *  from ENDERECO'
      'WHERE EX = 0 AND '
      '(IDCLiente = :IdCli) or (IDFuncionario = :IdFun) or'
      ' (IDFornecedor = :IdForn)')
    ModifySQL.Strings = (
      'update ENDERECO'
      'set'
      '  ID = :ID,'
      '  RUA = :RUA,'
      '  NUMERO = :NUMERO,'
      '  CEP = :CEP,'
      '  LOGRADOURO = :LOGRADOURO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  IDCLIENTE = :IDCLIENTE,'
      '  IDFUNCIONARIO = :IDFUNCIONARIO,'
      '  IDFORNECEDOR = :IDFORNECEDOR,'
      '  EX = :EX,'
      '  IDUSUARIO = :IDUSUARIO'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_ENDERECO_ID'
    Left = 118
    Top = 154
    object Ib_EnderecoID: TIntegerField
      FieldName = 'ID'
      Origin = '"ENDERECO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Ib_EnderecoRUA: TIBStringField
      FieldName = 'RUA'
      Origin = '"ENDERECO"."RUA"'
      Size = 60
    end
    object Ib_EnderecoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"ENDERECO"."NUMERO"'
    end
    object Ib_EnderecoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"ENDERECO"."CEP"'
      Size = 10
    end
    object Ib_EnderecoLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"ENDERECO"."LOGRADOURO"'
      Size = 60
    end
    object Ib_EnderecoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"ENDERECO"."BAIRRO"'
      Size = 60
    end
    object Ib_EnderecoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"ENDERECO"."CIDADE"'
      Size = 60
    end
    object Ib_EnderecoUF: TIBStringField
      FieldName = 'UF'
      Origin = '"ENDERECO"."UF"'
      Size = 2
    end
    object Ib_EnderecoIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = '"ENDERECO"."IDCLIENTE"'
    end
    object Ib_EnderecoIDFUNCIONARIO: TIntegerField
      FieldName = 'IDFUNCIONARIO'
      Origin = '"ENDERECO"."IDFUNCIONARIO"'
    end
    object Ib_EnderecoIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = '"ENDERECO"."IDFORNECEDOR"'
    end
    object Ib_EnderecoEX: TIBStringField
      FieldName = 'EX'
      Origin = '"ENDERECO"."EX"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Ib_EnderecoIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Origin = '"ENDERECO"."IDUSUARIO"'
    end
  end
  object Ds_endereco: TDataSource
    DataSet = Ib_Endereco
    Left = 166
    Top = 154
  end
  object qPes: TIBQuery
    Database = Conexao
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 424
    Top = 16
  end
  object dsPesq: TDataSource
    DataSet = qPes
    Left = 456
    Top = 16
  end
  object qUp: TIBQuery
    Database = Conexao
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 488
    Top = 16
  end
  object dsUp: TDataSource
    DataSet = qUp
    Left = 520
    Top = 16
  end
  object ibEmpresa: TIBDataSet
    Database = Conexao
    Transaction = IBTransaction1
    OnNewRecord = ibEmpresaNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from empresa'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into empresa'
      
        '  (ID, RAZAO, FANTASIA, END_EMPRESA, NUMERO, BAIRRO, COMPLEMENTO' +
        ', CIDADE, '
      
        '   UF, CEP, FONE, FONE2, FONE3, FAX, EMAIL, WEB, CNPJ, IE, IM, L' +
        'OGO, PIS, '
      
        '   IRRF, CNAE, ISS, REGIME_TRIBUTARIO, OBSERV1, OBSERV2, COFINS,' +
        ' CPMF, '
      
        '   LUCROLIQUIDO, ALIQ_ICM_SUPER_SIMPLES, CARGA, ULTIMO_PG, ICMS_' +
        'SSIMPLES, '
      
        '   NFE_CERTIFICADO, DECIMAIS, SMTP_SERVER, SMTP_PORTA, SMTP_USER' +
        ', SMTP_PASS, '
      
        '   SMTP_EMAIL, SMTP_SERVER_SSL, SPED_DIR, DAS_SSIMPLES, LUCRO_PR' +
        'ESUMIDO_PERC, '
      
        '   SUFRAMA, USUARIO_ALTERACAO, ULTIMA_ALTERACAO, RAMO_ATIVIDADE_' +
        'ID, MICRO_EMPRESA_ESTADUAL, '
      
        '   SUBSTITUTO_TRIBUTARIO, CONTRIBUINTE_IPI, OPTANTE_SIMPLES, SUP' +
        'ER_SIMPLES, '
      
        '   IPI, PERMITE_CRED_ICMS, COD_REGIME_TRIBUTARIO, INICIO_ATIVIDA' +
        'DE, MATRIZ, '
      '   NUMERONOTAFISCAL, CODIGO_MUNICIPIO, ATIVO, EX)'
      'values'
      
        '  (:ID, :RAZAO, :FANTASIA, :END_EMPRESA, :NUMERO, :BAIRRO, :COMP' +
        'LEMENTO, '
      
        '   :CIDADE, :UF, :CEP, :FONE, :FONE2, :FONE3, :FAX, :EMAIL, :WEB' +
        ', :CNPJ, '
      
        '   :IE, :IM, :LOGO, :PIS, :IRRF, :CNAE, :ISS, :REGIME_TRIBUTARIO' +
        ', :OBSERV1, '
      
        '   :OBSERV2, :COFINS, :CPMF, :LUCROLIQUIDO, :ALIQ_ICM_SUPER_SIMP' +
        'LES, :CARGA, '
      
        '   :ULTIMO_PG, :ICMS_SSIMPLES, :NFE_CERTIFICADO, :DECIMAIS, :SMT' +
        'P_SERVER, '
      
        '   :SMTP_PORTA, :SMTP_USER, :SMTP_PASS, :SMTP_EMAIL, :SMTP_SERVE' +
        'R_SSL, '
      
        '   :SPED_DIR, :DAS_SSIMPLES, :LUCRO_PRESUMIDO_PERC, :SUFRAMA, :U' +
        'SUARIO_ALTERACAO, '
      
        '   :ULTIMA_ALTERACAO, :RAMO_ATIVIDADE_ID, :MICRO_EMPRESA_ESTADUA' +
        'L, :SUBSTITUTO_TRIBUTARIO, '
      
        '   :CONTRIBUINTE_IPI, :OPTANTE_SIMPLES, :SUPER_SIMPLES, :IPI, :P' +
        'ERMITE_CRED_ICMS, '
      
        '   :COD_REGIME_TRIBUTARIO, :INICIO_ATIVIDADE, :MATRIZ, :NUMERONO' +
        'TAFISCAL, '
      '   :CODIGO_MUNICIPIO, :ATIVO, :EX)')
    RefreshSQL.Strings = (
      'Select '
      'from empresa '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from empresa'
      'where ex = 0 ')
    ModifySQL.Strings = (
      'update empresa'
      'set'
      '  ID = :ID,'
      '  RAZAO = :RAZAO,'
      '  FANTASIA = :FANTASIA,'
      '  END_EMPRESA = :END_EMPRESA,'
      '  NUMERO = :NUMERO,'
      '  BAIRRO = :BAIRRO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  FONE = :FONE,'
      '  FONE2 = :FONE2,'
      '  FONE3 = :FONE3,'
      '  FAX = :FAX,'
      '  EMAIL = :EMAIL,'
      '  WEB = :WEB,'
      '  CNPJ = :CNPJ,'
      '  IE = :IE,'
      '  IM = :IM,'
      '  LOGO = :LOGO,'
      '  PIS = :PIS,'
      '  IRRF = :IRRF,'
      '  CNAE = :CNAE,'
      '  ISS = :ISS,'
      '  REGIME_TRIBUTARIO = :REGIME_TRIBUTARIO,'
      '  OBSERV1 = :OBSERV1,'
      '  OBSERV2 = :OBSERV2,'
      '  COFINS = :COFINS,'
      '  CPMF = :CPMF,'
      '  LUCROLIQUIDO = :LUCROLIQUIDO,'
      '  ALIQ_ICM_SUPER_SIMPLES = :ALIQ_ICM_SUPER_SIMPLES,'
      '  CARGA = :CARGA,'
      '  ULTIMO_PG = :ULTIMO_PG,'
      '  ICMS_SSIMPLES = :ICMS_SSIMPLES,'
      '  NFE_CERTIFICADO = :NFE_CERTIFICADO,'
      '  DECIMAIS = :DECIMAIS,'
      '  SMTP_SERVER = :SMTP_SERVER,'
      '  SMTP_PORTA = :SMTP_PORTA,'
      '  SMTP_USER = :SMTP_USER,'
      '  SMTP_PASS = :SMTP_PASS,'
      '  SMTP_EMAIL = :SMTP_EMAIL,'
      '  SMTP_SERVER_SSL = :SMTP_SERVER_SSL,'
      '  SPED_DIR = :SPED_DIR,'
      '  DAS_SSIMPLES = :DAS_SSIMPLES,'
      '  LUCRO_PRESUMIDO_PERC = :LUCRO_PRESUMIDO_PERC,'
      '  SUFRAMA = :SUFRAMA,'
      '  USUARIO_ALTERACAO = :USUARIO_ALTERACAO,'
      '  ULTIMA_ALTERACAO = :ULTIMA_ALTERACAO,'
      '  RAMO_ATIVIDADE_ID = :RAMO_ATIVIDADE_ID,'
      '  MICRO_EMPRESA_ESTADUAL = :MICRO_EMPRESA_ESTADUAL,'
      '  SUBSTITUTO_TRIBUTARIO = :SUBSTITUTO_TRIBUTARIO,'
      '  CONTRIBUINTE_IPI = :CONTRIBUINTE_IPI,'
      '  OPTANTE_SIMPLES = :OPTANTE_SIMPLES,'
      '  SUPER_SIMPLES = :SUPER_SIMPLES,'
      '  IPI = :IPI,'
      '  PERMITE_CRED_ICMS = :PERMITE_CRED_ICMS,'
      '  COD_REGIME_TRIBUTARIO = :COD_REGIME_TRIBUTARIO,'
      '  INICIO_ATIVIDADE = :INICIO_ATIVIDADE,'
      '  MATRIZ = :MATRIZ,'
      '  NUMERONOTAFISCAL = :NUMERONOTAFISCAL,'
      '  CODIGO_MUNICIPIO = :CODIGO_MUNICIPIO,'
      '  ATIVO = :ATIVO,'
      '  EX = :EX'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_EMPRESA_ID'
    Left = 30
    Top = 66
    object ibEmpresaID: TIntegerField
      FieldName = 'ID'
      Origin = '"EMPRESA"."ID"'
      Required = True
    end
    object ibEmpresaRAZAO: TIBStringField
      FieldName = 'RAZAO'
      Origin = '"EMPRESA"."RAZAO"'
      Size = 80
    end
    object ibEmpresaFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"EMPRESA"."FANTASIA"'
      Size = 80
    end
    object ibEmpresaEND_EMPRESA: TIBStringField
      FieldName = 'END_EMPRESA'
      Origin = '"EMPRESA"."END_EMPRESA"'
      Size = 80
    end
    object ibEmpresaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"EMPRESA"."NUMERO"'
      Size = 10
    end
    object ibEmpresaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"EMPRESA"."BAIRRO"'
      Size = 80
    end
    object ibEmpresaCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"EMPRESA"."COMPLEMENTO"'
      Size = 40
    end
    object ibEmpresaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"EMPRESA"."CIDADE"'
      Size = 80
    end
    object ibEmpresaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"EMPRESA"."UF"'
      Size = 2
    end
    object ibEmpresaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"EMPRESA"."CEP"'
      Size = 9
    end
    object ibEmpresaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"EMPRESA"."FONE"'
      FixedChar = True
      Size = 14
    end
    object ibEmpresaFONE2: TIBStringField
      FieldName = 'FONE2'
      Origin = '"EMPRESA"."FONE2"'
      FixedChar = True
      Size = 14
    end
    object ibEmpresaFONE3: TIBStringField
      FieldName = 'FONE3'
      Origin = '"EMPRESA"."FONE3"'
      FixedChar = True
      Size = 14
    end
    object ibEmpresaFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"EMPRESA"."FAX"'
      FixedChar = True
      Size = 14
    end
    object ibEmpresaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"EMPRESA"."EMAIL"'
      Size = 60
    end
    object ibEmpresaWEB: TIBStringField
      FieldName = 'WEB'
      Origin = '"EMPRESA"."WEB"'
      Size = 100
    end
    object ibEmpresaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EMPRESA"."CNPJ"'
      Size = 18
    end
    object ibEmpresaIE: TIBStringField
      FieldName = 'IE'
      Origin = '"EMPRESA"."IE"'
      Size = 18
    end
    object ibEmpresaIM: TIBStringField
      FieldName = 'IM'
      Origin = '"EMPRESA"."IM"'
    end
    object ibEmpresaLOGO: TIBStringField
      FieldName = 'LOGO'
      Origin = '"EMPRESA"."LOGO"'
      Size = 100
    end
    object ibEmpresaPIS: TIBBCDField
      FieldName = 'PIS'
      Origin = '"EMPRESA"."PIS"'
      Precision = 18
      Size = 2
    end
    object ibEmpresaIRRF: TIBBCDField
      FieldName = 'IRRF'
      Origin = '"EMPRESA"."IRRF"'
      Precision = 18
      Size = 2
    end
    object ibEmpresaCNAE: TIntegerField
      FieldName = 'CNAE'
      Origin = '"EMPRESA"."CNAE"'
    end
    object ibEmpresaISS: TIBBCDField
      FieldName = 'ISS'
      Origin = '"EMPRESA"."ISS"'
      Precision = 18
      Size = 2
    end
    object ibEmpresaREGIME_TRIBUTARIO: TIBStringField
      FieldName = 'REGIME_TRIBUTARIO'
      Origin = '"EMPRESA"."REGIME_TRIBUTARIO"'
      FixedChar = True
      Size = 2
    end
    object ibEmpresaOBSERV1: TIBStringField
      FieldName = 'OBSERV1'
      Origin = '"EMPRESA"."OBSERV1"'
      Size = 100
    end
    object ibEmpresaOBSERV2: TIBStringField
      FieldName = 'OBSERV2'
      Origin = '"EMPRESA"."OBSERV2"'
      Size = 100
    end
    object ibEmpresaCOFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = '"EMPRESA"."COFINS"'
      Precision = 18
      Size = 2
    end
    object ibEmpresaCPMF: TIBBCDField
      FieldName = 'CPMF'
      Origin = '"EMPRESA"."CPMF"'
      Precision = 18
      Size = 2
    end
    object ibEmpresaLUCROLIQUIDO: TIBBCDField
      FieldName = 'LUCROLIQUIDO'
      Origin = '"EMPRESA"."LUCROLIQUIDO"'
      Precision = 18
      Size = 2
    end
    object ibEmpresaALIQ_ICM_SUPER_SIMPLES: TIBBCDField
      FieldName = 'ALIQ_ICM_SUPER_SIMPLES'
      Origin = '"EMPRESA"."ALIQ_ICM_SUPER_SIMPLES"'
      Precision = 18
      Size = 2
    end
    object ibEmpresaCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"EMPRESA"."CARGA"'
    end
    object ibEmpresaULTIMO_PG: TDateField
      FieldName = 'ULTIMO_PG'
      Origin = '"EMPRESA"."ULTIMO_PG"'
    end
    object ibEmpresaICMS_SSIMPLES: TIBBCDField
      FieldName = 'ICMS_SSIMPLES'
      Origin = '"EMPRESA"."ICMS_SSIMPLES"'
      Precision = 18
      Size = 2
    end
    object ibEmpresaNFE_CERTIFICADO: TIBStringField
      FieldName = 'NFE_CERTIFICADO'
      Origin = '"EMPRESA"."NFE_CERTIFICADO"'
      Size = 500
    end
    object ibEmpresaDECIMAIS: TIntegerField
      FieldName = 'DECIMAIS'
      Origin = '"EMPRESA"."DECIMAIS"'
    end
    object ibEmpresaSMTP_SERVER: TIBStringField
      FieldName = 'SMTP_SERVER'
      Origin = '"EMPRESA"."SMTP_SERVER"'
      Size = 150
    end
    object ibEmpresaSMTP_PORTA: TIntegerField
      FieldName = 'SMTP_PORTA'
      Origin = '"EMPRESA"."SMTP_PORTA"'
    end
    object ibEmpresaSMTP_USER: TIBStringField
      FieldName = 'SMTP_USER'
      Origin = '"EMPRESA"."SMTP_USER"'
      Size = 150
    end
    object ibEmpresaSMTP_PASS: TIBStringField
      FieldName = 'SMTP_PASS'
      Origin = '"EMPRESA"."SMTP_PASS"'
      Size = 100
    end
    object ibEmpresaSMTP_EMAIL: TIBStringField
      FieldName = 'SMTP_EMAIL'
      Origin = '"EMPRESA"."SMTP_EMAIL"'
      Size = 150
    end
    object ibEmpresaSMTP_SERVER_SSL: TIBStringField
      FieldName = 'SMTP_SERVER_SSL'
      Origin = '"EMPRESA"."SMTP_SERVER_SSL"'
      FixedChar = True
      Size = 1
    end
    object ibEmpresaSPED_DIR: TIBStringField
      FieldName = 'SPED_DIR'
      Origin = '"EMPRESA"."SPED_DIR"'
      Size = 250
    end
    object ibEmpresaDAS_SSIMPLES: TIBBCDField
      FieldName = 'DAS_SSIMPLES'
      Origin = '"EMPRESA"."DAS_SSIMPLES"'
      Precision = 18
      Size = 4
    end
    object ibEmpresaLUCRO_PRESUMIDO_PERC: TIBBCDField
      FieldName = 'LUCRO_PRESUMIDO_PERC'
      Origin = '"EMPRESA"."LUCRO_PRESUMIDO_PERC"'
      Precision = 18
      Size = 2
    end
    object ibEmpresaSUFRAMA: TIBStringField
      FieldName = 'SUFRAMA'
      Origin = '"EMPRESA"."SUFRAMA"'
      Size = 15
    end
    object ibEmpresaUSUARIO_ALTERACAO: TIBStringField
      FieldName = 'USUARIO_ALTERACAO'
      Origin = '"EMPRESA"."USUARIO_ALTERACAO"'
      Size = 15
    end
    object ibEmpresaULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
      Origin = '"EMPRESA"."ULTIMA_ALTERACAO"'
    end
    object ibEmpresaRAMO_ATIVIDADE_ID: TIntegerField
      FieldName = 'RAMO_ATIVIDADE_ID'
      Origin = '"EMPRESA"."RAMO_ATIVIDADE_ID"'
      Required = True
    end
    object ibEmpresaMICRO_EMPRESA_ESTADUAL: TIBStringField
      FieldName = 'MICRO_EMPRESA_ESTADUAL'
      Origin = '"EMPRESA"."MICRO_EMPRESA_ESTADUAL"'
      FixedChar = True
      Size = 1
    end
    object ibEmpresaSUBSTITUTO_TRIBUTARIO: TIBStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Origin = '"EMPRESA"."SUBSTITUTO_TRIBUTARIO"'
      FixedChar = True
      Size = 1
    end
    object ibEmpresaCONTRIBUINTE_IPI: TIBStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Origin = '"EMPRESA"."CONTRIBUINTE_IPI"'
      FixedChar = True
      Size = 1
    end
    object ibEmpresaOPTANTE_SIMPLES: TIBStringField
      FieldName = 'OPTANTE_SIMPLES'
      Origin = '"EMPRESA"."OPTANTE_SIMPLES"'
      FixedChar = True
      Size = 1
    end
    object ibEmpresaSUPER_SIMPLES: TIBStringField
      FieldName = 'SUPER_SIMPLES'
      Origin = '"EMPRESA"."SUPER_SIMPLES"'
      FixedChar = True
      Size = 1
    end
    object ibEmpresaIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"EMPRESA"."IPI"'
      Precision = 18
      Size = 2
    end
    object ibEmpresaPERMITE_CRED_ICMS: TIBStringField
      FieldName = 'PERMITE_CRED_ICMS'
      Origin = '"EMPRESA"."PERMITE_CRED_ICMS"'
      FixedChar = True
      Size = 1
    end
    object ibEmpresaCOD_REGIME_TRIBUTARIO: TIntegerField
      FieldName = 'COD_REGIME_TRIBUTARIO'
      Origin = '"EMPRESA"."COD_REGIME_TRIBUTARIO"'
    end
    object ibEmpresaINICIO_ATIVIDADE: TDateField
      FieldName = 'INICIO_ATIVIDADE'
      Origin = '"EMPRESA"."INICIO_ATIVIDADE"'
    end
    object ibEmpresaMATRIZ: TIBStringField
      FieldName = 'MATRIZ'
      Origin = '"EMPRESA"."MATRIZ"'
      FixedChar = True
      Size = 1
    end
    object ibEmpresaNUMERONOTAFISCAL: TIntegerField
      FieldName = 'NUMERONOTAFISCAL'
      Origin = '"EMPRESA"."NUMERONOTAFISCAL"'
    end
    object ibEmpresaCODIGO_MUNICIPIO: TIBStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"EMPRESA"."CODIGO_MUNICIPIO"'
      Size = 10
    end
    object ibEmpresaATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"EMPRESA"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object ibEmpresaEX: TIBStringField
      FieldName = 'EX'
      Origin = '"EMPRESA"."EX"'
      FixedChar = True
      Size = 1
    end
  end
  object ib_fpg: TIBDataSet
    Database = Conexao
    Transaction = IBTransaction1
    OnNewRecord = ib_fpgNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FORMAS_DE_PAGAMENTO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FORMAS_DE_PAGAMENTO'
      '  (ID, DESCRICAO, ATIVO, EX)'
      'values'
      '  (:ID, :DESCRICAO, :ATIVO, :EX)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DESCRICAO,'
      '  ATIVO,'
      '  EX'
      'from FORMAS_DE_PAGAMENTO '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select *  from FORMAS_DE_PAGAMENTO'
      'WHERE EX = 0')
    ModifySQL.Strings = (
      'update FORMAS_DE_PAGAMENTO'
      'set'
      '  ID = :ID,'
      '  DESCRICAO = :DESCRICAO,'
      '  ATIVO = :ATIVO,'
      '  EX = :EX'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_MARCA_ID'
    Left = 14
    Top = 242
    object ib_fpgID: TIntegerField
      FieldName = 'ID'
      Origin = '"FORMAS_DE_PAGAMENTO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ib_fpgDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"FORMAS_DE_PAGAMENTO"."DESCRICAO"'
      Size = 25
    end
    object ib_fpgATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FORMAS_DE_PAGAMENTO"."ATIVO"'
      Size = 1
    end
    object ib_fpgEX: TIBStringField
      FieldName = 'EX'
      Origin = '"FORMAS_DE_PAGAMENTO"."EX"'
      FixedChar = True
      Size = 1
    end
  end
  object dsfpg: TDataSource
    DataSet = ib_fpg
    Left = 62
    Top = 242
  end
  object qLogin: TIBQuery
    Database = Conexao
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select usuario, senha from funcionario'
      'where ex = 0 and  usuario = :edNome')
    Left = 424
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'edNome'
        ParamType = ptUnknown
      end>
    object qLoginUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"FUNCIONARIO"."USUARIO"'
    end
    object qLoginSENHA: TIntegerField
      FieldName = 'SENHA'
      Origin = '"FUNCIONARIO"."SENHA"'
    end
  end
  object dsLogin: TDataSource
    DataSet = qLogin
    Left = 464
    Top = 64
  end
  object ibEndCliente: TIBDataSet
    Database = Conexao
    Transaction = IBTransaction1
    OnNewRecord = ibEndClienteNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from cliente_endereco'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into cliente_endereco'
      
        '  (ID, RUA, NUMERO, CEP, LOGRADOURO, BAIRRO, CIDADE, UF, EX, IDU' +
        'SUARIO, '
      '   IDCLIENTE)'
      'values'
      
        '  (:ID, :RUA, :NUMERO, :CEP, :LOGRADOURO, :BAIRRO, :CIDADE, :UF,' +
        ' :EX, :IDUSUARIO, '
      '   :IDCLIENTE)')
    RefreshSQL.Strings = (
      'Select cliente_endereco.*'
      'from cliente_endereco '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT cliente_endereco.* FROM cliente_endereco'
      'inner JOIN CLIENTE ON CLIENTE.id = idcliente'
      'WHERE EX = 0 and :idcli = idcliente ')
    ModifySQL.Strings = (
      'update cliente_endereco'
      'set'
      '  ID = :ID,'
      '  RUA = :RUA,'
      '  NUMERO = :NUMERO,'
      '  CEP = :CEP,'
      '  LOGRADOURO = :LOGRADOURO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  EX = :EX,'
      '  IDUSUARIO = :IDUSUARIO,'
      '  IDCLIENTE = :IDCLIENTE'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_CLIENTE_ENDERECO_ID'
    Left = 216
    Top = 104
    object ibEndClienteID: TIntegerField
      FieldName = 'ID'
      Origin = '"CLIENTE_ENDERECO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibEndClienteRUA: TIBStringField
      FieldName = 'RUA'
      Origin = '"CLIENTE_ENDERECO"."RUA"'
      Size = 60
    end
    object ibEndClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"CLIENTE_ENDERECO"."NUMERO"'
    end
    object ibEndClienteCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTE_ENDERECO"."CEP"'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object ibEndClienteLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"CLIENTE_ENDERECO"."LOGRADOURO"'
      Size = 60
    end
    object ibEndClienteBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTE_ENDERECO"."BAIRRO"'
      Size = 60
    end
    object ibEndClienteCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTE_ENDERECO"."CIDADE"'
      Size = 60
    end
    object ibEndClienteUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CLIENTE_ENDERECO"."UF"'
      Size = 2
    end
    object ibEndClienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = '"CLIENTE_ENDERECO"."IDCLIENTE"'
    end
    object ibEndClienteEX: TIBStringField
      FieldName = 'EX'
      Origin = '"CLIENTE_ENDERECO"."EX"'
      FixedChar = True
      Size = 1
    end
    object ibEndClienteIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Origin = '"CLIENTE_ENDERECO"."IDUSUARIO"'
    end
    object ibEndClienteCODMUNICIPIO: TIntegerField
      FieldName = 'CODMUNICIPIO'
      Origin = '"CLIENTE_ENDERECO"."CODMUNICIPIO"'
    end
  end
  object ibContador: TIBDataSet
    Database = Conexao
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CONTADOR'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CONTADOR'
      
        '  (ID, NOME, CPF, CRC, CNPJ, ENDE, NMRO, COMP, BAIR, CEP, CIDA, ' +
        'UF, FON1, '
      '   FON2, MAIL, IDEMPRESA, ATIVO, EX)'
      'values'
      
        '  (:ID, :NOME, :CPF, :CRC, :CNPJ, :ENDE, :NMRO, :COMP, :BAIR, :C' +
        'EP, :CIDA, '
      '   :UF, :FON1, :FON2, :MAIL, :IDEMPRESA, :ATIVO, :EX)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NOME,'
      '  CPF,'
      '  CRC,'
      '  CNPJ,'
      '  ENDE,'
      '  NMRO,'
      '  COMP,'
      '  BAIR,'
      '  CEP,'
      '  CIDA,'
      '  UF,'
      '  FON1,'
      '  FON2,'
      '  MAIL,'
      '  IDEMPRESA,'
      '  ATIVO,'
      '  EX'
      'from CONTADOR '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select  *  from CONTADOR'
      'where EX = 0')
    ModifySQL.Strings = (
      'update CONTADOR'
      'set'
      '  ID = :ID,'
      '  NOME = :NOME,'
      '  CPF = :CPF,'
      '  CRC = :CRC,'
      '  CNPJ = :CNPJ,'
      '  ENDE = :ENDE,'
      '  NMRO = :NMRO,'
      '  COMP = :COMP,'
      '  BAIR = :BAIR,'
      '  CEP = :CEP,'
      '  CIDA = :CIDA,'
      '  UF = :UF,'
      '  FON1 = :FON1,'
      '  FON2 = :FON2,'
      '  MAIL = :MAIL,'
      '  IDEMPRESA = :IDEMPRESA,'
      '  ATIVO = :ATIVO,'
      '  EX = :EX'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    Left = 24
    Top = 112
    object ibContadorID: TIntegerField
      FieldName = 'ID'
      Origin = '"CONTADOR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibContadorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CONTADOR"."NOME"'
      Size = 50
    end
    object ibContadorCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CONTADOR"."CPF"'
      Size = 14
    end
    object ibContadorCRC: TIBStringField
      FieldName = 'CRC'
      Origin = '"CONTADOR"."CRC"'
      Size = 15
    end
    object ibContadorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CONTADOR"."CNPJ"'
      Size = 18
    end
    object ibContadorENDE: TIBStringField
      FieldName = 'ENDE'
      Origin = '"CONTADOR"."ENDE"'
      Size = 50
    end
    object ibContadorNMRO: TIBStringField
      FieldName = 'NMRO'
      Origin = '"CONTADOR"."NMRO"'
      Size = 10
    end
    object ibContadorCOMP: TIBStringField
      FieldName = 'COMP'
      Origin = '"CONTADOR"."COMP"'
      Size = 50
    end
    object ibContadorBAIR: TIBStringField
      FieldName = 'BAIR'
      Origin = '"CONTADOR"."BAIR"'
      Size = 30
    end
    object ibContadorCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CONTADOR"."CEP"'
      Size = 9
    end
    object ibContadorCIDA: TIBStringField
      FieldName = 'CIDA'
      Origin = '"CONTADOR"."CIDA"'
      Size = 30
    end
    object ibContadorUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CONTADOR"."UF"'
      Size = 2
    end
    object ibContadorFON1: TIBStringField
      FieldName = 'FON1'
      Origin = '"CONTADOR"."FON1"'
      Size = 14
    end
    object ibContadorFON2: TIBStringField
      FieldName = 'FON2'
      Origin = '"CONTADOR"."FON2"'
      Size = 14
    end
    object ibContadorMAIL: TIBStringField
      FieldName = 'MAIL'
      Origin = '"CONTADOR"."MAIL"'
      Size = 100
    end
    object ibContadorIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = '"CONTADOR"."IDEMPRESA"'
    end
    object ibContadorATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"CONTADOR"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object ibContadorEX: TIBStringField
      FieldName = 'EX'
      Origin = '"CONTADOR"."EX"'
      FixedChar = True
      Size = 1
    end
  end
  object Fornecedor: TIBDataSet
    Database = Conexao
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FORNECEDOR'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FORNECEDOR'
      
        '  (ID, NOME, NOME_FANTASIA, CPF_CNPJ, INSCRICAO_ESTADUAL_RG, LOG' +
        'RADOURO, '
      
        '   NUMERO, COMPLEMENTO, BAIRRO, COD_CIDADE, UF, CEP, TELEFONE1, ' +
        'TELEFONE2, '
      
        '   CELULAR, LIMITE_CREDITO, EMAIL, OBSERVACAO, COD_USUARIO_INCLU' +
        'SAO, COD_USUARIO_ALTERACAO, '
      
        '   DATA_INCLUSAO, DATA_ALTERACAO, IE_MUNICIPAL, DS_EMAIL, EX, AT' +
        'IVO)'
      'values'
      
        '  (:ID, :NOME, :NOME_FANTASIA, :CPF_CNPJ, :INSCRICAO_ESTADUAL_RG' +
        ', :LOGRADOURO, '
      
        '   :NUMERO, :COMPLEMENTO, :BAIRRO, :COD_CIDADE, :UF, :CEP, :TELE' +
        'FONE1, '
      
        '   :TELEFONE2, :CELULAR, :LIMITE_CREDITO, :EMAIL, :OBSERVACAO, :' +
        'COD_USUARIO_INCLUSAO, '
      
        '   :COD_USUARIO_ALTERACAO, :DATA_INCLUSAO, :DATA_ALTERACAO, :IE_' +
        'MUNICIPAL, '
      '   :DS_EMAIL, :EX, :ATIVO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NOME,'
      '  NOME_FANTASIA,'
      '  CPF_CNPJ,'
      '  INSCRICAO_ESTADUAL_RG,'
      '  LOGRADOURO,'
      '  NUMERO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  COD_CIDADE,'
      '  UF,'
      '  CEP,'
      '  TELEFONE1,'
      '  TELEFONE2,'
      '  CELULAR,'
      '  LIMITE_CREDITO,'
      '  EMAIL,'
      '  OBSERVACAO,'
      '  COD_USUARIO_INCLUSAO,'
      '  COD_USUARIO_ALTERACAO,'
      '  DATA_INCLUSAO,'
      '  DATA_ALTERACAO,'
      '  IE_MUNICIPAL,'
      '  DS_EMAIL,'
      '  EX,'
      '  ATIVO'
      'from FORNECEDOR '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'Select * from FORNECEDOR'
      'where ex = 0')
    ModifySQL.Strings = (
      'update FORNECEDOR'
      'set'
      '  ID = :ID,'
      '  NOME = :NOME,'
      '  NOME_FANTASIA = :NOME_FANTASIA,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  INSCRICAO_ESTADUAL_RG = :INSCRICAO_ESTADUAL_RG,'
      '  LOGRADOURO = :LOGRADOURO,'
      '  NUMERO = :NUMERO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  BAIRRO = :BAIRRO,'
      '  COD_CIDADE = :COD_CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  TELEFONE1 = :TELEFONE1,'
      '  TELEFONE2 = :TELEFONE2,'
      '  CELULAR = :CELULAR,'
      '  LIMITE_CREDITO = :LIMITE_CREDITO,'
      '  EMAIL = :EMAIL,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  COD_USUARIO_INCLUSAO = :COD_USUARIO_INCLUSAO,'
      '  COD_USUARIO_ALTERACAO = :COD_USUARIO_ALTERACAO,'
      '  DATA_INCLUSAO = :DATA_INCLUSAO,'
      '  DATA_ALTERACAO = :DATA_ALTERACAO,'
      '  IE_MUNICIPAL = :IE_MUNICIPAL,'
      '  DS_EMAIL = :DS_EMAIL,'
      '  EX = :EX,'
      '  ATIVO = :ATIVO'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    Left = 16
    Top = 296
    object FornecedorID: TIntegerField
      FieldName = 'ID'
      Origin = '"FORNECEDOR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FornecedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FORNECEDOR"."NOME"'
      Size = 50
    end
    object FornecedorNOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"FORNECEDOR"."NOME_FANTASIA"'
      Size = 50
    end
    object FornecedorCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"FORNECEDOR"."CPF_CNPJ"'
      Size = 14
    end
    object FornecedorINSCRICAO_ESTADUAL_RG: TIBStringField
      FieldName = 'INSCRICAO_ESTADUAL_RG'
      Origin = '"FORNECEDOR"."INSCRICAO_ESTADUAL_RG"'
      Size = 25
    end
    object FornecedorLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"FORNECEDOR"."LOGRADOURO"'
      Size = 50
    end
    object FornecedorNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"FORNECEDOR"."NUMERO"'
      Size = 10
    end
    object FornecedorCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"FORNECEDOR"."COMPLEMENTO"'
      Size = 30
    end
    object FornecedorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"FORNECEDOR"."BAIRRO"'
      Size = 30
    end
    object FornecedorCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"FORNECEDOR"."COD_CIDADE"'
    end
    object FornecedorUF: TIBStringField
      FieldName = 'UF'
      Origin = '"FORNECEDOR"."UF"'
      Size = 2
    end
    object FornecedorCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"FORNECEDOR"."CEP"'
      Size = 8
    end
    object FornecedorTELEFONE1: TIBStringField
      FieldName = 'TELEFONE1'
      Origin = '"FORNECEDOR"."TELEFONE1"'
    end
    object FornecedorTELEFONE2: TIBStringField
      FieldName = 'TELEFONE2'
      Origin = '"FORNECEDOR"."TELEFONE2"'
    end
    object FornecedorCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"FORNECEDOR"."CELULAR"'
    end
    object FornecedorLIMITE_CREDITO: TIBBCDField
      FieldName = 'LIMITE_CREDITO'
      Origin = '"FORNECEDOR"."LIMITE_CREDITO"'
      Precision = 18
      Size = 2
    end
    object FornecedorEMAIL: TIntegerField
      FieldName = 'EMAIL'
      Origin = '"FORNECEDOR"."EMAIL"'
    end
    object FornecedorOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"FORNECEDOR"."OBSERVACAO"'
      Size = 100
    end
    object FornecedorCOD_USUARIO_INCLUSAO: TIBStringField
      FieldName = 'COD_USUARIO_INCLUSAO'
      Origin = '"FORNECEDOR"."COD_USUARIO_INCLUSAO"'
      Size = 50
    end
    object FornecedorCOD_USUARIO_ALTERACAO: TIBStringField
      FieldName = 'COD_USUARIO_ALTERACAO'
      Origin = '"FORNECEDOR"."COD_USUARIO_ALTERACAO"'
      Size = 50
    end
    object FornecedorDATA_INCLUSAO: TDateField
      FieldName = 'DATA_INCLUSAO'
      Origin = '"FORNECEDOR"."DATA_INCLUSAO"'
    end
    object FornecedorDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
      Origin = '"FORNECEDOR"."DATA_ALTERACAO"'
    end
    object FornecedorIE_MUNICIPAL: TIBStringField
      FieldName = 'IE_MUNICIPAL'
      Origin = '"FORNECEDOR"."IE_MUNICIPAL"'
      Size = 15
    end
    object FornecedorDS_EMAIL: TIBStringField
      FieldName = 'DS_EMAIL'
      Origin = '"FORNECEDOR"."DS_EMAIL"'
      Size = 100
    end
    object FornecedorEX: TIBStringField
      FieldName = 'EX'
      Origin = '"FORNECEDOR"."EX"'
      FixedChar = True
      Size = 1
    end
    object FornecedorATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FORNECEDOR"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
end
