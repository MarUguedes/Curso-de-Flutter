import 'package:flutter/material.dart';

class CatiorosList extends StatelessWidget {
  const CatiorosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catioros',
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(isScrollable: true, tabs: [
              defaultText('Dachshund'),
              defaultText('Golden'),
              defaultText('Bulldog'),
              defaultText('Pug'),
             // defaultText('Spaniel'),
              // defaultText('Husky'),
             // defaultText('Border Collie'),
             // defaultText('Beagle'),
             // defaultText('Weimaraner'),
             // defaultText('Dalmata'),
            ]),
          ),
          body: const TabDogs(),
        ),
      ),
    );
  }
}

defaultText(String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      text,
      style: const TextStyle(fontSize: 15, color: Colors.white),
    ),
  );
}

imageDog(String link) {
  Expanded(
      child: Image.network(
    link,
  ));
}

class TabDogs extends StatelessWidget {
  const TabDogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Image.network(
          'https://images.unsplash.com/photo-1588176053174-ebc2de5d6422?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80'),
      Image.network(
          'https://images.unsplash.com/photo-1611250282006-4484dd3fba6b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
      Image.network(
          'https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80'),
      Image.network(
          'https://images.unsplash.com/photo-1553481829-2391f26d609c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80')
    ]);
  }
}
