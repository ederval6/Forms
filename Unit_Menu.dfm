object Form_Menu: TForm_Menu
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Form_Menu'
  ClientHeight = 607
  ClientWidth = 1041
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_Menu: TPanel
    Left = 0
    Top = 35
    Width = 1041
    Height = 572
    Align = alClient
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    OnMouseEnter = Pnl_MenuMouseEnter
    object Pnl_menu_Lateral: TPanel
      Left = 1
      Top = 1
      Width = 33
      Height = 542
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      OnMouseMove = Pnl_menu_LateralMouseMove
      object Edt_Grava_Lote: TSpeedButton
        AlignWithMargins = True
        Left = 0
        Top = 145
        Width = 33
        Height = 74
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = '  Lote'
        Flat = True
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          20000300000000040000760000007600000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000700000011000000110000001100000011000000110000
          0011000000110000001100000011000000110000001100000011000000110000
          001100000007000000E0000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000DE0000003B00000055000000550000005500000055000000550000
          0055000000550000005500000055000000550000005500000055000000550000
          00550000003A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000093000000BB000000BB000000BB000000BB000000BB0000
          00BB000000BB000000BB000000BB000000BB000000BB000000BB000000BB0000
          00BB0000009200000093000000BB000000BB000000BB000000BB000000BB0000
          00BB000000BB000000BB000000BB000000BB000000BB000000BB000000BB0000
          00BB000000930000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000003A00000055000000550000005500000055000000550000
          0055000000550000005500000055000000550000005500000055000000550000
          00550000003A000000E0000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000DF0000000700000011000000110000001100000011000000110000
          0011000000110000001100000011000000110000001100000011000000110000
          0011000000070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
        Margin = 10
        Spacing = 10
        ExplicitLeft = -1
      end
      object Btn_Cadastrousuario: TSpeedButton
        AlignWithMargins = True
        Left = 0
        Top = 95
        Width = 33
        Height = 50
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = '  Cadastro '
        Flat = True
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          20000300000000040000760000007600000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000700000011000000110000001100000011000000110000
          0011000000110000001100000011000000110000001100000011000000110000
          001100000007000000E0000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000DE0000003B00000055000000550000005500000055000000550000
          0055000000550000005500000055000000550000005500000055000000550000
          00550000003A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000093000000BB000000BB000000BB000000BB000000BB0000
          00BB000000BB000000BB000000BB000000BB000000BB000000BB000000BB0000
          00BB0000009200000093000000BB000000BB000000BB000000BB000000BB0000
          00BB000000BB000000BB000000BB000000BB000000BB000000BB000000BB0000
          00BB000000930000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000003A00000055000000550000005500000055000000550000
          0055000000550000005500000055000000550000005500000055000000550000
          00550000003A000000E0000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000DF0000000700000011000000110000001100000011000000110000
          0011000000110000001100000011000000110000001100000011000000110000
          0011000000070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
        Margin = 10
        Spacing = 10
        OnClick = Btn_CadastrousuarioClick
        ExplicitLeft = -1
      end
      object Btninspecao1: TSpeedButton
        AlignWithMargins = True
        Left = 0
        Top = 50
        Width = 33
        Height = 45
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = '  Inspe'#231#245'es'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial Black'
        Font.Style = []
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          20000300000000040000760000007600000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000700000011000000110000001100000011000000110000
          0011000000110000001100000011000000110000001100000011000000110000
          001100000007000000E0000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000DE0000003B00000055000000550000005500000055000000550000
          0055000000550000005500000055000000550000005500000055000000550000
          00550000003A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000093000000BB000000BB000000BB000000BB000000BB0000
          00BB000000BB000000BB000000BB000000BB000000BB000000BB000000BB0000
          00BB0000009200000093000000BB000000BB000000BB000000BB000000BB0000
          00BB000000BB000000BB000000BB000000BB000000BB000000BB000000BB0000
          00BB000000930000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000003A00000055000000550000005500000055000000550000
          0055000000550000005500000055000000550000005500000055000000550000
          00550000003A000000E0000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000DF0000000700000011000000110000001100000011000000110000
          0011000000110000001100000011000000110000001100000011000000110000
          0011000000070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
        Margin = 10
        ParentFont = False
        Spacing = 10
        OnClick = Btninspecao1Click
        OnMouseEnter = Btninspecao1MouseEnter
        ExplicitLeft = -1
      end
      object Btn_Menu: TSpeedButton
        Left = 0
        Top = 0
        Width = 33
        Height = 50
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = '  Menu'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Black'
        Font.Style = []
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF9B3B0A9B3B0A9B3B0A993B0DFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B3B0AFA
          EAC2E9B171953B11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF9B3B0AFAE9C0EAB474953B11FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B3B0AF9
          E7BFEBB677953B11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFC3B6B09B3B0AA54D1E9B3B0A983B0EC3B8B4FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA86441C58355FA
          DEB1F7D6A5B3724AAC6C4CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFB89787A54E20F6D4A8FBE2B7F6D19DDBAB799A461FBDA79BFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC5BEBBA0491DDDA876F9E3C2F9
          DBADF4CB96E9B97FB17047A3542CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFAE7559B86F40F6D6ACFBE9CDF7D5A4F2C68FEBB879CA905A984D28B68E
          7AFF00FFFF00FFFF00FFFF00FFFF00FFBDA79B9F4516EBBC84FAE9D1FBE8CBF6
          D09CEFC187E9B272D49758A7653C9B4419C5BEBBFF00FFFF00FFFF00FFC7C4C3
          A4532BCD8E5BF5D5AAFBF5E9FAE2BEF3CB95EDBC80E7AD6ADF9C55B8743D924D
          2BAE7254FF00FFFF00FFFF00FFB3856FAC5E30EFC187FAEEDEFCF9F5F7D6A9F1
          C58DEBB778E4A862DF994EC179399B582E93411BC0ADA4FF00FFFF00FF9D3E0F
          9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9A3B0B983B
          0E973B0FA65B36FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Margin = 10
        ParentFont = False
        Spacing = 10
        OnClick = Btn_MenuClick
        ExplicitTop = 2
      end
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 543
      Width = 1039
      Height = 28
      Color = clMenuHighlight
      Panels = <
        item
          Text = 'Sistema da qualidade'
          Width = 300
        end
        item
          Text = 'Data'
          Width = 250
        end
        item
          Text = 'Hora:'
          Width = 100
        end>
    end
    object Pnl_subMenu: TPanel
      Left = 112
      Top = 50
      Width = 153
      Height = 271
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnMouseLeave = Pnl_subMenuMouseLeave
      object Btn_Inp1: TSpeedButton
        Left = 1
        Top = 1
        Width = 151
        Height = 45
        Align = alTop
        Caption = '1-Inspe'#231#227'o'
        OnClick = Btn_Inp1Click
        OnMouseLeave = Btn_Inp1MouseLeave
        ExplicitLeft = 0
        ExplicitTop = -5
      end
      object Btn_inp2: TSpeedButton
        Left = 1
        Top = 46
        Width = 151
        Height = 45
        Align = alTop
        Caption = '2-Inspe'#231#227'o'
        ExplicitLeft = 0
        ExplicitTop = 52
      end
      object Btn_Inp3: TSpeedButton
        Left = 1
        Top = 91
        Width = 151
        Height = 45
        Align = alTop
        Caption = '3-Inspe'#231#227'o'
      end
      object Btn_Inp6: TSpeedButton
        Left = 1
        Top = 226
        Width = 151
        Height = 45
        Align = alTop
        Caption = '6-Inspe'#231#227'o'
        ExplicitTop = 187
      end
      object SpeedButton5: TSpeedButton
        Left = 1
        Top = 136
        Width = 151
        Height = 45
        Align = alTop
        Caption = '4-Inspe'#231#227'o'
      end
      object SpeedButton6: TSpeedButton
        Left = 1
        Top = 181
        Width = 151
        Height = 45
        Align = alTop
        Caption = '5-Inspe'#231#227'o'
        ExplicitTop = 187
      end
    end
    object Pnl_Cad_sub: TPanel
      Left = 112
      Top = 95
      Width = 153
      Height = 50
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnMouseLeave = Pnl_subMenuMouseLeave
      object BtnCadastro: TSpeedButton
        Left = 1
        Top = 1
        Width = 151
        Height = 48
        Align = alTop
        Caption = 'Cadastro Usuario'
        OnClick = BtnCadastroClick
        OnMouseLeave = BtnCadastroMouseLeave
        ExplicitLeft = 0
        ExplicitTop = 7
      end
    end
  end
  object Pnl_Status: TPanel
    Left = 0
    Top = 0
    Width = 1041
    Height = 35
    Align = alTop
    Color = clHotLight
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 1039
      Height = 33
      Align = alClient
      Alignment = taCenter
      Caption = 'Sistema de gerenciamento de Qualidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 329
      ExplicitHeight = 19
    end
    object Label2: TLabel
      Left = 1
      Top = 2
      Width = 70
      Height = 28
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Pnl_Verde1: TPanel
      Left = 90
      Top = 5
      Width = 33
      Height = 24
      Color = clLime
      ParentBackground = False
      TabOrder = 0
      Visible = False
      OnClick = Pnl_Verde1Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 872
    Top = 139
  end
end
