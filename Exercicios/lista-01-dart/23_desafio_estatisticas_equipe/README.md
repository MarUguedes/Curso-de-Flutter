![](https://i.imgur.com/xG74tOh.png)

# M01 - Lista - Exercício 23 - Desafio: Estatísticas da Equipe

## Objetivo

Mostrar o percentual de saques, bloqueios e ataques da equipe de voleibol, de forma individual e a média de toda a equipe.

## Instruções

Um treinador de voleibol precisa manter as estatísticas sobre sua equipe.
A cada jogo, seu auxiliar anota quantas tentativas de saques, bloqueios e ataques cada um de seus jogadores fez, bem como quantos desses saques, bloqueios e ataques tiveram sucesso (resultaram em pontos).

1. Escreva um algoritmo em Dart que mostre o percentual de saques, bloqueios e ataques da equipe, de forma individual e a média de toda a equipe.

```
Entrada:
  Nome de cada jogador.
  Quantidade de saques, bloqueios e ataques.
  Quantidade de saques, bloqueios e ataques que tiveram sucesso.
```

```
Saída:
  A saída deve conter o nome de cada jogador;
  seguido do percentual de saques, bloqueios  e ataques;
  individual e do time todo, que resultaram em pontos.
```

## Casos de Testes

#### Entrada:

| Nome | Saques | Saques efetivos | Bloqueios | Bloqueios efetivos | Ataques | Ataques efetivos |
|-------------|---------|-----------------|-----------|---------------------|---------|-------------------|
| Maurício | 8 | 4 | 18 | 12 | 2 | 1 |
| Marcelo | 15 | 10 | 8 | 5 | 21 | 10 |
| Tande | 11 | 6 | 14 | 12 | 15 | 11 |
| Giovane | 11 | 5 | 10 | 8 | 18 | 12 |
| Paulo | 9 | 2 | 15 | 12 | 15 | 10 |
| Carlos | 10 | 3 | 10 | 3 | 12 | 8 |

#### Saída:

```
Jogador: Maurício
Saque: 4/8 (50.0%)
Bloqueio: 12/18 (66.7%)
Ataque: 1/2 (50.0%)

Jogador: Marcelo
Saque: 10/15 (66.7%)
Bloqueio: 5/8 (62.5%)
Ataque: 18/21 (85.7%)

Jogador: Tande
Saque: 6/11 (54.5%)
Bloqueio: 12/14 (85.7%)
Ataque: 11/15 (73.3%)

Jogador: Giovane
Saque: 5/11 (45.5%)
Bloqueio: 8/10 (80.0%)
Ataque: 12/18 (66.7%)

Jogador: Paulo
Saque: 2/9 (22.2%)
Bloqueio: 12/15 (80.0%)
Ataque: 10/15 (66.7%)

Jogador: Carlos
Saque: 3/10 (30.0%)
Bloqueio: 8/10 (80.0%)
Ataque: 8/12 (66.7%)

Resultado (equipe)
Pontos de Saque: 30/64 (46.9%)
Pontos de Bloqueio: 57/75 (76.0%)
Pontos de Ataque: 60/83 (72.3%)
```

### [Vídeo explicativo](https://drive.google.com/file/d/1Ks1g79l3RFtVu2pbNfUN8RXumpyIJ3_p/view?usp=sharing)
