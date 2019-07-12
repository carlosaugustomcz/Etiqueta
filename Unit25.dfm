object Form25: TForm25
  Left = 437
  Top = 250
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Etiquetas'
  ClientHeight = 218
  ClientWidth = 545
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 175
    Width = 545
    Height = 43
    Align = alBottom
    Bands = <>
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 8
      Width = 81
      Height = 22
      Caption = 'Procurar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      Visible = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 8
      Top = 8
      Width = 137
      Height = 22
      Caption = 'Imprimir em Deskjet'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 448
      Top = 8
      Width = 81
      Height = 22
      Caption = 'Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 240
      Top = 8
      Width = 137
      Height = 22
      Caption = 'Imprimir em Laser'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      Visible = False
      OnClick = SpeedButton4Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 5
    Width = 531
    Height = 165
    Caption = 'Etiquetas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 18
      Width = 40
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 16
      Top = 66
      Width = 50
      Height = 13
      Caption = 'Campo 1'
    end
    object Label3: TLabel
      Left = 16
      Top = 111
      Width = 50
      Height = 13
      Caption = 'Campo 2'
    end
    object Label4: TLabel
      Left = 256
      Top = 111
      Width = 110
      Height = 13
      Caption = 'Quant de Etiquetas'
      Visible = False
    end
    object codetiqueta: TMaskEdit
      Left = 18
      Top = 34
      Width = 68
      Height = 21
      EditMask = '00\.00\.000;1; '
      MaxLength = 9
      TabOrder = 0
      Text = '  .  .   '
    end
    object campo1: TEdit
      Left = 16
      Top = 82
      Width = 129
      Height = 21
      MaxLength = 13
      TabOrder = 1
    end
    object campo2: TEdit
      Left = 16
      Top = 126
      Width = 153
      Height = 21
      MaxLength = 22
      TabOrder = 2
    end
    object quantEtiqueta: TMaskEdit
      Left = 258
      Top = 126
      Width = 39
      Height = 21
      EditMask = '00;0; '
      MaxLength = 2
      TabOrder = 3
      Visible = False
    end
  end
  object QuickRep1: TQuickRep
    Left = 264
    Top = 229
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = cdsetiqueta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 6
    Page.Orientation = poPortrait
    Page.PaperSize = A4Small
    Page.Values = (
      110.000000000000000000
      2970.000000000000000000
      150.000000000000000000
      2100.000000000000000000
      90.000000000000000000
      70.000000000000000000
      40.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    ReportTitle = 'Etiquetas do Cadastro de Acervo'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 34
      Top = 57
      Width = 109
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        169.333333333333300000
        288.395833333333300000)
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 3
        Top = 14
        Width = 103
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          37.041666666666670000
          272.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsetiqueta
        DataField = 'campo2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRBarcode1: TQRBarcode
        Left = 4
        Top = 29
        Width = 63
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          10.583333333333330000
          76.729166666666670000
          166.687500000000000000)
        BarColor = clBlack
        BackgroundColor = clWhite
        BarcodeType = btInterleaved2of5
        Digits = '0000000'
        Magnification = 1
        Version = 'Registered 1.0'
        Author.Name = 'Francisco Reis Oliveira'
        Author.Phone = '(034)314-3592'
        Author.Email = 'linkd@linkd.com.br'
        BarCaption = False
        RescaleEAN = True
      end
      object QRDBText3: TQRDBText
        Left = 3
        Top = 2
        Width = 42
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          5.291666666666667000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = cdsetiqueta
        DataField = 'codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText1: TQRDBText
        Left = 49
        Top = 2
        Width = 57
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          129.645833333333300000
          5.291666666666667000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsetiqueta
        DataField = 'campo1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
  end
  object RvProject1: TRvProject
    Engine = RvSystem1
    ProjectFile = 'C:\siga\etiquetas.rav'
    Left = 496
    Top = 40
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    Left = 496
    Top = 72
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 496
    Top = 16
  end
  object cdsetiqueta: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 386
    Top = 29
    Data = {
      6B0000009619E0BD0100000018000000030000000000030000006B0006636F64
      69676F01004900000001000557494454480200020009000663616D706F310100
      4900000001000557494454480200020010000663616D706F3201004900000001
      000557494454480200020019000000}
    object cdsetiquetacodigo: TStringField
      FieldName = 'codigo'
      Size = 9
    end
    object cdsetiquetacampo1: TStringField
      FieldName = 'campo1'
      Size = 16
    end
    object cdsetiquetacampo2: TStringField
      FieldName = 'campo2'
      Size = 25
    end
  end
end
