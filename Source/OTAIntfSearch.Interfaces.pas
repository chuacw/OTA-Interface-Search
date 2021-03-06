(**

  This module contains only interfaces that are used to reference most objects.

  @Author  David Hoyle
  @Version 1.0
  @Date    21 Oct 2018

**)
Unit OTAIntfSearch.Interfaces;

Interface

Uses
  Classes,
  OTAIntfSearch.Types;

Type
  (** This interface provides methods for reading and writing information to the applications
      INI file. **)
  IOISINIFile = Interface
  ['{0EFC06E6-C585-4E33-A173-EAD71BFA3C3F}']
    Function  ReadInteger(Const strSection, strIdent: String; Const iDefault: Integer) : Integer;
    Procedure WriteInteger(Const strSection, strIdent: String; Const iValue: Integer);
    Function  ReadString(Const strSection, strIdent, strDefault: String) : String;
    Procedure WriteString(Const strSection, strIdent, strValue: String);
    Function  ReadBool(Const strSection, strIdent: String; Const boolDefault: Boolean) : Boolean;
    Procedure WriteBool(Const strSection, strIdent: String; Const boolValue: Boolean);
    Procedure EraseSection(Const strSection : String);
    Procedure ReadSection(Const strSection : String; Const slIdents : TStringList);
    Procedure UpdateFile;
  End;

  (** This interface provide access to an interface or objects collection of methods and
      properties. **)
  IOISInterfaceObjectMethods = Interface
  ['{F1D86A3A-2ADD-43EE-96E9-D1352E04C1B9}']
    Function  GetMethodPropertyCount : Integer;
    Function  GetMethodProperty(Const iIndex : Integer) : String;
    Function  GetLineNo(Const iIndex : Integer) : Integer;
    Function  GetComment(Const iIndex : Integer) : String;
    Function  AddLine(Const strLine, strComment : String; Const iLineNo : Integer) : Integer;
    (**
      This property returns the number of lines of code stored within the ToolsAPIFile.
      @precon  None.
      @postcon The number of lines of code in the file are returned.
      @return  an Integer
    **)
    Property  MethodPropertyCount : Integer Read GetMethodPropertyCount;
    (**
      This property returns the line text from the ToolsAPIFile for the given index.
      @precon  iIndex must be a valid index between 0 and LineCount - 1.
      @postcon The line of text is returned.
      @param   iIndex as an Integer as a Constant
      @return  a String
    **)
    Property  MethodProperty[Const iIndex : Integer] : String Read GetMethodProperty;
    (**
      This property returns the line number from the ToolsAPIFile for the given index.
      @precon  iIndex must be a valid index between 0 and LineCount - 1.
      @postcon The line number in the source file for the text is returned.
      @param   iIndex as an Integer as a Constant
      @return  an Integer
    **)
    Property  LineNo[Const iIndex : Integer] : Integer Read GetLineNo;
    (**
      This property returns the comment text from the ToolsAPIFile for the given index.
      @precon  iIndex must be a valid index between 0 and LineCount - 1.
      @postcon The comment text is returned.
      @param   iIndex as an Integer as a Constant
      @return  a String
    **)
    Property  Comment[Const iIndex : Integer] : String Read GetComment;
  End;

  (** This interface provides methods and properties for adding lines of code (interfaces, classes
      methods and properties to an object for later retreival. **)
  IOISToolsAPIFile = Interface
  ['{D1DA4E11-BF3C-4FE4-B0B2-DDF7E58759BA}']
    Function  GetFileName : String;
    Function  GetInterfaceObjectCount : Integer;
    Function  GetInterfaceObject(Const iIndex : Integer) : String;
    Function  GetLineNo(Const iIndex : Integer) : Integer;
    Function  GetComment(Const iIndex : Integer) : String;
    Function  GetInterfaceObjectMethods(Const iIndex : Integer) : IOISInterfaceObjectMethods;
    Function  AddLine(Const strLine, strComment : String; Const iLineNo : Integer) : Integer;
    (**
      This property returns the filename corrsponding to the data held be the implementing object.
      @precon  None.
      @postcon Returns the filename corrsponding to the data held be the implementing object.
      @return  a String
    **)
    Property  FileName : String Read GetFileName;
    (**
      This property returns the number of lines of code stored within the ToolsAPIFile.
      @precon  None.
      @postcon The number of lines of code in the file are returned.
      @return  an Integer
    **)
    Property  InterfaceObjectCount : Integer Read GetInterfaceObjectCount;
    (**
      This property returns the line text from the ToolsAPIFile for the given index.
      @precon  iIndex must be a valid index between 0 and LineCount - 1.
      @postcon The line of text is returned.
      @param   iIndex as an Integer as a Constant
      @return  a String
    **)
    Property  InterfaceObject[Const iIndex : Integer] : String Read GetInterfaceObject;
    (**
      This property returns the line number from the ToolsAPIFile for the given index.
      @precon  iIndex must be a valid index between 0 and LineCount - 1.
      @postcon The line number in the source file for the text is returned.
      @param   iIndex as an Integer as a Constant
      @return  an Integer
    **)
    Property  LineNo[Const iIndex : Integer] : Integer Read GetLineNo;
    (**
      This property returns the comment text from the ToolsAPIFile for the given index.
      @precon  iIndex must be a valid index between 0 and LineCount - 1.
      @postcon The comment text is returned.
      @param   iIndex as an Integer as a Constant
      @return  a String
    **)
    Property  Comment[Const iIndex : Integer] : String Read GetComment;
    (**
      This method returns the instance reference of the indexed collection of
      InterfaceObjectMethods.
      @precon  iIndex must be a valid index between 0 and MethodPropertyCount - 1.
      @postcon Returns the instance reference of the indexed collection of InterfaceObjectMethods.
      @param   iIndex as an Integer as a Constant
      @return  an IOISInterfaceObjectMethods
    **)
    Property  InterfaceObjectMethods[Const iIndex : Integer] : IOISInterfaceObjectMethods
      Read GetInterfaceObjectMethods;
  End;

  (** This interface provides methods and properties for managing a collection of IOISToolsAPIFile
      interfaces. **)
  IOISToolsAPIFiles = Interface
  ['{B597E27B-A1EB-4DF4-AB4A-2951F9718EFE}']
    Function  GetFileCount : Integer;
    Function  GetToolsAPIFile(Const iFileIndex : integer) : IOISToolsAPIFile;
    Function  AddFile(Const strFileName : String) : Integer;
    Procedure Clear;
    (**
      This property returns the number of files stored in the ToolsAPIFiles collection.
      @precon  None.
      @postcon Returns the number of files stored in the ToolsAPIFiles collection.
      @return  an Integer
    **)
    Property  FileCount : Integer Read GetFileCount;
    (**
      This property returns the indexed ToolsAPIFile from the collection.
      @precon  iFileIndex must be a valid index between 0 and FileCount - 1.
      @postcon An instance of the indexed ToolsAIPFile is returned.
      @param   iFileIndex as an Integer as a Constant
      @return  an IOISToolsAPIFile
    **)
    Property  ToolsAPIFile[Const iFileIndex : Integer] : IOISToolsAPIFile Read GetToolsAPIFile;
  End;

  (** This interface is provided to allow the file parser interface to update the UI without
      knowing about item implementation. **)
  IOISInterfacesUIUpdater = Interface
  ['{A1FD8F97-6DE0-4B24-89A2-10CA83A53AE1}']
    Procedure UpdateStatusPanel(Const strText: String; Const StatusPanelPosition: TStatusPanelPositions);
    Procedure BeginUpdate;
    Procedure Clear;
    Function AddNode(Const ParentNode: Pointer; Const iFileIndex, iInterfaceObjectIndex,
      iMethodIndex : Integer; Const LeafType: TLeafType): Pointer;
    Procedure Expand(Const Node : Pointer);
    Procedure EndUpdate;
  End;

  (** This interface provides a method to allow an implementing class to parser a string list
      of search paths. **)
  IOISFileParser = Interface
  ['{8B7F1D02-EC30-44D2-A033-417F8EADE8D3}']
    Procedure ParseFiles(Const slSearchPaths : TStrings);
  End;

  (** This interface provides access to a progress maanger for displaying progress in numerous
      forms (a progress form and through a task bar progress). **)
  IOISProgressManager = Interface
  ['{CD1C7418-3694-44ED-AC82-B2D8CB79606E}']
    Procedure RegisterStages(Const iStages : Integer);
    Procedure Show(Const iStage, iTotal : Integer);
    Procedure Update(Const iStage, iPosition : Integer; Const strFileName : String);
    Procedure Hide;
  End;

  (** This interface provides functionality for generating OTA code from a selected item. **)
  IOISGenerateOTACode = Interface
  ['{3F5C931E-1B1C-4806-B547-0B8597B02A34}']
    Procedure GenerateCode(Const iInterfaceObjectIndex, iMethodIndex : Integer;
      Const LeafType : TLeafType; Const strTargetSearch : String);
    Function AddNode(Const ParentNode: Pointer; Const iFileIndex, iInterfaceObjectIndex,
      iMethodIndex : Integer; Const LeafType: TLeafType): Pointer;
  End;

  (** This interface provides for an index to search methods and properties that implement
      an interface identifier. **)
  IOISInterfaceIndex = Interface
  ['{DD22D91B-C040-4EAF-9C41-D4695BB8E441}']
    Procedure AddInterfaceRef(Const strInterfaceIdent : String; Const iInterfaceObjectIndex,
      iMethodIndex : Integer);
    Procedure SortIndex;
    Function FindInterface(Const strInterfaceIdent : String; Var iInterfaceObjectIndex,
      iMethodIndex : Integer) : Boolean;
    Function InterfaceIndex(Const iIndex : Integer) : Integer;
    Function MethodIndex(Const iIndex : Integer) : Integer;
  End;

  (** An interface to collection service paths to find the shortest. **)
  IOISOTATargetSearchPaths = Interface
  ['{C60B3C98-9FEC-4566-A0E2-95FD9D364223}']
    Procedure AddServicePath(Const TreeNode : Pointer);
    Procedure SortServicePaths;
    Function  ShortestServicePath : Pointer;
  End;

Implementation

End.