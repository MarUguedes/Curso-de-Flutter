import 'package:flutter/material.dart';

class GradesGrids extends StatelessWidget {
  const GradesGrids({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
              Icon(Icons.arrow_drop_up,size: 100,color: Colors.blue[700],),
              Icon(Icons.arrow_drop_up,size: 100,color: Colors.blue[700],),
            ]),
            Row(
              children: [
                Icon(icons.e)
              ],
            )
          ],
        ),
      ),
    );
  }
}
