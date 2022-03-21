program ConsultarNCM;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {Form3},
  Unit1 in '..\..\Downloads\delphi\Cosmos\Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
