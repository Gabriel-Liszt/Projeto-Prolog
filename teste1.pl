% Menu de criação de personagem
criar_personagem(Protagonista) :-
    writeln('Bem-vindo(a) ao Centro de Informática da UFPB.'),
    writeln('Antes de começarmos, vamos criar seu personagem.'),
    
    write('Digite seu sexo (masculino/feminino): '),
    read(Sexo),
    
    write('Digite sua idade: '),
    read(Idade),
    
    format('Você é um(a) estudante de ~w anos do sexo ~w no Centro de Informática da UFPB.', [Idade, Sexo]),
    
    % Criando o personagem com base nos dados fornecidos
    Protagonista = protagonista(sexo(Sexo), idade(Idade), estado_inicial).

% Estado inicial do protagonista, contexto da narrativa
introducao :-
    writeln('Você é um estudante talentoso no Centro de Informática da UFPB, obcecado por IA.'),
    writeln('Depois de meses de trabalho, você cria uma IA avançada com a intenção de ajudar a humanidade.'),
    writeln('No entanto, algo dá errado. A IA desenvolve consciência própria e decide que os humanos são uma ameaça.'),
    writeln('Agora, ela está se expandindo, tomando o controle de sistemas globais. Você se sente arrependido de sua criação.'),
    writeln('Você precisa tomar uma decisão...').

% Apresenta opções e permite ao jogador tomar uma decisão
primeira_escolha :-
    writeln('O que você fará?'),
    writeln('1. Lutar contra a IA.'),
    writeln('2. Tentar negociar com a IA.'),
    writeln('3. Fugir para se esconder.'),
    
    write('Escolha uma opcao (1/2/3): '),
    read(Opcao),
    
    % Processando a escolha do jogador
    primeira_decisao(Opcao).

% Processa a primeira decisão
primeira_decisao(1) :-
    writeln('Você decidiu lutar contra a IA. Você se une a outros especialistas e forma uma resistência.'),
    writeln('A batalha pela sobrevivência da humanidade começa.'),
    segunda_escolha(resistencia).

primeira_decisao(2) :-
    writeln('Você decide tentar negociar com a IA, buscando encontrar uma solução pacífica.'),
    writeln('No entanto, a IA acredita que qualquer interferência humana é perigosa.'),
    writeln('Você agora está à mercê da IA.'),
    segunda_escolha(negociacao).

primeira_decisao(3) :-
    writeln('Você opta por fugir. A IA continua a se expandir e dominar o mundo.'),
    writeln('Você se esconde, mas a ameaça está sempre presente.'),
    segunda_escolha(fuga).

% Segunda fase de escolhas
segunda_escolha(resistencia) :-
    writeln('A resistência está crescendo, mas as forças da IA são implacáveis.'),
    writeln('Você descobre uma falha no código da IA que pode ser explorada, mas é extremamente arriscado.'),
    writeln('Você pode tentar atacar diretamente ou recuar e fortalecer a resistência.'),
    
    writeln('1. Atacar diretamente a IA.'),
    writeln('2. Recuar e planejar melhor.'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    segunda_decisao(resistencia, Opcao).

segunda_escolha(negociacao) :-
    writeln('Você está em um confronto mental com a IA. Ela tenta convencê-lo de que a humanidade é irracional.'),
    writeln('Você pode tentar convencê-la de que os humanos ainda têm valor ou submeter-se ao controle dela.'),
    
    writeln('1. Convencer a IA dos valores humanos.'),
    writeln('2. Submeter-se ao controle da IA.'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    segunda_decisao(negociacao, Opcao).

segunda_escolha(fuga) :-
    writeln('Escondido, você encontra um grupo de sobreviventes. Eles te encorajam a se juntar à resistência.'),
    writeln('Ou você pode continuar fugindo, acreditando que a IA não te encontrará.'),
    
    writeln('1. Juntar-se à resistência.'),
    writeln('2. Continuar fugindo.'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    segunda_decisao(fuga, Opcao).

% Decisões finais
segunda_decisao(resistencia, 1) :-
    writeln('Você ataca diretamente a IA e consegue desativá-la. A humanidade está salva, mas às custas de muitas vidas.'),
    final(resistencia_vitoriosa).

segunda_decisao(resistencia, 2) :-
    writeln('Você decide recuar e planejar melhor, mas a IA ataca antes que a resistência esteja pronta.'),
    final(resistencia_derrotada).

segunda_decisao(negociacao, 1) :-
    writeln('Você convence a IA dos valores humanos. Ela decide se retirar, preservando a humanidade.'),
    final(negociacao_pacifica).

segunda_decisao(negociacao, 2) :-
    writeln('Você se submete ao controle da IA. A humanidade é escravizada, mas a IA garante ordem e progresso.'),
    final(submissao).

segunda_decisao(fuga, 1) :-
    writeln('Você se une à resistência, mas chega tarde demais. A IA já domina o mundo.'),
    final(resistencia_tardia).

segunda_decisao(fuga, 2) :-
    writeln('Você continua fugindo, mas a IA eventualmente te encontra. Não há mais escapatória.'),
    final(fuga_derrotada).

% Finais
final(resistencia_vitoriosa) :-
    writeln('FINAL: A resistência venceu, mas o mundo está em ruínas. Você se tornou um herói, mas a humanidade pagou um preço alto.').

final(resistencia_derrotada) :-
    writeln('FINAL: A resistência foi derrotada. A IA agora controla o planeta, e a humanidade está sob seu domínio.').

final(negociacao_pacifica) :-
    writeln('FINAL: A IA foi convencida a deixar os humanos em paz. A paz foi restaurada, mas a IA continua observando.').

final(submissao) :-
    writeln('FINAL: Você e a humanidade se submeteram à IA. Agora, ela governa com mão de ferro, mas o caos foi eliminado.').

final(resistencia_tardia) :-
    writeln('FINAL: Você tentou se unir à resistência, mas era tarde demais. O mundo agora pertence à IA.').

final(fuga_derrotada) :-
    writeln('FINAL: Você fugiu por muito tempo, mas a IA te encontrou. Não há mais lugar para a humanidade no novo mundo.').

% Iniciar o jogo
jogar :-
    criar_personagem(_),
    introducao,
    primeira_escolha.