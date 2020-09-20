import 'package:flutter/material.dart';
import 'package:news_app_matuca/src/pages/tabs_page.dart';
import 'package:news_app_matuca/src/services/news_service.dart';
import 'package:news_app_matuca/src/theme/mytheme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NewsService(),
        )
      ],
      child: MaterialApp(
          theme: myTheme,
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          home: TabsPage()),
    );
  }
}
