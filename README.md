# Documentação do Aplicativo

Aplicativo Quiz: Programação em Blocos

RESUMO DO APLICATIVO

Aplicativo quiz voltado para o ensino de programação em blocos para criança, através do contexto de Storytellers. A ideia é criar histórias e fazer a representação delas através de um cenário. Utilizar um texto introdutório, mas não deixar de utilizar a parte visual. Como crianças se atentam muito a imagens, o cenário representativo serve para ajudá-las a compreender o que se perde em cada questão. Esse aplicativo poderá servir para professores do ensino de programação para crianças, que atende o ensino fundamental I, do 1º ano ao 5º ano. Podendo ser utilizado como método de avaliação, após a prática de programação em uma linguagem como o scratch, que utiliza blocos para programar histórias, animações e jogos.


  TELA 1
- Nessa tela foi utilizado o Scaffoldwidget para adicionar o nome “Quiz” e o backgroundColor: Colors.indigoAccent.
- Dentro do TextStyle, foi alterada a cor da letra e fonte utilizada.
- Na transição dessa tela para outra, foi adicionado o Navigator, que é executado após passar 4 segundos de espera.

![Tela_1](https://github.com/FrancielyAlves/Fundamentos_de_Programacao/blob/master/Tela_1.jpeg)


  TELA DE INICIO
- Nessa tela foi utilizado o Scaffold para adicionar o nome na barra de navegação e mudar sua cor.  
- Em um container adicionei o RaisedButton ao clicar em novo jogo passa para a próxima tela. Através de um navigator.push.
- Foi utilizado um AssetImage para adicionar a imagem na tela, e centralizei a imagem fazendo uso da mainAxisAlignment.

![Tela_inicio](https://github.com/FrancielyAlves/Fundamentos_de_Programacao/blob/master/Tela_inicio.png)


  TELA DE TUTORIAL
- Essa tela funciona como um tutorial que explica blocos de programação.  Foi montada uma List com as imagens que serão utilizadas nessa tela. 
- Implementei o Navigator para passar para a próxima tela.
- Para melhorar a parte visual, foi utilizado o borderRadius. circular, deixa a tela mais agradável.
- Dentro do ClipOval adicionei a imagem, para dar destaque.
- Em um container manipulei Text, TextStyle, fontSize, Colors e TextAlign.
- Utilizei um Scaffold para configurar a barra de navegação.
- Em uma ListView adicionei vários customcard, onde cada um possui o nome de um bloco e a descrição pertencente a ele.

![tutorial](https://github.com/FrancielyAlves/Fundamentos_de_Programacao/blob/master/tutorial.png)

  TELA DO QUIZ
- Essa tela representa como serão as perguntas. Logo depois os botões para resposta. 
- Utilizei choice button em uma column para adicionar text aos botões.
- O botão possui a função onPressed.
- O botão possui color indigo, mas para aplicar um efeito de clique, utilizei o highlightColor e o splashColor. O clique fica perceptível.  
- Para mudar a aparência do botão, utilizei o borderRadius circular.
- Foi utilizado uma AssetImage para inserir a imagem utilizada. 
- Utilizei um BoxDecoration para adicionar essa parte de cor teal no fim da tela. Como se fosse um rodapé.
- Nessa tela existe uma função de tempo showtimer, são 30 segundos para responder cada pergunta. 

![Quiz](https://github.com/FrancielyAlves/Fundamentos_de_Programacao/blob/master/Quiz.png)

  TELAS DE RESULTADOS
- Essas duas telas representam as telas de feedback do aprendizado. Possui uma List com as imagens utilizadas.
- A mensagem apresentada para um usuário que acertar menos de 6 questões, será diferente da mensagem apresentada para um usuário que acertar mais de 6 questões.

RESULTADO ÓTIMO:

![Resultado_2](https://github.com/FrancielyAlves/Fundamentos_de_Programacao/blob/master/Resultado_2.png)

RESULTADO PODE SER MELHORADO:

![Resultado_1](https://github.com/FrancielyAlves/Fundamentos_de_Programacao/blob/master/Resultado_1.png)

NAVEGAÇÃO ENTRE AS TELAS

Navegação entre todas as telas presentes no App.

![Navegação](https://github.com/FrancielyAlves/Fundamentos_de_Programacao/blob/master/Navega%C3%A7%C3%A3o.png)








