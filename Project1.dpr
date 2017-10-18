program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  SampleDataModule in 'SampleDataModule.pas' {FirstDataModule: TDataModule},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'forms\Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFirstDataModule, FirstDataModule);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
