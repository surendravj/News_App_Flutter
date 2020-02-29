import 'package:flutter/foundation.dart';

class News with ChangeNotifier {
  final String id;
  final String author;
  final String title;
  final String description;
  final String imageUrl;
  final String url;

  News({this.id,this.author, this.title, this.description, this.imageUrl, this.url});
}

