inherited fmCadFornecedor: TfmCadFornecedor
  Caption = ''
  ClientHeight = 508
  ClientWidth = 1039
  ExplicitWidth = 1055
  ExplicitHeight = 546
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 1039
    ExplicitWidth = 1039
    inherited btEditar: TToolButton
      OnClick = btEditarClick
    end
    inherited btExcluir: TToolButton
      OnClick = btExcluirClick
    end
  end
  inherited pnPesquisa: TPanel
    Width = 1039
    ExplicitWidth = 1039
    inherited btPesquisar: TSpeedButton
      OnClick = btPesquisarClick
    end
  end
  inherited PageControl1: TPageControl
    Width = 1039
    Height = 421
    ExplicitWidth = 1039
    ExplicitHeight = 421
    inherited tbDados: TTabSheet
      ExplicitWidth = 1031
      ExplicitHeight = 391
      inherited pnLegenda: TPanel
        Top = 362
        Width = 1031
        ExplicitTop = 362
        ExplicitWidth = 1031
      end
      inherited DBGrid1: TDBGrid
        Width = 1031
        Height = 362
        OnDrawColumnCell = DBGrid1DrawColumnCell
      end
    end
    inherited tbCadastro: TTabSheet
      ExplicitWidth = 1031
      ExplicitHeight = 391
      object Label3: TLabel
        Left = 5
        Top = 6
        Width = 38
        Height = 15
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label4: TLabel
        Left = 91
        Top = 6
        Width = 48
        Height = 15
        Caption = 'Cadastro'
        FocusControl = DBEdit2
      end
      object Label5: TLabel
        Left = 5
        Top = 50
        Width = 34
        Height = 15
        Caption = 'Nome'
        FocusControl = DBEdit3
      end
      object Label6: TLabel
        Left = 380
        Top = 50
        Width = 81
        Height = 15
        Caption = 'Nome Fantasia'
        FocusControl = DBEdit4
      end
      object Label7: TLabel
        Left = 741
        Top = 50
        Width = 59
        Height = 15
        Caption = 'CPF / CNPJ'
        FocusControl = DBEdit5
      end
      object Label8: TLabel
        Left = 4
        Top = 91
        Width = 38
        Height = 15
        Caption = 'IE / RG'
        FocusControl = DBEdit6
      end
      object Label9: TLabel
        Left = 228
        Top = 92
        Width = 64
        Height = 15
        Caption = 'Logradouro'
        FocusControl = DBEdit7
      end
      object SpeedButton2: TSpeedButton
        Left = 899
        Top = 65
        Width = 31
        Height = 25
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCD2E2B9BDCFD8D1D7FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D0E1285A
          9F2B5899626F8DABA2AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          C8D1E3285EA55BD3F977DBF426589F707B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFC8D2E52963AC5BD5FA7EE3FA45AFF11879DE255099FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFC9D4E72967B45CD5FA7FE3FA45AFF1177FE41F5AADC9
          D4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D5E9296CBA5CD5FC7FE3FA44AFF1177F
          E41F5EB6C9D5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D6EA2971C15CD5FC7EE3FA
          44AFF1177FE41F63BDC9D6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF7F6F7E7E5E6E6E5E6F4F3F3FFFFFFFFFFFFFFFFFFFFFFFF447DC551
          C3F47EE3FA44AFEF177FE41F67C3C9D8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFCFCB6B2B66A636C483F48564950534952453B455C545CA8A3A8F7F7
          F7EFEDF1B4C2D52E79C83DA2E91780E41F6CC8C9D9EDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEFEEEF6C646E66574AAD9D6FFBDCACFFE6C4FFEECDFFF5CC
          C0C8A6606263483C4871647F9CA1B691A9BC2372CB1F70D2C9DBF1FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF5D56618E7753F2C18FFFCFA9FFD6B3FF
          E6C9FFEDD0FFF2D3FFF8D8FFFCDF97ACA6453B45726374C8C1CBE0EEFAD4E3F5
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A737E8D734FEAB486F5BC
          91F6BD91FFD8B6FFE8CDFFEED2FFF3D7FFF9E0FFFDE9FFFEF095AEAD463C49CD
          C9CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C6CB6F5C51
          DAA574EDB489E2A97EF8BF93FFDAB9FFE7CDFFEED5FFF4DAFFF9E3FFFDEFFFFE
          F7FFFEEE6B7175A5A1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF8F8792A07F52E1A87DDBA277DDA479F6BD92FFD7B5FFE7CEFFEDD4FFF2DA
          FFF7E1FFFAE7FFFDEDFFFCE7CCD6C05D555FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF706471C4905DDDA479D39A6FF8BF94FFD0ACFFDABCFF
          EBD8FFEBD4FFEED7FFF4DDFFF7E1FFF8E1FFF9DEFFFAD75D525FF0F0F1FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C6A78C0895BDAA176EFB68BDAA1
          76E5AC81FDC498FFDCBDFFEFE0FFECD5FFEED6FFF2DAFFF4DAFFF3D8FFF2CF7D
          7179D6D5D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7181BE8759
          D89F74E4AB80FFCCA5FFE1CBFFDBBFFFCCA4FFDFC3FFECDBFFE9D1FFECD3FFED
          D3FFEDD1FFEFCE7F767BDAD8DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF827788BF8857D0976CF3BA8FFFE1CBFFEEE2FFF9F5FFDABDFFCBA3FFE6D1
          FFE4CBFFE5CBFFE7CDFFE7CCFFECC26A5E6BF1F1F2FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA8A0ACA68053CB9267EBB287FFD9BBFFEADAFFF1E7FF
          DEC5F1B88DFFDBBFFFCCA3FED3AEFFD8B6FFDDC0D3C594796F7CFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCE08B776FBF8656D9A075FCC3
          98FFDCC2FFE5D2FFCCA5FBC297FCC398ECB388F3BA8EFFC99EFCD1A08C8171BC
          B8BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA4AF
          9D7E5CC0885CDBA277EEB58AFBC297F6BD92EEB58AD1986DDDA479F1B88DF4BE
          91B09F77847A89FCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAFAFA9C929FA0825FBF8857CD9469D69D72DDA479DBA277E3AA7F
          EAB186DFAC7BAB976F857988E9E8EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAB2ABB598867DAD875AC38C5BBC
          8558C28B5DCF9967BA9668958475968F9BEDECEFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0
          E4B7AFBA9D91A09F919DA1939D968B9BA69FABD7D3D8FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButton2Click
      end
      object Label10: TLabel
        Left = 590
        Top = 91
        Width = 46
        Height = 15
        Caption = 'N'#250'mero'
        FocusControl = DBEdit8
      end
      object Label11: TLabel
        Left = 668
        Top = 92
        Width = 79
        Height = 15
        Caption = 'Complemento'
        FocusControl = DBEdit9
      end
      object Label12: TLabel
        Left = 5
        Top = 133
        Width = 34
        Height = 15
        Caption = 'Bairro'
        FocusControl = DBEdit10
      end
      object Label13: TLabel
        Left = 398
        Top = 133
        Width = 37
        Height = 15
        Caption = 'Cidade'
        FocusControl = DBEdit11
      end
      object Label19: TLabel
        Left = 786
        Top = 133
        Width = 15
        Height = 15
        Caption = 'UF'
      end
      object Label20: TLabel
        Left = 835
        Top = 133
        Width = 21
        Height = 15
        Caption = 'Cep'
        FocusControl = DBEdit13
      end
      object Label21: TLabel
        Left = 5
        Top = 175
        Width = 50
        Height = 15
        Caption = 'Telefone'
        FocusControl = DBEdit14
      end
      object Label22: TLabel
        Left = 154
        Top = 175
        Width = 60
        Height = 15
        Caption = 'Telefone 2'
        FocusControl = DBEdit15
      end
      object Label23: TLabel
        Left = 304
        Top = 175
        Width = 38
        Height = 15
        Caption = 'Celular'
        FocusControl = DBEdit16
      end
      object Label24: TLabel
        Left = 454
        Top = 175
        Width = 34
        Height = 15
        Caption = 'E-mail'
        FocusControl = DBEdit17
      end
      object Label14: TLabel
        Left = 128
        Top = 91
        Width = 50
        Height = 15
        Caption = 'IE / MUN'
        FocusControl = DBEdit18
      end
      object Label17: TLabel
        Left = 3
        Top = 216
        Width = 44
        Height = 15
        Caption = 'E-mail 2'
        FocusControl = DBEdit19
      end
      object Label18: TLabel
        Left = 798
        Top = 216
        Width = 53
        Height = 15
        Caption = 'Altera'#231#227'o'
        FocusControl = DBEdit20
      end
      object Label25: TLabel
        Left = 4
        Top = 262
        Width = 65
        Height = 15
        Caption = 'Observa'#231#227'o'
        FocusControl = DBEdit19
      end
      object DBEdit1: TDBEdit
        Left = 5
        Top = 22
        Width = 84
        Height = 23
        DataField = 'ID'
        DataSource = dsG
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 91
        Top = 22
        Width = 94
        Height = 23
        DataField = 'DATA_INCLUSAO'
        DataSource = dsG
        MaxLength = 10
        TabOrder = 1
      end
      object DBCheckBox1: TDBCheckBox
        Left = 197
        Top = 25
        Width = 97
        Height = 17
        Caption = 'Ativo'
        DataField = 'ATIVO'
        DataSource = dsG
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit3: TDBEdit
        Left = 5
        Top = 66
        Width = 372
        Height = 23
        DataField = 'NOME'
        DataSource = dsG
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 380
        Top = 66
        Width = 358
        Height = 23
        DataField = 'NOME_FANTASIA'
        DataSource = dsG
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 741
        Top = 66
        Width = 158
        Height = 23
        DataField = 'CPF_CNPJ'
        DataSource = dsG
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 5
        Top = 107
        Width = 121
        Height = 23
        DataField = 'INSCRICAO_ESTADUAL_RG'
        DataSource = dsG
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 228
        Top = 107
        Width = 359
        Height = 23
        DataField = 'LOGRADOURO'
        DataSource = dsG
        TabOrder = 8
      end
      object DBEdit8: TDBEdit
        Left = 590
        Top = 107
        Width = 75
        Height = 23
        DataField = 'NUMERO'
        DataSource = dsG
        TabOrder = 9
      end
      object DBEdit9: TDBEdit
        Left = 668
        Top = 107
        Width = 264
        Height = 23
        DataField = 'COMPLEMENTO'
        DataSource = dsG
        TabOrder = 10
      end
      object DBEdit10: TDBEdit
        Left = 5
        Top = 149
        Width = 391
        Height = 23
        DataField = 'BAIRRO'
        DataSource = dsG
        TabOrder = 11
      end
      object DBEdit11: TDBEdit
        Left = 398
        Top = 149
        Width = 383
        Height = 23
        DataField = 'COD_CIDADE'
        DataSource = dsG
        TabOrder = 12
      end
      object DBEdit13: TDBEdit
        Left = 835
        Top = 149
        Width = 95
        Height = 23
        DataField = 'CEP'
        DataSource = dsG
        MaxLength = 9
        TabOrder = 14
      end
      object DBEdit14: TDBEdit
        Left = 5
        Top = 191
        Width = 142
        Height = 23
        DataField = 'TELEFONE1'
        DataSource = dsG
        MaxLength = 13
        TabOrder = 15
      end
      object DBEdit15: TDBEdit
        Left = 154
        Top = 191
        Width = 142
        Height = 23
        DataField = 'TELEFONE2'
        DataSource = dsG
        MaxLength = 13
        TabOrder = 16
      end
      object DBEdit16: TDBEdit
        Left = 304
        Top = 191
        Width = 142
        Height = 23
        DataField = 'CELULAR'
        DataSource = dsG
        MaxLength = 13
        TabOrder = 17
      end
      object DBEdit17: TDBEdit
        Left = 454
        Top = 191
        Width = 478
        Height = 23
        DataField = 'EMAIL'
        DataSource = dsG
        TabOrder = 18
      end
      object DBEdit18: TDBEdit
        Left = 128
        Top = 107
        Width = 98
        Height = 23
        DataField = 'IE_MUNICIPAL'
        DataSource = dsG
        TabOrder = 7
      end
      object DBEdit19: TDBEdit
        Left = 3
        Top = 232
        Width = 792
        Height = 23
        DataField = 'DS_EMAIL'
        DataSource = dsG
        TabOrder = 19
      end
      object DBEdit20: TDBEdit
        Left = 798
        Top = 232
        Width = 132
        Height = 23
        DataField = 'DATA_ALTERACAO'
        DataSource = dsG
        MaxLength = 10
        TabOrder = 20
      end
      object DBUF: TDBComboBox
        Left = 786
        Top = 149
        Width = 46
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
        TabOrder = 13
      end
      object DBMemo1: TDBMemo
        Left = 3
        Top = 279
        Width = 929
        Height = 129
        DataField = 'OBSERVACAO'
        DataSource = dsG
        ScrollBars = ssHorizontal
        TabOrder = 21
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 800
    Top = 16
    Bitmap = {
      494C010106000C004C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited dsG: TDataSource
    DataSet = G
  end
  inherited G: TIBDataSet
    OnNewRecord = GNewRecord
    SelectSQL.Strings = (
      'Select * from FORNECEDOR'
      'where ex = 0')
    object GID: TIntegerField
      FieldName = 'ID'
      Origin = '"FORNECEDOR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object GNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FORNECEDOR"."NOME"'
      Size = 50
    end
    object GNOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"FORNECEDOR"."NOME_FANTASIA"'
      Size = 50
    end
    object GCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"FORNECEDOR"."CPF_CNPJ"'
      EditMask = '00.000.000/0000-00;1;_'
      Size = 14
    end
    object GINSCRICAO_ESTADUAL_RG: TIBStringField
      FieldName = 'INSCRICAO_ESTADUAL_RG'
      Origin = '"FORNECEDOR"."INSCRICAO_ESTADUAL_RG"'
      Size = 25
    end
    object GLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"FORNECEDOR"."LOGRADOURO"'
      Size = 50
    end
    object GNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"FORNECEDOR"."NUMERO"'
      Size = 10
    end
    object GCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"FORNECEDOR"."COMPLEMENTO"'
      Size = 30
    end
    object GBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"FORNECEDOR"."BAIRRO"'
      Size = 30
    end
    object GCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"FORNECEDOR"."COD_CIDADE"'
    end
    object GUF: TIBStringField
      FieldName = 'UF'
      Origin = '"FORNECEDOR"."UF"'
      Size = 2
    end
    object GCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"FORNECEDOR"."CEP"'
      Size = 8
    end
    object GTELEFONE1: TIBStringField
      FieldName = 'TELEFONE1'
      Origin = '"FORNECEDOR"."TELEFONE1"'
    end
    object GTELEFONE2: TIBStringField
      FieldName = 'TELEFONE2'
      Origin = '"FORNECEDOR"."TELEFONE2"'
    end
    object GCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"FORNECEDOR"."CELULAR"'
    end
    object GLIMITE_CREDITO: TIBBCDField
      FieldName = 'LIMITE_CREDITO'
      Origin = '"FORNECEDOR"."LIMITE_CREDITO"'
      Precision = 18
      Size = 2
    end
    object GEMAIL: TIntegerField
      FieldName = 'EMAIL'
      Origin = '"FORNECEDOR"."EMAIL"'
    end
    object GOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"FORNECEDOR"."OBSERVACAO"'
      Size = 100
    end
    object GCOD_USUARIO_INCLUSAO: TIBStringField
      FieldName = 'COD_USUARIO_INCLUSAO'
      Origin = '"FORNECEDOR"."COD_USUARIO_INCLUSAO"'
      Size = 50
    end
    object GCOD_USUARIO_ALTERACAO: TIBStringField
      FieldName = 'COD_USUARIO_ALTERACAO'
      Origin = '"FORNECEDOR"."COD_USUARIO_ALTERACAO"'
      Size = 50
    end
    object GDATA_INCLUSAO: TDateField
      FieldName = 'DATA_INCLUSAO'
      Origin = '"FORNECEDOR"."DATA_INCLUSAO"'
    end
    object GDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
      Origin = '"FORNECEDOR"."DATA_ALTERACAO"'
    end
    object GIE_MUNICIPAL: TIBStringField
      FieldName = 'IE_MUNICIPAL'
      Origin = '"FORNECEDOR"."IE_MUNICIPAL"'
      Size = 15
    end
    object GDS_EMAIL: TIBStringField
      FieldName = 'DS_EMAIL'
      Origin = '"FORNECEDOR"."DS_EMAIL"'
      Size = 100
    end
    object GEX: TIBStringField
      FieldName = 'EX'
      Origin = '"FORNECEDOR"."EX"'
      FixedChar = True
      Size = 1
    end
    object GATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FORNECEDOR"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  object ACBrConsultaCNPJ: TACBrConsultaCNPJ
    ProxyPort = '8080'
    PesquisarIBGE = False
    Left = 948
    Top = 121
  end
end