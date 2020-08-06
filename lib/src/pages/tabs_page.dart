import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas(),
      bottomNavigationBar: _Navegacion(),
    );
  }
}

class _Navegacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(currentIndex: 0, items: [
      BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Para ti')),
      BottomNavigationBarItem(
          icon: Icon(Icons.public), title: Text('Enaabezados')),
    ]);
  }
}

class _paginas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.green,
        )
      ],
    );
  }
}
