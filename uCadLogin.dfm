object fmCadLogin: TfmCadLogin
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  ClientHeight = 168
  ClientWidth = 207
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnBut: TPanel
    Left = 0
    Top = 132
    Width = 207
    Height = 36
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 145
    ExplicitWidth = 252
    object btEntrar: TSpeedButton
      Left = 7
      Top = 0
      Width = 96
      Height = 31
      Caption = 'F1 - Entrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btEntrarClick
    end
    object btCancelar: TSpeedButton
      Left = 101
      Top = 0
      Width = 96
      Height = 31
      Caption = 'F9 - Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnCorpo: TPanel
    Left = 0
    Top = 0
    Width = 207
    Height = 132
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitLeft = 56
    ExplicitTop = 56
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 205
      Height = 130
      Align = alClient
      ExplicitLeft = 128
      ExplicitTop = 56
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
    object Label1: TLabel
      Left = 18
      Top = 8
      Width = 47
      Height = 17
      Caption = 'Usu'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 56
      Width = 37
      Height = 17
      Caption = 'Senha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edUsuario: TEdit
      Left = 18
      Top = 26
      Width = 167
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = edUsuarioExit
    end
    object edSenha: TEdit
      Left = 18
      Top = 75
      Width = 167
      Height = 25
      HelpType = htKeyword
      HelpKeyword = '*'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
      OnChange = edSenhaChange
    end
  end
  object ActionList1: TActionList
    Left = 144
    Top = 24
  end
end
