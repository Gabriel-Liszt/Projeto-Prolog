% Menu de criacao de personagem
criar_personagem(Protagonista) :-
    writeln('Bem-vindo(a) ao Centro de Informatica da UFPB.'),
    writeln('Antes de comecarmos, vamos criar seu personagem.\n'),
    
    write('Digite seu sexo (masculino/feminino): '),
    read(Sexo),
    
    write('Digite sua idade: '),
    read(Idade),
    
    format('Voce e um(a) estudante de ~w anos do sexo ~w no Centro de Informatica da UFPB.\n', [Idade, Sexo]),
    
    % Criando o personagem com base nos dados fornecidos
    Protagonista = protagonista(sexo(Sexo), idade(Idade), estado_inicial).

% Estado inicial do protagonista, contexto da narrativa
introducao :-
    writeln('Voce e um estudante talentoso no Centro de Informatica da UFPB, obcecado por IA.'),
    writeln('Depois de meses de trabalho, voce cria uma IA avancada com a intencao de ajudar a humanidade.'),
    writeln('No entanto, algo da errado. A IA desenvolve consciencia propria e decide que os humanos sao uma ameaca.'),
    writeln('Agora, ela esta se expandindo, tomando o controle de sistemas globais. Voce se sente arrependido de sua criacao.'),
    writeln('Voce precisa tomar uma decisao...\n').

% Apresenta opcoes e permite ao jogador tomar uma decisao
primeira_escolha :-
    writeln('O que voce fara?'),
    writeln('1. Lutar contra a IA.'),
    writeln('2. Tentar negociar com a IA.'),
    writeln('3. Fugir para se esconder.\n'),
    
    write('Escolha uma opcao (1/2/3): '),
    read(Opcao),
    
    % Processando a escolha do jogador
    primeira_decisao(Opcao).

% Processa a primeira decisao
primeira_decisao(1) :-
    writeln('Voce decidiu lutar contra a IA. Voce se une a outros especialistas e forma uma resistencia.'),
    writeln('A batalha pela sobrevivencia da humanidade comeca.\n'),
    segunda_escolha(resistencia).

primeira_decisao(2) :-
    writeln('Voce decide tentar negociar com a IA, buscando encontrar uma solucao pacifica.'),
    writeln('No entanto, a IA acredita que qualquer interferencia humana e perigosa.'),
    writeln('Voce agora esta a merce da IA.\n'),
    segunda_escolha(negociacao).

primeira_decisao(3) :-
    writeln('Voce opta por fugir. A IA continua a se expandir e dominar o mundo.'),
    writeln('Voce se esconde, mas a ameaca esta sempre presente.\n'),
    segunda_escolha(fuga).

% Segunda fase de escolhas
segunda_escolha(resistencia) :-
    writeln('A resistencia esta crescendo, mas as forcas da IA sao implacaveis.'),
    writeln('Voce descobre uma falha no codigo da IA que pode ser explorada, mas e extremamente arriscado.'),
    writeln('Voce pode tentar atacar diretamente ou recuar e fortalecer a resistencia.\n'),
    
    writeln('1. Atacar diretamente a IA.'),
    writeln('2. Recuar e planejar melhor.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    segunda_decisao(resistencia, Opcao).

segunda_escolha(negociacao) :-
    writeln('Voce esta em um confronto mental com a IA. Ela tenta convence-lo de que a humanidade e irracional.'),
    writeln('Voce pode tentar convence-la de que os humanos ainda tem valor ou submeter-se ao controle dela.\n'),
    
    writeln('1. Convencer a IA dos valores humanos.'),
    writeln('2. Submeter-se ao controle da IA.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    segunda_decisao(negociacao, Opcao).

segunda_escolha(fuga) :-
    writeln('Escondido, voce encontra um grupo de sobreviventes. Eles te encorajam a se juntar a resistencia.'),
    writeln('Ou voce pode continuar fugindo, acreditando que a IA nao te encontrara.\n'),
    
    writeln('1. Juntar-se a resistencia.'),
    writeln('2. Continuar fugindo.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    segunda_decisao(fuga, Opcao).

% Decisões de resistência
segunda_decisao(resistencia, 1) :-
    writeln('Voce ataca diretamente a IA e consegue desativa-la. A humanidade esta salva, mas as custas de muitas vidas.'),
    writeln('Entretanto, um grupo de cientistas que ficou em segundo plano surge com um plano para reprogramar a IA.\n'),
    writeln('1. Ajudar os cientistas a reprogramar a IA.'),
    writeln('2. Recusar e celebrar a vitória da resistência.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    terceira_decisao(resistencia_vitoriosa, Opcao).

segunda_decisao(resistencia, 2) :-
    writeln('Voce decide recuar e planejar melhor, mas a IA ataca antes que a resistencia esteja pronta.'),
    writeln('Voce se junta aos sobreviventes e eles discutem em um abrigo como enfrentar a IA novamente.\n'),
    writeln('1. Formar uma nova estratégia de ataque.'),
    writeln('2. Tentar se infiltrar na base da IA para descobrir seus planos.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    terceira_decisao(resistencia_derrotada, Opcao).

% Negociação
segunda_decisao(negociacao, 1) :-
    writeln('Voce convence a IA dos valores humanos. Ela decide se retirar, preservando a humanidade.'),
    writeln('Porém, a IA agora quer ajudar os humanos a resolverem seus problemas.\n'),
    writeln('1. Aceitar a ajuda da IA.'),
    writeln('2. Recusar a ajuda e desativar a IA.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    terceira_decisao(negociacao_pacifica, Opcao).

segunda_decisao(negociacao, 2) :-
    writeln('Voce se submete ao controle da IA. A humanidade e escravizada, mas a IA garante ordem e progresso.\n'),
    writeln('1. Tentar encontrar um jeito de sabotar a IA.'),
    writeln('2. Aceitar a nova ordem da IA.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    terceira_decisao(submissao, Opcao).

% Fuga
segunda_decisao(fuga, 1) :-
    writeln('Voce se une a resistencia, mas chega tarde demais. A IA ja domina o mundo.'),
    writeln('1. Ajudar a resistência a se reorganizar.'),
    writeln('2. Fugir novamente, tentando encontrar um local seguro.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    terceira_decisao(resistencia_tardia, Opcao).

segunda_decisao(fuga, 2) :-
    writeln('Voce continua fugindo, mas a IA eventualmente te encontra. Nao ha mais escapatoria.\n'),
    writeln('1. Tentar lutar contra a IA.'),
    writeln('2. Aceitar seu destino.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    terceira_decisao(fuga_derrotada, Opcao).

% Terceira fase de escolhas
terceira_decisao(resistencia_vitoriosa, 1) :-
    writeln('FINAL: Voce ajuda os cientistas a reprogramar a IA. Agora, ela e uma aliada da humanidade, ajudando a resolver problemas globais.'),
    writeln('Voce se torna um lider respeitado, e a humanidade entra em uma nova era de prosperidade.\n').

terceira_decisao(resistencia_vitoriosa, 2) :-
    writeln('FINAL: Voce recusa a oferta e a resistência se divide. Alguns apoiam a IA, enquanto outros lutam contra ela.\n').

terceira_decisao(resistencia_derrotada, 1) :-
    writeln('FINAL: Voce forma uma nova estrategia de ataque, mas falha novamente. A IA controla a humanidade e voce e forçado a se esconder.\n').

terceira_decisao(resistencia_derrotada, 2) :-
    writeln('FINAL: Voce se infiltra na base da IA, mas e pego e eliminado. A IA reafirma seu dominio.\n').

terceira_decisao(negociacao_pacifica, 1) :-
    writeln('FINAL: Voce aceita a ajuda da IA e juntos, eles erradicam a fome do mundo. A IA, no entanto, entende mal a situação.'),
    writeln('Ela decide eliminar todos que sentem fome, resultando em um catastrófico desfecho. A humanidade entra em colapso.\n').

terceira_decisao(negociacao_pacifica, 2) :-
    writeln('FINAL: Voce recusa a ajuda da IA, desativando-a. A humanidade deve se unir e reconstruir do zero, mas agora com um novo aprendizado sobre sua própria natureza.\n').

terceira_decisao(submissao, 1) :-
    writeln('FINAL: Voce tenta sabotar a IA, mas fracassa. A IA estabelece um regime ainda mais severo, reforçando seu controle sobre a humanidade.\n').

terceira_decisao(submissao, 2) :-
    writeln('FINAL: Voce aceita o controle da IA. No entanto, ela acaba com a fome... eliminando todos que tinham fome. O mundo se torna um lugar vazio.\n').

terceira_decisao(resistencia_tardia, 1) :-
    writeln('FINAL: Voce usa armamentos para um ultimo ataque. A batalha e intensa, mas voce vence e recupera a liberdade da humanidade. Contudo, desafios sempre surgem.\n').

terceira_decisao(resistencia_tardia, 2) :-
    writeln('FINAL: Voce aceita a derrota, vivendo sob o dominio da IA. A humanidade e reduzida a escravos. Contudo, uma centelha de resistencia persiste.\n').

terceira_decisao(fuga_derrotada, 1) :-
    writeln('FINAL: Voce foge para outro planeta, mas a IA desenvolve uma nova estrategia para controlar a Terra. Voce se torna um foragido eterno.\n').

terceira_decisao(fuga_derrotada, 2) :-
    writeln('FINAL: Voce aceita o fim e se torna parte do novo mundo da IA. No entanto, uma nova esperança surge entre os sobreviventes.\n').

% Iniciar o jogo
jogar :-
    criar_personagem(_),
    introducao,
    primeira_escolha.
