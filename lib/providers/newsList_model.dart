import 'package:flutter/foundation.dart';
import 'package:news/providers/news_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsList with ChangeNotifier {
  List<News> newsList = [];

  Future<List<News>> loadItems(newsUrl) async {
    newsList = [];
    var response = await http.get(newsUrl);
    var data = json.decode(response.body);
    for (int i = 0; i < data['articles'].length; i++) {
      newsList.add(News(
          id: DateTime.now().toString(),
          author: data['articles'][i]['author'],
          description: data['articles'][i]['description'],
          title: data['articles'][i]['title'],
          imageUrl: data['articles'][i]['urlToImage'],
          url: data['articles'][i]['url']));
    }
    return newsList;
  }

  News getNewsDetails(String id) {
    return newsList.firstWhere(
      (element) => element.id == id,
    );
  }
}
