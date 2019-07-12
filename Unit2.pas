unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ToolWin, ComCtrls, Mask;

type
  TForm2 = class(TForm)
    CoolBar1: TCoolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Query: TQuery;
    DataSource: TDataSource;
    codetiqueta: TMaskEdit;
    SpeedButton6: TSpeedButton;
    Label3: TLabel;
    campo2: TEdit;
    campo1: TEdit;
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure limpar;
    procedure habilitar;
    procedure desabilitar;
    procedure gravar;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure codetiquetaKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton6Click(Sender: TObject);
    procedure campo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Vtipomanut:string;
    Vflag_continua: string;
   // Vflag_selecionado:integer;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Global;



{$R *.DFM}

procedure TForm2.SpeedButton9Click(Sender: TObject);
begin
        Close;
end;

procedure TForm2.Limpar;
begin
        speedbutton2.Enabled:=false;
        speedbutton4.Enabled:=false;
        speedbutton5.Enabled:=false;
        SpeedButton9.enabled:=true;
        Codetiqueta.Clear;
        campo1.Clear;
        campo2.Clear;
end;

procedure TForm2.habilitar;
begin
        Codetiqueta.Enabled:=true;
        campo1.Enabled:=true;
        campo2.Enabled:=true;
        codetiqueta.SetFocus;
end;

procedure TForm2.Desabilitar;
begin
        Codetiqueta.Enabled:=false;
        campo1.Enabled:=false;
        campo2.Enabled:=false;
        SpeedButton1.enabled:=true;
        SpeedButton2.enabled:=false;
        SpeedButton3.enabled:=false;
        SpeedButton4.enabled:=false;
        SpeedButton5.enabled:=false;
        SpeedButton7.enabled:=true;
        SpeedButton9.enabled:=true;

end;

procedure TForm2.Gravar;
begin
        IF Vtipomanut = 'I'   then
          Begin
            Query.Close;
            Query.SQL.Clear;
            Query.SQL.Add ('insert into etiqueta');
            Query.SQL.Add ('(codetiqueta,campo1,campo2)');
            Query.SQL.Add ('values (:0,:1,:2)');
            Query.Params[0].Value:=trim(codetiqueta.Text);
            Query.Params[1].Value:=campo1.Text;
            Query.Params[2].Value:=campo2.Text;
            Query.Execsql;
          end;
        IF Vtipomanut = 'A' then
          Begin
            Query.Close;
            Query.SQL.Clear;
            Query.SQL.Add ('update etiqueta');
            Query.SQL.Add ('set campo1=:0, campo2=:1');
            Query.SQL.Add ('where codetiqueta= :2');
            Query.Params[0].Value:=campo1.Text;
            Query.Params[1].Value:=campo2.Text;
            Query.Params[2].Value:=trim(codetiqueta.Text);
            Query.Execsql;
          End;
        IF Vtipomanut = 'E' then
          Begin
            Query.Close;
            Query.SQL.Clear;
            Query.SQL.Add ('delete ');
            Query.SQL.Add ('from etiqueta');
            Query.SQL.Add ('where codetiqueta = :0' );
            Query.Params[0].Value:=trim(codetiqueta.Text);
            Query.Execsql;
          end;
        Query.Close;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
        SpeedButton1.enabled:=False;
        SpeedButton2.enabled:=true;
        SpeedButton3.enabled:=false;
        SpeedButton4.enabled:=true;
        SpeedButton5.enabled:=false;
        SpeedButton7.enabled:=false;
        SpeedButton9.enabled:=false;
        habilitar;
        Vtipomanut:='I';
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
        Limpar;
        Desabilitar;

end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
 IF (Length(trim(codetiqueta.text)) <> 0) then
    begin
    query.Close;
    query.SQL.Clear;
    query.SQL.Add ('Select * ');
    query.SQL.Add ('from etiqueta');
    query.SQL.Add ('where codetiqueta = :0');
    query.Params[0].Value:=trim(codetiqueta.Text);
    query.Open;
    Vflag_continua:='S';
    IF (query.Eof and query.Bof) then
       begin
         IF Vtipomanut='A' then
            begin
              beep();
              messagebox(0,'Registro Não Existe','Atenção',0+48+8192);
              codetiqueta.setfocus;
              Vflag_continua:='N';
            end;
       end
       else
       begin
         IF Vtipomanut='I' then
            begin
              beep();
              messagebox(0,'Registro Já Existe','Atenção',0+48+8192);
              codetiqueta.setfocus;
              Vflag_continua:='N';
            end;
       end;
    query.close;

    IF VFlag_Continua='S' then
       begin
        Gravar;
        Limpar;
        Desabilitar;
        SpeedButton1.enabled:=true;
        SpeedButton2.enabled:=false;
        SpeedButton3.enabled:=false;
        SpeedButton4.enabled:=false;
        SpeedButton5.enabled:=false;
        SpeedButton7.enabled:=true;
        SpeedButton9.enabled:=true;
       end;
    end;


end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
        SpeedButton1.enabled:=False;
        SpeedButton2.enabled:=true;
        SpeedButton3.enabled:=false;
        SpeedButton4.enabled:=true;
        SpeedButton5.enabled:=false;
        SpeedButton7.enabled:=false;
        SpeedButton9.enabled:=false;
        campo1.Enabled:=true;
        campo2.Enabled:=true;
        campo1.SetFocus;
        Vtipomanut:='A';
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
   beep();
   IF messageBox(0,'Deseja realmente EXCLUIR ESTE REGISTRO ?','Atenção',4+32+8192)=6 then
      begin
        Vtipomanut:='E';
        Gravar;
        Limpar;
        Desabilitar;
        SpeedButton1.enabled:=true;
        SpeedButton2.enabled:=false;
        SpeedButton3.enabled:=false;
        SpeedButton4.enabled:=false;
        SpeedButton5.enabled:=false;
        SpeedButton7.enabled:=true;
        SpeedButton9.enabled:=true;
     end;

end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin
  Vflag_selecionado:=0;
  with TForm3.Create(Self)  do
  begin
    ShowModal;
    Free;
  end;
  IF Vflag_selecionado = 1 then
     Begin
        SpeedButton1.enabled:=False;
        SpeedButton2.enabled:=False;
        SpeedButton3.enabled:=true;
        SpeedButton4.enabled:=true;
        SpeedButton5.enabled:=true;
        SpeedButton7.enabled:=false;
        SpeedButton9.enabled:=false;
        codetiqueta.text:=Vcodigo;
        campo1.text:=Vcampo1;
        campo2.text:=Vcampo2;
     end;

 
end;

procedure TForm2.codetiquetaKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
           key:=#0;
           campo1.SetFocus;
        end;


end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
{     Query.Close;
     Query.SQL.Clear;
     Query.SQL.Add('Select * from etiqueta');
     Query.SQL.Add('order by codetiqueta');
     Query.Open;
    IF ( query.Eof and  query.Bof) then
       begin
         beep();
         messagebox(0,'Nenhum Registro Encontrado','Atenção',0+48+8192);
       end
       else
       begin
        Application.CreateForm(Tform18,Form18);
        form18.QuickRep1.Preview;
        Form18.Free;
       end;
        query.close;
 }
end;

procedure TForm2.campo1KeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
           key:=#0;
           campo2.SetFocus;
        end;

end;

end.
