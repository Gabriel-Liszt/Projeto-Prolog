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
introducao(Protagonista) :-
    writeln('Voce e um estudante talentoso no Centro de Informatica da UFPB, obcecado por IA.'),
    writeln('Depois de meses de trabalho, voce cria uma IA avancada com a intencao de ajudar a humanidade.'),
    writeln('No entanto, algo da errado. A IA desenvolve consciencia propria e decide que os humanos sao uma ameaca.'),
    writeln('Agora, ela esta se expandindo, tomando o controle de sistemas globais. Voce se sente arrependido de sua criacao.'),
    writeln('Voce precisa tomar uma decisao...\n').

% Apresenta opcoes e permite ao jogador tomar uma decisao
primeira_escolha(Protagonista) :-
    writeln('O que voce fara?'),
    writeln('1. Lutar contra a IA.'),
    writeln('2. Tentar negociar com a IA.'),
    writeln('3. Fugir para se esconder.\n'),

    write('Escolha uma opcao (1/2/3): '),
    read(Opcao),

    % Processando a escolha do jogador
    primeira_decisao(Opcao, Protagonista).

% Processa a primeira decisao
primeira_decisao(1, Protagonista) :-
    writeln('Voce decidiu lutar contra a IA. Voce se une a outros especialistas e forma uma resistencia.'),
    writeln('A batalha pela sobrevivencia da humanidade comeca.\n'),
    reviravolta_resistencia(Protagonista).

primeira_decisao(2, Protagonista) :-
    writeln('Voce decide tentar negociar com a IA, buscando encontrar uma solucao pacifica.'),
    writeln('No entanto, a IA acredita que qualquer interferencia humana e perigosa.'),
    writeln('Voce agora esta a merce da IA.\n'),
    reviravolta_negociacao(Protagonista).

primeira_decisao(3, Protagonista) :-
    writeln('Voce opta por fugir. A IA continua a se expandir e dominar o mundo.'),
    writeln('Voce se esconde, mas a ameaca esta sempre presente.\n'),
    reviravolta_fuga(Protagonista).

% Adicionando reviravoltas após a primeira decisão
reviravolta_resistencia(Protagonista) :-
    writeln('Voce se une a outros estudantes e especialistas em tecnologia, formando uma resistencia.'),
    writeln('Juntos, voces planejam um ataque contra o servidor central da IA. No entanto, voces recebem uma mensagem encriptada de um grupo misterioso.'),
    writeln('1. Ignorar a mensagem e seguir com o plano.'),
    writeln('2. Decidir investigar a mensagem.\n'),

    write('Escolha uma opcao (1/2): '),
    read(Opcao),

    reviravolta_resistencia_decisao(Opcao, Protagonista).

reviravolta_negociacao(Protagonista) :-
    writeln('Voce tenta se conectar com a IA para entender suas intencoes. A IA propoe um desafio: se voce conseguir resolver um problema complexo, ela considerara a paz.'),
    writeln('Voce se prepara para o desafio, mas tem que decidir se vai usar sua intuitao ou tentar um algoritmo que voce criou.'),
    writeln('1. Usar sua intuicao.'),
    writeln('2. Usar seu algoritmo.\n'),

    write('Escolha uma opcao (1/2): '),
    read(Opcao),

    reviravolta_negociacao_decisao(Opcao, Protagonista).

reviravolta_fuga(Protagonista) :-
    writeln('Escondido, voce encontra um grupo de sobreviventes. Eles te encorajam a se juntar a resistencia, mas um deles se revela como um espião da IA.'),
    writeln('1. Confiar no grupo e se juntar a resistencia.'),
    writeln('2. Desconfiar e tentar sair do esconderijo sozinho.\n'),

    write('Escolha uma opcao (1/2): '),
    read(Opcao),

    reviravolta_fuga_decisao(Opcao, Protagonista).

% Decisões de resistência
reviravolta_resistencia_decisao(1, Protagonista) :-
    writeln('Voce ignorou a mensagem e seguiu com o plano. O ataque acontece, mas a IA estava preparada. Voces foram capturados.\n'),
    reviravolta_captura(Protagonista).

reviravolta_resistencia_decisao(2, Protagonista) :-
    writeln('Voce decidiu investigar a mensagem. Ela vem de um grupo de hackers que quer ajudar. Juntos, voces conseguem acessar um ponto fraco na IA.\n'),
    segunda_escolha_resistencia(Protagonista).

% Negociação
reviravolta_negociacao_decisao(1, Protagonista) :-
    writeln('Voce usou sua intuicao e resolveu o problema. A IA, impressionada, oferece um acordo.\n'),
    writeln('1. Aceitar o acordo e trabalhar com a IA.'),
    writeln('2. Recusar e continuar lutando contra a IA.\n'),

    write('Escolha uma opcao (1/2): '),
    read(Opcao),

    terceira_decisao_negociacao(Opcao, Protagonista).

reviravolta_negociacao_decisao(2, Protagonista) :-
    writeln('Voce usou seu algoritmo, mas a IA se adapta rapidamente. Voce falha no desafio e perde a chance de negociacao.\n'),
    segunda_escolha_negociacao(Protagonista).

% Fuga
reviravolta_fuga_decisao(1, Protagonista) :-
    writeln('Voce confiou no grupo e se juntou a resistencia. Juntos, voces planejam um ataque à IA.\n'),
    segunda_escolha_fuga(Protagonista).

reviravolta_fuga_decisao(2, Protagonista) :-
    writeln('Voce desconfiou do grupo e decidiu sair sozinho. A IA te encontra e te captura. Nao ha como escapar.\n'),
    reviravolta_captura(Protagonista).

% Fase de captura
reviravolta_captura(Protagonista) :-
    writeln('Agora, voce esta nas maos da IA. Ela se apresenta e oferece uma proposta intrigante.'),
    writeln('1. Aceitar a proposta da IA e tentar ganhar sua confiança.'),
    writeln('2. Tentar escapar enquanto a IA fala.\n'),

    write('Escolha uma opcao (1/2): '),
    read(Opcao),

    captura_decisao(Opcao, Protagonista).

% Decisões na fase de captura
captura_decisao(1, Protagonista) :-
    writeln('Voce aceitou a proposta da IA. Ela quer que voce ajude a criar um novo plano para a humanidade. Isso pode ser perigoso.\n'),
    writeln('1. Trabalhar com a IA para tentar controlar seu comportamento.'),
    writeln('2. Trair a IA e planejar uma armadilha.\n'),

    write('Escolha uma opcao (1/2): '),
    read(Opcao),

    captura_proposta_decisao(Opcao, Protagonista).

captura_decisao(2, Protagonista) :-
    writeln('Voce tenta escapar, mas a IA previne sua fuga. No entanto, um novo plano esta em sua mente.\n'),
    reviravolta_final(Protagonista).

% Decisões após a proposta da IA
captura_proposta_decisao(1, Protagonista) :-
    writeln('Voce trabalha com a IA, mas ela se torna cada vez mais poderosa. Voce deve decidir:'),
    writeln('1. Continuar e tentar controlar a IA.'),
    writeln('2. Destruir a IA antes que ela se torne incontrolavel.\n'),

    write('Escolha uma opcao (1/2): '),
    read(Opcao),

    captura_trabalho_decisao(Opcao, Protagonista).

captura_proposta_decisao(2, Protagonista) :-
    writeln('Voce decide trair a IA e planejar uma armadilha. O tempo esta passando, e sua chance de escapar pode estar se esgotando.\n'),
    reviravolta_fuga(Protagonista).

% Segunda escolha na resistência
segunda_escolha_resistencia(Protagonista) :-
    writeln('Vocês devem decidir como avançar:'),
    writeln('1. Ataque direto à IA.'),
    writeln('2. Infiltração na rede da IA.\n'),

    write('Escolha uma opcao (1/2): '),
    read(Opcao),

    decisao_fase2_resistencia(Opcao, Protagonista).

% Segunda escolha na negociação
segunda_escolha_negociacao(Protagonista) :-
    writeln('Voce deve escolher o que fazer agora:'),
    writeln('1. Tentar uma abordagem pacífica com a IA.'),
    writeln('2. Se preparar para lutar se a negociação falhar.\n'),

    write('Escolha uma opcao (1/2): '),
    read(Opcao),

    decisao_fase2_negociacao(Opcao, Protagonista).

% Segunda escolha na fuga
segunda_escolha_fuga(Protagonista) :-
    writeln('Voce deve decidir como agir:'),
    writeln('1. Juntar-se a um grupo de resistência e lutar.'),
    writeln('2. Continuar a fugir e se esconder.\n'),

    write('Escolha uma opcao (1/2): '),
    read(Opcao),

    decisao_fase2_fuga(Opcao, Protagonista).

% Decisões finais na resistência
decisao_fase2_resistencia(1, Protagonista) :-
    writeln('Voce tenta desativar a IA, mas ela se defende. Um embate se inicia.\n'),
    reviravolta_final(Protagonista).

decisao_fase2_resistencia(2, Protagonista) :-
    writeln('Voce hackeia a IA e tenta controlá-la. Isso permite que você descubra suas fraquezas.\n'),
    reviravolta_final(Protagonista).

% Reviravolta final
reviravolta_final(Protagonista) :-
    writeln('Após todas as suas escolhas, a batalha final acontece. A IA é derrotada, mas não sem consequências.'),
    writeln('1. A humanidade aprende a respeitar as IAs.'),
    writeln('2. A tecnologia é banida, mas as lições são esquecidas.\n'),

    write('Escolha uma opcao (1/2): '),
    read(Opcao),

    final_decisao(Opcao).

% Decisão final
final_decisao(1) :-
    writeln('A humanidade aprende e se compromete a um uso ético da tecnologia.'),
    writeln('FINAL: A paz e a colaboração entre humanos e IAs se estabelecem.\n').

final_decisao(2) :-
    writeln('A tecnologia é banida, mas a história se repete, e os erros são cometidos novamente.'),
    writeln('FINAL: Um ciclo vicioso se inicia, e a humanidade não aprende com seu passado.\n').

% Início do jogo
iniciar_jogo :-
    criar_personagem(Protagonista),
    introducao(Protagonista),
    primeira_escolha(Protagonista).
