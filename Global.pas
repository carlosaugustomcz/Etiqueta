unit Global;

interface
uses
  Windows,SysUtils;

Var
// variaveis do Sistema
   Vcreditos_cursando:Integer;
   Vpendencia_fotos:string;
   Vpendencia_historico:string;
   Vpendencia_identidade:string;
   Vpendencia_cpf:string;
   Vpendencia_titulo:string;
   Vpendencia_reservista:string;
   Vpendencia_nascimento:string;
   Vpendencia_residencia:string;
   Vpendencia_certificado:string;
   Vpendencia_assinatura:string;
   aux_via:integer;
   Vanobase:string;
   Vsemestrebase:string;
   Vmes:String;
   Vimagem:String;
   Vdrivefotos:char;
   Vdiretoriofotos:string;
   Vflag_selecionado:integer;
   Vsubjudice:string;
   Vpendenciabiblioteca:string;
   Vflag_continua:string;
   Vflag:integer;
   aux_flagselecionado:Integer;
   Vtipomanut:string;
   Vusuario:string;
   Vinicializar:integer;
   Vautorizado:string;
   Vsenha:string;
   Vsuper:string;
   Vnome_usuario:string;
   aux_gravado:string;
   aux_avaliacao:string;
   aux_anosemestre:string;
   aux_codturmadisciplina:string;
   aux_codturma:string;
   aux_coddisciplina:string;
   aux_codprofessor:string;
   aux_alunosmatriculados:string;
   aux_aulasdadas:string;
   aux_codcurso:string;
   aux_periodo:string;
   aux_turma:string;
   aux_nomecurso:string;
   aux_turno:string;
   aux_nomedisciplina:string;
   aux_creditos:string;
   aux_cargahoraria:string;
   aux_nomeprofessor:string;

// Variaveis Auxiliares de Formularios
   Vcodescola:string;
   Vnomeescola:string;
   Vsigla:String;
   Vendereco:string;
   Venderecoescola1:string;
   Venderecoescola2:string;
   Vbairro:string;
   Vnumero:string;
   Vcidade:string;
   Vestado:string;
   Vcep:string;
   Vfone:string;
   Vfax:string;
   Vsite:String;
   Vemail:String;
   Vcgc:String;
   Vinscestadual:string;
   Vinscmunicipal:string;
   Vdiretor:string;
   Vsecretario:string;
   Vmediaaprovacao:string;
   Vfrequenciaaprovacao:string;
   Vpeso1:string;
   Vpeso2:string;
   Vpeso3:string;
   Vvicediretor:string;
   VCodCurso:String;
   Vnomecurso:string;
   Vmaxetapas:string;
   Vturno:string;
   Vtipo:string;
   Vtipomedia:integer;
   Vautorizacao:integer;
   Vportaria:integer;
   Vnumeroportaria:string;
   Vdataautorizacao:String;
   Vpublicado:integer;
   Vdatapublicado:string;
   VCodBanco:String;
   Vdvbanco:string;
   VCodagencia:String;
   Vdvagencia:string;
   Vnumconta:string;
   Vdvconta:string;
   Vsiglacurso:String;
   Vcodgrade:string;
   Vdescricao:string;
   Vanograde:string;
   Vsemestregrade:string;
   Vatualgrade:string;
   Vcoddisciplina:String;
   Vnomedisciplina:string;
   Vcreditos:string;
   Vcargahoraria:String;
   Vtipodisciplina:integer;
   Vaprovacao:integer;
   Vperiodo:String;
   Vcodprerequisito:string;
   Vcodturma:string;
   Vnumeroalunos:string;
   Vsala:string;
   Vcodpessoa:string;
   Vmatricula:string;
   Vnome:string;
   Vturma:string;
   Vnomforma:string;
   Vdtnasc:string;
   Vsexo:string;
   Vestadocivil:string;
   vuftitulo: string;
   Vnacionalidade:string;
   Vpai:string;
   Vmae:string;
   Vcomplemento:string;
   Vfone1:string;
   Vfone2:string;
   Vfone3:string;
   Vuf:string;
   Vpais:string;
   Vcpf:string;
   Vtitulo:string;
   Vcidadetitulo:string;
   Vzona:string;
   Vgraduacao:string;
   Vdtexpedicaotitulo:string;
   Vsecao:string;
   Vcertificadomilitar:string;
   Vserie:string;
   Vemissor:string;
   Vtipocertificado:string;
   Vcsm:string;
   Vdtlicenciamento:string;
   Vdtconclusao:string;
   Vdtcolacao:string;
   Vdtdiploma:string;
   Vcertidaonascimento:string;
   Vlivro:string;
   Vfolha:string;
   Vnaturalidade:string;
   Vufnaturalidade:String;
   Vfalecido:string;
   Vdtlicenc:Tdatetime;
   Vsegundograu:string;
   Vcodforma:string;
   Vcodsituacao:string;
   Vtipocertmilitar:string;
   Vseriecertmilitar:string;
   Vdtemissaotitulo:TDateTime;
   vnumcertnasc:string;
   vdt_matricula:tdatetime;
   VdtPrevisaoEmprestimo:TDateTime;
   vemissorcertmilitar:string;
   Vdtexpedicaoidentidade:string;
   Vufidentidade:String;
   Videntidade:String;
   Vemissor_entidade:string;
   Vescola1grau:string;
   Vcodigo:string;
   Vcampo1:string;
   Vcampo2:string;
   Vano1grau:string;
   Vcidadeprimeirograu:String;
   Vufprimeirograu:String;
   Vescola2grau:string;
   Vano2grau:string;
   Vcidadesegundograu:String;
   Vufsegundograu:String;
   Vcodaluno:string;
   Vnomealuno:String;
   Vcodprofessor:string;
   Vcelular:string;
   Vdataadmissao:string;
   Vtitulacao:integer;
   Vcodturmadisciplina:String;
   Vcodadmissao:String;
   Vdesc_Admissao:String;
   Vcodstatus:String;
   Vnomestatus:String;
   VEntidadeVestibular:String;
   VAnosemVestibular:String;
   Vclassificacaovestibular:String;
   Vpontosvestibular:String;
   VCidadevestibular:String;
   Vsiglainstituicao:String;
   Vsiglainstituicao2:String;
   Vinstituicao:string;
   Vlogotipoinstituicao:string;
   Vinstituicao2:string;
   Vufvestibular:String;
   aux_gravado1:string;
   aux_avaliacao1:string;
   aux_anosemestre1:string;
   aux_codturmadisciplina1:string;
   aux_codturma1:string;
   aux_coddisciplina1:string;
   aux_codprofessor1:string;
   aux_alunosmatriculados1:string;
   aux_aulasdadas1:string;
   aux_codcurso1:string;
   aux_periodo1:string;
   aux_turma1:string;
   aux_nomecurso1:string;
   aux_turno1:string;
   aux_nomedisciplina1:string;
   aux_creditos1:string;
   aux_cargahoraria1:string;
   aux_nomeprofessor1:string;
   aux_ultregistro1:integer;
   Vultmatricula:integer;
   VCodCursomatricula:string;
   Vultcodpessoa:integer;
   Vanosemestre:string;
   Vcodaluno1:Array[0..1000] of string;
   Vcoddisciplina1:Array[0..1000] of string;
   Vnomealuno1:Array[0..1000]of string;
   Vfaltas1:Array[0..1000]of string;
   Vnota11:Array[0..1000]of string;
   Vnota21:Array[0..1000]of string;
   Vnota31:Array[0..1000]of string;
   Vpeso11:Array[0..1000]of string;
   Vpeso21:Array[0..1000]of string;
   Vpeso31:Array[0..1000]of string;
   Vmedia1:Array[0..1000]of string;
   Vstatus1:Array[0..1000]of string;
   Vano1:Array[0..1000]of string;
   Vsemestre1:Array[0..1000]of string;
   Vnotareposicao1:Array[0..1000]of string;
   Vreposicao1:Array[0..1000]of string;
   Vfreqnota1:Array[0..1000]of string;
   Vfreqnota2:Array[0..1000]of string;
   Vfreqnota3:Array[0..1000]of string;
   Vfreqreposicao:Array[0..1000]of string;
   Vnumerocaderneta1:Array[0..1000]of string;
   Vdtalteracao:String;
   Vdata1:string;
   Vdata2:string;
   VdescricaoTurma:String;
   Vfaltas:string;
   Vnota1:string;
   Vnota2:string;
   Vnota3:string;
   Vmedia:string;
   Vstatus:string;
   Vano:string;
   Vsemestre:string;
   Vobservacao:string;
   Vavaliacao:integer;
   Vmsgcab1rel:string;
   Vmsgcab2rel:string;
   Vobservacoes:string;
   Vcriacaoescola:string;
   Vautorizacaoescola:string;
   Vreconhecimentoescola:string;
   Vmsghistoricocurso:string;
   function Encrypt(Senha:String):String;
   function retzero(ZEROS:String;quant:integer):String;
   Function GravaData(datamask:string):string;
   function DiscoNoDrive(const drive : char): boolean;
   function AjustaStr ( str: String; tam: Integer ): String;
   function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
   function mesextenso(Data: TDateTime): String;

implementation

function DiscoNoDrive(const drive : char): boolean;
var
DriveNumero : byte;
EMode : word;
begin
result := false;
DriveNumero := ord(Drive);
if DriveNumero >= ord('a') then
begin
dec(DriveNumero,$20);
EMode := SetErrorMode(SEM_FAILCRITICALERRORS);
end;
try
if DiskSize(DriveNumero-$40) = -1 then
begin
Result := False;
end
else
begin
Result := True;
end;
Except
SetErrorMode(EMode);
end;
end;


Function GravaData(datamask:string):string;
begin
  result:=copy(datamask,7,4)+'-'+copy(datamask,4,2)+'-'+copy(datamask,1,2);
end;


function Encrypt(Senha:String):String;
Const
  Chave:String='JG';
Var
  x,y:integer;
  Novasenha:string;
Begin
  for x:=1 to length(chave) do
    begin
      novasenha:='';
      for y:=1 to length(senha) do
        novasenha:=novasenha+chr((ord(chave[x]) xor ord(senha[y])));
      senha:=novasenha;
    end;
  result:=senha;
end;

function retzero(ZEROS:String;quant:integer):String;
Var
  I,tamanho:integer;
  Aux:string;
Begin
  aux:=zeros;
  Tamanho:=length(zeros);
  zeros:='';
  for I:=1 to quant - tamanho  do
    begin
      zeros:=zeros+'0';
     aux:=zeros+aux;
     retzero:=aux;
     end;
end;

function AjustaStr ( str: String; tam: Integer ): String;
begin
while Length ( str ) < tam do
str := str + ' ';
if Length ( str ) > tam then
str := Copy ( str, 1, tam );
Result := str;
end; {O uso da função AjustaStr é fundamental quando você estiver gravando arquivos texto com registros de tamanho fixo a partir de bases de dados Paradox que usualmente não preenchem campos string com espaços no final. }

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto for MAIOR que o desejado, eliminar últimos caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto for MAIOR que o desejado, eliminar primeiros caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            'á','Á' : Texto[i] := 'A';
            'é','É' : Texto[i] := 'E';
            'í','Í' : Texto[i] := 'I';
            'ó','Ó' : Texto[i] := 'O';
            'ú','Ú' : Texto[i] := 'U';
            'à','À' : Texto[i] := 'A';
            'è','È' : Texto[i] := 'E';
            'ì','Ì' : Texto[i] := 'I';
            'ò','Ò' : Texto[i] := 'O';
            'ù','Ù' : Texto[i] := 'U';
            'â','Â' : Texto[i] := 'A';
            'ê','Ê' : Texto[i] := 'E';
            'î','Î' : Texto[i] := 'I';
            'ô','Ô' : Texto[i] := 'O';
            'û','Û' : Texto[i] := 'U';
            'ä','Ä' : Texto[i] := 'A';
            'ë','Ë' : Texto[i] := 'E';
            'ï','Ï' : Texto[i] := 'I';
            'ö','Ö' : Texto[i] := 'O';
            'ü','Ü' : Texto[i] := 'U';
            'ç','Ç' : Texto[i] := 'C';
            'ñ','Ñ' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);
end;

function mesextenso(Data: TDateTime): String;
const
Mes : Array[1..12] of String[12] = ('Janeiro', 'Fevereiro', 'Março','Abril','Maio', 'Junho','Julho','Agosto', 'Setembro', 'Outubro','Novembro','Dezembro');
begin
Result := Mes[strtoint(copy(DateToStr(data),4,2))];
end;


end.
