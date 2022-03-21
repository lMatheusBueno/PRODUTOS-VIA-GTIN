object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Consultar NCM'
  ClientHeight = 611
  ClientWidth = 910
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 121
    Align = alTop
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -32
    ExplicitWidth = 786
    object Label1: TLabel
      Left = 11
      Top = 4
      Width = 82
      Height = 13
      Caption = 'C'#243'digo de Barras'
    end
    object Label2: TLabel
      Left = 11
      Top = 42
      Width = 49
      Height = 13
      Caption = 'Descri'#231#227'o '
    end
    object Label3: TLabel
      Left = 11
      Top = 78
      Width = 123
      Height = 13
      Caption = 'Classifica'#231#227'o Fiscal (NCM)'
    end
    object Label4: TLabel
      Left = 250
      Top = 78
      Width = 29
      Height = 13
      Caption = 'Token'
    end
    object Label5: TLabel
      Left = 250
      Top = 42
      Width = 63
      Height = 13
      Caption = 'Pre'#231'os M'#233'dio'
    end
    object sEdit1: TsEdit
      Left = 8
      Top = 19
      Width = 137
      Height = 21
      TabOrder = 0
      Text = '7891910000197'
    end
    object sBitBtn1: TsBitBtn
      Left = 152
      Top = 17
      Width = 92
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = sBitBtn1Click
    end
    object sEdit2: TsEdit
      Left = 8
      Top = 56
      Width = 235
      Height = 21
      TabOrder = 2
    end
    object sEdit3: TsEdit
      Left = 8
      Top = 92
      Width = 235
      Height = 21
      TabOrder = 3
    end
    object sEdit4: TsEdit
      Left = 249
      Top = 56
      Width = 216
      Height = 21
      TabOrder = 4
    end
    object sEdit5: TsEdit
      Left = 249
      Top = 92
      Width = 216
      Height = 21
      Enabled = False
      TabOrder = 5
      Text = 'Q2t1UJGJOSYlueRlqbUznA'
    end
    object sBitBtn2: TsBitBtn
      Left = 370
      Top = 17
      Width = 95
      Height = 25
      Caption = 'Aplicar'
      TabOrder = 6
      OnClick = sBitBtn2Click
    end
    object sBitBtn3: TsBitBtn
      Left = 259
      Top = 17
      Width = 94
      Height = 25
      Caption = 'sBitBtn3'
      TabOrder = 7
    end
  end
  object sMemo1: TsMemo
    Left = 0
    Top = 121
    Width = 910
    Height = 490
    Align = alClient
    Color = clActiveCaption
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitWidth = 705
    ExplicitHeight = 280
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Cosmos-API-Request'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 784
    Top = 184
  end
  object RESTClient1: TRESTClient
    Params = <>
    UserAgent = 'Cosmos-API-Request'
    Left = 784
    Top = 424
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 776
    Top = 312
  end
  object RESTResponse1: TRESTResponse
    Left = 768
    Top = 368
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Asynchronous = False
    ConnectionTimeout = 0
    ResponseTimeout = 0
    Left = 776
    Top = 240
  end
end
