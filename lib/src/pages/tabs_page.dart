import 'package:flutter/material.dart';
import 'package:news_app_matuca/src/services/news_service.dart';
import 'package:provider/provider.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _NavegacionModel(),
      child: Scaffold(
        body: _paginas(),
        bottomNavigationBar: _Navegacion(),
      ),
    );
  }
}

// API Key 72190635ca224701973ebae1970c828c

class _Navegacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegacionModel>(context);
    return BottomNavigationBar(
        currentIndex: navegacionModel.paginaActual,
        onTap: (i) => navegacionModel.paginaActual = i,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Para ti')),
          BottomNavigationBarItem(
              icon: Icon(Icons.public), title: Text('Encabezados')),
        ]);
  }
}

class _paginas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegacionModel>(context);

    final newService = Provider.of<NewsService>(context);

    return PageView(
      controller: navegacionModel.pageController,
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

class _NavegacionModel with ChangeNotifier {
  int _paginaActual = 0;

  PageController _pageController = new PageController();

  int get paginaActual => this._paginaActual;
  set paginaActual(int valor) {
    this._paginaActual = valor;
    _pageController.animateToPage(valor,
        duration: Duration(milliseconds: 250), curve: Curves.easeInOutSine);
    notifyListeners();
  }

  PageController get pageController => this._pageController;
}
