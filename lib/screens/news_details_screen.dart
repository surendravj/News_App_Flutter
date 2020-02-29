import 'package:flutter/material.dart';
import 'package:news/providers/newsList_model.dart';
import 'package:news/providers/news_model.dart';
import 'package:news/widgets/news_details_card.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetails extends StatelessWidget {
  static const routeName = '/newsDetails';

  _launchURL(String webUrl) async {
    final url = webUrl;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context).settings.arguments as String;
    News data = Provider.of<NewsList>(context).getNewsDetails(id);
    if (data == null) {
      data = {
        'title': 'Something went wrong',
        'description': 'Something went wrong',
        'author': 'NoT Found',
        'imageUrl': 'https://images.app.goo.gl/4xqJGhK4Hzhi5w5q8'
      } as News;
    }
    return Scaffold(
        appBar: AppBar(title: Text('Details')),
        floatingActionButton: floatingButton(data.url),
        body: SingleChildScrollView(
          child: NewsCardDetails(
              data.title, data.description, data.imageUrl, data.author),
        ));
  }

// floatingaction button

  FloatingActionButton floatingButton(String url) {
    return FloatingActionButton.extended(
        onPressed: () {
          _launchURL(url);
        },
        label: Text('View On Web'),
        icon: Icon(Icons.web),
        backgroundColor: Colors.pinkAccent);
  }
}
