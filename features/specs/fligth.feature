#language: pt
@all
Funcionalidade: Acessar o site Mercury Hour

@submit
Cenario: Preenchendo formulario dos dados

  Dado eu esteja na pagina
  Quando eu preencher os campos
    | login          | mercury            |
    | senha          | mercury            |
  Entao confirmo os dados através do botão "Signin"
  Quando eu escolher os detalhes do voo
  Entao eu clico o botao para continuar
  Quando eu selecionar partida e retorno do voo
  Entao confirmo para continuar o procedimento
  Quando validar todas as informações dos voos
  Entao preencha os dados 
  | first          | Camila             |
  | last           | Nascimento         |
  | number         | 999999999          |
  E confirma o botao
  Quando eu estou na pagina de confirmacao
  Entao eu valido o numero da confirmacao do voo