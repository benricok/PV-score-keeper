object frmScoring: TfrmScoring
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Scoring'
  ClientHeight = 378
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 341
    Width = 598
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 606
    DesignSize = (
      598
      37)
    object btnBack: TButton
      Left = 349
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Back'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnBackClick
    end
    object BitBtn1: TBitBtn
      Left = 511
      Top = 6
      Width = 75
      Height = 25
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 1
    end
    object btnSave: TBitBtn
      Left = 430
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Save'
      Kind = bkYes
      NumGlyphs = 2
      TabOrder = 2
    end
  end
  object pnlT1: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 335
    TabOrder = 1
    object lblT1: TLabel
      Left = 88
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Team 1'
    end
    object lblTotalT1: TLabel
      Left = 16
      Top = 312
      Width = 28
      Height = 13
      Caption = 'Total:'
    end
    object redT1: TRichEdit
      Left = 8
      Top = 112
      Width = 185
      Height = 194
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Zoom = 100
    end
    object btnT1A1: TButton
      Left = 16
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Add 1'
      TabOrder = 1
      OnClick = btnT1A1Click
    end
    object btnT1A2: TButton
      Left = 16
      Top = 81
      Width = 75
      Height = 25
      Caption = 'Add 2'
      TabOrder = 2
      OnClick = btnT1A2Click
    end
    object btnT1A3: TButton
      Left = 112
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Add 3'
      TabOrder = 3
      OnClick = btnT1A3Click
    end
    object btnT1C: TButton
      Left = 112
      Top = 81
      Width = 75
      Height = 25
      Caption = 'Add custom'
      TabOrder = 4
      OnClick = btnT1CClick
    end
  end
  object pnlT2: TPanel
    Left = 199
    Top = 0
    Width = 201
    Height = 335
    TabOrder = 2
    object lblT2: TLabel
      Left = 88
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Team 2'
    end
    object lblTotalT2: TLabel
      Left = 16
      Top = 312
      Width = 28
      Height = 13
      Caption = 'Total:'
    end
    object redT2: TRichEdit
      Left = 8
      Top = 112
      Width = 185
      Height = 194
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Zoom = 100
    end
    object btnT2A1: TButton
      Left = 16
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Add 1'
      TabOrder = 1
      OnClick = btnT2A1Click
    end
    object btnT2A2: TButton
      Left = 16
      Top = 81
      Width = 75
      Height = 25
      Caption = 'Add 2'
      TabOrder = 2
      OnClick = btnT2A2Click
    end
    object btnT2A3: TButton
      Left = 112
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Add 3'
      TabOrder = 3
      OnClick = btnT2A3Click
    end
    object btnT2C: TButton
      Left = 112
      Top = 81
      Width = 75
      Height = 25
      Caption = 'Add custom'
      TabOrder = 4
      OnClick = btnT2CClick
    end
  end
  object pnlT3: TPanel
    Left = 398
    Top = 0
    Width = 201
    Height = 335
    TabOrder = 3
    object lblT3: TLabel
      Left = 88
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Team 3'
    end
    object lblTotalT3: TLabel
      Left = 16
      Top = 312
      Width = 28
      Height = 13
      Caption = 'Total:'
    end
    object redT3: TRichEdit
      Left = 8
      Top = 112
      Width = 185
      Height = 194
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Zoom = 100
    end
    object btnT3A1: TButton
      Left = 16
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Add 1'
      TabOrder = 1
      OnClick = btnT3A1Click
    end
    object btnT3A2: TButton
      Left = 16
      Top = 81
      Width = 75
      Height = 25
      Caption = 'Add 2'
      TabOrder = 2
      OnClick = btnT3A2Click
    end
    object btnT3A3: TButton
      Left = 112
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Add 3'
      TabOrder = 3
      OnClick = btnT3A3Click
    end
    object btnT3C: TButton
      Left = 112
      Top = 81
      Width = 75
      Height = 25
      Caption = 'Add custom'
      TabOrder = 4
      OnClick = btnT3CClick
    end
  end
end
