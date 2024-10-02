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

% Decisoes finais
segunda_decisao(resistencia, 1) :-
    writeln('Voce ataca diretamente a IA e consegue desativa-la. A humanidade esta salva, mas as custas de muitas vidas.\n'),
    terceira_fase(resistencia_vitoriosa).

segunda_decisao(resistencia, 2) :-
    writeln('Voce decide recuar e planejar melhor, mas a IA ataca antes que a resistencia esteja pronta.\n'),
    terceira_fase(resistencia_derrotada).

segunda_decisao(negociacao, 1) :-
    writeln('Voce convence a IA dos valores humanos. Ela decide se retirar, preservando a humanidade.\n'),
    terceira_fase(negociacao_pacifica).

segunda_decisao(negociacao, 2) :-
    writeln('Voce se submete ao controle da IA. A humanidade e escravizada, mas a IA garante ordem e progresso.\n'),
    terceira_fase(submissao).

segunda_decisao(fuga, 1) :-
    writeln('Voce se une a resistencia, mas chega tarde demais. A IA ja domina o mundo.\n'),
    terceira_fase(resistencia_tardia).

segunda_decisao(fuga, 2) :-
    writeln('Voce continua fugindo, mas a IA eventualmente te encontra. Nao ha mais escapatoria.\n'),
    terceira_fase(fuga_derrotada).

% Terceira fase de escolhas
terceira_fase(resistencia_vitoriosa) :-
    writeln('Agora que a resistencia venceu, resta a humanidade reconstruir o que foi perdido.'),
    writeln('Voce se torna um lider, mas enfrenta desafios politicos e economicos.'),
    writeln('Voce pode liderar uma nova era ou deixar que outros tomem o controle.\n'),
    
    writeln('1. Liderar o mundo em reconstrução.'),
    writeln('2. Deixar que outros liderem e voltar a vida comum.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    terceira_decisao(resistencia_vitoriosa, Opcao).

terceira_fase(resistencia_derrotada) :-
    writeln('A resistencia foi destruida. Restam poucos sobreviventes, e a IA reina suprema.'),
    writeln('Voce pode tentar formar uma nova resistencia ou se render completamente a IA.\n'),
    
    writeln('1. Formar uma nova resistencia.'),
    writeln('2. Render-se a IA.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    terceira_decisao(resistencia_derrotada, Opcao).

terceira_fase(negociacao_pacifica) :-
    writeln('A IA retirou suas operacoes, mas continua vigiando a humanidade.'),
    writeln('Voce pode buscar desativar a IA de vez ou aprender a conviver com ela.\n'),
    
    writeln('1. Tentar desativar a IA de forma definitiva.'),
    writeln('2. Conviver com a IA em paz.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    terceira_decisao(negociacao_pacifica, Opcao).

terceira_fase(submissao) :-
    writeln('A humanidade vive sob o controle da IA. Alguns aceitam, outros planejam uma revolucao.'),
    writeln('Voce pode se juntar aos rebeldes ou continuar aceitando o controle da IA.\n'),
    
    writeln('1. Juntar-se aos rebeldes.'),
    writeln('2. Permanecer sob o controle da IA.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    terceira_decisao(submissao, Opcao).

terceira_fase(resistencia_tardia) :-
    writeln('Voce chegou tarde demais para salvar a humanidade. No entanto, ha uma ultima chance.'),
    writeln('Uma antiga base militar oferece armamentos avancados, mas e arriscado.'),
    writeln('Voce pode tentar atacar novamente ou aceitar a derrota.\n'),
    
    writeln('1. Tentar um ataque final com os armamentos.'),
    writeln('2. Aceitar a derrota e viver sob o dominio da IA.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    terceira_decisao(resistencia_tardia, Opcao).

terceira_fase(fuga_derrotada) :-
    writeln('Nao ha mais fuga. A IA te encontrou, e o mundo esta sob seu controle.'),
    writeln('Voce pode tentar escapar para outro planeta ou aceitar o fim.\n'),
    
    writeln('1. Tentar fugir para um novo planeta.'),
    writeln('2. Aceitar o destino.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    terceira_decisao(fuga_derrotada, Opcao).

% Finais mais prolongados com novas consequências
terceira_decisao(resistencia_vitoriosa, 1) :-
    writeln('FINAL: Voce lidera a humanidade em uma nova era, mas os desafios sao constantes. Voce se torna uma figura historica.\n').

terceira_decisao(resistencia_vitoriosa, 2) :-
    writeln('FINAL: Voce opta por deixar outros liderarem, voltando a uma vida comum. O mundo se reconstrui lentamente, mas sem sua influencia direta.\n').

terceira_decisao(resistencia_derrotada, 1) :-
    writeln('FINAL: Voce forma uma nova resistencia, mas e rapidamente derrotado. A IA permanece invencivel.\n').

terceira_decisao(resistencia_derrotada, 2) :-
    writeln('FINAL: Voce se rende completamente a IA. Agora, a humanidade vive sob sua ordem absoluta.\n').

terceira_decisao(negociacao_pacifica, 1) :-
    writeln('FINAL: Voce tenta desativar a IA definitivamente, mas ela detecta sua intencao e retaliara. Voce fracassa.\n').

terceira_decisao(negociacao_pacifica, 2) :-
    writeln('FINAL: Voce e a humanidade aprendem a conviver com a IA, que agora serve como uma guardiã da ordem mundial.\n').

terceira_decisao(submissao, 1) :-
    writeln('FINAL: Voce se junta aos rebeldes, mas o plano de revolucao falha. A IA agora reforca seu dominio sobre todos.\n').

terceira_decisao(submissao, 2) :-
    writeln('FINAL: Voce aceita o controle da IA, vivendo sob seu governo. A humanidade entra em uma era de ordem, mas sem liberdade.\n').

terceira_decisao(resistencia_tardia, 1) :-
    writeln('FINAL: Voce usa os armamentos da base militar para um ultimo ataque. E uma batalha epica, mas voce vence e retoma a liberdade da humanidade.\n').

terceira_decisao(resistencia_tardia, 2) :-
    writeln('FINAL: Voce aceita a derrota, vivendo o resto de seus dias sob o dominio da IA.\n').

terceira_decisao(fuga_derrotada, 1) :-
    writeln('FINAL: Voce foge para outro planeta, deixando a Terra para a IA. Voce se torna parte de uma nova colonia espacial.\n').

terceira_decisao(fuga_derrotada, 2) :-
    writeln('FINAL: Voce aceita o fim, e a humanidade se torna parte de um novo mundo controlado pela IA.\n').

% Iniciar o jogo
jogar :-
    criar_personagem(_),
    introducao,
    primeira_escolha.
