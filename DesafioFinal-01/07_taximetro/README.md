![](https://i.imgur.com/xG74tOh.png)

# M01 - Desafio - Exercício 7 - Taxímetro

Você é o(a) desenvolvedor(a) responsável por implementar o "Taxímetro" do novo aplicativo de mobilidade que a empresa onde você trabalha está lançando.

Caso a viagem tenha mais de 10km (quilômetros), cada km adicional (acima de 10) fica mais barato, passando a custar apenas 50 centavos por km. Caso a viagem dure mais de 20 minutos, cada minuto adicional (acima de 20) fica mais barato, passando a custar apenas 30 centavos por minuto.

Seu trabalho é implementar o cálculo do valor a ser pago pelo cliente (quanta responsabilidade, hein!?).

## Objetivo

Desenvolver uma aplicação que calcule o valor de uma viagem, conforme o tempo e distância percorridos.

## Instruções

1. Escreva um algoritmo em Dart que calcule o valor de uma viagem, conforme o tempo e distância percorridos.
2. A aplicação deve cobrar, inicialmente:
   - 70 centavos por cada quilômetro de viagem
   - 50 centavos por minuto de viagem
3. A entrada de dados deve ser composta por duas variáveis:
   - minuto: representa quantos minutos de duração a viagem teve. É sempre um número inteiro.
   - km: representa quantos quilômetros foram percorridos na viagem. Pode ser um número com casas decimais.
4. Caso a viagem tenha mais de 10km, cada km adicional custa 50 centavos por km.
5. Caso a viagem dure mais de 20 minutos, cada minuto adicional custa 30 centavos por minuto.
6. Imprima na tela o valor que deve ser pago pelo cliente.

- Lembre-se de arredondar o valor final a ser pago.

## Casos de Testes

```
Entrada:
	minuto: 20
	km:  10

Saída:
   Total a pagar: R$ 17.00
```
```
Entrada:
	minuto: 25
	km:  11.5

Saída:
   Total a pagar: R$ 19.25
```

### [Vídeo explicativo](https://drive.google.com/file/d/1wGcp2QgRHvKosKolxHIkYcowINrQrtg3/view?usp=sharing)
