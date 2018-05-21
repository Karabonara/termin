unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, sqldb, mysql51conn, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, StdCtrls, DbCtrls, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    MySQL51Connection1: TMySQL51Connection;
    PageControl1: TPageControl;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure DBGrid1SelectEditor(Sender: TObject; Column: TColumn;
      var Editor: TWinControl);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
procedure TForm1.DBGrid1SelectEditor(Sender: TObject; Column: TColumn;
  var Editor: TWinControl);
begin
  Memo1.Text := DBGrid1.Columns.Items[2].Field.Value;
  Label1.Caption := DBGrid1.Columns.Items[1].Field.Value;
  Label4.Caption := DBGrid1.Columns.Items[3].Field.Value;
end;
end.

