![](https://i.imgur.com/xG74tOh.png)

# M01 - Desafio - Exercício 6 - Promoção Namorados

Para o Dia dos Namorados, uma loja de presentes investiu em tecnologia e fez uma análise de dados, percebendo que mais de 80% dos seus clientes compravam 2 itens nessa época.

Com o objetivo de aumentar o faturamento, essa loja lançou uma promoção, na qual o cliente que comprar pelo menos 3 itens, tem um desconto de 50% no item de menor valor.

Contudo, juntando a alta demanda desse período com o fato de o caixa ter que calcular esse desconto manualmente, está causando muitas filas.

## Objetivo

Desenvolver uma aplicação que calcule automaticamente o valor dos produtos do cliente, quando se aplicar essa promoção.

## Instruções

1. Escreva um algoritmo em Dart para calcular o valor dos produtos do "carrinho de compras" do cliente.
2. Crie um array chamado carrinhoCompras que receba o valor dos itens comprados pelo usuário.
3. O array pode guardar no máximo 100 itens. Se tiver mais de 100 itens, mostra a mensagem "Carrinho cheio".
4. Se houver 3 itens ou mais no array, verifique qual produto tem o menor valor e aplique o desconto de 50% neste produto.
5. Mostre o valor total da compra.

## Casos de Testes

```
Entrada:
	item 1: 150.00
	item 2:  50.00

Saída:
	Total: R$ 200.00
```
```
Entrada:
	item 1: 100.00
	item 2: 100.00
	item 3: 100.00

Saída:
	Total: R$ 250.00
```
```
Entrada:
	item 1: 200.00
	item 2: 150.00
	item 3:  50.00
	item 4: 100.00

Saída:
	Total: R$ 475.00
```

### [Vídeo explicativo](https://drive.google.com/file/d/1Zaj9_YnztkIxuZBkjiOOlzys-_s4J6vt/view?usp=sharing)