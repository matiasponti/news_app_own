import 'package:flutter/material.dart';
import 'package:news_app_matuca/src/models/news_models.dart';

class NewsService with ChangeNotifier {
  List<Article> headlines = [];

  NewsService() {
    this.getTopHeadlines();
  }

  getTopHeadlines() {
    print('Cargando headlines...');
  }
}
