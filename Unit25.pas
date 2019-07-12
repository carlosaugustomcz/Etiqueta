unit Unit25;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Buttons, ToolWin, ComCtrls, Grids, DBGrids, StdCtrls,
  ExtCtrls, Mask, ToolEdit, CurrEdit, QRCtrls, QuickRpt, RpCon,
  RpConDS, RpBase, RpSystem, RpDefine, RpRave, QRBarcode, DBClient;

type
  TForm25 = class(TForm)
    CoolBar1: TCoolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    GroupBox1: TGroupBox;
    QuickRep1: TQuickRep;
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    SpeedButton4: TSpeedButton;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRBarcode1: TQRBarcode;
    QRDBText3: TQRDBText;
    Label1: TLabel;
    codetiqueta: TMaskEdit;
    Label2: TLabel;
    campo1: TEdit;
    Label3: TLabel;
    campo2: TEdit;
    QRDBText1: TQRDBText;
    cdsetiqueta: TClientDataSet;
    cdsetiquetacodigo: TStringField;
    cdsetiquetacampo1: TStringField;
    cdsetiquetacampo2: TStringField;
    quantEtiqueta: TMaskEdit;
    Label4: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure InserirEtiqueta;
    procedure FormShow(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    quantidade:integer;
  public
    { Public declarations }
  end;

var
  Form25: TForm25;

implementation

uses Unit3, Global;




{$R *.DFM}
procedure TForm25.SpeedButton2Click(Sender: TObject);
begin
  if codetiqueta.Text <> '' then
  begin
    InserirEtiqueta;
    QuickRep1.Preview;
    close;
  end;

end;


procedure TForm25.SpeedButton3Click(Sender: TObject);
begin

        close;

end;


procedure TForm25.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  QRBarcode1.Digits:=Query.fieldbyname('codacervo').asstring;

end;

procedure TForm25.SpeedButton4Click(Sender: TObject);
begin
  RvProject1.Execute;
//  query.Close;
  close;

end;

procedure TForm25.SpeedButton1Click(Sender: TObject);
begin
  Vflag_selecionado:=0;
  with TForm3.Create(Self)  do
  begin
    ShowModal;
    Free;
  end;
  IF Vflag_selecionado = 1 then
     Begin
        codetiqueta.text:=Vcodigo;
        campo1.text:=Vcampo1;
//        campo2.text:=Vcampo2;
     end;


end;

procedure TForm25.InserirEtiqueta;
var
  i:integer;
begin

  For i:=1 to 96 do
  begin
    cdsetiqueta.Append;
    cdsetiquetacodigo.Value:= trim(codetiqueta.Text);
    cdsetiquetacampo1.Value:=trim(campo1.Text);
    cdsetiquetacampo2.Value:=trim(campo2.Text);
    cdsetiqueta.Post;
  end;
   
end;

procedure TForm25.FormShow(Sender: TObject);
begin
  cdsetiqueta.Open;
  quantidade:=96;
end;

procedure TForm25.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
 codigo:string;
begin
  codigo:= copy(cdsetiqueta.fieldbyname('codigo').asstring,1,2)+copy(cdsetiqueta.fieldbyname('codigo').asstring,4,2)+
  copy(cdsetiqueta.fieldbyname('codigo').asstring,7,3);
  QRBarcode1.Digits:=codigo;

end;

procedure TForm25.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
end;

procedure TForm25.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  close;
end;

end.
