object fmCadEmpresa: TfmCadEmpresa
  Left = 0
  Top = 0
  ClientHeight = 512
  ClientWidth = 1021
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 475
    Top = 106
    Width = 35
    Height = 13
    Caption = 'RAZAO'
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1021
    Height = 29
    Cursor = crHandPoint
    Caption = 'ToolBar1'
    Color = clBtnFace
    Images = ImageList1
    ParentColor = False
    TabOrder = 0
    object btNovo: TToolButton
      Left = 0
      Top = 0
      ImageIndex = 0
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btEditar: TToolButton
      Left = 31
      Top = 0
      Caption = 'btEditar'
      ImageIndex = 1
    end
    object ToolButton4: TToolButton
      Left = 54
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object btExcluir: TToolButton
      Left = 62
      Top = 0
      Caption = 'btExcluir'
      ImageIndex = 3
    end
    object ToolButton6: TToolButton
      Left = 85
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object btSalvar: TToolButton
      Left = 93
      Top = 0
      Caption = 'btSalvar'
      ImageIndex = 4
    end
    object ToolButton8: TToolButton
      Left = 116
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object btImp: TToolButton
      Left = 124
      Top = 0
      Caption = 'btImp'
      ImageIndex = 5
    end
    object ToolButton10: TToolButton
      Left = 147
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object btSair: TToolButton
      Left = 155
      Top = 0
      Caption = 'btSair'
      ImageIndex = 2
      OnClick = btSairClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 29
    Width = 1021
    Height = 483
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Empresas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      object Panel1: TPanel
        Left = 3
        Top = 220
        Width = 1006
        Height = 230
        BevelOuter = bvNone
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1013
        Height = 453
        Align = alClient
        DrawingStyle = gdsGradient
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = [fsBold]
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados'
      ImageIndex = 1
      ExplicitLeft = 0
      object Label60: TLabel
        Left = 2
        Top = 8
        Width = 38
        Height = 15
        Caption = 'C'#243'digo'
        FocusControl = DBEdit56
      end
      object Label61: TLabel
        Left = 2
        Top = 47
        Width = 68
        Height = 15
        Caption = 'Raz'#227'o Social'
        FocusControl = DBEdit57
      end
      object Label62: TLabel
        Left = 465
        Top = 47
        Width = 81
        Height = 15
        Caption = 'Nome Fantasia'
        FocusControl = DBEdit58
      end
      object Label1: TLabel
        Left = 2
        Top = 96
        Width = 52
        Height = 15
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 465
        Top = 96
        Width = 14
        Height = 15
        Caption = 'N'#186
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 530
        Top = 96
        Width = 34
        Height = 15
        Caption = 'Bairro'
        FocusControl = DBEdit3
      end
      object Label63: TLabel
        Left = 800
        Top = 96
        Width = 79
        Height = 15
        Caption = 'Complemento'
        FocusControl = DBEdit59
      end
      object Label64: TLabel
        Left = 2
        Top = 141
        Width = 37
        Height = 15
        Caption = 'Cidade'
        FocusControl = DBEdit60
      end
      object Label65: TLabel
        Left = 465
        Top = 141
        Width = 15
        Height = 15
        Caption = 'UF'
      end
      object Label66: TLabel
        Left = 532
        Top = 140
        Width = 21
        Height = 15
        Caption = 'Cep'
        FocusControl = DBEdit61
      end
      object Label67: TLabel
        Left = 654
        Top = 140
        Width = 27
        Height = 15
        Caption = 'Fone'
        FocusControl = DBEdit62
      end
      object Label68: TLabel
        Left = 762
        Top = 140
        Width = 37
        Height = 15
        Caption = 'celular'
        FocusControl = DBEdit63
      end
      object Label69: TLabel
        Left = 2
        Top = 183
        Width = 34
        Height = 15
        Caption = 'E-mail'
        FocusControl = DBEdit64
      end
      object Label70: TLabel
        Left = 465
        Top = 183
        Width = 22
        Height = 15
        Caption = 'Site'
        FocusControl = DBEdit65
      end
      object DBEdit56: TDBEdit
        Left = 2
        Top = 24
        Width = 70
        Height = 23
        DataField = 'ID'
        DataSource = dsG
        TabOrder = 0
      end
      object DBCheckBox2: TDBCheckBox
        Left = 90
        Top = 27
        Width = 72
        Height = 17
        Caption = ' Ativo'
        DataField = 'ATIVO'
        DataSource = dsG
        TabOrder = 1
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit57: TDBEdit
        Left = 2
        Top = 65
        Width = 458
        Height = 23
        DataField = 'RAZAO'
        DataSource = dsG
        TabOrder = 2
      end
      object DBEdit58: TDBEdit
        Left = 465
        Top = 65
        Width = 476
        Height = 23
        DataField = 'FANTASIA'
        DataSource = dsG
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 2
        Top = 113
        Width = 458
        Height = 23
        DataField = 'END_EMPRESA'
        DataSource = dsG
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 465
        Top = 112
        Width = 56
        Height = 23
        DataField = 'NUMERO'
        DataSource = dsG
        TabOrder = 5
      end
      object DBEdit3: TDBEdit
        Left = 531
        Top = 113
        Width = 268
        Height = 23
        DataField = 'BAIRRO'
        DataSource = dsG
        TabOrder = 6
      end
      object DBEdit59: TDBEdit
        Left = 800
        Top = 113
        Width = 220
        Height = 23
        DataField = 'COMPLEMENTO'
        DataSource = dsG
        TabOrder = 7
      end
      object DBEdit60: TDBEdit
        Left = 2
        Top = 156
        Width = 458
        Height = 23
        DataField = 'CIDADE'
        DataSource = dsG
        TabOrder = 8
      end
      object DBComboBox2: TDBComboBox
        Left = 465
        Top = 156
        Width = 56
        Height = 23
        DataField = 'UF'
        DataSource = dsG
        Items.Strings = (
          ''
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO'
          'DF')
        TabOrder = 9
      end
      object DBEdit61: TDBEdit
        Left = 532
        Top = 156
        Width = 121
        Height = 23
        DataField = 'CEP'
        DataSource = dsG
        TabOrder = 10
      end
      object DBEdit62: TDBEdit
        Left = 654
        Top = 156
        Width = 106
        Height = 23
        DataField = 'FONE'
        DataSource = dsG
        TabOrder = 11
      end
      object DBEdit63: TDBEdit
        Left = 762
        Top = 156
        Width = 103
        Height = 23
        DataField = 'FONE2'
        DataSource = dsG
        TabOrder = 12
      end
      object DBEdit64: TDBEdit
        Left = 2
        Top = 199
        Width = 458
        Height = 23
        DataField = 'EMAIL'
        DataSource = dsG
        TabOrder = 13
      end
      object DBEdit65: TDBEdit
        Left = 465
        Top = 199
        Width = 538
        Height = 23
        DataField = 'WEB'
        DataSource = dsG
        TabOrder = 14
      end
      object Panel2: TPanel
        Left = 0
        Top = 228
        Width = 1013
        Height = 225
        Align = alBottom
        TabOrder = 15
        object PageControl2: TPageControl
          Left = 1
          Top = 1
          Width = 1011
          Height = 223
          ActivePage = TabSheet4
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 19
          ExplicitTop = 240
          ExplicitWidth = 1013
          ExplicitHeight = 453
          object TabSheet3: TTabSheet
            Caption = 'Documentos'
            object Label16: TLabel
              Left = 1
              Top = 4
              Width = 24
              Height = 15
              Caption = 'Cnpj'
              FocusControl = DBEdit14
            end
            object Label17: TLabel
              Left = 138
              Top = 4
              Width = 10
              Height = 15
              Caption = 'IE'
              FocusControl = DBEdit15
            end
            object Label18: TLabel
              Left = 275
              Top = 4
              Width = 15
              Height = 15
              Caption = 'IM'
              FocusControl = DBEdit16
            end
            object Label19: TLabel
              Left = 420
              Top = 4
              Width = 18
              Height = 15
              Caption = 'PIS'
              FocusControl = DBEdit17
            end
            object Label20: TLabel
              Left = 551
              Top = 4
              Width = 26
              Height = 15
              Caption = 'IRRF'
              FocusControl = DBEdit18
            end
            object Label21: TLabel
              Left = 695
              Top = 4
              Width = 73
              Height = 15
              Caption = 'R. Tributa'#231#227'o'
              FocusControl = DBEdit19
            end
            object Label22: TLabel
              Left = 772
              Top = 4
              Width = 42
              Height = 15
              Caption = 'COFINS'
              FocusControl = DBEdit20
            end
            object Label23: TLabel
              Left = 866
              Top = 4
              Width = 31
              Height = 15
              Caption = 'CPMF'
              FocusControl = DBEdit21
            end
            object Label24: TLabel
              Left = 1
              Top = 49
              Width = 53
              Height = 15
              Caption = 'Lucro Liq.'
              FocusControl = DBEdit22
            end
            object Label25: TLabel
              Left = 1
              Top = 90
              Width = 65
              Height = 15
              Caption = 'Observa'#231#227'o'
            end
            object Label26: TLabel
              Left = 139
              Top = 49
              Width = 73
              Height = 15
              Caption = 'Al. S. Simples'
              FocusControl = DBEdit23
            end
            object Label27: TLabel
              Left = 290
              Top = 49
              Width = 31
              Height = 15
              Caption = 'Carga'
              FocusControl = DBEdit24
            end
            object Label28: TLabel
              Left = 356
              Top = 49
              Width = 55
              Height = 15
              Caption = #218'ltimo Pg'
              FocusControl = DBEdit25
            end
            object Label29: TLabel
              Left = 492
              Top = 49
              Width = 91
              Height = 15
              Caption = 'ICMS. S. Simples'
              FocusControl = DBEdit26
            end
            object Label30: TLabel
              Left = 584
              Top = 49
              Width = 85
              Height = 15
              Caption = 'Certificado Nfe'
              FocusControl = DBEdit27
            end
            object Label31: TLabel
              Left = 844
              Top = 49
              Width = 50
              Height = 15
              Caption = 'Decimais'
              FocusControl = DBEdit28
            end
            object DBEdit14: TDBEdit
              Left = -2
              Top = 20
              Width = 135
              Height = 23
              DataField = 'CNPJ'
              DataSource = dsG
              TabOrder = 0
            end
            object DBEdit15: TDBEdit
              Left = 138
              Top = 20
              Width = 135
              Height = 23
              DataField = 'IE'
              DataSource = dsG
              TabOrder = 1
            end
            object DBEdit16: TDBEdit
              Left = 275
              Top = 20
              Width = 142
              Height = 23
              DataField = 'IM'
              DataSource = dsG
              TabOrder = 2
            end
            object DBEdit17: TDBEdit
              Left = 420
              Top = 20
              Width = 129
              Height = 23
              DataField = 'PIS'
              DataSource = dsG
              TabOrder = 3
            end
            object DBEdit18: TDBEdit
              Left = 551
              Top = 20
              Width = 142
              Height = 23
              DataField = 'IRRF'
              DataSource = dsG
              TabOrder = 4
            end
            object DBEdit19: TDBEdit
              Left = 695
              Top = 20
              Width = 73
              Height = 23
              DataField = 'REGIME_TRIBUTARIO'
              DataSource = dsG
              TabOrder = 5
            end
            object DBEdit20: TDBEdit
              Left = 772
              Top = 20
              Width = 92
              Height = 23
              DataField = 'COFINS'
              DataSource = dsG
              TabOrder = 6
            end
            object DBEdit21: TDBEdit
              Left = 866
              Top = 20
              Width = 112
              Height = 23
              DataField = 'CPMF'
              DataSource = dsG
              TabOrder = 7
            end
            object DBEdit22: TDBEdit
              Left = 1
              Top = 65
              Width = 135
              Height = 23
              DataField = 'LUCROLIQUIDO'
              DataSource = dsG
              TabOrder = 8
            end
            object DBMemo1: TDBMemo
              Left = 1
              Top = 111
              Width = 994
              Height = 89
              DataSource = dsG
              ScrollBars = ssHorizontal
              TabOrder = 9
            end
            object DBEdit23: TDBEdit
              Left = 139
              Top = 65
              Width = 38
              Height = 23
              DataField = 'ALIQ_ICM_SUPER_SIMPLES'
              DataSource = dsG
              TabOrder = 10
            end
            object DBEdit24: TDBEdit
              Left = 290
              Top = 65
              Width = 63
              Height = 23
              DataField = 'CARGA'
              DataSource = dsG
              TabOrder = 11
            end
            object DBEdit25: TDBEdit
              Left = 356
              Top = 65
              Width = 134
              Height = 23
              DataField = 'ULTIMO_PG'
              DataSource = dsG
              TabOrder = 12
            end
            object DBEdit26: TDBEdit
              Left = 492
              Top = 65
              Width = 89
              Height = 23
              DataField = 'ICMS_SSIMPLES'
              DataSource = dsG
              TabOrder = 13
            end
            object DBEdit27: TDBEdit
              Left = 585
              Top = 65
              Width = 253
              Height = 23
              DataField = 'NFE_CERTIFICADO'
              DataSource = dsG
              TabOrder = 14
            end
            object DBEdit28: TDBEdit
              Left = 844
              Top = 65
              Width = 134
              Height = 23
              DataField = 'DECIMAIS'
              DataSource = dsG
              TabOrder = 15
            end
            object Panel3: TPanel
              Left = -1
              Top = 193
              Width = 1006
              Height = 230
              BevelOuter = bvNone
              TabOrder = 16
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Contador'
            ImageIndex = 1
            object Label32: TLabel
              Left = 3
              Top = 0
              Width = 34
              Height = 15
              Caption = 'Nome'
              FocusControl = DBEdit29
            end
            object Label33: TLabel
              Left = 325
              Top = 1
              Width = 20
              Height = 15
              Caption = 'CPF'
              FocusControl = DBEdit30
            end
            object Label34: TLabel
              Left = 515
              Top = 1
              Width = 22
              Height = 15
              Caption = 'CRC'
              FocusControl = DBEdit31
            end
            object Label35: TLabel
              Left = 718
              Top = 1
              Width = 28
              Height = 15
              Caption = 'CNPJ'
              FocusControl = DBEdit32
            end
            object Label36: TLabel
              Left = 3
              Top = 42
              Width = 52
              Height = 15
              Caption = 'Endere'#231'o'
              FocusControl = DBEdit33
            end
            object Label37: TLabel
              Left = 322
              Top = 42
              Width = 14
              Height = 15
              Caption = 'N'#186
              FocusControl = DBEdit34
            end
            object Label38: TLabel
              Left = 388
              Top = 42
              Width = 79
              Height = 15
              Caption = 'Complemento'
              FocusControl = DBEdit35
            end
            object Label39: TLabel
              Left = 672
              Top = 42
              Width = 99
              Height = 15
              Caption = 'CONTADOR_BAIR'
              FocusControl = DBEdit36
            end
            object Label40: TLabel
              Left = 3
              Top = 84
              Width = 100
              Height = 15
              Caption = 'CONTADOR_NCEP'
              FocusControl = DBEdit37
            end
            object Label41: TLabel
              Left = 125
              Top = 84
              Width = 99
              Height = 15
              Caption = 'CONTADOR_CIDA'
              FocusControl = DBEdit38
            end
            object Label42: TLabel
              Left = 388
              Top = 84
              Width = 15
              Height = 15
              Caption = 'UF'
              FocusControl = DBEdit39
            end
            object Label43: TLabel
              Left = 422
              Top = 84
              Width = 102
              Height = 15
              Caption = 'CONTADOR_FON1'
              FocusControl = DBEdit40
            end
            object Label44: TLabel
              Left = 530
              Top = 84
              Width = 102
              Height = 15
              Caption = 'CONTADOR_FON2'
              FocusControl = DBEdit41
            end
            object Label45: TLabel
              Left = 634
              Top = 84
              Width = 100
              Height = 15
              Caption = 'CONTADOR_MAIL'
              FocusControl = DBEdit42
            end
            object Label47: TLabel
              Left = 3
              Top = 126
              Width = 65
              Height = 15
              Caption = 'Observa'#231#227'o'
            end
            object DBEdit29: TDBEdit
              Left = 3
              Top = 17
              Width = 318
              Height = 23
              DataField = 'CONTADOR_NOME'
              TabOrder = 0
            end
            object DBEdit30: TDBEdit
              Left = 325
              Top = 17
              Width = 186
              Height = 23
              DataField = 'CONTADOR_CPF'
              TabOrder = 1
            end
            object DBEdit31: TDBEdit
              Left = 515
              Top = 17
              Width = 199
              Height = 23
              DataField = 'CONTADOR_CRC'
              TabOrder = 2
            end
            object DBEdit32: TDBEdit
              Left = 718
              Top = 17
              Width = 238
              Height = 23
              DataField = 'CONTADOR_CNPJ'
              TabOrder = 3
            end
            object DBEdit33: TDBEdit
              Left = 3
              Top = 58
              Width = 318
              Height = 23
              DataField = 'CONTADOR_ENDE'
              TabOrder = 4
            end
            object DBEdit34: TDBEdit
              Left = 322
              Top = 58
              Width = 63
              Height = 23
              DataField = 'CONTADOR_NMRO'
              TabOrder = 5
            end
            object DBEdit35: TDBEdit
              Left = 388
              Top = 58
              Width = 278
              Height = 23
              DataField = 'CONTADOR_COMP'
              TabOrder = 6
            end
            object DBEdit36: TDBEdit
              Left = 672
              Top = 58
              Width = 284
              Height = 23
              DataField = 'CONTADOR_BAIR'
              TabOrder = 7
            end
            object DBEdit37: TDBEdit
              Left = 3
              Top = 102
              Width = 121
              Height = 23
              DataField = 'CONTADOR_NCEP'
              TabOrder = 8
            end
            object DBEdit38: TDBEdit
              Left = 127
              Top = 102
              Width = 260
              Height = 23
              DataField = 'CONTADOR_CIDA'
              TabOrder = 9
            end
            object DBEdit39: TDBEdit
              Left = 388
              Top = 100
              Width = 30
              Height = 23
              DataField = 'CONTADOR_ESTA'
              TabOrder = 10
            end
            object DBEdit40: TDBEdit
              Left = 422
              Top = 100
              Width = 102
              Height = 23
              DataField = 'CONTADOR_FON1'
              TabOrder = 11
            end
            object DBEdit41: TDBEdit
              Left = 530
              Top = 100
              Width = 102
              Height = 23
              DataField = 'CONTADOR_FON2'
              TabOrder = 12
            end
            object DBEdit42: TDBEdit
              Left = 634
              Top = 100
              Width = 322
              Height = 23
              DataField = 'CONTADOR_MAIL'
              TabOrder = 13
            end
            object DBMemo2: TDBMemo
              Left = 0
              Top = 142
              Width = 994
              Height = 59
              ScrollBars = ssHorizontal
              TabOrder = 14
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Impostos'
            ImageIndex = 2
            object Label46: TLabel
              Left = 0
              Top = 2
              Width = 76
              Height = 15
              Caption = 'Das S.Simples'
              FocusControl = DBEdit43
            end
            object Label48: TLabel
              Left = 252
              Top = 2
              Width = 77
              Height = 15
              Caption = 'Ramo Ativ. ID'
              FocusControl = DBEdit44
            end
            object Label49: TLabel
              Left = 335
              Top = 2
              Width = 29
              Height = 15
              Caption = 'M.E.E'
              FocusControl = DBEdit45
            end
            object Label50: TLabel
              Left = 370
              Top = 2
              Width = 18
              Height = 15
              Caption = 'S.B'
              FocusControl = DBEdit46
            end
            object Label51: TLabel
              Left = 401
              Top = 2
              Width = 47
              Height = 15
              Caption = 'Cont. IPI'
              FocusControl = DBEdit47
            end
            object Label52: TLabel
              Left = 455
              Top = 2
              Width = 56
              Height = 15
              Caption = 'S. Simples'
              FocusControl = DBEdit48
            end
            object Label53: TLabel
              Left = -1
              Top = 48
              Width = 72
              Height = 15
              Caption = 'OPT. Simples'
              FocusControl = DBEdit49
            end
            object Label54: TLabel
              Left = 82
              Top = 48
              Width = 15
              Height = 15
              Caption = 'IPI'
              FocusControl = DBEdit50
            end
            object Label55: TLabel
              Left = 344
              Top = 48
              Width = 118
              Height = 15
              Caption = 'PERMITE_CRED_ICMS'
              FocusControl = DBEdit51
            end
            object Label56: TLabel
              Left = 468
              Top = 48
              Width = 151
              Height = 15
              Caption = 'COD_REGIME_TRIBUTARIO'
              FocusControl = DBEdit52
            end
            object Label57: TLabel
              Left = 625
              Top = 48
              Width = 105
              Height = 15
              Caption = 'INICIO_ATIVIDADE'
              FocusControl = DBEdit53
            end
            object Label58: TLabel
              Left = 0
              Top = 96
              Width = 123
              Height = 15
              Caption = 'NUMERONOTAFISCAL'
              FocusControl = DBEdit54
            end
            object Label59: TLabel
              Left = 139
              Top = 96
              Width = 116
              Height = 15
              Caption = 'CODIGO_MUNICIPIO'
              FocusControl = DBEdit55
            end
            object DBEdit43: TDBEdit
              Left = 0
              Top = 18
              Width = 251
              Height = 23
              DataField = 'DAS_SSIMPLES'
              DataSource = dsG
              TabOrder = 0
            end
            object DBEdit44: TDBEdit
              Left = 252
              Top = 18
              Width = 77
              Height = 23
              DataField = 'RAMO_ATIVIDADE_ID'
              DataSource = dsG
              TabOrder = 1
            end
            object DBEdit45: TDBEdit
              Left = 335
              Top = 18
              Width = 29
              Height = 23
              DataField = 'MICRO_EMPRESA_ESTADUAL'
              DataSource = dsG
              TabOrder = 2
            end
            object DBEdit46: TDBEdit
              Left = 370
              Top = 18
              Width = 25
              Height = 23
              DataField = 'SUBSTITUTO_TRIBUTARIO'
              DataSource = dsG
              TabOrder = 3
            end
            object DBEdit47: TDBEdit
              Left = 401
              Top = 18
              Width = 48
              Height = 23
              DataField = 'CONTRIBUINTE_IPI'
              DataSource = dsG
              TabOrder = 4
            end
            object DBEdit48: TDBEdit
              Left = 455
              Top = 18
              Width = 56
              Height = 23
              DataField = 'SUPER_SIMPLES'
              DataSource = dsG
              TabOrder = 5
            end
            object DBEdit49: TDBEdit
              Left = 0
              Top = 67
              Width = 74
              Height = 23
              DataField = 'OPTANTE_SIMPLES'
              DataSource = dsG
              TabOrder = 6
            end
            object DBEdit50: TDBEdit
              Left = 82
              Top = 64
              Width = 251
              Height = 23
              DataField = 'IPI'
              DataSource = dsG
              TabOrder = 7
            end
            object DBEdit51: TDBEdit
              Left = 344
              Top = 64
              Width = 118
              Height = 23
              DataField = 'PERMITE_CRED_ICMS'
              DataSource = dsG
              TabOrder = 8
            end
            object DBEdit52: TDBEdit
              Left = 468
              Top = 64
              Width = 134
              Height = 23
              DataField = 'COD_REGIME_TRIBUTARIO'
              DataSource = dsG
              TabOrder = 9
            end
            object DBEdit53: TDBEdit
              Left = 625
              Top = 64
              Width = 134
              Height = 23
              DataField = 'INICIO_ATIVIDADE'
              DataSource = dsG
              TabOrder = 10
            end
            object DBEdit54: TDBEdit
              Left = 0
              Top = 112
              Width = 134
              Height = 23
              DataField = 'NUMERONOTAFISCAL'
              DataSource = dsG
              TabOrder = 11
            end
            object DBEdit55: TDBEdit
              Left = 139
              Top = 112
              Width = 134
              Height = 23
              DataField = 'CODIGO_MUNICIPIO'
              DataSource = dsG
              TabOrder = 12
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'TabSheet6'
            ImageIndex = 3
            TabVisible = False
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Par'#226'metros do Sistema'
      ImageIndex = 2
    end
  end
  object ImageList1: TImageList
    Left = 296
    Top = 8
    Bitmap = {
      494C010106000C00400010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003D3D3D0041414100A5A5
      A500ADADAD00A8A8A800A6A6A600A2A2A200A0A0A0009D9D9D009A9A9A009A9A
      9A00919191003D3D3D0035353500000000000000000000000000FDFDFD00CECE
      CE003A393A003A3A3B003A3B3B003B3B3B003B3B3A003A3A3B003A3A3B003939
      3A00CECECE00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000949494004B4B4B00128B
      F300128BF300128BF300128BF300128BF300128BF300128BF300128BF300128B
      F300128BF3007F7F7F00505050000000000000000000717171006E6F6F003333
      330028282800B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B3002828
      2800333333006E6F6F0071717100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E3E3E0041414100F0F0
      F00000000000FDFDFD00FAFAFA00F3F3F300F0F0F000EAEAEA00E7E7E700E7E7
      E700D5D5D5003030300021212100000000000000000087888800838484002323
      23000B0C0B006F6F6F006F706F006F6F6F006F6F6F006F6F6F006F6F6F000C0B
      0B00232323008384840087888800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004242420044444400EFEF
      EF000000000000000000FEFEFE00F8F8F800F5F5F500EFEFEF00ECECEC00ECEC
      EC00D9D9D900303030002121210000000000000000008D8D8E0089898A002727
      2700020202005353530053535300535353005353530053535300535353000202
      02002727270089898A008D8D8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004C4C4C004B4B4B00EFEF
      EF0000000000000000000000000000000000FEFEFE00F8F8F800F5F5F500F5F5
      F500E2E2E2002F2F2F00212121000000000000000000A4A4A500A3A3A4008484
      85007A7A7B007979790079797900797979007979790079797900797979007A7A
      7B0084848500A3A3A400A4A4A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000515151004E4E4E00EFEF
      EF000000000000000000000000000000000000000000FDFDFD00FAFAFA00FBFB
      FB00E6E6E6002F2F2F00212121000000000000000000B8B8B800B8B8B800B4B4
      B400B3B3B300B3B3B300B3B3B300B3B3B300B3B3B3000F8F1E00B3B3B3000F8F
      1E00B4B4B400B8B8B800B8B8B800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B5B5B0055555500F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F0002F2F2F00212121000000000000000000DADADA00DADADA003F3F
      3F003F3F3F003F3F3F003E3F3F003F3F3E003F3F3F003F3F3F003F3F3F003F3F
      3F003E3F3F00C4C4C400C4C4C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006060600059595900E9E9
      E900FCFCFC00F4F4F400F4F4F400F5F5F500F5F5F500F5F5F500F5F5F5000000
      0000EAEAEA0031313100222222000000000000000000DEDEDE00DEDEDE004949
      49006262620090909000B0B0B000E3E4E300EBEBEB00C7C8C700A8A8A8007C7C
      7C00494949008B8C8B008B8B8B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B006A6A6A006262
      6200606060004E4E4E004A4A4A0045454500424242003D3D3D003A3A3A003737
      370037373700343434002D2D2D00000000000000000070707000707070005E5E
      5E005E5D5E005E5E5E005E5E5E005E5E5E005E5D5D005E5E5D005E5D5E005E5E
      5E005E5E5E007070700070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000707070006A6A6A005E5E
      5E005A5A5A0060606000616161005959590055555500535353004F4F4F004242
      42003B3B3B00383838003333330000000000000000000000000000000000DEDE
      DE007D7D7D008D8D8D00808080000000000000000000808080008D8D8D007D7D
      7D00DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000075757500414141003030
      3000202020000000000000000000ECECEC00EAEAEA00B1B1B100B3B3B300C7C7
      C7008D8D8D00404040003D3D3D0000000000000000000000000000000000EBEB
      EB009E9E9E00B9B9B900A4A4A4000000000000000000A4A4A400B9B9B9009E9E
      9E00EBEBEB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007A7A7A00444444003434
      340025252500F7F7F700FAFAFA00E3E3E300E6E6E6005D5D5D0070707000C3C3
      C30089898900444444004141410000000000000000000000000000000000F1F1
      F100ACACAC00CCCCCC00B3B3B3000000000000000000B3B3B300CCCCCC00ACAC
      AC00F1F1F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082828200484848003434
      340027272700F5F5F500FAFAFA00E2E2E200E6E6E6005151510067676700C2C2
      C2008C8C8C004C4C4C004A4A4A00000000000000000000000000000000000000
      0000DEDEDE00D7D7D700B5B5B500F6F6F600F6F6F600B5B5B500D7D7D700DEDE
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000088888800454545002F2F
      2F00212121000000000000000000ECECEC00EAEAEA009B9B9B00A2A2A200C6C6
      C60093939300505050004E4E4E00000000000000000000000000000000000000
      0000EFEFEF00BBBBBB00BEBEBE00ABABAB00ABABAB00BEBEBE00BBBBBB00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECECEC00A3A3A3008080800080808000A3A3A300ECECEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000093664500936645009367
      4500936744009366450093674500936644009367440093674500936644009367
      4500936744009367440093674400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E1DC
      EB00D5CCE200F9F8FB0000000000000000000000000000000000000445000004
      4500000445000004450000044500000445000004450000044500000445000004
      4500000445000004450000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000095694500E8D8C300E8D8
      C300E8D8C300E8D8C300E8D8C300E8D8C300E9D8C300E9D8C300E9D8C300E9D8
      C300E9D8C300E9D7C30095684600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800AAA8B200866A
      B300977BBF008164B100836DB400000000000000000000000000001156004174
      B8004B7EC2005E91D6006396DB006396DB006598DD006295DA005D90D5004D80
      C4004477BB0000115600000000000000000000000000000000003B46E200616B
      F9003842E000000000000000000000000000000000000000000000000000616B
      F900616BF9000000000000000000000000000000000097694600E9D9C400E9D9
      C400E9D9C400E9D9C400E9D9C400E9D9C400E9D8C500E9D8C500E9D8C500E9D8
      C500E9D8C500E9D9C40097694600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDDDC00C3C3C3009290
      9400BAB1CA009277CC008067BE00000000000000000000000000001861003366
      A7002B5EA2002B5EA2002B5EA200497CCE006396DB002B5EA2002B5EA2002B5E
      A2002D60A400001861000000000000000000000000003A44E1005660F1007E87
      FE00626CF90000000000000000000000000000000000000000003842E0007E87
      FE00737CFE003A44E1000000000000000000000000009A6B4700EADCC800EADC
      C800EADCC800EADCC800EADCC800EADCC800EBDBC800EBDBC800EBDBC800EBDB
      C800EBDBC800EBDBC8009A6B4700000000000000000000000000000000000000
      0000000000000000000000000000F9FDFF0083C8F400449EE30086ACCE00ABAB
      AF0091919400A8A6B1007D6FD90000000000000000000000000000226D002857
      9B002B5EA2002B5EA2002B5EA2004274C4005B8ED4002B5EA2002B5EA2002B5E
      A2002E61A50000226D00000000000000000000000000464FE7005961F1006B74
      FE007882FE00616BF9003943E1000000000000000000616BF900828CFE006B74
      FE00626BF800464FE7003741DF0000000000000000009A6C4800EADCCA00EADC
      CA00EADCCA00EADCCA00EADCCA00EADCCA00EADDCA00EADDCA00EADDCA00EADD
      CA00EADDCA00EADCCA009B6C4800000000000000000000000000000000000000
      00000000000000000000000000008CCDF4002099EE002C9CFC003BA3FE00E4EA
      F400AEAEB1006F6F71005D5A8C00000000000000000000000000002470002451
      95002B5EA2002B5EA2002B5EA2003F70BE00578ACF002B5EA2002B5EA2002B5E
      A2002E61A500002470000000000000000000000000003741DF004851E800646C
      F9006A73FD007B85FE005D67F700000000003B46E2007B85FE00747DFE00646C
      F9005C64F3003741DF000000000000000000000000009F6E4900ECDFCF00ECDF
      CF00ECDFCF00ECDFCF00ECDFCF00ECDFCF00ECDFCF00ECDFCF00ECDFCF00ECDF
      CF00ECDFCF00ECE0CF009F6D4900000000000000000000000000000000000000
      000000000000000000008CCDF500289AF500319CFA0042A4FF004FAEFE006CC5
      F8006BA9C7002B2B2B005C5C5C0000000000000000000000000000287500183F
      8400245196002B5EA2002B5EA2003766B4004E81C700245196002B5EA2002B5E
      A2002D60A4000028750000000000000000000000000000000000000000004750
      E7005860F100616AF700646DF9006770FB006770FB00616AF7005D65F4004750
      E7003741DF0000000000000000000000000000000000A06F4A00ECE1D100ECE1
      D100ECE1D100ECE1D100ECE1D100ECE1D100EDE1D100EDE1D100EDE1D100EDE1
      D100EDE1D100ECE1D100A06F4900000000000000000000000000000000000000
      0000000000008ECEF4001E99EE00309CFA00389FFE004DADFF0059B8FA0071CC
      F6008DD5F40079797800FEFEFE00000000000000000000000000002A78001334
      7900193F840028599D002B5EA2003463AF004A7DC200193F8400224F93002B5E
      A2002E61A500002A780000000000000000000000000000000000000000003640
      DE00424AE300575FF0005A62F2005C64F3005C64F300575FF0004E55E9003640
      DE000000000000000000000000000000000000000000A3724B00EEE4D600EEE4
      D600EEE4D600EEE4D600EEE4D600EEE4D600EEE4D600EEE4D600EEE4D600EEE4
      D600EEE4D600EEE4D600A4724B00000000000000000000000000000000000000
      000097D1F600269BF4002F9DFA0041A4FF004DACFF0063C0F7006FC9F5008FDB
      FE00B7E4FF000000000000000000000000000000000000000000002E7D00477A
      BF00477ABF00477ABF00477ABF00477ABF00477ABF00477ABF00477ABF00477A
      BF0014266900002E7D0000000000000000000000000000000000000000000000
      000000000000575FF0005A62F2005C64F3005C64F300575FF0003640DE000000
      00000000000000000000000000000000000000000000A5744B00EFE6D800EFE6
      D800EFE6D800EFE6D800EFE6D800EFE6D800EEE6D800EEE6D800EEE6D800EEE6
      D800EEE6D800EEE6D800A6724B00000000000000000000000000000000009ED5
      F6001F9BEE002E9DF800369FFD0049ABFF0055B4FC006BC8F6007CD3F700B1E2
      FF00000000000000000000000000000000000000000000000000002F7F003260
      AC003260AC00325FAB00325FAC003463AE00477ABF003260AC003160AB003160
      AB003166B400002F7F0000000000000000000000000000000000000000000000
      00003640DE00575FF0005A62F2005C64F3005C64F300575FF0004E55E9000000
      00000000000000000000000000000000000000000000A9754D00EFE9DD00EFE9
      DD00EFE9DD00EFE9DD00EFE9DD00EFE9DD00F0E9DE00D1C1B000CDBBAA00D0C0
      AF00DACDBE00E6DBCD00A8764D00000000000000000000000000C2E6FA0030A3
      F3002498F6003CA1FF0046A8FF005EBBF90069C5F6008EDAFC00A8E0FF000000
      000000000000000000000000000000000000000000000000000000338400295C
      A000275A9E00275A9E00275A9E003A6AB8005184CA00275A9E00275A9E00275A
      9E002B5EA2000033840000000000000000000000000000000000000000004750
      E7005860F100616AF700646DF9006770FB006770FB00616AF7005D65F4004750
      E7003741DF0000000000000000000000000000000000AA774E00F0EBE000F0EB
      E000F0EBE000F0EBE000F0EBE000F0EBE000F1EBE000BCA69100BCA69100BCA6
      9100BCA69100BBA59100915F37000000000000000000D5F1FF00B0E5FF00A1DD
      FD0079C8FD0044A5FF0051B1FD0068C4F60079CFF500A6E0FF00F9FDFF000000
      0000000000000000000000000000000000000000000000000000003586002554
      980026599D0026599D0026599D004172C200598CD20026599D0026599D002659
      9D002B5EA20000358600000000000000000000000000000000003741DF005A62
      F200616AF7006D76FE00717BFE003B46E2006B74FE006D76FE00666FFA005A62
      F2004851E80000000000000000000000000000000000AF794F00F1EDE400F1ED
      E400F1EDE400F1EDE400F1EDE400F1EDE400F1EDE400C98D5F00E9D7C100EBDB
      C800EDE1D200F1ECE200FBF9F6000000000000000000B4E8FF00BCEDFF00D6F8
      FF00D8F8FF0098DAFE006EC8F7008DDBFC00A1DEFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000388B001C45
      8A002355990024579B0024579B005286DC006C9FE5002355990024579B002457
      9B00295CA00000388B00000000000000000000000000464FE7005961F1006B74
      FE007882FE00616BF9003943E1000000000000000000616BF900828CFE006B74
      FE00626BF800464FE7003741DF000000000000000000AF7A5000F2EFE500F2EF
      E500F2EFE500F2EFE500F2EFE500F2EFE500F2EEE600C4895B00E9D7C100EDE1
      D100EFE7DB00FAF8F400000000000000000000000000A6DBF200C0F5FF00C5F2
      FF00CAF4FF00BAEDFF0090DAFB009DDCFF00EDF9FF0000000000000000000000
      000000000000000000000000000000000000000000000000000000398C00163C
      7F001D4A8D0023569A0023569A005B90E60075A8ED001D4A8D0023569A002356
      9A00295CA00000398C000000000000000000000000004C54EA006169F600757F
      FE00848DFE003842E0000000000000000000000000003842E000636DFA00757F
      FE006972FC004C54EA003842E0000000000000000000B27C5100F3F0E800F3F0
      E800F3F0E800F3F0E800F3F0E800F3F0E800F3F0E900B87E5100EDE1D100F1EC
      E200F8F6F00000000000000000000000000000000000948B8700787A7A00B6F1
      FF00B3EEFF00B5EFFF00A7E2FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003C90000A26
      6A000C286900153D7F001942850067A0F80082B5FA000C2A6B00123576001740
      8300214E9200003C9000000000000000000000000000000000003B46E200616B
      F9003842E000000000000000000000000000000000000000000000000000616B
      F900616BF90000000000000000000000000000000000B37D5200F3F1EA00F3F1
      EA00F3F1EA00F3F1EA00F3F1EA00F3F1EA00F3F1EA00B1774B00EFE7DB00F7F4
      EE000000000000000000000000000000000000000000898887004B45440095D1
      E400A4EBFF0097E1FF00DBF3FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003D91005F92
      D700699CE1007DB0F50084B7FC0084B7FC0082B5FA0082B5FA007CAFF4006A9D
      E2006194D900003D910000000000000000000000000000000000000000003A44
      E200000000000000000000000000000000000000000000000000000000003A44
      E2003B46E20000000000000000000000000000000000B57D5200B57D5200B57D
      5200B57D5200B57E5200B57D5200B57D5200B57D5200A2693F00F8F6F0000000
      00000000000000000000000000000000000000000000FBFBFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003F9400003F
      9400003F9400003F9400003F9400003F9400003F9400003F9400003F9400003F
      9400003F9400003F940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000008001C00300000000
      800180010000000088018001000000008C018001000000008F01800100000000
      8F818001000000008FF180010000000080118001000000008001800100000000
      8001E187000000008601E187000000008001E187000000008001F00F00000000
      8601F00F00000000FFFFF81F000000008001FFE3C003FFFF8001FF81C003C7E7
      8001FF81C00387C38001FE01C00381818001FE01C00381038001FC01C003E007
      8001F801C003E00F8001F007C003F81F8001E00FC003F01F8001C01FC003E007
      8001801FC003C0078001807FC00381818003807FC0038381800781FFC003C7E7
      800F81FFC003EFE7801FBFFFC003FFFF00000000000000000000000000000000
      000000000000}
  end
  object dsG: TDataSource
    DataSet = dm.ibEmpresa
    Left = 496
    Top = 8
  end
  object dsC: TDataSource
    Left = 417
    Top = 318
  end
end
