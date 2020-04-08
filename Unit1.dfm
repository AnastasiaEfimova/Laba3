object FormMain: TFormMain
  Left = 340
  Top = 190
  Width = 614
  Height = 247
  Caption = #1054#1054#1055
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 413
    Height = 208
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      413
      208)
    object lblChoise: TLabel
      Left = 24
      Top = 24
      Width = 123
      Height = 13
      Caption = 'Selected operating mode:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblInput: TLabel
      Left = 24
      Top = 88
      Width = 60
      Height = 13
      Caption = 'Input string:'
    end
    object lblFinish: TLabel
      Left = 24
      Top = 144
      Width = 34
      Height = 13
      Caption = 'Result:'
    end
    object edtInput: TEdit
      Left = 24
      Top = 104
      Width = 362
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Enabled = False
      TabOrder = 0
      OnChange = edtInputChange
    end
    object mmoFinish: TMemo
      Left = 24
      Top = 160
      Width = 363
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Enabled = False
      Lines.Strings = (
        '')
      ReadOnly = True
      TabOrder = 1
    end
    object rbList: TRadioButton
      Left = 160
      Top = 48
      Width = 145
      Height = 17
      Caption = 'List-based queue'
      TabOrder = 2
      OnClick = rbListClick
    end
    object rbArray: TRadioButton
      Left = 32
      Top = 48
      Width = 121
      Height = 17
      Caption = 'rbArray'
      TabOrder = 3
      OnClick = rbArrayClick
    end
  end
  object pnlBtn: TPanel
    Left = 413
    Top = 0
    Width = 185
    Height = 208
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      185
      208)
    object btnStart: TButton
      Left = 40
      Top = 103
      Width = 121
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Start'
      Enabled = False
      TabOrder = 0
    end
    object btnExit: TButton
      Left = 40
      Top = 159
      Width = 121
      Height = 21
      Caption = 'Exit'
      TabOrder = 1
      OnClick = btnExitClick
    end
    object btnClean: TButton
      Left = 40
      Top = 131
      Width = 121
      Height = 21
      Caption = 'Clean'
      Enabled = False
      TabOrder = 2
      OnClick = btnCleanClick
    end
  end
end
