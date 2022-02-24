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
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Icon(
                Icons.arrow_drop_up,
                size: 100,
                color: Colors.blue[700],
              ),
              Icon(
                Icons.arrow_drop_up,
                size: 100,
                color: Colors.blue[700],
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.remove_red_eye,
                  size: 60,
                ),
                Icon(
                  Icons.arrow_downward,
                  size: 60,
                ),
                Icon(
                  Icons.remove_red_eye,
                  size: 60,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              color: Colors.red,
              child: GridView.count(
                crossAxisCount: 6,
                shrinkWrap: true,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                children: List.generate(
                    12,
                    (index) => Container(
                          margin: const EdgeInsets.all(2),
                          height: 100,
                          color: Colors.amber[100],
                        )),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Expanded(
                child: Container(
              height: 100,
              color: Colors.purple,
            ))
          ],
        ),
      ),
    );
  }
}


