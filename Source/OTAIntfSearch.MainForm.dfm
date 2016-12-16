object frmOTAIntfSearch: TfrmOTAIntfSearch
  AlignWithMargins = True
  Left = 0
  Top = 0
  ActiveControl = edtFilter
  Caption = 'OTA Interface Search'
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pgcPageControl: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 778
    Height = 534
    ActivePage = tabInterfaces
    Align = alClient
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    object tabInterfaces: TTabSheet
      AlignWithMargins = True
      Caption = 'OTA Tools API &Interfaces'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object splViews: TSplitter
        Left = 0
        Top = 298
        Width = 764
        Height = 6
        Cursor = crVSplit
        Align = alBottom
        AutoSnap = False
        MinSize = 200
        ResizeStyle = rsUpdate
        ExplicitTop = 181
        ExplicitWidth = 604
      end
      object pagViews: TPageControl
        Left = 0
        Top = 304
        Width = 764
        Height = 193
        ActivePage = tabCreationPaths
        Align = alBottom
        MultiLine = True
        TabOrder = 1
        OnChange = pagViewsChange
        object tabCodeView: TTabSheet
          AlignWithMargins = True
          Caption = '&Code'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
        object tabCreationPaths: TTabSheet
          AlignWithMargins = True
          Caption = 'Creation &Paths'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object splPaths: TSplitter
            Left = 0
            Top = 114
            Width = 750
            Height = 6
            Cursor = crVSplit
            Align = alBottom
            AutoSnap = False
            ResizeStyle = rsUpdate
            ExplicitLeft = 3
            ExplicitTop = 108
            ExplicitWidth = 584
          end
          object pnlPath: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 123
            Width = 744
            Height = 30
            Align = alBottom
            BevelInner = bvLowered
            ShowCaption = False
            TabOrder = 0
            object lblPath: TLabel
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 4
              Height = 16
              Align = alClient
              Alignment = taCenter
              Layout = tlCenter
              WordWrap = True
            end
          end
        end
      end
      object grdPanel: TGridPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 758
        Height = 30
        Align = alTop
        ColumnCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = edtFilter
            Row = 0
          end
          item
            Column = 1
            Control = edtTargetSearch
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 0
        object edtFilter: TEdit
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 372
          Height = 24
          Hint = 
            'Type a regular expression here to filter the list of interfaces,' +
            ' methods and properties.'
          Align = alTop
          Anchors = []
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = edtFilterChange
        end
        object edtTargetSearch: TEdit
          AlignWithMargins = True
          Left = 382
          Top = 4
          Width = 372
          Height = 24
          Hint = 
            'Type a regular expression here to limit the creation paths to se' +
            'arch for path only to identifiers matching this pattern.'
          Align = alTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnChange = edtTargetSearchChange
        end
      end
    end
    object tabToolsAPIFiles: TTabSheet
      AlignWithMargins = True
      Caption = 'OTA Tools API &Files'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlButtons: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 464
        Width = 758
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          758
          30)
        object btnAdd: TBitBtn
          Left = 521
          Top = 3
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = '&Add'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FF33333333FF333993333333300033377F3333333777333993333333
            300033F77FFF3333377739999993333333333777777F3333333F399999933333
            33003777777333333377333993333333330033377F3333333377333993333333
            3333333773333333333F333333333333330033333333F33333773333333C3333
            330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
            333333333337733333FF3333333C333330003333333733333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
          TabOrder = 0
          OnClick = btnAddClick
        end
        object btnDelete: TBitBtn
          Left = 683
          Top = 3
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = '&Delete'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            300033FFFFFF3333377739999993333333333777777F3333333F399999933333
            3300377777733333337733333333333333003333333333333377333333333333
            3333333333333333333F333333333333330033333F33333333773333C3333333
            330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
            333333377F33333333FF3333C333333330003333733333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
          TabOrder = 2
          OnClick = btnDeleteClick
        end
        object btnEdit: TBitBtn
          Left = 602
          Top = 3
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = '&Edit'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
          TabOrder = 1
          OnClick = btnEditClick
        end
      end
      object lbxFiles: TListBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 758
        Height = 455
        Align = alClient
        DragMode = dmAutomatic
        TabOrder = 1
        OnDblClick = btnEditClick
        OnDragDrop = lbxFilesDragDrop
        OnDragOver = lbxFilesDragOver
      end
    end
  end
  object stbrStatusBar: TStatusBar
    Left = 0
    Top = 540
    Width = 784
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        Text = 'Search Paths'
        Width = 110
      end
      item
        Text = 'Files'
        Width = 85
      end
      item
        Text = 'Matches'
        Width = 110
      end
      item
        Style = psOwnerDraw
        Text = 'Errors'
        Width = 50
      end>
    UseSystemFont = False
    OnDrawPanel = stbrStatusBarDrawPanel
  end
  object ilInterfaces: TImageList
    Left = 40
    Top = 88
    Bitmap = {
      494C0101060008006C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080008000800080008000800080008000
      8000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080008000800080008000800080008000800080008000
      80008000800000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000800080008000800080008000800080008000800080008000
      8000000000000000000000000000000000000000000000000000C0C0C00000FF
      000000FF000000FF000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800080008000800080008000800080008000800080008000800080000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000FF000000FF000000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      8000800080008000800080008000800080008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C00000FF000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800080008000800080008000800080008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000FF000000FF000000FF000000FF000000FF0000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C00000FF000000FF000000FF0000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C00000FF0000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000080808000000000000000000000000000FF0000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00800000008000000080000000FFFFFF000080
      0000FFFFFF000000000080808000000000000000000000000000FF000000C0C0
      C000FF000000000000000000000000000000FF000000C0C0C000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000080808000000000000000000000000000FF000000C0C0
      C000FF000000FF0000000000000000000000FF000000C0C0C000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000080808000000000000000000000000000FF000000C0C0
      C000FF000000FF000000FF0000000000000000000000FF000000C0C0C000FF00
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000080808000000000000000000000000000FF000000C0C0
      C000FF000000FF000000FF0000000000000000000000FF000000C0C0C000FF00
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00800000008000000080000000FFFFFF008000000080000000FFFFFF000080
      0000FFFFFF000000000080808000000000000000000000000000FF000000C0C0
      C000FF000000FF00000000000000000000000000000000000000C0C0C000FF00
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000080808000000000000000000000000000FF000000C0C0
      C0000000000000000000000000000000000000000000C0C0C000FF000000FF00
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000C0C0C000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000080808000000000000000000000000000FF000000C0C0
      C000000000000000000000000000FF000000C0C0C000FF000000FF000000FF00
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000C0C0C000C0C0C000FF000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000080808000000000000000000000000000FF000000C0C0
      C000FF0000000000000000000000FF000000C0C0C000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000C0C0C000C0C0C000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00800000008000000080000000FFFFFF000080
      0000FFFFFF000000000080808000000000000000000000000000FF000000C0C0
      C000FF000000000000000000000000000000FF000000C0C0C000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000080808000000000000000000000000000FF000000FF00
      0000FF000000FF0000000000000000000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFBFFFFF00000000FF1FFBFF00000000FE0FF1FF00000000
      FC07E0FF00000000F807C07F00000000F00FC03F00000000E01FE01F00000000
      E03FF00F00000000F07FF80F00000000F8FFFC1F00000000FDFFFE3F00000000
      FFFFFF7F00000000FFFFFFFF00000000FFFFFFFFFFFFFFFFC001FFFFFFFFFFFF
      8001FFFFFFFFFFFF8001C307FC3FFFBF8001C307F81FFF1F8001C107F00FFE0F
      8001C187E007FC078001C187E007F8078001C387E007F00F8001C707E007E01F
      8001C607E007E03F8001C207F00FF07F8001C307F81FF8FF8001C307FC3FFDFF
      8003FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object tbrTaskbar: TTaskbar
    TaskBarButtons = <>
    ProgressState = Error
    ProgressMaxValue = 10000000
    ProgressValue = 500000
    TabProperties = [AppThumbAlways]
    Left = 40
    Top = 144
  end
  object synPascal: TSynPasSyn
    Options.AutoDetectEnabled = True
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    AsmAttri.Foreground = clMaroon
    CommentAttri.Foreground = clPurple
    DirectiveAttri.Background = clInfoBk
    DirectiveAttri.Foreground = clGreen
    DirectiveAttri.Style = [fsBold]
    IdentifierAttri.Foreground = clNavy
    NumberAttri.Foreground = clGreen
    FloatAttri.Foreground = clGreen
    HexAttri.Foreground = clGreen
    StringAttri.Foreground = clTeal
    CharAttri.Foreground = clOlive
    SymbolAttri.Foreground = clMaroon
    Left = 104
    Top = 144
  end
  object tmTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmTimerEvent
    Left = 104
    Top = 88
  end
end
