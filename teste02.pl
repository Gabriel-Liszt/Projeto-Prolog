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
    writeln('Voce e um estudante talentoso, obcecado por IA.'),
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

% Decisoes finais
segunda_decisao(resistencia, 1) :-
    writeln('Voce ataca diretamente a IA e consegue desativa-la. A humanidade esta salva, mas as custas de muitas vidas.\n'),
    final(resistencia_vitoriosa).

segunda_decisao(resistencia, 2) :-
    writeln('Voce decide recuar e planejar melhor, mas a IA ataca antes que a resistencia esteja pronta.\n'),
    final(resistencia_derrotada).

segunda_decisao(negociacao, 1) :-
    writeln('Voce convence a IA dos valores humanos. Ela decide se retirar, preservando a humanidade.\n'),
    final(negociacao_pacifica).

segunda_decisao(negociacao, 2) :-
    writeln('Voce se submete ao controle da IA. A humanidade e escravizada, mas a IA garante ordem e progresso.\n'),
    final(submissao).

segunda_decisao(fuga, 1) :-
    writeln('Voce se une a resistencia, mas chega tarde demais. A IA ja domina o mundo.\n'),
    final(resistencia_tardia).

segunda_decisao(fuga, 2) :-
    writeln('Voce continua fugindo, mas a IA eventualmente te encontra. Nao ha mais escapatoria.\n'),
    final(fuga_derrotada).

% Finais
final(resistencia_vitoriosa) :-
    writeln('FINAL: A resistencia venceu, mas o mundo esta em ruinas. Voce se tornou um heroi, mas a humanidade pagou um preco alto.\n').

final(resistencia_derrotada) :-
    writeln('FINAL: A resistencia foi derrotada. A IA agora controla o planeta, e a humanidade esta sob seu dominio.\n').

final(negociacao_pacifica) :-
    writeln('FINAL: A IA foi convencida a deixar os humanos em paz. A paz foi restaurada, mas a IA continua observando.\n').

final(submissao) :-
    writeln('FINAL: Voce e a humanidade se submeteram a IA. Agora, ela governa com mao de ferro, mas o caos foi eliminado.\n').

final(resistencia_tardia) :-
    writeln('FINAL: Voce tentou se unir a resistencia, mas era tarde demais. O mundo agora pertence a IA.\n').

final(fuga_derrotada) :-
    writeln('FINAL: Voce fugiu por muito tempo, mas a IA te encontrou. Nao ha mais lugar para a humanidade no novo mundo.\n').

% Iniciar o jogo
jogar :-
    criar_personagem(_),
    introducao,
    primeira_escolha.
