object Form3: TForm3
  Left = 215
  Top = 202
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Pesquisar Etiquetas'
  ClientHeight = 356
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 2
    Top = 0
    Width = 623
    Height = 41
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 64
      Height = 13
      Caption = 'Procura por...'
    end
    object Label2: TLabel
      Left = 400
      Top = 16
      Width = 57
      Height = 13
      Caption = 'no Campo...'
    end
    object Edit1: TEdit
      Left = 80
      Top = 8
      Width = 313
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object ComboBox1: TComboBox
      Left = 464
      Top = 8
      Width = 137
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'Codigo'
      Items.Strings = (
        'Codigo'
        'Descricao'
        'Nenhum')
    end
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 48
    Width = 624
    Height = 257
    Color = clInfoBk
    DataSource = DataSource
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'codetiqueta'
        Title.Caption = 'Codigo'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'campo1'
        Title.Caption = 'Campo 1'
        Width = 290
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'campo2'
        Title.Caption = 'Campo 2'
        Width = 278
        Visible = True
      end>
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 312
    Width = 632
    Height = 44
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 280
      Top = 8
      Width = 81
      Height = 22
      Caption = 'Selecionar'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 536
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
  end
  object DataSource: TDataSource
    DataSet = Query
    Left = 154
    Top = 320
  end
  object Query: TQuery
    DatabaseName = 'etiquetas'
    Left = 122
    Top = 320
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 192
    Top = 320
  end
end
