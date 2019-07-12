unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Buttons, ToolWin, ComCtrls, Grids, DBGrids, StdCtrls,
  ExtCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    CoolBar1: TCoolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DataSource: TDataSource;
    Query: TQuery;
    Timer1: TTimer;
    Procedure Carregar_Variaveis;
    procedure PesqCodigo;
    procedure Pesqcampo1;
    procedure PesqGeral;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
//    Vcodigo: string;
//    Vcampo1:string;
 //   Vflag_selecionado:integer;

  public
    { Public declarations }

  end;

var
  Form3: TForm3;

implementation

uses Global;



{$R *.DFM}
procedure TForm3.Carregar_Variaveis;
begin
  Vcodigo:=query.fieldbyname('codetiqueta').asstring;
  Vcampo1:=query.fieldbyname('campo1').asstring;
  Vcampo2:=query.fieldbyname('campo2').asstring;
  Vflag_selecionado:=1;
end;

procedure TForm3.PesqCodigo;
begin
    IF (Length(trim(edit1.text)) <> 0) then
        begin
         query.Close;
         query.SQL.Clear;
         query.SQL.Add ('Select * ');
         query.SQL.Add ('from etiqueta');
         query.SQL.Add ('where codetiqueta = :0');
         query.Params[0].Value:=trim(edit1.Text);
         query.Open;
        end;

    IF (query.Eof and query.Bof) then
       begin
         beep();
         MessageDlg('Nenhum Registro Encontrado', mtWarning, [mbOk], 0);
         edit1.setfocus;
         query.close;
         SpeedButton2.Enabled:=false;
       end
       else
       begin
        SpeedButton2.Enabled:=true;
       end;

end;

procedure TForm3.Pesqcampo1;
begin
    IF (Length(trim(edit1.text)) <> 0) then
        begin
         query.Close;
         query.SQL.Clear;
         query.SQL.Add ('Select * ');
         query.SQL.Add ('from etiqueta');
         query.SQL.Add ('where campo1 like :0');
         query.Params[0].Value:=trim(edit1.Text)+'%';
         query.Open;
        end;

    IF (query.Eof and query.Bof) then
       begin
         beep();
         MessageDlg('Nenhum Registro Encontrado', mtWarning, [mbOk], 0);
         edit1.setfocus;
         query.close;
         SpeedButton2.Enabled:=false;
       end
       else
       begin
        SpeedButton2.Enabled:=true;
       end;

end;

procedure TForm3.PesqGeral;
begin
    query.Close;
    query.SQL.Clear;
    query.SQL.Add ('Select * ');
    query.SQL.Add ('from etiqueta');
    query.SQL.Add ('where codetiqueta <> :0');
    query.SQL.Add ('order by codetiqueta');
    query.Params[0].Value:='0000';
    query.Open;
    IF (query.Eof and query.Bof) then
       begin
         beep();
         MessageDlg('Nenhum Registro Encontrado', mtWarning, [mbOk], 0);
         edit1.setfocus;
         query.close;
         SpeedButton2.Enabled:=false;
       end
       else
       begin
        SpeedButton2.Enabled:=true;
       end;

end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
  Carregar_Variaveis;
  query.Close;
  close;

end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
        IF combobox1.ItemIndex = 0 then Pesqcodigo;
        IF combobox1.ItemIndex = 1 then Pesqcampo1;
        IF combobox1.ItemIndex = 2 then PesqGeral;


end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
        Query.close;
        close;

end;

procedure TForm3.DBGrid1DblClick(Sender: TObject);
begin
  Carregar_Variaveis;
  query.Close;
  close;

end;

procedure TForm3.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
           key:=#0;
           IF combobox1.ItemIndex = 0 then Pesqcodigo;
           IF combobox1.ItemIndex = 1 then Pesqcampo1;
           IF combobox1.ItemIndex = 2 then PesqGeral;
        end;

end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
  timer1.Enabled:=false;
  SpeedButton1Click(SELF);

end;

procedure TForm3.FormActivate(Sender: TObject);
begin
        Query.Close;
        combobox1.ItemIndex:=0;
        Pesqgeral;

end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Query.Close;
end;

end.
