![](https://i.imgur.com/xG74tOh.png)

# M01 - Desafio - Exercício 5 - Jogo Americano

Num jogo de futebol entre amigos é muito comum que ninguém queira ser o goleiro. Para resolver esse impasse, um time decidiu utilizar o “Jogo Americano".

Neste jogo, o time faz uma roda e cada um dos jogadores "joga" um número X qualquer. Após isso, o capitão do time soma todos os números jogados e obtém o resultado R.

Depois, começa a contar de 1 até R apontando inicialmente para si mesmo e falando alto e claramente "um", depois para o jogador à sua direita e falando "dois" e assim por diante. O goleiro será aquele que estiver sendo apontado quando o capitão chegar a R.

Para facilitar a resposta do problema, vamos considerar que o capitão está na posição 1, o jogador à sua direita está na posição 2, o jogador à direita deste está na posição 3, e assim por diante.

## Objetivo

Desenvolver uma aplicação que determine qual jogador será o goleiro do time.

## Instruções

1. Escreva um algoritmo em Dart que receba os números informados por todos os jogadores do time e seus nomes.
2. O número de jogadores pode variar entre 5 e 11.
3. Some todos os números informados pelos jogadores.
4. Faça a contagem dos jogadores, de 1 até o total somado (R).
5. Se R for maior que a quantidade de jogadores, “dê mais uma volta” começando pelo capitão do time novamente, até alcançar R.

Exemplo:

```
R: 9
jogador A	1
jogador B	2
jogador C	3
jogador D	4
jogador E	5
recomeça no jogador A
jogador A	6
jogador B	7
jogador C	8
jogador D	9
jogador E
Goleiro: jogador 4

```
6. Imprima na tela o nome do jogador que será o goleiro.

## Casos de Testes

```
Entrada:
	nome: Amanda
	número: 2

	nome: Sabrina
	número: 1

	nome: Samanta
	número: 1

	nome: Carina
	número: 2

	nome: Beatriz
	número: 3

Saída:
    Resultado: 9
	Goleiro(a): Carina
```

### [Vídeo explicativo](https://drive.google.com/file/d/1jnATmoeEjYx0tMbEZWEAwBfL_abjhia4/view?usp=sharing)
