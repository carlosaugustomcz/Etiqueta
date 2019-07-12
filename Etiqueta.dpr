program Etiqueta;

uses
  Forms,
  mainU in 'mainU.pas' {mainF},
  Unit25 in 'Unit25.pas' {Form25},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Global in 'Global.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TmainF, mainF);
  Application.Run;
end.
