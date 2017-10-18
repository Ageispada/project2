unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses
  SampleDataModule , Unit2, Unit3;



procedure TForm1.Button1Click(Sender: TObject);
begin
  try
    FirstDataModule.FDQuery1.Open();
    FirstDataModule.FDQuery2.Open();
    FirstDataModule.frxReport1.ShowReport();
  finally
    FirstDataModule.FDQuery1.Close();
    FirstDataModule.FDQuery2.Close();
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if not assigned(TForm(FindComponent('Form2'))) then
  begin
    with TForm2.create(Self)  do
    begin
      show();
    end;
  end;


end;


procedure TForm1.Button3Click(Sender: TObject);
begin
  Form3.Show;
end;

end.
