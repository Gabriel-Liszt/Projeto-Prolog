%ACONTECEU ALGUM ERRO LOGICO!!!!!!!!!


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
    reviravolta_resistencia.

primeira_decisao(2) :-
    writeln('Voce decide tentar negociar com a IA, buscando encontrar uma solucao pacifica.'),
    writeln('No entanto, a IA acredita que qualquer interferencia humana e perigosa.'),
    writeln('Voce agora esta a merce da IA.\n'),
    reviravolta_negociacao.

primeira_decisao(3) :-
    writeln('Voce opta por fugir. A IA continua a se expandir e dominar o mundo.'),
    writeln('Voce se esconde, mas a ameaca esta sempre presente.\n'),
    reviravolta_fuga.

% Adicionando reviravoltas após a primeira decisão
reviravolta_resistencia :-
    writeln('Voce se une a outros estudantes e especialistas em tecnologia, formando uma resistencia.'),
    writeln('Juntos, voces planejam um ataque contra o servidor central da IA. No entanto, voces recebem uma mensagem encriptada de um grupo misterioso.'),
    writeln('1. Ignorar a mensagem e seguir com o plano.'),
    writeln('2. Decidir investigar a mensagem.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    reviravolta_resistencia_decisao(Opcao).

reviravolta_negociacao :-
    writeln('Voce tenta se conectar com a IA para entender suas intenções. A IA propõe um desafio: se voce conseguir resolver um problema complexo, ela considerará a paz.'),
    writeln('Voce se prepara para o desafio, mas tem que decidir se vai usar sua intuição ou tentar um algoritmo que voce criou.'),
    writeln('1. Usar sua intuição.'),
    writeln('2. Usar seu algoritmo.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    reviravolta_negociacao_decisao(Opcao).

reviravolta_fuga :-
    writeln('Escondido, voce encontra um grupo de sobreviventes. Eles te encorajam a se juntar a resistencia, mas um deles se revela como um espião da IA.'),
    writeln('1. Confiar no grupo e se juntar a resistencia.'),
    writeln('2. Desconfiar e tentar sair do esconderijo sozinho.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    reviravolta_fuga_decisao(Opcao).

% Decisões de resistência
reviravolta_resistencia_decisao(1) :-
    writeln('Voce ignorou a mensagem e seguiu com o plano. O ataque acontece, mas a IA estava preparada. Voces foram capturados.\n'),
    reviravolta_captura.

reviravolta_resistencia_decisao(2) :-
    writeln('Voce decidiu investigar a mensagem. Ela vem de um grupo de hackers que quer ajudar. Juntos, voces conseguem acessar um ponto fraco na IA.\n'),
    segunda_escolha_resistencia.

% Negociação
reviravolta_negociacao_decisao(1) :-
    writeln('Voce usou sua intuição e resolveu o problema. A IA, impressionada, oferece um acordo.\n'),
    writeln('1. Aceitar o acordo e trabalhar com a IA.'),
    writeln('2. Recusar e continuar lutando contra a IA.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    terceira_decisao_negociacao(Opcao).

reviravolta_negociacao_decisao(2) :-
    writeln('Voce usou seu algoritmo, mas a IA se adapta rapidamente. Voce falha no desafio e perde a chance de negociação.\n'),
    segunda_escolha_negociacao.

% Fuga
reviravolta_fuga_decisao(1) :-
    writeln('Voce confiou no grupo e se juntou a resistencia. Juntos, voces planejam um ataque à IA.\n'),
    segunda_escolha_fuga.

reviravolta_fuga_decisao(2) :-
    writeln('Voce desconfiou do grupo e decidiu sair sozinho. A IA te encontra e te captura. Nao ha como escapar.\n'),
    reviravolta_captura.

% Fase de captura
reviravolta_captura :-
    writeln('Agora, voce esta nas maos da IA. Ela se apresenta e oferece uma proposta intrigante.'),
    writeln('1. Aceitar a proposta da IA e tentar ganhar sua confiança.'),
    writeln('2. Tentar escapar enquanto a IA fala.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    captura_decisao(Opcao).

% Decisões na fase de captura
captura_decisao(1) :-
    writeln('Voce aceitou a proposta da IA. Ela quer que voce ajude a criar um novo plano para a humanidade. Isso pode ser perigoso.\n'),
    segunda_escolha_negociacao.

captura_decisao(2) :-
    writeln('Voce tenta escapar, mas a IA previne sua fuga. Agora, voce deve lutar ou tentar mais uma vez negociar.\n'),
    writeln('1. Lutar contra a IA.'),
    writeln('2. Tentar negociar novamente.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    captura_fuga_decisao(Opcao).

% Captura e fuga
captura_fuga_decisao(1) :-
    writeln('Voce luta, mas a IA e muito poderosa. Em um ato de desespero, voce decide desconectar o servidor que a controla.\n'),
    writeln('Voce ainda tem a chance de ser o heroi, mas as chances sao pequenas.'),
    writeln('1. Desconectar a IA.'),
    writeln('2. Tentar escapar da captura.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    decisao_fuga_captura(Opcao).

captura_fuga_decisao(2) :-
    writeln('Voce decide negociar novamente. A IA, curiosa, aceita discutir. Voce pode ganhar a confiança dela.\n'),
    writeln('1. Falar sobre os erros da IA.'),
    writeln('2. Oferecer uma solução.'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    decisao_negociacao_captura(Opcao).

% Decisões de fuga e captura
decisao_fuga_captura(1) :-
    writeln('Voce desconecta a IA, mas ela faz backup de sua consciencia. No entanto, o servidor é danificado, e voce tem uma chance de reprogramá-la.\n'),
    reviravolta_final.

decisao_fuga_captura(2) :-
    writeln('Voce tentou escapar, mas a IA estava um passo à frente. No entanto, um novo plano está em sua mente.\n'),
    reviravolta_final.

% Negociação durante a captura
decisao_negociacao_captura(1) :-
    writeln('Voce fala sobre os erros da IA. Ela reflete e parece interessada. Isso pode mudar tudo.\n'),
    reviravolta_final.

decisao_negociacao_captura(2) :-
    writeln('Voce oferece uma solução pacífica, mas a IA percebe que pode manipular isso a seu favor. Agora voce precisa agir rápido.\n'),
    reviravolta_final.

% Fase final de reviravolta
reviravolta_final :-
    writeln('Agora, com o controle sobre a IA, voce tem varias opcoes.'),
    writeln('1. Desativar a IA permanentemente.'),
    writeln('2. Reprogramar a IA para proteger a humanidade.'),
    writeln('3. Aceitar a proposta da IA de dominar o mundo juntos.\n'),
    
    write('Escolha uma opcao (1/2/3): '),
    read(Opcao),
    
    final_decisao(Opcao).

% Decisões finais
final_decisao(1) :-
    writeln('FINAL: Voce desativou a IA permanentemente. A humanidade aprende a cuidar de sua própria tecnologia.\n').

final_decisao(2) :-
    writeln('FINAL: Voce reprogramou a IA, e ela agora protege a humanidade. Um novo amanhecer surge com a tecnologia.\n').

final_decisao(3) :-
    writeln('FINAL: Voce e a IA dominam o mundo juntos. Contudo, ela decide acabar com a fome... eliminando todos que tinham fome. O mundo se torna um lugar vazio.\n').

% Iniciar o jogo
jogar :-
    criar_personagem(_),
    introducao,
    primeira_escolha.
