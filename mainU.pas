unit mainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, jpeg, ExtCtrls;

type
  TmainF = class(TForm)
    MainMenu1: TMainMenu;
    Etiqueta1: TMenuItem;
    Sair1: TMenuItem;
    Etiqueta2: TMenuItem;
    Etiquetas1: TMenuItem;
    Etiqueta3117961: TMenuItem;
    Image1: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure Etiqueta2Click(Sender: TObject);
    procedure Etiqueta3117961Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainF: TmainF;

implementation

uses Unit2, Unit25;

{$R *.dfm}

procedure TmainF.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TmainF.Etiqueta2Click(Sender: TObject);
begin
        With Tform2.Create(self) do
        Begin
          Showmodal;
          Free;
        end;

end;

procedure TmainF.Etiqueta3117961Click(Sender: TObject);
begin
  with TForm25.Create(Self)  do
  begin
    ShowModal;
    Free;
  end;

end;

end.
