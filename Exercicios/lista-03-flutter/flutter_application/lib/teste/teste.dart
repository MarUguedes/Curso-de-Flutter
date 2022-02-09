import 'package:flutter/material.dart';

class BottonBar extends StatelessWidget {
  const BottonBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: BottomAppBar(
          
          shape: const CircularNotchedRectangle(),
          child: BottomNavigationBar(
            type:BottomNavigationBarType.fixed ,
            backgroundColor: Colors.transparent,
            elevation:0 ,
          
            items: const [
            BottomNavigationBarItem(icon: Icon(Icons.sports,), label: 'Sports'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
            BottomNavigationBarItem( icon: Icon(Icons.calendar_today), label: 'Calendar'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
            
          ]),
        ),
        floatingActionButton:  FloatingActionButton(
          onPressed: () {} ,
          child: const Icon(Icons.share),
          elevation: 15,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
