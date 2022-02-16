import 'package:flutter/material.dart';

class Passeios extends StatelessWidget {
  const Passeios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          'Pontos Túristicos do Porto',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Ponte Dom Luís I',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        Image.network('https://i.imgur.com/JCelTKF.jpeg'),
        const SizedBox(height: 10),
        const Text(
            'A Ponte D. Luís I  é uma ponte em estrutura metálica com dois tabuleiros, construída entre os anos 1881 e 1886, ligando as cidades do Porto e Vila Nova de Gaia separadas pelo rio Douro, em Portugal.', textAlign: TextAlign.justify,),
        const SizedBox(height: 20),
         const Text(
          'Torre dos Cléricos',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        Image.network('https://i.imgur.com/MGuco6w.jpeg'),
        const SizedBox(height: 10),
        const Text(
            'A Ponte D. Luís I  é uma ponte em estrutura metálica com dois tabuleiros, construída entre os anos 1881 e 1886, ligando as cidades do Porto e Vila Nova de Gaia separadas pelo rio Douro, em Portugal.O conjunto localiza-se no topo da Rua dos Clérigos, entre as ruas de São Filipe Néri (ou São Filipe Nery) e da Assunção. Integra três elementos principais: a Igreja dos Clérigos, a Torre dos Clérigos e a Casa da Irmandade.',
            textAlign: TextAlign.justify,),
      ],
    );
  }
}
